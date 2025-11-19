uint64_t sub_1C2E3B2E8(uint64_t a1)
{

  v4 = sub_1C2CF6DEC(v3, a1);

  if (v4)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2E45254(&qword_1EC05CE90, 255, _s5ModelCMa);
    sub_1C2E71A54();
  }
}

uint64_t sub_1C2E3B440(uint64_t result)
{
  if (*(v1 + 24) == (result & 1))
  {
    *(v1 + 24) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2E45254(&qword_1EC05CE90, 255, _s5ModelCMa);
    sub_1C2E71A54();
  }

  return result;
}

unint64_t sub_1C2E3B568@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2E45254(&qword_1EC05CE90, 255, _s5ModelCMa);
  sub_1C2E71A64();

  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  *a2 = v4;
  a2[1] = v5;
  return sub_1C2D9E5A0(v4, v5);
}

void sub_1C2E3B618(unint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1C2D9E5A0(*a1, v2);
  sub_1C2E3B65C(v1, v2);
}

void sub_1C2E3B65C(unint64_t a1, void *a2)
{
  v6 = *(v2 + 32);
  v5 = *(v2 + 40);
  if (v6 >> 62)
  {
    if (v6 >> 62 != 1)
    {
      if (a1 >> 62 != 2 || a1 != 0x8000000000000000 || a2)
      {
        goto LABEL_16;
      }

      goto LABEL_13;
    }

    if (a1 >> 62 == 1)
    {

      v7 = v5;
      if (sub_1C2E75084())
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }

LABEL_16:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2E45254(&qword_1EC05CE90, 255, _s5ModelCMa);
    sub_1C2E71A54();
    sub_1C2D9E79C(a1, a2);

    return;
  }

  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  v9 = v5;
  if ((sub_1C2E75084() & 1) == 0)
  {
LABEL_9:
    sub_1C2D9E79C(v6, v5);
    goto LABEL_16;
  }

LABEL_5:
  sub_1C2C6E1B4(0, &qword_1EC062E20);
  v8 = sub_1C2E76234();
  sub_1C2D9E79C(v6, v5);
  if ((v8 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_13:
  v10 = *(v2 + 32);
  v11 = *(v2 + 40);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;

  sub_1C2D9E79C(v10, v11);
}

uint64_t sub_1C2E3B888@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2E45254(&qword_1EC05CE90, 255, _s5ModelCMa);
  sub_1C2E71A64();

  v4 = *(v3 + 72);
  *a2 = *(v3 + 64);
  a2[1] = v4;
}

uint64_t sub_1C2E3B938(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v4[0] = v2;
  v4[1] = v1;

  return sub_1C2E3B974(v4);
}

uint64_t sub_1C2E3B974(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(v1 + 64);
  v5 = *(v1 + 72);

  LOBYTE(v4) = sub_1C2E441A8(v4, v5, v3, v2);

  if (v4)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2E45254(&qword_1EC05CE90, 255, _s5ModelCMa);
    sub_1C2E71A54();
  }

  else
  {
    *(v1 + 64) = v3;
    *(v1 + 72) = v2;
  }
}

uint64_t sub_1C2E3BADC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC064560);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v67 = &v61 - v9;
  v10 = a2[1];
  v64 = *a2;
  v65 = v10;
  *(v4 + 32) = xmmword_1C2E918F0;
  *(v4 + 48) = 0;
  *(v4 + 64) = 0u;
  *(v4 + 80) = 0u;
  *(v4 + 96) = 0;
  *(v4 + 104) = 1;
  *(v4 + 112) = 0;
  *(v4 + 120) = 0;
  sub_1C2E71A94();
  if (qword_1EC05CC50 != -1)
  {
    swift_once();
  }

  v11 = sub_1C2E72B44();
  v68 = __swift_project_value_buffer(v11, qword_1EC075A48);
  v12 = sub_1C2E72B24();
  v13 = sub_1C2E75FA4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1C2C6B000, v12, v13, "PosterAvatarView Model created", v14, 2u);
    MEMORY[0x1C6927DF0](v14, -1, -1);
  }

  *(v4 + 56) = a3;
  v70 = 0;
  v15 = *(a3 + 32);
  MEMORY[0x1EEE9AC00](v16);
  *(&v61 - 2) = a1;
  *(&v61 - 1) = &v70;

  os_unfair_lock_lock((v15 + 24));
  sub_1C2E4538C((v15 + 16), v69);
  os_unfair_lock_unlock((v15 + 24));
  v17 = v69[0];
  v18 = v70;
  v19 = sub_1C2E72B24();
  v20 = sub_1C2E75FA4();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 67109120;
    *(v21 + 4) = v18;
    _os_log_impl(&dword_1C2C6B000, v19, v20, "cacheMissed: %{BOOL}d", v21, 8u);
    MEMORY[0x1C6927DF0](v21, -1, -1);
  }

  v22 = v17 >> 62;
  if (v17 >> 62)
  {
    v23 = sub_1C2E764E4();
  }

  else
  {
    v23 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v24 = MEMORY[0x1E69E7CC0];
  v66 = a1;
  if (v23)
  {
    v69[0] = MEMORY[0x1E69E7CC0];
    sub_1C2E76634();
    if (v23 < 0)
    {
      __break(1u);
      goto LABEL_51;
    }

    v25 = v18;
    v62 = v17 >> 62;
    v63 = a3;
    v26 = 0;
    do
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        v27 = MEMORY[0x1C6927010](v26, v17);
      }

      else
      {
        v27 = *(v17 + 8 * v26 + 32);
      }

      v28 = v27;
      ++v26;
      v29 = *&v27[OBJC_IVAR____TtC16CommunicationsUI19PosterAvatarContact_contact];

      sub_1C2E76614();
      sub_1C2E76644();
      sub_1C2E76654();
      sub_1C2E76624();
    }

    while (v23 != v26);
    v24 = v69[0];
    v22 = v62;
  }

  else
  {
    v25 = v18;
  }

  *(v4 + 16) = v24;
  v30 = v67;
  if (v25)
  {
    *(v4 + 24) = 0;
    sub_1C2E75E44();
    v31 = sub_1C2E75E74();
    (*(*(v31 - 8) + 56))(v30, 0, 1, v31);
    v32 = swift_allocObject();
    swift_weakInit();
    v33 = swift_allocObject();
    v33[2] = 0;
    v33[3] = 0;
    v34 = v66;
    v33[4] = v32;
    v33[5] = v34;

    v35 = sub_1C2D3219C(0, 0, v30, &unk_1C2E91CD0, v33);
    sub_1C2C73644(v30, &unk_1EC064560);
  }

  else
  {
    v35 = 0;
    *(v4 + 24) = 1;
    v34 = v66;
  }

  *(v4 + 112) = v35;

  v36 = sub_1C2E75E74();
  (*(*(v36 - 8) + 56))(v30, 1, 1, v36);
  v37 = swift_allocObject();
  swift_weakInit();
  v38 = swift_allocObject();
  v38[2] = 0;
  v38[3] = 0;
  v38[4] = v37;
  v38[5] = v34;

  v39 = sub_1C2E3D008(0, 0, v30, &unk_1C2E91CC0, v38);
  sub_1C2C73644(v30, &unk_1EC064560);
  *(v4 + 120) = v39;

  if (v34 >> 62)
  {
    v40 = sub_1C2E764E4();
  }

  else
  {
    v40 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v40 != 1)
  {

    *(v4 + 48) = 1;
    return v4;
  }

  if (!v22)
  {
    result = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_26;
    }

LABEL_35:

    goto LABEL_44;
  }

  result = sub_1C2E764E4();
  if (!result)
  {
    goto LABEL_35;
  }

LABEL_26:
  if ((v17 & 0xC000000000000001) != 0)
  {
LABEL_51:
    v42 = MEMORY[0x1C6927010](0, v17);
    goto LABEL_29;
  }

  if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v42 = *(v17 + 32);
LABEL_29:
    v43 = v42;

    v44 = *&v43[OBJC_IVAR____TtC16CommunicationsUI19PosterAvatarContact_highResolutionPosterSnapshot];
    if (v44)
    {
      v45 = v44;
      v46 = sub_1C2E72B24();
      v47 = sub_1C2E75FB4();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&dword_1C2C6B000, v46, v47, "Found highResolutionPoster cached", v48, 2u);
        MEMORY[0x1C6927DF0](v48, -1, -1);
      }

      sub_1C2E3D2C8(v45);
    }

    else
    {
      v49 = OBJC_IVAR____TtC16CommunicationsUI19PosterAvatarContact_contact;
      if ([*&v43[OBJC_IVAR____TtC16CommunicationsUI19PosterAvatarContact_contact] isKeyAvailable_])
      {
        v50 = [*&v43[v49] watchWallpaperImageData];
        if (v50)
        {
          v51 = v50;
          v52 = sub_1C2E717A4();
          v54 = v53;

          v55 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
          sub_1C2D9E488(v52, v54);
          v56 = sub_1C2E71794();
          v57 = [v55 initWithData_];

          sub_1C2D9E434(v52, v54);
          if (v57)
          {
            v58 = sub_1C2E72B24();
            v59 = sub_1C2E75FB4();
            if (os_log_type_enabled(v58, v59))
            {
              v60 = swift_slowAlloc();
              *v60 = 0;
              _os_log_impl(&dword_1C2C6B000, v58, v59, "Using lowResolutionPoster", v60, 2u);
              MEMORY[0x1C6927DF0](v60, -1, -1);
            }

            sub_1C2E3D4D8(v57);
          }

          sub_1C2D9E434(v52, v54);
          goto LABEL_44;
        }
      }
    }

LABEL_44:
    if (v65)
    {
      v69[0] = v64;
      v69[1] = v65;
      sub_1C2E3B100(v69);
    }

    sub_1C2E3CE68();

    return v4;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C2E3C30C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0645C0);
  v5[9] = swift_task_alloc();
  v6 = sub_1C2E760E4();
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C2E3C404, 0, 0);
}

uint64_t sub_1C2E3C404()
{
  v1 = [objc_opt_self() defaultCenter];
  sub_1C2E760F4();

  sub_1C2E760D4();
  swift_beginAccess();
  v2 = sub_1C2E45254(&unk_1EC0645C8, 255, MEMORY[0x1E6969EF8]);
  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_1C2E3C550;
  v4 = v0[9];
  v5 = v0[10];

  return MEMORY[0x1EEE6D8C8](v4, v5, v2);
}

uint64_t sub_1C2E3C550()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_1C2E3C8FC;
  }

  else
  {
    v2 = sub_1C2E3C664;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1C2E3C680()
{
  v1 = v0[9];
  v2 = sub_1C2E71644();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[11] + 8))(v0[12], v0[10]);
LABEL_8:

    v4 = v0[1];

    return v4();
  }

  Strong = swift_weakLoadStrong();
  v0[15] = Strong;
  if (!Strong)
  {
    (*(v0[11] + 8))(v0[12], v0[10]);
    goto LABEL_7;
  }

  if (sub_1C2E75EC4())
  {
    (*(v0[11] + 8))(v0[12], v0[10]);

LABEL_7:
    sub_1C2C73644(v0[9], &qword_1EC0645C0);
    goto LABEL_8;
  }

  if (qword_1EC05CC50 != -1)
  {
    swift_once();
  }

  v6 = sub_1C2E72B44();
  __swift_project_value_buffer(v6, qword_1EC075A48);
  v7 = sub_1C2E72B24();
  v8 = sub_1C2E75FE4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1C2C6B000, v7, v8, "Model learned about CNContactStore change. Scheduling refetch.", v9, 2u);
    MEMORY[0x1C6927DF0](v9, -1, -1);
  }

  swift_weakInit();
  sub_1C2E75E34();
  v0[16] = sub_1C2E75E24();
  v11 = sub_1C2E75DD4();

  return MEMORY[0x1EEE6DFA0](sub_1C2E3C988, v11, v10);
}

uint64_t sub_1C2E3C8FC()
{
  *(v0 + 40) = *(v0 + 112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064580);
  v1 = MEMORY[0x1E69E73E0];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x1E69E7410];

  return MEMORY[0x1EEE6C240](v2, v1, v3);
}

void sub_1C2E3C988()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 64);

  sub_1C2E3CB40(v0 + 48, v2);
  if (v1)
  {
  }

  else
  {
    swift_weakDestroy();

    MEMORY[0x1EEE6DFA0](sub_1C2E3CA40, 0, 0);
  }
}

uint64_t sub_1C2E3CA40()
{
  v1 = v0[9];

  sub_1C2C73644(v1, &qword_1EC0645C0);
  v2 = sub_1C2E45254(&unk_1EC0645C8, 255, MEMORY[0x1E6969EF8]);
  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_1C2E3C550;
  v4 = v0[9];
  v5 = v0[10];

  return MEMORY[0x1EEE6D8C8](v4, v5, v2);
}

uint64_t sub_1C2E3CB40(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC064560);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v16[-v4];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (*(Strong + 24))
    {
      v7 = Strong;
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      *&v16[-16] = v7;
      v16[-8] = 0;
      v17 = v7;
      sub_1C2E45254(&qword_1EC05CE90, 255, _s5ModelCMa);
      sub_1C2E71A54();
    }

    else
    {
      *(Strong + 24) = 0;
    }
  }

  swift_beginAccess();
  v9 = swift_weakLoadStrong();
  if (v9)
  {
    v10 = v9;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_1C2E75E44();
      v11 = sub_1C2E75E74();
      (*(*(v11 - 8) + 56))(v5, 0, 1, v11);
      v12 = swift_allocObject();
      swift_weakInit();
      v13 = swift_allocObject();
      v13[2] = 0;
      v13[3] = 0;
      v13[4] = v12;
      v13[5] = a2;

      v14 = sub_1C2D3219C(0, 0, v5, &unk_1C2E91D38, v13);

      sub_1C2C73644(v5, &unk_1EC064560);
    }

    else
    {
      v14 = 0;
    }

    *(v10 + 112) = v14;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1C2E3CE68();
  }

  return result;
}

uint64_t sub_1C2E3CE68()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC064560);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v14 - v2;
  if (*(v0 + 80))
  {
    result = sub_1C2E76914();
    *(v0 + 88) = result;
    *(v0 + 96) = v5;
    *(v0 + 104) = 0;
  }

  else
  {
    v6 = *(v0 + 112);
    v7 = sub_1C2E75E74();
    (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
    v8 = swift_allocObject();
    swift_weakInit();
    sub_1C2E75E34();
    swift_retain_n();

    v9 = v0;
    v10 = sub_1C2E75E24();
    v11 = swift_allocObject();
    v12 = MEMORY[0x1E69E85E0];
    v11[2] = v10;
    v11[3] = v12;
    v11[4] = v8;
    v11[5] = v6;

    v13 = sub_1C2D22B9C(0, 0, v3, &unk_1C2E91CE0, v11);

    *(v9 + 80) = v13;
  }

  return result;
}

uint64_t sub_1C2E3D008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC064560);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1C2C736A4(a3, v25 - v10, &unk_1EC064560);
  v12 = sub_1C2E75E74();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1C2C73644(v11, &unk_1EC064560);
  }

  else
  {
    sub_1C2E75E64();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1C2E75DD4();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1C2E75CB4() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

void sub_1C2E3D2C8(void *a1)
{
  v2 = v1;
  v4 = sub_1C2E73C34();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v19 = v1;
  sub_1C2E45254(&qword_1EC05CE90, 255, _s5ModelCMa);
  sub_1C2E71A64();

  if (*(v1 + 72) && *(v1 + 64))
  {
    [a1 size];
    v9 = v8;
    v11 = v10;
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = v9;
    v12[5] = v11;
    v12[6] = a1;
    (*(v5 + 104))(v7, *MEMORY[0x1E697F3A0], v4);
    v13 = a1;
    v14 = sub_1C2E75094();
  }

  else
  {
    v15 = a1;
    v14 = sub_1C2E75034();
  }

  v16 = v14;
  v17 = a1;
  sub_1C2E3B65C(v16 | 0x4000000000000000, a1);
  *(v2 + 48) = 1;
}

void sub_1C2E3D4D8(void *a1)
{
  v2 = v1;
  v4 = sub_1C2E73C34();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v19 = v1;
  sub_1C2E45254(&qword_1EC05CE90, 255, _s5ModelCMa);
  sub_1C2E71A64();

  if (*(v1 + 72) && *(v1 + 64))
  {
    [a1 size];
    v9 = v8;
    v11 = v10;
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = v9;
    v12[5] = v11;
    v12[6] = a1;
    (*(v5 + 104))(v7, *MEMORY[0x1E697F3A0], v4);
    v13 = a1;
    v14 = sub_1C2E75094();
  }

  else
  {
    v15 = a1;
    v14 = sub_1C2E75034();
  }

  v16 = v14;
  v17 = a1;
  sub_1C2E3B65C(v16, a1);
  *(v2 + 48) = 1;
}

uint64_t sub_1C2E3D6E8()
{
  if (*(v0 + 120))
  {

    sub_1C2E75EA4();
  }

  if (*(v0 + 80))
  {

    sub_1C2E75EA4();
  }

  if (*(v0 + 112))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064580);
    sub_1C2E75EA4();
  }

  sub_1C2D9E79C(*(v0 + 32), *(v0 + 40));

  v1 = OBJC_IVAR____TtCV16CommunicationsUI20CUPosterOrAvatarView5Model___observationRegistrar;
  v2 = sub_1C2E71AA4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1C2E3D834()
{
  sub_1C2E3D6E8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1C2E3D88C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1C2E3D8AC, 0, 0);
}

uint64_t sub_1C2E3D8AC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (!Strong)
  {
    goto LABEL_24;
  }

  if (qword_1EC05CC50 != -1)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v2 = sub_1C2E72B44();
    __swift_project_value_buffer(v2, qword_1EC075A48);
    v3 = sub_1C2E72B24();
    v4 = sub_1C2E75FE4();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1C2C6B000, v3, v4, "Checking cache for updated contacts", v5, 2u);
      MEMORY[0x1C6927DF0](v5, -1, -1);
    }

    v6 = v0[6];

    v24 = MEMORY[0x1E69E7CC0];
    if (v6 >> 62)
    {
      break;
    }

    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      goto LABEL_21;
    }

LABEL_7:
    v8 = 0;
    v21 = v0;
    v9 = v6 & 0xFFFFFFFFFFFFFF8;
    v10 = v6 & 0xC000000000000001;
    v22 = v0[6] + 32;
    v23 = v9;
    while (1)
    {
      if (v10)
      {
        v11 = MEMORY[0x1C6927010](v8, v21[6]);
      }

      else
      {
        if (v8 >= *(v23 + 16))
        {
          goto LABEL_18;
        }

        v11 = *(v22 + 8 * v8);
      }

      v0 = v11;
      v12 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      sub_1C2E41260(v11);
      v14 = v13;
      v15 = *&v13[OBJC_IVAR____TtC16CommunicationsUI19PosterAvatarContact_contact];

      MEMORY[0x1C6926780]();
      if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v0 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1C2E75D94();
      }

      sub_1C2E75DB4();
      ++v8;
      if (v12 == v7)
      {
        v16 = v24;
        v0 = v21;
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    swift_once();
  }

  v7 = sub_1C2E764E4();
  if (v7)
  {
    goto LABEL_7;
  }

LABEL_21:
  v16 = MEMORY[0x1E69E7CC0];
LABEL_22:
  v0[8] = v16;
  if (sub_1C2E75EC4())
  {

LABEL_24:
    v17 = v0[1];

    return v17();
  }

  else
  {
    sub_1C2E75E34();
    v0[9] = sub_1C2E75E24();
    v20 = sub_1C2E75DD4();

    return MEMORY[0x1EEE6DFA0](sub_1C2E3DDB0, v20, v19);
  }
}

uint64_t sub_1C2E3DDB0()
{

  sub_1C2E3DE90();

  return MEMORY[0x1EEE6DFA0](sub_1C2E3DE2C, 0, 0);
}

uint64_t sub_1C2E3DE2C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C2E3DE90()
{
  v1 = v0;
  if (qword_1EC05CC50 != -1)
  {
    swift_once();
  }

  v2 = sub_1C2E72B44();
  __swift_project_value_buffer(v2, qword_1EC075A48);
  v3 = sub_1C2E72B24();
  v4 = sub_1C2E75FE4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1C2C6B000, v3, v4, "Updating contacts", v5, 2u);
    MEMORY[0x1C6927DF0](v5, -1, -1);
  }

  result = sub_1C2E3B2E8(v6);
  if (*(v1 + 24) == 1)
  {
    *(v1 + 24) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2E45254(&qword_1EC05CE90, 255, _s5ModelCMa);
    sub_1C2E71A54();
  }

  return result;
}

uint64_t sub_1C2E3E070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC064560);
  v5[7] = swift_task_alloc();
  v5[8] = sub_1C2E75E34();
  v5[9] = sub_1C2E75E24();
  v7 = sub_1C2E75DD4();
  v5[10] = v7;
  v5[11] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1C2E3E144, v7, v6);
}

uint64_t sub_1C2E3E144()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[12] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[13] = v2;
    *v2 = v0;
    v2[1] = sub_1C2E3E244;
    v3 = v0[6];

    return sub_1C2E3E4C4(v3);
  }

  else
  {

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_1C2E3E244()
{
  v1 = *v0;

  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return MEMORY[0x1EEE6DFA0](sub_1C2E3E364, v3, v2);
}

uint64_t sub_1C2E3E364()
{
  v1 = *(v0 + 56);

  v2 = sub_1C2E75E74();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  swift_weakInit();

  v4 = sub_1C2E75E24();
  v5 = swift_allocObject();
  v6 = MEMORY[0x1E69E85E0];
  v5[2] = v4;
  v5[3] = v6;
  v5[4] = v3;

  sub_1C2D22B9C(0, 0, v1, &unk_1C2E91CF8, v5);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1C2E3E4C4(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_1C2E75DF4();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v2[9] = sub_1C2E75E34();
  v2[10] = sub_1C2E75E24();
  v5 = sub_1C2E75DD4();
  v2[11] = v5;
  v2[12] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1C2E3E5BC, v5, v4);
}

uint64_t sub_1C2E3E5BC()
{
  v1 = v0[4];
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[13] = v2;
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064580);
    *v2 = v0;
    v2[1] = sub_1C2E3E9C4;
    v4 = MEMORY[0x1E69E7288];
    v5 = MEMORY[0x1E69E7CA8] + 8;
    v6 = v1;
    v7 = v3;

    return MEMORY[0x1EEE6DA10](v3, v6, v5, v7, v4);
  }

  v8 = v0[5];
  if (*(v8 + 48))
  {
    goto LABEL_19;
  }

  swift_getKeyPath();
  v0[2] = v8;
  sub_1C2E45254(&qword_1EC05CE90, 255, _s5ModelCMa);
  sub_1C2E71A64();

  v9 = *(v8 + 16);
  if (v9 >> 62)
  {
    v3 = sub_1C2E764E4();
    if (!v3)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v3 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_19;
    }
  }

  if ((v9 & 0xC000000000000001) != 0)
  {

    v10 = MEMORY[0x1C6927010](0, v9);
  }

  else
  {
    if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return MEMORY[0x1EEE6DA10](v3, v6, v5, v7, v4);
    }

    v10 = *(v9 + 32);
  }

  v0[15] = v10;
  if ([v10 isKeyAvailable_])
  {
    v11 = [v10 watchWallpaperImageData];
    if (v11)
    {
      v12 = v11;
      v13 = sub_1C2E717A4();
      v15 = v14;

      v0[16] = v13;
      v0[17] = v15;
      v16 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
      sub_1C2D9E488(v13, v15);
      v17 = sub_1C2E71794();
      v18 = [v16 initWithData_];
      v0[18] = v18;

      sub_1C2D9E434(v13, v15);
      if (v18)
      {

        return MEMORY[0x1EEE6DFA0](sub_1C2E3EE5C, 0, 0);
      }

      sub_1C2D9E434(v13, v15);
    }
  }

LABEL_19:
  if (qword_1EC05CC50 != -1)
  {
    swift_once();
  }

  v19 = sub_1C2E72B44();
  v0[20] = __swift_project_value_buffer(v19, qword_1EC075A48);
  v20 = sub_1C2E72B24();
  v21 = sub_1C2E75FE4();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_1C2C6B000, v20, v21, "Loading high resolution poster", v22, 2u);
    MEMORY[0x1C6927DF0](v22, -1, -1);
  }

  v23 = swift_task_alloc();
  v0[21] = v23;
  *v23 = v0;
  v23[1] = sub_1C2E3F0C4;

  return sub_1C2E3FA28();
}

uint64_t sub_1C2E3E9C4()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  v3 = *(v2 + 96);
  v4 = *(v2 + 88);
  if (v0)
  {
    v5 = sub_1C2E3F454;
  }

  else
  {
    v5 = sub_1C2E3EB00;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1C2E3EB00()
{

  v1 = v0[5];
  if (*(v1 + 48))
  {
    goto LABEL_15;
  }

  swift_getKeyPath();
  v0[2] = v1;
  sub_1C2E45254(&qword_1EC05CE90, 255, _s5ModelCMa);
  sub_1C2E71A64();

  v4 = *(v1 + 16);
  if (v4 >> 62)
  {
    v5 = sub_1C2E764E4();
    if (!v5)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_15;
    }
  }

  if ((v4 & 0xC000000000000001) != 0)
  {

    v6 = MEMORY[0x1C6927010](0, v4);
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return MEMORY[0x1EEE6DFA0](v5, v2, v3);
    }

    v6 = *(v4 + 32);
  }

  v0[15] = v6;
  if ([v6 isKeyAvailable_])
  {
    v7 = [v6 watchWallpaperImageData];
    if (v7)
    {
      v8 = v7;
      v9 = sub_1C2E717A4();
      v11 = v10;

      v0[16] = v9;
      v0[17] = v11;
      v12 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
      sub_1C2D9E488(v9, v11);
      v13 = sub_1C2E71794();
      v14 = [v12 initWithData_];
      v0[18] = v14;

      sub_1C2D9E434(v9, v11);
      if (v14)
      {
        v5 = sub_1C2E3EE5C;
        v2 = 0;
        v3 = 0;

        return MEMORY[0x1EEE6DFA0](v5, v2, v3);
      }

      sub_1C2D9E434(v9, v11);
    }
  }

LABEL_15:
  if (qword_1EC05CC50 != -1)
  {
    swift_once();
  }

  v15 = sub_1C2E72B44();
  v0[20] = __swift_project_value_buffer(v15, qword_1EC075A48);
  v16 = sub_1C2E72B24();
  v17 = sub_1C2E75FE4();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_1C2C6B000, v16, v17, "Loading high resolution poster", v18, 2u);
    MEMORY[0x1C6927DF0](v18, -1, -1);
  }

  v19 = swift_task_alloc();
  v0[21] = v19;
  *v19 = v0;
  v19[1] = sub_1C2E3F0C4;

  return sub_1C2E3FA28();
}

uint64_t sub_1C2E3EE5C()
{
  *(v0 + 152) = sub_1C2E75E24();
  v2 = sub_1C2E75DD4();

  return MEMORY[0x1EEE6DFA0](sub_1C2E3EEE8, v2, v1);
}

uint64_t sub_1C2E3EEE8()
{
  v1 = v0[18];

  sub_1C2E3D4D8(v1);
  v2 = v0[11];
  v3 = v0[12];

  return MEMORY[0x1EEE6DFA0](sub_1C2E3EF58, v2, v3);
}

uint64_t sub_1C2E3EF58()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);
  v3 = *(v0 + 128);

  sub_1C2D9E434(v3, v1);
  if (qword_1EC05CC50 != -1)
  {
    swift_once();
  }

  v4 = sub_1C2E72B44();
  *(v0 + 160) = __swift_project_value_buffer(v4, qword_1EC075A48);
  v5 = sub_1C2E72B24();
  v6 = sub_1C2E75FE4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1C2C6B000, v5, v6, "Loading high resolution poster", v7, 2u);
    MEMORY[0x1C6927DF0](v7, -1, -1);
  }

  v8 = swift_task_alloc();
  *(v0 + 168) = v8;
  *v8 = v0;
  v8[1] = sub_1C2E3F0C4;

  return sub_1C2E3FA28();
}

uint64_t sub_1C2E3F0C4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 176) = a1;
  *(v4 + 184) = v1;

  v5 = *(v3 + 96);
  v6 = *(v3 + 88);
  if (v1)
  {
    v7 = sub_1C2E3F744;
  }

  else
  {
    v7 = sub_1C2E3F208;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1C2E3F208()
{
  v0 = sub_1C2E72B24();
  v1 = sub_1C2E75FE4();
  if (os_log_type_enabled(v0, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_1C2C6B000, v0, v1, "Finished loading high resolution poster", v2, 2u);
    MEMORY[0x1C6927DF0](v2, -1, -1);
  }

  return MEMORY[0x1EEE6DFA0](sub_1C2E3F2E0, 0, 0);
}

uint64_t sub_1C2E3F2E0()
{
  *(v0 + 192) = sub_1C2E75E24();
  v2 = sub_1C2E75DD4();

  return MEMORY[0x1EEE6DFA0](sub_1C2E3F36C, v2, v1);
}

uint64_t sub_1C2E3F36C()
{
  v1 = v0[22];

  sub_1C2E3D2C8(v1);
  v2 = v0[11];
  v3 = v0[12];

  return MEMORY[0x1EEE6DFA0](sub_1C2E3F3E0, v2, v3);
}

uint64_t sub_1C2E3F3E0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C2E3F454()
{

  v1 = *(v0 + 112);
  *(v0 + 24) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064580);
  if (swift_dynamicCast())
  {

    if (qword_1EC05CC50 != -1)
    {
      swift_once();
    }

    v3 = sub_1C2E72B44();
    __swift_project_value_buffer(v3, qword_1EC075A48);
    v4 = sub_1C2E72B24();
    v5 = sub_1C2E75FE4();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1C2C6B000, v4, v5, "Cancelled poster fetch task", v6, 2u);
      MEMORY[0x1C6927DF0](v6, -1, -1);
    }

    v8 = *(v0 + 56);
    v7 = *(v0 + 64);
    v9 = *(v0 + 48);

    (*(v8 + 8))(v7, v9);
    v10 = *(v0 + 24);
  }

  else
  {

    if (qword_1EC05CC50 != -1)
    {
      swift_once();
    }

    v11 = sub_1C2E72B44();
    __swift_project_value_buffer(v11, qword_1EC075A48);
    v12 = v1;
    v13 = sub_1C2E72B24();
    v14 = sub_1C2E75FC4();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      v17 = v1;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 4) = v18;
      *v16 = v18;
      _os_log_impl(&dword_1C2C6B000, v13, v14, "Poster fetch failed: %@", v15, 0xCu);
      sub_1C2C73644(v16, &unk_1EC062DD0);
      MEMORY[0x1C6927DF0](v16, -1, -1);
      MEMORY[0x1C6927DF0](v15, -1, -1);

      goto LABEL_13;
    }

    v10 = v1;
  }

LABEL_13:

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_1C2E3F744()
{

  v1 = *(v0 + 184);
  *(v0 + 24) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064580);
  if (swift_dynamicCast())
  {

    if (qword_1EC05CC50 != -1)
    {
      swift_once();
    }

    v3 = sub_1C2E72B44();
    __swift_project_value_buffer(v3, qword_1EC075A48);
    v4 = sub_1C2E72B24();
    v5 = sub_1C2E75FE4();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1C2C6B000, v4, v5, "Cancelled poster fetch task", v6, 2u);
      MEMORY[0x1C6927DF0](v6, -1, -1);
    }

    v8 = *(v0 + 56);
    v7 = *(v0 + 64);
    v9 = *(v0 + 48);

    (*(v8 + 8))(v7, v9);
    v10 = *(v0 + 24);
  }

  else
  {

    if (qword_1EC05CC50 != -1)
    {
      swift_once();
    }

    v11 = sub_1C2E72B44();
    __swift_project_value_buffer(v11, qword_1EC075A48);
    v12 = v1;
    v13 = sub_1C2E72B24();
    v14 = sub_1C2E75FC4();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      v17 = v1;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 4) = v18;
      *v16 = v18;
      _os_log_impl(&dword_1C2C6B000, v13, v14, "Poster fetch failed: %@", v15, 0xCu);
      sub_1C2C73644(v16, &unk_1EC062DD0);
      MEMORY[0x1C6927DF0](v16, -1, -1);
      MEMORY[0x1C6927DF0](v15, -1, -1);

      goto LABEL_13;
    }

    v10 = v1;
  }

LABEL_13:

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_1C2E3FA28()
{
  *(v1 + 200) = v0;

  return MEMORY[0x1EEE6DFA0](sub_1C2E3FAB8, 0, 0);
}

uint64_t sub_1C2E3FAB8()
{
  sub_1C2E75E34();
  *(v0 + 208) = sub_1C2E75E24();
  v2 = sub_1C2E75DD4();

  return MEMORY[0x1EEE6DFA0](sub_1C2E3FB80, v2, v1);
}

uint64_t sub_1C2E3FB80()
{
  v1 = v0[25];

  swift_getKeyPath();
  v0[22] = v1;
  sub_1C2E45254(&qword_1EC05CE90, 255, _s5ModelCMa);
  sub_1C2E71A64();

  v0[27] = *(v1 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1C2E3FCA8, 0, 0);
}

uint64_t sub_1C2E3FCA8()
{
  v1 = v0[27];
  if (v1 >> 62)
  {
    if (sub_1C2E764E4())
    {
      goto LABEL_3;
    }

LABEL_18:

    sub_1C2E456B0();
    swift_allocError();
    *v35 = 0;
    swift_willThrow();
    goto LABEL_19;
  }

  if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_18;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v2 = MEMORY[0x1C6927010](0, v0[27]);
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
    }

    v2 = *(v0[27] + 32);
  }

  v0[28] = v2;

  sub_1C2E75ED4();
  v0[29] = *(v0[25] + 56);
  sub_1C2E41260(v2);
  v4 = *&v3[OBJC_IVAR____TtC16CommunicationsUI19PosterAvatarContact_contact];
  v0[30] = v4;
  v5 = v3;
  v6 = v4;

  v7 = [v6 wallpaper];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 posterArchiveData];

    v10 = sub_1C2E717A4();
    v12 = v11;

    v0[31] = v10;
    v0[32] = v12;
    sub_1C2E75ED4();
    v0[33] = 0;
    v14 = objc_opt_self();
    v15 = sub_1C2E71794();
    v0[23] = 0;
    v16 = [v14 unarchiveConfigurationFromData:v15 format:-1 error:v0 + 23];
    v0[34] = v16;

    v17 = v0[23];
    if (v16)
    {
      v18 = objc_opt_self();
      v19 = v17;
      v37 = [v18 sharedIncomingCallSnapshotController];
      v0[35] = v37;
      v20 = [objc_allocWithZone(MEMORY[0x1E69C5070]) initWithBaseIdentifier:*MEMORY[0x1E69C5100] context:0 attachmentUniqueIdentifiers:0];
      v0[36] = v20;
      v21 = v20;
      v22 = [v21 uniqueIdentifier];
      v38 = [v21 includesHeaderElements];
      v23 = [v21 includesComplications];
      v24 = [v21 levelSets];
      if (!v24)
      {
        sub_1C2C6E1B4(0, &qword_1EC064590);
        sub_1C2E75D74();
        v24 = sub_1C2E75D64();
      }

      v25 = [v21 isUnlocked];
      v26 = [v21 renderingContent];
      v27 = [v21 renderingMode];
      v28 = [v21 previewContent];

      v29 = [objc_allocWithZone(MEMORY[0x1E69C5338]) initWithUniqueIdentifier:v22 includeHeaderElements:v38 includesComplications:v23 levelSets:v24 isUnlocked:v25 renderingContent:v26 renderingMode:v27 previewContent:v28 boundingShape:2];
      v0[37] = v29;

      v30 = [objc_allocWithZone(MEMORY[0x1E69C5078]) initWithUserInterfaceStyle:0 interfaceOrientation:1 snapshotDefinition:v29];
      v0[38] = v30;
      v31 = [objc_allocWithZone(MEMORY[0x1E69C50F8]) initWithPoster:v16 snapshotDescriptor:v30];
      v0[39] = v31;
      v32 = swift_task_alloc();
      v0[40] = v32;
      *v32 = v0;
      v32[1] = sub_1C2E4020C;

      return sub_1C2E44270(v31, v37);
    }

    v34 = v17;
    sub_1C2E716D4();

    swift_willThrow();
    sub_1C2D9E434(v10, v12);
  }

  else
  {
    sub_1C2E456B0();
    swift_allocError();
    *v13 = 1;
    swift_willThrow();
  }

LABEL_19:
  v36 = v0[1];

  return v36();
}

uint64_t sub_1C2E4020C()
{

  return MEMORY[0x1EEE6DFA0](sub_1C2E40334, 0, 0);
}

uint64_t sub_1C2E40334()
{
  *(v0 + 192) = 0;
  v1 = [*(v0 + 280) currentSnapshotBundleForRequest:*(v0 + 312) error:v0 + 192];
  v2 = *(v0 + 192);
  if (!v1)
  {
    v24 = v2;
    v3 = sub_1C2E716D4();

    swift_willThrow();
    if (qword_1EC05CC50 == -1)
    {
LABEL_14:
      v25 = sub_1C2E72B44();
      __swift_project_value_buffer(v25, qword_1EC075A48);
      v26 = v3;
      v27 = sub_1C2E72B24();
      v28 = sub_1C2E75FC4();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        *v29 = 138412290;
        v31 = v3;
        v32 = _swift_stdlib_bridgeErrorToNSError();
        *(v29 + 4) = v32;
        *v30 = v32;
        _os_log_impl(&dword_1C2C6B000, v27, v28, "Failed to find currentSnapshotBundle. Trying a snapshot request. error: %@", v29, 0xCu);
        sub_1C2C73644(v30, &unk_1EC062DD0);
        MEMORY[0x1C6927DF0](v30, -1, -1);
        MEMORY[0x1C6927DF0](v29, -1, -1);
      }

      else
      {
      }

      v33 = 0;
      goto LABEL_22;
    }

LABEL_27:
    swift_once();
    goto LABEL_14;
  }

  v3 = v1;
  v4 = v2;
  v5 = [v3 snapshotLevelSets];
  sub_1C2C6E1B4(0, &qword_1EC0645A0);
  v6 = sub_1C2E75D74();

  if (v6 >> 62)
  {
    if (sub_1C2E764E4())
    {
      goto LABEL_4;
    }
  }

  else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_4:
    if ((v6 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1C6927010](0, v6);
      goto LABEL_7;
    }

    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v7 = *(v6 + 32);
LABEL_7:
      v8 = v7;

      v9 = [v3 snapshotForLevelSet_];
      if (v9)
      {
        v10 = v9;
        v11 = *(v0 + 264);
        v12 = [*(v0 + 240) identifier];
        v13 = sub_1C2E75C64();
        v15 = v14;

        sub_1C2E40EEC(v13, v15);
        v38 = *(v0 + 240);
        if (v11)
        {
        }

        v16 = *(v0 + 304);
        v37 = *(v0 + 312);
        v18 = *(v0 + 288);
        v17 = *(v0 + 296);
        v20 = *(v0 + 272);
        v19 = *(v0 + 280);
        v21 = *(v0 + 224);
        sub_1C2D9E434(*(v0 + 248), *(v0 + 256));

        v22 = *(v0 + 8);

        return v22(v10);
      }

      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_27;
  }

LABEL_21:
  v33 = *(v0 + 264);
LABEL_22:
  *(v0 + 328) = v33;
  v34 = *(v0 + 312);
  v35 = *(v0 + 280);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_1C2E4082C;
  v36 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064598);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1C2E40C94;
  *(v0 + 104) = &block_descriptor_26;
  *(v0 + 112) = v36;
  [v35 executeSnapshotRequest:v34 completionBlock:v0 + 80];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1C2E4082C()
{

  return MEMORY[0x1EEE6DFA0](sub_1C2E40938, 0, 0);
}

uint64_t sub_1C2E40938()
{
  v1 = *(v0 + 152);

  if (!v1)
  {
    goto LABEL_17;
  }

  v2 = [v1 posterSnapshotBundle];

  if (!v2)
  {
    goto LABEL_17;
  }

  v3 = [v2 snapshotLevelSets];
  sub_1C2C6E1B4(0, &qword_1EC0645A0);
  v4 = sub_1C2E75D74();

  if (v4 >> 62)
  {
    if (sub_1C2E764E4())
    {
      goto LABEL_5;
    }

LABEL_16:

    goto LABEL_17;
  }

  if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_16;
  }

LABEL_5:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x1C6927010](0, v4);
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
    }

    v5 = *(v4 + 32);
  }

  v6 = v5;

  v7 = [v2 snapshotForLevelSet_];
  if (v7)
  {
    v8 = v7;
    v9 = *(v0 + 328);
    v10 = [*(v0 + 240) identifier];
    v11 = sub_1C2E75C64();
    v13 = v12;

    sub_1C2E40EEC(v11, v13);
    v14 = *(v0 + 240);
    if (v9)
    {
    }

    v15 = *(v0 + 304);
    v17 = *(v0 + 288);
    v16 = *(v0 + 296);
    v19 = *(v0 + 272);
    v18 = *(v0 + 280);
    v31 = *(v0 + 224);
    v33 = *(v0 + 312);
    sub_1C2D9E434(*(v0 + 248), *(v0 + 256));

    v20 = *(v0 + 8);

    return v20(v8);
  }

LABEL_17:
  v23 = *(v0 + 304);
  v22 = *(v0 + 312);
  v24 = *(v0 + 288);
  v25 = *(v0 + 296);
  v26 = *(v0 + 272);
  v27 = *(v0 + 280);
  v28 = *(v0 + 248);
  v32 = *(v0 + 256);
  v34 = *(v0 + 240);
  v35 = *(v0 + 224);
  sub_1C2E456B0();
  swift_allocError();
  *v29 = 2;
  swift_willThrow();

  sub_1C2D9E434(v28, v32);
  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_1C2E40C94(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v10 = *v9;
  v11 = *(*(*v9 + 64) + 40);
  *v11 = a2;
  v11[1] = a3;
  v11[2] = a4;
  v11[3] = a5;
  v12 = a2;
  v13 = a3;
  v14 = a5;
  v15 = a4;

  return MEMORY[0x1EEE6DED8](v10);
}

id sub_1C2E40D54()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PosterAvatarContact();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_1C2E40DD4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC05D8D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C2E7A720;
  *(v0 + 32) = [objc_opt_self() descriptorForRequiredKeys];
  type metadata accessor for PosterAvatarViewContactStoreCache();
  v1 = swift_allocObject();
  result = sub_1C2E41974(v0);
  qword_1EC075A60 = v1;
  return result;
}

void sub_1C2E40E68(id a1@<X1>, void **a2@<X0>, void *a3@<X8>)
{
  v4 = *a2;
  v5 = [a1 identifier];
  if (v5)
  {
    v6 = v5;
    v7 = [v4 objectForKeyedSubscript_];

    *a3 = v7;
  }

  else
  {
    __break(1u);
  }
}

void sub_1C2E40EEC(uint64_t a1, unint64_t a2)
{
  v6 = *(v2 + 32);
  os_unfair_lock_lock((v6 + 24));
  sub_1C2E4529C((v6 + 16), &v14);
  if (v3)
  {
    os_unfair_lock_unlock((v6 + 24));
    __break(1u);
  }

  else
  {
    os_unfair_lock_unlock((v6 + 24));
    v7 = v14;
    if (v14)
    {
      if (qword_1EC05CC38 != -1)
      {
        swift_once();
      }

      v8 = sub_1C2E72B44();
      __swift_project_value_buffer(v8, qword_1EC075A18);

      v9 = sub_1C2E72B24();
      v10 = sub_1C2E75FE4();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v14 = v12;
        *v11 = 136315138;
        *(v11 + 4) = sub_1C2E43AC0(a1, a2, &v14);
        _os_log_impl(&dword_1C2C6B000, v9, v10, "Inserting highResolutionPosterSnapshot for contactID: %s", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v12);
        MEMORY[0x1C6927DF0](v12, -1, -1);
        MEMORY[0x1C6927DF0](v11, -1, -1);
      }

      MEMORY[0x1EEE9AC00](v13);
      os_unfair_lock_lock((v6 + 24));
      sub_1C2E4530C((v6 + 16));
      os_unfair_lock_unlock((v6 + 24));
    }

    else
    {
      sub_1C2E452B8();
      swift_allocError();
      swift_willThrow();
    }
  }
}

void sub_1C2E41124(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = sub_1C2E75C24();
  v5 = [v3 objectForKeyedSubscript_];

  *a2 = v5;
}

void sub_1C2E41190(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = *a1;
  v8 = sub_1C2E75C24();
  v9 = *(a4 + OBJC_IVAR____TtC16CommunicationsUI19PosterAvatarContact_contact);
  v10 = type metadata accessor for PosterAvatarContact();
  v11 = objc_allocWithZone(v10);
  *&v11[OBJC_IVAR____TtC16CommunicationsUI19PosterAvatarContact_contact] = v9;
  *&v11[OBJC_IVAR____TtC16CommunicationsUI19PosterAvatarContact_highResolutionPosterSnapshot] = a5;
  v15.receiver = v11;
  v15.super_class = v10;
  v12 = v9;
  v13 = a5;
  v14 = objc_msgSendSuper2(&v15, sel_init);
  [v7 setObject:v14 forKeyedSubscript:{v8, v15.receiver, v15.super_class}];
}

void sub_1C2E41260(void *a1)
{
  v3 = v2;
  v4 = v1;
  v62[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1C2E718A4();
  v58 = *(v6 - 8);
  v59 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v57 = &v53[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1EC05CC38 != -1)
  {
    swift_once();
  }

  v8 = sub_1C2E72B44();
  __swift_project_value_buffer(v8, qword_1EC075A18);
  v9 = a1;
  v10 = sub_1C2E72B24();
  v11 = sub_1C2E75FE4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v62[0] = v55;
    *v12 = 136315138;
    v13 = [v9 id];
    v56 = v4;
    v14 = v57;
    sub_1C2E71884();

    sub_1C2E45254(&qword_1EC05CF08, 255, MEMORY[0x1E69695A8]);
    v54 = v11;
    v15 = v59;
    v16 = sub_1C2E76774();
    v18 = v17;
    v19 = v14;
    v4 = v56;
    (*(v58 + 8))(v19, v15);
    v20 = sub_1C2E43AC0(v16, v18, v62);
    v3 = v2;

    *(v12 + 4) = v20;
    _os_log_impl(&dword_1C2C6B000, v10, v54, "Received fetch request for: %s.", v12, 0xCu);
    v21 = v55;
    __swift_destroy_boxed_opaque_existential_1(v55);
    MEMORY[0x1C6927DF0](v21, -1, -1);
    MEMORY[0x1C6927DF0](v12, -1, -1);
  }

  v22 = *(v4 + 4);
  MEMORY[0x1EEE9AC00](v23);
  *&v53[-16] = v9;
  os_unfair_lock_lock((v22 + 24));
  sub_1C2E4521C((v22 + 16), v62);
  if (v3)
  {
    os_unfair_lock_unlock((v22 + 24));
    __break(1u);
  }

  else
  {
    os_unfair_lock_unlock((v22 + 24));
    if (!v62[0])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0641C0);
      v24 = sub_1C2E75D64();
      v25 = [v9 areKeysAvailable_];

      if (v25)
      {
        v26 = type metadata accessor for PosterAvatarContact();
        v27 = objc_allocWithZone(v26);
        *&v27[OBJC_IVAR____TtC16CommunicationsUI19PosterAvatarContact_contact] = v9;
        *&v27[OBJC_IVAR____TtC16CommunicationsUI19PosterAvatarContact_highResolutionPosterSnapshot] = 0;
        v60.receiver = v27;
        v60.super_class = v26;
        v28 = v9;
        objc_msgSendSuper2(&v60, sel_init);
      }

      else
      {
        v29 = *(v4 + 2);
        v30 = [v9 identifier];
        if (!v30)
        {
          sub_1C2E75C64();
          v30 = sub_1C2E75C24();
        }

        v31 = sub_1C2E75D64();
        v62[0] = 0;
        v32 = [v29 unifiedContactWithIdentifier:v30 keysToFetch:v31 error:v62];

        v33 = v62[0];
        if (v32)
        {
          v34 = v9;
          v35 = v33;
          v36 = sub_1C2E72B24();
          v37 = sub_1C2E75FE4();

          if (os_log_type_enabled(v36, v37))
          {
            v38 = swift_slowAlloc();
            v56 = swift_slowAlloc();
            v62[0] = v56;
            *v38 = 136315138;
            v39 = [v34 id];
            LODWORD(v55) = v37;
            v40 = v57;
            sub_1C2E71884();

            sub_1C2E45254(&qword_1EC05CF08, 255, MEMORY[0x1E69695A8]);
            v41 = v59;
            v42 = sub_1C2E76774();
            v44 = v43;
            (*(v58 + 8))(v40, v41);
            v45 = sub_1C2E43AC0(v42, v44, v62);

            *(v38 + 4) = v45;
            _os_log_impl(&dword_1C2C6B000, v36, v55, "Mutating cache for: %s.", v38, 0xCu);
            v46 = v56;
            __swift_destroy_boxed_opaque_existential_1(v56);
            MEMORY[0x1C6927DF0](v46, -1, -1);
            MEMORY[0x1C6927DF0](v38, -1, -1);
          }

          v47 = type metadata accessor for PosterAvatarContact();
          v48 = objc_allocWithZone(v47);
          *&v48[OBJC_IVAR____TtC16CommunicationsUI19PosterAvatarContact_contact] = v32;
          *&v48[OBJC_IVAR____TtC16CommunicationsUI19PosterAvatarContact_highResolutionPosterSnapshot] = 0;
          v61.receiver = v48;
          v61.super_class = v47;
          v49 = v32;
          v50 = objc_msgSendSuper2(&v61, sel_init);
          MEMORY[0x1EEE9AC00](v50);
          *&v53[-16] = v49;
          *&v53[-8] = v51;
          os_unfair_lock_lock((v22 + 24));
          sub_1C2E45238((v22 + 16));
          os_unfair_lock_unlock((v22 + 24));
        }

        else
        {
          v52 = v62[0];
          sub_1C2E716D4();

          swift_willThrow();
        }
      }
    }
  }
}

void sub_1C2E418FC(void **a1, id a2, uint64_t a3)
{
  v4 = *a1;
  v5 = [a2 identifier];
  if (v5)
  {
    v6 = v5;
    [v4 setObject:a3 forKeyedSubscript:v5];
  }

  else
  {
    __break(1u);
  }
}

void *sub_1C2E41974(uint64_t a1)
{
  v1[5] = 0;
  v3 = [objc_allocWithZone(MEMORY[0x1E695CE18]) init];
  v1[2] = v3;
  v1[3] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC05D8D0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C2E7A720;
  v5 = objc_opt_self();
  v6 = v3;
  *(v4 + 32) = [v5 boundingStrategyWithCapacity_];
  v7 = [v5 nonatomicCacheScheduler];
  v8 = objc_allocWithZone(MEMORY[0x1E6996660]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0645D8);
  v9 = sub_1C2E75D64();

  v10 = [v8 initWithBoundingStrategies:v9 resourceScheduler:v7];

  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0645E0);
  v11 = swift_allocObject();
  *(v11 + 24) = 0;
  *(v11 + 16) = v10;
  v1[4] = v11;
  v12 = [objc_opt_self() defaultCenter];
  v13 = *MEMORY[0x1E695C3D8];
  v14 = swift_allocObject();
  swift_weakInit();
  v18[4] = sub_1C2E458B4;
  v18[5] = v14;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 1107296256;
  v18[2] = sub_1C2E41C44;
  v18[3] = &block_descriptor_108;
  v15 = _Block_copy(v18);

  v16 = [v12 addObserverForName:v13 object:0 queue:0 usingBlock:v15];

  _Block_release(v15);
  v1[5] = v16;
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_1C2E41BEC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1C2E41D38();
  }

  return result;
}

uint64_t sub_1C2E41C44(uint64_t a1)
{
  v2 = sub_1C2E71644();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 32);
  sub_1C2E71634();

  v6(v5);

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1C2E41D38()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC064560);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v16 - v3;
  if (qword_1EC05CC38 != -1)
  {
    swift_once();
  }

  v5 = sub_1C2E72B44();
  __swift_project_value_buffer(v5, qword_1EC075A18);
  v6 = sub_1C2E72B24();
  v7 = sub_1C2E75FE4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1C2C6B000, v6, v7, "Learned about CNContactStore change", v8, 2u);
    MEMORY[0x1C6927DF0](v8, -1, -1);
  }

  v9 = *(v1 + 32);
  os_unfair_lock_lock((v9 + 24));
  [*(v9 + 16) removeAllObjects];
  os_unfair_lock_unlock((v9 + 24));
  v10 = sub_1C2E75E74();
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = swift_allocObject();
  swift_weakInit();
  sub_1C2E75E34();

  v12 = sub_1C2E75E24();
  v13 = swift_allocObject();
  v14 = MEMORY[0x1E69E85E0];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = v11;

  sub_1C2D22888(0, 0, v4, &unk_1C2E91BF8, v13);
}

uint64_t sub_1C2E41F6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  sub_1C2E75E34();
  v4[7] = sub_1C2E75E24();
  v6 = sub_1C2E75DD4();

  return MEMORY[0x1EEE6DFA0](sub_1C2E42004, v6, v5);
}

uint64_t sub_1C2E42004()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    type metadata accessor for PosterAvatarViewContactStoreCache();
    sub_1C2E45254(&qword_1EC05CC98, v2, type metadata accessor for PosterAvatarViewContactStoreCache);
    sub_1C2E72DC4();

    sub_1C2E72E34();
  }

  **(v0 + 40) = Strong == 0;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1C2E420FC()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = objc_opt_self();
    swift_unknownObjectRetain();
    v3 = [v2 defaultCenter];
    [v3 removeObserver_];
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

uint64_t sub_1C2E421B4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PosterAvatarViewContactStoreCache();
  result = sub_1C2E72DC4();
  *a1 = result;
  return result;
}

uint64_t sub_1C2E421F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC061C20);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v16[-v3];
  v5 = sub_1C2E71784();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16[-v10];
  sub_1C2C736A4(a1, v16, &unk_1EC0645B0);
  if (!v17)
  {
    sub_1C2C73644(v16, &unk_1EC0645B0);
    (*(v6 + 56))(v4, 1, 1, v5);
    goto LABEL_5;
  }

  v12 = swift_dynamicCast();
  (*(v6 + 56))(v4, v12 ^ 1u, 1, v5);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
LABEL_5:
    sub_1C2C73644(v4, &unk_1EC061C20);
    v13 = 0;
    return v13 & 1;
  }

  (*(v6 + 32))(v11, v4, v5);
  sub_1C2E71704();
  v13 = sub_1C2E71744();
  v14 = *(v6 + 8);
  v14(v8, v5);
  v14(v11, v5);
  return v13 & 1;
}

uint64_t sub_1C2E4246C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v5 = *(a1 + 32);
  if (!a2)
  {
    memset(v10, 0, sizeof(v10));
    if (!a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  ObjectType = swift_getObjectType();
  *&v8 = a2;
  sub_1C2D3A588(&v8, v10);
  if (v3)
  {
LABEL_3:
    v3 = sub_1C2E75B44();
  }

LABEL_4:

  swift_unknownObjectRetain();
  v6 = v5(v10, v3);

  sub_1C2C73644(v10, &unk_1EC0645B0);
  return v6 & 1;
}

uint64_t PosterImageDiskCache.__allocating_init(cacheURL:)(uint64_t a1)
{
  v2 = swift_allocObject();
  PosterImageDiskCache.init(cacheURL:)(a1);
  return v2;
}

uint64_t PosterImageDiskCache.init(cacheURL:)(uint64_t a1)
{
  v2 = v1;
  v16[1] = *MEMORY[0x1E69E9840];
  v4 = OBJC_IVAR____TtC16CommunicationsUI20PosterImageDiskCache_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064518);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v2 + v4) = v5;
  v6 = OBJC_IVAR____TtC16CommunicationsUI20PosterImageDiskCache_cacheURL;
  v7 = sub_1C2E71784();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v2 + v6, a1, v7);
  v9 = [objc_opt_self() defaultManager];
  v10 = sub_1C2E71734();
  v16[0] = 0;
  v11 = [v9 createDirectoryAtURL:v10 withIntermediateDirectories:1 attributes:0 error:v16];

  if (v11)
  {
    v12 = v16[0];
  }

  else
  {
    v13 = v16[0];
    v14 = sub_1C2E716D4();

    swift_willThrow();
  }

  (*(v8 + 8))(a1, v7);
  return v2;
}

void sub_1C2E4273C(void *a1)
{
  v30 = a1;
  v34[2] = *MEMORY[0x1E69E9840];
  v2 = sub_1C2E71714();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1C2E71784();
  v6 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(v1 + OBJC_IVAR____TtC16CommunicationsUI20PosterImageDiskCache_lock);
  os_unfair_lock_lock(v32 + 4);
  v33 = sub_1C2E76254();
  v34[0] = sub_1C2E76774();
  v34[1] = v9;
  MEMORY[0x1C6926710](45, 0xE100000000000000);
  v33 = 1;
  v10 = sub_1C2E76774();
  MEMORY[0x1C6926710](v10);

  MEMORY[0x1C6926710](1735290926, 0xE400000000000000);
  (*(v3 + 104))(v5, *MEMORY[0x1E6968F70], v2);
  sub_1C2C74960();
  sub_1C2E71774();
  (*(v3 + 8))(v5, v2);

  v11 = objc_opt_self();
  v12 = [v11 defaultManager];
  sub_1C2E71764();
  v13 = sub_1C2E75C24();

  v14 = [v12 fileExistsAtPath_];

  if (v14)
  {
    (*(v6 + 8))(v8, v31);
  }

  else
  {
    v29 = v6;
    v15 = v31;
    if (v30)
    {
      v16 = v30;
      v17 = UIImagePNGRepresentation(v16);
      if (v17)
      {
        v18 = v17;
        v19 = sub_1C2E717A4();
        v21 = v20;

        sub_1C2E717B4();
        sub_1C2E44A44(v8);
        sub_1C2D9E434(v19, v21);

        (*(v29 + 8))(v8, v15);
      }

      else
      {
        (*(v29 + 8))(v8, v15);
      }
    }

    else
    {
      v22 = [v11 defaultManager];
      v23 = sub_1C2E71734();
      v34[0] = 0;
      v24 = [v22 removeItemAtURL:v23 error:v34];

      if (v24)
      {
        v25 = v34[0];
      }

      else
      {
        v26 = v34[0];
        v27 = sub_1C2E716D4();

        swift_willThrow();
      }

      (*(v29 + 8))(v8, v15);
    }
  }

  os_unfair_lock_unlock(v32 + 4);
}

id sub_1C2E42CF0()
{
  v1 = sub_1C2E71714();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1C2E71784();
  v5 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v0 + OBJC_IVAR____TtC16CommunicationsUI20PosterImageDiskCache_lock);
  os_unfair_lock_lock(v15 + 4);
  v17 = sub_1C2E76254();
  v18 = sub_1C2E76774();
  v19 = v8;
  MEMORY[0x1C6926710](45, 0xE100000000000000);
  v17 = 1;
  v9 = sub_1C2E76774();
  MEMORY[0x1C6926710](v9);

  MEMORY[0x1C6926710](1735290926, 0xE400000000000000);
  (*(v2 + 104))(v4, *MEMORY[0x1E6968F70], v1);
  sub_1C2C74960();
  sub_1C2E71774();
  (*(v2 + 8))(v4, v1);

  sub_1C2E71764();
  v10 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
  v11 = sub_1C2E75C24();

  v12 = [v10 initWithContentsOfFile_];

  (*(v5 + 8))(v7, v16);
  os_unfair_lock_unlock(v15 + 4);
  return v12;
}

void sub_1C2E42FBC(void *a1, void *a2)
{
  sub_1C2E4273C(a1);
}

void (*sub_1C2E43004(id *a1, void *a2))(void **a1, char a2)
{
  a1[1] = a2;
  a1[2] = v2;
  *a1 = sub_1C2E42CF0();
  return sub_1C2E43050;
}

void sub_1C2E43050(void **a1, char a2)
{
  v4 = *a1;
  if (a2)
  {
    v2 = v4;
    sub_1C2E4273C(v4);

    v3 = v2;
  }

  else
  {
    sub_1C2E4273C(*a1);
    v3 = v4;
  }
}

id sub_1C2E430D0(uint64_t a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1C2E71734();
  v11[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() fileHandleForReadingFromURL:v2 error:v11];

  v4 = v11[0];
  if (v3)
  {
    v5 = sub_1C2E71784();
    v6 = *(*(v5 - 8) + 8);
    v7 = v4;
    v6(a1, v5);
  }

  else
  {
    v8 = v11[0];
    sub_1C2E716D4();

    swift_willThrow();
    v9 = sub_1C2E71784();
    (*(*(v9 - 8) + 8))(a1, v9);
  }

  return v3;
}

uint64_t PosterImageDiskCache.deinit()
{
  v1 = OBJC_IVAR____TtC16CommunicationsUI20PosterImageDiskCache_cacheURL;
  v2 = sub_1C2E71784();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t PosterImageDiskCache.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16CommunicationsUI20PosterImageDiskCache_cacheURL;
  v2 = sub_1C2E71784();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1C2E43344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a4;
  v5 = sub_1C2E76674();
  v4[15] = v5;
  v4[16] = *(v5 - 8);
  v4[17] = swift_task_alloc();
  sub_1C2E75E34();
  v4[18] = sub_1C2E75E24();
  v7 = sub_1C2E75DD4();
  v4[19] = v7;
  v4[20] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1C2E43438, v7, v6);
}

uint64_t sub_1C2E43438()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + 80) = 0;
  }

  swift_beginAccess();
  v2 = swift_weakLoadStrong();
  if (v2 && (v4 = *(v2 + 88), v3 = *(v2 + 96), v5 = *(v2 + 104), , (v5 & 1) == 0))
  {
    swift_beginAccess();
    v8 = swift_weakLoadStrong();
    if (v8)
    {
      *(v8 + 88) = 0;
      *(v8 + 96) = 0;
      *(v8 + 104) = 1;
    }

    sub_1C2E767F4();
    v9 = swift_task_alloc();
    *(v0 + 168) = v9;
    *v9 = v0;
    v9[1] = sub_1C2E435E4;

    return sub_1C2E195F8(v4, v3, 0, 0, 1);
  }

  else
  {

    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_1C2E435E4()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[17];
  v5 = v2[16];
  v6 = v2[15];
  if (v0)
  {

    (*(v5 + 8))(v4, v6);
    v7 = v3[19];
    v8 = v3[20];
    v9 = sub_1C2E459A8;
  }

  else
  {
    (*(v5 + 8))(v4, v6);
    v7 = v3[19];
    v8 = v3[20];
    v9 = sub_1C2E43778;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1C2E43778()
{

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1C2E3CE68();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C2E43814(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1C2E4390C;

  return v6(a1);
}

uint64_t sub_1C2E4390C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1C2E43A04(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

uint64_t sub_1C2E43A64(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_1C2E43AC0(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_1C2E43AC0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1C2E43B8C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
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
    sub_1C2D32734(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_1C2E43B8C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1C2E43C98(a5, a6);
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
    result = sub_1C2E76604();
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

uint64_t sub_1C2E43C98(uint64_t a1, unint64_t a2)
{
  v3 = sub_1C2E43CE4(a1, a2);
  sub_1C2E43E14(&unk_1F4297340);
  return v3;
}

uint64_t sub_1C2E43CE4(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1C2E43F00(v5, 0);
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

  result = sub_1C2E76604();
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
        v10 = sub_1C2E75D04();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1C2E43F00(v10, 0);
        result = sub_1C2E765A4();
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

uint64_t sub_1C2E43E14(uint64_t result)
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

  result = sub_1C2E43F74(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

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

void *sub_1C2E43F00(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064570);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1C2E43F74(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064570);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

void sub_1C2E44068(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

BOOL sub_1C2E440DC(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (!(a1 >> 62))
  {
    if (a3 >> 62 || (sub_1C2E75084() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_8;
  }

  if (a1 >> 62 == 1)
  {
    if (a3 >> 62 != 1 || (sub_1C2E75084() & 1) == 0)
    {
      return 0;
    }

LABEL_8:
    sub_1C2C6E1B4(0, &qword_1EC062E20);
    return sub_1C2E76234() & 1;
  }

  return a3 >> 62 == 2 && a3 == 0x8000000000000000 && !a4;
}

uint64_t sub_1C2E441A8(char a1, uint64_t a2, char a3, uint64_t a4)
{
  v4 = a4;
  if (!a2)
  {
    if (!a4)
    {

      return v4 & 1;
    }

    goto LABEL_6;
  }

  if (!a4)
  {
LABEL_6:

    LOBYTE(v4) = 1;
    return v4 & 1;
  }

  v5 = (a3 ^ a1);

  if (v5)
  {
    LOBYTE(v4) = 1;
  }

  else
  {

    v7 = sub_1C2CF6E00(v6, v4);

    LOBYTE(v4) = v7 ^ 1;
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_1C2E44270(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  v3 = sub_1C2E71784();
  v2[11] = v3;
  v4 = *(v3 - 8);
  v2[12] = v4;
  v2[13] = *(v4 + 64);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C2E4437C, 0, 0);
}

uint64_t sub_1C2E4437C()
{
  v61 = v0;
  v60[1] = *MEMORY[0x1E69E9840];
  v1 = objc_opt_self();
  v2 = [v1 standardUserDefaults];
  v3 = sub_1C2E75C24();
  v4 = [v2 integerForKey_];

  if (v4 != 2)
  {
    v6 = v0[9];
    v5 = v0[10];
    v7 = [v1 standardUserDefaults];
    v8 = sub_1C2E75F34();
    v9 = sub_1C2E75C24();
    [v7 setValue:v8 forKey:v9];

    v0[8] = 0;
    v10 = [v5 currentSnapshotBundleForRequest:v6 error:v0 + 8];
    v11 = v0[8];
    if (v10)
    {
      v12 = v10;
      v13 = v0[15];
      v15 = v0[11];
      v14 = v0[12];
      v16 = v11;
      v17 = [v12 bundleURL];
      sub_1C2E71754();

      sub_1C2E71704();
      v18 = *(v14 + 8);
      v18(v13, v15);
      if (qword_1EC05CC50 != -1)
      {
        swift_once();
      }

      v19 = v0[16];
      v20 = v0[14];
      v22 = v0[11];
      v21 = v0[12];
      v23 = sub_1C2E72B44();
      __swift_project_value_buffer(v23, qword_1EC075A48);
      v59 = *(v21 + 16);
      v59(v20, v19, v22);
      v24 = sub_1C2E72B24();
      v25 = sub_1C2E75FC4();
      v26 = os_log_type_enabled(v24, v25);
      v27 = v0[14];
      v28 = v0[11];
      if (v26)
      {
        v29 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v58 = v12;
        v60[0] = v57;
        *v29 = 136315138;
        sub_1C2E45254(&qword_1EC0645A8, 255, MEMORY[0x1E6968FB0]);
        v30 = sub_1C2E76774();
        v32 = v31;
        v18(v27, v28);
        v33 = sub_1C2E43AC0(v30, v32, v60);

        *(v29 + 4) = v33;
        _os_log_impl(&dword_1C2C6B000, v24, v25, "Purging snapshot bundle at url: %s", v29, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v57);
        v12 = v58;
        MEMORY[0x1C6927DF0](v57, -1, -1);
        MEMORY[0x1C6927DF0](v29, -1, -1);
      }

      else
      {

        v18(v27, v28);
      }

      v44 = v0[15];
      v45 = v0[12];
      v46 = v0[11];
      v59(v44, v0[16], v46);
      v47 = (*(v45 + 80) + 16) & ~*(v45 + 80);
      v48 = swift_allocObject();
      (*(v45 + 32))(v48 + v47, v44, v46);
      v0[6] = sub_1C2E4571C;
      v0[7] = v48;
      v0[2] = MEMORY[0x1E69E9820];
      v0[3] = 1107296256;
      v0[4] = sub_1C2E4246C;
      v0[5] = &block_descriptor_86;
      v49 = _Block_copy(v0 + 2);
      v50 = [objc_opt_self() predicateWithBlock_];
      _Block_release(v49);

      v51 = [objc_opt_self() incomingCallSnapshotCache];
      v52 = v0[16];
      v53 = v0[11];
      if (v51)
      {
        v54 = v51;
        [v51 discardSnapshotsForPostersMatchingPredicate_];

        v18(v52, v53);
      }

      else
      {
        v18(v0[16], v0[11]);
      }
    }

    else
    {
      v34 = v11;
      v35 = sub_1C2E716D4();

      swift_willThrow();
      if (qword_1EC05CC50 != -1)
      {
        swift_once();
      }

      v36 = sub_1C2E72B44();
      __swift_project_value_buffer(v36, qword_1EC075A48);
      v37 = v35;
      v38 = sub_1C2E72B24();
      v39 = sub_1C2E75FC4();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        *v40 = 138412290;
        v42 = v35;
        v43 = _swift_stdlib_bridgeErrorToNSError();
        *(v40 + 4) = v43;
        *v41 = v43;
        _os_log_impl(&dword_1C2C6B000, v38, v39, "Failed to find currentSnapshotBundle in clearPosterKitCacheIfNecessary. Trying a snapshot request. error: %@", v40, 0xCu);
        sub_1C2C73644(v41, &unk_1EC062DD0);
        MEMORY[0x1C6927DF0](v41, -1, -1);
        MEMORY[0x1C6927DF0](v40, -1, -1);
      }

      else
      {
      }
    }
  }

  v55 = v0[1];

  return v55();
}

void sub_1C2E44A44(uint64_t a1)
{
  v19[2] = *MEMORY[0x1E69E9840];
  v2 = sub_1C2E71784();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C2C6E1B4(0, &qword_1EC064588);
  (*(v3 + 16))(v5, a1, v2);
  v6 = sub_1C2E430D0(v5);
  if (v6)
  {
    v11 = v6;
    v12 = [v6 fileDescriptor];
    v19[0] = 65542;
    v13 = ffsctl(v12, 0xC0084A44uLL, v19, 0);
    if (qword_1EC05CC38 != -1)
    {
      swift_once();
    }

    v14 = sub_1C2E72B44();
    __swift_project_value_buffer(v14, qword_1EC075A18);
    v15 = sub_1C2E72B24();
    v16 = sub_1C2E75FE4();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 67109120;
      *(v17 + 4) = v13;
      _os_log_impl(&dword_1C2C6B000, v15, v16, "Error marking purgable file: %d", v17, 8u);
      MEMORY[0x1C6927DF0](v17, -1, -1);
    }

    v8 = v11;
    [v11 closeFile];
  }

  else
  {
    if (qword_1EC05CC38 != -1)
    {
      swift_once();
    }

    v7 = sub_1C2E72B44();
    __swift_project_value_buffer(v7, qword_1EC075A18);
    v8 = sub_1C2E72B24();
    v9 = sub_1C2E75FE4();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1C2C6B000, v8, v9, "Could not mark purgable. Unable to attain file handle", v10, 2u);
      MEMORY[0x1C6927DF0](v10, -1, -1);
    }
  }
}

uint64_t sub_1C2E44D60()
{
  result = sub_1C2E71AA4();
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

uint64_t sub_1C2E44ED8()
{
  result = sub_1C2E71784();
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

unint64_t get_enum_tag_for_layout_string_16CommunicationsUI20CUPosterOrAvatarViewV5ModelC14RepresentationO(uint64_t *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_1C2E45070(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 16))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1C2E450CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    *(result + 8) = 0;
    if (a3 >= 0x7E)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 8) = 0;
    }
  }

  return result;
}

void *sub_1C2E4512C(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (8 * (a2 - 2)) | 0x8000000000000000;
    result[1] = 0;
  }

  return result;
}

uint64_t sub_1C2E45168(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C2CC8E70;

  return sub_1C2E41F6C(a1, v4, v5, v6);
}

uint64_t sub_1C2E45254(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C2E452B8()
{
  result = qword_1EC064578;
  if (!qword_1EC064578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC064578);
  }

  return result;
}

void sub_1C2E45330()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = *(v2 + 32);
  v5 = *(v2 + 40);
  *(v2 + 32) = v1;
  *(v2 + 40) = v3;
  sub_1C2D9E5A0(v1, v3);
  sub_1C2D9E79C(v4, v5);
}

id sub_1C2E4538C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = sub_1C2E3AC58(*(v2 + 16), a1, *(v2 + 24));
  *a2 = result;
  return result;
}

uint64_t sub_1C2E453BC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1C2CC8E70;

  return sub_1C2E3C30C(a1, v4, v5, v7, v6);
}

uint64_t sub_1C2E4547C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1C2CC8E70;

  return sub_1C2E3D88C(a1, v4, v5, v7, v6);
}

uint64_t sub_1C2E4553C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1C2CC8E70;

  return sub_1C2E3E070(a1, v4, v5, v7, v6);
}

uint64_t sub_1C2E455FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C2C7DC10;

  return sub_1C2E43344(a1, v4, v5, v6);
}

unint64_t sub_1C2E456B0()
{
  result = qword_1EC05CE98;
  if (!qword_1EC05CE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05CE98);
  }

  return result;
}

uint64_t sub_1C2E4571C(uint64_t a1)
{
  sub_1C2E71784();

  return sub_1C2E421F0(a1);
}

uint64_t objectdestroy_56Tm_0(void (*a1)(void))
{
  swift_unknownObjectRelease();

  a1(*(v1 + 40));

  return MEMORY[0x1EEE6BDD0](v1, 48, 7);
}

uint64_t sub_1C2E457F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1C2C7DC10;

  return sub_1C2E3D88C(a1, v4, v5, v7, v6);
}

uint64_t block_copy_helper_106(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1C2E458F8()
{
  result = qword_1EC0645E8;
  if (!qword_1EC0645E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0645E8);
  }

  return result;
}

unint64_t sub_1C2E45950()
{
  result = qword_1EC0645F0;
  if (!qword_1EC0645F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0645F0);
  }

  return result;
}

uint64_t sub_1C2E459F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v22 = a3;
  v23 = a2;
  v24 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064600);
  MEMORY[0x1EEE9AC00](v5);
  v21 = &v20 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064608);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064610);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - v11;
  swift_getKeyPath();
  v25 = a1;
  sub_1C2E48DB0(&unk_1EC05DA10, type metadata accessor for CallTranslationFooterViewModel);
  sub_1C2E71A64();

  if (*(a1 + OBJC_IVAR____TtC16CommunicationsUI30CallTranslationFooterViewModel__isRemoteTranslationStarted) == 1)
  {
    sub_1C2E45DCC(a1, v23, v22, v12);
    sub_1C2C736A4(v12, v9, &qword_1EC064610);
    swift_storeEnumTagMultiPayload();
    sub_1C2E485B0();
    sub_1C2E48E34(&qword_1EC064698, &qword_1EC064600, &unk_1C2E91F80, sub_1C2E48A00);
    v13 = v24;
    sub_1C2E73F44();
    sub_1C2C73644(v12, &qword_1EC064610);
    v14 = 0;
    v15 = v13;
  }

  else
  {
    v20 = v5;
    v16 = v23;
    v15 = v24;
    swift_getKeyPath();
    v25 = a1;
    sub_1C2E71A64();

    if (*(a1 + OBJC_IVAR____TtC16CommunicationsUI30CallTranslationFooterViewModel__isTranslationStarted) == 1)
    {
      v17 = v21;
      sub_1C2E4638C(a1, v16, v22, v21);
      sub_1C2C736A4(v17, v9, &qword_1EC064600);
      swift_storeEnumTagMultiPayload();
      sub_1C2E485B0();
      sub_1C2E48E34(&qword_1EC064698, &qword_1EC064600, &unk_1C2E91F80, sub_1C2E48A00);
      sub_1C2E73F44();
      sub_1C2C73644(v17, &qword_1EC064600);
      v14 = 0;
    }

    else
    {
      v14 = 1;
    }
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064618);
  return (*(*(v18 - 8) + 56))(v15, v14, 1, v18);
}

uint64_t sub_1C2E45DCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v59 = a2;
  v60 = a3;
  v6 = sub_1C2E73774();
  v62 = *(v6 - 8);
  v63 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FBC8);
  v61 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v57 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064630);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v57 - v14;
  swift_getKeyPath();
  v64 = a1;
  sub_1C2E48DB0(&unk_1EC05DA10, type metadata accessor for CallTranslationFooterViewModel);
  sub_1C2E71A64();

  v16 = *(a1 + OBJC_IVAR____TtC16CommunicationsUI30CallTranslationFooterViewModel__actionButtonTitle + 8);
  v17 = 1;
  if (v16)
  {
    v64 = *(a1 + OBJC_IVAR____TtC16CommunicationsUI30CallTranslationFooterViewModel__actionButtonTitle);
    v65 = v16;
    v18 = swift_allocObject();
    v58 = a4;
    v19 = v59;
    v18[2] = a1;
    v18[3] = v19;
    v18[4] = v60;
    sub_1C2C74960();
    v59 = v13;

    sub_1C2E751E4();
    sub_1C2E73764();
    sub_1C2C94F38(&qword_1EC05FBD8, &qword_1EC05FBC8);
    sub_1C2E48DB0(&qword_1EC060860, MEMORY[0x1E697C248]);
    v20 = v63;
    sub_1C2E74974();
    (*(v62 + 8))(v8, v20);
    (*(v61 + 8))(v11, v9);
    v21 = sub_1C2E744B4();
    sub_1C2E73034();
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v30 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064680) + 36)];
    *v30 = v21;
    *(v30 + 1) = v23;
    *(v30 + 2) = v25;
    *(v30 + 3) = v27;
    *(v30 + 4) = v29;
    v30[40] = 0;
    v31 = sub_1C2E74444();
    sub_1C2E73034();
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v40 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064670) + 36)];
    *v40 = v31;
    *(v40 + 1) = v33;
    *(v40 + 2) = v35;
    *(v40 + 3) = v37;
    *(v40 + 4) = v39;
    v40[40] = 0;
    LOBYTE(v64) = 0;
    v65 = 0;
    v66 = 1;
    v41 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064660) + 36)];
    sub_1C2D1EF10();
    sub_1C2E756C4();
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064690);
    v43 = *(v42 + 52);
    v44 = *MEMORY[0x1E697F468];
    v45 = sub_1C2E73D44();
    v46 = &v41[v43];
    v47 = v44;
    a4 = v58;
    v13 = v59;
    (*(*(v45 - 8) + 104))(v46, v47, v45);
    *&v41[*(v42 + 56)] = 256;
    v48 = sub_1C2E74644();
    KeyPath = swift_getKeyPath();
    v50 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064650) + 36)];
    *v50 = KeyPath;
    v50[1] = v48;
    LODWORD(v48) = sub_1C2E740D4();
    *&v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064640) + 36)] = v48;
    LOBYTE(v48) = sub_1C2E744B4();
    sub_1C2E73034();
    v51 = &v15[*(v12 + 36)];
    *v51 = v48;
    *(v51 + 1) = v52;
    *(v51 + 2) = v53;
    *(v51 + 3) = v54;
    *(v51 + 4) = v55;
    v51[40] = 0;
    sub_1C2C91D7C(v15, a4);
    v17 = 0;
  }

  return (*(v13 + 56))(a4, v17, 1, v12);
}

uint64_t sub_1C2E4638C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v62 = a4;
  v60 = sub_1C2E73774();
  v61 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v59 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_1C2E734E4();
  v58 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v54 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_1C2E75824();
  v50 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0646E0);
  v49 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v47 - v12;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0646D8);
  v53 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v15 = &v47 - v14;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0646D0);
  v56 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v48 = &v47 - v16;
  v66 = a1;
  v67 = a2;
  v68 = a3;
  v63 = a1;
  v64 = a2;
  v65 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0646F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0646F8);
  sub_1C2E48E34(&qword_1EC064700, &qword_1EC0646F0, &unk_1C2E920B8, sub_1C2E48EB8);
  sub_1C2C94F38(&qword_1EC064728, &qword_1EC0646F8);
  sub_1C2E746F4();
  sub_1C2E75814();
  v17 = sub_1C2C94F38(&qword_1EC0646E8, &qword_1EC0646E0);
  sub_1C2E74E74();
  (*(v50 + 8))(v10, v52);
  (*(v49 + 8))(v13, v11);
  v18 = v54;
  sub_1C2E734D4();
  v69 = v11;
  v70 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v20 = sub_1C2E48DB0(&qword_1EC05DFA0, MEMORY[0x1E697C150]);
  v21 = v48;
  v22 = v51;
  v23 = v57;
  sub_1C2E74E84();
  (*(v58 + 8))(v18, v23);
  (*(v53 + 8))(v15, v22);
  v24 = v59;
  sub_1C2E73764();
  v69 = v22;
  v70 = v23;
  v71 = OpaqueTypeConformance2;
  v72 = v20;
  swift_getOpaqueTypeConformance2();
  sub_1C2E48DB0(&qword_1EC060860, MEMORY[0x1E697C248]);
  v25 = v62;
  v26 = v55;
  v27 = v60;
  sub_1C2E74974();
  (*(v61 + 8))(v24, v27);
  (*(v56 + 8))(v21, v26);
  LODWORD(OpaqueTypeConformance2) = sub_1C2E740D4();
  *(v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0646C8) + 36)) = OpaqueTypeConformance2;
  v28 = v25;
  sub_1C2E74674();
  sub_1C2E74594();
  v29 = sub_1C2E74604();

  KeyPath = swift_getKeyPath();
  v31 = (v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0646B8) + 36));
  *v31 = KeyPath;
  v31[1] = v29;
  LOBYTE(v69) = 0;
  v70 = 0;
  LOBYTE(v71) = 1;
  v32 = v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0646A8) + 36);
  sub_1C2D1EF10();
  sub_1C2E756C4();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064690);
  v34 = *(v33 + 52);
  v35 = *MEMORY[0x1E697F468];
  v36 = sub_1C2E73D44();
  (*(*(v36 - 8) + 104))(v32 + v34, v35, v36);
  *(v32 + *(v33 + 56)) = 256;
  LOBYTE(v32) = sub_1C2E744B4();
  sub_1C2E73034();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064600);
  v46 = v28 + *(result + 36);
  *v46 = v32;
  *(v46 + 8) = v38;
  *(v46 + 16) = v40;
  *(v46 + 24) = v42;
  *(v46 + 32) = v44;
  *(v46 + 40) = 0;
  return result;
}

uint64_t sub_1C2E46BE4@<X0>(uint64_t a1@<X0>, void (*a2)(void, void, void)@<X1>, void (*a3)(void, void, void)@<X2>, void *a4@<X8>)
{
  v80 = a3;
  v79 = a2;
  v81 = a4;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FBB0);
  v100 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v94 = &v75[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v89 = &v75[-v7];
  v93 = sub_1C2E75424();
  v99 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v90 = &v75[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v86 = &v75[-v10];
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0615F0);
  v92 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v87 = &v75[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v85 = &v75[-v13];
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064740);
  v91 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v97 = &v75[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v84 = &v75[-v16];
  v17 = sub_1C2E71934();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v18 = sub_1C2E75C14();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v75[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v75[-v23];
  sub_1C2E75BB4();
  (*(v19 + 16))(v21, v24, v18);
  type metadata accessor for StringDummy();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v26 = [objc_opt_self() bundleForClass_];
  sub_1C2E718F4();
  v27 = sub_1C2E75C84();
  v29 = v28;
  (*(v19 + 8))(v24, v18);
  v107 = v27;
  v108 = v29;
  sub_1C2C74960();
  v30 = sub_1C2E748A4();
  v32 = v31;
  LOBYTE(v24) = v33;
  sub_1C2E74644();
  v34 = sub_1C2E747F4();
  v36 = v35;
  v38 = v37;

  sub_1C2C72340(v30, v32, v24 & 1);

  sub_1C2E745A4();
  v39 = sub_1C2E74764();
  v41 = v40;
  LOBYTE(v24) = v42;
  sub_1C2C72340(v34, v36, v38 & 1);

  LODWORD(v107) = sub_1C2E740F4();
  v83 = sub_1C2E74794();
  v44 = v43;
  v82 = v43;
  LODWORD(v78) = v45;
  v95 = v46;
  sub_1C2C72340(v39, v41, v24 & 1);

  v47 = swift_allocObject();
  v48 = v79;
  v47[2] = a1;
  v47[3] = v48;
  v49 = v80;
  v47[4] = v80;
  v104 = a1;
  v105 = v48;
  v106 = v49;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064748);
  sub_1C2E48FA4();
  v50 = v84;
  sub_1C2E751C4();
  v51 = swift_allocObject();
  v51[2] = a1;
  v51[3] = v48;
  v51[4] = v49;
  v101 = a1;
  v102 = v48;
  v103 = v49;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05D160);
  sub_1C2D88328();
  v52 = v85;
  sub_1C2E751C4();
  v53 = v86;
  sub_1C2E75414();
  v54 = swift_allocObject();
  v54[2] = a1;
  v54[3] = v48;
  v54[4] = v49;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FBB8);
  sub_1C2C94F38(&qword_1EC05FBC0, &qword_1EC05FBB8);
  v55 = v89;
  sub_1C2E751C4();
  LOBYTE(v107) = v78 & 1;
  v80 = *(v91 + 16);
  v80(v97, v50, v96);
  v79 = *(v92 + 16);
  v56 = v87;
  v57 = v52;
  v58 = v88;
  v79(v87, v57, v88);
  v78 = *(v99 + 16);
  v59 = v90;
  v78(v90, v53, v93);
  v77 = *(v100 + 16);
  v77(v94, v55, v98);
  v60 = v107;
  v76 = v107;
  v61 = v81;
  v62 = v83;
  *v81 = v83;
  v61[1] = v44;
  *(v61 + 16) = v60;
  v61[3] = v95;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064758);
  v80(v61 + v63[12], v97, v96);
  v79(v61 + v63[16], v56, v58);
  v64 = v93;
  v78(v61 + v63[20], v59, v93);
  v65 = v61 + v63[24];
  v66 = v94;
  v67 = v98;
  v77(v65, v94, v98);
  sub_1C2C72330(v62, v82, v76);
  v68 = *(v100 + 8);
  v100 += 8;

  v68(v89, v67);
  v69 = *(v99 + 8);
  v99 += 8;
  v69(v86, v64);
  v70 = *(v92 + 8);
  v71 = v88;
  v70(v85, v88);
  v72 = *(v91 + 8);
  v73 = v96;
  v72(v84, v96);
  v68(v66, v98);
  v69(v90, v64);
  v70(v87, v71);
  v72(v97, v73);
  sub_1C2C72340(v83, v82, v107);
}

uint64_t sub_1C2E47728(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FBB8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064760);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16[-v7];
  swift_getKeyPath();
  v17[0] = a1;
  sub_1C2E48DB0(&unk_1EC05DA10, type metadata accessor for CallTranslationFooterViewModel);
  sub_1C2E71A64();

  v9 = OBJC_IVAR____TtC16CommunicationsUI30CallTranslationFooterViewModel__service;
  swift_beginAccess();
  sub_1C2C6E3A4(a1 + v9, v17);
  __swift_project_boxed_opaque_existential_1(v17, v17[3]);
  v10 = sub_1C2E72574();
  __swift_destroy_boxed_opaque_existential_1(v17);
  v17[0] = sub_1C2CA89D8();
  v17[1] = v11;
  sub_1C2C74960();
  if (v10)
  {
    *v8 = sub_1C2E748A4();
    *(v8 + 1) = v12;
    v8[16] = v13 & 1;
    *(v8 + 3) = v14;
    swift_storeEnumTagMultiPayload();
    sub_1C2C94F38(&qword_1EC05FBC0, &qword_1EC05FBB8);
    return sub_1C2E73F44();
  }

  else
  {
    sub_1C2E750F4();
    (*(v3 + 16))(v8, v5, v2);
    swift_storeEnumTagMultiPayload();
    sub_1C2C94F38(&qword_1EC05FBC0, &qword_1EC05FBB8);
    sub_1C2E73F44();
    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_1C2E47A7C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061690);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v16[-v3];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FBB8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16[-v7];
  swift_getKeyPath();
  v17[0] = a1;
  sub_1C2E48DB0(&unk_1EC05DA10, type metadata accessor for CallTranslationFooterViewModel);
  sub_1C2E71A64();

  v9 = OBJC_IVAR____TtC16CommunicationsUI30CallTranslationFooterViewModel__service;
  swift_beginAccess();
  sub_1C2C6E3A4(a1 + v9, v17);
  __swift_project_boxed_opaque_existential_1(v17, v17[3]);
  v10 = sub_1C2E72574();
  __swift_destroy_boxed_opaque_existential_1(v17);
  v17[0] = sub_1C2CA8E60();
  v17[1] = v11;
  sub_1C2C74960();
  if (v10)
  {
    sub_1C2E750F4();
    (*(v6 + 16))(v4, v8, v5);
    swift_storeEnumTagMultiPayload();
    sub_1C2C94F38(&qword_1EC05FBC0, &qword_1EC05FBB8);
    sub_1C2E73F44();
    return (*(v6 + 8))(v8, v5);
  }

  else
  {
    *v4 = sub_1C2E748A4();
    *(v4 + 1) = v13;
    v4[16] = v14 & 1;
    *(v4 + 3) = v15;
    swift_storeEnumTagMultiPayload();
    sub_1C2C94F38(&qword_1EC05FBC0, &qword_1EC05FBB8);
    return sub_1C2E73F44();
  }
}

uint64_t sub_1C2E47DD0(uint64_t a1)
{
  swift_getKeyPath();
  v4[0] = a1;
  sub_1C2E48DB0(&unk_1EC05DA10, type metadata accessor for CallTranslationFooterViewModel);
  sub_1C2E71A64();

  v2 = OBJC_IVAR____TtC16CommunicationsUI30CallTranslationFooterViewModel__service;
  swift_beginAccess();
  sub_1C2C6E3A4(a1 + v2, v4);
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_1C2E724D4();
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t sub_1C2E47EBC()
{
  v0 = sub_1C2E71934();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1C2E75C14();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v14 - v6;
  sub_1C2E75BB4();
  (*(v2 + 16))(v4, v7, v1);
  type metadata accessor for StringDummy();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [objc_opt_self() bundleForClass_];
  sub_1C2E718F4();
  v10 = sub_1C2E75C84();
  v12 = v11;
  (*(v2 + 8))(v7, v1);
  v14[1] = v10;
  v14[2] = v12;
  sub_1C2C74960();
  return sub_1C2E750F4();
}

uint64_t sub_1C2E480DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_1C2E73C24();
  *(a2 + 8) = 0x4008000000000000;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064730);
  sub_1C2E481F4(a1, a2 + *(v4 + 44));
  v5 = sub_1C2E744B4();
  sub_1C2E73034();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064710) + 36);
  *v14 = v5;
  *(v14 + 8) = v7;
  *(v14 + 16) = v9;
  *(v14 + 24) = v11;
  *(v14 + 32) = v13;
  *(v14 + 40) = 0;
  v15 = sub_1C2E74444();
  sub_1C2E73034();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0646F0);
  v25 = a2 + *(result + 36);
  *v25 = v15;
  *(v25 + 8) = v17;
  *(v25 + 16) = v19;
  *(v25 + 24) = v21;
  *(v25 + 32) = v23;
  *(v25 + 40) = 0;
  return result;
}

uint64_t sub_1C2E481F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a1;
  v43 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060938);
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2);
  v42 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v36 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DCA8);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v36 - v12);
  v39 = sub_1C2E75044();
  v14 = (v13 + *(v9 + 44));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DCB0);
  v16 = *(v15 + 28);
  v17 = *MEMORY[0x1E69816C8];
  v18 = sub_1C2E750B4();
  v19 = *(*(v18 - 8) + 104);
  v19(v14 + v16, v17, v18);
  *v14 = swift_getKeyPath();
  *v13 = v39;
  v44 = sub_1C2CA9488();
  v45 = v20;
  sub_1C2C74960();
  v21 = sub_1C2E748A4();
  v37 = v22;
  v38 = v21;
  LODWORD(v39) = v23;
  v40 = v24;
  v25 = sub_1C2E75064();
  LODWORD(v14) = sub_1C2E740F4();
  v26 = &v7[*(v3 + 44)];
  v19(v26 + *(v15 + 28), v17, v18);
  *v26 = swift_getKeyPath();
  *v7 = v25;
  *(v7 + 2) = v14;
  v27 = v41;
  sub_1C2C736A4(v13, v41, &qword_1EC05DCA8);
  v28 = v42;
  sub_1C2C736A4(v7, v42, &qword_1EC060938);
  v29 = v43;
  sub_1C2C736A4(v27, v43, &qword_1EC05DCA8);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064738);
  v31 = v29 + *(v30 + 48);
  v32 = v29;
  v34 = v37;
  v33 = v38;
  *v31 = v38;
  *(v31 + 8) = v34;
  LOBYTE(v29) = v39 & 1;
  *(v31 + 16) = v39 & 1;
  *(v31 + 24) = v40;
  sub_1C2C736A4(v28, v32 + *(v30 + 64), &qword_1EC060938);
  sub_1C2C72330(v33, v34, v29);

  sub_1C2C73644(v7, &qword_1EC060938);
  sub_1C2C73644(v13, &qword_1EC05DCA8);
  sub_1C2C73644(v28, &qword_1EC060938);
  sub_1C2C72340(v33, v34, v29);

  return sub_1C2C73644(v27, &qword_1EC05DCA8);
}

unint64_t sub_1C2E485B0()
{
  result = qword_1EC064620;
  if (!qword_1EC064620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC064610);
    sub_1C2E48E34(&qword_1EC064628, &qword_1EC064630, &unk_1C2E91FF0, sub_1C2E48660);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC064620);
  }

  return result;
}

unint64_t sub_1C2E48660()
{
  result = qword_1EC064638;
  if (!qword_1EC064638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC064640);
    sub_1C2E48718();
    sub_1C2C94F38(&qword_1EC05CB18, &qword_1EC05F548);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC064638);
  }

  return result;
}

unint64_t sub_1C2E48718()
{
  result = qword_1EC064648;
  if (!qword_1EC064648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC064650);
    sub_1C2E487D0();
    sub_1C2C94F38(&qword_1EDDCDA20, &qword_1EC05DCB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC064648);
  }

  return result;
}

unint64_t sub_1C2E487D0()
{
  result = qword_1EC064658;
  if (!qword_1EC064658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC064660);
    sub_1C2E48E34(&qword_1EC064668, &qword_1EC064670, &unk_1C2E92010, sub_1C2E488B4);
    sub_1C2C94F38(&qword_1EC064688, &qword_1EC064690);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC064658);
  }

  return result;
}

unint64_t sub_1C2E488B4()
{
  result = qword_1EC064678;
  if (!qword_1EC064678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC064680);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05FBC8);
    sub_1C2E73774();
    sub_1C2C94F38(&qword_1EC05FBD8, &qword_1EC05FBC8);
    sub_1C2E48DB0(&qword_1EC060860, MEMORY[0x1E697C248]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC064678);
  }

  return result;
}

unint64_t sub_1C2E48A00()
{
  result = qword_1EC0646A0;
  if (!qword_1EC0646A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0646A8);
    sub_1C2E48AB8();
    sub_1C2C94F38(&qword_1EC064688, &qword_1EC064690);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0646A0);
  }

  return result;
}

unint64_t sub_1C2E48AB8()
{
  result = qword_1EC0646B0;
  if (!qword_1EC0646B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0646B8);
    sub_1C2E48B70();
    sub_1C2C94F38(&qword_1EDDCDA20, &qword_1EC05DCB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0646B0);
  }

  return result;
}

unint64_t sub_1C2E48B70()
{
  result = qword_1EC0646C0;
  if (!qword_1EC0646C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0646C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0646D0);
    sub_1C2E73774();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0646D8);
    sub_1C2E734E4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0646E0);
    sub_1C2C94F38(&qword_1EC0646E8, &qword_1EC0646E0);
    swift_getOpaqueTypeConformance2();
    sub_1C2E48DB0(&qword_1EC05DFA0, MEMORY[0x1E697C150]);
    swift_getOpaqueTypeConformance2();
    sub_1C2E48DB0(&qword_1EC060860, MEMORY[0x1E697C248]);
    swift_getOpaqueTypeConformance2();
    sub_1C2C94F38(&qword_1EC05CB18, &qword_1EC05F548);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0646C0);
  }

  return result;
}

uint64_t sub_1C2E48DB0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C2E48E34(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_1C2E48EB8()
{
  result = qword_1EC064708;
  if (!qword_1EC064708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC064710);
    sub_1C2C94F38(&qword_1EC064718, &qword_1EC064720);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC064708);
  }

  return result;
}

unint64_t sub_1C2E48FA4()
{
  result = qword_1EC064750;
  if (!qword_1EC064750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC064748);
    sub_1C2C94F38(&qword_1EC05FBC0, &qword_1EC05FBB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC064750);
  }

  return result;
}

unint64_t sub_1C2E4909C()
{
  result = qword_1EC064768;
  if (!qword_1EC064768)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC064770);
    sub_1C2E49120();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC064768);
  }

  return result;
}

unint64_t sub_1C2E49120()
{
  result = qword_1EC064778;
  if (!qword_1EC064778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC064618);
    sub_1C2E485B0();
    sub_1C2E48E34(&qword_1EC064698, &qword_1EC064600, &unk_1C2E91F80, sub_1C2E48A00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC064778);
  }

  return result;
}

id sub_1C2E49208(char *a1, void (*a2)(char *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC063C60);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  v7 = *a1;
  v8 = _sSo8UIButtonC16CommunicationsUIE20systemApertureButtonAByFZ_0();
  v12 = v7;
  a2(&v12);
  v9 = sub_1C2E763A4();
  (*(*(v9 - 8) + 56))(v6, 0, 1, v9);
  sub_1C2E763D4();
  return v8;
}

id static UIButton.waitOnHoldDismissHoldDetectedView()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC063C60);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v8 - v1;
  v3 = _sSo8UIButtonC16CommunicationsUIE20systemApertureButtonAByFZ_0();
  sub_1C2E627A4();
  v4 = sub_1C2E763A4();
  (*(*(v4 - 8) + 56))(v2, 0, 1, v4);
  sub_1C2E763D4();
  v5 = v3;
  v6 = sub_1C2E75C24();
  [v5 setAccessibilityIdentifier_];

  return v5;
}

id static UIButton.waitOnHoldStartHolding()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC063C60);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v8 - v1;
  v3 = _sSo8UIButtonC16CommunicationsUIE20systemApertureButtonAByFZ_0();
  sub_1C2E623A4();
  v4 = sub_1C2E763A4();
  (*(*(v4 - 8) + 56))(v2, 0, 1, v4);
  sub_1C2E763D4();
  v5 = v3;
  v6 = sub_1C2E75C24();
  [v5 setAccessibilityIdentifier_];

  return v5;
}

id static UIButton.toggleAudioRoute()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC063C60);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  v3 = _sSo8UIButtonC16CommunicationsUIE20systemApertureButtonAByFZ_0();
  sub_1C2E61500(v2);
  v4 = sub_1C2E763A4();
  (*(*(v4 - 8) + 56))(v2, 0, 1, v4);
  sub_1C2E763D4();
  return v3;
}

id static UIButton.waitOnHoldEndCall()()
{
  v0 = sub_1C2E76344();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC063C60);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16 - v8;
  v10 = _sSo8UIButtonC16CommunicationsUIE20systemApertureButtonAByFZ_0();
  sub_1C2E619B4(v9);
  v11 = sub_1C2E763A4();
  v12 = *(v11 - 8);
  (*(v12 + 56))(v9, 0, 1, v11);
  sub_1C2E763D4();
  sub_1C2E763C4();
  if ((*(v12 + 48))(v6, 1, v11))
  {
    sub_1C2E177D4(v6, v9);
    sub_1C2E763D4();
    sub_1C2E16858(v6);
  }

  else
  {
    (*(v1 + 104))(v3, *MEMORY[0x1E69DC560], v0);
    sub_1C2E762A4();
    sub_1C2E763D4();
  }

  v13 = v10;
  v14 = sub_1C2E75C24();
  [v13 setAccessibilityIdentifier_];

  return v13;
}

id static UIButton.waitOnHoldPickUp()()
{
  v0 = sub_1C2E76344();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC063C60);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16 - v8;
  v10 = _sSo8UIButtonC16CommunicationsUIE20systemApertureButtonAByFZ_0();
  sub_1C2E61EA8(v9);
  v11 = sub_1C2E763A4();
  v12 = *(v11 - 8);
  (*(v12 + 56))(v9, 0, 1, v11);
  sub_1C2E763D4();
  sub_1C2E763C4();
  if ((*(v12 + 48))(v6, 1, v11))
  {
    sub_1C2E177D4(v6, v9);
    sub_1C2E763D4();
    sub_1C2E16858(v6);
  }

  else
  {
    (*(v1 + 104))(v3, *MEMORY[0x1E69DC560], v0);
    sub_1C2E762A4();
    sub_1C2E763D4();
  }

  v13 = v10;
  v14 = sub_1C2E75C24();
  [v13 setAccessibilityIdentifier_];

  return v13;
}

id _sSo8UIButtonC16CommunicationsUIE20systemApertureButtonAByFZ_0()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69D4598]) init];
  v6[4] = sub_1C2E49AC0;
  v6[5] = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1C2DFC634;
  v6[3] = &block_descriptor_27;
  v1 = _Block_copy(v6);
  v2 = v0;
  [v2 setConfigurationUpdateHandler_];
  _Block_release(v1);
  v3 = *MEMORY[0x1E69DDC50];
  v4 = v2;
  [v4 setMaximumContentSizeCategory_];
  [v4 setMinimumContentSizeCategory_];

  [v4 setNeedsUpdateConfiguration];
  return v4;
}

uint64_t block_copy_helper_27(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t MessageControlServiceProtocol.selections.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 8))();
  sub_1C2E72E04();

  return v3;
}

uint64_t sub_1C2E49C54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 16);
  v5 = *(a3 + a4 - 8);

  sub_1C2E49E84(v6, v4, v5);
}

uint64_t MessageControlServiceProtocol.selections.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C2E49E84(a1, a2, a3);
}

void (*MessageControlServiceProtocol.selections.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x30uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[3] = a3;
  v7[4] = v3;
  v7[2] = a2;
  v9 = *(a3 + 8);
  v7[5] = v9;
  v9(a2, a3);
  sub_1C2E72E04();

  v8[1] = *v8;
  return sub_1C2E49DA8;
}

void sub_1C2E49DA8(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 8);
  v5 = *(*a1 + 16);
  v4 = *(*a1 + 24);
  v6 = *(*a1 + 40);
  if (a2)
  {

    v6(v5, v4);
    *v2 = v3;
    sub_1C2E72DF4();
  }

  else
  {
    v6(*(*a1 + 16), v4);
    *v2 = v3;
    sub_1C2E72DF4();
  }

  free(v2);
}

uint64_t sub_1C2E49E84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 8))(a2, a3);
  sub_1C2E72DF4();
}

uint64_t Image.init(_:)(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return sub_1C2E750D4();
  }

  if (*(a1 + 16) == 1)
  {
    return sub_1C2E75064();
  }

  return sub_1C2E75034();
}

uint64_t SystemImage.init(systemName:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = 1;
  return result;
}

uint64_t sub_1C2E49F44(char a1)
{
  sub_1C2E76854();
  MEMORY[0x1C69272B0](qword_1C2E92428[a1]);
  return sub_1C2E76894();
}

uint64_t sub_1C2E49F98(void *a1, void *a2, char a3)
{
  sub_1C2E76854();
  if (a3)
  {
    if (a3 == 1)
    {
      sub_1C2C70B1C(a1, a2, 1u);
    }

    else
    {
      sub_1C2C70B1C(a1, a2, 2u);
      v6 = [a1 description];
      sub_1C2E75C64();

      sub_1C2C77608(a1, a2, 2u);
    }
  }

  else
  {
    sub_1C2C70B1C(a1, a2, 0);
  }

  sub_1C2E75CC4();

  return sub_1C2E76894();
}

uint64_t sub_1C2E4A080(uint64_t a1, char a2)
{
  sub_1C2E76854();
  MEMORY[0x1C69272B0](qword_1C2E92428[a2]);
  return sub_1C2E76894();
}

uint64_t sub_1C2E4A0D0(uint64_t a1, void *a2, void *a3, char a4)
{
  sub_1C2E76854();
  if (a4)
  {
    if (a4 == 1)
    {
      sub_1C2C70B1C(a2, a3, 1u);
    }

    else
    {
      sub_1C2C70B1C(a2, a3, 2u);
      v7 = [a2 description];
      sub_1C2E75C64();

      sub_1C2C77608(a2, a3, 2u);
    }
  }

  else
  {
    sub_1C2C70B1C(a2, a3, 0);
  }

  sub_1C2E75CC4();

  return sub_1C2E76894();
}

id SystemImage.cgImage.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (!*(v0 + 16))
  {

    v6 = sub_1C2E75C24();
    sub_1C2C77608(v1, v2, 0);
    v4 = [objc_opt_self() imageNamed_];

    v5 = [v4 CGImage];
    goto LABEL_5;
  }

  if (*(v0 + 16) == 1)
  {

    v3 = sub_1C2E75C24();
    sub_1C2C77608(v1, v2, 1u);
    v4 = [objc_opt_self() systemImageNamed_];

    v5 = [v4 CGImage];
LABEL_5:
    v7 = v5;

    return v7;
  }

  return [*v0 CGImage];
}

void *SystemImage.rawValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (*(v0 + 16) && *(v0 + 16) != 1)
  {
    v3 = [v1 description];
    v4 = sub_1C2E75C64();

    sub_1C2C77608(v1, v2, 2u);
    return v4;
  }

  else
  {
  }

  return v1;
}

void sub_1C2E4A384(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = *(v1 + 8);
  if (*(v1 + 16))
  {
    if (*(v1 + 16) != 1)
    {
      v10 = v4;
      v11 = sub_1C2E70444();
      sub_1C2C77608(v4, v3, 2u);
      if (v11)
      {
        *a1 = v11;
        *(a1 + 8) = 0;
        *(a1 + 16) = 2;
        return;
      }

      goto LABEL_10;
    }

    v5 = sub_1C2E75C24();
    sub_1C2C77608(v4, v3, 1u);
    v6 = [objc_opt_self() systemImageNamed_];
  }

  else
  {

    v5 = sub_1C2E75C24();
    sub_1C2C77608(v4, v3, 0);
    v6 = [objc_opt_self() imageNamed_];
  }

  v7 = v6;

  if (!v7 || (v8 = sub_1C2E70444(), v7, !v8))
  {
LABEL_10:
    *a1 = 0;
    *(a1 + 8) = 0;
    v9 = -1;
    goto LABEL_11;
  }

  *a1 = v8;
  *(a1 + 8) = 0;
  v9 = 2;
LABEL_11:
  *(a1 + 16) = v9;
}

uint64_t SystemImage.init(uiImage:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 2;
  return result;
}

uint64_t SystemImage.init(localAsset:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  return result;
}

double static SystemImage.iPhone.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 0x656E6F687069;
  *a1 = xmmword_1C2E7A520;
  *(a1 + 16) = 1;
  return result;
}

void static SystemImage.speaker.getter(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000013;
  *(a1 + 8) = 0x80000001C2E949D0;
  *(a1 + 16) = 1;
}

void static SystemImage.beatsHeadphones.getter(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000010;
  *(a1 + 8) = 0x80000001C2E9BB50;
  *(a1 + 16) = 1;
}

double static SystemImage.airPodsPro.getter@<D0>(uint64_t a1@<X8>)
{
  result = 4.81710977e233;
  *a1 = xmmword_1C2E921D0;
  *(a1 + 16) = 1;
  return result;
}

double static SystemImage.mute.getter@<D0>(uint64_t a1@<X8>)
{
  result = 6.09123215e247;
  *a1 = xmmword_1C2E91710;
  *(a1 + 16) = 1;
  return result;
}

double static SystemImage.laptop.getter@<D0>(uint64_t a1@<X8>)
{
  result = 3.68404672e228;
  *a1 = xmmword_1C2E921E0;
  *(a1 + 16) = 1;
  return result;
}

double static SystemImage.faceTime.getter@<D0>(uint64_t a1@<X8>)
{
  result = 5.30586074e199;
  *a1 = xmmword_1C2E921F0;
  *(a1 + 16) = 1;
  return result;
}

void static SystemImage.faceTimeQuestionMark.getter(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000017;
  *(a1 + 8) = 0x80000001C2E95FD0;
  *(a1 + 16) = 1;
}

double static SystemImage.phoneEnd.getter@<D0>(uint64_t a1@<X8>)
{
  result = 3.82467441e228;
  *a1 = xmmword_1C2E8AB00;
  *(a1 + 16) = 1;
  return result;
}

double static SystemImage.phone.getter@<D0>(uint64_t a1@<X8>)
{
  result = 5.30582437e199;
  *a1 = xmmword_1C2E8C590;
  *(a1 + 16) = 1;
  return result;
}

void static SystemImage.personCropCircleBadgePlus.getter(uint64_t a1@<X8>)
{
  *a1 = 0xD00000000000001DLL;
  *(a1 + 8) = 0x80000001C2E95D80;
  *(a1 + 16) = 1;
}

void static SystemImage.keypad.getter(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000014;
  *(a1 + 8) = 0x80000001C2E98B30;
  *(a1 + 16) = 1;
}

double static SystemImage.info.getter@<D0>(uint64_t a1@<X8>)
{
  result = 1.35426985e243;
  *a1 = xmmword_1C2E83900;
  *(a1 + 16) = 1;
  return result;
}

double static SystemImage.voicemail.getter@<D0>(uint64_t a1@<X8>)
{
  result = 7.34294124e223;
  *a1 = xmmword_1C2E88D60;
  *(a1 + 16) = 1;
  return result;
}

double static SystemImage.message.getter@<D0>(uint64_t a1@<X8>)
{
  result = 3.44304535e-85;
  *a1 = xmmword_1C2E814F0;
  *(a1 + 16) = 1;
  return result;
}

double static SystemImage.walk.getter@<D0>(uint64_t a1@<X8>)
{
  result = 1.22514246e266;
  *a1 = xmmword_1C2E92200;
  *(a1 + 16) = 1;
  return result;
}

double static SystemImage.clock.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 0x6B636F6C63;
  *a1 = xmmword_1C2E8DEF0;
  *(a1 + 16) = 1;
  return result;
}

double static SystemImage.personFill.getter@<D0>(uint64_t a1@<X8>)
{
  result = 1.61632664e184;
  *a1 = xmmword_1C2E92210;
  *(a1 + 16) = 1;
  return result;
}

double static SystemImage.person2Fill.getter@<D0>(uint64_t a1@<X8>)
{
  result = 5.6438146e-67;
  *a1 = xmmword_1C2E8DF00;
  *(a1 + 16) = 1;
  return result;
}

void static SystemImage.centerStageEffect.getter(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000016;
  *(a1 + 8) = 0x80000001C2E962C0;
  *(a1 + 16) = 1;
}

double static SystemImage.portraitBlurEffect.getter@<D0>(uint64_t a1@<X8>)
{
  result = 2.50443923e262;
  *a1 = xmmword_1C2E92220;
  *(a1 + 16) = 1;
  return result;
}

void static SystemImage.studioLightEffect.getter(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000010;
  *(a1 + 8) = 0x80000001C2E962A0;
  *(a1 + 16) = 1;
}

double static SystemImage.memojiEffect.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 0x696A6F6D656DLL;
  *a1 = xmmword_1C2E92230;
  *(a1 + 16) = 1;
  return result;
}

void static SystemImage.gesturesEffect.getter(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000013;
  *(a1 + 8) = 0x80000001C2E96280;
  *(a1 + 16) = 1;
}

void static SystemImage.minimize.getter(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000028;
  *(a1 + 8) = 0x80000001C2E9BB70;
  *(a1 + 16) = 1;
}

double static SystemImage.cameraEffectsBack.getter@<D0>(uint64_t a1@<X8>)
{
  result = 4.89586459e-85;
  *a1 = xmmword_1C2E808F0;
  *(a1 + 16) = 1;
  return result;
}

void static SystemImage.backgroundReplacement.getter(uint64_t a1@<X8>)
{
  *a1 = 0xD00000000000001CLL;
  *(a1 + 8) = 0x80000001C2E96260;
  *(a1 + 16) = 1;
}

void *sub_1C2E4A80C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  *(a2 + 8) = v2;
  *(a2 + 16) = 1;
  return result;
}

void sub_1C2E4A820(void *a1@<X8>)
{
  v4 = *v1;
  v3 = *(v1 + 8);
  if (*(v1 + 16) && *(v1 + 16) != 1)
  {
    v5 = [v4 description];
    v6 = sub_1C2E75C64();
    v8 = v7;

    sub_1C2C77608(v4, v3, 2u);
    v4 = v6;
    v3 = v8;
  }

  else
  {
  }

  *a1 = v4;
  a1[1] = v3;
}

unint64_t sub_1C2E4A8BC()
{
  result = qword_1EC064780;
  if (!qword_1EC064780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC064780);
  }

  return result;
}

uint64_t sub_1C2E4A91C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (*(v0 + 16) && *(v0 + 16) != 1)
  {
    v3 = [v1 description];
    sub_1C2E75C64();

    sub_1C2C77608(v1, v2, 2u);
  }

  else
  {
  }

  sub_1C2E75CC4();
}

id sub_1C2E4AA1C@<X0>(void *a1@<X1>, void *a2@<X8>)
{
  v4 = sub_1C2E73534();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v5 + 104);
  v9(v8, *MEMORY[0x1E697E668], v4, v6);
  v10 = a1;
  sub_1C2E732D4();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = *(v5 + 8);
  v19(v8, v4);
  [v10 setFrame_];
  (v9)(v8, *MEMORY[0x1E697E658], v4);
  sub_1C2E732D4();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v19(v8, v4);
  result = [v10 setBounds_];
  *a2 = v10;
  return result;
}

uint64_t sub_1C2E4ABF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C2E4D6F0();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1C2E4AC58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C2E4D6F0();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1C2E4ACBC()
{
  sub_1C2E4D6F0();
  sub_1C2E73EE4();
  __break(1u);
}

id sub_1C2E4ACE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v12 = *v2;
  v5 = sub_1C2E75744();
  v7 = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = v12;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0647D8);
  (*(*(v9 - 8) + 16))(a2, a1, v9);
  v10 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0647E0) + 36));
  *v10 = sub_1C2E4D4B8;
  v10[1] = v8;
  v10[2] = v5;
  v10[3] = v7;

  return v12;
}

uint64_t sub_1C2E4ADE4()
{
  type metadata accessor for StringDummy();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1C2E71684();

  return v2;
}

uint64_t RequestsCellViewModel.JunkType.hashValue.getter()
{
  v1 = *v0;
  sub_1C2E76854();
  MEMORY[0x1C6927290](v1);
  return sub_1C2E76894();
}

uint64_t RequestsCellViewModel.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t RequestsCellViewModel.subtitle.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t RequestsCellViewModel.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16CommunicationsUI21RequestsCellViewModel_date;
  v4 = sub_1C2E71844();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RequestsCellViewModel.wantsButtons.getter()
{
  swift_getKeyPath();
  v3 = v0;
  sub_1C2E4B180();
  sub_1C2E71A64();

  v1 = OBJC_IVAR____TtC16CommunicationsUI21RequestsCellViewModel__wantsButtons;
  swift_beginAccess();
  return *(v3 + v1);
}

uint64_t sub_1C2E4B0C4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2E4B180();
  sub_1C2E71A64();

  v4 = OBJC_IVAR____TtC16CommunicationsUI21RequestsCellViewModel__wantsButtons;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

unint64_t sub_1C2E4B180()
{
  result = qword_1EC064790;
  if (!qword_1EC064790)
  {
    type metadata accessor for RequestsCellViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC064790);
  }

  return result;
}

uint64_t type metadata accessor for RequestsCellViewModel()
{
  result = qword_1EC0647B8;
  if (!qword_1EC0647B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t RequestsCellViewModel.wantsButtons.setter(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR____TtC16CommunicationsUI21RequestsCellViewModel__wantsButtons;
  result = swift_beginAccess();
  if (*(v1 + v3) == v2)
  {
    *(v1 + v3) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2E4B180();
    sub_1C2E71A54();
  }

  return result;
}

uint64_t sub_1C2E4B320()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC16CommunicationsUI21RequestsCellViewModel__wantsButtons;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

void (*RequestsCellViewModel.wantsButtons.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC16CommunicationsUI21RequestsCellViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1C2E4B180();
  sub_1C2E71A64();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C2E71A84();

  swift_beginAccess();
  return sub_1C2E4B494;
}

void *RequestsCellViewModel.sourceView.getter()
{
  swift_getKeyPath();
  v5 = v0;
  sub_1C2E4B180();
  sub_1C2E71A64();

  v1 = OBJC_IVAR____TtC16CommunicationsUI21RequestsCellViewModel__sourceView;
  swift_beginAccess();
  v2 = *(v5 + v1);
  v3 = v2;
  return v2;
}

id sub_1C2E4B534@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2E4B180();
  sub_1C2E71A64();

  v4 = OBJC_IVAR____TtC16CommunicationsUI21RequestsCellViewModel__sourceView;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

void sub_1C2E4B5D8(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  RequestsCellViewModel.sourceView.setter(v1);
}

void RequestsCellViewModel.sourceView.setter(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC16CommunicationsUI21RequestsCellViewModel__sourceView;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2E4B180();
    sub_1C2E71A54();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1C2C6E1B4(0, &qword_1EC062710);
  v6 = v5;
  v7 = a1;
  v8 = sub_1C2E76234();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

void sub_1C2E4B764(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC16CommunicationsUI21RequestsCellViewModel__sourceView;
  swift_beginAccess();
  v5 = *(a1 + v4);
  *(a1 + v4) = a2;
  v6 = a2;
}

void (*RequestsCellViewModel.sourceView.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC16CommunicationsUI21RequestsCellViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1C2E4B180();
  sub_1C2E71A64();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C2E71A84();

  swift_beginAccess();
  return sub_1C2E4B908;
}

uint64_t sub_1C2E4B92C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *a1;
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  v7 = *(v3 + 48);
  *a2 = *v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = *(v3 + 32);
  *(a2 + 48) = v7;
  v8 = v7;
}

uint64_t RequestsCellViewModel.__allocating_init(title:subtitle:date:type:acceptAction:deleteAction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v66 = a7;
  v67 = a8;
  v64 = a5;
  v62 = a9;
  v68 = a10;
  v16 = sub_1C2E763A4();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  LOBYTE(a6) = *a6;
  *(v19 + OBJC_IVAR____TtC16CommunicationsUI21RequestsCellViewModel__wantsButtons) = 1;
  *(v19 + OBJC_IVAR____TtC16CommunicationsUI21RequestsCellViewModel__sourceView) = 0;
  v20 = OBJC_IVAR____TtC16CommunicationsUI21RequestsCellViewModel_contact;
  *(v19 + v20) = [objc_allocWithZone(MEMORY[0x1E695CF18]) init];
  sub_1C2E71A94();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  *(v19 + 32) = a3;
  *(v19 + 40) = a4;
  v21 = OBJC_IVAR____TtC16CommunicationsUI21RequestsCellViewModel_date;
  v63 = sub_1C2E71844();
  v65 = *(v63 - 8);
  (*(v65 + 16))(v19 + v21, a5, v63);
  *(v19 + 48) = a6;
  type metadata accessor for StringDummy();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v61 = ObjCClassFromMetadata;
  v60 = objc_opt_self();
  v23 = [v60 bundleForClass_];
  v59 = &unk_1C2E92480;
  v24 = sub_1C2E71684();
  v26 = v25;
  v54 = v25;

  v27 = sub_1C2E74EF4();
  v58 = objc_opt_self();
  v28 = [v58 tertiarySystemBackgroundColor];
  v29 = sub_1C2E74E94();
  v57 = sub_1C2C6E1B4(0, &qword_1EC062BE0);
  v70 = v24;
  v71 = v26;
  v72 = v27;
  v73 = v29;
  v69 = xmmword_1C2E92440;
  v74 = xmmword_1C2E92440;
  v75 = 0;
  v30 = v68;

  v56 = v18;
  sub_1C2DDA268();
  v31 = sub_1C2E763B4();
  v32 = v31;
  [v32 setTranslatesAutoresizingMaskIntoConstraints_];

  v55 = sub_1C2C6E1B4(0, &qword_1EC05CA60);
  v33 = swift_allocObject();
  v33[2] = v62;
  v33[3] = v30;
  v33[4] = v32;

  v34 = v32;
  v35 = sub_1C2E76264();
  [v34 addAction:v35 forControlEvents:64];

  v36 = v19 + OBJC_IVAR____TtC16CommunicationsUI21RequestsCellViewModel_deleteModel;
  v37 = v54;
  *v36 = v24;
  *(v36 + 8) = v37;
  *(v36 + 16) = v27;
  *(v36 + 24) = v29;
  *(v36 + 32) = v69;
  *(v36 + 48) = v31;
  v38 = [v60 bundleForClass_];
  v39 = sub_1C2E71684();
  v41 = v40;

  v42 = sub_1C2E74F54();
  v43 = [v58 tertiarySystemBackgroundColor];
  v44 = sub_1C2E74E94();
  v70 = v39;
  v71 = v41;
  v72 = v42;
  v73 = v44;
  v74 = v69;
  v75 = 0;
  sub_1C2DDA268();
  v45 = sub_1C2E763B4();
  v46 = v45;
  [v46 setTranslatesAutoresizingMaskIntoConstraints_];

  v47 = swift_allocObject();
  v48 = v67;
  v47[2] = v66;
  v47[3] = v48;
  v47[4] = v46;
  v49 = v46;

  v50 = sub_1C2E76264();
  [v49 addAction:v50 forControlEvents:64];

  (*(v65 + 8))(v64, v63);

  v51 = v19 + OBJC_IVAR____TtC16CommunicationsUI21RequestsCellViewModel_acceptModel;
  *v51 = v39;
  *(v51 + 8) = v41;
  *(v51 + 16) = v42;
  *(v51 + 24) = v44;
  *(v51 + 32) = v69;
  *(v51 + 48) = v45;

  return v19;
}

uint64_t RequestsCellViewModel.init(title:subtitle:date:type:acceptAction:deleteAction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v10 = sub_1C2E4CC78(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);

  return v10;
}

uint64_t RequestsCellViewModel.deinit()
{

  v1 = OBJC_IVAR____TtC16CommunicationsUI21RequestsCellViewModel_date;
  v2 = sub_1C2E71844();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC16CommunicationsUI21RequestsCellViewModel_deleteModel + 48);

  v4 = *(v0 + OBJC_IVAR____TtC16CommunicationsUI21RequestsCellViewModel_acceptModel + 48);

  v5 = OBJC_IVAR____TtC16CommunicationsUI21RequestsCellViewModel___observationRegistrar;
  v6 = sub_1C2E71AA4();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t RequestsCellViewModel.__deallocating_deinit()
{
  RequestsCellViewModel.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t RequestsCellView.init(viewModel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = swift_getKeyPath();
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  type metadata accessor for CGSize(0);
  sub_1C2E75174();
  *(a2 + 48) = v5;
  *(a2 + 64) = v6;
  [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  sub_1C2C6E1B4(0, &qword_1EC062710);
  result = sub_1C2E75174();
  *(a2 + 72) = v5;
  *a2 = a1;
  return result;
}

uint64_t RequestsCellView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 48);
  v8[2] = *(v1 + 32);
  v8[3] = v3;
  v8[4] = *(v1 + 64);
  v9 = *(v1 + 80);
  v4 = *(v1 + 16);
  v8[0] = *v1;
  v8[1] = v4;
  v5 = *&v8[0];

  *a1 = sub_1C2E73DD4();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0647A8);
  sub_1C2E4C2C0(v5, v8, a1 + *(v6 + 44));
}

uint64_t sub_1C2E4C2C0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v74 = a3;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0647E8) - 8;
  MEMORY[0x1EEE9AC00](v72);
  v73 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v63 - v7;
  v80 = &type metadata for RequestsCellViewState;
  v81 = &off_1F42A3E10;
  *&v79 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0647F0);
  v10 = &v8[v9[31]];
  *v10 = swift_getKeyPath();
  *(v10 + 1) = 0;
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  v10[32] = 0;
  v11 = v9[32];
  *&v8[v11] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DA58);
  swift_storeEnumTagMultiPayload();
  sub_1C2C6E3A4(&v79, v8);
  v12 = v9[26];

  v71 = a2;
  sub_1C2E4C85C(a2, &v8[v12]);
  v13 = &v8[v9[27]];
  v75 = v8;
  *v13 = xmmword_1C2E7F6B0;
  v14 = MEMORY[0x1E69E7CC0];
  v13[16] = 0;
  *(v13 + 3) = v14;
  v15 = *(a1 + 32);
  v16 = *(a1 + 40);
  v77 = v15;
  v78 = v16;
  sub_1C2C74960();

  v17 = sub_1C2E748A4();
  v67 = v18;
  v68 = v17;
  v66 = v19;
  v69 = *a2;
  v20 = v69;
  v70 = &v8[v9[29]];
  sub_1C2C72330(v17, v18, v19 & 1);

  sub_1C2E75044();
  v21 = sub_1C2E748B4();
  v23 = v22;
  v25 = v24;
  v76 = *(v20 + 48);
  v77 = sub_1C2E4ADE4();
  v78 = v26;
  v27 = sub_1C2E747B4();
  v29 = v28;
  v31 = v30;
  sub_1C2C72340(v21, v23, v25 & 1);

  LOBYTE(v16) = v66;
  v32 = v67;
  v33 = v68;
  v65 = sub_1C2E747C4();
  v64 = v34;
  LOBYTE(a2) = v35;
  v37 = v36;
  sub_1C2C72340(v27, v29, v31 & 1);

  sub_1C2C72340(v33, v32, v16 & 1);

  sub_1C2C72340(v33, v32, v16 & 1);

  v38 = v70;
  v39 = v64;
  *v70 = v65;
  v38[1] = v39;
  v38[2] = a2 & 1;
  v38[3] = v37;
  __swift_destroy_boxed_opaque_existential_1(&v79);
  v79 = *(v71 + 9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0647F8);
  sub_1C2E75184();
  *&v75[*(v72 + 44)] = v77;
  swift_getKeyPath();
  v40 = v69;
  *&v79 = v69;
  sub_1C2E4B180();
  sub_1C2E71A64();

  v41 = OBJC_IVAR____TtC16CommunicationsUI21RequestsCellViewModel__wantsButtons;
  swift_beginAccess();
  v42 = 0;
  if (*(v40 + v41) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064808);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_1C2E7A110;
    v44 = v40;
    v45 = v40 + OBJC_IVAR____TtC16CommunicationsUI21RequestsCellViewModel_deleteModel;
    v46 = *(v40 + OBJC_IVAR____TtC16CommunicationsUI21RequestsCellViewModel_deleteModel);
    v47 = *(v40 + OBJC_IVAR____TtC16CommunicationsUI21RequestsCellViewModel_deleteModel + 8);
    v48 = *(v45 + 16);
    v49 = *(v45 + 24);
    v50 = *(v45 + 48);
    v51 = *(v45 + 32);
    *(v43 + 32) = v46;
    *(v43 + 40) = v47;
    *(v43 + 48) = v48;
    *(v43 + 56) = v49;
    *(v43 + 64) = v51;
    *(v43 + 80) = v50;
    v52 = *(v44 + OBJC_IVAR____TtC16CommunicationsUI21RequestsCellViewModel_acceptModel + 8);
    v53 = *(v44 + OBJC_IVAR____TtC16CommunicationsUI21RequestsCellViewModel_acceptModel + 16);
    v54 = *(v44 + OBJC_IVAR____TtC16CommunicationsUI21RequestsCellViewModel_acceptModel + 24);
    v55 = *(v44 + OBJC_IVAR____TtC16CommunicationsUI21RequestsCellViewModel_acceptModel + 48);
    v56 = *(v44 + OBJC_IVAR____TtC16CommunicationsUI21RequestsCellViewModel_acceptModel + 32);
    *(v43 + 88) = *(v44 + OBJC_IVAR____TtC16CommunicationsUI21RequestsCellViewModel_acceptModel);
    *(v43 + 96) = v52;
    *(v43 + 104) = v53;
    *(v43 + 112) = v54;
    *(v43 + 120) = v56;
    *(v43 + 136) = v55;
    type metadata accessor for TextButtonStackViewModel();
    v42 = swift_allocObject();
    *(v42 + 16) = v43;
    v57 = v55;

    v58 = v50;
  }

  v59 = v75;
  v60 = v73;
  sub_1C2C736A4(v75, v73, &qword_1EC0647E8);
  v61 = v74;
  sub_1C2C736A4(v60, v74, &qword_1EC0647E8);
  *(v61 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064800) + 48)) = v42;

  sub_1C2C73644(v59, &qword_1EC0647E8);

  return sub_1C2C73644(v60, &qword_1EC0647E8);
}

uint64_t sub_1C2E4C85C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = sub_1C2E73BA4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v29[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v7 = type metadata accessor for DateLabel();
  v8 = (v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064810);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v29[-v12 - 8];
  v14 = *a1;
  v15 = OBJC_IVAR____TtC16CommunicationsUI21RequestsCellViewModel_date;
  v16 = sub_1C2E71844();
  (*(*(v16 - 8) + 16))(v10, v14 + v15, v16);
  v17 = &v10[v8[7]];
  *v17 = swift_getKeyPath();
  v17[8] = 0;
  v18 = v8[8];
  *&v10[v18] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F278);
  swift_storeEnumTagMultiPayload();
  v19 = &v10[v8[9]];
  *v19 = swift_getKeyPath();
  v19[8] = 0;
  v20 = *(a1 + 1);
  v34 = *(a1 + 40);
  v21 = *(a1 + 3);
  v32 = v20;
  v33 = v21;
  if (v34 == 1)
  {
    v22 = v33;
    v30 = __PAIR128__(*(&v32 + 1), v20);
    v31 = v33;
    sub_1C2C736A4(&v32, v29, &qword_1EC05F448);
  }

  else
  {
    sub_1C2C736A4(&v32, v29, &qword_1EC05F448);
    sub_1C2E75FD4();
    v23 = sub_1C2E74404();
    sub_1C2E72B14();

    sub_1C2E73B94();
    swift_getAtKeyPath();
    sub_1C2C73644(&v32, &qword_1EC05F448);
    (*(v4 + 8))(v6, v3);
    v22 = v31;
  }

  KeyPath = swift_getKeyPath();
  sub_1C2E4D4C0(v10, v13);
  v25 = &v13[*(v11 + 36)];
  *v25 = KeyPath;
  v25[1] = v22;
  LODWORD(KeyPath) = sub_1C2E740F4();
  v26 = v28;
  sub_1C2E4D524(v13, v28);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064818);
  *(v26 + *(result + 36)) = KeyPath;
  return result;
}

uint64_t sub_1C2E4CBD8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 48);
  v8[2] = *(v1 + 32);
  v8[3] = v3;
  v8[4] = *(v1 + 64);
  v9 = *(v1 + 80);
  v4 = *(v1 + 16);
  v8[0] = *v1;
  v8[1] = v4;
  v5 = *&v8[0];

  *a1 = sub_1C2E73DD4();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0647A8);
  sub_1C2E4C2C0(v5, v8, a1 + *(v6 + 44));
}

uint64_t sub_1C2E4CC78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  v18 = sub_1C2E763A4();
  MEMORY[0x1EEE9AC00](v18 - 8);
  LOBYTE(a6) = *a6;
  *(v11 + OBJC_IVAR____TtC16CommunicationsUI21RequestsCellViewModel__wantsButtons) = 1;
  *(v11 + OBJC_IVAR____TtC16CommunicationsUI21RequestsCellViewModel__sourceView) = 0;
  v19 = OBJC_IVAR____TtC16CommunicationsUI21RequestsCellViewModel_contact;
  *(v11 + v19) = [objc_allocWithZone(MEMORY[0x1E695CF18]) init];
  sub_1C2E71A94();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *(v11 + 32) = a3;
  *(v11 + 40) = a4;
  v20 = OBJC_IVAR____TtC16CommunicationsUI21RequestsCellViewModel_date;
  v50 = sub_1C2E71844();
  v52 = *(v50 - 8);
  (*(v52 + 16))(v11 + v20, a5, v50);
  *(v11 + 48) = a6;
  type metadata accessor for StringDummy();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v48 = objc_opt_self();
  v21 = [v48 bundleForClass_];
  v46 = sub_1C2E71684();
  v45 = v22;

  v23 = sub_1C2E74EF4();
  v47 = objc_opt_self();
  v24 = [v47 tertiarySystemBackgroundColor];
  v25 = sub_1C2E74E94();
  sub_1C2C6E1B4(0, &qword_1EC062BE0);

  sub_1C2DDA268();
  v26 = sub_1C2E763B4();
  v27 = v26;
  [v27 setTranslatesAutoresizingMaskIntoConstraints_];

  sub_1C2C6E1B4(0, &qword_1EC05CA60);
  v28 = swift_allocObject();
  v28[2] = a9;
  v28[3] = a10;
  v28[4] = v27;

  v29 = v27;
  v30 = sub_1C2E76264();
  [v29 addAction:v30 forControlEvents:64];

  v31 = v11 + OBJC_IVAR____TtC16CommunicationsUI21RequestsCellViewModel_deleteModel;
  *v31 = v46;
  *(v31 + 8) = v45;
  *(v31 + 16) = v23;
  *(v31 + 24) = v25;
  *(v31 + 32) = xmmword_1C2E92440;
  *(v31 + 48) = v26;
  v32 = [v48 bundleForClass_];
  v33 = sub_1C2E71684();
  v35 = v34;

  v36 = sub_1C2E74F54();
  v37 = [v47 tertiarySystemBackgroundColor];
  v55 = sub_1C2E74E94();
  sub_1C2DDA268();
  v38 = sub_1C2E763B4();
  v39 = v38;
  [v39 setTranslatesAutoresizingMaskIntoConstraints_];

  v40 = swift_allocObject();
  v40[2] = a7;
  v40[3] = a8;
  v40[4] = v39;
  v41 = v39;

  v42 = sub_1C2E76264();
  [v41 addAction:v42 forControlEvents:64];

  (*(v52 + 8))(a5, v50);
  v43 = v11 + OBJC_IVAR____TtC16CommunicationsUI21RequestsCellViewModel_acceptModel;
  *v43 = v33;
  *(v43 + 8) = v35;
  *(v43 + 16) = v36;
  *(v43 + 24) = v55;
  *(v43 + 32) = xmmword_1C2E92440;
  *(v43 + 48) = v38;
  return v11;
}

unint64_t sub_1C2E4D220()
{
  result = qword_1EC0647B0;
  if (!qword_1EC0647B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0647B0);
  }

  return result;
}

uint64_t sub_1C2E4D298()
{
  result = sub_1C2E71844();
  if (v1 <= 0x3F)
  {
    result = sub_1C2E71AA4();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1C2E4D3E0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_1C2E4D428(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C2E4D4C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DateLabel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C2E4D524(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064810);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C2E4D5B4()
{
  result = qword_1EC064820;
  if (!qword_1EC064820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0647E0);
    sub_1C2C94F38(&qword_1EC064828, &qword_1EC0647D8);
    sub_1C2C94F38(&qword_1EC064830, &qword_1EC064838);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC064820);
  }

  return result;
}

unint64_t sub_1C2E4D69C()
{
  result = qword_1EC064840;
  if (!qword_1EC064840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC064840);
  }

  return result;
}

unint64_t sub_1C2E4D6F0()
{
  result = qword_1EC064848;
  if (!qword_1EC064848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC064848);
  }

  return result;
}

Swift::Void __swiftcall SuggestionsTextField.showKeyboard()()
{
  v0 = sub_1C2E4EA6C();
  [v0 becomeFirstResponder];
}

Swift::Void __swiftcall SuggestionsTextField.hideKeyboard()()
{
  v0 = sub_1C2E4EA6C();
  [v0 resignFirstResponder];
}

void SuggestionsTextField.updatePadding(_:)(uint64_t a1, char a2)
{
  v3 = v2 + OBJC_IVAR____TtC16CommunicationsUI20SuggestionsTextField_overrideClosePadding;
  v4 = *(v2 + OBJC_IVAR____TtC16CommunicationsUI20SuggestionsTextField_overrideClosePadding);
  v5 = *(v2 + OBJC_IVAR____TtC16CommunicationsUI20SuggestionsTextField_overrideClosePadding + 8);
  *v3 = *&a1;
  *(v3 + 8) = a2 & 1;
  if (v5)
  {
    if (a2)
    {
      return;
    }
  }

  else if ((a2 & 1) == 0 && v4 == *&a1)
  {
    return;
  }

  v6 = sub_1C2E4EEFC(&OBJC_IVAR____TtC16CommunicationsUI20SuggestionsTextField____lazy_storage___suggestionsView, sub_1C2E4F914);
  v7 = OBJC_IVAR____TtC16CommunicationsUI15SuggestionsView_isExpanded;
  swift_beginAccess();
  LOBYTE(v7) = v6[v7];

  v8 = 16.0;
  if ((v7 & 1) == 0)
  {
    if (*(v3 + 8) == 1)
    {
      v8 = 38.0;
    }

    else
    {
      v8 = *v3;
    }
  }

  v9 = sub_1C2E4FB6C();
  [v9 setConstant_];

  v10 = sub_1C2E4FC74();
  [v10 setConstant_];
}

uint64_t sub_1C2E4D980(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t, uint64_t))
{
  v6 = (v4 + *a3);
  v8 = *v6;
  v7 = v6[1];
  *v6 = a1;
  v6[1] = a2;
  a4(v8, v7);
}

Swift::Void __swiftcall SuggestionsTextField.setSuggestions(_:)(Swift::OpaquePointer a1)
{
  v2 = sub_1C2E4EEFC(&OBJC_IVAR____TtC16CommunicationsUI20SuggestionsTextField____lazy_storage___suggestionsView, sub_1C2E4F914);
  v3 = [v2 arrangedSubviews];
  sub_1C2C6E1B4(0, &qword_1EC062710);
  v4 = sub_1C2E75D74();

  if (v4 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1C2E764E4())
  {
    v6 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1C6927010](v6, v4);
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      [v7 removeFromSuperview];

      ++v6;
      if (v9 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:

  v30 = MEMORY[0x1E69E7CC0];
  v10 = *(a1._rawValue + 2);
  v11 = v2;
  if (v10)
  {
    v12 = (a1._rawValue + 40);
    do
    {
      v13 = *(v12 - 1);
      v14 = *v12;

      v15 = sub_1C2D2AAA0(v13, v14);
      [v11 addArrangedSubview_];
      v16 = [v11 widthAnchor];
      v17 = [v15 widthAnchor];
      v18 = [v16 constraintGreaterThanOrEqualToAnchor_];

      MEMORY[0x1C6926780]();
      if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1C2E75D94();
      }

      sub_1C2E75DB4();

      v12 += 2;
      --v10;
    }

    while (v10);
  }

  v19 = objc_opt_self();
  sub_1C2C6E1B4(0, &qword_1EC062670);
  v20 = sub_1C2E75D64();
  [v19 activateConstraints_];

  v21 = OBJC_IVAR____TtC16CommunicationsUI15SuggestionsView_isExpanded;
  swift_beginAccess();
  v22 = 0.0;
  if (*(v11 + v21))
  {
    v22 = 1.0;
  }

  [v11 setAlpha_];
  v23 = [v11 arrangedSubviews];
  v24 = sub_1C2E75D74();

  if (v24 >> 62)
  {
    goto LABEL_33;
  }

  for (j = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_1C2E764E4())
  {
    v26 = 0;
    while (1)
    {
      if ((v24 & 0xC000000000000001) != 0)
      {
        v27 = MEMORY[0x1C6927010](v26, v24);
      }

      else
      {
        if (v26 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_32;
        }

        v27 = *(v24 + 8 * v26 + 32);
      }

      v28 = v27;
      v29 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      [v27 setHidden_];

      ++v26;
      if (v29 == j)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    ;
  }

LABEL_34:
}

void SuggestionsTextField.enableSuggestions.setter(char a1)
{
  v3 = OBJC_IVAR____TtC16CommunicationsUI20SuggestionsTextField_enableSuggestions;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  if (v4 == 1 && (a1 & 1) == 0)
  {
    v5 = sub_1C2E4EEFC(&OBJC_IVAR____TtC16CommunicationsUI20SuggestionsTextField____lazy_storage___suggestionsView, sub_1C2E4F914);
    v6 = OBJC_IVAR____TtC16CommunicationsUI15SuggestionsView_isExpanded;
    swift_beginAccess();
    v7 = v5[v6];
    v5[v6] = 0;
    if (v7 == 1)
    {
      [v5 setAlpha_];
      v8 = [v5 arrangedSubviews];
      sub_1C2C6E1B4(0, &qword_1EC062710);
      v9 = sub_1C2E75D74();

      if (v9 >> 62)
      {
        goto LABEL_16;
      }

      for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1C2E764E4())
      {
        v11 = 0;
        while (1)
        {
          if ((v9 & 0xC000000000000001) != 0)
          {
            v12 = MEMORY[0x1C6927010](v11, v9);
          }

          else
          {
            if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_15;
            }

            v12 = *(v9 + 8 * v11 + 32);
          }

          v13 = v12;
          v14 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            break;
          }

          [v12 setHidden_];

          ++v11;
          if (v14 == i)
          {
            goto LABEL_17;
          }
        }

        __break(1u);
LABEL_15:
        __break(1u);
LABEL_16:
        ;
      }

LABEL_17:
    }
  }
}

id SuggestionsTextField.isEnabled.setter(char a1)
{
  v3 = sub_1C2E4EA6C();
  [v3 setEnabled_];

  v4 = [*&v1[OBJC_IVAR____TtC16CommunicationsUI20SuggestionsTextField____lazy_storage___textField] isEnabled];
  v5 = 0.5;
  if (v4)
  {
    v5 = 1.0;
  }

  return [v1 setAlpha_];
}

id SuggestionsTextField.init(placeholder:padding:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  ObjectType = swift_getObjectType();
  v4[OBJC_IVAR____TtC16CommunicationsUI20SuggestionsTextField_enableSuggestions] = 1;
  v9 = &v4[OBJC_IVAR____TtC16CommunicationsUI20SuggestionsTextField_handler];
  *v9 = 0;
  v9[1] = 0;
  v10 = &v4[OBJC_IVAR____TtC16CommunicationsUI20SuggestionsTextField_keyboardAnimation];
  *v10 = 0;
  v10[1] = 0;
  *&v4[OBJC_IVAR____TtC16CommunicationsUI20SuggestionsTextField_textFieldCornerRadius] = 0;
  *&v4[OBJC_IVAR____TtC16CommunicationsUI20SuggestionsTextField____lazy_storage___textFieldContainer] = 0;
  *&v4[OBJC_IVAR____TtC16CommunicationsUI20SuggestionsTextField____lazy_storage___textField] = 0;
  *&v4[OBJC_IVAR____TtC16CommunicationsUI20SuggestionsTextField____lazy_storage___suggestionsView] = 0;
  v11 = &v4[OBJC_IVAR____TtC16CommunicationsUI20SuggestionsTextField_overrideClosePadding];
  *v11 = 0;
  v11[8] = 1;
  *&v4[OBJC_IVAR____TtC16CommunicationsUI20SuggestionsTextField____lazy_storage___textFieldLeading] = 0;
  *&v4[OBJC_IVAR____TtC16CommunicationsUI20SuggestionsTextField____lazy_storage___textFieldTrailing] = 0;
  v12 = &v4[OBJC_IVAR____TtC16CommunicationsUI20SuggestionsTextField_placeholder];
  *v12 = a1;
  v12[1] = a2;
  *v11 = a3;
  v11[8] = a4 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061148);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C2E7A930;
  v14 = *MEMORY[0x1E69DB650];
  *(inited + 32) = *MEMORY[0x1E69DB650];
  v15 = objc_opt_self();

  v16 = v14;
  v17 = [v15 whiteColor];
  v18 = sub_1C2C6E1B4(0, &qword_1EC05CA78);
  *(inited + 64) = v18;
  *(inited + 40) = v17;
  sub_1C2D94C74(inited);
  swift_setDeallocating();
  sub_1C2C73644(inited + 32, &qword_1EC061158);
  v19 = swift_initStackObject();
  *(v19 + 16) = xmmword_1C2E7A930;
  *(v19 + 32) = v16;
  v20 = [v15 whiteColor];
  v21 = [v20 colorWithAlphaComponent_];

  *(v19 + 64) = v18;
  *(v19 + 40) = v21;
  sub_1C2D94C74(v19);
  swift_setDeallocating();
  sub_1C2C73644(v19 + 32, &qword_1EC061158);
  if (a2)
  {
    v22 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v23 = sub_1C2E75C24();
    type metadata accessor for Key(0);
    sub_1C2DFDBCC();
    v24 = sub_1C2E75B34();

    v25 = [v22 initWithString:v23 attributes:v24];

    *&v4[OBJC_IVAR____TtC16CommunicationsUI20SuggestionsTextField_closePlaceholder] = v25;
    v26 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v27 = sub_1C2E75C24();
    v28 = sub_1C2E75B34();

    v29 = [v26 initWithString:v27 attributes:v28];
  }

  else
  {

    *&v4[OBJC_IVAR____TtC16CommunicationsUI20SuggestionsTextField_closePlaceholder] = 0;

    v29 = 0;
  }

  *&v4[OBJC_IVAR____TtC16CommunicationsUI20SuggestionsTextField_openPlaceholder] = v29;
  v33.receiver = v4;
  v33.super_class = ObjectType;
  v30 = objc_msgSendSuper2(&v33, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_1C2E4E428();

  return v30;
}

void sub_1C2E4E428()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC05D8D0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1C2E7A710;
  v3 = sub_1C2E4EEFC(&OBJC_IVAR____TtC16CommunicationsUI20SuggestionsTextField____lazy_storage___textFieldContainer, sub_1C2E4F544);
  v4 = [v3 bottomAnchor];

  v5 = [v1 bottomAnchor];
  v6 = [v4 constraintEqualToAnchor_];

  *(v2 + 32) = v6;
  *(v2 + 40) = sub_1C2E4FB6C();
  *(v2 + 48) = sub_1C2E4FC74();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C2E7A700;
  v8 = sub_1C2E4EA6C();
  v9 = [v8 topAnchor];

  v10 = OBJC_IVAR____TtC16CommunicationsUI20SuggestionsTextField____lazy_storage___textFieldContainer;
  v11 = [*&v1[OBJC_IVAR____TtC16CommunicationsUI20SuggestionsTextField____lazy_storage___textFieldContainer] topAnchor];
  v12 = [v9 constraintEqualToAnchor:v11 constant:9.0];

  *(inited + 32) = v12;
  v13 = OBJC_IVAR____TtC16CommunicationsUI20SuggestionsTextField____lazy_storage___textField;
  v14 = [*&v1[OBJC_IVAR____TtC16CommunicationsUI20SuggestionsTextField____lazy_storage___textField] bottomAnchor];
  v15 = [*&v1[v10] bottomAnchor];
  v16 = [v14 constraintEqualToAnchor:v15 constant:-9.0];

  *(inited + 40) = v16;
  v17 = [*&v1[v13] leadingAnchor];
  v18 = [*&v1[v10] leadingAnchor];
  v19 = [v17 constraintEqualToAnchor:v18 constant:16.0];

  *(inited + 48) = v19;
  v20 = [*&v1[v13] trailingAnchor];
  v21 = [*&v1[v10] trailingAnchor];
  v22 = [v20 constraintEqualToAnchor:v21 constant:-16.0];

  *(inited + 56) = v22;
  sub_1C2CA2AE4(inited);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1C2E7A710;
  v24 = sub_1C2E4EEFC(&OBJC_IVAR____TtC16CommunicationsUI20SuggestionsTextField____lazy_storage___suggestionsView, sub_1C2E4F914);
  v25 = [v24 topAnchor];

  v26 = [v1 topAnchor];
  v27 = [v25 constraintEqualToAnchor_];

  *(v23 + 32) = v27;
  v28 = OBJC_IVAR____TtC16CommunicationsUI20SuggestionsTextField____lazy_storage___suggestionsView;
  v29 = [*&v1[OBJC_IVAR____TtC16CommunicationsUI20SuggestionsTextField____lazy_storage___suggestionsView] bottomAnchor];
  v30 = [*&v1[v10] topAnchor];
  v31 = [v29 constraintEqualToAnchor:v30 constant:-6.0];

  *(v23 + 40) = v31;
  v32 = [*&v1[v28] leadingAnchor];
  v33 = [*&v1[v10] leadingAnchor];
  v34 = [v32 constraintEqualToAnchor_];

  *(v23 + 48) = v34;
  sub_1C2CA2AE4(v23);
  v35 = objc_opt_self();
  sub_1C2C6E1B4(0, &qword_1EC062670);
  v36 = sub_1C2E75D64();

  [v35 activateConstraints_];

  v37 = objc_opt_self();
  v38 = [v37 defaultCenter];
  [v38 addObserver:v1 selector:sel_keyboardWillShow_ name:*MEMORY[0x1E69DE080] object:0];

  v39 = [v37 defaultCenter];
  [v39 addObserver:v1 selector:sel_keyboardWillHide_ name:*MEMORY[0x1E69DE078] object:0];
}

id SuggestionsTextField.isEnabled.getter()
{
  v0 = sub_1C2E4EA6C();
  v1 = [v0 isEnabled];

  return v1;
}

id sub_1C2E4E9E0(unsigned __int8 *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_1C2E4EA6C();
  [v4 setEnabled_];

  v5 = [*&v3[OBJC_IVAR____TtC16CommunicationsUI20SuggestionsTextField____lazy_storage___textField] isEnabled];
  v6 = 0.5;
  if (v5)
  {
    v6 = 1.0;
  }

  return [v3 setAlpha_];
}

id sub_1C2E4EA6C()
{
  v1 = OBJC_IVAR____TtC16CommunicationsUI20SuggestionsTextField____lazy_storage___textField;
  v2 = *(v0 + OBJC_IVAR____TtC16CommunicationsUI20SuggestionsTextField____lazy_storage___textField);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16CommunicationsUI20SuggestionsTextField____lazy_storage___textField);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DD0B0]) init];
    [v4 setAttributedPlaceholder_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    sub_1C2C6E1B4(0, &qword_1EC05CA60);
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    *(v7 + 24) = v5;
    v3 = v4;
    v8 = v0;
    v9 = sub_1C2E76264();
    [v3 addAction:v9 forControlEvents:{0x80000, 0, 0, 0, sub_1C2E50930, v7}];

    v10 = sub_1C2E4EEFC(&OBJC_IVAR____TtC16CommunicationsUI20SuggestionsTextField____lazy_storage___textFieldContainer, sub_1C2E4F544);
    [v10 addSubview_];

    v11 = *(v8 + v1);
    *(v8 + v1) = v4;

    v2 = 0;
  }

  v12 = v2;
  return v3;
}

id (*SuggestionsTextField.isEnabled.modify(uint64_t a1))(char **a1)
{
  *a1 = v1;
  v3 = sub_1C2E4EA6C();
  v4 = [v3 isEnabled];

  *(a1 + 8) = v4;
  return sub_1C2E4ECB4;
}

id sub_1C2E4ECB4(char **a1)
{
  v1 = *a1;
  v2 = OBJC_IVAR____TtC16CommunicationsUI20SuggestionsTextField____lazy_storage___textField;
  [*&(*a1)[OBJC_IVAR____TtC16CommunicationsUI20SuggestionsTextField____lazy_storage___textField] setEnabled_];
  v3 = [*&v1[v2] isEnabled];
  v4 = 0.5;
  if (v3)
  {
    v4 = 1.0;
  }

  return [v1 setAlpha_];
}

Swift::Void __swiftcall SuggestionsTextField.layoutSubviews()()
{
  v14.receiver = v0;
  v14.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v14, sel_layoutSubviews);
  v1 = sub_1C2E4EEFC(&OBJC_IVAR____TtC16CommunicationsUI20SuggestionsTextField____lazy_storage___textFieldContainer, sub_1C2E4F544);
  [v1 bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v15.origin.x = v3;
  v15.origin.y = v5;
  v15.size.width = v7;
  v15.size.height = v9;
  v10 = CGRectGetHeight(v15) * 0.5;
  v11 = OBJC_IVAR____TtC16CommunicationsUI20SuggestionsTextField_textFieldCornerRadius;
  v12 = *&v0[OBJC_IVAR____TtC16CommunicationsUI20SuggestionsTextField_textFieldCornerRadius];
  *&v0[OBJC_IVAR____TtC16CommunicationsUI20SuggestionsTextField_textFieldCornerRadius] = v10;
  if (v10 != v12)
  {
    v13 = [*&v0[OBJC_IVAR____TtC16CommunicationsUI20SuggestionsTextField____lazy_storage___textFieldContainer] layer];
    [v13 setCornerRadius_];
  }
}

id SuggestionsTextField.layoutTopAnchor.getter()
{
  v0 = sub_1C2E4EEFC(&OBJC_IVAR____TtC16CommunicationsUI20SuggestionsTextField____lazy_storage___textFieldContainer, sub_1C2E4F544);
  v1 = [v0 topAnchor];

  return v1;
}

id sub_1C2E4EEFC(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

uint64_t SuggestionsTextField.enableSuggestions.getter()
{
  v1 = OBJC_IVAR____TtC16CommunicationsUI20SuggestionsTextField_enableSuggestions;
  swift_beginAccess();
  return *(v0 + v1);
}

void (*SuggestionsTextField.enableSuggestions.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC16CommunicationsUI20SuggestionsTextField_enableSuggestions;
  *(v3 + 72) = v1;
  *(v3 + 80) = v5;
  swift_beginAccess();
  *(v4 + 88) = *(v1 + v5);
  return sub_1C2E4F038;
}

void sub_1C2E4F038(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 72);
  v3 = *(*a1 + 80);
  v5 = *(*a1 + 88);
  v6 = *(v4 + v3);
  *(v4 + v3) = v5;
  if (a2)
  {
    if ((v5 | v6 ^ 1))
    {
      goto LABEL_29;
    }

    v7 = sub_1C2E4EEFC(&OBJC_IVAR____TtC16CommunicationsUI20SuggestionsTextField____lazy_storage___suggestionsView, sub_1C2E4F914);
    v8 = OBJC_IVAR____TtC16CommunicationsUI15SuggestionsView_isExpanded;
    swift_beginAccess();
    v9 = v7[v8];
    v7[v8] = 0;
    if (v9 != 1)
    {
      goto LABEL_28;
    }

    [v7 setAlpha_];
    v10 = [v7 arrangedSubviews];
    sub_1C2C6E1B4(0, &qword_1EC062710);
    v11 = sub_1C2E75D74();

    if (v11 >> 62)
    {
      goto LABEL_36;
    }

    for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1C2E764E4())
    {
      v24 = v2;
      v13 = 0;
      v2 = 1;
      while (1)
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x1C6927010](v13, v11);
        }

        else
        {
          if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_34;
          }

          v14 = *(v11 + 8 * v13 + 32);
        }

        v15 = v14;
        v16 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        [v14 setHidden_];

        ++v13;
        if (v16 == i)
        {
          goto LABEL_26;
        }
      }

      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      ;
    }

    goto LABEL_27;
  }

  if ((v5 | v6 ^ 1))
  {
    goto LABEL_29;
  }

  v7 = sub_1C2E4EEFC(&OBJC_IVAR____TtC16CommunicationsUI20SuggestionsTextField____lazy_storage___suggestionsView, sub_1C2E4F914);
  v8 = OBJC_IVAR____TtC16CommunicationsUI15SuggestionsView_isExpanded;
  swift_beginAccess();
  v17 = v7[v8];
  v7[v8] = 0;
  if (v17 == 1)
  {
    [v7 setAlpha_];
    v18 = [v7 arrangedSubviews];
    sub_1C2C6E1B4(0, &qword_1EC062710);
    v11 = sub_1C2E75D74();

    if (v11 >> 62)
    {
      v19 = sub_1C2E764E4();
      if (v19)
      {
LABEL_18:
        v24 = v2;
        v20 = 0;
        v2 = 1;
        do
        {
          if ((v11 & 0xC000000000000001) != 0)
          {
            v21 = MEMORY[0x1C6927010](v20, v11);
          }

          else
          {
            if (v20 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_35;
            }

            v21 = *(v11 + 8 * v20 + 32);
          }

          v22 = v21;
          v23 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            goto LABEL_33;
          }

          [v21 setHidden_];

          ++v20;
        }

        while (v23 != v19);
LABEL_26:
        v2 = v24;
      }
    }

    else
    {
      v19 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v19)
      {
        goto LABEL_18;
      }
    }

LABEL_27:
  }

LABEL_28:

LABEL_29:

  free(v2);
}

id SuggestionsTextField.textFieldDelegate.getter()
{
  v0 = sub_1C2E4EA6C();
  v1 = [v0 delegate];

  return v1;
}

void sub_1C2E4F3D4(void *a1@<X8>)
{
  v2 = sub_1C2E4EA6C();
  v3 = [v2 delegate];

  *a1 = v3;
}

void SuggestionsTextField.textFieldDelegate.setter(uint64_t a1)
{
  v2 = sub_1C2E4EA6C();
  [v2 setDelegate_];
  swift_unknownObjectRelease();
}

uint64_t (*SuggestionsTextField.textFieldDelegate.modify(void *a1))(void *a1)
{
  a1[1] = v1;
  v3 = sub_1C2E4EA6C();
  v4 = [v3 delegate];

  *a1 = v4;
  return sub_1C2E4F4F4;
}

uint64_t sub_1C2E4F4F4(void *a1)
{
  [*(a1[1] + OBJC_IVAR____TtC16CommunicationsUI20SuggestionsTextField____lazy_storage___textField) setDelegate_];

  return swift_unknownObjectRelease();
}

id sub_1C2E4F544(void *a1)
{
  v2 = sub_1C2E72D04();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  if (_UISolariumEnabled())
  {
    sub_1C2E72CF4();
    v6[3] = sub_1C2E72D14();
    v6[4] = MEMORY[0x1E69DC388];
    __swift_allocate_boxed_opaque_existential_1(v6);
    sub_1C2E72D24();
    sub_1C2E761A4();
  }

  else
  {
    v4 = [objc_opt_self() tertiarySystemFillColor];
    [v3 setBackgroundColor_];
  }

  [a1 addSubview_];
  return v3;
}

void sub_1C2E4F680()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong text];

    if (v2)
    {
      v3 = sub_1C2E75C64();
      v5 = v4;

      if (v3)
      {
        v6 = 0;
      }

      else
      {
        v6 = v5 == 0xE000000000000000;
      }

      if (v6)
      {
      }

      else
      {
        v7 = sub_1C2E767A4();

        if ((v7 & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      swift_beginAccess();
      v8 = swift_unknownObjectWeakLoadStrong();
      if (!v8)
      {
        goto LABEL_22;
      }

      v17 = v8;
      v18 = *&v8[OBJC_IVAR____TtC16CommunicationsUI20SuggestionsTextField_handler];
      if (v18)
      {
        sub_1C2C6EE50(*&v8[OBJC_IVAR____TtC16CommunicationsUI20SuggestionsTextField_handler]);

        v18(0, 0);
        sub_1C2C71668(v18);
        goto LABEL_22;
      }

      goto LABEL_17;
    }
  }

LABEL_8:
  swift_beginAccess();
  v8 = swift_unknownObjectWeakLoadStrong();
  if (!v8)
  {
    goto LABEL_22;
  }

  v9 = v8;
  v10 = *&v8[OBJC_IVAR____TtC16CommunicationsUI20SuggestionsTextField_handler];
  if (!v10)
  {
LABEL_17:

    goto LABEL_22;
  }

  sub_1C2C6EE50(*&v8[OBJC_IVAR____TtC16CommunicationsUI20SuggestionsTextField_handler]);

  swift_beginAccess();
  v11 = swift_unknownObjectWeakLoadStrong();
  if (!v11)
  {
LABEL_20:
    v16 = 0;
    goto LABEL_21;
  }

  v12 = v11;
  v13 = [v11 text];

  if (!v13)
  {
    v11 = 0;
    goto LABEL_20;
  }

  v14 = sub_1C2E75C64();
  v16 = v15;

  v11 = v14;
LABEL_21:
  v10(v11, v16);
  sub_1C2C71668(v10);

LABEL_22:
  swift_beginAccess();
  v19 = swift_unknownObjectWeakLoadStrong();
  if (v19)
  {
    v20 = v19;
    [v19 resignFirstResponder];
  }

  swift_beginAccess();
  v21 = swift_unknownObjectWeakLoadStrong();
  if (v21)
  {
    v22 = v21;
    [v21 setText_];
  }
}

char *sub_1C2E4F914(void *a1)
{
  v2 = type metadata accessor for SuggestionsView();
  v3 = objc_allocWithZone(v2);
  v3[OBJC_IVAR____TtC16CommunicationsUI15SuggestionsView_isExpanded] = 0;
  v4 = &v3[OBJC_IVAR____TtC16CommunicationsUI15SuggestionsView_handler];
  *v4 = 0;
  v4[1] = 0;
  v10.receiver = v3;
  v10.super_class = v2;
  v5 = objc_msgSendSuper2(&v10, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v5 setAxis_];
  [v5 setAlignment_];
  [v5 setSpacing_];

  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = &v5[OBJC_IVAR____TtC16CommunicationsUI15SuggestionsView_handler];
  v8 = *&v5[OBJC_IVAR____TtC16CommunicationsUI15SuggestionsView_handler];
  *v7 = sub_1C2E50928;
  v7[1] = v6;

  sub_1C2C71668(v8);

  [a1 addSubview_];
  return v5;
}

void sub_1C2E4FA74(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *&Strong[OBJC_IVAR____TtC16CommunicationsUI20SuggestionsTextField_handler];
    if (v6)
    {
      sub_1C2C6EE50(*&Strong[OBJC_IVAR____TtC16CommunicationsUI20SuggestionsTextField_handler]);

      v6(a1, a2);
      sub_1C2C71668(v6);
    }

    else
    {
    }
  }

  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    v8 = v7;
    v9 = sub_1C2E4EA6C();

    [v9 resignFirstResponder];
  }
}

id sub_1C2E4FB6C()
{
  v1 = OBJC_IVAR____TtC16CommunicationsUI20SuggestionsTextField____lazy_storage___textFieldLeading;
  v2 = *&v0[OBJC_IVAR____TtC16CommunicationsUI20SuggestionsTextField____lazy_storage___textFieldLeading];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC16CommunicationsUI20SuggestionsTextField____lazy_storage___textFieldLeading];
  }

  else
  {
    v4 = sub_1C2E4EEFC(&OBJC_IVAR____TtC16CommunicationsUI20SuggestionsTextField____lazy_storage___textFieldContainer, sub_1C2E4F544);
    v5 = [v4 leadingAnchor];

    v6 = [v0 leadingAnchor];
    v7 = *&v0[OBJC_IVAR____TtC16CommunicationsUI20SuggestionsTextField_overrideClosePadding];
    if (v0[OBJC_IVAR____TtC16CommunicationsUI20SuggestionsTextField_overrideClosePadding + 8])
    {
      v7 = 38.0;
    }

    v8 = [v5 constraintEqualToAnchor:v6 constant:v7];

    v9 = *&v0[v1];
    *&v0[v1] = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

id sub_1C2E4FC74()
{
  v1 = OBJC_IVAR____TtC16CommunicationsUI20SuggestionsTextField____lazy_storage___textFieldTrailing;
  v2 = *&v0[OBJC_IVAR____TtC16CommunicationsUI20SuggestionsTextField____lazy_storage___textFieldTrailing];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC16CommunicationsUI20SuggestionsTextField____lazy_storage___textFieldTrailing];
  }

  else
  {
    v4 = sub_1C2E4EEFC(&OBJC_IVAR____TtC16CommunicationsUI20SuggestionsTextField____lazy_storage___textFieldContainer, sub_1C2E4F544);
    v5 = [v4 trailingAnchor];

    v6 = [v0 trailingAnchor];
    v7 = -*&v0[OBJC_IVAR____TtC16CommunicationsUI20SuggestionsTextField_overrideClosePadding];
    if (v0[OBJC_IVAR____TtC16CommunicationsUI20SuggestionsTextField_overrideClosePadding + 8])
    {
      v7 = -38.0;
    }

    v8 = [v5 constraintEqualToAnchor:v6 constant:v7];

    v9 = *&v0[v1];
    *&v0[v1] = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

void sub_1C2E4FD80(void *a1, char a2)
{
  v3 = v2;
  v6 = [v2 window];
  if (v6)
  {

    if (a2)
    {
      v7 = 16.0;
      v8 = &OBJC_IVAR____TtC16CommunicationsUI20SuggestionsTextField_openPlaceholder;
    }

    else if (v2[OBJC_IVAR____TtC16CommunicationsUI20SuggestionsTextField_overrideClosePadding + 8] == 1)
    {
      v8 = &OBJC_IVAR____TtC16CommunicationsUI20SuggestionsTextField_closePlaceholder;
      v7 = 38.0;
    }

    else
    {
      v7 = *&v2[OBJC_IVAR____TtC16CommunicationsUI20SuggestionsTextField_overrideClosePadding];
      v8 = &OBJC_IVAR____TtC16CommunicationsUI20SuggestionsTextField_closePlaceholder;
    }

    v9 = sub_1C2E4FB6C();
    [v9 setConstant_];

    v10 = sub_1C2E4FC74();
    [v10 setConstant_];

    v11 = sub_1C2E4EA6C();
    [v11 setAttributedPlaceholder_];

    v12 = [a1 userInfo];
    if (v12)
    {
      v13 = v12;
      v14 = sub_1C2E75B44();

      *&v48 = sub_1C2E75C64();
      *(&v48 + 1) = v15;
      sub_1C2E76564();
      if (*(v14 + 16))
      {
        v16 = sub_1C2D923E0(&aBlock);
        if (v17)
        {
          sub_1C2D32734(*(v14 + 56) + 32 * v16, &v48);
          sub_1C2D94B10(&aBlock);

          if (*(&v49 + 1))
          {
            if (swift_dynamicCast())
            {
              v18 = *aBlock.i64;
              goto LABEL_17;
            }

LABEL_16:
            v18 = 0.0;
LABEL_17:
            v19 = [a1 userInfo];
            if (v19)
            {
              v20 = v19;
              v21 = sub_1C2E75B44();

              *&v48 = sub_1C2E75C64();
              *(&v48 + 1) = v22;
              sub_1C2E76564();
              if (*(v21 + 16))
              {
                v23 = sub_1C2D923E0(&aBlock);
                if (v24)
                {
                  sub_1C2D32734(*(v21 + 56) + 32 * v23, &v48);
                  sub_1C2D94B10(&aBlock);

                  if (*(&v49 + 1))
                  {
                    if (swift_dynamicCast())
                    {
                      v25 = aBlock.i64[0] << 16;
                      goto LABEL_27;
                    }

LABEL_26:
                    v25 = 0;
LABEL_27:
                    v26 = [a1 userInfo];
                    if (v26)
                    {
                      v27 = v26;
                      v28 = sub_1C2E75B44();

                      *&v48 = sub_1C2E75C64();
                      *(&v48 + 1) = v29;
                      sub_1C2E76564();
                      if (*(v28 + 16))
                      {
                        v30 = sub_1C2D923E0(&aBlock);
                        if (v31)
                        {
                          sub_1C2D32734(*(v28 + 56) + 32 * v30, &v48);
                          sub_1C2D94B10(&aBlock);

                          if (*(&v49 + 1))
                          {
                            type metadata accessor for CGRect(0);
                            v32 = swift_dynamicCast();
                            if (v32)
                            {
                              v33 = -1;
                            }

                            else
                            {
                              v33 = 0;
                            }

                            v34 = vdupq_n_s64(v33);
                            v35 = vandq_s8(v45, v34);
                            v36 = vandq_s8(aBlock, v34);
                            v37 = v32 ^ 1;
                            goto LABEL_38;
                          }

LABEL_37:
                          sub_1C2C73644(&v48, &unk_1EC0645B0);
                          v36 = 0uLL;
                          v37 = 1;
                          v35 = 0uLL;
LABEL_38:
                          v50 = v37;
                          if (v25 < 0)
                          {
                            __break(1u);
                          }

                          else
                          {
                            v42 = v35;
                            v43 = v36;
                            v38 = objc_opt_self();
                            v39 = swift_allocObject();
                            *(v39 + 16) = v3;
                            *(v39 + 24) = a2 & 1;
                            *(v39 + 32) = v43;
                            *(v39 + 48) = v42;
                            *(v39 + 64) = v50;
                            v46 = sub_1C2E50818;
                            v47 = v39;
                            aBlock.i64[0] = MEMORY[0x1E69E9820];
                            aBlock.i64[1] = 1107296256;
                            v45.i64[0] = sub_1C2CB2CC4;
                            v45.i64[1] = &block_descriptor_28;
                            v40 = _Block_copy(&aBlock);
                            v41 = v3;

                            [v38 animateWithDuration:v25 | 4 delay:v40 options:0 animations:v18 completion:0.0];
                            _Block_release(v40);
                          }

                          return;
                        }
                      }

                      sub_1C2D94B10(&aBlock);
                    }

                    v48 = 0u;
                    v49 = 0u;
                    goto LABEL_37;
                  }

LABEL_25:
                  sub_1C2C73644(&v48, &unk_1EC0645B0);
                  goto LABEL_26;
                }
              }

              sub_1C2D94B10(&aBlock);
            }

            v48 = 0u;
            v49 = 0u;
            goto LABEL_25;
          }

LABEL_15:
          sub_1C2C73644(&v48, &unk_1EC0645B0);
          goto LABEL_16;
        }
      }

      sub_1C2D94B10(&aBlock);
    }

    v48 = 0u;
    v49 = 0u;
    goto LABEL_15;
  }
}

id sub_1C2E503A0(_BYTE *a1, char a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC16CommunicationsUI20SuggestionsTextField_enableSuggestions;
  swift_beginAccess();
  if (a1[v6] == 1)
  {
    v7 = sub_1C2E4EEFC(&OBJC_IVAR____TtC16CommunicationsUI20SuggestionsTextField____lazy_storage___suggestionsView, sub_1C2E4F914);
    v8 = OBJC_IVAR____TtC16CommunicationsUI15SuggestionsView_isExpanded;
    swift_beginAccess();
    v9 = v7[v8];
    v7[v8] = a2 & 1;
    if (v9 != (a2 & 1))
    {
      v21 = a3;
      v20 = a2;
      v10 = 0.0;
      if (a2)
      {
        v10 = 1.0;
      }

      [v7 setAlpha_];
      v11 = [v7 arrangedSubviews];
      sub_1C2C6E1B4(0, &qword_1EC062710);
      v12 = sub_1C2E75D74();

      if (v12 >> 62)
      {
        goto LABEL_17;
      }

      for (i = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1C2E764E4())
      {
        v14 = 0;
        while (1)
        {
          if ((v12 & 0xC000000000000001) != 0)
          {
            v15 = MEMORY[0x1C6927010](v14, v12);
          }

          else
          {
            if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_16;
            }

            v15 = *(v12 + 8 * v14 + 32);
          }

          v16 = v15;
          v17 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            break;
          }

          [v15 setHidden_];

          ++v14;
          if (v17 == i)
          {
            goto LABEL_18;
          }
        }

        __break(1u);
LABEL_16:
        __break(1u);
LABEL_17:
        ;
      }

LABEL_18:

      a3 = v21;
      a2 = v20;
    }
  }

  result = [a1 layoutIfNeeded];
  v19 = *&a1[OBJC_IVAR____TtC16CommunicationsUI20SuggestionsTextField_keyboardAnimation];
  if (v19)
  {

    v19(a2 & 1, a3);
    return sub_1C2C71668(v19);
  }

  return result;
}

id SuggestionsTextField.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id SuggestionsTextField.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t block_copy_helper_28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1C2E50840()
{
  *(v0 + OBJC_IVAR____TtC16CommunicationsUI20SuggestionsTextField_enableSuggestions) = 1;
  v1 = (v0 + OBJC_IVAR____TtC16CommunicationsUI20SuggestionsTextField_handler);
  *v1 = 0;
  v1[1] = 0;
  v2 = (v0 + OBJC_IVAR____TtC16CommunicationsUI20SuggestionsTextField_keyboardAnimation);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____TtC16CommunicationsUI20SuggestionsTextField_textFieldCornerRadius) = 0;
  *(v0 + OBJC_IVAR____TtC16CommunicationsUI20SuggestionsTextField____lazy_storage___textFieldContainer) = 0;
  *(v0 + OBJC_IVAR____TtC16CommunicationsUI20SuggestionsTextField____lazy_storage___textField) = 0;
  *(v0 + OBJC_IVAR____TtC16CommunicationsUI20SuggestionsTextField____lazy_storage___suggestionsView) = 0;
  v3 = v0 + OBJC_IVAR____TtC16CommunicationsUI20SuggestionsTextField_overrideClosePadding;
  *v3 = 0;
  *(v3 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC16CommunicationsUI20SuggestionsTextField____lazy_storage___textFieldLeading) = 0;
  *(v0 + OBJC_IVAR____TtC16CommunicationsUI20SuggestionsTextField____lazy_storage___textFieldTrailing) = 0;
  sub_1C2E766F4();
  __break(1u);
}

uint64_t ContactPosterOrAvatarTileState.__allocating_init(avatarImageStyle:primaryCaption:secondaryCaption:bodyCaption:detailCaption:buttonConfiguration:playable:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v25 = a7;
  v23 = a5;
  v26 = a4;
  v27 = a3;
  v28 = a2;
  v24 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E0F0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v23 - v10;
  v12 = swift_allocObject();
  v13 = *a6;
  v14 = v12 + OBJC_IVAR____TtC16CommunicationsUI30ContactPosterOrAvatarTileState__buttonConfiguration;
  *v14 = 0;
  *(v14 + 8) = 768;
  v15 = OBJC_IVAR____TtC16CommunicationsUI30ContactPosterOrAvatarTileState__primaryCaption;
  v16 = *(a6 + 8);
  v17 = type metadata accessor for ContactAvatarTileView.Caption(0);
  v18 = *(*(v17 - 8) + 56);
  v18(v12 + v15, 1, 1, v17);
  v18(v12 + OBJC_IVAR____TtC16CommunicationsUI30ContactPosterOrAvatarTileState__secondaryCaption, 1, 1, v17);
  v18(v12 + OBJC_IVAR____TtC16CommunicationsUI30ContactPosterOrAvatarTileState__bodyCaption, 1, 1, v17);
  v18(v12 + OBJC_IVAR____TtC16CommunicationsUI30ContactPosterOrAvatarTileState__detailCaption, 1, 1, v17);
  v19 = v12 + OBJC_IVAR____TtC16CommunicationsUI30ContactPosterOrAvatarTileState__playable;
  *v19 = 0u;
  *(v19 + 16) = 0u;
  *(v19 + 32) = 0;
  sub_1C2E71A94();
  sub_1C2CEA50C(a1, v12 + OBJC_IVAR____TtC16CommunicationsUI30ContactPosterOrAvatarTileState__avatarImageStyle);
  sub_1C2C736A4(v28, v11, &qword_1EC05E0F0);
  ContactPosterOrAvatarTileState.primaryCaption.setter(v11);
  sub_1C2C736A4(v27, v11, &qword_1EC05E0F0);
  ContactPosterOrAvatarTileState.secondaryCaption.setter(v11);
  sub_1C2C736A4(v26, v11, &qword_1EC05E0F0);
  ContactPosterOrAvatarTileState.bodyCaption.setter(v11);
  swift_getKeyPath();
  v34 = v12;
  v35 = v13;
  v36 = v16;
  v38[0] = v12;
  sub_1C2DD32B0(v13, v16);
  sub_1C2E53C38(&qword_1EC05BCA8);
  sub_1C2E71A54();
  sub_1C2CC2664(v13, v16);

  v20 = v23;
  sub_1C2C736A4(v23, v11, &qword_1EC05E0F0);
  ContactPosterOrAvatarTileState.detailCaption.setter(v11);
  swift_getKeyPath();
  v31 = v12;
  v32 = v13;
  v33 = v16;
  v38[0] = v12;
  sub_1C2E71A54();
  sub_1C2CC2664(v13, v16);

  v21 = v25;
  sub_1C2C736A4(v25, v38, &unk_1EC061C40);
  swift_getKeyPath();
  v29 = v12;
  v30 = v38;
  v37 = v12;
  sub_1C2E71A54();

  sub_1C2C73644(v21, &unk_1EC061C40);
  sub_1C2C73644(v20, &qword_1EC05E0F0);
  sub_1C2C73644(v26, &qword_1EC05E0F0);
  sub_1C2C73644(v27, &qword_1EC05E0F0);
  sub_1C2C73644(v28, &qword_1EC05E0F0);
  sub_1C2C7354C(v24, type metadata accessor for ContactAvatarTileView.ImageStyle);
  sub_1C2C73644(v38, &unk_1EC061C40);
  return v12;
}

uint64_t ContactPosterOrAvatarTileState.avatarImageStyle.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1C2E53C38(&qword_1EC05BCA8);
  sub_1C2E71A64();

  v3 = OBJC_IVAR____TtC16CommunicationsUI30ContactPosterOrAvatarTileState__avatarImageStyle;
  swift_beginAccess();
  return sub_1C2CEA50C(v5 + v3, a1);
}

uint64_t sub_1C2E50EAC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2E53C38(&qword_1EC05BCA8);
  sub_1C2E71A64();

  v4 = OBJC_IVAR____TtC16CommunicationsUI30ContactPosterOrAvatarTileState__avatarImageStyle;
  swift_beginAccess();
  return sub_1C2CEA50C(v3 + v4, a2);
}

uint64_t sub_1C2E50F60(uint64_t a1)
{
  v2 = type metadata accessor for ContactAvatarTileView.ImageStyle(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C2CEA50C(a1, v4);
  return ContactPosterOrAvatarTileState.avatarImageStyle.setter(v4);
}

uint64_t ContactPosterOrAvatarTileState.avatarImageStyle.setter(uint64_t a1)
{
  v3 = type metadata accessor for ContactAvatarTileView.ImageStyle(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC16CommunicationsUI30ContactPosterOrAvatarTileState__avatarImageStyle;
  swift_beginAccess();
  sub_1C2CEA50C(v1 + v6, v5);
  v7 = _s16CommunicationsUI21ContactAvatarTileViewV10ImageStyleO2eeoiySbAE_AEtFZ_0(v5, a1);
  sub_1C2C7354C(v5, type metadata accessor for ContactAvatarTileView.ImageStyle);
  if (v7)
  {
    swift_beginAccess();
    sub_1C2DD324C(a1, v1 + v6);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[1] = v1;
    sub_1C2E53C38(&qword_1EC05BCA8);
    sub_1C2E71A54();
  }

  return sub_1C2C7354C(a1, type metadata accessor for ContactAvatarTileView.ImageStyle);
}

uint64_t sub_1C2E511B4(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC16CommunicationsUI30ContactPosterOrAvatarTileState__avatarImageStyle;
  swift_beginAccess();
  sub_1C2DD324C(a2, a1 + v4);
  return swift_endAccess();
}

void (*ContactPosterOrAvatarTileState.avatarImageStyle.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC16CommunicationsUI30ContactPosterOrAvatarTileState___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1C2E53C38(&qword_1EC05BCA8);
  sub_1C2E71A64();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C2E71A84();

  swift_beginAccess();
  return sub_1C2E51354;
}

uint64_t ContactPosterOrAvatarTileState.buttonConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_1C2E53C38(&qword_1EC05BCA8);
  sub_1C2E71A64();

  v3 = v1 + OBJC_IVAR____TtC16CommunicationsUI30ContactPosterOrAvatarTileState__buttonConfiguration;
  swift_beginAccess();
  v4 = *v3;
  *a1 = *v3;
  v5 = *(v3 + 8);
  *(a1 + 8) = v5;
  return sub_1C2DD32B0(v4, v5);
}

uint64_t sub_1C2E51420@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2E53C38(&qword_1EC05BCA8);
  sub_1C2E71A64();

  v4 = v3 + OBJC_IVAR____TtC16CommunicationsUI30ContactPosterOrAvatarTileState__buttonConfiguration;
  swift_beginAccess();
  v5 = *v4;
  *a2 = *v4;
  v6 = *(v4 + 8);
  *(a2 + 8) = v6;
  return sub_1C2DD32B0(v5, v6);
}

uint64_t sub_1C2E514E0()
{
  swift_getKeyPath();
  sub_1C2E53C38(&qword_1EC05BCA8);
  sub_1C2E71A54();
}

uint64_t ContactPosterOrAvatarTileState.buttonConfiguration.setter(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  swift_getKeyPath();
  sub_1C2E53C38(&qword_1EC05BCA8);
  sub_1C2E71A54();
  sub_1C2CC2664(v1, v2);
}

uint64_t sub_1C2E51670(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v5 = a1 + OBJC_IVAR____TtC16CommunicationsUI30ContactPosterOrAvatarTileState__buttonConfiguration;
  swift_beginAccess();
  v6 = *v5;
  *v5 = a2;
  v7 = *(v5 + 8);
  *(v5 + 8) = a3;
  sub_1C2DD32B0(a2, a3);
  return sub_1C2CC2664(v6, v7);
}

void (*ContactPosterOrAvatarTileState.buttonConfiguration.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC16CommunicationsUI30ContactPosterOrAvatarTileState___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1C2E53C38(&qword_1EC05BCA8);
  sub_1C2E71A64();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C2E71A84();

  swift_beginAccess();
  return sub_1C2E51830;
}

uint64_t sub_1C2E51850@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  swift_getKeyPath();
  sub_1C2E53C38(&qword_1EC05BCA8);
  sub_1C2E71A64();

  v5 = *a1;
  swift_beginAccess();
  return sub_1C2C736A4(v2 + v5, a2, &qword_1EC05E0F0);
}

uint64_t sub_1C2E51928@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, uint64_t a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1C2E53C38(&qword_1EC05BCA8);
  sub_1C2E71A64();

  v6 = *a2;
  swift_beginAccess();
  return sub_1C2C736A4(v5 + v6, a3, &qword_1EC05E0F0);
}

void (*ContactPosterOrAvatarTileState.primaryCaption.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC16CommunicationsUI30ContactPosterOrAvatarTileState___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1C2E53C38(&qword_1EC05BCA8);
  sub_1C2E71A64();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C2E71A84();

  swift_beginAccess();
  return sub_1C2E51B64;
}

uint64_t sub_1C2E51BD8(uint64_t a1, uint64_t *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E0F0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = *a2;
  swift_beginAccess();
  sub_1C2C736A4(v2 + v8, v7, &qword_1EC05E0F0);
  LOBYTE(a2) = sub_1C2E53894(v7, a1);
  sub_1C2C73644(v7, &qword_1EC05E0F0);
  if (a2)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v11[-2] = v2;
    v11[-1] = a1;
    v11[2] = v2;
    sub_1C2E53C38(&qword_1EC05BCA8);
    sub_1C2E71A54();
  }

  else
  {
    swift_beginAccess();
    sub_1C2D44F38(a1, v2 + v8, &qword_1EC05E0F0);
    swift_endAccess();
  }

  return sub_1C2C73644(a1, &qword_1EC05E0F0);
}

void (*ContactPosterOrAvatarTileState.secondaryCaption.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC16CommunicationsUI30ContactPosterOrAvatarTileState___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1C2E53C38(&qword_1EC05BCA8);
  sub_1C2E71A64();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C2E71A84();

  swift_beginAccess();
  return sub_1C2E51EF0;
}

void (*ContactPosterOrAvatarTileState.bodyCaption.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC16CommunicationsUI30ContactPosterOrAvatarTileState___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1C2E53C38(&qword_1EC05BCA8);
  sub_1C2E71A64();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C2E71A84();

  swift_beginAccess();
  return sub_1C2E52098;
}

uint64_t sub_1C2E520E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E0F0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v11 - v8;
  sub_1C2C736A4(a1, &v11 - v8, &qword_1EC05E0F0);
  return a5(v9);
}

void (*ContactPosterOrAvatarTileState.detailCaption.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC16CommunicationsUI30ContactPosterOrAvatarTileState___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1C2E53C38(&qword_1EC05BCA8);
  sub_1C2E71A64();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C2E71A84();

  swift_beginAccess();
  return sub_1C2E522F4;
}

uint64_t ContactPosterOrAvatarTileState.playable.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1C2E53C38(&qword_1EC05BCA8);
  sub_1C2E71A64();

  v3 = OBJC_IVAR____TtC16CommunicationsUI30ContactPosterOrAvatarTileState__playable;
  swift_beginAccess();
  return sub_1C2C736A4(v5 + v3, a1, &unk_1EC061C40);
}

uint64_t sub_1C2E523C4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2E53C38(&qword_1EC05BCA8);
  sub_1C2E71A64();

  v4 = OBJC_IVAR____TtC16CommunicationsUI30ContactPosterOrAvatarTileState__playable;
  swift_beginAccess();
  return sub_1C2C736A4(v3 + v4, a2, &unk_1EC061C40);
}

uint64_t sub_1C2E52488(uint64_t a1)
{
  sub_1C2C736A4(a1, v2, &unk_1EC061C40);
  swift_getKeyPath();
  sub_1C2E53C38(&qword_1EC05BCA8);
  sub_1C2E71A54();

  return sub_1C2C73644(v2, &unk_1EC061C40);
}

uint64_t ContactPosterOrAvatarTileState.playable.setter(uint64_t a1)
{
  swift_getKeyPath();
  sub_1C2E53C38(&qword_1EC05BCA8);
  sub_1C2E71A54();

  return sub_1C2C73644(a1, &unk_1EC061C40);
}

uint64_t sub_1C2E52648(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC16CommunicationsUI30ContactPosterOrAvatarTileState__playable;
  swift_beginAccess();
  sub_1C2D44F38(a2, a1 + v4, &unk_1EC061C40);
  return swift_endAccess();
}

void (*ContactPosterOrAvatarTileState.playable.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC16CommunicationsUI30ContactPosterOrAvatarTileState___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1C2E53C38(&qword_1EC05BCA8);
  sub_1C2E71A64();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C2E71A84();

  swift_beginAccess();
  return sub_1C2E527F8;
}

uint64_t ContactPosterOrAvatarTileState.init(avatarImageStyle:primaryCaption:secondaryCaption:bodyCaption:detailCaption:buttonConfiguration:playable:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v26 = a7;
  v24 = a5;
  v27 = a4;
  v28 = a3;
  v29 = a2;
  v25 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E0F0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v24 - v12;
  v14 = *a6;
  v15 = v8 + OBJC_IVAR____TtC16CommunicationsUI30ContactPosterOrAvatarTileState__buttonConfiguration;
  *v15 = 0;
  *(v15 + 8) = 768;
  v16 = OBJC_IVAR____TtC16CommunicationsUI30ContactPosterOrAvatarTileState__primaryCaption;
  v17 = *(a6 + 8);
  v18 = type metadata accessor for ContactAvatarTileView.Caption(0);
  v19 = *(*(v18 - 8) + 56);
  v19(v8 + v16, 1, 1, v18);
  v19(v8 + OBJC_IVAR____TtC16CommunicationsUI30ContactPosterOrAvatarTileState__secondaryCaption, 1, 1, v18);
  v19(v8 + OBJC_IVAR____TtC16CommunicationsUI30ContactPosterOrAvatarTileState__bodyCaption, 1, 1, v18);
  v19(v8 + OBJC_IVAR____TtC16CommunicationsUI30ContactPosterOrAvatarTileState__detailCaption, 1, 1, v18);
  v20 = v8 + OBJC_IVAR____TtC16CommunicationsUI30ContactPosterOrAvatarTileState__playable;
  *v20 = 0u;
  *(v20 + 16) = 0u;
  *(v20 + 32) = 0;
  sub_1C2E71A94();
  sub_1C2CEA50C(a1, v8 + OBJC_IVAR____TtC16CommunicationsUI30ContactPosterOrAvatarTileState__avatarImageStyle);
  sub_1C2C736A4(v29, v13, &qword_1EC05E0F0);
  ContactPosterOrAvatarTileState.primaryCaption.setter(v13);
  sub_1C2C736A4(v28, v13, &qword_1EC05E0F0);
  ContactPosterOrAvatarTileState.secondaryCaption.setter(v13);
  sub_1C2C736A4(v27, v13, &qword_1EC05E0F0);
  ContactPosterOrAvatarTileState.bodyCaption.setter(v13);
  swift_getKeyPath();
  v35 = v8;
  v36 = v14;
  v37 = v17;
  v39[0] = v8;
  sub_1C2DD32B0(v14, v17);
  sub_1C2E53C38(&qword_1EC05BCA8);
  sub_1C2E71A54();
  sub_1C2CC2664(v14, v17);

  v21 = v24;
  sub_1C2C736A4(v24, v13, &qword_1EC05E0F0);
  ContactPosterOrAvatarTileState.detailCaption.setter(v13);
  swift_getKeyPath();
  v32 = v8;
  v33 = v14;
  v34 = v17;
  v39[0] = v8;
  sub_1C2E71A54();
  sub_1C2CC2664(v14, v17);

  v22 = v26;
  sub_1C2C736A4(v26, v39, &unk_1EC061C40);
  swift_getKeyPath();
  v30 = v8;
  v31 = v39;
  v38 = v8;
  sub_1C2E71A54();

  sub_1C2C73644(v22, &unk_1EC061C40);
  sub_1C2C73644(v21, &qword_1EC05E0F0);
  sub_1C2C73644(v27, &qword_1EC05E0F0);
  sub_1C2C73644(v28, &qword_1EC05E0F0);
  sub_1C2C73644(v29, &qword_1EC05E0F0);
  sub_1C2C7354C(v25, type metadata accessor for ContactAvatarTileView.ImageStyle);
  sub_1C2C73644(v39, &unk_1EC061C40);
  return v8;
}

uint64_t type metadata accessor for ContactPosterOrAvatarTileState()
{
  result = qword_1EC05BC90;
  if (!qword_1EC05BC90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ContactPosterOrAvatarTileState.deinit()
{
  sub_1C2C7354C(v0 + OBJC_IVAR____TtC16CommunicationsUI30ContactPosterOrAvatarTileState__avatarImageStyle, type metadata accessor for ContactAvatarTileView.ImageStyle);
  sub_1C2CC2664(*(v0 + OBJC_IVAR____TtC16CommunicationsUI30ContactPosterOrAvatarTileState__buttonConfiguration), *(v0 + OBJC_IVAR____TtC16CommunicationsUI30ContactPosterOrAvatarTileState__buttonConfiguration + 8));
  sub_1C2C73644(v0 + OBJC_IVAR____TtC16CommunicationsUI30ContactPosterOrAvatarTileState__primaryCaption, &qword_1EC05E0F0);
  sub_1C2C73644(v0 + OBJC_IVAR____TtC16CommunicationsUI30ContactPosterOrAvatarTileState__secondaryCaption, &qword_1EC05E0F0);
  sub_1C2C73644(v0 + OBJC_IVAR____TtC16CommunicationsUI30ContactPosterOrAvatarTileState__bodyCaption, &qword_1EC05E0F0);
  sub_1C2C73644(v0 + OBJC_IVAR____TtC16CommunicationsUI30ContactPosterOrAvatarTileState__detailCaption, &qword_1EC05E0F0);
  sub_1C2C73644(v0 + OBJC_IVAR____TtC16CommunicationsUI30ContactPosterOrAvatarTileState__playable, &unk_1EC061C40);
  v1 = OBJC_IVAR____TtC16CommunicationsUI30ContactPosterOrAvatarTileState___observationRegistrar;
  v2 = sub_1C2E71AA4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t ContactPosterOrAvatarTileState.__deallocating_deinit()
{
  sub_1C2C7354C(v0 + OBJC_IVAR____TtC16CommunicationsUI30ContactPosterOrAvatarTileState__avatarImageStyle, type metadata accessor for ContactAvatarTileView.ImageStyle);
  sub_1C2CC2664(*(v0 + OBJC_IVAR____TtC16CommunicationsUI30ContactPosterOrAvatarTileState__buttonConfiguration), *(v0 + OBJC_IVAR____TtC16CommunicationsUI30ContactPosterOrAvatarTileState__buttonConfiguration + 8));
  sub_1C2C73644(v0 + OBJC_IVAR____TtC16CommunicationsUI30ContactPosterOrAvatarTileState__primaryCaption, &qword_1EC05E0F0);
  sub_1C2C73644(v0 + OBJC_IVAR____TtC16CommunicationsUI30ContactPosterOrAvatarTileState__secondaryCaption, &qword_1EC05E0F0);
  sub_1C2C73644(v0 + OBJC_IVAR____TtC16CommunicationsUI30ContactPosterOrAvatarTileState__bodyCaption, &qword_1EC05E0F0);
  sub_1C2C73644(v0 + OBJC_IVAR____TtC16CommunicationsUI30ContactPosterOrAvatarTileState__detailCaption, &qword_1EC05E0F0);
  sub_1C2C73644(v0 + OBJC_IVAR____TtC16CommunicationsUI30ContactPosterOrAvatarTileState__playable, &unk_1EC061C40);
  v1 = OBJC_IVAR____TtC16CommunicationsUI30ContactPosterOrAvatarTileState___observationRegistrar;
  v2 = sub_1C2E71AA4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

void (*sub_1C2E52FDC(uint64_t **a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = ContactPosterOrAvatarTileState.primaryCaption.modify(v2);
  return sub_1C2CF84BC;
}

uint64_t sub_1C2E53064@<X0>(uint64_t *a1@<X3>, uint64_t a2@<X8>)
{
  v5 = *v2;
  swift_getKeyPath();
  sub_1C2E53C38(&qword_1EC05BCA8);
  sub_1C2E71A64();

  v6 = *a1;
  swift_beginAccess();
  return sub_1C2C736A4(v5 + v6, a2, &qword_1EC05E0F0);
}

void (*sub_1C2E53150(uint64_t **a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = ContactPosterOrAvatarTileState.secondaryCaption.modify(v2);
  return sub_1C2CF84BC;
}

void (*sub_1C2E531FC(uint64_t **a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = ContactPosterOrAvatarTileState.detailCaption.modify(v2);
  return sub_1C2CF84BC;
}

void (*sub_1C2E532A8(uint64_t **a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = ContactPosterOrAvatarTileState.bodyCaption.modify(v2);
  return sub_1C2CF84BC;
}

uint64_t sub_1C2E5331C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  sub_1C2E53C38(&qword_1EC05BCA8);
  sub_1C2E71A64();

  v4 = v3 + OBJC_IVAR____TtC16CommunicationsUI30ContactPosterOrAvatarTileState__buttonConfiguration;
  swift_beginAccess();
  v5 = *v4;
  *a1 = *v4;
  v6 = *(v4 + 8);
  *(a1 + 8) = v6;
  return sub_1C2DD32B0(v5, v6);
}

uint64_t sub_1C2E533DC(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  swift_getKeyPath();
  sub_1C2E53C38(&qword_1EC05BCA8);
  sub_1C2E71A54();
  sub_1C2CC2664(v1, v2);
}

void (*sub_1C2E534B0(uint64_t **a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = ContactPosterOrAvatarTileState.buttonConfiguration.modify(v2);
  return sub_1C2CF84BC;
}

uint64_t sub_1C2E53524@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  sub_1C2E53C38(&qword_1EC05BCA8);
  sub_1C2E71A64();

  v4 = OBJC_IVAR____TtC16CommunicationsUI30ContactPosterOrAvatarTileState__playable;
  swift_beginAccess();
  return sub_1C2C736A4(v3 + v4, a1, &unk_1EC061C40);
}

uint64_t sub_1C2E535E8(uint64_t a1)
{
  swift_getKeyPath();
  sub_1C2E53C38(&qword_1EC05BCA8);
  sub_1C2E71A54();

  return sub_1C2C73644(a1, &unk_1EC061C40);
}

void (*sub_1C2E536B8(uint64_t **a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = ContactPosterOrAvatarTileState.playable.modify(v2);
  return sub_1C2CF84BC;
}

uint64_t sub_1C2E5372C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  sub_1C2E53C38(&qword_1EC05BCA8);
  sub_1C2E71A64();

  v4 = OBJC_IVAR____TtC16CommunicationsUI30ContactPosterOrAvatarTileState__avatarImageStyle;
  swift_beginAccess();
  return sub_1C2CEA50C(v3 + v4, a1);
}

void (*sub_1C2E53804(uint64_t **a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = ContactPosterOrAvatarTileState.avatarImageStyle.modify(v2);
  return sub_1C2CF6D08;
}

uint64_t sub_1C2E53894(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactAvatarTileView.Caption(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E0F0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062AA0);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_1C2C736A4(a1, &v20 - v13, &qword_1EC05E0F0);
  sub_1C2C736A4(a2, &v14[v15], &qword_1EC05E0F0);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_1C2C736A4(v14, v10, &qword_1EC05E0F0);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      sub_1C2E53E68(&v14[v15], v7);
      v18 = _s16CommunicationsUI21ContactAvatarTileViewV7CaptionV2eeoiySbAE_AEtFZ_0(v10, v7);
      sub_1C2C7354C(v7, type metadata accessor for ContactAvatarTileView.Caption);
      sub_1C2C7354C(v10, type metadata accessor for ContactAvatarTileView.Caption);
      sub_1C2C73644(v14, &qword_1EC05E0F0);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    sub_1C2C7354C(v10, type metadata accessor for ContactAvatarTileView.Caption);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1C2C73644(v14, &qword_1EC062AA0);
    v17 = 1;
    return v17 & 1;
  }

  sub_1C2C73644(v14, &qword_1EC05E0F0);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1C2E53BF4(uint64_t a1)
{
  result = sub_1C2E53C38(&qword_1EC05BCA0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C2E53C38(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ContactPosterOrAvatarTileState();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C2E53C7C(uint64_t a1)
{
  result = sub_1C2E53C38(&qword_1EC05BCA8);
  *(a1 + 8) = result;
  return result;
}

void sub_1C2E53CC8()
{
  type metadata accessor for ContactAvatarTileView.ImageStyle(319);
  if (v0 <= 0x3F)
  {
    sub_1C2E53E10();
    if (v1 <= 0x3F)
    {
      sub_1C2E71AA4();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1C2E53E10()
{
  if (!qword_1EC05BFE8)
  {
    type metadata accessor for ContactAvatarTileView.Caption(255);
    v0 = sub_1C2E76424();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC05BFE8);
    }
  }
}

uint64_t sub_1C2E53E68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactAvatarTileView.Caption(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t IncomingAudioCallBannerView.init(configuration:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 40) = vdupq_n_s64(0x4044000000000000uLL);
  *(a2 + 56) = sub_1C2E54328;
  *(a2 + 64) = 0;
  v4 = a1[1];
  v5 = a1[2];
  *a2 = *a1;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  sub_1C2C6E3A4((a1 + 3), v12);
  type metadata accessor for AudioCallDeclineControlViewModel();
  swift_allocObject();

  sub_1C2C6EE50(v4);
  v6 = AudioCallDeclineControlViewModel.init(service:)(v12);
  v7 = *(v6 + 16);
  swift_getKeyPath();
  v12[0] = v7;
  sub_1C2E55440(&qword_1EC05BC60, type metadata accessor for StackedControlButtonConfiguration);
  sub_1C2E71A64();

  swift_beginAccess();
  v8 = *(v7 + 16);
  swift_getKeyPath();
  v12[0] = v8;
  sub_1C2E55440(&qword_1EC05BDA0, type metadata accessor for ControlButtonConfiguration);

  sub_1C2E71A54();

  *(a2 + 24) = v6;
  sub_1C2C6E3A4((a1 + 8), v12);
  type metadata accessor for AudioCallAcceptControlViewModel();
  swift_allocObject();

  v9 = AudioCallAcceptControlViewModel.init(service:)(v12);
  v10 = *(v9 + 16);
  swift_getKeyPath();
  v12[0] = v10;
  sub_1C2E71A64();

  swift_beginAccess();
  swift_getKeyPath();

  sub_1C2E71A54();

  sub_1C2E0EC64(a1);

  *(a2 + 32) = v9;
  return result;
}

uint64_t IncomingAudioCallBannerConfiguration.avatarView.getter()
{
  v1 = *(v0 + 8);
  sub_1C2C6EE50(v1);
  return v1;
}

uint64_t IncomingAudioCallBannerConfiguration.init(participantDetails:avatarView:declineControlService:acceptControlService:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, void *a6@<X8>)
{
  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
  sub_1C2C716EC(a4, (a6 + 3));

  return sub_1C2C716EC(a5, (a6 + 8));
}

uint64_t IncomingAudioCallBannerView.avatarView.getter()
{
  v1 = *(v0 + 8);
  sub_1C2C6EE50(v1);
  return v1;
}

uint64_t IncomingAudioCallBannerView.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 48);
  v8[2] = *(v1 + 32);
  v8[3] = v3;
  v9 = *(v1 + 64);
  v4 = *(v1 + 16);
  v8[0] = *v1;
  v8[1] = v4;
  *a1 = sub_1C2E75744();
  a1[1] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0648B8);
  return sub_1C2E5439C(v8, (a1 + *(v6 + 44)));
}

uint64_t sub_1C2E5439C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0648D0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - v8;
  if (qword_1EC05D098 != -1)
  {
    swift_once();
  }

  v10 = qword_1EC063AB0;

  *v9 = sub_1C2E73C24();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0648D8);
  sub_1C2E54588(a1, &v9[*(v11 + 44)]);
  v12 = sub_1C2E74444();
  sub_1C2E73034();
  v13 = &v9[*(v4 + 36)];
  *v13 = v12;
  *(v13 + 1) = v14;
  *(v13 + 2) = v15;
  *(v13 + 3) = v16;
  *(v13 + 4) = v17;
  v13[40] = 0;
  sub_1C2C736A4(v9, v6, &qword_1EC0648D0);
  *a2 = v10;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0648E0);
  sub_1C2C736A4(v6, a2 + *(v18 + 48), &qword_1EC0648D0);

  sub_1C2C73644(v9, &qword_1EC0648D0);
  sub_1C2C73644(v6, &qword_1EC0648D0);
}

uint64_t sub_1C2E54588@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = type metadata accessor for ControlButton(0);
  MEMORY[0x1EEE9AC00](v61);
  v64 = v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v63 = (v55 - v6);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0648E8);
  MEMORY[0x1EEE9AC00](v60);
  v62 = v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (v55 - v9);
  v11 = *(a1 + 8);
  if (v11)
  {

    v72 = v11(v12);
    sub_1C2E75744();
    sub_1C2E73274();
    v13 = v93;
    v70 = v94;
    v71 = v92;
    v14 = v95;
    v68 = v97;
    v69 = v96;
    v15 = sub_1C2E744A4();
    sub_1C2E73034();
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    sub_1C2C71668(v11);
    LOBYTE(v90[0]) = v13;
    LOBYTE(v75) = v14;
    LOBYTE(v84[0]) = 0;
    v66 = v13;
    v67 = v15;
    v65 = v14;
  }

  else
  {
    v71 = 0;
    v72 = 0;
    v69 = 0;
    v70 = 0;
    v67 = 0;
    v68 = 0;
    v65 = 0;
    v66 = 0;
    v17 = 0;
    v19 = 0;
    v21 = 0;
    v23 = 0;
  }

  v59 = sub_1C2E73DD4();
  LOBYTE(v90[0]) = 1;
  sub_1C2E54D1C(a1, v74);
  *&v73[7] = v74[0];
  *&v73[23] = v74[1];
  *&v73[39] = v74[2];
  *&v73[55] = v74[3];
  v58 = LOBYTE(v90[0]);
  v24 = a1;
  v25 = *(a1 + 24);
  v26 = swift_allocObject();
  swift_weakInit();
  v27 = *(v25 + 16);
  swift_getKeyPath();
  v90[0] = v27;
  v57 = sub_1C2E55440(&qword_1EC05BC60, type metadata accessor for StackedControlButtonConfiguration);
  sub_1C2E71A64();

  swift_beginAccess();
  v98 = *(a1 + 40);
  v28 = v61;
  v29 = *(v61 + 28);
  *(v10 + v29) = swift_getKeyPath();
  v55[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F2D0);
  swift_storeEnumTagMultiPayload();
  *v10 = sub_1C2E37118;
  v10[1] = v26;
  v55[2] = type metadata accessor for ControlButtonConfiguration(0);
  v55[1] = sub_1C2E55440(&qword_1EC05BDA0, type metadata accessor for ControlButtonConfiguration);

  sub_1C2E754C4();
  *(v10 + *(v28 + 24)) = v98;
  LOBYTE(v25) = sub_1C2E744A4();
  sub_1C2E73034();
  v30 = v10 + *(v60 + 36);
  *v30 = v25;
  *(v30 + 1) = v31;
  *(v30 + 2) = v32;
  *(v30 + 3) = v33;
  *(v30 + 4) = v34;
  v30[40] = 0;
  v35 = *(v24 + 32);
  v36 = swift_allocObject();
  v37 = v10;
  v56 = v10;
  v38 = v36;
  swift_weakInit();
  v39 = *(v35 + 16);
  swift_getKeyPath();
  v90[0] = v39;
  sub_1C2E71A64();

  swift_beginAccess();
  v40 = *(v28 + 28);
  KeyPath = swift_getKeyPath();
  v42 = v63;
  *(v63 + v40) = KeyPath;
  swift_storeEnumTagMultiPayload();
  *v42 = sub_1C2DEE10C;
  v42[1] = v38;

  sub_1C2E754C4();
  *(v42 + *(v28 + 24)) = v98;
  v43 = v62;
  sub_1C2C736A4(v37, v62, &qword_1EC0648E8);
  v44 = v64;
  sub_1C2E55380(v42, v64);
  *&v75 = v72;
  *(&v75 + 1) = v71;
  *&v76 = v66;
  *(&v76 + 1) = v70;
  *&v77 = v65;
  *(&v77 + 1) = v69;
  *&v78 = v68;
  *(&v78 + 1) = v67;
  *&v79 = v17;
  *(&v79 + 1) = v19;
  *&v80 = v21;
  *(&v80 + 1) = v23;
  v81 = 0;
  *(a2 + 96) = 0;
  v45 = v80;
  *(a2 + 64) = v79;
  *(a2 + 80) = v45;
  v46 = v76;
  *a2 = v75;
  *(a2 + 16) = v46;
  v47 = v78;
  *(a2 + 32) = v77;
  *(a2 + 48) = v47;
  v48 = v59;
  v82[0] = v59;
  v82[1] = 0;
  LOBYTE(v40) = v58;
  v83[0] = v58;
  *&v83[1] = *v73;
  *&v83[64] = *&v73[63];
  *&v83[49] = *&v73[48];
  *&v83[33] = *&v73[32];
  *&v83[17] = *&v73[16];
  v49 = v59;
  *(a2 + 120) = *v83;
  *(a2 + 104) = v49;
  v50 = *&v83[16];
  v51 = *&v83[32];
  v52 = *&v83[64];
  *(a2 + 168) = *&v83[48];
  *(a2 + 152) = v51;
  *(a2 + 136) = v50;
  *(a2 + 184) = v52;
  *(a2 + 192) = 0;
  *(a2 + 200) = 1;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0648F0);
  sub_1C2C736A4(v43, a2 + *(v53 + 80), &qword_1EC0648E8);
  sub_1C2E55380(v44, a2 + *(v53 + 96));
  sub_1C2C736A4(&v75, v90, &qword_1EC0648F8);
  sub_1C2C736A4(v82, v90, &qword_1EC063368);
  sub_1C2E553E4(v42);
  sub_1C2C73644(v56, &qword_1EC0648E8);
  sub_1C2E553E4(v44);
  sub_1C2C73644(v43, &qword_1EC0648E8);
  v84[0] = v48;
  v84[1] = 0;
  v85 = v40;
  v87 = *&v73[16];
  v88 = *&v73[32];
  *v89 = *&v73[48];
  *&v89[15] = *&v73[63];
  v86 = *v73;
  sub_1C2C73644(v84, &qword_1EC063368);
  v90[0] = v72;
  v90[1] = v71;
  v90[2] = v66;
  v90[3] = v70;
  v90[4] = v65;
  v90[5] = v69;
  v90[6] = v68;
  v90[7] = v67;
  v90[8] = v17;
  v90[9] = v19;
  v90[10] = v21;
  v90[11] = v23;
  v91 = 0;
  return sub_1C2C73644(v90, &qword_1EC0648F8);
}

uint64_t sub_1C2E54D1C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v58 = a2;
  v3 = sub_1C2E746A4();
  v56 = *(v3 - 8);
  v57 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  swift_getKeyPath();
  v54[3] = OBJC_IVAR____TtC16CommunicationsUI18ParticipantDetails___observationRegistrar;
  v65 = v6;
  v54[2] = sub_1C2E55440(&qword_1EC063480, type metadata accessor for ParticipantDetails);
  sub_1C2E71A64();

  swift_beginAccess();
  v7 = *(v6 + 24);
  v63 = *(v6 + 16);
  v64 = v7;
  v54[1] = sub_1C2C74960();

  v8 = sub_1C2E748A4();
  v10 = v9;
  v12 = v11;
  LODWORD(v63) = sub_1C2E740F4();
  v13 = sub_1C2E74794();
  v15 = v14;
  v17 = v16;
  sub_1C2C72340(v8, v10, v12 & 1);

  v19 = v56;
  v18 = v57;
  (*(v56 + 104))(v5, *MEMORY[0x1E6980F10], v57);
  MEMORY[0x1C6924FE0](0xD00000000000001ALL, 0x80000001C2E9BE70, v5, 14.0);
  (*(v19 + 8))(v5, v18);
  v56 = sub_1C2E747F4();
  v57 = v20;
  v22 = v21;
  v55 = v23;

  sub_1C2C72340(v13, v15, v17 & 1);

  swift_getKeyPath();
  v63 = v6;
  sub_1C2E71A64();

  swift_beginAccess();
  v24 = *(v6 + 40);
  v25 = *(v6 + 48);
  v61 = *(v6 + 32);
  v62 = v24;

  v26 = sub_1C2E748A4();
  v28 = v27;
  v30 = v29;
  if (v25 == 1)
  {
    v31 = sub_1C2E740F4();
  }

  else
  {
    v31 = sub_1C2E740D4();
  }

  LODWORD(v61) = v31;
  v32 = sub_1C2E74794();
  v34 = v33;
  v36 = v35;
  sub_1C2C72340(v26, v28, v30 & 1);

  sub_1C2E745E4();
  v37 = sub_1C2E747F4();
  v39 = v38;
  v41 = v40;

  sub_1C2C72340(v32, v34, v36 & 1);

  sub_1C2E745A4();
  v42 = sub_1C2E74764();
  v44 = v43;
  v46 = v45;
  v48 = v47;
  sub_1C2C72340(v37, v39, v41 & 1);

  v49 = v55 & 1;
  v59 = v55 & 1;
  LOBYTE(v61) = v55 & 1;
  v46 &= 1u;
  v60 = v46;
  v51 = v57;
  v50 = v58;
  v52 = v56;
  *v58 = v56;
  v50[1] = v22;
  *(v50 + 16) = v49;
  v50[3] = v51;
  v50[4] = v42;
  v50[5] = v44;
  *(v50 + 48) = v46;
  v50[7] = v48;
  sub_1C2C72330(v52, v22, v49);

  sub_1C2C72330(v42, v44, v46);

  sub_1C2C72340(v42, v44, v46);

  sub_1C2C72340(v52, v22, v59);
}

uint64_t sub_1C2E551C4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 48);
  v8[2] = *(v1 + 32);
  v8[3] = v3;
  v9 = *(v1 + 64);
  v4 = *(v1 + 16);
  v8[0] = *v1;
  v8[1] = v4;
  *a1 = sub_1C2E75744();
  a1[1] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0648B8);
  return sub_1C2E5439C(v8, (a1 + *(v6 + 44)));
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1C2E5525C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_1C2E552A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C2E5531C()
{
  result = qword_1EC0648C0;
  if (!qword_1EC0648C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0648C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0648C0);
  }

  return result;
}

uint64_t sub_1C2E55380(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ControlButton(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C2E553E4(uint64_t a1)
{
  v2 = type metadata accessor for ControlButton(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C2E55440(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for EmbedInLinkIfNeededModifier()
{
  result = qword_1EC064900;
  if (!qword_1EC064900)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C2E554FC()
{
  sub_1C2E71784();
  if (v0 <= 0x3F)
  {
    sub_1C2D72450();
    if (v1 <= 0x3F)
    {
      sub_1C2E55598();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C2E55598()
{
  if (!qword_1EC064910)
  {
    v0 = sub_1C2E730F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC064910);
    }
  }
}

uint64_t sub_1C2E55604(uint64_t a1)
{
  v2 = v1;
  v40 = a1;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064918);
  MEMORY[0x1EEE9AC00](v42);
  v4 = &v30 - v3;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064920);
  MEMORY[0x1EEE9AC00](v36);
  v39 = &v30 - v5;
  v6 = sub_1C2E71784();
  v33 = *(v6 - 8);
  v34 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064928);
  v35 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v10 = &v30 - v9;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064930);
  MEMORY[0x1EEE9AC00](v41);
  v38 = &v30 - v11;
  v12 = sub_1C2E73BA4();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for EmbedInLinkIfNeededModifier();
  v17 = v2 + *(v16 + 24);
  v18 = *v17;
  if (*(v17 + 8) == 1)
  {
    v43 = v18 & 1;
    if ((v18 & 1) == 0)
    {
LABEL_3:
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064938);
      (*(*(v19 - 8) + 16))(v4, v40, v19);
      swift_storeEnumTagMultiPayload();
      sub_1C2E55D60();
      sub_1C2C94F38(&qword_1EC064950, &qword_1EC064938);
      return sub_1C2E73F44();
    }
  }

  else
  {

    sub_1C2E75FD4();
    v31 = v12;
    v21 = sub_1C2E74404();
    v32 = v10;
    v22 = v4;
    v23 = v2;
    v24 = v21;
    sub_1C2E72B14();

    v2 = v23;
    v4 = v22;
    v10 = v32;
    sub_1C2E73B94();
    swift_getAtKeyPath();
    sub_1C2CBE87C(v18, 0);
    (*(v13 + 8))(v15, v31);
    if (v43 != 1)
    {
      goto LABEL_3;
    }
  }

  if ((*(v2 + *(v16 + 20)))())
  {
    v25 = (*(v33 + 16))(v8, v2, v34);
    MEMORY[0x1EEE9AC00](v25);
    *(&v30 - 2) = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064938);
    sub_1C2C94F38(&qword_1EC064950, &qword_1EC064938);
    sub_1C2E746D4();
    v26 = v35;
    v27 = v37;
    (*(v35 + 16))(v39, v10, v37);
    swift_storeEnumTagMultiPayload();
    sub_1C2C94F38(&qword_1EC064948, &qword_1EC064928);
    v28 = v38;
    sub_1C2E73F44();
    (*(v26 + 8))(v10, v27);
  }

  else
  {
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064938);
    (*(*(v29 - 8) + 16))(v39, v40, v29);
    swift_storeEnumTagMultiPayload();
    sub_1C2C94F38(&qword_1EC064948, &qword_1EC064928);
    sub_1C2C94F38(&qword_1EC064950, &qword_1EC064938);
    v28 = v38;
    sub_1C2E73F44();
  }

  sub_1C2E55E44(v28, v4);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064938);
  sub_1C2E55D60();
  sub_1C2C94F38(&qword_1EC064950, &qword_1EC064938);
  sub_1C2E73F44();
  return sub_1C2E55EB4(v28);
}

unint64_t sub_1C2E55D60()
{
  result = qword_1EC064940;
  if (!qword_1EC064940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC064930);
    sub_1C2C94F38(&qword_1EC064948, &qword_1EC064928);
    sub_1C2C94F38(&qword_1EC064950, &qword_1EC064938);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC064940);
  }

  return result;
}

uint64_t sub_1C2E55E44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064930);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C2E55EB4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064930);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C2E55F1C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064938);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v3, v4);
}

unint64_t sub_1C2E55F94()
{
  result = qword_1EC064958;
  if (!qword_1EC064958)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC064960);
    sub_1C2E55D60();
    sub_1C2C94F38(&qword_1EC064950, &qword_1EC064938);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC064958);
  }

  return result;
}

uint64_t ContactAvatarTileView.init(state:primaryAction:secondaryAction:tertiaryAction:longPressAction:customConfig:showSpinner:menuItem:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unsigned __int8 *a19, uint64_t a20, uint64_t a21, unsigned __int8 a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v68 = a8;
  v62 = a7;
  v67 = a5;
  v66 = a4;
  v69 = a2;
  v57 = a1;
  v79 = a25;
  v75 = a24;
  v70 = a23;
  LODWORD(v56) = a22;
  v77 = a21;
  v78 = a20;
  v73 = a16;
  v74 = a17;
  v71 = a14;
  v72 = a15;
  v60 = a13;
  v64 = a12;
  v61 = a11;
  v63 = a10;
  v65 = a18;
  v59 = sub_1C2E718A4();
  v58 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v76 = &v53 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  HIDWORD(v53) = *a19;
  v31 = type metadata accessor for ContactAvatarTileView();
  v32 = v31[5];
  *(a9 + v32) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E250);
  swift_storeEnumTagMultiPayload();
  v33 = v31[14];
  *(a9 + v33) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DA58);
  swift_storeEnumTagMultiPayload();
  sub_1C2C6E3A4(a1, v81);
  sub_1C2C6E3A4(v81, v80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E0E8);
  sub_1C2E75174();
  __swift_destroy_boxed_opaque_existential_1(v81);
  v34 = (a9 + v31[8]);
  *v34 = v69;
  v34[1] = a3;
  v55 = a3;
  v35 = v66;
  v36 = v67;
  v34[2] = v66;
  v34[3] = v36;
  v37 = (a9 + v31[9]);
  v54 = a6;
  *v37 = a6;
  v37[1] = a7;
  v38 = v68;
  v39 = v63;
  v37[2] = v68;
  v37[3] = v39;
  v40 = (a9 + v31[10]);
  *v40 = a11;
  v40[1] = v64;
  v40[2] = a13;
  v41 = v72;
  v40[3] = v71;
  v42 = (a9 + v31[11]);
  v44 = v73;
  v43 = v74;
  *v42 = v41;
  v42[1] = v44;
  v42[2] = v43;
  v42[3] = v65;
  *(a9 + v31[12]) = BYTE4(v53);
  v45 = a9 + v31[13];
  v46 = v77;
  *v45 = v78;
  *(v45 + 1) = v46;
  v45[16] = v56;
  v47 = (a9 + v31[6]);
  v48 = v75;
  *v47 = v70;
  v47[1] = v48;
  v47[2] = v79;

  sub_1C2C6EE50(v35);

  sub_1C2C6EE50(v38);

  sub_1C2C6EE50(v60);

  v49 = v74;
  sub_1C2C6EE50(v74);

  sub_1C2E71894();
  v56 = sub_1C2E71854();
  v51 = v50;

  sub_1C2C71668(v49);

  sub_1C2C71668(v60);

  sub_1C2C71668(v68);

  sub_1C2C71668(v66);
  __swift_destroy_boxed_opaque_existential_1(v57);
  result = (*(v58 + 8))(v76, v59);
  *a9 = v56;
  a9[1] = v51;
  return result;
}

uint64_t sub_1C2E56554()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E188);
  sub_1C2C94F38(&qword_1EC05B298, &qword_1EC05E100);
  sub_1C2E753C4();
  sub_1C2E753D4();
  return 0;
}

uint64_t static ContactAvatarTileView.placeholderButtonBackgroundStyle.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC05C028 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = *(&xmmword_1EC075978 + 1);
  *(a1 + 8) = 0;
}

uint64_t sub_1C2E5670C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C2E73BA4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E250);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for ContactAvatarTileView();
  sub_1C2C736A4(v1 + *(v10 + 20), v9, &qword_1EC05E250);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1C2E72B04();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1C2E75FD4();
    v13 = sub_1C2E74404();
    sub_1C2E72B14();

    sub_1C2E73B94();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1C2E56914@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v65 = a3;
  v66 = a1;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E1A0);
  MEMORY[0x1EEE9AC00](v64);
  v61 = v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v60 = v59 - v7;
  v8 = sub_1C2E73554();
  v67 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v59 - v12;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E1A8);
  MEMORY[0x1EEE9AC00](v63);
  v62 = v59 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0649B0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = v59 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0649A8);
  v19 = v18 - 8;
  MEMORY[0x1EEE9AC00](v18);
  v21 = v59 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0649A0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = v59 - v23;
  *v17 = sub_1C2E73DC4();
  *(v17 + 1) = 0;
  v17[16] = 1;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064A20);
  sub_1C2E56EFC(v66, v3, a2, &v17[*(v25 + 44)]);
  LOBYTE(a2) = sub_1C2E74464();
  sub_1C2E5A7DC();
  sub_1C2E73034();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  sub_1C2C71D5C(v17, v21, &qword_1EC0649B0);
  v34 = *(v19 + 44);
  v35 = v10;
  v36 = &v21[v34];
  *v36 = a2;
  *(v36 + 1) = v27;
  *(v36 + 2) = v29;
  *(v36 + 3) = v31;
  *(v36 + 4) = v33;
  v36[40] = 0;
  LOBYTE(v17) = sub_1C2E74484();
  sub_1C2E5A7DC();
  sub_1C2E73034();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  sub_1C2C71D5C(v21, v24, &qword_1EC0649A8);
  v59[1] = v22;
  v45 = *(v22 + 36);
  v66 = v24;
  v46 = &v24[v45];
  *v46 = v17;
  *(v46 + 1) = v38;
  *(v46 + 2) = v40;
  *(v46 + 3) = v42;
  *(v46 + 4) = v44;
  v46[40] = 0;
  v47 = v67;
  v48 = *(v67 + 104);
  v48(v13, *MEMORY[0x1E697E6F0], v8);
  v48(v10, *MEMORY[0x1E697E6D0], v8);
  sub_1C2C71CAC(&qword_1EC05CBC8, MEMORY[0x1E697E730]);
  result = sub_1C2E75B94();
  if (result)
  {
    v50 = *(v47 + 32);
    v51 = v60;
    v52 = v8;
    v50(v60, v13, v8);
    v53 = v61;
    v54 = v64;
    v50((v51 + *(v64 + 48)), v35, v8);
    sub_1C2C736A4(v51, v53, &qword_1EC05E1A0);
    v55 = *(v54 + 48);
    v56 = v62;
    v50(v62, v53, v52);
    v57 = *(v47 + 8);
    v57(v53 + v55, v52);
    sub_1C2C71D5C(v51, v53, &qword_1EC05E1A0);
    v50((v56 + *(v63 + 36)), (v53 + *(v54 + 48)), v52);
    v57(v53, v52);
    sub_1C2E5B070();
    sub_1C2C94F38(&qword_1EC05CAB8, &qword_1EC05E1A8);
    v58 = v66;
    sub_1C2E74A84();
    sub_1C2C73644(v56, &qword_1EC05E1A8);
    return sub_1C2C73644(v58, &qword_1EC0649A0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C2E56EFC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v221 = a3;
  v210 = a1;
  v232 = a4;
  v229 = _s13AccessoryViewVMa(0);
  MEMORY[0x1EEE9AC00](v229);
  v233 = &v202 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v228 = &v202 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v231 = &v202 - v10;
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064A28);
  MEMORY[0x1EEE9AC00](v203);
  v206 = &v202 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064A30);
  v219 = *(v12 - 8);
  v220 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v205 = &v202 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v204 = &v202 - v15;
  v239 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E0F0);
  MEMORY[0x1EEE9AC00](v239);
  v227 = &v202 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v226 = &v202 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v240 = &v202 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v213 = (&v202 - v22);
  v243 = type metadata accessor for ContactAvatarTileView.Caption(0);
  v237 = *(v243 - 8);
  MEMORY[0x1EEE9AC00](v243);
  v224 = &v202 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v225 = &v202 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v244 = &v202 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v217 = (&v202 - v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064A38);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v230 = &v202 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v242 = &v202 - v33;
  v236 = type metadata accessor for ContactAvatarTileView();
  v234 = *(v236 - 1);
  v218 = *(v234 + 64);
  MEMORY[0x1EEE9AC00](v236);
  v35 = &v202 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064A40);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v202 - v37;
  v235 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064A48);
  v238 = *(v235 - 8);
  MEMORY[0x1EEE9AC00](v235);
  v40 = &v202 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064A50);
  v42 = v41 - 8;
  MEMORY[0x1EEE9AC00](v41);
  v207 = &v202 - v43;
  v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064A58) - 8;
  MEMORY[0x1EEE9AC00](v211);
  v209 = &v202 - v44;
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064A60) - 8;
  MEMORY[0x1EEE9AC00](v212);
  v241 = &v202 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v208 = &v202 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v245 = &v202 - v49;
  sub_1C2C73C8C(a1, v38, type metadata accessor for ContactAvatarTileView.Caption);
  v50 = a2;
  v51 = *a2;
  v52 = a2[1];
  v53 = _s11CaptionViewVMa();
  v54 = &v38[v53[5]];
  *v54 = 1;
  v54[8] = 0;
  *&v38[v53[6]] = 0x4010000000000000;
  v55 = &v38[v53[7]];
  v222 = v52;
  v223 = v51;
  *v55 = v51;
  *(v55 + 1) = v52;
  swift_bridgeObjectRetain_n();
  v56 = sub_1C2E74694();
  KeyPath = swift_getKeyPath();
  v58 = &v38[*(v36 + 36)];
  *v58 = KeyPath;
  v58[1] = v56;
  sub_1C2E745A4();
  v59 = sub_1C2E5B4E4();
  sub_1C2E74934();
  sub_1C2C73644(v38, &qword_1EC064A40);
  sub_1C2C73C8C(v50, v35, type metadata accessor for ContactAvatarTileView);
  v60 = *(v234 + 80);
  v61 = (v60 + 16) & ~v60;
  v214 = &v218[v61];
  v215 = v60;
  v62 = swift_allocObject();
  v216 = v61;
  v218 = v35;
  sub_1C2C71CF4(v35, v62 + v61, type metadata accessor for ContactAvatarTileView);
  *&v287 = v36;
  *(&v287 + 1) = v59;
  swift_getOpaqueTypeConformance2();
  v63 = v207;
  v64 = v235;
  sub_1C2E749F4();

  (*(v238 + 8))(v40, v64);
  v65 = sub_1C2E757C4();
  v66 = v236[7];
  v234 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E178);
  v235 = v66;
  sub_1C2E75184();
  v67 = *(&v288 + 1);
  v68 = v289;
  __swift_project_boxed_opaque_existential_1(&v287, *(&v288 + 1));
  v69 = *(v68 + 8);
  v70 = *(v69 + 40);
  v71 = (v63 + *(v42 + 44));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064A68);
  v70(v67, v69);
  __swift_destroy_boxed_opaque_existential_1(&v287);
  *v71 = v65;
  LOBYTE(v65) = sub_1C2E744A4();
  v238 = v50;
  sub_1C2E5A7DC();
  sub_1C2E73034();
  v73 = v72;
  v75 = v74;
  v77 = v76;
  v79 = v78;
  v80 = v209;
  sub_1C2C736A4(v63, v209, &qword_1EC064A50);
  v81 = v80 + *(v211 + 44);
  *v81 = v65;
  *(v81 + 8) = v73;
  *(v81 + 16) = v75;
  *(v81 + 24) = v77;
  *(v81 + 32) = v79;
  *(v81 + 40) = 0;
  sub_1C2C73644(v63, &qword_1EC064A50);
  v82 = swift_getKeyPath();
  v83 = v208;
  sub_1C2C71D5C(v80, v208, &qword_1EC064A58);
  v84 = (v83 + *(v212 + 44));
  *v84 = v82;
  v84[1] = 0x3FEA3D70A3D70A3DLL;
  sub_1C2C71D5C(v83, v245, &qword_1EC064A60);
  v85 = *(v210 + 24);
  if (v85)
  {
    *&v287 = *(v210 + 16);
    *(&v287 + 1) = v85;
    sub_1C2C74960();

    v86 = sub_1C2E748A4();
    v88 = v87;
    v90 = v89;
    sub_1C2E74F84();
    v91 = sub_1C2E74784();
    v93 = v92;
    v95 = v94;
    v97 = v96;

    sub_1C2C72340(v86, v88, v90 & 1);

    sub_1C2E75754();
    sub_1C2E737F4();
    LOBYTE(v299) = v95 & 1;
    v98 = sub_1C2E744F4();
    v99 = swift_getKeyPath();
    v100 = sub_1C2E74464();
    sub_1C2E73034();
    LOBYTE(v247) = 0;
    *&v271 = v91;
    *(&v271 + 1) = v93;
    LOBYTE(v272) = v95 & 1;
    *(&v272 + 1) = v97;
    v277 = v263;
    v278 = v264;
    v279 = v265;
    v273 = v259;
    v274 = v260;
    v275 = v261;
    v276 = v262;
    *&v280 = v99;
    *(&v280 + 1) = v98;
    LOBYTE(v281) = v100;
    *(&v281 + 1) = v101;
    *&v282[0] = v102;
    *(&v282[0] + 1) = v103;
    *&v282[1] = v104;
    BYTE8(v282[1]) = 0;
    CGPointMake(&v271);
    v297 = v281;
    v298[0] = v282[0];
    *(v298 + 9) = *(v282 + 9);
    v293 = v277;
    v294 = v278;
    v296 = v280;
    v295 = v279;
    v289 = v273;
    v290 = v274;
    v292 = v276;
    v291 = v275;
    v288 = v272;
    v287 = v271;
  }

  else
  {
    sub_1C2D632BC(&v287);
  }

  v105 = v238;
  sub_1C2E75184();
  v106 = *(&v272 + 1);
  v107 = v273;
  __swift_project_boxed_opaque_existential_1(&v271, *(&v272 + 1));
  v108 = v213;
  (*(v107 + 88))(v106, v107);
  v109 = (*(v237 + 48))(v108, 1, v243);
  v110 = v242;
  if (v109 == 1)
  {
    sub_1C2C73644(v108, &qword_1EC05E0F0);
    __swift_destroy_boxed_opaque_existential_1(&v271);
    (*(v219 + 56))(v110, 1, 1, v220);
  }

  else
  {
    v111 = v217;
    sub_1C2C71CF4(v108, v217, type metadata accessor for ContactAvatarTileView.Caption);
    __swift_destroy_boxed_opaque_existential_1(&v271);
    v112 = *v111;
    v113 = v111[1];
    *&v271 = v112;
    *(&v271 + 1) = v113;
    sub_1C2C74960();

    v213 = sub_1C2E748A4();
    v115 = v114;
    v117 = v116;
    v119 = v118;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060120);
    v120 = swift_allocObject();
    *(v120 + 16) = xmmword_1C2E7A110;
    v121 = sub_1C2E744A4();
    *(v120 + 32) = v121;
    v122 = sub_1C2E74484();
    *(v120 + 33) = v122;
    v123 = sub_1C2E74494();
    sub_1C2E74494();
    if (sub_1C2E74494() != v121)
    {
      v123 = sub_1C2E74494();
    }

    sub_1C2E74494();
    if (sub_1C2E74494() != v122)
    {
      v123 = sub_1C2E74494();
    }

    sub_1C2E5A7DC();
    sub_1C2E73034();
    v125 = v124;
    v127 = v126;
    v129 = v128;
    v131 = v130;
    v132 = v117 & 1;
    LOBYTE(v271) = v117 & 1;
    LOBYTE(v259) = 0;
    sub_1C2E75754();
    sub_1C2E737F4();
    *&v246[55] = v302;
    *&v246[71] = v303;
    *&v246[87] = v304;
    *&v246[103] = v305;
    *&v246[7] = v299;
    *&v246[23] = v300;
    *&v246[39] = v301;
    v133 = sub_1C2E744F4();
    v134 = swift_getKeyPath();
    sub_1C2CA4C5C();
    v135 = v206;
    sub_1C2E756C4();
    sub_1C2C735AC(v217, type metadata accessor for ContactAvatarTileView.Caption);
    *v135 = v213;
    *(v135 + 8) = v115;
    *(v135 + 16) = v132;
    v105 = v238;
    *(v135 + 24) = v119;
    *(v135 + 32) = v123;
    *(v135 + 40) = v125;
    *(v135 + 48) = v127;
    *(v135 + 56) = v129;
    *(v135 + 64) = v131;
    *(v135 + 72) = 0;
    v136 = *&v246[80];
    *(v135 + 137) = *&v246[64];
    *(v135 + 153) = v136;
    *(v135 + 169) = *&v246[96];
    v137 = *&v246[111];
    v138 = *&v246[16];
    *(v135 + 73) = *v246;
    *(v135 + 89) = v138;
    v139 = *&v246[48];
    *(v135 + 105) = *&v246[32];
    *(v135 + 121) = v139;
    *(v135 + 184) = v137;
    *(v135 + 192) = v134;
    *(v135 + 200) = v133;
    v140 = swift_getKeyPath();
    v141 = v205;
    sub_1C2C71D5C(v135, v205, &qword_1EC064A28);
    v142 = v220;
    v143 = (v141 + *(v220 + 36));
    *v143 = v140;
    v143[1] = 0x3FEA3D70A3D70A3DLL;
    v144 = v141;
    v145 = v204;
    sub_1C2C71D5C(v144, v204, &qword_1EC064A30);
    sub_1C2C71D5C(v145, v110, &qword_1EC064A30);
    (*(v219 + 56))(v110, 0, 1, v142);
  }

  sub_1C2E75184();
  v213 = type metadata accessor for ContactAvatarTileView.Caption;
  sub_1C2C73C8C(v221, v244, type metadata accessor for ContactAvatarTileView.Caption);
  sub_1C2E75184();
  v146 = v284;
  v147 = v285;
  __swift_project_boxed_opaque_existential_1(v283, v284);
  (*(v147 + 64))(v146, v147);
  __swift_destroy_boxed_opaque_existential_1(v283);
  v148 = v218;
  sub_1C2C73C8C(v105, v218, type metadata accessor for ContactAvatarTileView);
  v217 = swift_allocObject();
  v149 = v216;
  sub_1C2C71CF4(v148, v217 + v216, type metadata accessor for ContactAvatarTileView);
  sub_1C2C73C8C(v105, v148, type metadata accessor for ContactAvatarTileView);
  v234 = swift_allocObject();
  sub_1C2C71CF4(v148, v234 + v149, type metadata accessor for ContactAvatarTileView);
  v150 = v236[13];
  v151 = *(v105 + v236[12]);
  LODWORD(v235) = (v151 == 2) | v151;
  v152 = *(v105 + v150);
  v218 = *(v105 + v150 + 8);
  v219 = v152;
  LODWORD(v238) = *(v105 + v150 + 16);
  v153 = (v105 + v236[6]);
  v154 = v153[1];
  v236 = *v153;
  v220 = v153[2];
  v221 = v154;
  v155 = v229;
  v156 = *(v229 + 24);
  v157 = v226;
  (*(v237 + 56))(v226, 1, 1, v243);
  v158 = v227;
  sub_1C2C736A4(v157, v227, &qword_1EC05E0F0);

  v159 = v228;
  sub_1C2E75174();
  sub_1C2C73644(v157, &qword_1EC05E0F0);
  v160 = v155[13];
  *(v159 + v160) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E250);
  swift_storeEnumTagMultiPayload();
  v161 = v155[14];
  *(v159 + v161) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DA58);
  swift_storeEnumTagMultiPayload();
  *(v159 + v155[15]) = 2;
  sub_1C2C6E3A4(v286, &v271);
  sub_1C2C6E3A4(&v271, &v259);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E0E8);
  sub_1C2E75174();
  __swift_destroy_boxed_opaque_existential_1(&v271);
  v162 = v225;
  v163 = v213;
  sub_1C2C73C8C(v244, v225, v213);
  sub_1C2C73C8C(v162, v224, v163);
  sub_1C2E75174();
  sub_1C2C735AC(v162, type metadata accessor for ContactAvatarTileView.Caption);
  v164 = v240;
  sub_1C2C736A4(v240, v157, &qword_1EC05E0F0);
  sub_1C2C73644(v159 + v156, &qword_1EC05E0D0);
  sub_1C2C736A4(v157, v158, &qword_1EC05E0F0);
  sub_1C2E75174();
  sub_1C2C73644(v157, &qword_1EC05E0F0);
  v165 = v159 + v155[7];
  v166 = swift_allocObject();
  v167 = v217;
  *(v166 + 16) = sub_1C2E5B5E4;
  *(v166 + 24) = v167;
  *&v259 = sub_1C2D0BD8C;
  *(&v259 + 1) = v166;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E0F8);
  sub_1C2E75174();
  v168 = v272;
  *v165 = v271;
  *(v165 + 16) = v168;
  v169 = v159 + v155[8];
  v170 = swift_allocObject();
  v171 = v234;
  *(v170 + 16) = sub_1C2E5B5FC;
  *(v170 + 24) = v171;
  *&v259 = sub_1C2D0BD8C;
  *(&v259 + 1) = v170;
  sub_1C2E75174();

  sub_1C2C73644(v164, &qword_1EC05E0F0);
  sub_1C2C735AC(v244, type metadata accessor for ContactAvatarTileView.Caption);
  __swift_destroy_boxed_opaque_existential_1(v286);
  v172 = v272;
  *v169 = v271;
  *(v169 + 16) = v172;
  *(v159 + v155[9]) = v235 & 1;
  v173 = v159 + v155[11];
  v174 = v218;
  *v173 = v219;
  *(v173 + 8) = v174;
  *(v173 + 16) = v238;
  v175 = (v159 + v155[12]);
  v176 = v220;
  v177 = v221;
  *v175 = v236;
  v175[1] = v177;
  v175[2] = v176;
  v178 = (v159 + v155[10]);
  v179 = v222;
  *v178 = v223;
  v178[1] = v179;
  v180 = v231;
  sub_1C2C71CF4(v159, v231, _s13AccessoryViewVMa);
  v181 = v241;
  sub_1C2C736A4(v245, v241, &qword_1EC064A60);
  v257 = v297;
  v258[0] = v298[0];
  *(v258 + 9) = *(v298 + 9);
  v253 = v293;
  v254 = v294;
  v255 = v295;
  v256 = v296;
  v249 = v289;
  v250 = v290;
  v251 = v291;
  v252 = v292;
  v247 = v287;
  v248 = v288;
  v182 = v242;
  v183 = v230;
  sub_1C2C736A4(v242, v230, &qword_1EC064A38);
  v184 = v233;
  sub_1C2C73C8C(v180, v233, _s13AccessoryViewVMa);
  v185 = v232;
  sub_1C2C736A4(v181, v232, &qword_1EC064A60);
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064A70);
  v187 = v186[12];
  v188 = v258[0];
  v269 = v257;
  v270[0] = v258[0];
  *(v270 + 9) = *(v258 + 9);
  v189 = v253;
  v190 = v254;
  v265 = v253;
  v266 = v254;
  v192 = v255;
  v191 = v256;
  v267 = v255;
  v268 = v256;
  v194 = v251;
  v193 = v252;
  v263 = v251;
  v264 = v252;
  v195 = v249;
  v196 = v250;
  v261 = v249;
  v262 = v250;
  v198 = v247;
  v197 = v248;
  v259 = v247;
  v260 = v248;
  v199 = (v185 + v187);
  v199[10] = v257;
  v199[11] = v188;
  *(v199 + 185) = *(v258 + 9);
  v199[6] = v189;
  v199[7] = v190;
  v199[8] = v192;
  v199[9] = v191;
  v199[2] = v195;
  v199[3] = v196;
  v199[4] = v194;
  v199[5] = v193;
  *v199 = v198;
  v199[1] = v197;
  sub_1C2C736A4(v183, v185 + v186[16], &qword_1EC064A38);
  v200 = v185 + v186[20];
  *v200 = 0;
  *(v200 + 8) = 1;
  sub_1C2C73C8C(v184, v185 + v186[24], _s13AccessoryViewVMa);
  sub_1C2C736A4(&v259, &v271, &qword_1EC064A78);
  sub_1C2C735AC(v180, _s13AccessoryViewVMa);
  sub_1C2C73644(v182, &qword_1EC064A38);
  sub_1C2C73644(v245, &qword_1EC064A60);
  sub_1C2C735AC(v184, _s13AccessoryViewVMa);
  sub_1C2C73644(v183, &qword_1EC064A38);
  v281 = v257;
  v282[0] = v258[0];
  *(v282 + 9) = *(v258 + 9);
  v277 = v253;
  v278 = v254;
  v280 = v256;
  v279 = v255;
  v273 = v249;
  v274 = v250;
  v275 = v251;
  v276 = v252;
  v271 = v247;
  v272 = v248;
  sub_1C2C73644(&v271, &qword_1EC064A78);
  return sub_1C2C73644(v241, &qword_1EC064A60);
}

uint64_t sub_1C2E5872C()
{
  v1 = v0;
  v2 = type metadata accessor for ContactAvatarTileView();
  v24 = *(v2 - 8);
  v3 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v4 = sub_1C2E72B04();
  v25 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC05CC50 != -1)
  {
    swift_once();
  }

  v7 = sub_1C2E72B44();
  __swift_project_value_buffer(v7, qword_1EC075A48);
  v8 = sub_1C2E72B24();
  v9 = sub_1C2E75FA4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1C2C6B000, v8, v9, "Performing action for secondary tap", v10, 2u);
    MEMORY[0x1C6927DF0](v10, -1, -1);
  }

  v11 = v1 + *(v2 + 36);
  v12 = *(v11 + 8);
  v26[2] = *v11;
  v26[3] = v12;
  v27 = *(v11 + 16);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064A08);
  MEMORY[0x1C6925DB0](v26, v13);
  v14 = v26[0];
  if (v26[0])
  {
    v15 = sub_1C2E72B24();
    v16 = sub_1C2E75FA4();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1C2C6B000, v15, v16, "Performing secondary action", v17, 2u);
      MEMORY[0x1C6927DF0](v17, -1, -1);
    }

    v14();
    return sub_1C2C71668(v14);
  }

  else
  {
    v19 = sub_1C2E72B24();
    v20 = sub_1C2E75FA4();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1C2C6B000, v19, v20, "Falling back to primary action", v21, 2u);
      MEMORY[0x1C6927DF0](v21, -1, -1);
    }

    sub_1C2E5670C(v6);
    sub_1C2C73C8C(v1, &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ContactAvatarTileView);
    v22 = (*(v24 + 80) + 16) & ~*(v24 + 80);
    v23 = swift_allocObject();
    sub_1C2C71CF4(&v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22, type metadata accessor for ContactAvatarTileView);
    sub_1C2E72AF4();

    return (*(v25 + 8))(v6, v4);
  }
}

uint64_t sub_1C2E58B14()
{
  v1 = v0;
  v2 = type metadata accessor for ContactAvatarTileView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = sub_1C2E72B04();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC05CC50 != -1)
  {
    swift_once();
  }

  v9 = sub_1C2E72B44();
  __swift_project_value_buffer(v9, qword_1EC075A48);
  v10 = sub_1C2E72B24();
  v11 = sub_1C2E75FA4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1C2C6B000, v10, v11, "Performing action for primary tap", v12, 2u);
    MEMORY[0x1C6927DF0](v12, -1, -1);
  }

  sub_1C2E5670C(v8);
  sub_1C2C73C8C(v1, &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ContactAvatarTileView);
  v13 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v14 = swift_allocObject();
  sub_1C2C71CF4(&v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for ContactAvatarTileView);
  sub_1C2E72AF4();

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1C2E58DA4()
{
  v1 = v0;
  if (qword_1EC05CC50 != -1)
  {
    swift_once();
  }

  v2 = sub_1C2E72B44();
  __swift_project_value_buffer(v2, qword_1EC075A48);
  v3 = sub_1C2E72B24();
  v4 = sub_1C2E75FA4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1C2C6B000, v3, v4, "Performing action for tertiary tap", v5, 2u);
    MEMORY[0x1C6927DF0](v5, -1, -1);
  }

  v6 = v1 + *(type metadata accessor for ContactAvatarTileView() + 40);
  v7 = *(v6 + 8);
  v15[2] = *v6;
  v15[3] = v7;
  v16 = *(v6 + 16);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064A08);
  v9 = MEMORY[0x1C6925DB0](v15, v8);
  v10 = v15[0];
  if (v15[0])
  {
    (v15[0])(v9);
    return sub_1C2C71668(v10);
  }

  else
  {
    v12 = sub_1C2E72B24();
    v13 = sub_1C2E75FA4();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1C2C6B000, v12, v13, "Falling back to secondary action", v14, 2u);
      MEMORY[0x1C6927DF0](v14, -1, -1);
    }

    return sub_1C2E5872C();
  }
}

uint64_t ContactAvatarTileView.body.getter()
{
  v1 = v0;
  v2 = type metadata accessor for ContactAvatarTileView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064968);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12[-v7];
  sub_1C2C73C8C(v1, &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for ContactAvatarTileView);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_1C2C71CF4(&v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v10 + v9, type metadata accessor for ContactAvatarTileView);
  v13 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064970);
  sub_1C2E5AC08();
  sub_1C2E751C4();
  sub_1C2C94F38(&qword_1EC05B3C0, &qword_1EC064968);
  sub_1C2C71BF4();
  sub_1C2E74984();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1C2E591DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v56 = sub_1C2E737C4() - 8;
  MEMORY[0x1EEE9AC00](v56);
  v57 = (&v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v4);
  v55 = (&v53 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064998);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v53 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064990);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v53 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064988);
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v53 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064980);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v53 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064978);
  v21 = v20 - 8;
  MEMORY[0x1EEE9AC00](v20);
  v54 = &v53 - v22;
  sub_1C2C73CF4(v8);
  sub_1C2E75704();
  sub_1C2E737F4();
  sub_1C2C71D5C(v8, v12, &qword_1EC064998);
  v23 = &v12[*(v10 + 44)];
  v24 = v65;
  *(v23 + 4) = v64;
  *(v23 + 5) = v24;
  *(v23 + 6) = v66;
  v25 = v61;
  *v23 = v60;
  *(v23 + 1) = v25;
  v26 = v63;
  *(v23 + 2) = v62;
  *(v23 + 3) = v26;
  v27 = sub_1C2E75744();
  v29 = v28;
  v30 = &v16[*(v14 + 44)];
  sub_1C2E59770(a1, v30);
  v31 = (v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0649B8) + 36));
  *v31 = v27;
  v31[1] = v29;
  sub_1C2C71D5C(v12, v16, &qword_1EC064990);
  type metadata accessor for ContactAvatarTileView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E178);
  sub_1C2E75184();
  v32 = sub_1C2E56554() > 0;
  v33 = v19;
  sub_1C2E5A1D8(v59, v32, v19);
  __swift_destroy_boxed_opaque_existential_1(v59);
  sub_1C2C73644(v16, &qword_1EC064988);
  v34 = 35.0;
  if (sub_1C2E5A7DC())
  {
    v35 = 60.0;
  }

  else
  {
    v35 = 35.0;
  }

  v36 = v56;
  v37 = *(v56 + 28);
  v38 = *MEMORY[0x1E697F468];
  v39 = sub_1C2E73D44();
  v40 = *(*(v39 - 8) + 104);
  v41 = v55;
  v40(v55 + v37, v38, v39);
  *v41 = v35;
  v41[1] = v35;
  v42 = v41;
  v43 = *(v21 + 44);
  v44 = v54;
  v45 = &v54[v43];
  v46 = MEMORY[0x1E697EAF0];
  sub_1C2C71CF4(v42, &v54[v43], MEMORY[0x1E697EAF0]);
  *&v45[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FDE0) + 36)] = 256;
  sub_1C2C71D5C(v33, v44, &qword_1EC064980);
  if (sub_1C2E5A7DC())
  {
    v34 = 60.0;
  }

  v47 = v57;
  v40(v57 + *(v36 + 28), v38, v39);
  *v47 = v34;
  v47[1] = v34;
  v48 = v47;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064970);
  v50 = v58;
  v51 = v58 + *(v49 + 36);
  sub_1C2C71CF4(v48, v51, v46);
  *(v51 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0649C8) + 36)) = 0;
  return sub_1C2C71D5C(v44, v50, &qword_1EC064978);
}

uint64_t sub_1C2E59770@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v79 = a2;
  v3 = type metadata accessor for ContactAvatarTileView();
  v66 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v67 = v4;
  v69 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C2E73714();
  v72 = *(v5 - 8);
  v73 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v71 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0649E8);
  v77 = *(v7 - 8);
  v78 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v76 = &v55 - v8;
  v55 = type metadata accessor for ContactAvatarTileView.ImageStyle(0);
  MEMORY[0x1EEE9AC00](v55);
  v56 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v59 = &v55 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E0F0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v65 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v55 - v15;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0649F0);
  MEMORY[0x1EEE9AC00](v68);
  v70 = &v55 - v17;
  v74 = v3;
  v18 = *(v3 + 28);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E178);
  sub_1C2E75184();
  v21 = v86;
  v20 = v87;
  v22 = __swift_project_boxed_opaque_existential_1(v85, v86);
  v83[3] = v21;
  v84 = *(v20 + 8);
  v23 = v84;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v83);
  (*(*(v21 - 8) + 16))(boxed_opaque_existential_1, v22, v21);
  v57 = sub_1C2C742D0();
  v75 = a1;
  v63 = v19;
  v64 = v18;
  sub_1C2E75184();
  v25 = *(&v95 + 1);
  v24 = v96;
  __swift_project_boxed_opaque_existential_1(&v94, *(&v95 + 1));
  (*(v24 + 88))(v25, v24);
  __swift_destroy_boxed_opaque_existential_1(&v94);
  v26 = type metadata accessor for ContactAvatarTileView.Caption(0);
  v27 = *(v26 - 8);
  v61 = *(v27 + 48);
  v62 = v26;
  v60 = v27 + 48;
  LOBYTE(v20) = v61(v16, 1) != 1;
  sub_1C2C73644(v16, &qword_1EC05E0F0);
  sub_1C2C6E3A4(v83, v82);
  LOBYTE(v88) = 0;
  sub_1C2E75174();
  v28 = v94;
  v29 = *(&v94 + 1);
  LOBYTE(v97) = v94;
  *(&v97 + 1) = *(&v94 + 1);
  v80 = 0;
  v81 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060210);
  sub_1C2E75174();
  v30 = v88;
  sub_1C2C6E3A4(v82, &v94);
  BYTE8(v96) = v57;
  v80 = 0;
  v81 = 0;
  sub_1C2E75174();
  v31 = v30;
  v32 = v59;
  sub_1C2C71668(v31);

  v98 = v88;
  v99 = v89;
  BYTE9(v96) = 1;
  BYTE10(v96) = v20;
  (*(v23 + 40))(v21, v23);
  LOBYTE(v88) = v28;
  *(&v88 + 1) = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E7F8);
  sub_1C2E75184();
  if ((v80 & 1) == 0)
  {
    v33 = v56;
    sub_1C2C73C8C(v32, v56, type metadata accessor for ContactAvatarTileView.ImageStyle);
    if ((swift_getEnumCaseMultiPayload() | 2) == 2)
    {
      sub_1C2C735AC(v33, type metadata accessor for ContactAvatarTileView.ImageStyle);
      LOBYTE(v88) = v28;
      *(&v88 + 1) = v29;
      LOBYTE(v80) = 1;
      sub_1C2E75194();
    }

    else
    {
      sub_1C2C735AC(v33, type metadata accessor for ContactAvatarTileView.ImageStyle);
    }
  }

  sub_1C2C735AC(v32, type metadata accessor for ContactAvatarTileView.ImageStyle);
  __swift_destroy_boxed_opaque_existential_1(v83);
  sub_1C2C7360C(&v94, &v88);
  __swift_destroy_boxed_opaque_existential_1(v82);
  sub_1C2C746B0(&v94);
  __swift_destroy_boxed_opaque_existential_1(v85);
  KeyPath = swift_getKeyPath();
  v35 = v75;
  sub_1C2E75184();
  v36 = *(&v95 + 1);
  v37 = v96;
  __swift_project_boxed_opaque_existential_1(&v94, *(&v95 + 1));
  v38 = v65;
  (*(v37 + 88))(v36, v37);
  __swift_destroy_boxed_opaque_existential_1(&v94);
  v39 = (v61)(v38, 1, v62);
  sub_1C2C73644(v38, &qword_1EC05E0F0);
  if (v39 == 1)
  {
    v40 = 1;
  }

  else
  {
    v40 = 2;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E800);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_1C2E7A930;
  v42 = [objc_opt_self() secondarySystemBackgroundColor];
  *(v41 + 32) = sub_1C2E74E94();
  v96 = v90;
  v97 = v91;
  v98 = v92;
  v94 = v88;
  v95 = v89;
  v99 = v93;
  v100 = KeyPath;
  v101 = v40;
  v102 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0649F8);
  sub_1C2E5B300();
  v43 = v70;
  sub_1C2E74C54();
  sub_1C2C73644(&v94, &qword_1EC0649F8);
  v44 = v71;
  sub_1C2E73704();
  v45 = v69;
  sub_1C2C73C8C(v35, v69, type metadata accessor for ContactAvatarTileView);
  v46 = (*(v66 + 80) + 16) & ~*(v66 + 80);
  v47 = swift_allocObject();
  sub_1C2C71CF4(v45, v47 + v46, type metadata accessor for ContactAvatarTileView);
  sub_1C2C71CAC(&qword_1EC05B628, MEMORY[0x1E697C220]);
  v48 = v76;
  v49 = v73;
  sub_1C2E75454();

  (*(v72 + 8))(v44, v49);
  v50 = v35 + *(v74 + 44);
  v51 = *(v50 + 8);
  *&v94 = *v50;
  *(&v94 + 1) = v51;
  v95 = *(v50 + 16);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064A08);
  MEMORY[0x1C6925DB0](&v88, v52);
  if (v88)
  {
    sub_1C2C71668(v88);
    sub_1C2E73104();
  }

  else
  {
    sub_1C2E73114();
  }

  sub_1C2E5B428();
  sub_1C2C94F38(&qword_1EC05BA08, &qword_1EC0649E8);
  v53 = v78;
  sub_1C2E74BF4();
  (*(v77 + 8))(v48, v53);
  return sub_1C2C73644(v43, &qword_1EC0649F0);
}

void *sub_1C2E5A150(uint64_t a1, uint64_t a2)
{
  v2 = a2 + *(type metadata accessor for ContactAvatarTileView() + 44);
  v3 = *(v2 + 8);
  v7[2] = *v2;
  v7[3] = v3;
  v8 = *(v2 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064A08);
  result = MEMORY[0x1C6925DB0](v7, v4);
  v6 = v7[0];
  if (v7[0])
  {
    (v7[0])(result);
    return sub_1C2C71668(v6);
  }

  return result;
}

uint64_t sub_1C2E5A1D8@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v42 = a3;
  v5 = sub_1C2E73C34();
  v35 = *(v5 - 8);
  v36 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0649D0);
  v37 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v9 = v34 - v8;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0649D8);
  MEMORY[0x1EEE9AC00](v38);
  v11 = v34 - v10;
  v12 = type metadata accessor for ContactAvatarTileView.ImageStyle(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0649C0);
  MEMORY[0x1EEE9AC00](v15);
  v40 = v34 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0649E0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v34 - v18;
  if (a2)
  {
    sub_1C2C736A4(v41, v34 - v18, &qword_1EC064988);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064988);
    sub_1C2E5AE04();
    sub_1C2E5B1B4();
    return sub_1C2E73F44();
  }

  else
  {
    v34[0] = v17;
    v34[1] = v15;
    v22 = a1[3];
    v21 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v22);
    (*(*(v21 + 8) + 40))(v22);
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F140) + 48);
      sub_1C2C736A4(v41, v11, &qword_1EC064988);
      swift_storeEnumTagMultiPayload();
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064988);
      v25 = sub_1C2E5AE04();
      v43 = v24;
      v44 = v25;
      swift_getOpaqueTypeConformance2();
      v26 = v40;
      sub_1C2E73F44();
      sub_1C2C73644(&v14[v23], &unk_1EC061C20);
      v27 = sub_1C2E71784();
      (*(*(v27 - 8) + 8))(v14, v27);
    }

    else
    {
      v29 = v35;
      v28 = v36;
      (*(v35 + 104))(v7, *MEMORY[0x1E697F3A0], v36);
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064988);
      v31 = sub_1C2E5AE04();
      sub_1C2E749E4();
      (*(v29 + 8))(v7, v28);
      v32 = v37;
      v33 = v39;
      (*(v37 + 16))(v11, v9, v39);
      swift_storeEnumTagMultiPayload();
      v43 = v30;
      v44 = v31;
      swift_getOpaqueTypeConformance2();
      v26 = v40;
      sub_1C2E73F44();
      (*(v32 + 8))(v9, v33);
      sub_1C2C735AC(v14, type metadata accessor for ContactAvatarTileView.ImageStyle);
    }

    sub_1C2C736A4(v26, v19, &qword_1EC0649C0);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064988);
    sub_1C2E5AE04();
    sub_1C2E5B1B4();
    sub_1C2E73F44();
    return sub_1C2C73644(v26, &qword_1EC0649C0);
  }
}

uint64_t sub_1C2E5A7DC()
{
  v16 = sub_1C2E73BA4();
  v1 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DA58);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v15 - v5;
  v7 = sub_1C2E73554();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ContactAvatarTileView();
  sub_1C2C736A4(v0 + *(v11 + 56), v6, &qword_1EC05DA58);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v8 + 32))(v10, v6, v7);
  }

  else
  {
    sub_1C2E75FD4();
    v12 = sub_1C2E74404();
    sub_1C2E72B14();

    sub_1C2E73B94();
    swift_getAtKeyPath();

    (*(v1 + 8))(v3, v16);
  }

  v13 = sub_1C2E73544();
  (*(v8 + 8))(v10, v7);
  return v13 & 1;
}

void *sub_1C2E5AA68(uint64_t a1)
{
  v1 = a1 + *(type metadata accessor for ContactAvatarTileView() + 32);
  v2 = *(v1 + 8);
  v6[2] = *v1;
  v6[3] = v2;
  v7 = *(v1 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064A08);
  result = MEMORY[0x1C6925DB0](v6, v3);
  v5 = v6[0];
  if (v6[0])
  {
    (v6[0])(result);
    return sub_1C2C71668(v5);
  }

  return result;
}

uint64_t sub_1C2E5AB38(uint64_t a1)
{
  v2 = sub_1C2E72B04();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_1C2E73864();
}

unint64_t sub_1C2E5AC08()
{
  result = qword_1EC05B7C0;
  if (!qword_1EC05B7C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC064970);
    sub_1C2E5ACC0();
    sub_1C2C94F38(&qword_1EC05B4F8, &qword_1EC0649C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B7C0);
  }

  return result;
}

unint64_t sub_1C2E5ACC0()
{
  result = qword_1EC05B960;
  if (!qword_1EC05B960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC064978);
    sub_1C2E5AD78();
    sub_1C2C94F38(&qword_1EC05BA80, &qword_1EC05FDE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B960);
  }

  return result;
}

unint64_t sub_1C2E5AD78()
{
  result = qword_1EC05B590;
  if (!qword_1EC05B590)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC064980);
    sub_1C2E5AE04();
    sub_1C2E5B1B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B590);
  }

  return result;
}

unint64_t sub_1C2E5AE04()
{
  result = qword_1EC05B7E0;
  if (!qword_1EC05B7E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC064988);
    sub_1C2E5AEBC();
    sub_1C2C94F38(&qword_1EC05B5C8, &qword_1EC0649B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B7E0);
  }

  return result;
}

unint64_t sub_1C2E5AEBC()
{
  result = qword_1EC05B988;
  if (!qword_1EC05B988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC064990);
    sub_1C2E5AF48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B988);
  }

  return result;
}

unint64_t sub_1C2E5AF48()
{
  result = qword_1EC05B548;
  if (!qword_1EC05B548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC064998);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0649A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05E1A8);
    sub_1C2E5B070();
    sub_1C2C94F38(&qword_1EC05CAB8, &qword_1EC05E1A8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B548);
  }

  return result;
}

unint64_t sub_1C2E5B070()
{
  result = qword_1EC05B700;
  if (!qword_1EC05B700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0649A0);
    sub_1C2E5B0FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B700);
  }

  return result;
}

unint64_t sub_1C2E5B0FC()
{
  result = qword_1EC05B820;
  if (!qword_1EC05B820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0649A8);
    sub_1C2C94F38(&qword_1EC05B350, &qword_1EC0649B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B820);
  }

  return result;
}

unint64_t sub_1C2E5B1B4()
{
  result = qword_1EC05B588;
  if (!qword_1EC05B588)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0649C0);
    sub_1C2E5AE04();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC064988);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B588);
  }

  return result;
}

void sub_1C2E5B29C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
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

unint64_t sub_1C2E5B300()
{
  result = qword_1EC05B9A0;
  if (!qword_1EC05B9A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0649F8);
    sub_1C2C71DC4();
    sub_1C2C94F38(&qword_1EC05B460, &qword_1EC064A00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B9A0);
  }

  return result;
}

void *sub_1C2E5B3B8(uint64_t a1)
{
  v3 = *(type metadata accessor for ContactAvatarTileView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1C2E5A150(a1, v4);
}

unint64_t sub_1C2E5B428()
{
  result = qword_1EC05B7F8;
  if (!qword_1EC05B7F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0649F0);
    sub_1C2E5B300();
    sub_1C2C71CAC(&qword_1EDDCDA08, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B7F8);
  }

  return result;
}

unint64_t sub_1C2E5B4E4()
{
  result = qword_1EC05B9A8;
  if (!qword_1EC05B9A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC064A40);
    sub_1C2C71CAC(&qword_1EC05C088, _s11CaptionViewVMa);
    sub_1C2C94F38(&qword_1EDDCDA20, &qword_1EC05DCB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B9A8);
  }

  return result;
}

uint64_t objectdestroy_18Tm()
{
  v1 = type metadata accessor for ContactAvatarTileView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E250);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_1C2E72B04();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_1(v5 + v1[7]);

  v8 = v5 + v1[8];

  if (*(v8 + 16))
  {
  }

  v9 = v5 + v1[9];

  if (*(v9 + 16))
  {
  }

  v10 = v5 + v1[10];

  if (*(v10 + 16))
  {
  }

  v11 = v5 + v1[11];

  if (*(v11 + 16))
  {
  }

  v12 = v1[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DA58);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1C2E73554();
    (*(*(v13 - 8) + 8))(v5 + v12, v13);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1C2E5B958(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1C2E5B9A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C2E5BA14()
{
  sub_1C2E75CC4();
}

uint64_t FilterMenuViewModel.OccurrenceValue.hash(into:)()
{
  v1 = *v0;
  if (*(v0 + 16) == 1)
  {
    MEMORY[0x1C6927290](1);

    return sub_1C2E75CC4();
  }

  else
  {
    MEMORY[0x1C6927290](0);
    return MEMORY[0x1C6927290](v1);
  }
}

uint64_t FilterMenuViewModel.OccurrenceValue.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  sub_1C2E76854();
  if (v2 == 1)
  {
    MEMORY[0x1C6927290](1);
    sub_1C2E75CC4();
  }

  else
  {
    MEMORY[0x1C6927290](0);
    MEMORY[0x1C6927290](v1);
  }

  return sub_1C2E76894();
}

uint64_t sub_1C2E5BC7C()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  sub_1C2E76854();
  if (v2 == 1)
  {
    MEMORY[0x1C6927290](1);
    sub_1C2E75CC4();
  }

  else
  {
    MEMORY[0x1C6927290](0);
    MEMORY[0x1C6927290](v1);
  }

  return sub_1C2E76894();
}

uint64_t sub_1C2E5BD04()
{
  v1 = *v0;
  if (*(v0 + 16) == 1)
  {
    MEMORY[0x1C6927290](1);

    return sub_1C2E75CC4();
  }

  else
  {
    MEMORY[0x1C6927290](0);
    return MEMORY[0x1C6927290](v1);
  }
}

uint64_t sub_1C2E5BD8C()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  sub_1C2E76854();
  if (v2 == 1)
  {
    MEMORY[0x1C6927290](1);
    sub_1C2E75CC4();
  }

  else
  {
    MEMORY[0x1C6927290](0);
    MEMORY[0x1C6927290](v1);
  }

  return sub_1C2E76894();
}

uint64_t FilterMenuViewModel.Action.title(occurrences:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  if (v3 > 3)
  {
    if (*v1 <= 5u && v3 == 4 && (a1[2] & 1) == 0 && v2)
    {
      type metadata accessor for StringDummy();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v12 = [objc_opt_self() bundleForClass_];
LABEL_26:
      sub_1C2E71684();

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC062D90);
      v21 = swift_allocObject();
      v22 = MEMORY[0x1E69E6530];
      *(v21 + 16) = xmmword_1C2E7A930;
      v23 = MEMORY[0x1E69E65A8];
      *(v21 + 56) = v22;
      *(v21 + 64) = v23;
      *(v21 + 32) = v2;
      v24 = sub_1C2E75C34();

      return v24;
    }

LABEL_30:
    type metadata accessor for StringDummy();
    v25 = swift_getObjCClassFromMetadata();
    v12 = [objc_opt_self() bundleForClass_];
LABEL_31:
    v17 = sub_1C2E71684();

    return v17;
  }

  if (*v1 <= 1u)
  {
    if (*v1 && (a1[2] & 1) == 0)
    {
      type metadata accessor for StringDummy();
      v18 = swift_getObjCClassFromMetadata();
      v12 = [objc_opt_self() bundleForClass_];
      if (v2)
      {
        goto LABEL_26;
      }

      goto LABEL_31;
    }

    goto LABEL_30;
  }

  if (v3 != 2)
  {
    if ((a1[2] & 1) == 0)
    {
      type metadata accessor for StringDummy();
      v19 = swift_getObjCClassFromMetadata();
      v12 = [objc_opt_self() bundleForClass_];
      if (v2)
      {
        goto LABEL_26;
      }

      goto LABEL_31;
    }

    goto LABEL_30;
  }

  if (a1[2])
  {
    v4 = a1[1];
    type metadata accessor for StringDummy();
    v5 = swift_getObjCClassFromMetadata();
    v6 = objc_opt_self();

    v7 = [v6 bundleForClass_];
    sub_1C2E71684();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC062D90);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1C2E7A930;
    *(v8 + 56) = MEMORY[0x1E69E6158];
    *(v8 + 64) = sub_1C2CAB500();
    *(v8 + 32) = v2;
    *(v8 + 40) = v4;
    v9 = sub_1C2E75C34();

    return v9;
  }

  type metadata accessor for StringDummy();
  v11 = swift_getObjCClassFromMetadata();
  v12 = [objc_opt_self() bundleForClass_];
  if (!v2)
  {
    goto LABEL_31;
  }

  sub_1C2E71684();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC062D90);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1C2E7A930;
  v14 = sub_1C2E76774();
  v16 = v15;
  *(v13 + 56) = MEMORY[0x1E69E6158];
  *(v13 + 64) = sub_1C2CAB500();
  *(v13 + 32) = v14;
  *(v13 + 40) = v16;
  v17 = sub_1C2E75C34();

  return v17;
}

uint64_t sub_1C2E5C710(_BYTE *a1)
{
  v2 = 0x6F65646976;
  v3 = *v1;
  if (v3 <= 3)
  {
    if (*v1 > 1u)
    {
      if (v3 == 2)
      {
        return 0x6E6964726F636572;
      }

      else
      {
        return 0x7571732E79616C70;
      }
    }

    else if (*v1)
    {
      return 0x676461622E707061;
    }

    else if (*a1)
    {
      return 0x6F65646976;
    }

    else
    {
      return 0x656E6F6870;
    }
  }

  else
  {
    if (v3 == 7)
    {
      v2 = 0;
    }

    if (v3 == 6)
    {
      v2 = 0x6E6769736F6ELL;
    }

    v4 = 0xD000000000000025;
    if (v3 != 4)
    {
      v4 = 0x69622E6B72616D78;
    }

    if (*v1 <= 5u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1C2E5C840()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    v6 = 0x736C6C6163;
    v7 = 0x69616D6563696F76;
    if (v1 != 2)
    {
      v7 = 0x69616D6F65646976;
    }

    if (*v0)
    {
      v6 = 0x64657373696DLL;
    }

    if (*v0 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0x64656B636F6C62;
    v3 = 0x746C69466C6C6163;
    if (v1 != 7)
    {
      v3 = 0x656D695465636166;
    }

    if (v1 != 6)
    {
      v2 = v3;
    }

    v4 = 0x7374736575716572;
    if (v1 != 4)
    {
      v4 = 1802401130;
    }

    if (*v0 <= 5u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

CommunicationsUI::FilterMenuViewModel::Action_optional __swiftcall FilterMenuViewModel.Action.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C2E76754();

  v5 = 9;
  if (v3 < 9)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1C2E5C9D4@<X0>(uint64_t *a1@<X8>)
{
  result = FilterMenuViewModel.Action.description.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C2E5CAB0()
{
  sub_1C2E76854();
  sub_1C2E5BA14();
  return sub_1C2E76894();
}

uint64_t sub_1C2E5CB00()
{
  sub_1C2E76854();
  sub_1C2E5BA14();
  return sub_1C2E76894();
}

uint64_t FilterMenuViewModel.Style.hashValue.getter()
{
  v1 = *v0;
  sub_1C2E76854();
  MEMORY[0x1C6927290](v1);
  return sub_1C2E76894();
}

uint64_t FilterMenuViewModel.style.getter@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1C2C6DFF8(&qword_1EC05CEC0, type metadata accessor for FilterMenuViewModel);
  sub_1C2E71A64();

  v3 = OBJC_IVAR____TtC16CommunicationsUI19FilterMenuViewModel__style;
  result = swift_beginAccess();
  *a1 = *(v5 + v3);
  return result;
}

uint64_t FilterMenuViewModel.style.setter(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC16CommunicationsUI19FilterMenuViewModel__style;
  result = swift_beginAccess();
  if (v2 == *(v1 + v3))
  {
    *(v1 + v3) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2C6DFF8(&qword_1EC05CEC0, type metadata accessor for FilterMenuViewModel);
    sub_1C2E71A54();
  }

  return result;
}

void (*FilterMenuViewModel.style.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC16CommunicationsUI19FilterMenuViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1C2C6DFF8(&qword_1EC05CEC0, type metadata accessor for FilterMenuViewModel);
  sub_1C2E71A64();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C2E71A84();

  swift_beginAccess();
  return sub_1C2E5CF3C;
}

uint64_t FilterMenuViewModel.collapseCallsAndMissed.getter()
{
  swift_getKeyPath();
  v3 = v0;
  sub_1C2C6DFF8(&qword_1EC05CEC0, type metadata accessor for FilterMenuViewModel);
  sub_1C2E71A64();

  v1 = OBJC_IVAR____TtC16CommunicationsUI19FilterMenuViewModel__collapseCallsAndMissed;
  swift_beginAccess();
  return *(v3 + v1);
}

uint64_t sub_1C2E5D018@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1C2C6DFF8(&qword_1EC05CEC0, type metadata accessor for FilterMenuViewModel);
  sub_1C2E71A64();

  v6 = *a2;
  result = swift_beginAccess();
  *a3 = *(v5 + v6);
  return result;
}

uint64_t FilterMenuViewModel.collapseCallsAndMissed.setter(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR____TtC16CommunicationsUI19FilterMenuViewModel__collapseCallsAndMissed;
  result = swift_beginAccess();
  if (*(v1 + v3) == v2)
  {
    *(v1 + v3) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2C6DFF8(&qword_1EC05CEC0, type metadata accessor for FilterMenuViewModel);
    sub_1C2E71A54();
  }

  return result;
}

void (*FilterMenuViewModel.collapseCallsAndMissed.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC16CommunicationsUI19FilterMenuViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1C2C6DFF8(&qword_1EC05CEC0, type metadata accessor for FilterMenuViewModel);
  sub_1C2E71A64();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C2E71A84();

  swift_beginAccess();
  return sub_1C2E5D37C;
}

uint64_t sub_1C2E5D388()
{
  swift_getKeyPath();
  sub_1C2C6DFF8(&qword_1EC05CEC0, type metadata accessor for FilterMenuViewModel);
  sub_1C2E71A64();
}

uint64_t sub_1C2E5D434@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2C6DFF8(&qword_1EC05CEC0, type metadata accessor for FilterMenuViewModel);
  sub_1C2E71A64();

  *a2 = *(v3 + OBJC_IVAR____TtC16CommunicationsUI19FilterMenuViewModel__backingActions);
}

uint64_t sub_1C2E5D4E8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16CommunicationsUI19FilterMenuViewModel__backingActions;

  v5 = sub_1C2CF7BDC(v4, a1);

  if (v5)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2C6DFF8(&qword_1EC05CEC0, type metadata accessor for FilterMenuViewModel);
    sub_1C2E71A54();
  }
}

uint64_t FilterMenuViewModel.actions.getter()
{
  v1 = v0;
  swift_getKeyPath();
  sub_1C2C6DFF8(&qword_1EC05CEC0, type metadata accessor for FilterMenuViewModel);
  sub_1C2E71A64();

  v2 = OBJC_IVAR____TtC16CommunicationsUI19FilterMenuViewModel__collapseCallsAndMissed;
  swift_beginAccess();
  LODWORD(v2) = *(v1 + v2);
  swift_getKeyPath();
  if (v2 == 1)
  {
    sub_1C2E71A64();

    v3 = *(v1 + OBJC_IVAR____TtC16CommunicationsUI19FilterMenuViewModel__backingActions);
    v4 = *(v3 + 16);
    if (v4)
    {

      v5 = MEMORY[0x1E69E7CC0];
      v6 = 32;
      do
      {
        v7 = *(v3 + v6);
        if (v7 <= 3 && *(v3 + v6) <= 1u && *(v3 + v6))
        {
        }

        else
        {
          v8 = sub_1C2E767A4();

          if ((v8 & 1) == 0)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1C2CA4EE0(0, *(v5 + 16) + 1, 1);
            }

            v10 = *(v5 + 16);
            v9 = *(v5 + 24);
            if (v10 >= v9 >> 1)
            {
              sub_1C2CA4EE0((v9 > 1), v10 + 1, 1);
            }

            *(v5 + 16) = v10 + 1;
            *(v5 + v10 + 32) = v7;
          }
        }

        ++v6;
        --v4;
      }

      while (v4);
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    sub_1C2E71A64();

    v5 = *(v1 + OBJC_IVAR____TtC16CommunicationsUI19FilterMenuViewModel__backingActions);
  }

  return v5;
}

uint64_t FilterMenuViewModel.actions.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16CommunicationsUI19FilterMenuViewModel__backingActions;

  v5 = sub_1C2CF7BDC(v4, a1);

  if (v5)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2C6DFF8(&qword_1EC05CEC0, type metadata accessor for FilterMenuViewModel);
    sub_1C2E71A54();
  }
}

uint64_t (*FilterMenuViewModel.actions.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = FilterMenuViewModel.actions.getter();
  return sub_1C2E5DB18;
}

uint64_t sub_1C2E5DB18(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return FilterMenuViewModel.actions.setter(*a1);
  }

  FilterMenuViewModel.actions.setter(v2);
}

uint64_t sub_1C2E5DB70@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2C6DFF8(&qword_1EC05CEC0, type metadata accessor for FilterMenuViewModel);
  sub_1C2E71A64();

  v4 = OBJC_IVAR____TtC16CommunicationsUI19FilterMenuViewModel__selectedAction;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t FilterMenuViewModel.selectedAction.setter(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC16CommunicationsUI19FilterMenuViewModel__selectedAction;
  swift_beginAccess();
  result = sub_1C2E063A0(*(v1 + v3), v2);
  if (result)
  {
    *(v1 + v3) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2C6DFF8(&qword_1EC05CEC0, type metadata accessor for FilterMenuViewModel);
    sub_1C2E71A54();
  }

  return result;
}

void (*FilterMenuViewModel.selectedAction.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC16CommunicationsUI19FilterMenuViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1C2C6DFF8(&qword_1EC05CEC0, type metadata accessor for FilterMenuViewModel);
  sub_1C2E71A64();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C2E71A84();

  swift_beginAccess();
  return sub_1C2E5DEE4;
}

Swift::Bool __swiftcall FilterMenuViewModel.isSelected(_:)(CommunicationsUI::FilterMenuViewModel::Action a1)
{
  v2 = *a1;
  swift_getKeyPath();
  sub_1C2C6DFF8(&qword_1EC05CEC0, type metadata accessor for FilterMenuViewModel);
  sub_1C2E71A64();

  v3 = OBJC_IVAR____TtC16CommunicationsUI19FilterMenuViewModel__collapseCallsAndMissed;
  swift_beginAccess();
  if (*(v1 + v3) == 1)
  {
    if (!v2)
    {
      goto LABEL_5;
    }

    v4 = sub_1C2E767A4();

    if (v4)
    {
LABEL_7:
      swift_getKeyPath();
      sub_1C2E71A64();

      v6 = OBJC_IVAR____TtC16CommunicationsUI19FilterMenuViewModel__selectedAction;
      swift_beginAccess();
      if (*(v1 + v6) > 3u || *(v1 + v6))
      {
        v9 = sub_1C2E767A4();

        if (v9)
        {
          v8 = 1;
          return v8 & 1;
        }

        swift_getKeyPath();
        sub_1C2E71A64();

        if (*(v1 + v6) >= 2u || !*(v1 + v6))
        {
          v10 = sub_1C2E767A4();

          v8 = v10;
          return v8 & 1;
        }
      }

      v8 = 1;
      return v8 & 1;
    }

    if (v2 == 1)
    {
LABEL_5:

      goto LABEL_7;
    }

    v5 = sub_1C2E767A4();

    if (v5)
    {
      goto LABEL_7;
    }
  }

  swift_getKeyPath();
  sub_1C2E71A64();

  v7 = OBJC_IVAR____TtC16CommunicationsUI19FilterMenuViewModel__selectedAction;
  swift_beginAccess();
  v8 = sub_1C2E063A0(*(v1 + v7), v2);
  return v8 & 1;
}

void (*FilterMenuViewModel.actionsToCount.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC16CommunicationsUI19FilterMenuViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1C2C6DFF8(&qword_1EC05CEC0, type metadata accessor for FilterMenuViewModel);
  sub_1C2E71A64();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C2E71A84();

  swift_beginAccess();
  return sub_1C2E5E714;
}

uint64_t FilterMenuViewModel.actionHandler.getter()
{
  swift_getKeyPath();
  sub_1C2C6DFF8(&qword_1EC05CEC0, type metadata accessor for FilterMenuViewModel);
  sub_1C2E71A64();

  v1 = (v0 + OBJC_IVAR____TtC16CommunicationsUI19FilterMenuViewModel__actionHandler);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1C2E5E7F0@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2C6DFF8(&qword_1EC05CEC0, type metadata accessor for FilterMenuViewModel);
  sub_1C2E71A64();

  v4 = (v3 + OBJC_IVAR____TtC16CommunicationsUI19FilterMenuViewModel__actionHandler);
  swift_beginAccess();
  v6 = *v4;
  v5 = v4[1];
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  *a2 = sub_1C2D8E64C;
  a2[1] = v7;
}

uint64_t sub_1C2E5E8E8(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  sub_1C2C6DFF8(&qword_1EC05CEC0, type metadata accessor for FilterMenuViewModel);

  sub_1C2E71A54();
}

void (*FilterMenuViewModel.actionHandler.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC16CommunicationsUI19FilterMenuViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1C2C6DFF8(&qword_1EC05CEC0, type metadata accessor for FilterMenuViewModel);
  sub_1C2E71A64();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C2E71A84();

  swift_beginAccess();
  return sub_1C2E5EB4C;
}

uint64_t sub_1C2E5EB6C()
{
  swift_getKeyPath();
  sub_1C2C6DFF8(&qword_1EC05CEC0, type metadata accessor for FilterMenuViewModel);
  sub_1C2E71A64();

  swift_beginAccess();
}

uint64_t sub_1C2E5EC38@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1C2C6DFF8(&qword_1EC05CEC0, type metadata accessor for FilterMenuViewModel);
  sub_1C2E71A64();

  v6 = *a2;
  swift_beginAccess();
  *a3 = *(v5 + v6);
}

uint64_t sub_1C2E5ED6C(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v6 = *a2;
  swift_beginAccess();

  LOBYTE(a3) = a3(v7, a1);

  if (a3)
  {
    *(v3 + v6) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2C6DFF8(&qword_1EC05CEC0, type metadata accessor for FilterMenuViewModel);
    sub_1C2E71A54();
  }
}

uint64_t sub_1C2E5EEBC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  swift_beginAccess();
  *(a1 + v5) = a2;
}

void (*FilterMenuViewModel.actionsInSeparateSubmenu.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC16CommunicationsUI19FilterMenuViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1C2C6DFF8(&qword_1EC05CEC0, type metadata accessor for FilterMenuViewModel);
  sub_1C2E71A64();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C2E71A84();

  swift_beginAccess();
  return sub_1C2E5F070;
}

id FilterMenuViewModel.__allocating_init(style:actions:selectedAction:actionsToCount:didSelectAction:)(_BYTE *a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = objc_allocWithZone(v6);
  LOBYTE(a1) = *a1;
  LOBYTE(a3) = *a3;
  v13[OBJC_IVAR____TtC16CommunicationsUI19FilterMenuViewModel__collapseCallsAndMissed] = 0;
  *&v13[OBJC_IVAR____TtC16CommunicationsUI19FilterMenuViewModel__actionsInSeparateSubmenu] = &unk_1F4297A40;
  sub_1C2E71A94();
  v13[OBJC_IVAR____TtC16CommunicationsUI19FilterMenuViewModel__style] = a1;
  *&v13[OBJC_IVAR____TtC16CommunicationsUI19FilterMenuViewModel__backingActions] = a2;
  *&v13[OBJC_IVAR____TtC16CommunicationsUI19FilterMenuViewModel__actionsToCount] = a4;
  v13[OBJC_IVAR____TtC16CommunicationsUI19FilterMenuViewModel__selectedAction] = a3;
  v14 = &v13[OBJC_IVAR____TtC16CommunicationsUI19FilterMenuViewModel__actionHandler];
  *v14 = a5;
  v14[1] = a6;
  v16.receiver = v13;
  v16.super_class = v6;
  return objc_msgSendSuper2(&v16, sel_init);
}

id FilterMenuViewModel.init(style:actions:selectedAction:actionsToCount:didSelectAction:)(_BYTE *a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();
  LOBYTE(a1) = *a1;
  LOBYTE(a3) = *a3;
  v6[OBJC_IVAR____TtC16CommunicationsUI19FilterMenuViewModel__collapseCallsAndMissed] = 0;
  *&v6[OBJC_IVAR____TtC16CommunicationsUI19FilterMenuViewModel__actionsInSeparateSubmenu] = &unk_1F4297A68;
  sub_1C2E71A94();
  v6[OBJC_IVAR____TtC16CommunicationsUI19FilterMenuViewModel__style] = a1;
  *&v6[OBJC_IVAR____TtC16CommunicationsUI19FilterMenuViewModel__backingActions] = a2;
  *&v6[OBJC_IVAR____TtC16CommunicationsUI19FilterMenuViewModel__actionsToCount] = a4;
  v6[OBJC_IVAR____TtC16CommunicationsUI19FilterMenuViewModel__selectedAction] = a3;
  v14 = &v6[OBJC_IVAR____TtC16CommunicationsUI19FilterMenuViewModel__actionHandler];
  *v14 = a5;
  v14[1] = a6;
  v16.receiver = v6;
  v16.super_class = ObjectType;
  return objc_msgSendSuper2(&v16, sel_init);
}

id FilterMenuViewModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FilterMenuViewModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t FilterMenu_SwiftUI.init(viewModel:isEnabled:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  return result;
}

uint64_t FilterMenu_SwiftUI.body.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064AB8);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v7[-v3];
  v5 = *(v0 + 8);
  v8 = *v0;
  v9 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064AC0);
  sub_1C2E604F0();
  sub_1C2E746F4();
  sub_1C2C94F38(&qword_1EC064AD0, &qword_1EC064AB8);
  sub_1C2E74C54();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_1C2E5F614(void *a1, char a2)
{
  FilterMenuViewModel.actions.getter();
  swift_getKeyPath();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064B00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FBB0);
  sub_1C2C94F38(&qword_1EC064B08, &qword_1EC064B00);
  sub_1C2E608F0();
  sub_1C2C94F38(&qword_1EC05FBD0, &qword_1EC05FBB0);
  return sub_1C2E75434();
}

uint64_t sub_1C2E5F77C(char *a1, void *a2, char a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  *(v6 + 25) = v5;
  v7 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FBB8);
  sub_1C2C94F38(&qword_1EC05FBC0, &qword_1EC05FBB8);
  return sub_1C2E751C4();
}

uint64_t sub_1C2E5F87C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  swift_getKeyPath();
  v11 = a1;
  sub_1C2C6DFF8(&qword_1EC05CEC0, type metadata accessor for FilterMenuViewModel);
  sub_1C2E71A64();

  v5 = (a1 + OBJC_IVAR____TtC16CommunicationsUI19FilterMenuViewModel__actionHandler);
  swift_beginAccess();
  v6 = *v5;
  v10[0] = a3;

  v6(v10);

  v7 = OBJC_IVAR____TtC16CommunicationsUI19FilterMenuViewModel__selectedAction;
  swift_beginAccess();
  result = sub_1C2E063A0(*(a1 + v7), a3);
  if (result)
  {
    *(a1 + v7) = a3;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2E71A54();
  }

  return result;
}

uint64_t sub_1C2E5FA2C(unsigned __int8 a1, uint64_t a2)
{
  LOBYTE(v21) = a1;
  swift_getKeyPath();
  v23 = a2;
  sub_1C2C6DFF8(&qword_1EC05CEC0, type metadata accessor for FilterMenuViewModel);
  sub_1C2E71A64();

  v4 = OBJC_IVAR____TtC16CommunicationsUI19FilterMenuViewModel__actionsToCount;
  swift_beginAccess();
  v5 = *(a2 + v4);
  if (*(v5 + 16))
  {

    v6 = sub_1C2D92424(a1);
    if (v7)
    {
      v8 = *(v5 + 56) + 24 * v6;
      v9 = *v8;
      v10 = *(v8 + 8);
      v11 = *(v8 + 16);
      sub_1C2E605B4(*v8, v10, v11);
    }

    else
    {
      v9 = 0;
      v10 = 0;
      v11 = 0;
    }
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
  }

  v18[0] = v9;
  v18[1] = v10;
  v19 = v11;
  v12 = FilterMenuViewModel.Action.title(occurrences:)(v18);
  v14 = v13;
  sub_1C2E605A0(v9, v10, v11);
  v21 = v12;
  v22 = v14;
  v20 = a1;
  swift_getKeyPath();
  v18[0] = a2;
  sub_1C2E71A64();

  v15 = OBJC_IVAR____TtC16CommunicationsUI19FilterMenuViewModel__style;
  swift_beginAccess();
  v17 = *(a2 + v15);
  sub_1C2E5C710(&v17);
  sub_1C2C74960();
  return sub_1C2E750F4();
}

uint64_t sub_1C2E5FC38@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C2E75044();
  *a1 = result;
  return result;
}

uint64_t sub_1C2E5FC78()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064AB8);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v7[-v3];
  v5 = *(v0 + 8);
  v8 = *v0;
  v9 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064AC0);
  sub_1C2E604F0();
  sub_1C2E746F4();
  sub_1C2C94F38(&qword_1EC064AD0, &qword_1EC064AB8);
  sub_1C2E74C54();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_1C2E5FE2C(unsigned __int8 *a1, uint64_t a2)
{
  v3 = *a1;
  swift_getKeyPath();
  v10 = a2;
  sub_1C2C6DFF8(&qword_1EC05CEC0, type metadata accessor for FilterMenuViewModel);
  sub_1C2E71A64();

  v4 = (a2 + OBJC_IVAR____TtC16CommunicationsUI19FilterMenuViewModel__actionHandler);
  swift_beginAccess();
  v5 = *v4;
  v9[0] = v3;

  v5(v9);

  v6 = OBJC_IVAR____TtC16CommunicationsUI19FilterMenuViewModel__selectedAction;
  swift_beginAccess();
  result = sub_1C2E063A0(*(a2 + v6), v3);
  if (result)
  {
    *(a2 + v6) = v3;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2E71A54();
  }

  return result;
}

uint64_t sub_1C2E5FFF4(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v28 = (v7 - 1) & v7;
LABEL_13:
    v12 = v9 | (v3 << 6);
    v13 = result;
    v14 = *(result + 56) + 24 * v12;
    v15 = *v14;
    v16 = *(v14 + 8);
    v17 = *(v14 + 16);
    v18 = *(*(result + 48) + v12);
    sub_1C2E605B4(*v14, v16, v17);
    v19 = sub_1C2D92424(v18);
    if ((v20 & 1) == 0)
    {
      goto LABEL_29;
    }

    v21 = *(a2 + 56) + 24 * v19;
    v23 = *v21;
    v22 = *(v21 + 8);
    if (*(v21 + 16) == 1)
    {
      if ((v17 & 1) == 0)
      {
        v27 = *(v21 + 8);

        sub_1C2E605A0(v23, v27, 1);
        v17 = 0;
LABEL_29:
        sub_1C2E605A0(v15, v16, v17);
        return 0;
      }

      if (v23 == v15 && v22 == v16)
      {

        sub_1C2E605A0(v15, v16, 1);
        sub_1C2E605A0(v15, v16, 1);
        result = v13;
        v7 = v28;
      }

      else
      {
        v25 = *(v21 + 8);
        v26 = sub_1C2E767A4();

        sub_1C2E605A0(v23, v25, 1);
        sub_1C2E605A0(v15, v16, 1);
        result = v13;
        v7 = v28;
        if ((v26 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else
    {
      sub_1C2E605A0(v23, v22, 0);
      if (v17)
      {
        v17 = 1;
        goto LABEL_29;
      }

      sub_1C2E605A0(v15, v16, 0);
      result = v13;
      v7 = v28;
      if (v23 != v15)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v28 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

BOOL _s16CommunicationsUI19FilterMenuViewModelC15OccurrenceValueO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4 != 1)
  {
    if ((*(a2 + 16) & 1) == 0)
    {
      sub_1C2E605A0(*a1, v3, 0);
      sub_1C2E605A0(v5, v6, 0);
      return v2 == v5;
    }

    goto LABEL_11;
  }

  if ((*(a2 + 16) & 1) == 0)
  {

LABEL_11:
    sub_1C2E605B4(v5, v6, v7);
    sub_1C2E605A0(v2, v3, v4);
    sub_1C2E605A0(v5, v6, v7);
    return 0;
  }

  v8 = *a1;
  if (v2 == v5 && v3 == v6)
  {
    sub_1C2E605B4(v8, v3, 1);
    sub_1C2E605B4(v2, v3, 1);
    sub_1C2E605A0(v2, v3, 1);
    sub_1C2E605A0(v2, v3, 1);
    return 1;
  }

  else
  {
    v10 = sub_1C2E767A4();
    sub_1C2E605B4(v5, v6, 1);
    sub_1C2E605B4(v2, v3, 1);
    sub_1C2E605A0(v2, v3, 1);
    sub_1C2E605A0(v5, v6, 1);
    return v10 & 1;
  }
}

uint64_t sub_1C2E603B4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC16CommunicationsUI19FilterMenuViewModel__style;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_1C2E60410()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC16CommunicationsUI19FilterMenuViewModel__collapseCallsAndMissed;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

unint64_t sub_1C2E604F0()
{
  result = qword_1EC064AC8;
  if (!qword_1EC064AC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC064AC0);
    sub_1C2C94F38(&qword_1EC05FBD0, &qword_1EC05FBB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC064AC8);
  }

  return result;
}

uint64_t sub_1C2E605A0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1C2E605B4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1C2E605CC()
{
  v1 = *(v0 + 16);
  v3 = *(v0 + 32);
  return v1(&v3);
}

unint64_t sub_1C2E60610()
{
  result = qword_1EC064AD8;
  if (!qword_1EC064AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC064AD8);
  }

  return result;
}

unint64_t sub_1C2E60668()
{
  result = qword_1EC064AE0;
  if (!qword_1EC064AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC064AE0);
  }

  return result;
}

unint64_t sub_1C2E607A8()
{
  result = qword_1EC064AE8;
  if (!qword_1EC064AE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC064AF0);
    sub_1C2C94F38(&qword_1EC064AD0, &qword_1EC064AB8);
    sub_1C2C6DFF8(&qword_1EDDCDA08, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC064AE8);
  }

  return result;
}

unint64_t sub_1C2E60890()
{
  result = qword_1EC064AF8;
  if (!qword_1EC064AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC064AF8);
  }

  return result;
}

unint64_t sub_1C2E608F0()
{
  result = qword_1EC064B10;
  if (!qword_1EC064B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC064B10);
  }

  return result;
}

uint64_t sub_1C2E60964()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC16CommunicationsUI19FilterMenuViewModel__selectedAction;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_1C2E609E8()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC16CommunicationsUI19FilterMenuViewModel__backingActions) = *(v0 + 24);
}

void sub_1C2E60A80(uint64_t a1@<X8>)
{
  v36 = a1;
  v1 = sub_1C2E72BB4();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v35 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1C2E762B4();
  v3 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C2E76344();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1C2E763A4();
  v10 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C2E75C24();

  v14 = [objc_opt_self() systemImageNamed_];

  if (v14)
  {
    sub_1C2C6E1B4(0, &qword_1EC064B20);
    v37 = 0;
    v15 = sub_1C2E62F0C(&v37);
    v16 = [v14 imageWithSymbolConfiguration_];
  }

  else
  {
    v16 = 0;
  }

  v17 = objc_opt_self();
  v32 = [v17 systemRedColor];
  v18 = [v17 whiteColor];
  sub_1C2E76384();
  (*(v7 + 104))(v9, *MEMORY[0x1E69DC558], v6);
  sub_1C2E762A4();
  (*(v3 + 104))(v5, *MEMORY[0x1E69DC508], v33);
  sub_1C2E762C4();
  if (v16)
  {
    v19 = v16;
    v20 = [v19 symbolConfiguration];
    if (v20)
    {
      v21 = v20;
      sub_1C2E76354();
    }

    else
    {
      v22 = objc_opt_self();
      v23 = [v22 unspecifiedConfiguration];
      v24 = [v19 imageWithSymbolConfiguration_];

      sub_1C2E76354();
      v25 = [objc_opt_self() preferredFontForTextStyle_];
      v26 = [v22 configurationWithFont:v25 scale:3];

      sub_1C2E76274();
      v21 = v19;
    }
  }

  v27 = v32;
  v28 = v18;
  sub_1C2E76324();
  v29 = v34;
  (*(v10 + 16))(v36, v12, v34);
  v30 = v27;
  sub_1C2E72BA4();
  sub_1C2E76294();
  v31 = v30;
  sub_1C2E76314();

  (*(v10 + 8))(v12, v29);
}

void sub_1C2E60FA0(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = sub_1C2E72BB4();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v42 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_1C2E762B4();
  v5 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C2E76344();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C2E763A4();
  v40 = *(v12 - 8);
  v41 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v16 = objc_opt_self();
  if (v15 == 2)
  {
    v17 = [v16 systemBlueColor];
  }

  else
  {
    v17 = [v16 systemGreenColor];
  }

  v18 = sub_1C2E75C24();

  v19 = [objc_opt_self() systemImageNamed_];

  if (v19)
  {
    sub_1C2C6E1B4(0, &qword_1EC064B20);
    v44 = 0;
    v20 = sub_1C2E62F0C(&v44);
    v21 = [v19 imageWithSymbolConfiguration_];
  }

  else
  {
    v21 = 0;
  }

  v22 = objc_opt_self();
  v23 = v17;
  v24 = [v22 whiteColor];
  sub_1C2E76384();
  (*(v9 + 104))(v11, *MEMORY[0x1E69DC558], v8);
  sub_1C2E762A4();
  (*(v5 + 104))(v7, *MEMORY[0x1E69DC508], v39);
  sub_1C2E762C4();
  if (v21)
  {
    v25 = v21;
    v26 = [v25 symbolConfiguration];
    if (v26)
    {
      v27 = v26;
      sub_1C2E76354();
    }

    else
    {
      v28 = objc_opt_self();
      v29 = [v28 unspecifiedConfiguration];
      v30 = [v25 imageWithSymbolConfiguration_];

      sub_1C2E76354();
      v31 = [objc_opt_self() preferredFontForTextStyle_];
      v32 = [v28 configurationWithFont:v31 scale:3];

      sub_1C2E76274();
      v27 = v25;
    }
  }

  v33 = v23;
  v34 = v24;
  sub_1C2E76324();
  v36 = v40;
  v35 = v41;
  (*(v40 + 16))(v43, v14, v41);
  v37 = v33;
  sub_1C2E72BA4();
  sub_1C2E76294();
  v38 = v37;
  sub_1C2E76314();

  (*(v36 + 8))(v14, v35);
}

void sub_1C2E61500(uint64_t a1@<X8>)
{
  v31 = a1;
  v1 = sub_1C2E762B4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C2E76344();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C2E763A4();
  v29 = *(v9 - 8);
  v30 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C2E75C24();
  v13 = [objc_opt_self() systemImageNamed_];

  if (v13)
  {
    sub_1C2C6E1B4(0, &qword_1EC064B20);
    v14 = sub_1C2E6304C(MEMORY[0x1E69DDC70], MEMORY[0x1E69DDCF8], 4, 2);
    v15 = [v13 imageWithSymbolConfiguration_];
  }

  else
  {
    v15 = 0;
  }

  v16 = [objc_opt_self() whiteColor];
  sub_1C2E76384();
  (*(v6 + 104))(v8, *MEMORY[0x1E69DC558], v5);
  sub_1C2E762A4();
  (*(v2 + 104))(v4, *MEMORY[0x1E69DC508], v1);
  sub_1C2E762C4();
  if (v15)
  {
    v17 = v15;
    v18 = [v17 symbolConfiguration];
    if (v18)
    {
      v19 = v18;
      sub_1C2E76354();
    }

    else
    {
      v20 = objc_opt_self();
      v21 = [v20 unspecifiedConfiguration];
      v22 = [v17 imageWithSymbolConfiguration_];

      sub_1C2E76354();
      v23 = [objc_opt_self() preferredFontForTextStyle_];
      v24 = [v20 configurationWithFont:v23 scale:3];

      sub_1C2E76274();
      v19 = v17;
    }
  }

  if (qword_1EC05D0C0 != -1)
  {
    swift_once();
  }

  v25 = qword_1EC075C40;
  v26 = *algn_1EC075C48;
  v27 = byte_1EC075C50;
  sub_1C2E63578(qword_1EC075C40, *algn_1EC075C48, byte_1EC075C50);
  v28 = v16;
  sub_1C2E76324();
  v32 = v25;
  v33 = v26;
  v34 = v27;
  sub_1C2E63578(v25, v26, v27);
  sub_1C2E63130(&v32, v31);

  sub_1C2E63594(v25, v26, v27);
  (*(v29 + 8))(v11, v30);
  sub_1C2E63594(v32, v33, v34);
}

void sub_1C2E619B4(uint64_t a1@<X8>)
{
  v37 = a1;
  v1 = sub_1C2E72BB4();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v36 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1C2E762B4();
  v3 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C2E76344();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1C2E763A4();
  v10 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C2E75C24();
  v14 = [objc_opt_self() systemImageNamed_];

  if (v14)
  {
    sub_1C2C6E1B4(0, &qword_1EC064B20);
    v15 = sub_1C2E6304C(MEMORY[0x1E69DDC88], MEMORY[0x1E69DDD58], 5, 1);
    v16 = [v14 imageWithSymbolConfiguration_];
  }

  else
  {
    v16 = 0;
  }

  v17 = objc_opt_self();
  v33 = [v17 secondarySystemBackgroundColor];
  v18 = [v17 whiteColor];
  sub_1C2E76384();
  (*(v7 + 104))(v9, *MEMORY[0x1E69DC558], v6);
  sub_1C2E762A4();
  (*(v3 + 104))(v5, *MEMORY[0x1E69DC508], v34);
  sub_1C2E762C4();
  if (v16)
  {
    v19 = v16;
    v20 = [v19 symbolConfiguration];
    if (v20)
    {
      v21 = v20;
      sub_1C2E76354();
    }

    else
    {
      v22 = objc_opt_self();
      v23 = [v22 unspecifiedConfiguration];
      v24 = [v19 imageWithSymbolConfiguration_];

      sub_1C2E76354();
      v25 = [objc_opt_self() preferredFontForTextStyle_];
      v26 = [v22 configurationWithFont:v25 scale:3];

      sub_1C2E76274();
      v21 = v19;
    }
  }

  v27 = v33;
  v28 = v18;
  sub_1C2E76324();
  v29 = v35;
  (*(v10 + 16))(v37, v12, v35);
  v30 = v27;
  sub_1C2E72BA4();
  sub_1C2E76294();
  v31 = v30;
  sub_1C2E76314();

  (*(v10 + 8))(v12, v29);
}

void sub_1C2E61EA8(uint64_t a1@<X8>)
{
  v37 = a1;
  v1 = sub_1C2E72BB4();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v36 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1C2E762B4();
  v3 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C2E76344();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1C2E763A4();
  v10 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C2E75C24();
  v14 = [objc_opt_self() systemImageNamed_];

  if (v14)
  {
    sub_1C2C6E1B4(0, &qword_1EC064B20);
    v15 = sub_1C2E6304C(MEMORY[0x1E69DDC78], MEMORY[0x1E69DDDC0], 6, 2);
    v16 = [v14 imageWithSymbolConfiguration_];
  }

  else
  {
    v16 = 0;
  }

  v17 = objc_opt_self();
  v33 = [v17 systemGreenColor];
  v18 = [v17 whiteColor];
  sub_1C2E76384();
  (*(v7 + 104))(v9, *MEMORY[0x1E69DC558], v6);
  sub_1C2E762A4();
  (*(v3 + 104))(v5, *MEMORY[0x1E69DC508], v34);
  sub_1C2E762C4();
  if (v16)
  {
    v19 = v16;
    v20 = [v19 symbolConfiguration];
    if (v20)
    {
      v21 = v20;
      sub_1C2E76354();
    }

    else
    {
      v22 = objc_opt_self();
      v23 = [v22 unspecifiedConfiguration];
      v24 = [v19 imageWithSymbolConfiguration_];

      sub_1C2E76354();
      v25 = [objc_opt_self() preferredFontForTextStyle_];
      v26 = [v22 configurationWithFont:v25 scale:3];

      sub_1C2E76274();
      v21 = v19;
    }
  }

  v27 = v33;
  v28 = v18;
  sub_1C2E76324();
  v29 = v35;
  (*(v10 + 16))(v37, v12, v35);
  v30 = v27;
  sub_1C2E72BA4();
  sub_1C2E76294();
  v31 = v30;
  sub_1C2E76314();

  (*(v10 + 8))(v12, v29);
}

void sub_1C2E623A4()
{
  v0 = sub_1C2E716A4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E088);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v25 - v2;
  v4 = sub_1C2E762B4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for StringDummy();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [objc_opt_self() bundleForClass_];
  v10 = sub_1C2E71684();
  v25[0] = v11;
  v25[1] = v10;

  v12 = objc_opt_self();
  v26 = [v12 greenColor];
  v13 = [v12 greenColor];
  v14 = [v13 colorWithAlphaComponent_];

  sub_1C2E76384();
  (*(v5 + 104))(v7, *MEMORY[0x1E69DC508], v4);
  sub_1C2E762C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061148);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C2E7A930;
  v16 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v17 = objc_opt_self();
  v18 = *MEMORY[0x1E69DDDC8];
  v19 = v16;
  v20 = [v17 preferredFontForTextStyle_];
  *(inited + 64) = sub_1C2C6E1B4(0, &qword_1EC061150);
  *(inited + 40) = v20;
  sub_1C2D94C74(inited);
  swift_setDeallocating();
  sub_1C2DFD98C(inited + 32);
  sub_1C2E716C4();
  sub_1C2E71674();
  v21 = sub_1C2E71664();
  (*(*(v21 - 8) + 56))(v3, 0, 1, v21);
  sub_1C2E76304();
  v22 = sub_1C2E76284();
  v23 = v14;
  sub_1C2E72B94();
  v22(v27, 0);
  v24 = v26;
  sub_1C2E76324();
}

void sub_1C2E627A4()
{
  v0 = sub_1C2E716A4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E088);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v23 - v2;
  v4 = sub_1C2E762B4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for StringDummy();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [objc_opt_self() bundleForClass_];
  v10 = sub_1C2E71684();
  v23[0] = v11;
  v23[1] = v10;

  v12 = objc_opt_self();
  v13 = [v12 systemGray3Color];
  v23[2] = [v12 whiteColor];
  sub_1C2E76384();
  (*(v5 + 104))(v7, *MEMORY[0x1E69DC508], v4);
  sub_1C2E762C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061148);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C2E7A930;
  v15 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v16 = objc_opt_self();
  v17 = *MEMORY[0x1E69DDDC8];
  v18 = v15;
  v19 = [v16 preferredFontForTextStyle_];
  *(inited + 64) = sub_1C2C6E1B4(0, &qword_1EC061150);
  *(inited + 40) = v19;
  sub_1C2D94C74(inited);
  swift_setDeallocating();
  sub_1C2DFD98C(inited + 32);
  sub_1C2E716C4();
  sub_1C2E71674();
  v20 = sub_1C2E71664();
  (*(*(v20 - 8) + 56))(v3, 0, 1, v20);
  sub_1C2E76304();
  v21 = sub_1C2E76284();
  v22 = v13;
  sub_1C2E72B94();
  v21(v24, 0);
  sub_1C2E76324();
}

uint64_t CallButtonType.hashValue.getter()
{
  v1 = *v0;
  sub_1C2E76854();
  MEMORY[0x1C6927290](v1);
  return sub_1C2E76894();
}

unint64_t sub_1C2E62BFC()
{
  result = qword_1EC064B18;
  if (!qword_1EC064B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC064B18);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_16CommunicationsUI25ButtonBackgroundBlurStyleO(uint64_t a1)
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

uint64_t sub_1C2E62C7C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1C2E62CC4(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1C2E62D08(uint64_t result, unsigned int a2)
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

uint64_t get_enum_tag_for_layout_string_16CommunicationsUI21ButtonBackgroundStyleO(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1C2E62D60()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v4[4] = sub_1C2E62E34;
  v4[5] = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 1107296256;
  v4[2] = sub_1C2CF0DD4;
  v4[3] = &block_descriptor_29;
  v1 = _Block_copy(v4);
  v2 = [v0 initWithDynamicProvider_];
  _Block_release(v1);

  qword_1EC075C40 = v2;
  *algn_1EC075C48 = 0;
  byte_1EC075C50 = 64;
  return result;
}

id sub_1C2E62E34()
{
  v0 = [objc_opt_self() secondarySystemBackgroundColor];
  v1 = sub_1C2E760B4();
  v2 = [v0 resolvedColorWithTraitCollection_];

  return v2;
}

id sub_1C2E62F0C(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory_];
  v3 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDDC8] compatibleWithTraitCollection:v2];
  [v3 pointSize];
  if (v1)
  {
    v5 = 7;
  }

  else
  {
    v5 = 6;
  }

  v6 = [swift_getObjCClassFromMetadata() configurationWithPointSize:v5 weight:2 scale:v4];

  return v6;
}

id sub_1C2E6304C(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory_];
  v8 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*a2 compatibleWithTraitCollection:v7];
  [v8 pointSize];
  v10 = [swift_getObjCClassFromMetadata() configurationWithPointSize:a3 weight:a4 scale:v9];

  return v10;
}

void sub_1C2E63130(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_1C2E72BB4();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = *a1;
  v7 = *(a1 + 8);
  v9 = *(a1 + 16);
  v10 = sub_1C2E763A4();
  (*(*(v10 - 8) + 16))(a2, v3, v10);
  if (v9 >> 6)
  {
    if (v9 >> 6 == 1)
    {
      sub_1C2E72BA4();
      sub_1C2E76294();
      v11 = v8;
      sub_1C2E76314();
    }
  }

  else
  {
    if (v9 > 1)
    {
      if (v9 == 2)
      {
        sub_1C2E63524(v8, v7, 2);
      }

      else
      {
        v20 = [objc_opt_self() effectWithStyle_];
        v21 = [objc_opt_self() _effectForBlurEffect_vibrancyStyle_];
        v8 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];
        v22 = [v8 contentView];
        v23 = [objc_opt_self() tintColor];
        [v22 setBackgroundColor_];
      }
    }

    else
    {
      v8 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];
      if (v9)
      {
        v14 = [v8 contentView];
        v15 = [objc_opt_self() tintColor];
        [v14 setBackgroundColor_];

        v16 = objc_allocWithZone(MEMORY[0x1E69DD298]);
        v17 = v7;
        v18 = [v16 initWithEffect_];
        [v18 setAutoresizingMask_];
        v19 = [v8 contentView];
        [v19 addSubview_];
      }

      else
      {
        v12 = [v8 contentView];
        v13 = [objc_opt_self() tintColor];
        [v12 setBackgroundColor_];
      }
    }

    v24 = v8;
    v25 = sub_1C2E76284();
    sub_1C2E72B84();
    v25(v28, 0);
    v26 = [objc_opt_self() clearColor];
    v27 = sub_1C2E76284();
    sub_1C2E72B94();
    v27(v28, 0);
  }
}

id sub_1C2E63524(id result, void *a2, char a3)
{
  if (a3 && a3 != 2)
  {
    if (a3 != 1)
    {
      return result;
    }

    v4 = result;
    result = a2;
  }

  return result;
}

id sub_1C2E63578(id result, void *a2, char a3)
{
  if (a3 >> 6 == 1)
  {
    return result;
  }

  if (!(a3 >> 6))
  {
    return sub_1C2E63524(result, a2, a3);
  }

  return result;
}

void sub_1C2E63594(void *a1, void *a2, char a3)
{
  if (a3 >> 6 == 1)
  {
  }

  else if (!(a3 >> 6))
  {
    sub_1C2E635B0(a1, a2, a3);
  }
}

void sub_1C2E635B0(void *a1, void *a2, char a3)
{
  if (a3 && a3 != 2)
  {
    if (a3 != 1)
    {
      return;
    }

    a1 = a2;
  }
}

uint64_t block_copy_helper_29(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

double FTMenuRow.init(menuItem:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DB40);
  sub_1C2E75174();
  result = *&v5;
  *(a2 + 8) = v5;
  *(a2 + 24) = v6;
  *a2 = a1;
  return result;
}

uint64_t sub_1C2E636AC@<X0>(uint64_t a1@<X8>)
{
  v113 = a1;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05EC30);
  MEMORY[0x1EEE9AC00](v105);
  v97 = v90 - v1;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064E00);
  MEMORY[0x1EEE9AC00](v103);
  v104 = v90 - v2;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064D30);
  MEMORY[0x1EEE9AC00](v109);
  v106 = v90 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC061C20);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v98 = v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v99 = v90 - v7;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064D40);
  MEMORY[0x1EEE9AC00](v102);
  v101 = v90 - v8;
  v112 = sub_1C2E71784();
  v100 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v111 = v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C2E71F54();
  v95 = *(v10 - 8);
  v96 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v92 = v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064E08);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (v90 - v13);
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064E10);
  MEMORY[0x1EEE9AC00](v107);
  v108 = (v90 - v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064CD0);
  MEMORY[0x1EEE9AC00](v16);
  v110 = v90 - v17;
  v18 = sub_1C2E75054();
  v93 = *(v18 - 8);
  v94 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v20 = v90 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062DB0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = (v90 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v24);
  v26 = v90 - v25;
  v27 = [objc_opt_self() currentDevice];
  [v27 userInterfaceIdiom];

  sub_1C2E72044();
  v28 = sub_1C2E72074();
  v29 = *(v28 - 8);
  if ((*(v29 + 48))(v26, 1, v28) == 1)
  {
    LOBYTE(v130[0]) = 1;
    BYTE8(v120[1]) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064D80);
    sub_1C2E69F04();
    sub_1C2E73F44();
    v114 = v123;
    v115 = v124;
    *v116 = v125[0];
    *&v116[9] = *(v125 + 9);
    LOBYTE(v133) = 0;
    v116[25] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064D70);
    sub_1C2E69E78();
    sub_1C2E73F44();
    v30 = v119;
    v31 = v120[0];
    *v14 = v118;
    v14[1] = v30;
    v14[2] = v31;
    *(v14 + 42) = *(v120 + 10);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064D60);
    sub_1C2E69908();
    sub_1C2E69DEC();
    sub_1C2E73F44();
  }

  else
  {
    v90[1] = v12;
    v90[2] = v16;
    v91 = v14;
    sub_1C2C736A4(v26, v23, &qword_1EC062DB0);
    v32 = (*(v29 + 88))(v23, v28);
    v33 = *MEMORY[0x1E6995DA8];
    v90[0] = v26;
    if (v32 == v33)
    {
      (*(v29 + 96))(v23, v28);
      v34 = v100;
      v36 = v111;
      v35 = v112;
      (*(v100 + 32))(v111, v23, v112);
      v37 = v99;
      (*(v34 + 16))(v99, v36, v35);
      (*(v34 + 56))(v37, 0, 1, v35);
      sub_1C2C736A4(v37, v98, &unk_1EC061C20);
      v38 = swift_allocObject();
      v38[2] = sub_1C2E64BB8;
      v38[3] = 0;
      v38[4] = sub_1C2E64CCC;
      v38[5] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064E18);
      sub_1C2E6A008();
      v39 = v101;
      sub_1C2E72FE4();
      sub_1C2C73644(v37, &unk_1EC061C20);
      sub_1C2E75744();
      sub_1C2E73274();
      v40 = (v39 + *(v102 + 36));
      v41 = v119;
      v42 = v120[0];
      *v40 = v118;
      v40[1] = v41;
      v40[2] = v42;
      sub_1C2C736A4(v39, v104, &qword_1EC064D40);
      swift_storeEnumTagMultiPayload();
      sub_1C2E69D34();
      sub_1C2E27DA4();
      v43 = v106;
      sub_1C2E73F44();
      sub_1C2C736A4(v43, v108, &qword_1EC064D30);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064CE0);
      sub_1C2E69994();
      sub_1C2E69CA8();
      v44 = v110;
      sub_1C2E73F44();
      sub_1C2C73644(v43, &qword_1EC064D30);
      sub_1C2C736A4(v44, v91, &qword_1EC064CD0);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064D60);
      sub_1C2E69908();
      sub_1C2E69DEC();
      sub_1C2E73F44();
      v26 = v90[0];
      sub_1C2C73644(v44, &qword_1EC064CD0);
      sub_1C2C73644(v39, &qword_1EC064D40);
      (*(v34 + 8))(v111, v112);
    }

    else if (v32 == *MEMORY[0x1E6995DB8])
    {
      (*(v29 + 96))(v23, v28);
      v45 = *v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC05D8D0);
      v46 = swift_allocObject();
      *(v46 + 16) = xmmword_1C2E7A720;
      *(v46 + 32) = v45;
      v47 = v45;
      v48 = v97;
      sub_1C2E71504();
      sub_1C2E75744();
      sub_1C2E73274();
      v49 = v104;
      v50 = (v48 + *(v105 + 36));
      v51 = v119;
      v52 = v120[0];
      *v50 = v118;
      v50[1] = v51;
      v50[2] = v52;
      sub_1C2C736A4(v48, v49, &qword_1EC05EC30);
      swift_storeEnumTagMultiPayload();
      sub_1C2E69D34();
      sub_1C2E27DA4();
      v53 = v106;
      sub_1C2E73F44();
      sub_1C2C736A4(v53, v108, &qword_1EC064D30);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064CE0);
      sub_1C2E69994();
      sub_1C2E69CA8();
      v54 = v110;
      sub_1C2E73F44();
      sub_1C2C73644(v53, &qword_1EC064D30);
      sub_1C2C736A4(v54, v91, &qword_1EC064CD0);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064D60);
      sub_1C2E69908();
      sub_1C2E69DEC();
      sub_1C2E73F44();

      sub_1C2C73644(v54, &qword_1EC064CD0);
      v55 = v48;
      v26 = v90[0];
      sub_1C2C73644(v55, &qword_1EC05EC30);
    }

    else
    {
      v56 = v26;
      v57 = v91;
      if (v32 == *MEMORY[0x1E6995DB0])
      {
        (*(v29 + 96))(v23, v28);
        v59 = v93;
        v58 = v94;
        (*(v93 + 104))(v20, *MEMORY[0x1E6981630], v94);
        v60 = sub_1C2E750C4();
        (*(v59 + 8))(v20, v58);
        sub_1C2E75744();
        sub_1C2E73274();
        v132 = v134;
        v131 = v136;
        v129 = 0;
        *&v114 = v60;
        *(&v114 + 1) = v133;
        LOBYTE(v115) = v134;
        *(&v115 + 1) = v130[0];
        DWORD1(v115) = *(v130 + 3);
        *(&v115 + 1) = v135;
        v116[0] = v136;
        *&v116[1] = *v128;
        *&v116[4] = *&v128[3];
        *&v116[8] = v137;
        v116[72] = v125[1];
        *&v116[56] = v125[0];
        *&v116[40] = v124;
        *&v116[24] = v123;
        v117 = 0;
        swift_retain_n();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060548);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064CF0);
        sub_1C2D48EE0();
        sub_1C2E69A20();
        sub_1C2E73F44();
        v61 = v120[1];
        v62 = v122[0];
        v63 = v108;
        v108[4] = v121;
        v63[5] = v62;
        *(v63 + 90) = *(v122 + 10);
        v64 = v119;
        v65 = v120[0];
        *v63 = v118;
        v63[1] = v64;
        v63[2] = v65;
        v63[3] = v61;
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064CE0);
        sub_1C2E69994();
        sub_1C2E69CA8();
        v66 = v110;
        sub_1C2E73F44();
        sub_1C2C736A4(v66, v57, &qword_1EC064CD0);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064D60);
        sub_1C2E69908();
        sub_1C2E69DEC();
        sub_1C2E73F44();
        v26 = v90[0];

        sub_1C2C73644(v66, &qword_1EC064CD0);
      }

      else if (v32 == *MEMORY[0x1E6995DC0])
      {
        (*(v29 + 96))(v23, v28);
        v67 = v92;
        (*(v95 + 32))(v92, v23, v96);
        sub_1C2E71F34();
        v68 = sub_1C2E75064();
        v69 = sub_1C2E71F14();
        KeyPath = swift_getKeyPath();
        v71 = sub_1C2E71F04();
        sub_1C2E71F44();
        v73 = v72;
        sub_1C2E71F44();
        v75 = v74;
        sub_1C2E75744();
        sub_1C2E73274();
        v76 = sub_1C2E71EF4();
        v77 = sub_1C2E74454();
        *&v123 = v68;
        *(&v123 + 1) = KeyPath;
        *&v124 = v69;
        *(&v124 + 1) = v71;
        *&v125[0] = v73;
        *(&v125[0] + 1) = v75;
        v125[2] = v119;
        v126[0] = v120[0];
        v125[1] = v118;
        *&v126[1] = v76;
        BYTE8(v126[1]) = v77;
        *&v116[57] = *(v126 + 9);
        v114 = v123;
        v115 = v124;
        *v116 = v125[0];
        *&v116[16] = v118;
        *&v116[32] = v119;
        *&v116[48] = v120[0];
        LOBYTE(v133) = 1;
        v117 = 1;
        sub_1C2C736A4(&v123, &v118, &qword_1EC064CF0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060548);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064CF0);
        sub_1C2D48EE0();
        sub_1C2E69A20();
        sub_1C2E73F44();
        v78 = v120[1];
        v79 = v122[0];
        v80 = v108;
        v108[4] = v121;
        v80[5] = v79;
        *(v80 + 90) = *(v122 + 10);
        v81 = v119;
        v82 = v120[0];
        *v80 = v118;
        v80[1] = v81;
        v80[2] = v82;
        v80[3] = v78;
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064CE0);
        sub_1C2E69994();
        sub_1C2E69CA8();
        v83 = v110;
        sub_1C2E73F44();
        sub_1C2C736A4(v83, v57, &qword_1EC064CD0);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064D60);
        sub_1C2E69908();
        sub_1C2E69DEC();
        sub_1C2E73F44();
        v26 = v90[0];
        sub_1C2C73644(&v123, &qword_1EC064CF0);
        sub_1C2C73644(v83, &qword_1EC064CD0);
        (*(v95 + 8))(v67, v96);
      }

      else
      {
        if (v32 == *MEMORY[0x1E6995DC8])
        {
          (*(v29 + 96))(v23, v28);
          v84 = *v23;
          sub_1C2E75744();
          sub_1C2E73274();
          v131 = v134;
          v129 = v136;
          v127 = 0;
          *&v118 = v84;
          *(&v118 + 1) = v133;
          LOBYTE(v119) = v134;
          *(&v119 + 1) = v130[0];
          DWORD1(v119) = *(v130 + 3);
          *(&v119 + 1) = v135;
          LOBYTE(v120[0]) = v136;
          *(v120 + 1) = *v128;
          DWORD1(v120[0]) = *&v128[3];
          *(v120 + 8) = v137;
          BYTE8(v120[1]) = 0;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064D80);
          sub_1C2E69F04();
          sub_1C2E73F44();
          v114 = v123;
          v115 = v124;
          *v116 = v125[0];
          *&v116[9] = *(v125 + 9);
          v132 = 0;
          v116[25] = 0;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064D70);
          sub_1C2E69E78();
          sub_1C2E73F44();
          v85 = v119;
          v86 = v120[0];
          *v57 = v118;
          v57[1] = v85;
          v57[2] = v86;
          *(v57 + 42) = *(v120 + 10);
          swift_storeEnumTagMultiPayload();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064D60);
          sub_1C2E69908();
          sub_1C2E69DEC();
          sub_1C2E73F44();
        }

        else
        {
          (*(v29 + 8))(v23, v28);
          LOBYTE(v133) = 1;
          v114 = v123;
          v115 = v124;
          *v116 = v125[0];
          *&v116[9] = *(v125 + 9);
          v116[25] = 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064D70);
          sub_1C2E69E78();
          sub_1C2E73F44();
          v87 = v119;
          v88 = v120[0];
          *v57 = v118;
          v57[1] = v87;
          v57[2] = v88;
          *(v57 + 42) = *(v120 + 10);
          swift_storeEnumTagMultiPayload();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064D60);
          sub_1C2E69908();
          sub_1C2E69DEC();
          sub_1C2E73F44();
        }

        v26 = v56;
      }
    }
  }

  return sub_1C2C73644(v26, &qword_1EC062DB0);
}

uint64_t sub_1C2E64BB8@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1C2E75054();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, *MEMORY[0x1E6981630], v2, v4);
  v7 = sub_1C2E750C4();
  result = (*(v3 + 8))(v6, v2);
  *a1 = v7;
  return result;
}

uint64_t sub_1C2E64CCC@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1C2E75054();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C2E750D4();
  (*(v3 + 104))(v5, *MEMORY[0x1E6981630], v2);
  v6 = sub_1C2E750C4();

  result = (*(v3 + 8))(v5, v2);
  *a1 = v6;
  return result;
}

uint64_t sub_1C2E64E10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v74 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064C88);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v75 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v63 - v12;
  v65 = sub_1C2E737C4();
  MEMORY[0x1EEE9AC00](v65);
  v64 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062DB0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v63 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064C90);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v63 - v22;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064C98);
  MEMORY[0x1EEE9AC00](v66);
  v25 = &v63 - v24;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064CA0);
  MEMORY[0x1EEE9AC00](v67);
  v27 = &v63 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064CA8);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v69 = &v63 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v68 = &v63 - v31;
  v76 = a1;
  v77 = a2;
  v71 = a2;
  v72 = a3;
  v78 = a3;
  v79 = a4;
  v73 = a4;
  sub_1C2E636AC(v23);
  v70 = a1;
  sub_1C2E72044();
  v32 = sub_1C2E72074();
  v33 = *(v32 - 8);
  if ((*(v33 + 48))(v20, 1, v32) != 1)
  {
    sub_1C2C736A4(v20, v17, &qword_1EC062DB0);
    if ((*(v33 + 88))(v17, v32) == *MEMORY[0x1E6995DA8])
    {
      v63 = *(v65 + 20);
      v34 = *MEMORY[0x1E697F468];
      v35 = sub_1C2E73D44();
      v36 = v64;
      (*(*(v35 - 8) + 104))(&v64[v63], v34, v35);
      __asm { FMOV            V0.2D, #11.0 }

      *v36 = _Q0;
      sub_1C2E69F88(&qword_1EC05B620, MEMORY[0x1E697EAF0]);
      v42 = sub_1C2E754A4();
      (*(v33 + 8))(v17, v32);
      goto LABEL_6;
    }

    (*(v33 + 8))(v17, v32);
  }

  sub_1C2CB2AB4();
  v42 = sub_1C2E754A4();
LABEL_6:
  sub_1C2C73644(v20, &qword_1EC062DB0);
  sub_1C2C71D5C(v23, v25, &qword_1EC064C90);
  v43 = &v25[*(v66 + 36)];
  *v43 = v42;
  *(v43 + 4) = 256;
  v44 = sub_1C2E744A4();
  v45 = sub_1C2E74494();
  sub_1C2E74494();
  if (sub_1C2E74494() != v44)
  {
    v45 = sub_1C2E74494();
  }

  v46 = [objc_opt_self() currentDevice];
  [v46 userInterfaceIdiom];

  sub_1C2E73034();
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;
  sub_1C2C71D5C(v25, v27, &qword_1EC064C98);
  v55 = &v27[*(v67 + 36)];
  *v55 = v45;
  *(v55 + 1) = v48;
  *(v55 + 2) = v50;
  *(v55 + 3) = v52;
  *(v55 + 4) = v54;
  v55[40] = 0;
  sub_1C2E69738();
  v56 = v68;
  sub_1C2E74BB4();
  sub_1C2C73644(v27, &qword_1EC064CA0);
  *v13 = sub_1C2E73DD4();
  *(v13 + 1) = 0x4000000000000000;
  v13[16] = 0;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064D88);
  sub_1C2E6552C(v70, v71, v72, v73, &v13[*(v57 + 44)]);
  v58 = v69;
  sub_1C2C736A4(v56, v69, &qword_1EC064CA8);
  v59 = v75;
  sub_1C2C736A4(v13, v75, &qword_1EC064C88);
  v60 = v74;
  sub_1C2C736A4(v58, v74, &qword_1EC064CA8);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064D90);
  sub_1C2C736A4(v59, v60 + *(v61 + 48), &qword_1EC064C88);
  sub_1C2C73644(v13, &qword_1EC064C88);
  sub_1C2C73644(v56, &qword_1EC064CA8);
  sub_1C2C73644(v59, &qword_1EC064C88);
  return sub_1C2C73644(v58, &qword_1EC064CA8);
}

uint64_t sub_1C2E6552C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v95 = a3;
  v96 = a4;
  v94 = a2;
  v107 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064D98);
  v103 = *(v6 - 8);
  v104 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v99 = &v93 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064DA0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v106 = &v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v105 = &v93 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064DA8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v93 - v13;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064DB0);
  MEMORY[0x1EEE9AC00](v100);
  v16 = &v93 - v15;
  v17 = sub_1C2E74624();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v108 = &v93 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064DB8);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v102 = &v93 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v93 - v23;
  v25 = sub_1C2E71ED4();
  v27 = MEMORY[0x1E6980EA8];
  v101 = v24;
  v97 = v18;
  v98 = v17;
  if (v26)
  {
    v28 = v25;
    v29 = v26;
    v30 = [objc_opt_self() currentDevice];
    [v30 userInterfaceIdiom];

    *v14 = sub_1C2E73C24();
    *(v14 + 1) = 0x4018000000000000;
    v14[16] = 0;
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064DE0);
    sub_1C2E65E64(v28, v29, &v14[*(v31 + 44)]);

    sub_1C2C736A4(v14, v16, &qword_1EC064DA8);
    swift_storeEnumTagMultiPayload();
    sub_1C2C94F38(&qword_1EC064DC0, &qword_1EC064DA8);
    sub_1C2E73F44();
    sub_1C2C73644(v14, &qword_1EC064DA8);
  }

  else
  {
    v109 = sub_1C2E72054();
    v110 = v32;
    sub_1C2C74960();
    v33 = sub_1C2E748A4();
    v94 = v34;
    v36 = v35;
    sub_1C2E74514();
    v95 = v12;
    v96 = a1;
    sub_1C2E745A4();
    sub_1C2E74604();

    v37 = v108;
    (*(v18 + 104))(v108, *v27, v17);
    sub_1C2E74664();

    (*(v18 + 8))(v37, v17);
    v38 = v36;
    v39 = v94;
    v40 = sub_1C2E747F4();
    v42 = v41;
    v44 = v43;

    sub_1C2C72340(v33, v39, v38 & 1);

    LODWORD(v109) = sub_1C2E740D4();
    v45 = sub_1C2E74794();
    v47 = v46;
    LOBYTE(v33) = v48;
    v50 = v49;
    v51 = v40;
    v24 = v101;
    sub_1C2C72340(v51, v42, v44 & 1);

    *v16 = v45;
    *(v16 + 1) = v47;
    v16[16] = v33 & 1;
    *(v16 + 3) = v50;
    swift_storeEnumTagMultiPayload();
    sub_1C2C94F38(&qword_1EC064DC0, &qword_1EC064DA8);
    sub_1C2E73F44();
  }

  v52 = v108;
  v53 = sub_1C2E72094();
  if (v56)
  {
    v57 = v53;
    v58 = v54;
    v59 = v55;
    sub_1C2E744F4();
    v61 = v97;
    v60 = v98;
    (*(v97 + 104))(v52, *MEMORY[0x1E6980EA8], v98);
    sub_1C2E74664();

    (*(v61 + 8))(v52, v60);
    v62 = v59 & 1;
    LOBYTE(v109) = v59 & 1;
    v63 = sub_1C2E747F4();
    v65 = v64;
    v67 = v66;

    LODWORD(v109) = sub_1C2E740E4();
    v68 = sub_1C2E74794();
    v100 = v69;
    v71 = v70;
    v108 = v72;
    sub_1C2C72340(v63, v65, v67 & 1);

    KeyPath = swift_getKeyPath();
    v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064DD0);
    v75 = v99;
    v76 = &v99[*(v74 + 36)];
    v77 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FFC8) + 28);
    sub_1C2E75614();
    sub_1C2C72340(v57, v58, v62);

    v78 = sub_1C2E756D4();
    (*(*(v78 - 8) + 56))(v76 + v77, 0, 1, v78);
    *v76 = KeyPath;
    v79 = v100;
    *v75 = v68;
    *(v75 + 1) = v79;
    v75[16] = v71 & 1;
    *(v75 + 3) = v108;
    v80 = swift_getKeyPath();
    v81 = &v75[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064DD8) + 36)];
    *v81 = v80;
    *(v81 + 1) = 2;
    v81[16] = 0;
    v82 = swift_getKeyPath();
    v83 = v104;
    v84 = v105;
    v85 = &v75[*(v104 + 36)];
    *v85 = v82;
    v85[8] = 0;
    v86 = v75;
    v24 = v101;
    sub_1C2C71D5C(v86, v84, &qword_1EC064D98);
    v87 = 0;
  }

  else
  {
    v87 = 1;
    v83 = v104;
    v84 = v105;
  }

  (*(v103 + 56))(v84, v87, 1, v83);
  v88 = v102;
  sub_1C2C736A4(v24, v102, &qword_1EC064DB8);
  v89 = v106;
  sub_1C2C736A4(v84, v106, &qword_1EC064DA0);
  v90 = v107;
  sub_1C2C736A4(v88, v107, &qword_1EC064DB8);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064DC8);
  sub_1C2C736A4(v89, v90 + *(v91 + 48), &qword_1EC064DA0);
  sub_1C2C73644(v84, &qword_1EC064DA0);
  sub_1C2C73644(v24, &qword_1EC064DB8);
  sub_1C2C73644(v89, &qword_1EC064DA0);
  return sub_1C2C73644(v88, &qword_1EC064DB8);
}

uint64_t sub_1C2E65E64@<X0>(uint64_t a1@<X4>, void *a2@<X5>, uint64_t *a3@<X8>)
{
  v72 = a2;
  v71 = a1;
  v80 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05D810);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v73 = &v70 - v4;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064DE8) - 8;
  MEMORY[0x1EEE9AC00](v78);
  v79 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v70 - v7;
  v9 = sub_1C2E74624();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_1C2E72054();
  v84 = v13;
  v70 = sub_1C2C74960();
  v14 = sub_1C2E748A4();
  v16 = v15;
  v18 = v17;
  sub_1C2E74514();
  sub_1C2E745A4();
  sub_1C2E74604();

  (*(v10 + 104))(v12, *MEMORY[0x1E6980EA8], v9);
  sub_1C2E74664();

  (*(v10 + 8))(v12, v9);
  v19 = sub_1C2E747F4();
  v21 = v20;
  LOBYTE(v12) = v22;

  sub_1C2C72340(v14, v16, v18 & 1);

  LODWORD(v83) = sub_1C2E740D4();
  v75 = sub_1C2E74794();
  v74 = v23;
  v76 = v24;
  v77 = v25;
  sub_1C2C72340(v19, v21, v12 & 1);

  v83 = v71;
  v84 = v72;

  v26 = sub_1C2E748A4();
  v28 = v27;
  LOBYTE(v14) = v29;
  v72 = objc_opt_self();
  v30 = [v72 currentDevice];
  [v30 userInterfaceIdiom];

  sub_1C2E74584();
  v31 = sub_1C2E74534();
  v32 = v73;
  (*(*(v31 - 8) + 56))(v73, 1, 1, v31);
  sub_1C2E745C4();
  sub_1C2C73644(v32, &qword_1EC05D810);
  v33 = sub_1C2E747F4();
  v35 = v34;
  LOBYTE(v16) = v36;

  sub_1C2C72340(v26, v28, v14 & 1);

  LODWORD(v83) = sub_1C2E740D4();
  v73 = sub_1C2E74794();
  v38 = v37;
  LOBYTE(v14) = v39;
  v71 = v40;
  sub_1C2C72340(v33, v35, v16 & 1);

  LOBYTE(v28) = sub_1C2E744B4();
  sub_1C2E73034();
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  LOBYTE(v16) = v14 & 1;
  v82 = v14 & 1;
  v81 = 0;
  LOBYTE(v14) = sub_1C2E74444();
  v49 = [v72 currentDevice];
  [v49 userInterfaceIdiom];

  sub_1C2E73034();
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v57 = v56;
  LOBYTE(v83) = 0;
  LODWORD(v49) = sub_1C2E740E4();
  v58 = &v8[*(v78 + 44)];
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064DF0);
  v60 = *(v59 + 52);
  v61 = *MEMORY[0x1E697F468];
  v62 = sub_1C2E73D44();
  (*(*(v62 - 8) + 104))(&v58[v60], v61, v62);
  *v58 = v49;
  *&v58[*(v59 + 56)] = 256;
  *v8 = v73;
  *(v8 + 1) = v38;
  v8[16] = v16;
  *(v8 + 3) = v71;
  v8[32] = v28;
  *(v8 + 5) = v42;
  *(v8 + 6) = v44;
  *(v8 + 7) = v46;
  *(v8 + 8) = v48;
  v8[72] = 0;
  v8[80] = v14;
  *(v8 + 11) = v51;
  *(v8 + 12) = v53;
  *(v8 + 13) = v55;
  *(v8 + 14) = v57;
  v8[120] = 0;
  v63 = v79;
  sub_1C2C736A4(v8, v79, &qword_1EC064DE8);
  v64 = v80;
  v65 = v75;
  v66 = v74;
  *v80 = v75;
  v64[1] = v66;
  LOBYTE(v58) = v76 & 1;
  *(v64 + 16) = v76 & 1;
  v64[3] = v77;
  v67 = v64;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064DF8);
  sub_1C2C736A4(v63, v67 + *(v68 + 48), &qword_1EC064DE8);
  sub_1C2C72330(v65, v66, v58);

  sub_1C2C73644(v8, &qword_1EC064DE8);
  sub_1C2C73644(v63, &qword_1EC064DE8);
  sub_1C2C72340(v65, v66, v58);
}

uint64_t FTMenuRow.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064B28);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - v4;
  v7 = *v1;
  v6 = *(v1 + 8);
  v9 = *(v1 + 16);
  v8 = *(v1 + 24);
  *v5 = sub_1C2E73C24();
  *(v5 + 1) = 0;
  v5[16] = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064B30);
  sub_1C2E66720(v7, v6, v9, v8, &v5[*(v10 + 44)]);
  v5[*(v3 + 36)] = 0;
  v11 = swift_allocObject();
  v11[2] = v7;
  v11[3] = v6;
  v11[4] = v9;
  v11[5] = v8;

  sub_1C2C9A508(v6);
  sub_1C2E68554();

  sub_1C2E749F4();

  sub_1C2C73644(v5, &qword_1EC064B28);
  v12 = swift_allocObject();
  v12[2] = v7;
  v12[3] = v6;
  v12[4] = v9;
  v12[5] = v8;
  v13 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064B50) + 36));
  *v13 = 0;
  v13[1] = 0;
  v13[2] = sub_1C2E68A48;
  v13[3] = v12;

  sub_1C2C9A508(v6);
}

uint64_t sub_1C2E66720@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v153 = a3;
  v154 = a4;
  v162 = a5;
  v163 = a2;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC063450);
  v146 = *(v148 - 8);
  MEMORY[0x1EEE9AC00](v148);
  v132 = v125 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064B60);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v143 = v125 - v8;
  v138 = sub_1C2E73DA4();
  v137 = *(v138 - 8);
  MEMORY[0x1EEE9AC00](v138);
  v136 = v125 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064B68);
  v134 = *(v135 - 8);
  MEMORY[0x1EEE9AC00](v135);
  v133 = v125 - v10;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064B70);
  MEMORY[0x1EEE9AC00](v139);
  v157 = v125 - v11;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064B78);
  MEMORY[0x1EEE9AC00](v142);
  v140 = v125 - v12;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064B80);
  v145 = *(v147 - 8);
  MEMORY[0x1EEE9AC00](v147);
  v144 = v125 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064B88);
  v159 = *(v14 - 8);
  v160 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v141 = v125 - v15;
  v16 = sub_1C2E71934();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v129 = v125 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_1C2E75C14();
  v130 = *(v131 - 8);
  MEMORY[0x1EEE9AC00](v131);
  v127 = v125 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v128 = v125 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064B90);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v158 = v125 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v156 = v125 - v24;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064B98);
  MEMORY[0x1EEE9AC00](v152);
  v26 = v125 - v25;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064BA0);
  MEMORY[0x1EEE9AC00](v149);
  v151 = v125 - v27;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064BA8);
  MEMORY[0x1EEE9AC00](v150);
  v126 = v125 - v28;
  v29 = sub_1C2E72024();
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v32 = v125 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062D80);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v35 = v125 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062DA0);
  v37 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v39 = v125 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v42 = v125 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064BB0);
  MEMORY[0x1EEE9AC00](v43 - 8);
  v155 = v125 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v164 = v125 - v46;
  v161 = a1;
  sub_1C2E71FA4();
  if ((*(v37 + 48))(v35, 1, v36) == 1)
  {
    v47 = &qword_1EC062D80;
    v48 = v35;
  }

  else
  {
    sub_1C2C71D5C(v35, v42, &qword_1EC062DA0);
    (*(v30 + 104))(v32, *MEMORY[0x1E6995D80], v29);
    sub_1C2E69F88(&qword_1EC064C30, MEMORY[0x1E6995D98]);
    v49 = sub_1C2E75BA4();
    v50 = *(v30 + 8);
    v50(v32, v29);
    if ((v49 & 1) == 0)
    {
      v51 = sub_1C2C736A4(v42, v39, &qword_1EC062DA0);
      (*&v39[*(v36 + 48)])(v51);
      v53 = v52;
      v55 = v54;

      v125[3] = v53;
      if (v53)
      {
        v56 = (v50)(v39, v29);
        v125[1] = v125;
        MEMORY[0x1EEE9AC00](v56);
        v57 = v161;
        v58 = v163;
        v125[-6] = v161;
        v125[-5] = v58;
        v125[2] = v55;
        v59 = v153;
        v60 = v154;
        v125[-4] = v153;
        v125[-3] = v60;
        v125[-2] = v42;
        MEMORY[0x1EEE9AC00](v61);
        v125[-4] = v57;
        v125[-3] = v62;
        v125[-2] = v59;
        v125[-1] = v60;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064C38);
        sub_1C2C94F38(&qword_1EC064BD8, &qword_1EC064B98);
        sub_1C2E69500();
        v63 = v126;
        sub_1C2E746F4();
        v64 = sub_1C2E740D4();
        v65 = v151;
        *(v63 + *(v150 + 36)) = v64;
        sub_1C2C736A4(v63, v65, &qword_1EC064BA8);
        swift_storeEnumTagMultiPayload();
        sub_1C2E68D50();
        v66 = v59;
        sub_1C2E73F44();

        sub_1C2C73644(v63, &qword_1EC064BA8);
        v67 = &qword_1EC062DA0;
        v68 = v42;
        goto LABEL_9;
      }

      v50(v39, v29);
    }

    v47 = &qword_1EC062DA0;
    v48 = v42;
  }

  sub_1C2C73644(v48, v47);
  v60 = v154;
  *v26 = sub_1C2E73C24();
  *(v26 + 1) = 0;
  v26[16] = 0;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064BB8);
  v57 = v161;
  v66 = v153;
  sub_1C2E64E10(v161, v163, v153, v60, &v26[*(v69 + 44)]);
  sub_1C2C736A4(v26, v151, &qword_1EC064B98);
  swift_storeEnumTagMultiPayload();
  sub_1C2E68D50();
  sub_1C2C94F38(&qword_1EC064BD8, &qword_1EC064B98);
  sub_1C2E73F44();
  v68 = v26;
  v67 = &qword_1EC064B98;
LABEL_9:
  sub_1C2C73644(v68, v67);
  v70 = v157;
  if (sub_1C2E71FC4())
  {
    v71 = sub_1C2E720C4();
    if (v72)
    {
      v73 = v71;
      v74 = v72;
    }

    else
    {
      v78 = v128;
      sub_1C2E75BB4();
      v161 = &unk_1C2E93D70;
      v79 = v130;
      v80 = v131;
      (*(v130 + 16))(v127, v78, v131);
      type metadata accessor for StringDummy();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v82 = [objc_opt_self() bundleForClass_];
      sub_1C2E718F4();
      v73 = sub_1C2E75C84();
      v74 = v83;
      (*(v79 + 8))(v78, v80);
    }

    v84 = swift_allocObject();
    v85 = v163;
    v84[2] = v57;
    v84[3] = v85;
    v84[4] = v66;
    v84[5] = v60;
    MEMORY[0x1EEE9AC00](v84);
    v125[-2] = v73;
    v125[-1] = v74;

    sub_1C2C9A508(v85);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E518);
    sub_1C2CD8E5C();
    v86 = v133;
    sub_1C2E751C4();

    v87 = v136;
    sub_1C2E73D94();
    sub_1C2C94F38(&qword_1EC064BE8, &qword_1EC064B68);
    sub_1C2E69F88(&qword_1EC05FAE8, MEMORY[0x1E697C540]);
    v88 = v135;
    v89 = v138;
    sub_1C2E74974();
    (*(v137 + 8))(v87, v89);
    (*(v134 + 8))(v86, v88);
    v90 = (v70 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064BF0) + 36));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DFA8);
    sub_1C2E73824();
    *v90 = swift_getKeyPath();
    LODWORD(v90) = sub_1C2E740D4();
    *(v70 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064BF8) + 36)) = v90;
    v91 = sub_1C2E75744();
    v93 = v92;
    v94 = sub_1C2E72084();
    if (v94)
    {
      v95 = v94;
      v96 = *MEMORY[0x1E697F468];
      v97 = sub_1C2E73D44();
      v98 = v132;
      (*(*(v97 - 8) + 104))(v132, v96, v97);
      v99 = v148;
      *&v98[*(v148 + 52)] = v95;
      *&v98[*(v99 + 56)] = 256;
      v100 = v98;
      v101 = v143;
      sub_1C2C71D5C(v100, v143, &qword_1EC063450);
      v102 = 0;
    }

    else
    {
      v102 = 1;
      v99 = v148;
      v101 = v143;
    }

    (*(v146 + 56))(v101, v102, 1, v99);
    v103 = v70 + *(v139 + 36);
    sub_1C2C71D5C(v101, v103, &qword_1EC064B60);
    v104 = (v103 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064C00) + 36));
    *v104 = v91;
    v104[1] = v93;
    v105 = sub_1C2E72084();
    if (!v105)
    {
      v105 = sub_1C2E74F84();
    }

    v106 = v105;
    v76 = v160;
    KeyPath = swift_getKeyPath();
    v165 = v106;
    v108 = sub_1C2E73284();
    v109 = v140;
    sub_1C2C71D5C(v70, v140, &qword_1EC064B70);
    v110 = (v109 + *(v142 + 36));
    *v110 = KeyPath;
    v110[1] = v108;
    sub_1C2E68FF0();
    v111 = v144;
    sub_1C2E74CD4();
    sub_1C2C73644(v109, &qword_1EC064B78);
    v112 = v141;
    v113 = &v141[*(v76 + 36)];
    v114 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060178) + 28);
    v115 = *MEMORY[0x1E697DC20];
    v116 = sub_1C2E730E4();
    (*(*(v116 - 8) + 104))(v113 + v114, v115, v116);
    *v113 = swift_getKeyPath();
    (*(v145 + 32))(v112, v111, v147);
    v117 = v112;
    v77 = v156;
    sub_1C2C71D5C(v117, v156, &qword_1EC064B88);
    v75 = 0;
  }

  else
  {
    v75 = 1;
    v76 = v160;
    v77 = v156;
  }

  (*(v159 + 56))(v77, v75, 1, v76);
  v118 = v164;
  v119 = v155;
  sub_1C2C736A4(v164, v155, &qword_1EC064BB0);
  v120 = v158;
  sub_1C2C92798(v77, v158);
  v121 = v162;
  sub_1C2C736A4(v119, v162, &qword_1EC064BB0);
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064BE0);
  v123 = v121 + *(v122 + 48);
  *v123 = 0x4024000000000000;
  *(v123 + 8) = 0;
  sub_1C2C92798(v120, v121 + *(v122 + 64));
  sub_1C2C73644(v77, &qword_1EC064B90);
  sub_1C2C73644(v118, &qword_1EC064BB0);
  sub_1C2C73644(v120, &qword_1EC064B90);
  return sub_1C2C73644(v119, &qword_1EC064BB0);
}

uint64_t sub_1C2E67AC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a1;
  v55 = a2;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064C78);
  MEMORY[0x1EEE9AC00](v52);
  v50 = &v42 - v2;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064C80);
  MEMORY[0x1EEE9AC00](v48);
  v4 = (&v42 - v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064C60);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v42 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064C70);
  v47 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v42 - v9;
  v11 = sub_1C2E72024();
  v51 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064C50);
  v53 = *(v14 - 8);
  v54 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v42 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062D80);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v42 - v18;
  sub_1C2E71FA4();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062DA0);
  if ((*(*(v20 - 8) + 48))(v19, 1, v20))
  {
    sub_1C2C73644(v19, &qword_1EC062D80);
LABEL_3:
    v21 = 1;
    v22 = v55;
    return (*(v53 + 56))(v22, v21, 1, v54);
  }

  v45 = v7;
  v46 = v13;
  v42 = v10;
  v43 = v16;
  v44 = v5;
  v23 = *&v19[*(v20 + 48)];

  v24 = sub_1C2C73644(v19, &qword_1EC062D80);
  v25 = v23(v24);
  v27 = v26;
  v29 = v28;

  if (!v27)
  {
    goto LABEL_3;
  }

  v30 = v51;
  v31 = v46;
  (*(v51 + 2))(v46, v49, v11);
  v32 = (*(v30 + 11))(v31, v11);
  if (v32 == *MEMORY[0x1E6995D88])
  {
    MEMORY[0x1EEE9AC00](v32);
    *(&v42 - 4) = v25;
    *(&v42 - 3) = v27;
    *(&v42 - 2) = v29;
    v56 = v25;
    v57 = v27;
    sub_1C2C74960();

    v56 = sub_1C2E748A4();
    v57 = v33;
    v58 = v34 & 1;
    v59 = v35;
    v36 = v42;
    sub_1C2E75474();
    v51 = v27;
    v37 = v47;
    (*(v47 + 16))(v4, v36, v8);
    swift_storeEnumTagMultiPayload();
    sub_1C2E6969C();
    v38 = v45;
    sub_1C2E73F44();
    sub_1C2C736A4(v38, v50, &qword_1EC064C60);
    swift_storeEnumTagMultiPayload();
    sub_1C2E69610();
    v39 = v43;
    sub_1C2E73F44();

    sub_1C2C73644(v38, &qword_1EC064C60);
    (*(v37 + 8))(v36, v8);
  }

  else
  {
    v40 = v45;
    v39 = v43;
    if (v32 == *MEMORY[0x1E6995D90])
    {
      *v4 = v29;
      swift_storeEnumTagMultiPayload();
      sub_1C2E6969C();
      swift_retain_n();
      sub_1C2E73F44();
      sub_1C2C736A4(v40, v50, &qword_1EC064C60);
      swift_storeEnumTagMultiPayload();
      sub_1C2E69610();
      sub_1C2E73F44();

      sub_1C2C73644(v40, &qword_1EC064C60);
    }

    else
    {
      swift_storeEnumTagMultiPayload();
      sub_1C2E69610();
      sub_1C2E73F44();

      (*(v51 + 1))(v46, v11);
    }
  }

  v22 = v55;
  sub_1C2C71D5C(v39, v55, &qword_1EC064C50);
  v21 = 0;
  return (*(v53 + 56))(v22, v21, 1, v54);
}

uint64_t sub_1C2E68268@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = sub_1C2E73C24();
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064BB8);
  return sub_1C2E64E10(a1, a2, a3, a4, a5 + *(v10 + 44));
}

uint64_t sub_1C2E682E4()
{
  v0 = sub_1C2E71EB4();
  v2 = v1;
  if (sub_1C2E71F64())
  {
    if (sub_1C2E72014())
    {
      v3 = swift_allocObject();
      *(v3 + 16) = v0;
      *(v3 + 24) = v2;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F158);
      sub_1C2E75194();
    }

    else
    {
      v0();
    }

    sub_1C2E72064();
  }

  else
  {
    v0();
  }
}

uint64_t sub_1C2E68414@<X0>(uint64_t a1@<X8>)
{
  sub_1C2C74960();

  v2 = sub_1C2E748A4();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_1C2E74454();
  result = sub_1C2E73034();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  *(a1 + 40) = v11;
  *(a1 + 48) = v12;
  *(a1 + 56) = v13;
  *(a1 + 64) = v14;
  *(a1 + 72) = 0;
  return result;
}

uint64_t sub_1C2E684C0()
{
  sub_1C2E757C4();
  sub_1C2E733C4();
}

unint64_t sub_1C2E68554()
{
  result = qword_1EC064B38;
  if (!qword_1EC064B38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC064B28);
    sub_1C2C94F38(&qword_1EC064B40, &qword_1EC064B48);
    sub_1C2C94F38(&qword_1EC05E4A0, &qword_1EC05E4A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC064B38);
  }

  return result;
}

uint64_t sub_1C2E68638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a3;
  v22 = a4;
  v20 = a2;
  v4 = sub_1C2E72024();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062D80);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062DA0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v20 - v13;
  sub_1C2E71FA4();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1C2C73644(v10, &qword_1EC062D80);
    v15 = sub_1C2E720B4();
    v17 = v16;
    if (sub_1C2E71F64())
    {
      if (sub_1C2E72014())
      {
        v25 = v20;
        v26 = v21;
        v27 = v22;
        v18 = swift_allocObject();
        *(v18 + 16) = v15;
        *(v18 + 24) = v17;
        v23 = sub_1C2CB1B14;
        v24 = v18;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F158);
        sub_1C2E75194();
      }

      else
      {
        v15();
      }

      sub_1C2E72064();
    }

    else
    {
      v15();
    }
  }

  else
  {
    sub_1C2C71D5C(v10, v14, &qword_1EC062DA0);
    (*(v5 + 16))(v7, v14, v4);
    if ((*(v5 + 88))(v7, v4) == *MEMORY[0x1E6995D80])
    {
      sub_1C2E72004();
      return sub_1C2C73644(v14, &qword_1EC062DA0);
    }

    else
    {
      sub_1C2C73644(v14, &qword_1EC062DA0);
      return (*(v5 + 8))(v7, v4);
    }
  }
}

uint64_t sub_1C2E689A0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F158);
  result = sub_1C2E75184();
  if (v1)
  {
    v1(result);
    sub_1C2C71668(v1);
    return sub_1C2E75194();
  }

  return result;
}

uint64_t sub_1C2E68A70@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064B28);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - v4;
  v7 = *v1;
  v6 = *(v1 + 8);
  v9 = *(v1 + 16);
  v8 = *(v1 + 24);
  *v5 = sub_1C2E73C24();
  *(v5 + 1) = 0;
  v5[16] = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064B30);
  sub_1C2E66720(v7, v6, v9, v8, &v5[*(v10 + 44)]);
  v5[*(v3 + 36)] = 0;
  v11 = swift_allocObject();
  v11[2] = v7;
  v11[3] = v6;
  v11[4] = v9;
  v11[5] = v8;

  sub_1C2C9A508(v6);
  sub_1C2E68554();

  sub_1C2E749F4();

  sub_1C2C73644(v5, &qword_1EC064B28);
  v12 = swift_allocObject();
  v12[2] = v7;
  v12[3] = v6;
  v12[4] = v9;
  v12[5] = v8;
  v13 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064B50) + 36));
  *v13 = 0;
  v13[1] = 0;
  v13[2] = sub_1C2E6A088;
  v13[3] = v12;

  sub_1C2C9A508(v6);
}

unint64_t sub_1C2E68C68()
{
  result = qword_1EC064B58;
  if (!qword_1EC064B58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC064B50);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC064B28);
    sub_1C2E68554();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC064B58);
  }

  return result;
}

unint64_t sub_1C2E68D50()
{
  result = qword_1EC064BC0;
  if (!qword_1EC064BC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC064BA8);
    sub_1C2C94F38(&qword_1EC064BC8, &qword_1EC064BD0);
    sub_1C2C94F38(&qword_1EC05CB18, &qword_1EC05F548);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC064BC0);
  }

  return result;
}

uint64_t sub_1C2E68E48(uint64_t a1, void (*a2)(uint64_t *__return_ptr), uint64_t a3, void (*a4)(uint64_t *__return_ptr))
{
  if (sub_1C2E734C4())
  {
    a2(&v7);
    swift_retain_n();
    sub_1C2E73F44();
  }

  else
  {
    a4(&v7);
    sub_1C2E73F44();
  }

  return v7;
}

uint64_t sub_1C2E68F98@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x1C69244F0]();
  *a1 = result;
  return result;
}

unint64_t sub_1C2E68FF0()
{
  result = qword_1EC064C08;
  if (!qword_1EC064C08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC064B78);
    sub_1C2E690A8();
    sub_1C2C94F38(&qword_1EC060DA0, &qword_1EC060DA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC064C08);
  }

  return result;
}

unint64_t sub_1C2E690A8()
{
  result = qword_1EC064C10;
  if (!qword_1EC064C10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC064B70);
    sub_1C2E69160();
    sub_1C2C94F38(&qword_1EC064C28, &qword_1EC064C00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC064C10);
  }

  return result;
}

unint64_t sub_1C2E69160()
{
  result = qword_1EC064C18;
  if (!qword_1EC064C18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC064BF8);
    sub_1C2E69218();
    sub_1C2C94F38(&qword_1EC05CB18, &qword_1EC05F548);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC064C18);
  }

  return result;
}

unint64_t sub_1C2E69218()
{
  result = qword_1EC064C20;
  if (!qword_1EC064C20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC064BF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC064B68);
    sub_1C2E73DA4();
    sub_1C2C94F38(&qword_1EC064BE8, &qword_1EC064B68);
    sub_1C2E69F88(&qword_1EC05FAE8, MEMORY[0x1E697C540]);
    swift_getOpaqueTypeConformance2();
    sub_1C2C94F38(qword_1EC05DFB0, &qword_1EC05DFA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC064C20);
  }

  return result;
}

uint64_t sub_1C2E693E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

unint64_t sub_1C2E69500()
{
  result = qword_1EC064C40;
  if (!qword_1EC064C40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC064C38);
    sub_1C2E69584();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC064C40);
  }

  return result;
}

unint64_t sub_1C2E69584()
{
  result = qword_1EC064C48;
  if (!qword_1EC064C48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC064C50);
    sub_1C2E69610();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC064C48);
  }

  return result;
}

unint64_t sub_1C2E69610()
{
  result = qword_1EC064C58;
  if (!qword_1EC064C58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC064C60);
    sub_1C2E6969C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC064C58);
  }

  return result;
}

unint64_t sub_1C2E6969C()
{
  result = qword_1EC064C68;
  if (!qword_1EC064C68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC064C70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC064C68);
  }

  return result;
}

unint64_t sub_1C2E69738()
{
  result = qword_1EC064CB0;
  if (!qword_1EC064CB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC064CA0);
    sub_1C2E697C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC064CB0);
  }

  return result;
}

unint64_t sub_1C2E697C4()
{
  result = qword_1EC064CB8;
  if (!qword_1EC064CB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC064C98);
    sub_1C2E6987C();
    sub_1C2C94F38(&qword_1EC05BA70, &qword_1EC0614F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC064CB8);
  }

  return result;
}

unint64_t sub_1C2E6987C()
{
  result = qword_1EC064CC0;
  if (!qword_1EC064CC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC064C90);
    sub_1C2E69908();
    sub_1C2E69DEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC064CC0);
  }

  return result;
}

unint64_t sub_1C2E69908()
{
  result = qword_1EC064CC8;
  if (!qword_1EC064CC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC064CD0);
    sub_1C2E69994();
    sub_1C2E69CA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC064CC8);
  }

  return result;
}

unint64_t sub_1C2E69994()
{
  result = qword_1EC064CD8;
  if (!qword_1EC064CD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC064CE0);
    sub_1C2D48EE0();
    sub_1C2E69A20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC064CD8);
  }

  return result;
}

unint64_t sub_1C2E69A20()
{
  result = qword_1EC064CE8;
  if (!qword_1EC064CE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC064CF0);
    sub_1C2E69AD8();
    sub_1C2C94F38(&qword_1EC05B478, &qword_1EC05DDB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC064CE8);
  }

  return result;
}

unint64_t sub_1C2E69AD8()
{
  result = qword_1EC064CF8;
  if (!qword_1EC064CF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC064D00);
    sub_1C2E69B64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC064CF8);
  }

  return result;
}

unint64_t sub_1C2E69B64()
{
  result = qword_1EC064D08;
  if (!qword_1EC064D08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC064D10);
    sub_1C2E69BF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC064D08);
  }

  return result;
}

unint64_t sub_1C2E69BF0()
{
  result = qword_1EC064D18;
  if (!qword_1EC064D18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC064D20);
    sub_1C2C76120();
    sub_1C2C94F38(&qword_1EC05B470, &qword_1EC05EAC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC064D18);
  }

  return result;
}

unint64_t sub_1C2E69CA8()
{
  result = qword_1EC064D28;
  if (!qword_1EC064D28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC064D30);
    sub_1C2E69D34();
    sub_1C2E27DA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC064D28);
  }

  return result;
}

unint64_t sub_1C2E69D34()
{
  result = qword_1EC064D38;
  if (!qword_1EC064D38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC064D40);
    sub_1C2C94F38(&qword_1EC064D48, &qword_1EC064D50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC064D38);
  }

  return result;
}

unint64_t sub_1C2E69DEC()
{
  result = qword_1EC064D58;
  if (!qword_1EC064D58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC064D60);
    sub_1C2E69E78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC064D58);
  }

  return result;
}

unint64_t sub_1C2E69E78()
{
  result = qword_1EC064D68;
  if (!qword_1EC064D68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC064D70);
    sub_1C2E69F04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC064D68);
  }

  return result;
}

unint64_t sub_1C2E69F04()
{
  result = qword_1EC064D78;
  if (!qword_1EC064D78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC064D80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC064D78);
  }

  return result;
}

uint64_t sub_1C2E69F88(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C2E69FD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C2E68E48(a1, *(v2 + 16), *(v2 + 24), *(v2 + 32));
  *a2 = result;
  *(a2 + 8) = v5 & 1;
  return result;
}

unint64_t sub_1C2E6A008()
{
  result = qword_1EC064E20;
  if (!qword_1EC064E20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC064E18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC064E20);
  }

  return result;
}

uint64_t IntelligenceControlsViewContainerViewModel.ControlsType.hashValue.getter()
{
  v1 = *v0;
  sub_1C2E76854();
  MEMORY[0x1C6927290](v1);
  return sub_1C2E76894();
}

uint64_t IntelligenceControlsViewContainerViewModel.init(controlsType:stringProvider:)@<X0>(unsigned __int8 *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  *a3 = v5;
  *(a3 + 8) = sub_1C2E6A1E0(v5, a2);
  v6 = sub_1C2E6AC10(a2, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a2);
  *(a3 + 16) = v6;
  return result;
}

uint64_t sub_1C2E6A1E0(char a1, void *a2)
{
  v4 = sub_1C2E716A4();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v72 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0603A8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v74 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v70 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v77 = &v70 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v70 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v70 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E088);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v73 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v76 = &v70 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v70 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v70 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v70 - v30;
  v33 = a2[3];
  v32 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v33);
  v75 = v25;
  if (a1)
  {
    v71 = (*(v32 + 32))(v33, v32);
    type metadata accessor for StringDummy();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v35 = [objc_opt_self() bundleForClass_];
    sub_1C2E71684();

    sub_1C2E71694();
    sub_1C2E71674();
    v36 = sub_1C2E71664();
    v37 = v25;
    v38 = *(*(v36 - 8) + 56);
    v38(v37, 0, 1, v36);
    v39 = a2[3];
    v40 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v39);
    (*(v40 + 24))(v39, v40);
    v41 = *MEMORY[0x1E6995E80];
    v42 = sub_1C2E72244();
    v43 = *(v42 - 8);
    v44 = *(v43 + 104);
    v45 = v77;
    v44(v77, v41, v42);
    v46 = *(v43 + 56);
    v46(v45, 0, 1, v42);
    v47 = *MEMORY[0x1E6995E70];
    v70 = v10;
    v44(v10, v47, v42);
    v46(v10, 0, 1, v42);
    type metadata accessor for IntelligenceMessageViewModel();
    v48 = swift_allocObject();
    v49 = OBJC_IVAR____TtC16CommunicationsUI28IntelligenceMessageViewModel__statusMessage;
    v38((v48 + OBJC_IVAR____TtC16CommunicationsUI28IntelligenceMessageViewModel__statusMessage), 1, 1, v36);
    *(v48 + OBJC_IVAR____TtC16CommunicationsUI28IntelligenceMessageViewModel__statusMessageLeadingImage) = 0;
    v50 = v45;
    v51 = OBJC_IVAR____TtC16CommunicationsUI28IntelligenceMessageViewModel__secondaryMessage;
    v38((v48 + OBJC_IVAR____TtC16CommunicationsUI28IntelligenceMessageViewModel__secondaryMessage), 1, 1, v36);
    v46(v48 + OBJC_IVAR____TtC16CommunicationsUI28IntelligenceMessageViewModel__messageStyle, 1, 1, v42);
    v46(v48 + OBJC_IVAR____TtC16CommunicationsUI28IntelligenceMessageViewModel__secondaryMessageStyle, 1, 1, v42);
    sub_1C2E71A94();
    v52 = v75;
    v53 = v73;
    sub_1C2C736A4(v75, v73, &qword_1EC05E088);
    sub_1C2C73644(v48 + v49, &qword_1EC05E088);
    sub_1C2C71D5C(v53, v48 + v49, &qword_1EC05E088);
    v54 = v76;
    sub_1C2C736A4(v76, v53, &qword_1EC05E088);
    sub_1C2C73644(v48 + v51, &qword_1EC05E088);
    sub_1C2C71D5C(v53, v48 + v51, &qword_1EC05E088);
    *(v48 + OBJC_IVAR____TtC16CommunicationsUI28IntelligenceMessageViewModel_centerAlignText) = 0;
    *(v48 + OBJC_IVAR____TtC16CommunicationsUI28IntelligenceMessageViewModel_lineLimit) = 3;
    *(v48 + OBJC_IVAR____TtC16CommunicationsUI28IntelligenceMessageViewModel_spacingToDivider) = 0x4030000000000000;

    sub_1C2D414B0(v55);
    v56 = v74;
    sub_1C2C736A4(v50, v74, &qword_1EC0603A8);
    sub_1C2D41C2C(v56);
    v57 = v70;
    sub_1C2C736A4(v70, v56, &qword_1EC0603A8);
    sub_1C2D41F88(v56);
  }

  else
  {
    (*(v32 + 24))(v33, v32);
    v58 = sub_1C2E71664();
    v59 = *(*(v58 - 8) + 56);
    v71 = v28;
    v59(v28, 1, 1, v58);
    v60 = sub_1C2E72244();
    v61 = *(*(v60 - 8) + 56);
    v74 = v18;
    v61(v18, 1, 1, v60);
    v76 = v15;
    v61(v15, 1, 1, v60);
    type metadata accessor for IntelligenceMessageViewModel();
    v48 = swift_allocObject();
    v62 = OBJC_IVAR____TtC16CommunicationsUI28IntelligenceMessageViewModel__statusMessage;
    v59((v48 + OBJC_IVAR____TtC16CommunicationsUI28IntelligenceMessageViewModel__statusMessage), 1, 1, v58);
    *(v48 + OBJC_IVAR____TtC16CommunicationsUI28IntelligenceMessageViewModel__statusMessageLeadingImage) = 0;
    v63 = OBJC_IVAR____TtC16CommunicationsUI28IntelligenceMessageViewModel__secondaryMessage;
    v59((v48 + OBJC_IVAR____TtC16CommunicationsUI28IntelligenceMessageViewModel__secondaryMessage), 1, 1, v58);
    v61((v48 + OBJC_IVAR____TtC16CommunicationsUI28IntelligenceMessageViewModel__messageStyle), 1, 1, v60);
    v61((v48 + OBJC_IVAR____TtC16CommunicationsUI28IntelligenceMessageViewModel__secondaryMessageStyle), 1, 1, v60);
    sub_1C2E71A94();
    v73 = v31;
    v64 = v31;
    v65 = v75;
    sub_1C2C736A4(v64, v75, &qword_1EC05E088);
    sub_1C2C73644(v48 + v62, &qword_1EC05E088);
    sub_1C2C71D5C(v65, v48 + v62, &qword_1EC05E088);
    v66 = v71;
    sub_1C2C736A4(v71, v65, &qword_1EC05E088);
    sub_1C2C73644(v48 + v63, &qword_1EC05E088);
    sub_1C2C71D5C(v65, v48 + v63, &qword_1EC05E088);
    *(v48 + OBJC_IVAR____TtC16CommunicationsUI28IntelligenceMessageViewModel_centerAlignText) = 0;
    *(v48 + OBJC_IVAR____TtC16CommunicationsUI28IntelligenceMessageViewModel_lineLimit) = 3;
    *(v48 + OBJC_IVAR____TtC16CommunicationsUI28IntelligenceMessageViewModel_spacingToDivider) = 0x4030000000000000;
    v54 = v66;
    if (*(v48 + OBJC_IVAR____TtC16CommunicationsUI28IntelligenceMessageViewModel__statusMessageLeadingImage))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      v78 = v48;
      sub_1C2D16CBC();
      sub_1C2E71A54();
    }

    v50 = v74;
    v68 = v77;
    sub_1C2C736A4(v74, v77, &qword_1EC0603A8);
    sub_1C2D41C2C(v68);
    v57 = v76;
    sub_1C2C736A4(v76, v68, &qword_1EC0603A8);
    sub_1C2D41F88(v68);
    v52 = v73;
  }

  sub_1C2C73644(v57, &qword_1EC0603A8);
  sub_1C2C73644(v50, &qword_1EC0603A8);
  sub_1C2C73644(v54, &qword_1EC05E088);
  sub_1C2C73644(v52, &qword_1EC05E088);
  return v48;
}

uint64_t sub_1C2E6AC10(void *a1, int a2)
{
  v75 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0603A8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v74 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v70 = &v67 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v82 = &v67 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v69 = &v67 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v81 = &v67 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E088);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v73 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v80 = &v67 - v16;
  v68 = sub_1C2E72124();
  v17 = *(v68 - 1);
  MEMORY[0x1EEE9AC00](v68);
  v19 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1C2E720F4();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0604A0);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v71 = &v67 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v77 = &v67 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v67 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v78 = &v67 - v32;
  v79 = sub_1C2E71664();
  v72 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v34 = &v67 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = a1[3];
  v35 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v36);
  v37 = *(v35 + 8);
  v76 = v34;
  v37(v36, v35);
  if (v75)
  {
    v38 = 1;
  }

  else
  {
    (*(v21 + 104))(v23, *MEMORY[0x1E6995DE8], v20);
    (*(v17 + 104))(v19, *MEMORY[0x1E6995E00], v68);
    sub_1C2E72154();
    v38 = 0;
  }

  v39 = sub_1C2E72144();
  v68 = *(*(v39 - 8) + 56);
  v68(v30, v38, 1, v39);
  sub_1C2C71D5C(v30, v78, &qword_1EC0604A0);
  v40 = a1[3];
  v41 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v40);
  (*(v41 + 16))(v40, v41);
  v42 = v81;
  v43 = v70;
  if (v75)
  {
    v44 = sub_1C2E72244();
    v45 = *(v44 - 8);
    v46 = *(v45 + 56);
    v47 = v69;
    v46(v69, 1, 1, v44);
    sub_1C2C71D5C(v47, v42, &qword_1EC0603A8);
    (*(v45 + 104))(v43, *MEMORY[0x1E6995E80], v44);
    v46(v43, 0, 1, v44);
  }

  else
  {
    v48 = *MEMORY[0x1E6995E78];
    v44 = sub_1C2E72244();
    v49 = *(v44 - 8);
    v50 = v69;
    (*(v49 + 104))(v69, v48, v44);
    v51 = *(v49 + 56);
    v51(v50, 0, 1, v44);
    sub_1C2C71D5C(v50, v42, &qword_1EC0603A8);
    v51(v43, 1, 1, v44);
  }

  sub_1C2C71D5C(v43, v82, &qword_1EC0603A8);
  v52 = v68;
  v68(v77, 1, 1, v39);
  type metadata accessor for ParticipantLabelViewModel();
  v53 = swift_allocObject();
  v52(v53 + OBJC_IVAR____TtC16CommunicationsUI25ParticipantLabelViewModel__titleSymbol, 1, 1, v39);
  v54 = v72;
  v55 = v79;
  (*(v72 + 56))(v53 + OBJC_IVAR____TtC16CommunicationsUI25ParticipantLabelViewModel__subtitle, 1, 1, v79);
  v56 = OBJC_IVAR____TtC16CommunicationsUI25ParticipantLabelViewModel__titleStyle;
  sub_1C2E72244();
  v57 = *(*(v44 - 8) + 56);
  v57(v53 + v56, 1, 1, v44);
  v57(v53 + OBJC_IVAR____TtC16CommunicationsUI25ParticipantLabelViewModel__subtitleStyle, 1, 1, v44);
  v52(v53 + OBJC_IVAR____TtC16CommunicationsUI25ParticipantLabelViewModel__subtitleSymbol, 1, 1, v39);
  sub_1C2E71A94();
  (*(v54 + 16))(v53 + OBJC_IVAR____TtC16CommunicationsUI25ParticipantLabelViewModel__title, v76, v55);
  v58 = v78;
  v59 = v71;
  sub_1C2C736A4(v78, v71, &qword_1EC0604A0);
  sub_1C2D45B78(v59);
  v60 = v80;
  v61 = v73;
  sub_1C2C736A4(v80, v73, &qword_1EC05E088);
  sub_1C2D45E80(v61);
  v62 = v81;
  v63 = v74;
  sub_1C2C736A4(v81, v74, &qword_1EC0603A8);
  sub_1C2D460EC(v63);
  v64 = v82;
  sub_1C2C736A4(v82, v63, &qword_1EC0603A8);
  sub_1C2D46358(v63);
  v65 = v77;
  sub_1C2C736A4(v77, v59, &qword_1EC0604A0);
  sub_1C2D46690(v59);
  sub_1C2C73644(v65, &qword_1EC0604A0);
  sub_1C2C73644(v64, &qword_1EC0603A8);
  sub_1C2C73644(v62, &qword_1EC0603A8);
  sub_1C2C73644(v60, &qword_1EC05E088);
  sub_1C2C73644(v58, &qword_1EC0604A0);
  (*(v54 + 8))(v76, v79);
  return v53;
}

uint64_t IntelligenceControlsViewContainerViewModel.update(with:)(void *a1)
{
  v3 = sub_1C2E71664();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E088);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v24 - v14;
  v16 = *v1;
  v24[1] = *(v1 + 2);
  if (v16 == 1)
  {
    v24[0] = *(v1 + 1);
    v18 = a1[3];
    v17 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v18);
    (*(v17 + 24))(v18, v17);
    sub_1C2C736A4(v15, v12, &qword_1EC05E088);
    sub_1C2D41838(v12);
    sub_1C2C73644(v15, &qword_1EC05E088);
  }

  v19 = a1[3];
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v19);
  (*(v20 + 8))(v19, v20);
  (*(v4 + 16))(v6, v9, v3);
  sub_1C2D457EC(v6);
  (*(v4 + 8))(v9, v3);
  v21 = a1[3];
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v21);
  (*(v22 + 16))(v21, v22);
  sub_1C2C736A4(v15, v12, &qword_1EC05E088);
  sub_1C2D45E80(v12);
  return sub_1C2C73644(v15, &qword_1EC05E088);
}

unint64_t sub_1C2E6B88C()
{
  result = qword_1EC064E28[0];
  if (!qword_1EC064E28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC064E28);
  }

  return result;
}

void sub_1C2E6B930()
{
  sub_1C2D723F8();
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      type metadata accessor for CGSize(319);
      if (v2 <= 0x3F)
      {
        sub_1C2CE0934();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1C2E6B9F0(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(*(sub_1C2E730D4() - 8) + 64);
  v7 = *(*(a3 + 16) - 8);
  if (v6 <= 8)
  {
    v6 = 8;
  }

  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  v10 = *(v7 + 64);
  if (v8 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v12 = v10 + 7;
  if (v11 >= a2)
  {
    goto LABEL_29;
  }

  v13 = ((((v12 + (((v6 & 0xFFFFFFFFFFFFFFF8) + v9 + 16) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 24;
  v14 = v13 & 0xFFFFFFF8;
  if ((v13 & 0xFFFFFFF8) != 0)
  {
    v15 = 2;
  }

  else
  {
    v15 = a2 - v11 + 1;
  }

  if (v15 >= 0x10000)
  {
    v16 = 4;
  }

  else
  {
    v16 = 2;
  }

  if (v15 < 0x100)
  {
    v16 = 1;
  }

  if (v15 >= 2)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v18 = *(a1 + v13);
      if (!v18)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v18 = *(a1 + v13);
      if (!v18)
      {
        goto LABEL_29;
      }
    }

LABEL_26:
    v20 = v18 - 1;
    if (v14)
    {
      v20 = 0;
      v21 = *a1;
    }

    else
    {
      v21 = 0;
    }

    return v11 + (v21 | v20) + 1;
  }

  if (v17)
  {
    v18 = *(a1 + v13);
    if (v18)
    {
      goto LABEL_26;
    }
  }

LABEL_29:
  v22 = (((a1 + v6 + 8) & 0xFFFFFFFFFFFFFFF8) + v9 + 8) & ~v9;
  if (v8 < 0x7FFFFFFF)
  {
    v24 = *(((((v12 + v22) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v24 >= 0xFFFFFFFF)
    {
      LODWORD(v24) = -1;
    }

    return (v24 + 1);
  }

  else
  {
    v23 = *(*(*(a3 + 16) - 8) + 48);

    return v23(v22);
  }
}

void sub_1C2E6BBE0(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(*(sub_1C2E730D4() - 8) + 64);
  v9 = 8;
  if (v8 > 8)
  {
    v9 = v8;
  }

  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v10 + 80);
  if (v11 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = *(v10 + 84);
  }

  v14 = *(v10 + 64) + 7;
  v15 = ((((v14 + (((v9 & 0xFFFFFFFFFFFFFFF8) + v12 + 16) & ~v12)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 24;
  if (v13 >= a3)
  {
    v18 = 0;
    v19 = a2 - v13;
    if (a2 <= v13)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (((((v14 + (((v9 & 0xFFFFFFF8) + v12 + 16) & ~v12)) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFE8)
    {
      v16 = a3 - v13 + 1;
    }

    else
    {
      v16 = 2;
    }

    if (v16 >= 0x10000)
    {
      v17 = 4;
    }

    else
    {
      v17 = 2;
    }

    if (v16 < 0x100)
    {
      v17 = 1;
    }

    if (v16 >= 2)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v19 = a2 - v13;
    if (a2 <= v13)
    {
LABEL_19:
      if (v18 > 1)
      {
        if (v18 != 2)
        {
          *(a1 + v15) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_35;
        }

        *(a1 + v15) = 0;
      }

      else if (v18)
      {
        *(a1 + v15) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_35;
      }

      if (!a2)
      {
        return;
      }

LABEL_35:
      v22 = (((a1 + v9 + 8) & 0xFFFFFFFFFFFFFFF8) + v12 + 8) & ~v12;
      if (v11 < 0x7FFFFFFF)
      {
        v24 = ((((v14 + v22) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v24[1] = 0;
          v24[2] = 0;
          *v24 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v24[1] = (a2 - 1);
        }
      }

      else
      {
        v23 = *(v10 + 56);

        v23(v22, a2);
      }

      return;
    }
  }

  if (((((v14 + (((v9 & 0xFFFFFFF8) + v12 + 16) & ~v12)) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFE8)
  {
    v20 = v19;
  }

  else
  {
    v20 = 1;
  }

  if (((((v14 + (((v9 & 0xFFFFFFF8) + v12 + 16) & ~v12)) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFE8)
  {
    v21 = ~v13 + a2;
    bzero(a1, v15);
    *a1 = v21;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      *(a1 + v15) = v20;
    }

    else
    {
      *(a1 + v15) = v20;
    }
  }

  else if (v18)
  {
    *(a1 + v15) = v20;
  }
}

uint64_t sub_1C2E6BE78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v18[1] = a3;
  swift_getWitnessTable();
  sub_1C2E74094();
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  sub_1C2E73154();
  sub_1C2E73654();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC064EB0);
  sub_1C2E73654();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC064EB8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC064EC0);
  sub_1C2E73654();
  swift_getTupleTypeMetadata3();
  sub_1C2E75844();
  swift_getWitnessTable();
  v8 = sub_1C2E75304();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v18 - v13;
  sub_1C2E75734();
  v18[4] = v6;
  v18[5] = v7;
  v18[6] = a1;
  v19 = v3;
  sub_1C2E752F4();
  WitnessTable = swift_getWitnessTable();
  sub_1C2C6EE48(v11, v8, WitnessTable);
  v16 = *(v9 + 8);
  v16(v11, v8);
  sub_1C2C6EE48(v14, v8, WitnessTable);
  return (v16)(v14, v8);
}

uint64_t sub_1C2E6C118@<X0>(uint64_t (*a1)(char *, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v70 = a1;
  v76 = a5;
  v72 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC064EC0);
  v80 = a4;
  v68 = sub_1C2E73154();
  v8 = sub_1C2E73654();
  v9 = *(v8 - 8);
  v74 = v8;
  v75 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v71 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v73 = &v57 - v12;
  v66 = sub_1C2E730D4();
  v63 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v62 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v61 = &v57 - v15;
  v16 = type metadata accessor for DropShadowModifier();
  swift_getWitnessTable();
  sub_1C2E74094();
  v17 = sub_1C2E73654();
  v69 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v57 - v18;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC064EB0);
  v79 = sub_1C2E73654();
  v81 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v21 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v82 = &v57 - v23;
  v64 = v16[10];
  WitnessTable = swift_getWitnessTable();
  v77 = a2;
  v25 = a3;
  v65 = a3;
  v26 = v80;
  sub_1C2E74E34();
  v83 = v25;
  v84 = v26;
  v85 = a2;
  sub_1C2E75744();
  v67 = swift_getWitnessTable();
  v113 = WitnessTable;
  v114 = v67;
  v60 = MEMORY[0x1E697E858];
  v27 = swift_getWitnessTable();
  sub_1C2E6CB74();
  sub_1C2E74D64();
  (*(v69 + 8))(v19, v17);
  v28 = sub_1C2C94F38(&qword_1EC064ED0, &qword_1EC064EB0);
  v111 = v27;
  v112 = v28;
  v29 = v79;
  v68 = swift_getWitnessTable();
  v78 = v21;
  sub_1C2C6EE48(v21, v29, v68);
  v30 = *(v81 + 8);
  v69 = v81 + 8;
  v70 = v30;
  v30(v21, v29);
  v31 = v77;
  v32 = (v77 + v16[12]);
  v33 = *v32;
  v34 = v32[1];
  v59 = v32[2];
  *&v107 = v33;
  *(&v107 + 1) = v34;
  *&v108[0] = v59;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E860);
  sub_1C2E75184();
  v57 = *(&v100 + 1);
  v58 = v100;
  v35 = *(v31 + v16[9]);
  v36 = 0.0;
  v37 = 0.5;
  sub_1C2E75744();
  sub_1C2E73274();
  *&v110[7] = v115;
  *&v110[23] = v116;
  *&v110[39] = v117;
  v38 = v61;
  sub_1C2C72C30(v61);
  v39 = v62;
  v40 = v63;
  v41 = v66;
  (*(v63 + 104))(v62, *MEMORY[0x1E697DBA8], v66);
  LOBYTE(v21) = sub_1C2E730C4();
  v42 = *(v40 + 8);
  v42(v39, v41);
  v43 = (v42)(v38, v41);
  if ((v21 & 1) == 0)
  {
    v37 = 0.9;
  }

  if (v35 > 0.0)
  {
    v36 = 1.0;
  }

  MEMORY[0x1C69261C0](v43, 0.5, 1.0, 0.0);
  v44 = sub_1C2E75774();

  *&v100 = v58;
  *(&v100 + 1) = v57;
  LOBYTE(v101[0]) = 0;
  *(v101 + 1) = *v110;
  *(&v101[1] + 1) = *&v110[16];
  *(&v101[2] + 1) = *&v110[32];
  *&v101[3] = *&v110[47];
  *(&v101[3] + 1) = v35;
  LOBYTE(v102) = 0;
  *(&v102 + 1) = v37;
  *&v103 = v36;
  *(&v103 + 1) = v44;
  v104 = v35;
  *&v107 = v33;
  *(&v107 + 1) = v34;
  *&v108[0] = v59;
  sub_1C2E75184();
  v45 = v90;
  sub_1C2E75744();
  sub_1C2E73274();
  *&v99[39] = v120;
  *&v99[23] = v119;
  *&v99[7] = v118;
  *(v108 + 1) = *v99;
  v107 = v45;
  LOBYTE(v108[0]) = 0;
  *(&v108[1] + 1) = *&v99[16];
  *(&v108[2] + 1) = *&v99[32];
  *&v108[3] = *(&v120 + 1);
  v46 = sub_1C2E6CBC8();
  v47 = v71;
  sub_1C2E74E34();
  v105[2] = v108[1];
  v105[3] = v108[2];
  v106 = *&v108[3];
  v105[0] = v107;
  v105[1] = v108[0];
  sub_1C2C73644(v105, &qword_1EC064EC0);
  v98[3] = v46;
  v98[4] = v67;
  v48 = v74;
  v49 = swift_getWitnessTable();
  v50 = v73;
  sub_1C2C6EE48(v47, v48, v49);
  v51 = v75;
  v52 = *(v75 + 8);
  v52(v47, v48);
  v54 = v78;
  v53 = v79;
  (*(v81 + 16))(v78, v82, v79);
  v94 = v101[3];
  v95 = v102;
  v96 = v103;
  v97 = v104;
  v98[0] = v54;
  v90 = v100;
  v91 = v101[0];
  v92 = v101[1];
  v93 = v101[2];
  v98[1] = &v90;
  (*(v51 + 16))(v47, v50, v48);
  v98[2] = v47;
  sub_1C2E6CC54(&v100, &v107);
  v89[0] = v53;
  v89[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064EB8);
  v89[2] = v48;
  v86 = v68;
  v87 = sub_1C2E6CCC4();
  v88 = v49;
  sub_1C2C6EC40(v98, 3uLL, v89);
  sub_1C2C73644(&v100, &qword_1EC064EB8);
  v52(v50, v48);
  v55 = v70;
  v70(v82, v53);
  v52(v47, v48);
  v108[3] = v94;
  v108[4] = v95;
  v108[5] = v96;
  v109 = v97;
  v107 = v90;
  v108[0] = v91;
  v108[1] = v92;
  v108[2] = v93;
  sub_1C2C73644(&v107, &qword_1EC064EB8);
  return v55(v78, v53);
}

uint64_t sub_1C2E6CAD4@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for DropShadowModifier();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E860);
  result = sub_1C2E75184();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = 1;
  return result;
}

unint64_t sub_1C2E6CB74()
{
  result = qword_1EC064EC8;
  if (!qword_1EC064EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC064EC8);
  }

  return result;
}

unint64_t sub_1C2E6CBC8()
{
  result = qword_1EC064ED8;
  if (!qword_1EC064ED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC064EC0);
    sub_1C2E6CB74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC064ED8);
  }

  return result;
}

uint64_t sub_1C2E6CC54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064EB8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C2E6CCC4()
{
  result = qword_1EC064EE0;
  if (!qword_1EC064EE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC064EB8);
    sub_1C2E6CD7C();
    sub_1C2C94F38(&qword_1EC05B5F8, &qword_1EC05F5D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC064EE0);
  }

  return result;
}

unint64_t sub_1C2E6CD7C()
{
  result = qword_1EC064EE8;
  if (!qword_1EC064EE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC064EF0);
    sub_1C2E6CE08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC064EE8);
  }

  return result;
}

unint64_t sub_1C2E6CE08()
{
  result = qword_1EC064EF8;
  if (!qword_1EC064EF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC064F00);
    sub_1C2E6CE94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC064EF8);
  }

  return result;
}

unint64_t sub_1C2E6CE94()
{
  result = qword_1EC064F08;
  if (!qword_1EC064F08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC064F10);
    sub_1C2E6CBC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC064F08);
  }

  return result;
}

id sub_1C2E6CF20(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = sub_1C2E75C24();
  [a1 setGroupName_];

  [a1 setCaptureOnly_];

  return [a1 setScale_];
}

uint64_t sub_1C2E6CFA8()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 16);
  sub_1C2C7B880();
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  *(v4 + 32) = v3;

  return sub_1C2E73264();
}

uint64_t sub_1C2E6D048(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_1C2E6D090(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t View.optionalAXID(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v33 = a1;
  v36 = a5;
  v32 = *(a3 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v31 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v31 - v10;
  sub_1C2E74384();
  v12 = sub_1C2E73654();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v31 - v17;
  v19 = sub_1C2E73F54();
  v35 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v31 - v20;
  if (a2)
  {
    sub_1C2E74C54();
    v22 = sub_1C2C6EA8C(&qword_1EDDCDA08, MEMORY[0x1E697CBE8]);
    v37 = a4;
    v38 = v22;
    WitnessTable = swift_getWitnessTable();
    sub_1C2C6EE48(v16, v12, WitnessTable);
    v24 = *(v13 + 8);
    v24(v16, v12);
    sub_1C2C6EE48(v18, v12, WitnessTable);
    sub_1C2C76E34(v16, v12);
    v24(v16, v12);
    v24(v18, v12);
  }

  else
  {
    sub_1C2C6EE48(v34, a3, a4);
    v25 = v31;
    sub_1C2C6EE48(v11, a3, a4);
    v26 = sub_1C2C6EA8C(&qword_1EDDCDA08, MEMORY[0x1E697CBE8]);
    v43 = a4;
    v44 = v26;
    swift_getWitnessTable();
    sub_1C2C78970(v25, v12, a3);
    v27 = *(v32 + 8);
    v27(v25, a3);
    v27(v11, a3);
  }

  v28 = sub_1C2C6EA8C(&qword_1EDDCDA08, MEMORY[0x1E697CBE8]);
  v41 = a4;
  v42 = v28;
  v39 = swift_getWitnessTable();
  v40 = a4;
  v29 = swift_getWitnessTable();
  sub_1C2C6EE48(v21, v19, v29);
  return (*(v35 + 8))(v21, v19);
}

uint64_t View.optionalAXLabel(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v33 = a1;
  v37 = a5;
  v32 = *(a3 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v32 - v11;
  sub_1C2E74384();
  v13 = sub_1C2E73654();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v32 - v18;
  v20 = sub_1C2E73F54();
  v35 = *(v20 - 8);
  v36 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v32 - v21;
  if (a2)
  {
    v40 = v33;
    v41 = a2;
    sub_1C2C74960();
    sub_1C2E74B34();
    v23 = sub_1C2C6EA8C(&qword_1EDDCDA08, MEMORY[0x1E697CBE8]);
    v38 = a4;
    v39 = v23;
    WitnessTable = swift_getWitnessTable();
    sub_1C2C6EE48(v17, v13, WitnessTable);
    v25 = *(v14 + 8);
    v25(v17, v13);
    sub_1C2C6EE48(v19, v13, WitnessTable);
    sub_1C2C76E34(v17, v13);
    v25(v17, v13);
    v25(v19, v13);
  }

  else
  {
    sub_1C2C6EE48(v34, a3, a4);
    sub_1C2C6EE48(v12, a3, a4);
    v26 = sub_1C2C6EA8C(&qword_1EDDCDA08, MEMORY[0x1E697CBE8]);
    v46 = a4;
    v47 = v26;
    swift_getWitnessTable();
    sub_1C2C78970(v10, v13, a3);
    v27 = *(v32 + 8);
    v27(v10, a3);
    v27(v12, a3);
  }

  v28 = sub_1C2C6EA8C(&qword_1EDDCDA08, MEMORY[0x1E697CBE8]);
  v44 = a4;
  v45 = v28;
  v42 = swift_getWitnessTable();
  v43 = a4;
  v29 = v36;
  v30 = swift_getWitnessTable();
  sub_1C2C6EE48(v22, v29, v30);
  return (*(v35 + 8))(v22, v29);
}

uint64_t View.conditionalViewModifier<A, B>(for:viewModifier:else:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, __n128)@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t, __n128)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v39 = a5;
  v40 = a4;
  v37 = a3;
  v38 = a2;
  v13 = a1;
  v44 = a8;
  v41 = *(a7 - 8);
  v45 = a10;
  v46 = a11;
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v37 - v17;
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v37 - v25;
  v27 = sub_1C2E73F54();
  v43 = *(v27 - 8);
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = &v37 - v29;
  if (v13)
  {
    v38(v42, v28);
    v31 = v45;
    sub_1C2C6EE48(v23, a6, v45);
    v32 = *(v20 + 8);
    v32(v23, a6);
    sub_1C2C6EE48(v26, a6, v31);
    sub_1C2C76E34(v23, a6);
    v32(v23, a6);
    v32(v26, a6);
  }

  else
  {
    v40(v42, v28);
    v33 = v46;
    sub_1C2C6EE48(v15, a7, v46);
    v34 = *(v41 + 8);
    v34(v15, a7);
    sub_1C2C6EE48(v18, a7, v33);
    sub_1C2C78970(v15, a6, a7);
    v34(v15, a7);
    v34(v18, a7);
  }

  v47 = v45;
  v48 = v46;
  WitnessTable = swift_getWitnessTable();
  sub_1C2C6EE48(v30, v27, WitnessTable);
  return (*(v43 + 8))(v30, v27);
}

uint64_t View.conditionalViewModifier<A>(for:viewModifier:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, __n128)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v40 = a7;
  v41 = a6;
  v34 = a3;
  v35 = a2;
  v36 = a1;
  v39 = a8;
  v10 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v34 - v14;
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v34 - v22;
  v24 = sub_1C2E73F54();
  v38 = *(v24 - 8);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = &v34 - v26;
  if (v36)
  {
    v35(v37, v25);
    v28 = v40;
    sub_1C2C6EE48(v20, a5, v40);
    v29 = *(v17 + 8);
    v29(v20, a5);
    sub_1C2C6EE48(v23, a5, v28);
    sub_1C2C76E34(v20, a5);
    v29(v20, a5);
    v29(v23, a5);
  }

  else
  {
    v30 = v41;
    sub_1C2C6EE48(v37, a4, v41);
    sub_1C2C6EE48(v15, a4, v30);
    sub_1C2C78970(v12, a5, a4);
    v31 = *(v10 + 8);
    v31(v12, a4);
    v31(v15, a4);
  }

  v42 = v40;
  v43 = v41;
  WitnessTable = swift_getWitnessTable();
  sub_1C2C6EE48(v27, v24, WitnessTable);
  return (*(v38 + 8))(v27, v24);
}

uint64_t View.commsUI_readSize(onChange:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v15 = a1;
  v16 = a2;
  v17 = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05F420);
  v5 = sub_1C2E73654();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  v20 = sub_1C2E6E3CC;
  v21 = 0;
  sub_1C2E75744();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064F28);
  sub_1C2C94F38(&qword_1EC064F30, &qword_1EC064F28);
  v9 = a3;
  sub_1C2E74924();
  v10 = swift_allocObject();
  v11 = v16;
  *(v10 + 16) = v15;
  *(v10 + 24) = v11;
  v12 = sub_1C2C94F38(&qword_1EC05F418, &qword_1EC05F420);
  v18 = v9;
  v19 = v12;

  swift_getWitnessTable();
  sub_1C2E6E414();
  sub_1C2C6EA8C(&qword_1EC061FB0, type metadata accessor for CGSize);
  sub_1C2E74B84();

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1C2E6E3CC@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1C2E74F44();
  result = sub_1C2E732C4();
  *a1 = v2;
  a1[1] = v4;
  a1[2] = v5;
  return result;
}

unint64_t sub_1C2E6E414()
{
  result = qword_1EC064F38[0];
  if (!qword_1EC064F38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC064F38);
  }

  return result;
}

uint64_t sub_1C2E6E478@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  sub_1C2E73134();
  sub_1C2E6FE10(a1, v15, a2, a3, a4, a5, a6, a7);
  return sub_1C2E6FFD0(v15);
}

uint64_t sub_1C2E6E51C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v16 = type metadata accessor for ShapeBorderViewModifier();
  (*(*(a7 - 8) + 32))(a8 + v16[13], a2, a7);
  result = (*(*(a6 - 8) + 32))(a8, a1, a6);
  v18 = a8 + v16[15];
  *v18 = a3;
  *(v18 + 8) = a4 & 1;
  *(a8 + v16[14]) = a5;
  return result;
}

uint64_t sub_1C2E6E624@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v42 = *(a1 + 16);
  v4 = v42;
  v43 = v5;
  v44 = MEMORY[0x1E6981E70];
  v45 = v6;
  v46 = v7;
  v47 = MEMORY[0x1E6981E60];
  v8 = sub_1C2E73684();
  v34 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v33 = &v32 - v12;
  v42 = v4;
  v43 = v5;
  v35 = v6;
  v44 = v6;
  v45 = v7;
  v13 = sub_1C2E730B4();
  v32 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v32 - v17;
  v19 = sub_1C2E73F54();
  v37 = *(v19 - 8);
  v38 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v36 = &v32 - v20;
  if (*(v2 + *(a1 + 60) + 8))
  {
    sub_1C2C7A1E8(v2 + *(a1 + 52), 256, v4, v5);
    WitnessTable = swift_getWitnessTable();
    sub_1C2C6EE48(v15, v13, WitnessTable);
    v22 = *(v32 + 8);
    v22(v15, v13);
    sub_1C2C6EE48(v18, v13, WitnessTable);
    swift_getWitnessTable();
    v23 = v36;
    sub_1C2C76E34(v15, v13);
    v22(v15, v13);
    v22(v18, v13);
  }

  else
  {
    sub_1C2E6E478(v2 + *(a1 + 52), 1, v4, v5, v35, v7, v10);
    v24 = swift_getWitnessTable();
    v25 = v33;
    sub_1C2C6EE48(v10, v8, v24);
    v26 = *(v34 + 8);
    v26(v10, v8);
    sub_1C2C6EE48(v25, v8, v24);
    swift_getWitnessTable();
    v23 = v36;
    sub_1C2C78970(v10, v13, v8);
    v26(v10, v8);
    v26(v25, v8);
  }

  v27 = swift_getWitnessTable();
  v28 = swift_getWitnessTable();
  v40 = v27;
  v41 = v28;
  v29 = v38;
  v30 = swift_getWitnessTable();
  sub_1C2C6EE48(v23, v29, v30);
  return (*(v37 + 8))(v23, v29);
}

uint64_t sub_1C2E6EAE0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a1;
  v24 = a3;
  swift_getWitnessTable();
  sub_1C2E74094();
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v21 = a2[5];
  sub_1C2E730B4();
  v36 = v4;
  v37 = v5;
  v38 = MEMORY[0x1E6981E70];
  v39 = v6;
  v40 = v21;
  v41 = MEMORY[0x1E6981E60];
  sub_1C2E73684();
  sub_1C2E73F54();
  v7 = sub_1C2E73654();
  WitnessTable = swift_getWitnessTable();
  v35 = swift_getWitnessTable();
  v32 = swift_getWitnessTable();
  v33 = MEMORY[0x1E697E5C0];
  v20[1] = MEMORY[0x1E697E858];
  v20[0] = v7;
  swift_getWitnessTable();
  sub_1C2E73804();
  v8 = sub_1C2E73654();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v20 - v13;
  v25 = v4;
  v26 = v5;
  v27 = v6;
  v28 = v21;
  v29 = v22;
  sub_1C2E75744();
  v15 = swift_getWitnessTable();
  sub_1C2E74D64();
  v16 = swift_getWitnessTable();
  v30 = v15;
  v31 = v16;
  v17 = swift_getWitnessTable();
  sub_1C2C6EE48(v11, v8, v17);
  v18 = *(v9 + 8);
  v18(v11, v8);
  sub_1C2C6EE48(v14, v8, v17);
  return (v18)(v14, v8);
}

uint64_t sub_1C2E6EE4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v27[3] = a1;
  v29 = a6;
  v27[1] = sub_1C2E730B4();
  v34 = a2;
  v35 = a3;
  v36 = MEMORY[0x1E6981E70];
  v37 = a4;
  v38 = a5;
  v39 = MEMORY[0x1E6981E60];
  v27[2] = sub_1C2E73684();
  v10 = sub_1C2E73F54();
  v28 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v27 - v11;
  v13 = sub_1C2E73654();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v27 - v18;
  v34 = a2;
  v35 = a3;
  v36 = a4;
  v37 = a5;
  v20 = type metadata accessor for ShapeBorderViewModifier();
  sub_1C2E6E624(v20, v12);
  WitnessTable = swift_getWitnessTable();
  v22 = swift_getWitnessTable();
  v32 = WitnessTable;
  v33 = v22;
  v23 = swift_getWitnessTable();
  sub_1C2E74D54();
  (*(v28 + 8))(v12, v10);
  v30 = v23;
  v31 = MEMORY[0x1E697E5C0];
  v24 = swift_getWitnessTable();
  sub_1C2C6EE48(v16, v13, v24);
  v25 = *(v14 + 8);
  v25(v16, v13);
  sub_1C2C6EE48(v19, v13, v24);
  return (v25)(v19, v13);
}

uint64_t View.shapeBordered<A>(shape:color:lineWidth:displayBorder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>, uint64_t a9@<D0>)
{
  v37 = a6;
  v33[0] = a4;
  v33[1] = a7;
  v36 = a3;
  v34 = a1;
  v35 = a2;
  v38 = a8;
  v11 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41[0] = v14;
  v41[1] = MEMORY[0x1E69815C0];
  v41[2] = v15;
  v41[3] = MEMORY[0x1E6981568];
  v16 = type metadata accessor for ShapeBorderViewModifier();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v33 - v18;
  v20 = sub_1C2E73654();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = v33 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = v33 - v26;
  (*(v11 + 16))(v13, v34, a5, v25);
  v41[0] = v35;
  sub_1C2E6E51C(v13, v41, a9, 0, v36, a5, MEMORY[0x1E69815C0], v19);

  v28 = v37;
  MEMORY[0x1C69257F0](v19, v33[0], v16, v37);
  (*(v17 + 8))(v19, v16);
  WitnessTable = swift_getWitnessTable();
  v39 = v28;
  v40 = WitnessTable;
  v30 = swift_getWitnessTable();
  sub_1C2C6EE48(v23, v20, v30);
  v31 = *(v21 + 8);
  v31(v23, v20);
  sub_1C2C6EE48(v27, v20, v30);
  return (v31)(v27, v20);
}

uint64_t View.shapeBordered<A>(shape:material:lineWidth:displayBorder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>, uint64_t a9@<D0>)
{
  v44 = a6;
  v38 = a7;
  v36 = a4;
  v43 = a3;
  v41 = a1;
  v42 = a2;
  v45 = a8;
  v12 = sub_1C2E756D4();
  v40 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v39 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = a5;
  v49 = v18;
  v50 = a7;
  v51 = MEMORY[0x1E6981AD0];
  v19 = type metadata accessor for ShapeBorderViewModifier();
  v37 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v36 - v20;
  v22 = sub_1C2E73654();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v36 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v36 - v28;
  (*(v14 + 16))(v17, v41, a5, v27);
  v30 = v39;
  (*(v40 + 16))(v39, v42, v12);
  sub_1C2E6E51C(v17, v30, a9, 0, v43, a5, v12, v21);
  v31 = v44;
  MEMORY[0x1C69257F0](v21, v36, v19, v44);
  (*(v37 + 8))(v21, v19);
  WitnessTable = swift_getWitnessTable();
  v46 = v31;
  v47 = WitnessTable;
  v33 = swift_getWitnessTable();
  sub_1C2C6EE48(v25, v22, v33);
  v34 = *(v23 + 8);
  v34(v25, v22);
  sub_1C2C6EE48(v29, v22, v33);
  return (v34)(v29, v22);
}

uint64_t sub_1C2E6F890()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for ShapeBorderViewModifier.OverlayMethod();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1C2E6F950(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  v10 = *(v7 + 64);
  if (v8 <= v5)
  {
    v11 = *(v4 + 84);
  }

  else
  {
    v11 = *(v7 + 84);
  }

  if (v11 <= 0xFE)
  {
    v11 = 254;
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(*(*(a3 + 16) - 8) + 64) + v9;
  if (v11 >= a2)
  {
    goto LABEL_29;
  }

  v13 = (((v12 & ~v9) + v10) & 0xFFFFFFFFFFFFFFF8) + 17;
  v14 = (a2 - v11 + 255) >> 8;
  if (v13 <= 3)
  {
    v15 = v14 + 1;
  }

  else
  {
    v15 = 2;
  }

  if (v15 >= 0x10000)
  {
    v16 = 4;
  }

  else
  {
    v16 = 2;
  }

  if (v15 < 0x100)
  {
    v16 = 1;
  }

  if (v15 >= 2)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v18 = *&a1[v13];
      if (*&a1[v13])
      {
        goto LABEL_22;
      }
    }

    else
    {
      v18 = *&a1[v13];
      if (v18)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_29;
  }

  if (!v17 || (v18 = a1[v13]) == 0)
  {
LABEL_29:
    if (v5 == v11)
    {
      return (*(v4 + 48))();
    }

    v22 = &a1[v12] & ~v9;
    if (v8 == v11)
    {
      return (*(v7 + 48))(v22, v8, v6);
    }

    v23 = *(v22 + v10);
    if (v23 >= 2)
    {
      return ((v23 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    return 0;
  }

LABEL_22:
  v19 = (v18 - 1) << (8 * v13);
  if (v13 <= 3)
  {
    v20 = *a1;
  }

  else
  {
    v19 = 0;
    v20 = *a1;
  }

  return v11 + (v20 | v19) + 1;
}

void sub_1C2E6FB2C(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(*(a4 + 24) - 8);
  v9 = *(v8 + 84);
  v10 = *(v6 + 64);
  v11 = *(v8 + 80);
  v12 = *(v8 + 64);
  if (v9 <= v7)
  {
    v13 = *(v6 + 84);
  }

  else
  {
    v13 = *(v8 + 84);
  }

  if (v13 <= 0xFE)
  {
    v13 = 254;
  }

  v14 = v10 + v11;
  v15 = ((((v10 + v11) & ~v11) + v12) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v13 >= a3)
  {
    v19 = 0;
    if (v13 >= a2)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v16 = (a3 - v13 + 255) >> 8;
    if (v15 <= 3)
    {
      v17 = v16 + 1;
    }

    else
    {
      v17 = 2;
    }

    if (v17 >= 0x10000)
    {
      v18 = 4;
    }

    else
    {
      v18 = 2;
    }

    if (v17 < 0x100)
    {
      v18 = 1;
    }

    if (v17 >= 2)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    if (v13 >= a2)
    {
LABEL_19:
      if (v19 > 1)
      {
        if (v19 != 2)
        {
          *&a1[v15] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_34;
        }

        *&a1[v15] = 0;
      }

      else if (v19)
      {
        a1[v15] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_34;
      }

      if (!a2)
      {
        return;
      }

LABEL_34:
      if (v7 == v13)
      {
        v22 = *(v6 + 56);

        v22();
      }

      else
      {
        v23 = &a1[v14] & ~v11;
        if (v9 == v13)
        {
          v24 = *(v8 + 56);

          v24(v23);
        }

        else
        {
          *(v23 + v12) = a2 + 1;
        }
      }

      return;
    }
  }

  v20 = ~v13 + a2;
  bzero(a1, v15);
  if (v15 <= 3)
  {
    v21 = (v20 >> 8) + 1;
  }

  else
  {
    v21 = 1;
  }

  if (v15 <= 3)
  {
    *a1 = v20;
    if (v19 > 1)
    {
LABEL_29:
      if (v19 == 2)
      {
        *&a1[v15] = v21;
      }

      else
      {
        *&a1[v15] = v21;
      }

      return;
    }
  }

  else
  {
    *a1 = v20;
    if (v19 > 1)
    {
      goto LABEL_29;
    }
  }

  if (v19)
  {
    a1[v15] = v21;
  }
}

uint64_t sub_1C2E6FE10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v28 = a3;
  v15 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v17 = &v27[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v27[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v22 + 16))(v21, v24, v23, v19);
  (*(v15 + 16))(v17, a1, a5);

  return sub_1C2E70024(v21, v17, a2, v28, v25, a4, a5, MEMORY[0x1E6981E70], a8, a6, a7, MEMORY[0x1E6981E60]);
}

uint64_t sub_1C2E70024@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v44 = a5;
  v42 = a4;
  v37 = a3;
  v38 = a8;
  v40 = a2;
  v47 = a9;
  v48 = a1;
  v33[1] = a10;
  v41 = *(a8 - 8);
  v45 = a12;
  MEMORY[0x1EEE9AC00](a1);
  v39 = v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1C2E73F24();
  MEMORY[0x1EEE9AC00](v46);
  v43 = v33 - v15;
  v36 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *(a6 - 8);
  v19 = v34;
  MEMORY[0x1EEE9AC00](v20);
  v22 = v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1C2E733A4();
  MEMORY[0x1EEE9AC00](v23);
  WitnessTable = swift_getWitnessTable();
  v49 = v23;
  v50 = a7;
  v51 = WitnessTable;
  v52 = a11;
  v35 = sub_1C2E730B4();
  v25 = MEMORY[0x1EEE9AC00](v35);
  v26 = *(v19 + 16);
  v33[0] = a6;
  v26(v22, v48, a6, v25);
  sub_1C2E73394();
  v27 = v36;
  v28 = v40;
  (*(v36 + 16))(v18, v40, a7);
  sub_1C2E730A4();
  v29 = v41;
  v30 = v38;
  v31 = v44;
  (*(v41 + 16))(v39, v44, v38);
  sub_1C2E75744();
  (*(v29 + 8))(v31, v30);
  (*(v27 + 8))(v28, a7);
  (*(v34 + 8))(v48, v33[0]);
  sub_1C2E73F14();
  return sub_1C2E73624();
}

CGImage *sub_1C2E70444()
{
  v1 = v0;
  result = [v0 CGImage];
  if (result)
  {
    v3 = result;
    Width = CGImageGetWidth(result);
    Height = CGImageGetHeight(v3);
    v35.size.width = vcvtd_n_f64_s64(Width, 1uLL);
    v35.size.height = vcvtd_n_f64_s64(Height, 1uLL);
    v35.origin.x = 0.0;
    v35.origin.y = 0.0;
    v6 = CGImageCreateWithImageInRect(v3, v35);
    if (v6)
    {
      v7 = v6;
      v8 = [v1 imageRendererFormat];
      [v8 scale];
      v10 = v9;

      v11 = [v1 imageOrientation];
      v12 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCGImage:v7 scale:v11 orientation:v10];

      v13 = sub_1C2E709D0(0, 0.1);
      if (!v13)
      {
        return 0;
      }

      v14 = sub_1C2E707B8(1u, 0.1);
      if (!v14)
      {

        return 0;
      }

      v3 = v14;
      v15 = sub_1C2E707B8(2u, 0.1);
      if (v15)
      {
        v16 = v15;
        v17 = sub_1C2E707B8(3u, 0.1);
        if (v17)
        {
          v18 = v17;
          [v1 size];
          v21 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize_];
          [v1 size];
          v23 = v22 * 0.5;
          [v1 size];
          v25 = v24 * 0.5;
          v26 = swift_allocObject();
          *(v26 + 16) = v13;
          *(v26 + 24) = v23;
          *(v26 + 32) = v25;
          *(v26 + 40) = v3;
          *(v26 + 48) = v16;
          *(v26 + 56) = v18;
          v27 = swift_allocObject();
          *(v27 + 16) = sub_1C2E70B04;
          *(v27 + 24) = v26;
          v34[4] = sub_1C2D725D4;
          v34[5] = v27;
          v34[0] = MEMORY[0x1E69E9820];
          v34[1] = 1107296256;
          v34[2] = sub_1C2E07180;
          v34[3] = &block_descriptor_30;
          v28 = _Block_copy(v34);
          v29 = v13;
          v30 = v3;
          v31 = v16;
          v32 = v18;

          v33 = [v21 imageWithActions_];

          _Block_release(v28);
          LOBYTE(v29) = swift_isEscapingClosureAtFileLocation();

          if ((v29 & 1) == 0)
          {
            return v33;
          }

          __break(1u);
          return result;
        }

        return 0;
      }
    }

    return 0;
  }

  return result;
}

CGImage *sub_1C2E707B8(unsigned __int8 a1, double a2)
{
  v3 = v2;
  v6 = [v3 CGImage];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  Width = CGImageGetWidth(v6);
  Height = CGImageGetHeight(v7);
  v10 = vcvtd_n_f64_s64(Width, 1uLL);
  v11 = vcvtd_n_f64_s64(Height, 1uLL);
  v12 = 0.0;
  if (a1 == 2)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = v10;
  }

  if (a1)
  {
    v14 = v10;
  }

  else
  {
    v14 = 0.0;
  }

  if (a1 > 1u)
  {
    v12 = v11;
  }

  else
  {
    v13 = v14;
  }

  v15 = CGImageCreateWithImageInRect(v7, *(&v12 - 1));
  if (v15)
  {
    v16 = v15;
    v17 = [v3 imageRendererFormat];
    [v17 scale];
    v19 = v18;

    v20 = [v3 imageOrientation];
    v21 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCGImage:v16 scale:v20 orientation:v19];

    v22 = sub_1C2E709D0(a1, a2);
    v7 = v21;
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

id sub_1C2E70910(int a1, id a2, double a3, double a4, void *a5, void *a6, void *a7)
{
  [a2 drawInRect_];
  [a5 drawInRect_];
  [a6 drawInRect_];

  return [a7 drawInRect_];
}

CGImage *sub_1C2E709D0(unsigned __int8 a1, double a2)
{
  result = [v2 CGImage];
  if (result)
  {
    v6 = result;
    Width = CGImageGetWidth(result);
    Height = CGImageGetHeight(v6);
    v10 = Height * a2;
    v11 = 0.0;
    if (a1 == 2)
    {
      v12 = 0.0;
    }

    else
    {
      v12 = Width - Width * a2;
    }

    if (a1)
    {
      v13 = Width - Width * a2;
    }

    else
    {
      v13 = 0.0;
    }

    if (a1 > 1u)
    {
      v13 = v12;
      v11 = Height - v10;
    }

    v9 = Width * a2;
    v14 = CGImageCreateWithImageInRect(v6, *(&v11 - 1));
    if (v14)
    {
      v15 = v14;
      v16 = [v2 imageRendererFormat];
      [v16 scale];
      v18 = v17;

      v19 = [v2 imageOrientation];
      v20 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCGImage:v15 scale:v19 orientation:v18];

      return v20;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t block_copy_helper_30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t AvatarShape.hashValue.getter()
{
  v1 = *v0;
  sub_1C2E76854();
  MEMORY[0x1C6927290](v1);
  return sub_1C2E76894();
}

uint64_t AvatarViewConfiguration.init(image:shape:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = result;
  *(a3 + 8) = v3;
  return result;
}

uint64_t AvatarView.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t AvatarView.init(configuration:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  *a2 = *result;
  *(a2 + 8) = v2;
  return result;
}

uint64_t AvatarView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ClippedImage.ImageSize(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *v1;
  v7 = *(v1 + 8);
  if (v7)
  {
    v8 = 0x4024000000000000;
  }

  else
  {
    v8 = 0;
  }

  *v5 = vdupq_n_s64(0x4049000000000000uLL);
  swift_storeEnumTagMultiPayload();
  v9 = type metadata accessor for ClippedImage(0);
  sub_1C2E0264C(v5, a1 + *(v9 + 24));

  v10 = sub_1C2E74F44();
  result = sub_1C2E026D0(v5);
  *a1 = v6;
  *(a1 + 8) = v8;
  *(a1 + 16) = v7 ^ 1;
  *(a1 + *(v9 + 28)) = v10;
  return result;
}

unint64_t sub_1C2E70D08()
{
  result = qword_1EC065040;
  if (!qword_1EC065040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC065040);
  }

  return result;
}

uint64_t sub_1C2E70D78@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ClippedImage.ImageSize(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *v1;
  v7 = *(v1 + 8);
  if (v7)
  {
    v8 = 0x4024000000000000;
  }

  else
  {
    v8 = 0;
  }

  *v5 = vdupq_n_s64(0x4049000000000000uLL);
  swift_storeEnumTagMultiPayload();
  v9 = type metadata accessor for ClippedImage(0);
  sub_1C2E0264C(v5, a1 + *(v9 + 24));

  v10 = sub_1C2E74F44();
  result = sub_1C2E026D0(v5);
  *a1 = v6;
  *(a1 + 8) = v8;
  *(a1 + 16) = v7 ^ 1;
  *(a1 + *(v9 + 28)) = v10;
  return result;
}

unint64_t sub_1C2E70EA4()
{
  result = qword_1EC065048;
  if (!qword_1EC065048)
  {
    type metadata accessor for ClippedImage(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC065048);
  }

  return result;
}

BOOL __isOSVersionAtLeast(int a1, int a2, int a3)
{
  if (qword_1EC065060 == -1)
  {
    v3 = _MergedGlobals < a1;
    if (_MergedGlobals > a1)
    {
      return 1;
    }
  }

  else
  {
    v5 = a3;
    v6 = a2;
    __isOSVersionAtLeast_cold_1();
    a2 = v6;
    a3 = v5;
    v3 = _MergedGlobals < a1;
    if (_MergedGlobals > a1)
    {
      return 1;
    }
  }

  if (v3)
  {
    return 0;
  }

  if (dword_1EC065054 > a2)
  {
    return 1;
  }

  if (dword_1EC065054 < a2)
  {
    return 0;
  }

  return dword_1EC065058 >= a3;
}

uint64_t __isPlatformVersionAtLeast(uint64_t a1, int a2, int a3, int a4)
{
  if (qword_1EC065068 == -1)
  {
    if (qword_1EC065070)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_1EC065070)
    {
      return _availability_version_check();
    }
  }

  if (qword_1EC065060 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    __isOSVersionAtLeast_cold_1();
    a3 = v10;
    a4 = v9;
    v8 = _MergedGlobals < v11;
    if (_MergedGlobals > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_1EC065054 > a3)
      {
        return 1;
      }

      if (dword_1EC065054 >= a3)
      {
        return dword_1EC065058 >= a4;
      }
    }

    return 0;
  }

  v8 = _MergedGlobals < a2;
  if (_MergedGlobals <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t _initializeAvailabilityCheck(uint64_t result)
{
  v29 = *MEMORY[0x1E69E9840];
  v1 = qword_1EC065070;
  if (qword_1EC065070)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x1EEE9AC60])
    {
      v1 = MEMORY[0x1EEE9AC60];
      qword_1EC065070 = MEMORY[0x1EEE9AC60];
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x1C6927650](v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &_MergedGlobals, &dword_1EC065054, &dword_1EC065058);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
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

  return result;
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x1EEDBAD98](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE30](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}