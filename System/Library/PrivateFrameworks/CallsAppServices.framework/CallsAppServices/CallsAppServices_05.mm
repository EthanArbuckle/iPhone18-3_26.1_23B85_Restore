uint64_t ParticipantContactDetails.hash(into:)()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  v7 = *(v0 + 48);
  if (*v0)
  {
    sub_1D33DF2A4();
    v8 = v2;
    sub_1D33DEC84();
  }

  else
  {
    sub_1D33DF2A4();
  }

  sub_1D33DE824();
  sub_1D33DE824();

  return sub_1D33DE824();
}

uint64_t ParticipantContactDetails.hashValue.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  v7 = *(v0 + 48);
  sub_1D33DF284();
  sub_1D33DF2A4();
  if (v2)
  {
    v8 = v2;
    sub_1D33DEC84();
  }

  sub_1D33DE824();
  sub_1D33DE824();
  sub_1D33DE824();
  return sub_1D33DF2C4();
}

uint64_t sub_1D3386ECC()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  v7 = *(v0 + 48);
  sub_1D33DF284();
  sub_1D33DF2A4();
  if (v2)
  {
    v8 = v2;
    sub_1D33DEC84();
  }

  sub_1D33DE824();
  sub_1D33DE824();
  sub_1D33DE824();
  return sub_1D33DF2C4();
}

uint64_t sub_1D3386F8C()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  v7 = *(v0 + 48);
  if (*v0)
  {
    sub_1D33DF2A4();
    v8 = v2;
    sub_1D33DEC84();
  }

  else
  {
    sub_1D33DF2A4();
  }

  sub_1D33DE824();
  sub_1D33DE824();

  return sub_1D33DE824();
}

uint64_t sub_1D338704C()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  v7 = *(v0 + 48);
  sub_1D33DF284();
  sub_1D33DF2A4();
  if (v2)
  {
    v8 = v2;
    sub_1D33DEC84();
  }

  sub_1D33DE824();
  sub_1D33DE824();
  sub_1D33DE824();
  return sub_1D33DF2C4();
}

uint64_t static ParticipantContactDetailsCache.faceTime.getter()
{
  if (qword_1EDEC0138 != -1)
  {
    swift_once();
  }
}

id sub_1D3387198()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D338723C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    os_unfair_lock_lock(Strong + 8);
    v2 = *&v1[10]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(v1 + 8);
    [v2 removeAllObjects];
  }
}

uint64_t ParticipantContactDetailsCache.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t ParticipantContactDetailsCache.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t _s16CallsAppServices25ParticipantContactDetailsV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *a2;
  v10 = *(a2 + 8);
  v11 = *(a2 + 16);
  v12 = *(a2 + 24);
  v14 = *(a2 + 32);
  v13 = *(a2 + 40);
  v15 = *(a2 + 48);
  if (*a1)
  {
    if (!v9)
    {
      return 0;
    }

    v23 = *(a1 + 40);
    v24 = *(a1 + 32);
    v20 = *(a2 + 48);
    v21 = *(a2 + 40);
    v22 = *(a1 + 48);
    sub_1D331DA18(0, &qword_1EDEBFD50, 0x1E695CD58);
    v16 = v9;
    v17 = v2;
    v18 = sub_1D33DEC74();

    if ((v18 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v23 = *(a1 + 40);
    v24 = *(a1 + 32);
    v20 = *(a2 + 48);
    v21 = *(a2 + 40);
    v22 = *(a1 + 48);
    if (v9)
    {
      return 0;
    }
  }

  if ((v3 != v10 || v4 != v11) && (sub_1D33DF1B4() & 1) == 0 || (v5 != v12 || v24 != v14) && (sub_1D33DF1B4() & 1) == 0)
  {
    return 0;
  }

  if (v23 == v21 && v22 == v20)
  {
    return 1;
  }

  return sub_1D33DF1B4();
}

unint64_t sub_1D33874BC()
{
  result = qword_1EC7617A0;
  if (!qword_1EC7617A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7617A0);
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

uint64_t sub_1D338752C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D3387574(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_1D33875E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7617D8, &unk_1D33E31D0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v38 - v7;
  v9 = type metadata accessor for Participant();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v38 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v38 - v19;
  v21 = *(a1 + *(v18 + 20));
  if (v21)
  {
    v22 = v21;
    v23 = [v22 value];
    v24 = sub_1D33DE7B4();
    v26 = v25;

    v40[0] = v24;
    v40[1] = v26;
    sub_1D3328AF4();
    sub_1D33DED04();
    v27 = sub_1D33DE784();
  }

  else
  {
    if (qword_1EDEBFD70 != -1)
    {
      swift_once();
    }

    v28 = sub_1D33DE464();
    __swift_project_value_buffer(v28, qword_1EDEC1480);
    sub_1D33879C0(a1, v20);
    v29 = sub_1D33DE444();
    v30 = sub_1D33DEAD4();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v40[0] = v39;
      *v31 = 136315138;
      sub_1D33879C0(v20, v8);
      (*(v10 + 56))(v8, 0, 1, v9);
      sub_1D3387B38(v8, v6);
      if ((*(v10 + 48))(v6, 1, v9) == 1)
      {
        sub_1D3387BA8(v6);
        v32 = 0xE300000000000000;
        v33 = 7104878;
      }

      else
      {
        sub_1D3387A24(v6, v17);
        sub_1D33879C0(v17, v14);
        v33 = sub_1D33DE804();
        v32 = v34;
        sub_1D3387A88(v17);
      }

      sub_1D3387BA8(v8);
      sub_1D3387A88(v20);
      v35 = sub_1D3328B48(v33, v32, v40);

      *(v31 + 4) = v35;
      _os_log_impl(&dword_1D331A000, v29, v30, "Participant has no handle. Unable to cache details: %s", v31, 0xCu);
      v36 = v39;
      __swift_destroy_boxed_opaque_existential_1Tm(v39);
      MEMORY[0x1D38B81C0](v36, -1, -1);
      MEMORY[0x1D38B81C0](v31, -1, -1);
    }

    else
    {

      sub_1D3387A88(v20);
    }

    return 0;
  }

  return v27;
}

uint64_t sub_1D33879C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Participant();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D3387A24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Participant();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D3387A88(uint64_t a1)
{
  v2 = type metadata accessor for Participant();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D3387AE4()
{
  result = qword_1EC7617D0;
  if (!qword_1EC7617D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7617D0);
  }

  return result;
}

uint64_t sub_1D3387B38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7617D8, &unk_1D33E31D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D3387BA8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7617D8, &unk_1D33E31D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D3387C2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7610E0, &qword_1D33E16C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - v11;
  sub_1D331E818(a3, v27 - v11, &unk_1EC7610E0, &qword_1D33E16C0);
  v13 = sub_1D33DE9B4();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1D331E880(v12, &unk_1EC7610E0, &qword_1D33E16C0);
  }

  else
  {
    sub_1D33DE9A4();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1D33DE914();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1D33DE814() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760DA8, &qword_1D33E1AD0);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      return v24;
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

  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760DA8, &qword_1D33E1AD0);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_1D3387F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7610E0, &qword_1D33E16C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - v11;
  sub_1D331E818(a3, v27 - v11, &unk_1EC7610E0, &qword_1D33E16C0);
  v13 = sub_1D33DE9B4();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1D331E880(v12, &unk_1EC7610E0, &qword_1D33E16C0);
  }

  else
  {
    sub_1D33DE9A4();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1D33DE914();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1D33DE814() + 32;
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

uint64_t sub_1D33881C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7610E0, &qword_1D33E16C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - v11;
  sub_1D331E818(a3, v27 - v11, &unk_1EC7610E0, &qword_1D33E16C0);
  v13 = sub_1D33DE9B4();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1D331E880(v12, &unk_1EC7610E0, &qword_1D33E16C0);
  }

  else
  {
    sub_1D33DE9A4();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1D33DE914();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1D33DE814() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;
      sub_1D331DA18(0, &qword_1EDEBEEB0, 0x1E69D8AF8);

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
  sub_1D331DA18(0, &qword_1EDEBEEB0, 0x1E69D8AF8);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

void sub_1D33884B0(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D33927E0(&qword_1EDEBFAD0, type metadata accessor for RecentsControllerBox);
  sub_1D33DDED4();

  os_unfair_lock_lock((v3 + 72));
  v4 = *(v3 + 80);

  os_unfair_lock_unlock((v3 + 72));
  *a2 = v4;
}

BOOL sub_1D3388570(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  (*(a2 + 16))(&v4);
  return v4 == 2;
}

uint64_t sub_1D33885C4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D33927E0(&unk_1EDEBF810, type metadata accessor for RecentsLinkController);
  sub_1D33DDED4();

  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 40);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1D3388674(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_1D33927E0(&unk_1EDEBF810, type metadata accessor for RecentsLinkController);
  sub_1D33DDEC4();
}

uint64_t RecentsDataSourceConfiguration.tabBarUnreadCallCountPublisher.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7617E0, &unk_1D33E3210);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v24 - v3;
  v5 = sub_1D33DECB4();
  v27 = *(v5 - 8);
  v28 = v5;
  v6 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761730, &unk_1D33E2F60);
  v9 = *(v24 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7617F0, &unk_1D33E3220);
  v14 = *(v13 - 8);
  v25 = v13;
  v26 = v14;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v24 - v16;
  v29 = *(*(v0 + 40) + OBJC_IVAR____TtC16CallsAppServices25RecentsUnreadCountManager_tabBarUnreadCallCount);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761740, &unk_1D33E2F70);
  sub_1D334CB54(&unk_1EDEBEF70, &qword_1EC761740, &unk_1D33E2F70);
  sub_1D33DE624();
  sub_1D33DECA4();
  v18 = [objc_opt_self() mainRunLoop];
  v29 = v18;
  v19 = sub_1D33DEC94();
  (*(*(v19 - 8) + 56))(v4, 1, 1, v19);
  sub_1D331DA18(0, &unk_1EDEBEE50, 0x1E695DFD0);
  sub_1D334CB54(&qword_1EDEBF040, &unk_1EC761730, &unk_1D33E2F60);
  sub_1D3357A1C(&qword_1EDEBEE60, &unk_1EDEBEE50, 0x1E695DFD0);
  v20 = v24;
  sub_1D33DE614();
  sub_1D331E880(v4, &unk_1EC7617E0, &unk_1D33E3210);

  (*(v27 + 8))(v8, v28);
  (*(v9 + 8))(v12, v20);
  sub_1D334CB54(&qword_1EDEBF000, &unk_1EC7617F0, &unk_1D33E3220);
  v21 = v25;
  v22 = sub_1D33DE5A4();
  (*(v26 + 8))(v17, v21);
  return v22;
}

uint64_t RecentsDataSourceConfiguration.tabBarUnreadCallCount.getter()
{
  v1 = *(*(v0 + 40) + OBJC_IVAR____TtC16CallsAppServices25RecentsUnreadCountManager_tabBarUnreadCallCount);

  sub_1D33DE4F4();

  return v3;
}

void *RecentsDataSourceConfiguration.metadataCache.getter()
{
  v1 = *(v0 + 64);
  v2 = v1;
  return v1;
}

id RecentsDataSourceConfiguration.init(conversationManager:conversations:callHistory:callHistoryUsingRecentsController:linksAndSuggestions:messages:coalescingStrategy:showsThirdParty:)@<X0>(void *a1@<X0>, char a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, int a5@<W5>, char a6@<W6>, unsigned __int8 *a7@<X7>, char **a8@<X8>, char a9)
{
  v107 = a5;
  v108 = a4;
  v109 = a8;
  LODWORD(v117) = a3;
  v115 = a1;
  v12 = sub_1D33DEB84();
  v111 = *(v12 - 8);
  v112 = v12;
  v13 = *(v111 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v110 = &v104 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D33DEB24();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v17 = sub_1D33DE6A4();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = 0;
  v106 = *a7;
  if (a6)
  {
    v20 = sub_1D33DE2A4();
    v21 = sub_1D33DE294();
    *(&v142 + 1) = v20;
    v143 = &off_1F4EE4AF0;
    *&v141 = v21;
    v22 = type metadata accessor for VideoMessageInboxController();
    v23 = *(v22 + 48);
    v24 = *(v22 + 52);
    v25 = swift_allocObject();
    v26 = __swift_mutable_project_boxed_opaque_existential_1(&v141, v20);
    v27 = *(*(v20 - 8) + 64);
    MEMORY[0x1EEE9AC00](v26);
    v29 = (&v104 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v30 + 16))(v29);
    v19 = sub_1D3392828(*v29, v25);
    __swift_destroy_boxed_opaque_existential_1Tm(&v141);
  }

  v116 = v19;
  if (a2)
  {
    v31 = objc_allocWithZone(type metadata accessor for ConversationDataSource());
    v114 = ConversationDataSource.init(conversationManager:)(v115);
  }

  else
  {
    v114 = 0;
  }

  v32 = 7;
  if (a9)
  {
    v32 = 15;
  }

  v105 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7617C0, &unk_1D33E2270);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1D33E31E0;
  *(v33 + 32) = [objc_allocWithZone(MEMORY[0x1E69D8A68]) init];
  *(v33 + 40) = [objc_allocWithZone(MEMORY[0x1E69D8C30]) init];
  *(v33 + 48) = [objc_allocWithZone(MEMORY[0x1E69D8D08]) init];
  *(v33 + 56) = [objc_allocWithZone(MEMORY[0x1E69D8BF8]) init];
  v34 = objc_allocWithZone(MEMORY[0x1E69D8C38]);
  sub_1D331DA18(0, &unk_1EDEBEEA0, 0x1E69D8C40);
  v35 = sub_1D33DE8A4();

  v113 = [v34 initWithDataProviders_];

  v36 = sub_1D331DA18(0, &qword_1EDEBEEC8, 0x1E69E9610);
  sub_1D33DE684();
  *&v141 = MEMORY[0x1E69E7CC0];
  sub_1D33927E0(&qword_1EDEBEEE0, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC760F10, &qword_1D33E2E40);
  sub_1D334CB54(&qword_1EDEBEF20, &unk_1EC760F10, &qword_1D33E2E40);
  sub_1D33DED64();
  (*(v111 + 104))(v110, *MEMORY[0x1E69E8090], v112);
  v111 = v36;
  v112 = sub_1D33DEBD4();
  if (qword_1EDEBFC40 != -1)
  {
    swift_once();
  }

  v37 = qword_1EDEBFC50;
  v38 = type metadata accessor for RequestsHandler();
  *(&v142 + 1) = v38;
  v143 = &off_1F4EE7D80;
  *&v141 = v37;
  v39 = objc_allocWithZone(type metadata accessor for RecentsUnreadCountManager());
  v40 = *(&v142 + 1);
  v41 = __swift_mutable_project_boxed_opaque_existential_1(&v141, *(&v142 + 1));
  v42 = *(*(v40 - 8) + 64);
  MEMORY[0x1EEE9AC00](v41);
  v44 = (&v104 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v45 + 16))(v44);
  v46 = *v44;
  v47 = v37;
  v48 = sub_1D33930E8(v46, v39);
  __swift_destroy_boxed_opaque_existential_1Tm(&v141);
  v49 = 0;
  v50 = v116;
  if (v117)
  {
    v51 = v48;
    v52 = [objc_opt_self() callHistoryControllerWithCoalescingStrategy:v106 options:v105];
    v53 = [objc_allocWithZone(MEMORY[0x1E69D8A90]) init];
    v54 = objc_opt_self();
    result = [v54 contactStore];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v56 = result;
    v57 = [v54 suggestedContactStore];
    v58 = objc_allocWithZone(MEMORY[0x1E69BDD08]);
    v59 = v52;
    v60 = [v58 initWithCallHistoryController:v59 callProviderManager:v53 contactStore:v56 suggestedContactStore:v57 metadataCache:v113];

    v61 = sub_1D33DEB94();
    [v60 addDelegate:v51 queue:v61];

    v62 = objc_allocWithZone(type metadata accessor for RecentCallProvider());
    v63 = sub_1D331EF10(v60);

    *(&v142 + 1) = v38;
    v143 = &off_1F4EE7D80;
    *&v141 = v47;
    v64 = type metadata accessor for RecentsControllerBox();
    v65 = *(v64 + 48);
    v66 = *(v64 + 52);
    v67 = swift_allocObject();
    v68 = __swift_mutable_project_boxed_opaque_existential_1(&v141, v38);
    v69 = *(*(v38 - 8) + 64);
    MEMORY[0x1EEE9AC00](v68);
    v71 = (&v104 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v72 + 16))(v71);
    v73 = *v71;
    v74 = v47;
    v75 = v63;
    v48 = v51;
    v49 = sub_1D3393364(v75, v73, v67);
    __swift_destroy_boxed_opaque_existential_1Tm(&v141);
  }

  v111 = v48;
  swift_weakAssign();
  if (v107)
  {
    v76 = type metadata accessor for RecentsLinkController();
    v77 = *(v76 + 48);
    v78 = *(v76 + 52);
    swift_allocObject();
    v117 = RecentsLinkController.init(conversationManager:)(v115);

    v79 = v114;
    if (v114)
    {
LABEL_15:
      v80 = type metadata accessor for ConversationDataSource();
      v81 = sub_1D33927E0(&qword_1EDEBF558, type metadata accessor for ConversationDataSource);
      v82 = v79;
      goto LABEL_18;
    }
  }

  else
  {
    v117 = 0;
    v79 = v114;
    if (v114)
    {
      goto LABEL_15;
    }
  }

  v82 = 0;
  v80 = 0;
  v81 = 0;
  v122 = 0;
  v123 = 0;
LABEL_18:
  v121 = v82;
  v124 = v80;
  v125 = v81;
  v83 = v117;
  if (v117)
  {
    v84 = type metadata accessor for RecentsLinkController();
    v85 = sub_1D33927E0(&unk_1EDEBF800, type metadata accessor for RecentsLinkController);
    v83 = v117;
  }

  else
  {
    v84 = 0;
    v85 = 0;
    v127 = 0;
    v128 = 0;
  }

  v126 = v83;
  v129 = v84;
  v130 = v85;
  if (v50)
  {
    v86 = type metadata accessor for VideoMessageInboxController();
    v87 = sub_1D33927E0(&qword_1EDEBF308, type metadata accessor for VideoMessageInboxController);
    v88 = v50;
  }

  else
  {
    v88 = 0;
    v86 = 0;
    v87 = 0;
    v132 = 0;
    v133 = 0;
  }

  v131 = v88;
  v134 = v86;
  v135 = v87;
  if (v49)
  {
    v89 = type metadata accessor for RecentsControllerBox();
    v90 = sub_1D33927E0(&qword_1EDEBFAC8, type metadata accessor for RecentsControllerBox);
    v91 = v49;
  }

  else
  {
    v91 = 0;
    v89 = 0;
    v90 = 0;
    v137 = 0;
    v138 = 0;
  }

  v136 = v91;
  v139 = v89;
  v140 = v90;
  v92 = v79;

  v110 = v49;

  v93 = MEMORY[0x1E69E7CC0];
  for (i = 32; i != 192; i += 40)
  {
    sub_1D331E818(&v120[2] + i + 8, &v141, &unk_1EC761800, &qword_1D33E3230);
    v118[0] = v141;
    v118[1] = v142;
    v119 = v143;
    if (*(&v142 + 1))
    {
      sub_1D331E6AC(v118, v120);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v93 = sub_1D33226D4(0, *(v93 + 2) + 1, 1, v93);
      }

      v96 = *(v93 + 2);
      v95 = *(v93 + 3);
      if (v96 >= v95 >> 1)
      {
        v93 = sub_1D33226D4((v95 > 1), v96 + 1, 1, v93);
      }

      *(v93 + 2) = v96 + 1;
      sub_1D331E6AC(v120, &v93[40 * v96 + 32]);
    }

    else
    {
      sub_1D331E880(v118, &unk_1EC761800, &qword_1D33E3230);
    }
  }

  v97 = v110;

  v98 = v117;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761800, &qword_1D33E3230);
  swift_arrayDestroy();
  result = swift_unknownObjectRelease();
  v99 = v109;
  v100 = v114;
  *v109 = v97;
  v99[1] = v100;
  v101 = v115;
  v99[2] = v116;
  v99[3] = v101;
  v103 = v111;
  v102 = v112;
  v99[4] = v93;
  v99[5] = v103;
  v99[6] = v98;
  v99[7] = v102;
  v99[8] = v113;
  return result;
}

Swift::Void __swiftcall RecentsDataSourceConfiguration.deleteAllMessages()()
{
  if (*(v0 + 16))
  {
    v1 = qword_1EDEBFD70;

    if (v1 != -1)
    {
      swift_once();
    }

    v2 = sub_1D33DE464();
    __swift_project_value_buffer(v2, qword_1EDEC1480);
    v3 = sub_1D33DE444();
    v4 = sub_1D33DEAF4();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1D331A000, v3, v4, "Delete all messages.", v5, 2u);
      MEMORY[0x1D38B81C0](v5, -1, -1);
    }

    VideoMessageInboxController.deleteAll()();
    v6 = sub_1D33DE444();
    v7 = sub_1D33DEAF4();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1D331A000, v6, v7, "Successfully deleted all messages.", v8, 2u);
      MEMORY[0x1D38B81C0](v8, -1, -1);
    }
  }

  else
  {
    if (qword_1EDEBFD70 != -1)
    {
      swift_once();
    }

    v9 = sub_1D33DE464();
    __swift_project_value_buffer(v9, qword_1EDEC1480);
    oslog = sub_1D33DE444();
    v10 = sub_1D33DEAD4();
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1D331A000, oslog, v10, "Failed to delete all messages. No message inbox controller provided.", v11, 2u);
      MEMORY[0x1D38B81C0](v11, -1, -1);
    }
  }
}

uint64_t sub_1D3389A94(char a1)
{
  v2 = a1 & 1;
  v3 = sub_1D33DE664();
  v18 = *(v3 - 8);
  v4 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D33DE6A4();
  v16 = *(v7 - 8);
  v17 = v7;
  v8 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  aBlock[0] = v1;
  sub_1D33927E0(&unk_1EDEBF840, type metadata accessor for RecentsItemDataSource);
  sub_1D33DDED4();

  v12 = OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource__forceLoaded;
  if (*(v1 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource__forceLoaded) != v2)
  {
    swift_getKeyPath();
    aBlock[0] = v1;
    sub_1D33DDED4();

    if (*(v1 + v12) == 1)
    {
      v13 = *(v1 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration + 56);
      v14 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_1D3393E64;
      aBlock[5] = v14;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1D3329468;
      aBlock[3] = &block_descriptor_130;
      v15 = _Block_copy(aBlock);

      sub_1D33DE674();
      v19 = MEMORY[0x1E69E7CC0];
      sub_1D33927E0(&unk_1EDEBEF50, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761680, &unk_1D33E29E0);
      sub_1D334CB54(&qword_1EDEBEF30, &unk_1EC761680, &unk_1D33E29E0);
      sub_1D33DED64();
      MEMORY[0x1D38B7240](0, v10, v6, v15);
      _Block_release(v15);
      (*(v18 + 8))(v6, v3);
      (*(v16 + 8))(v10, v17);
    }
  }

  return result;
}

uint64_t sub_1D3389E48()
{
  swift_getKeyPath();
  sub_1D33927E0(&unk_1EDEBF840, type metadata accessor for RecentsItemDataSource);
  sub_1D33DDED4();

  return *(v0 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource__forceLoaded);
}

void sub_1D3389EF0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1D338C8A4(0);
  }
}

uint64_t sub_1D3389F48@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D33927E0(&unk_1EDEBF840, type metadata accessor for RecentsItemDataSource);
  sub_1D33DDED4();

  *a2 = *(v3 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource__forceLoaded);
  return result;
}

uint64_t sub_1D3389FF8(char a1)
{
  v2 = a1 & 1;
  v3 = *(v1 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource__forceLoaded);
  if (v3 == v2)
  {
    *(v1 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource__forceLoaded) = v2;

    return sub_1D3389A94(v3);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D33927E0(&unk_1EDEBF840, type metadata accessor for RecentsItemDataSource);
    sub_1D33DDEC4();
  }
}

uint64_t RecentsItemDataSource.loadingState.getter@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_1D33927E0(&unk_1EDEBF840, type metadata accessor for RecentsItemDataSource);
  sub_1D33DDED4();

  *a1 = *(v1 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource__loadingState);
  return result;
}

uint64_t sub_1D338A1E4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D33927E0(&unk_1EDEBF840, type metadata accessor for RecentsItemDataSource);
  sub_1D33DDED4();

  *a2 = *(v3 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource__loadingState);
  return result;
}

unsigned __int8 *sub_1D338A294(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return sub_1D338A2CC(&v4);
}

unsigned __int8 *sub_1D338A2CC(unsigned __int8 *result)
{
  if (*(v1 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource__loadingState) != *result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D33927E0(&unk_1EDEBF840, type metadata accessor for RecentsItemDataSource);
    sub_1D33DDEC4();
  }

  return result;
}

uint64_t RecentsItemDataSource.hasFinishedFirstLoadValue.getter()
{
  v1 = v0 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource__hasFinishedFirstLoadValue;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource__hasFinishedFirstLoadValue));
  v2 = *(v1 + 8);
  sub_1D33DE4F4();
  os_unfair_lock_unlock(v1);
  return v4;
}

uint64_t RecentsItemDataSource.hasFinishedFirstLoadPublisher.getter()
{
  v1 = v0 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource__hasFinishedFirstLoadValue;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource__hasFinishedFirstLoadValue));
  v4 = *(v1 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761828, &qword_1D33E3260);
  sub_1D334CB54(&qword_1EDEBEF80, &qword_1EC761828, &qword_1D33E3260);
  v2 = sub_1D33DE5A4();
  os_unfair_lock_unlock(v1);
  return v2;
}

uint64_t RecentsItemDataSource.hasFinishedFirstLoad.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D33DE574();

  return v1;
}

uint64_t sub_1D338A550@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D33DE574();

  *a2 = v5;
  return result;
}

uint64_t sub_1D338A5D0(char *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return sub_1D33DE584();
}

uint64_t RecentsItemDataSource.hasFinishedFirstLoad.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_1D33DE584();
}

void (*RecentsItemDataSource.hasFinishedFirstLoad.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1D33DE564();
  return sub_1D338A750;
}

void sub_1D338A750(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t RecentsItemDataSource.$hasFinishedFirstLoad.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761830, &qword_1D33E32B0);
  sub_1D33DE544();
  return swift_endAccess();
}

uint64_t sub_1D338A82C(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761830, &qword_1D33E32B0);
  sub_1D33DE544();
  return swift_endAccess();
}

uint64_t sub_1D338A8A4(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761838, &qword_1D33E32B8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761830, &qword_1D33E32B0);
  sub_1D33DE554();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t RecentsItemDataSource.$hasFinishedFirstLoad.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761838, &qword_1D33E32B8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761830, &qword_1D33E32B0);
  sub_1D33DE554();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*RecentsItemDataSource.$hasFinishedFirstLoad.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761838, &qword_1D33E32B8);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource__hasFinishedFirstLoad;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761830, &qword_1D33E32B0);
  sub_1D33DE544();
  swift_endAccess();
  return sub_1D338ACD0;
}

void sub_1D338ACD0(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[16];
  v6 = v3[13];
  v13 = v3[14];
  v8 = v3[11];
  v7 = v3[12];
  v10 = v3[9];
  v9 = v3[10];
  if (a2)
  {
    v4(v3[12], v6, v3[10]);
    swift_beginAccess();
    sub_1D33DE554();
    swift_endAccess();
    v11 = *(v8 + 8);
    v11(v6, v9);
    v12 = v13;
    v11(v13, v9);
  }

  else
  {
    swift_beginAccess();
    sub_1D33DE554();
    swift_endAccess();
    v12 = v13;
    (*(v8 + 8))(v13, v9);
  }

  free(v12);
  free(v6);
  free(v7);

  free(v3);
}

uint64_t sub_1D338AE38@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D33927E0(&unk_1EDEBF840, type metadata accessor for RecentsItemDataSource);
  sub_1D33DDED4();

  *a2 = *(v3 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource__allRecentsItems);
}

uint64_t sub_1D338AEEC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1D338AF18(v4);
}

uint64_t sub_1D338AF18(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource__allRecentsItems;
  v4 = *(v1 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource__allRecentsItems);

  v6 = sub_1D332A6B4(v5, a1);

  if (v6)
  {
    v7 = *(v1 + v3);
    *(v1 + v3) = a1;

    v8 = *(v1 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_recentsItemsSubject);
    return sub_1D33DE4C4();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D33927E0(&unk_1EDEBF840, type metadata accessor for RecentsItemDataSource);
    sub_1D33DDEC4();
  }
}

uint64_t sub_1D338B064(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource__allRecentsItems);
  *(a1 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource__allRecentsItems) = a2;

  v4 = *(a1 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_recentsItemsSubject);
  return sub_1D33DE4C4();
}

BOOL RecentsItemDataSource.isActive.getter()
{
  v1 = v0 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource__loading;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource__loading));
  v2 = *(v1 + 4) == 1;
  os_unfair_lock_unlock(v1);
  return v2;
}

uint64_t RecentsItemDataSource.recentCallsCount.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration);
  if (!v1)
  {
    return 0;
  }

  swift_getKeyPath();
  sub_1D33927E0(&qword_1EDEBFAD0, type metadata accessor for RecentsControllerBox);
  sub_1D33DDED4();

  os_unfair_lock_lock((v1 + 72));
  v2 = *(v1 + 80);

  os_unfair_lock_unlock((v1 + 72));
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 16);

  return v3;
}

uint64_t RecentsItemDataSource.recentFaceTimeCallsCount.getter()
{
  if (*(v0 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration))
  {
    return sub_1D334D6DC();
  }

  else
  {
    return 0;
  }
}

void sub_1D338B21C(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7617E0, &unk_1D33E3210);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v25 - v5;
  v7 = sub_1D33DECB4();
  v27 = *(v7 - 8);
  v28 = v7;
  v8 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7619A8, &qword_1D33E3888);
  v29 = *(v11 - 8);
  v12 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v25 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7619B0, &qword_1D33E3890);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = v25 - v18;
  v20 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    v32 = *(Strong + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_recentsItemsSubject);

    if (v20)
    {
      sub_1D33DECA4();
      v26 = [objc_opt_self() mainRunLoop];
      v31 = v26;
      v23 = sub_1D33DEC94();
      (*(*(v23 - 8) + 56))(v6, 1, 1, v23);
      v25[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761430, &qword_1D33E2BF0);
      sub_1D331DA18(0, &unk_1EDEBEE50, 0x1E695DFD0);
      sub_1D334CB54(&unk_1EDEBEF90, &unk_1EC761430, &qword_1D33E2BF0);
      sub_1D3357A1C(&qword_1EDEBEE60, &unk_1EDEBEE50, 0x1E695DFD0);
      sub_1D33DE614();
      sub_1D331E880(v6, &unk_1EC7617E0, &unk_1D33E3210);

      (*(v27 + 8))(v10, v28);

      sub_1D334CB54(&qword_1EDEBF008, &qword_1EC7619A8, &qword_1D33E3888);
      v24 = sub_1D33DE5A4();

      (*(v29 + 8))(v14, v11);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761430, &qword_1D33E2BF0);
      sub_1D334CB54(&unk_1EDEBEF90, &unk_1EC761430, &qword_1D33E2BF0);
      v24 = sub_1D33DE5A4();
    }
  }

  else
  {
    sub_1D33DE524();
    sub_1D334CB54(&qword_1EC7619B8, &qword_1EC7619B0, &qword_1D33E3890);
    v24 = sub_1D33DE5A4();
    (*(v16 + 8))(v19, v15);
  }

  *v30 = v24;
}

void sub_1D338B73C(void *a1@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    swift_getKeyPath();
    sub_1D33927E0(&unk_1EDEBF840, type metadata accessor for RecentsItemDataSource);
    sub_1D33DDED4();

    v4 = *&v3[OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource__allRecentsItems];
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  *a1 = v4;
}

void *RecentsItemDataSource.recentsController.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 16);
  type metadata accessor for RecentCallProvider();
  v3 = swift_dynamicCastClass();
  if (!v3)
  {
    return 0;
  }

  v4 = *(v3 + OBJC_IVAR____TtC16CallsAppServices18RecentCallProvider_recentsController);
  v5 = v4;
  return v4;
}

uint64_t RecentsItemDataSource.isRemindersDatasource.getter()
{
  v1 = OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_isRemindersDatasource;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t RecentsItemDataSource.isRemindersDatasource.setter(char a1)
{
  v3 = OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_isRemindersDatasource;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t RecentsItemDataSource.messageQuery.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration + 16);
  if (v3)
  {
    v4 = (v3 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController__messageQuery);
    os_unfair_lock_lock((v3 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController__messageQuery));
    v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7618B0, &qword_1D33E3360) + 28);
    v6 = sub_1D33DE2F4();
    v13 = *(v6 - 8);
    (*(v13 + 16))(a1, v4 + v5, v6);
    os_unfair_lock_unlock(v4);
    v7 = *(v13 + 56);
    v8 = a1;
    v9 = 0;
    v10 = v6;
  }

  else
  {
    v11 = sub_1D33DE2F4();
    v7 = *(*(v11 - 8) + 56);
    v10 = v11;
    v8 = a1;
    v9 = 1;
  }

  return v7(v8, v9, 1, v10);
}

uint64_t sub_1D338BAB8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration + 16);
  if (v3)
  {
    v4 = (v3 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController__messageQuery);
    os_unfair_lock_lock((v3 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController__messageQuery));
    v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7618B0, &qword_1D33E3360) + 28);
    v6 = sub_1D33DE2F4();
    v13 = *(v6 - 8);
    (*(v13 + 16))(a2, v4 + v5, v6);
    os_unfair_lock_unlock(v4);
    v7 = *(v13 + 56);
    v8 = a2;
    v9 = 0;
    v10 = v6;
  }

  else
  {
    v11 = sub_1D33DE2F4();
    v7 = *(*(v11 - 8) + 56);
    v10 = v11;
    v8 = a2;
    v9 = 1;
  }

  return v7(v8, v9, 1, v10);
}

uint64_t sub_1D338BBF0(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7618B8, &qword_1D33E3368);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10 - v6;
  sub_1D331E818(a1, &v10 - v6, &qword_1EC7618B8, &qword_1D33E3368);
  v8 = *a2;
  return RecentsItemDataSource.messageQuery.setter(v7);
}

void (*RecentsItemDataSource.messageQuery.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x48uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = sub_1D33DE2F4();
  v5[1] = v6;
  v7 = *(v6 - 8);
  v8 = v7;
  v5[2] = v7;
  v9 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v10 = malloc(v9);
  }

  v5[4] = v10;
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7618B8, &qword_1D33E3368) - 8) + 64);
  if (v3)
  {
    v5[5] = swift_coroFrameAlloc();
    v5[6] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[5] = malloc(v11);
    v5[6] = malloc(v11);
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[7] = v12;
  v14 = *(v1 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration + 16);
  v5[8] = v14;
  if (v14)
  {
    v15 = (v14 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController__messageQuery);
    os_unfair_lock_lock((v14 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController__messageQuery));
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7618B0, &qword_1D33E3360);
    (*(v8 + 16))(v13, v15 + *(v16 + 28), v6);
    os_unfair_lock_unlock(v15);
    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  (*(v8 + 56))(v13, v17, 1, v6);
  return sub_1D338BEC0;
}

void sub_1D338BEC0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = *a1 + 7;
  v3 = *v4;
  v5 = v2[6];
  if (a2)
  {
    v7 = v2[4];
    v6 = v2[5];
    v8 = v2[3];
    v9 = *v2;
    v10 = *v4;
    sub_1D331E818(v3, v6, &qword_1EC7618B8, &qword_1D33E3368);
    RecentsItemDataSource.messageQuery.setter(v6);
    v11 = v10;
    v12 = v10;
  }

  else
  {
    v13 = v2[1];
    v14 = v2[2];
    sub_1D331E818(v3, v2[6], &qword_1EC7618B8, &qword_1D33E3368);
    if ((*(v14 + 48))(v5, 1, v13) == 1)
    {
      sub_1D331E880(*v4, &qword_1EC7618B8, &qword_1D33E3368);
      v4 = v2 + 6;
    }

    else
    {
      v15 = v2[8];
      (*(v2[2] + 32))(v2[4], v2[6], v2[1]);
      if (v15)
      {
        v16 = v2[8];
        v17 = v2[3];
        v24 = v2[4];
        v18 = v2[1];
        v19 = v2[2];
        v20 = *(v19 + 16);
        v20(v17);
        v21 = (v16 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController__messageQuery);
        os_unfair_lock_lock((v16 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController__messageQuery));
        v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7618B0, &qword_1D33E3360) + 28);
        v23 = *(v19 + 8);
        v23(v21 + v22, v18);
        (v20)(v21 + v22, v17, v18);
        os_unfair_lock_unlock(v21);
        sub_1D33220A8();
        v23(v17, v18);
        v23(v24, v18);
      }

      else
      {
        (*(v2[2] + 8))(v2[4], v2[1]);
      }
    }

    v11 = *v4;
    v5 = v2[6];
    v12 = v2[7];
    v7 = v2[4];
    v6 = v2[5];
    v8 = v2[3];
  }

  sub_1D331E880(v11, &qword_1EC7618B8, &qword_1D33E3368);
  free(v12);
  free(v5);
  free(v6);
  free(v7);
  free(v8);

  free(v2);
}

id RecentsItemDataSource.preFetchingPredicate.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration);
  if (v1 && (v2 = *(v1 + 16), type metadata accessor for RecentCallProvider(), (v3 = swift_dynamicCastClass()) != 0))
  {
    v4 = *(v3 + OBJC_IVAR____TtC16CallsAppServices18RecentCallProvider_recentsController);
  }

  else
  {
    v4 = 0;
  }

  v5 = [v4 preFetchingPredicate];

  return v5;
}

void sub_1D338C1A4(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration);
  if (v3 && (v4 = *(v3 + 16), type metadata accessor for RecentCallProvider(), (v5 = swift_dynamicCastClass()) != 0))
  {
    v6 = *(v5 + OBJC_IVAR____TtC16CallsAppServices18RecentCallProvider_recentsController);
  }

  else
  {
    v6 = 0;
  }

  v7 = [v6 preFetchingPredicate];

  *a2 = v7;
}

uint64_t *(*RecentsItemDataSource.preFetchingPredicate.modify(void *a1))(uint64_t *result, char a2)
{
  v3 = *(v1 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration);
  a1[1] = v3;
  if (v3 && (v4 = *(v3 + 16), type metadata accessor for RecentCallProvider(), (v5 = swift_dynamicCastClass()) != 0))
  {
    v6 = *(v5 + OBJC_IVAR____TtC16CallsAppServices18RecentCallProvider_recentsController);
  }

  else
  {
    v6 = 0;
  }

  v7 = [v6 preFetchingPredicate];

  *a1 = v7;
  return sub_1D338C2F8;
}

uint64_t *sub_1D338C2F8(uint64_t *result, char a2)
{
  v2 = *result;
  if (a2)
  {
    if (v2)
    {
      v3 = result[1];
      if (v3)
      {
        v4 = *(v3 + 16);
        v10 = *result;
        type metadata accessor for RecentCallProvider();
        v5 = swift_dynamicCastClass();
        if (v5)
        {
          [*(v5 + OBJC_IVAR____TtC16CallsAppServices18RecentCallProvider_recentsController) setPreFetchingPredicate_];
        }
      }
    }
  }

  else
  {
    if (!v2)
    {
      return result;
    }

    v6 = result[1];
    if (v6)
    {
      v7 = *(v6 + 16);
      v11 = *result;
      type metadata accessor for RecentCallProvider();
      v8 = swift_dynamicCastClass();
      if (v8)
      {
        v9 = *(v8 + OBJC_IVAR____TtC16CallsAppServices18RecentCallProvider_recentsController);
        [v9 setPreFetchingPredicate_];
      }
    }
  }

  return MEMORY[0x1EEE66BE0]();
}

uint64_t sub_1D338C40C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1D33927E0(&unk_1EDEBF840, type metadata accessor for RecentsItemDataSource);
  sub_1D33DDEC4();
}

void *RecentsItemDataSource.recentsReminderActionProvider.getter()
{
  v1 = OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource____lazy_storage___recentsReminderActionProvider;
  if (*(v0 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource____lazy_storage___recentsReminderActionProvider))
  {
    v2 = *(v0 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource____lazy_storage___recentsReminderActionProvider);
  }

  else
  {
    v2 = sub_1D338C558(v0);
    v3 = *(v0 + v1);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t RecentsItemDataSource.recentsReminderActionProvider.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource____lazy_storage___recentsReminderActionProvider);
  *(v1 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource____lazy_storage___recentsReminderActionProvider) = a1;
}

void *sub_1D338C558(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration);
  if (v1 && (v2 = *(v1 + 16), type metadata accessor for RecentCallProvider(), (v3 = swift_dynamicCastClass()) != 0))
  {
    v4 = [*(v3 + OBJC_IVAR____TtC16CallsAppServices18RecentCallProvider_recentsController) callProviderManager];
  }

  else
  {
    v4 = 0;
  }

  type metadata accessor for RecentsReminderActionProvider();
  v5 = swift_allocObject();
  v5[6] = 0;
  v5[3] = 0;
  v5[4] = 0;
  swift_unknownObjectWeakInit();
  v5[2] = v4;
  swift_beginAccess();
  v5[6] = &protocol witness table for RecentsItemDataSource;
  swift_unknownObjectWeakAssign();
  return v5;
}

uint64_t (*RecentsItemDataSource.recentsReminderActionProvider.modify(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = RecentsItemDataSource.recentsReminderActionProvider.getter();
  return sub_1D338C68C;
}

uint64_t sub_1D338C68C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource____lazy_storage___recentsReminderActionProvider);
  *(v1 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource____lazy_storage___recentsReminderActionProvider) = v2;
}

uint64_t sub_1D338C6FC(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v5 = *a2;
  if (!*(v2 + *a2))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D33927E0(&unk_1EDEBF840, type metadata accessor for RecentsItemDataSource);
    sub_1D33DDEC4();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1D33DE4A4();
  sub_1D33927E0(&unk_1EC760FF0, MEMORY[0x1E695BF10]);

  v6 = sub_1D33DE774();

  if ((v6 & 1) == 0)
  {
    goto LABEL_6;
  }

  v7 = *(v3 + v5);
LABEL_7:
  *(v3 + v5) = a1;
}

uint64_t sub_1D338C8A4(char a1)
{
  v2 = v1;
  v4 = v1 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource__hasFinishedFirstLoadValue;
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource__hasFinishedFirstLoadValue));
  v5 = *(v4 + 8);
  sub_1D33DE4F4();
  os_unfair_lock_unlock(v4);
  if (LOBYTE(v19[0]) == 1)
  {
    result = sub_1D3329514();
    if ((result & 1) == 0)
    {
      return result;
    }
  }

  else
  {
    v7 = *(v2 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration + 32);
    result = v7 + 32;
    v8 = -*(v7 + 16);
    v9 = -1;
    while (v8 + v9 != -1)
    {
      if (++v9 >= *(v7 + 16))
      {
        __break(1u);
        return result;
      }

      v10 = result + 40;
      sub_1D3325720(result, v19);
      v11 = v20;
      v12 = v21;
      __swift_project_boxed_opaque_existential_1(v19, v20);
      v13 = (*(v12 + 40))(v11, v12);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      result = v10;
      if (v13)
      {
        goto LABEL_10;
      }
    }

    swift_getKeyPath();
    v19[0] = v2;
    sub_1D33927E0(&unk_1EDEBF840, type metadata accessor for RecentsItemDataSource);
    sub_1D33DDED4();

    if (*(v2 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource__forceLoaded) != 1)
    {
      return result;
    }
  }

LABEL_10:
  v14 = v2 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_updateTask;
  os_unfair_lock_lock((v2 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_updateTask));
  if (*(v14 + 8))
  {
    sub_1D33DE6C4();
    v15 = *(v14 + 8);
  }

  *(v14 + 8) = 0;

  os_unfair_lock_unlock(v14);
  v16 = sub_1D338DE4C(a1 & 1);
  os_unfair_lock_lock(v14);
  v17 = *(v14 + 8);

  *(v14 + 8) = v16;

  os_unfair_lock_unlock(v14);
  v18 = *(v2 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration + 56);
  sub_1D33DEBC4();
}

char *RecentsItemDataSource.clone(with:)(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7618B8, &qword_1D33E3368);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v16[-v7 - 8];
  v9 = *(v2 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration + 16);
  v10 = *(v2 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration + 48);
  v20 = *(v2 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration + 32);
  v21 = v10;
  v11 = *(v2 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration + 16);
  v19[0] = *(v2 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration);
  v19[1] = v11;
  v12 = *(v2 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration + 48);
  v17[2] = v20;
  v17[3] = v12;
  v22 = *(v2 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration + 64);
  v18 = *(v2 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration + 64);
  v17[0] = v19[0];
  v17[1] = v9;
  sub_1D331E818(a1, &v16[-v7 - 8], &qword_1EC7618B8, &qword_1D33E3368);
  v13 = objc_allocWithZone(ObjectType);
  sub_1D3322888(v19, v16);
  return RecentsItemDataSource.init(configuration:messageQuery:)(v17, v8);
}

id RecentsItemDataSource.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration + 48];
  if (v2 && (*(v2 + 52) & 1) == 0)
  {
    v3 = *(v2 + 48);
    v4 = ObjectType;
    v5 = *&v0[OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration + 48];

    notify_cancel(v3);
    *(v2 + 48) = 0;
    *(v2 + 52) = 1;

    ObjectType = v4;
  }

  v7.receiver = v0;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t sub_1D338CF6C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760F20, &qword_1D33E2290);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v39 = &v33 - v3;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761950, &qword_1D33E3800);
  v4 = *(v33 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v7 = &v33 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761958, &qword_1D33E3808);
  v34 = *(v8 - 8);
  v35 = v8;
  v9 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v33 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761960, &qword_1D33E3810);
  v37 = *(v12 - 8);
  v38 = v12;
  v13 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v36 = &v33 - v14;
  v40 = v0;
  v15 = v0 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration;
  v16 = *(v0 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration + 32);
  v17 = *(v16 + 16);
  v18 = MEMORY[0x1E69E7CC0];
  if (v17)
  {
    v44 = MEMORY[0x1E69E7CC0];
    sub_1D33DEFA4();
    v19 = v16 + 32;
    do
    {
      sub_1D3325720(v19, v41);
      v20 = v42;
      v21 = v43;
      __swift_project_boxed_opaque_existential_1(v41, v42);
      (*(v21 + 24))(v20, v21);
      __swift_destroy_boxed_opaque_existential_1Tm(v41);
      sub_1D33DEF84();
      v22 = *(v44 + 16);
      sub_1D33DEFB4();
      sub_1D33DEFC4();
      sub_1D33DEF94();
      v19 += 40;
      --v17;
    }

    while (v17);
    v18 = v44;
  }

  v41[0] = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761968, &qword_1D33E3818);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761970, &qword_1D33E3820);
  sub_1D334CB54(&qword_1EC761978, &qword_1EC761968, &qword_1D33E3818);
  sub_1D334CB54(&qword_1EC761980, &qword_1EC761970, &qword_1D33E3820);
  sub_1D33DE474();
  sub_1D334CB54(&qword_1EC761988, &qword_1EC761950, &qword_1D33E3800);
  v23 = v33;
  sub_1D33DE5E4();
  (*(v4 + 8))(v7, v23);
  v24 = *(v15 + 56);
  v41[0] = v24;
  v25 = sub_1D33DEB34();
  v26 = v39;
  (*(*(v25 - 8) + 56))(v39, 1, 1, v25);
  sub_1D331DA18(0, &qword_1EDEBEEC8, 0x1E69E9610);
  sub_1D334CB54(&qword_1EC761990, &qword_1EC761958, &qword_1D33E3808);
  sub_1D3357A1C(&qword_1EDEBEED8, &qword_1EDEBEEC8, 0x1E69E9610);
  v27 = v24;
  v29 = v35;
  v28 = v36;
  sub_1D33DE604();
  sub_1D331E880(v26, &qword_1EC760F20, &qword_1D33E2290);

  (*(v34 + 8))(v11, v29);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1D334CB54(&unk_1EC761998, &qword_1EC761960, &qword_1D33E3810);
  v30 = v38;
  v31 = sub_1D33DE644();

  (*(v37 + 8))(v28, v30);
  return sub_1D338C6FC(v31, &OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource__datasourceCancellable);
}

uint64_t sub_1D338D574()
{
  v44 = v0;
  v1 = v0[22];
  if ((sub_1D33DE9F4() & 1) == 0)
  {
    v2 = v0[19];
    v3 = v0[20];

    v4 = sub_1D33DE444();
    v5 = sub_1D33DEAF4();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = v0[19];
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v42 = v8;
      *v7 = 136315138;
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v41 = v8;
        v10 = *(Strong + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration + 32);
        v11 = Strong;

        v12 = *(v10 + 16);
        if (v12)
        {
          v39 = v5;
          v40 = v4;
          v43 = MEMORY[0x1E69E7CC0];
          sub_1D334A9E0(0, v12, 0);
          v13 = v43;
          v14 = v10 + 32;
          do
          {
            sub_1D3325720(v14, (v0 + 2));
            v0[13] = 0;
            v0[14] = 0xE000000000000000;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761090, &unk_1D33E2500);
            sub_1D33DF004();
            MEMORY[0x1D38B6ED0](46, 0xE100000000000000);
            v15 = v0[5];
            v16 = v0[6];
            __swift_project_boxed_opaque_existential_1(v0 + 2, v15);
            v17 = (*(v16 + 40))(v15, v16);
            v18 = (v17 & 1) == 0;
            if (v17)
            {
              v19 = 1702195828;
            }

            else
            {
              v19 = 0x65736C6166;
            }

            if (v18)
            {
              v20 = 0xE500000000000000;
            }

            else
            {
              v20 = 0xE400000000000000;
            }

            MEMORY[0x1D38B6ED0](v19, v20);

            v21 = v0[13];
            v22 = v0[14];
            __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
            v43 = v13;
            v24 = *(v13 + 16);
            v23 = *(v13 + 24);
            if (v24 >= v23 >> 1)
            {
              sub_1D334A9E0((v23 > 1), v24 + 1, 1);
              v13 = v43;
            }

            *(v13 + 16) = v24 + 1;
            v25 = v13 + 16 * v24;
            *(v25 + 32) = v21;
            *(v25 + 40) = v22;
            v14 += 40;
            --v12;
          }

          while (v12);

          v4 = v40;
          v5 = v39;
        }

        else
        {

          v13 = MEMORY[0x1E69E7CC0];
        }

        v0[18] = v13;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7616B0, &qword_1D33E3DD0);
        sub_1D334CB54(&qword_1EDEBEF28, &qword_1EC7616B0, &qword_1D33E3DD0);
        v28 = sub_1D33DE764();
        v30 = v29;

        v0[15] = v28;
        v0[16] = v30;
        v27 = sub_1D33DE804();
        v26 = v31;
        v8 = v41;
      }

      else
      {
        v26 = 0xE300000000000000;
        v27 = 7104878;
      }

      v32 = sub_1D3328B48(v27, v26, &v42);

      *(v7 + 4) = v32;
      _os_log_impl(&dword_1D331A000, v4, v5, "datasources didn't load within tolerance: %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x1D38B81C0](v8, -1, -1);
      MEMORY[0x1D38B81C0](v7, -1, -1);
    }

    v33 = v0[19];
    swift_beginAccess();
    v34 = swift_unknownObjectWeakLoadStrong();
    if (v34)
    {
      v35 = v34;
      if (*(v34 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource__forceLoaded) == 1)
      {
        *(v34 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource__forceLoaded) = 1;
        sub_1D3389A94(1);
      }

      else
      {
        swift_getKeyPath();
        v36 = swift_task_alloc();
        *(v36 + 16) = v35;
        *(v36 + 24) = 1;
        v0[17] = v35;
        sub_1D33927E0(&unk_1EDEBF840, type metadata accessor for RecentsItemDataSource);
        sub_1D33DDEC4();
      }
    }
  }

  v37 = v0[1];

  return v37();
}

Swift::Void __swiftcall RecentsItemDataSource.suspend()()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration;
  v3 = *(v0 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration + 48);
  if (v3)
  {
    if ((*(v3 + 52) & 1) == 0)
    {
      v4 = *(v3 + 48);

      notify_cancel(v4);
      *(v3 + 48) = 0;
      *(v3 + 52) = 1;
    }

    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D33927E0(&unk_1EDEBF810, type metadata accessor for RecentsLinkController);

    sub_1D33DDEC4();
  }

  [*(v2 + 24) removeDelegate_];
}

uint64_t sub_1D338DBC8(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1D33927E0(&unk_1EDEBF840, type metadata accessor for RecentsItemDataSource);
  sub_1D33DDED4();

  v4 = *(v2 + *a2);
}

uint64_t sub_1D338DC6C@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1D33927E0(&unk_1EDEBF840, type metadata accessor for RecentsItemDataSource);
  sub_1D33DDED4();

  *a3 = *(v5 + *a2);
}

void sub_1D338DD34()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (qword_1EDEBFD70 != -1)
    {
      swift_once();
    }

    v2 = sub_1D33DE464();
    __swift_project_value_buffer(v2, qword_1EDEC1480);
    v3 = sub_1D33DE444();
    v4 = sub_1D33DEAF4();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1D331A000, v3, v4, "One of the datasource updated to loaded. try to update", v5, 2u);
      MEMORY[0x1D38B81C0](v5, -1, -1);
    }

    sub_1D338C8A4(0);
  }
}

uint64_t sub_1D338DE4C(char a1)
{
  v2 = sub_1D33DE664();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = a1;
  aBlock[4] = sub_1D3393F24;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D3329468;
  aBlock[3] = &block_descriptor_160;
  _Block_copy(aBlock);
  sub_1D33927E0(&unk_1EDEBEF50, MEMORY[0x1E69E7F60]);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761680, &unk_1D33E29E0);
  sub_1D334CB54(&qword_1EDEBEF30, &unk_1EC761680, &unk_1D33E29E0);
  sub_1D33DED64();
  v6 = sub_1D33DE6D4();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v9 = sub_1D33DE6B4();

  return v9;
}

Swift::Void __swiftcall RecentsItemDataSource.reload()()
{
  if (*(v0 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration))
  {

    sub_1D334DBDC();
  }

  else
  {
    if (qword_1EDEBFD70 != -1)
    {
      swift_once();
    }

    v1 = sub_1D33DE464();
    __swift_project_value_buffer(v1, qword_1EDEC1480);
    oslog = sub_1D33DE444();
    v2 = sub_1D33DEAD4();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&dword_1D331A000, oslog, v2, "Failed to reload. No recents controller instance found.", v3, 2u);
      MEMORY[0x1D38B81C0](v3, -1, -1);
    }
  }
}

Swift::Void __swiftcall RecentsItemDataSource.removeAllRecents()()
{
  v1 = *(v0 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration);
  if (v1)
  {
    v3 = *(v1 + 16);
    v2 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    v5 = *(v2 + 96);
    swift_unknownObjectRetain();
    v5(ObjectType, v2);

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1EDEBFD70 != -1)
    {
      swift_once();
    }

    v6 = sub_1D33DE464();
    __swift_project_value_buffer(v6, qword_1EDEC1480);
    oslog = sub_1D33DE444();
    v7 = sub_1D33DEAD4();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1D331A000, oslog, v7, "Failed to remove recents. No recents controller instance found.", v8, 2u);
      MEMORY[0x1D38B81C0](v8, -1, -1);
    }
  }
}

Swift::Void __swiftcall RecentsItemDataSource.delete(items:)(Swift::OpaquePointer items)
{
  v2 = *(v1 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration + 32);
  v3 = *(v2 + 16);
  if (v3)
  {
    v5 = v2 + 32;
    do
    {
      sub_1D3325720(v5, v8);
      v6 = v9;
      v7 = v10;
      __swift_project_boxed_opaque_existential_1(v8, v9);
      (*(v7 + 48))(items._rawValue, v6, v7);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      v5 += 40;
      --v3;
    }

    while (v3);
  }
}

Swift::Void __swiftcall RecentsItemDataSource.removeMessageFromTrash(items:)(Swift::OpaquePointer items)
{
  v2 = *(v1 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration + 32);
  v3 = *(v2 + 16);
  if (v3)
  {
    v5 = v2 + 32;
    do
    {
      sub_1D3325720(v5, v8);
      v6 = v9;
      v7 = v10;
      __swift_project_boxed_opaque_existential_1(v8, v9);
      (*(v7 + 64))(items._rawValue, v6, v7);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      v5 += 40;
      --v3;
    }

    while (v3);
  }
}

uint64_t RecentsItemDataSource.redial(item:)(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration);
  if (v2)
  {
    v3 = result;
    v4 = *(v2 + 16);
    v5 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    v7 = *(v5 + 64);
    swift_unknownObjectRetain();
    v7(v3, ObjectType, v5);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t RecentsItemDataSource.contactsWithMetadata(for:)(uint64_t a1)
{
  if (*(a1 + 32) - 4 > 2)
  {
    goto LABEL_27;
  }

  v3 = *a1;
  v4 = [v3 validRemoteParticipantHandles];
  if (!v4 || (v5 = v4, sub_1D331DA18(0, &qword_1EDEBEE90, 0x1E6993578), sub_1D3357A1C(&qword_1EDEBEE80, &qword_1EDEBEE90, 0x1E6993578), v6 = sub_1D33DEA54(), v5, v7 = sub_1D335DC7C(v6), , !v7))
  {
LABEL_26:

LABEL_27:
    v21 = *(a1 + 40);

    return v21;
  }

  v8 = [v3 remoteParticipantHandles];
  if (!v8)
  {
    goto LABEL_25;
  }

  v9 = v8;
  v10 = sub_1D33DEA54();

  if ((v10 & 0xC000000000000001) != 0)
  {
    v11 = sub_1D33DEE14();
  }

  else
  {
    v11 = *(v10 + 16);
  }

  if (v11 != 1)
  {
    goto LABEL_24;
  }

  v12 = *(a1 + 40);
  if (!(v12 >> 62))
  {
    result = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_11;
    }

LABEL_25:

    goto LABEL_26;
  }

  if (v12 < 0)
  {
    v25 = *(a1 + 40);
  }

  result = sub_1D33DEE14();
  if (!result)
  {
    goto LABEL_25;
  }

LABEL_11:
  if ((v12 & 0xC000000000000001) != 0)
  {
    v14 = MEMORY[0x1D38B75D0](0, v12);
  }

  else
  {
    if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_39;
    }

    v14 = *(v12 + 32);
  }

  v15 = v14;
  v16 = [v14 hasBeenPersisted];

  if (v16)
  {
LABEL_24:
    v20 = v7;
    v7 = v3;
    v3 = v20;
    goto LABEL_25;
  }

  if (v12 >> 62)
  {
    result = sub_1D33DEE14();
  }

  else
  {
    result = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!result)
  {
    goto LABEL_25;
  }

  if ((v12 & 0xC000000000000001) != 0)
  {
    v17 = MEMORY[0x1D38B75D0](0, v12);
    goto LABEL_23;
  }

  if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v17 = *(v12 + 32);
LABEL_23:
    v18 = v17;
    v19 = [v17 isCoreRecentsAccepted];

    if ((v19 & 1) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7617C0, &unk_1D33E2270);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1D33E1DE0;
      v22 = [objc_opt_self() contactForRecentCall:v3 metadataCache:*(v1 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration + 64)];
      if (v22)
      {
        *(v21 + 32) = v22;
      }

      else
      {
        v23 = sub_1D336A260();
        v24 = [objc_allocWithZone(MEMORY[0x1E695CF18]) _initWithHandle_];

        *(v21 + 32) = v24;
      }

      return v21;
    }

    goto LABEL_24;
  }

LABEL_39:
  __break(1u);
  return result;
}

void sub_1D338E834(uint64_t a1, int a2)
{
  LODWORD(v66) = a2;
  v2 = sub_1D33DE3F4();
  v61 = *(v2 - 8);
  v3 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D33DE664();
  v71 = *(v6 - 8);
  v7 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v69 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_1D33DE6A4();
  v68 = *(v70 - 8);
  v9 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v70);
  v67 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D33DE3B4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v64 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v58 - v16;
  v18 = sub_1D33DE3E4();
  v65 = *(v18 - 8);
  v19 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v23 = Strong;
    v62 = v6;
    v58 = v5;
    v24 = OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_loadingFallbackTask;
    if (*(Strong + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_loadingFallbackTask))
    {
      v25 = *(Strong + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_loadingFallbackTask);

      sub_1D33DE9D4();

      v26 = *&v23[v24];
    }

    v72 = v12;
    v63 = v11;
    v59 = v2;
    *&v23[v24] = 0;

    if (qword_1EDEBF088 != -1)
    {
      swift_once();
    }

    v27 = __swift_project_value_buffer(v18, qword_1EDEC1458);
    v28 = v65;
    v29 = *(v65 + 16);
    v60 = v27;
    v29(v21);
    sub_1D33DE3A4();
    v30 = swift_slowAlloc();
    *v30 = 0;
    v31 = sub_1D33DE3D4();
    v32 = sub_1D33DEC04();
    v33 = sub_1D33DE394();
    _os_signpost_emit_with_name_impl(&dword_1D331A000, v31, v32, v33, "Process data sources", "", v30, 2u);
    sub_1D338F140(v66 & 1);
    v34 = sub_1D33DEBF4();
    v35 = sub_1D33DE394();
    _os_signpost_emit_with_name_impl(&dword_1D331A000, v31, v34, v35, "Process data sources", "", v30, 2u);

    MEMORY[0x1D38B81C0](v30, -1, -1);
    v36 = *(v72 + 8);
    v37 = v63;
    v72 += 8;
    v66 = v36;
    v36(v17, v63);
    (*(v28 + 8))(v21, v18);
    sub_1D331DA18(0, &qword_1EDEBEEC8, 0x1E69E9610);
    v38 = sub_1D33DEB94();
    v39 = swift_allocObject();
    *(v39 + 16) = v23;
    aBlock[4] = sub_1D3393F30;
    aBlock[5] = v39;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D3329468;
    aBlock[3] = &block_descriptor_166_0;
    v40 = _Block_copy(aBlock);
    v41 = v23;

    v42 = v67;
    sub_1D33DE674();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1D33927E0(&unk_1EDEBEF50, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761680, &unk_1D33E29E0);
    sub_1D334CB54(&qword_1EDEBEF30, &unk_1EC761680, &unk_1D33E29E0);
    v43 = v69;
    v44 = v62;
    sub_1D33DED64();
    MEMORY[0x1D38B7240](0, v42, v43, v40);
    _Block_release(v40);

    (*(v71 + 8))(v43, v44);
    (*(v68 + 8))(v42, v70);
    swift_getKeyPath();
    aBlock[0] = v41;
    sub_1D33927E0(&unk_1EDEBF840, type metadata accessor for RecentsItemDataSource);
    sub_1D33DDED4();

    if (*&v41[OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource__signState])
    {
      v45 = *&v41[OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource__signState];

      v46 = sub_1D33DE3D4();
      v47 = v64;
      sub_1D33DE404();
      v48 = sub_1D33DEBF4();
      if (sub_1D33DECC4())
      {

        v49 = v58;
        sub_1D33DE434();

        v50 = v61;
        v51 = v59;
        if ((*(v61 + 88))(v49, v59) == *MEMORY[0x1E69E93E8])
        {
          v52 = "[Error] Interval already ended";
        }

        else
        {
          (*(v50 + 8))(v49, v51);
          v52 = "";
        }

        v53 = swift_slowAlloc();
        *v53 = 0;
        v54 = v64;
        v55 = sub_1D33DE394();
        v56 = v52;
        v47 = v54;
        _os_signpost_emit_with_name_impl(&dword_1D331A000, v46, v48, v55, "RecentsItemDataSource loading", v56, v53, 2u);
        MEMORY[0x1D38B81C0](v53, -1, -1);
        v37 = v63;
      }

      v66(v47, v37);
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      *(&v58 - 2) = v41;
      *(&v58 - 1) = 0;
      aBlock[0] = v41;
      sub_1D33DDEC4();
    }

    else
    {
    }
  }
}

uint64_t sub_1D338F140(int a1)
{
  v2 = v1;
  v138 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7610E0, &qword_1D33E16C0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v140 = &v133 - v5;
  v144 = sub_1D33DE3B4();
  v143 = *(v144 - 8);
  v6 = *(v143 + 64);
  v7 = MEMORY[0x1EEE9AC00](v144);
  v145 = &v133 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v137 = &v133 - v9;
  v142 = sub_1D33DE3E4();
  v136 = *(v142 - 8);
  v10 = *(v136 + 64);
  MEMORY[0x1EEE9AC00](v142);
  v135 = &v133 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ReminderStatus();
  v157 = *(v12 - 8);
  v13 = *(v157 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v156 = &v133 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = sub_1D33DDDB4();
  v15 = *(v158 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v158);
  v18 = &v133 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = sub_1D33DDD34();
  v149 = *(v152 - 8);
  v19 = *(v149 + 64);
  MEMORY[0x1EEE9AC00](v152);
  v21 = &v133 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for RecentsItem(0);
  v155 = *(v22 - 8);
  v23 = *(v155 + 64);
  v24 = MEMORY[0x1EEE9AC00](v22 - 8);
  v141 = &v133 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v151 = &v133 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v133 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7612B0, qword_1D33E2830);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v160 = &v133 - v32;
  if (qword_1EDEBFD70 != -1)
  {
    goto LABEL_74;
  }

  while (1)
  {
    v33 = sub_1D33DE464();
    __swift_project_value_buffer(v33, qword_1EDEC1480);
    v34 = sub_1D33DE444();
    v35 = sub_1D33DEAF4();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = v21;
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_1D331A000, v34, v35, "Updating: Processing items from datasources", v37, 2u);
      v38 = v37;
      v21 = v36;
      MEMORY[0x1D38B81C0](v38, -1, -1);
    }

    v39 = swift_allocObject();
    v40 = MEMORY[0x1E69E7CC0];
    v147 = v39;
    *(v39 + 16) = MEMORY[0x1E69E7CC0];
    v146 = (v39 + 16);
    v154 = &v2[OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration];
    v41 = *&v2[OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration + 16];
    if (v41)
    {
      swift_getKeyPath();
      v162 = v41;
      sub_1D33927E0(&qword_1EDEBF310, type metadata accessor for VideoMessageInboxController);
      sub_1D33DDED4();

      v42 = v41 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_state;
      os_unfair_lock_lock((v41 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_state));
      v40 = *(v42 + 8);

      os_unfair_lock_unlock(v42);
    }

    v43 = sub_1D33DE444();
    v44 = sub_1D33DEAF4();
    v45 = os_log_type_enabled(v43, v44);
    v46 = v154;
    v150 = v2;
    if (v45)
    {
      v159 = 4271950;
      v47 = swift_slowAlloc();
      v153 = swift_slowAlloc();
      v162 = v153;
      *v47 = 134218242;
      *(v47 + 4) = v40[2];

      *(v47 + 12) = 2082;
      if (v40[2])
      {
        v48 = v44;
        sub_1D332CE34(v40 + ((*(v155 + 80) + 32) & ~*(v155 + 80)), v29, type metadata accessor for RecentsItem);
        v49 = *(v29 + 1);
        v50 = v29[32];
        v51 = 1;
        v52 = v160;
        if (((1 << v50) & 0x1BB) == 0)
        {
          if (v50 == 2)
          {
            v53 = *v29;
            v148 = *(v29 + 3);
            v139 = *(v29 + 2);
            v134 = v49;
            v54 = v53;
            sub_1D33DE0B4();
            v52 = v160;
            sub_1D332B1DC(v53, v134, v139, v148, 2u);
          }

          else
          {
            v56 = v49;
            sub_1D33DE0B4();

            v52 = v160;
          }

          v51 = 0;
        }

        v57 = v158;
        (*(v15 + 56))(v52, v51, 1, v158);
        sub_1D3337A54(v29, type metadata accessor for RecentsItem);
        if ((*(v15 + 48))(v52, 1, v57) == 1)
        {
          sub_1D331E880(v52, &qword_1EC7612B0, qword_1D33E2830);
          v55 = 0xE300000000000000;
        }

        else
        {
          v58 = v52;
          v159 = sub_1D33DDD54();
          v55 = v59;
          (*(v15 + 8))(v58, v57);
        }

        v46 = v154;
      }

      else
      {
        v48 = v44;
        v55 = 0xE300000000000000;
      }

      v60 = sub_1D3328B48(v159, v55, &v162);

      *(v47 + 14) = v60;
      _os_log_impl(&dword_1D331A000, v43, v48, "Updating: Processing items from messageInboxController |(%ld)| and first uuid: %{public}s", v47, 0x16u);
      v61 = v153;
      __swift_destroy_boxed_opaque_existential_1Tm(v153);
      MEMORY[0x1D38B81C0](v61, -1, -1);
      MEMORY[0x1D38B81C0](v47, -1, -1);
    }

    else
    {
    }

    v153 = v40;
    v159 = v18;
    v160 = v15;
    v62 = v46[6];
    v63 = MEMORY[0x1E69E7CC0];
    if (v62)
    {
      swift_getKeyPath();
      v162 = v62;
      sub_1D33927E0(&unk_1EDEBF810, type metadata accessor for RecentsLinkController);

      sub_1D33DDED4();

      v63 = *(v62 + 80);
    }

    v64 = v145;
    v65 = v147;
    v66 = v146;
    v67 = *v46;
    if (!*v46)
    {
      goto LABEL_30;
    }

    swift_getKeyPath();
    v162 = v67;
    sub_1D33927E0(&qword_1EDEBFAD0, type metadata accessor for RecentsControllerBox);
    sub_1D33DDED4();

    os_unfair_lock_lock((v67 + 72));
    v68 = *(v67 + 80);

    os_unfair_lock_unlock((v67 + 72));
    if (v68)
    {
      v69 = sub_1D333048C(v68);
      v70 = sub_1D333048C(v63);
      sub_1D33DDD04();
      v71 = v21;
      v72 = sub_1D332D624(v69, v70, v21, 0);

      v73 = *(v149 + 8);
      v74 = v152;
      v73(v71, v152);
      v75 = sub_1D3330690(v72);

      v76 = MEMORY[0x1E69E7CC0];
      v77 = v75 ? v75 : MEMORY[0x1E69E7CC0];
      v78 = sub_1D333048C(v77);
      v79 = sub_1D333048C(v153);
      sub_1D33DDD04();
      v80 = sub_1D3330F7C(v78, v79, v71, 1);

      v81 = v71;
      v46 = v154;
      v73(v81, v74);
      v82 = sub_1D3330690(v80);
      v66 = v146;
      v65 = v147;
      v64 = v145;

      v83 = (v82 ? v82 : v76);
    }

    else
    {
LABEL_30:
      sub_1D3333DE0(v63);
      v83 = v153;
    }

    sub_1D3333DE0(v83);
    v29 = v158;
    v15 = v151;
    v2 = v150;
    v84 = v46[1] ? sub_1D3334010() : MEMORY[0x1E69E7CC0];
    sub_1D3333DE0(v84);
    v85 = [*&v2[OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_featureFlags] callRemindersEnabled];
    v86 = &qword_1EDEBF000;
    if (!v85)
    {
      break;
    }

    v87 = OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_isRemindersDatasource;
    swift_beginAccess();
    if (v2[v87] != 1)
    {
      goto LABEL_65;
    }

    v88 = *v66;
    v89 = *(*v66 + 16);

    v152 = v89;
    if (!v89)
    {
      v139 = MEMORY[0x1E69E7CC0];
LABEL_61:

      v110 = *v146;
      *v146 = v139;

      v64 = v145;
      v65 = v147;
      if (v138)
      {
        if (qword_1EDEBF088 != -1)
        {
          swift_once();
        }

        v111 = v142;
        v112 = __swift_project_value_buffer(v142, qword_1EDEC1458);
        v113 = v136;
        v114 = v135;
        (*(v136 + 16))(v135, v112, v111);
        v115 = v137;
        sub_1D33DE3A4();
        v116 = swift_slowAlloc();
        *v116 = 0;
        v117 = sub_1D33DE3D4();
        v118 = sub_1D33DEC04();
        v119 = sub_1D33DE394();
        _os_signpost_emit_with_name_impl(&dword_1D331A000, v117, v118, v119, "Refresh reminder status", "", v116, 2u);
        sub_1D339052C(v146);
        v120 = sub_1D33DEBF4();
        v121 = sub_1D33DE394();
        _os_signpost_emit_with_name_impl(&dword_1D331A000, v117, v120, v121, "Refresh reminder status", "", v116, 2u);

        MEMORY[0x1D38B81C0](v116, -1, -1);
        (*(v143 + 8))(v115, v144);
        (*(v113 + 8))(v114, v111);
        v2 = v150;
        v65 = v147;
      }

LABEL_65:
      v122 = sub_1D33DE9B4();
      v123 = v140;
      (*(*(v122 - 8) + 56))(v140, 1, 1, v122);
      v124 = swift_allocObject();
      v124[2] = 0;
      v124[3] = 0;
      v124[4] = v2;
      v124[5] = v65;
      v125 = v2;

      sub_1D333DD88(0, 0, v123, &unk_1D33E38A0, v124);

      v86 = &qword_1EDEBF000;
      break;
    }

    v21 = 0;
    v18 = v160;
    v90 = (v160 + 8);
    v139 = MEMORY[0x1E69E7CC0];
    v148 = v88;
    while (v21 < *(v88 + 16))
    {
      v91 = (*(v155 + 80) + 32) & ~*(v155 + 80);
      v153 = *(v155 + 72);
      sub_1D332CE34(v88 + v91 + v153 * v21, v15, type metadata accessor for RecentsItem);
      v92 = *(sub_1D3337D6C() + 16);

      if (!v92)
      {
        sub_1D3337A54(v15, type metadata accessor for RecentsItem);
        goto LABEL_39;
      }

      v149 = v91;
      v154 = v21;
      if (qword_1EDEBF9C0 != -1)
      {
        swift_once();
      }

      v93 = off_1EDEBF9C8;
      swift_beginAccess();
      v94 = v93[3];

      sub_1D33DE4F4();

      v21 = v161;
      v95 = sub_1D3337D6C();
      v96 = v95;
      v97 = *(v95 + 16);
      if (v97)
      {
        v15 = 0;
        v2 = (v95 + ((v18[80] + 32) & ~v18[80]));
        while (1)
        {
          if (v15 >= *(v96 + 16))
          {
            __break(1u);
            goto LABEL_73;
          }

          v98 = &v2[*(v18 + 9) * v15];
          v99 = *(v18 + 2);
          v100 = v159;
          v99(v159, v98, v29);
          if (*(v21 + 16) && (v101 = sub_1D33B926C(v100), (v102 & 1) != 0))
          {
            v103 = v156;
            sub_1D332CE34(*(v21 + 56) + *(v157 + 72) * v101, v156, type metadata accessor for ReminderStatus);
            (*v90)(v100, v158);
            v104 = *v103;
            v105 = v103;
            v29 = v158;
            sub_1D3337A54(v105, type metadata accessor for ReminderStatus);
            if (!v104)
            {

              sub_1D33302BC(v151, v141);
              v106 = v139;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v162 = v106;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_1D3330B0C(0, v106[2] + 1, 1);
                v106 = v162;
              }

              v2 = v150;
              v18 = v160;
              v88 = v148;
              v21 = v154;
              v109 = v106[2];
              v108 = v106[3];
              if (v109 >= v108 >> 1)
              {
                sub_1D3330B0C(v108 > 1, v109 + 1, 1);
                v106 = v162;
              }

              v106[2] = v109 + 1;
              v139 = v106;
              sub_1D33302BC(v141, v106 + v149 + v109 * v153);
              v15 = v151;
              goto LABEL_39;
            }
          }

          else
          {
            (*v90)(v100, v29);
          }

          ++v15;
          v18 = v160;
          if (v97 == v15)
          {

            v2 = v150;
            v15 = v151;
            goto LABEL_59;
          }
        }
      }

LABEL_59:

      sub_1D3337A54(v15, type metadata accessor for RecentsItem);
      v88 = v148;
      v21 = v154;
LABEL_39:
      if (++v21 == v152)
      {
        goto LABEL_61;
      }
    }

LABEL_73:
    __break(1u);
LABEL_74:
    swift_once();
  }

  if (v86[17] != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v142, qword_1EDEC1458);

  sub_1D33DE3A4();
  v126 = sub_1D33DE3D4();
  v127 = sub_1D33DEC14();
  if (sub_1D33DECC4())
  {
    v128 = swift_slowAlloc();
    *v128 = 134217984;
    swift_beginAccess();
    *(v128 + 4) = *(*(v65 + 16) + 16);

    v129 = sub_1D33DE394();
    _os_signpost_emit_with_name_impl(&dword_1D331A000, v126, v127, v129, "Finished fetching", "Count: %ld", v128, 0xCu);
    MEMORY[0x1D38B81C0](v128, -1, -1);
  }

  else
  {
  }

  (*(v143 + 8))(v64, v144);
  swift_beginAccess();
  v130 = *(v65 + 16);

  sub_1D338AF18(v131);
}

uint64_t sub_1D3390490(char *a1)
{
  v2 = &a1[OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource__hasFinishedFirstLoadValue];
  os_unfair_lock_lock(&a1[OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource__hasFinishedFirstLoadValue]);
  v3 = *(v2 + 1);
  sub_1D33DE4E4();
  os_unfair_lock_unlock(v2);
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = a1;
  return sub_1D33DE584();
}

uint64_t sub_1D339052C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761320, &unk_1D33E28D0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v30 = &v25 - v5;
  v29 = type metadata accessor for RecentsItem(0);
  v6 = *(v29 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v29);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v25 - v11;
  v13 = *a1;
  v14 = *(*a1 + 16);
  v15 = MEMORY[0x1E69E7CC0];
  if (v14)
  {
    v26 = a1;
    v27 = v1;
    v31 = MEMORY[0x1E69E7CC0];
    v16 = v13;

    sub_1D3330B0C(0, v14, 0);
    v15 = v31;
    v17 = *(v6 + 80);
    v25 = v16;
    v28 = (v17 + 32) & ~v17;
    v18 = v16 + v28;
    v19 = *(v6 + 72);
    do
    {
      sub_1D332CE34(v18, v10, type metadata accessor for RecentsItem);
      sub_1D332CE34(v10, v12, type metadata accessor for RecentsItem);
      v20 = v30;
      RecentsItem.getReminderStatus()(v30);
      sub_1D3337A54(v10, type metadata accessor for RecentsItem);
      sub_1D3394050(v20, &v12[*(v29 + 44)]);
      v31 = v15;
      v22 = *(v15 + 16);
      v21 = *(v15 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_1D3330B0C(v21 > 1, v22 + 1, 1);
        v15 = v31;
      }

      *(v15 + 16) = v22 + 1;
      sub_1D33302BC(v12, v15 + v28 + v22 * v19);
      v18 += v19;
      --v14;
    }

    while (v14);

    a1 = v26;
    v23 = *v26;
  }

  *a1 = v15;
}

uint64_t sub_1D3390794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = sub_1D33DE3B4();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();
  v9 = sub_1D33DE3E4();
  v5[10] = v9;
  v10 = *(v9 - 8);
  v5[11] = v10;
  v11 = *(v10 + 64) + 15;
  v5[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D33908B0, 0, 0);
}

uint64_t sub_1D33908B0()
{
  if (qword_1EDEBF088 != -1)
  {
    swift_once();
  }

  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[9];
  v4 = v0[10];
  v5 = v0[8];
  v19 = v4;
  v20 = v0[7];
  v6 = v0[6];
  v18 = v0[5];
  v7 = __swift_project_value_buffer(v4, qword_1EDEC1458);
  (*(v2 + 16))(v1, v7, v4);
  sub_1D33DE3A4();
  v8 = swift_slowAlloc();
  *v8 = 0;
  v9 = sub_1D33DE3D4();
  v10 = sub_1D33DEC04();
  v11 = sub_1D33DE394();
  _os_signpost_emit_with_name_impl(&dword_1D331A000, v9, v10, v11, "Populate reminder cache", "", v8, 2u);
  v12 = *(v18 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_recentsReminderCache);
  swift_beginAccess();
  v13 = *(v6 + 16);

  sub_1D3334470(v14, 0);

  LOBYTE(v13) = sub_1D33DEBF4();
  v15 = sub_1D33DE394();
  _os_signpost_emit_with_name_impl(&dword_1D331A000, v9, v13, v15, "Populate reminder cache", "", v8, 2u);

  MEMORY[0x1D38B81C0](v8, -1, -1);
  (*(v5 + 8))(v3, v20);
  (*(v2 + 8))(v1, v19);

  v16 = v0[1];

  return v16();
}

id RecentsItemDataSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t RecentsItemDataSource.markItemsAsRead(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v46 = a3;
  v45 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7610E0, &qword_1D33E16C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v44 = &v44 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7612B0, qword_1D33E2830);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v44 - v12;
  v14 = sub_1D33DDDB4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for RecentsItem(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(a1 + 16);
  if (v24)
  {
    v25 = a1 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
    v26 = *(v21 + 72);
    v52 = (v15 + 56);
    v53 = v26;
    v49 = v15;
    v50 = (v15 + 32);
    v51 = (v15 + 48);
    v27 = MEMORY[0x1E69E7CC0];
    v48 = v18;
    while (1)
    {
      sub_1D332CE34(v25, v23, type metadata accessor for RecentsItem);
      v28 = v23[32];
      v29 = 1;
      if (v28 <= 8)
      {
        if (((1 << v28) & 0x1B0) != 0)
        {
          goto LABEL_12;
        }

        v30 = *(v23 + 1);
        if (v28 == 3 || v28 == 6)
        {
          goto LABEL_11;
        }
      }

      if (v28 >= 2)
      {
        v30 = *v23;
LABEL_11:
        v31 = v30;
        sub_1D33DE0B4();

        v29 = 0;
      }

LABEL_12:
      (*v52)(v11, v29, 1, v14);
      sub_1D332FEC4(v11, v13);
      sub_1D3337A54(v23, type metadata accessor for RecentsItem);
      if ((*v51)(v13, 1, v14) == 1)
      {
        sub_1D331E880(v13, &qword_1EC7612B0, qword_1D33E2830);
      }

      else
      {
        v32 = v11;
        v33 = *v50;
        (*v50)(v18, v13, v14);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = sub_1D3338090(0, v27[2] + 1, 1, v27);
        }

        v35 = v27[2];
        v34 = v27[3];
        if (v35 >= v34 >> 1)
        {
          v27 = sub_1D3338090(v34 > 1, v35 + 1, 1, v27);
        }

        v27[2] = v35 + 1;
        v36 = v27 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v35;
        v18 = v48;
        v33(v36, v48, v14);
        v11 = v32;
      }

      v25 += v53;
      if (!--v24)
      {
        goto LABEL_19;
      }
    }
  }

  v27 = MEMORY[0x1E69E7CC0];
LABEL_19:
  v37 = *(v47 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration + 16);
  if (!v37)
  {
  }

  v38 = v45;
  if (v45)
  {
    v39 = v46;
  }

  else
  {
    v39 = 0;
  }

  v40 = v44;
  sub_1D33DE984();
  v41 = sub_1D33DE9B4();
  (*(*(v41 - 8) + 56))(v40, 0, 1, v41);
  v42 = swift_allocObject();
  v42[2] = 0;
  v42[3] = 0;
  v42[4] = v37;
  v42[5] = v27;
  v42[6] = v38;
  v42[7] = v39;

  sub_1D331FEDC(v38);
  sub_1D333DD88(0, 0, v40, &unk_1D33E3400, v42);
}

Swift::Void __swiftcall RecentsItemDataSource.deleteMessagesWithUUIDs(_:)(Swift::OpaquePointer a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration + 16);
  if (v2)
  {
    v4 = v2 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_state;
    os_unfair_lock_lock((v2 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_state));
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = *(v4 + 24);

      os_unfair_lock_unlock(v4);
      v5(a1._rawValue);

      sub_1D331EEDC(v5);
    }

    else
    {
      __break(1u);
    }
  }
}

Swift::Void __swiftcall RecentsItemDataSource.loadOlderCallsIfNecessary(forRemainingRowCount:)(Swift::Int forRemainingRowCount)
{
  v2 = *(v1 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration);
  if (v2)
  {
    v4 = *(v2 + 16);
    v5 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    v7 = *(v5 + 40);
    swift_unknownObjectRetain();
    v7(forRemainingRowCount, ObjectType, v5);

    swift_unknownObjectRelease();
  }
}

Swift::Int __swiftcall RecentsItemDataSource.numUnknownMissedCalls()()
{
  v1 = type metadata accessor for RecentsItem(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1 - 8);
  v24 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v24 - v6);
  swift_getKeyPath();
  v25 = v0;
  sub_1D33927E0(&unk_1EDEBF840, type metadata accessor for RecentsItemDataSource);
  sub_1D33DDED4();

  v8 = *(v0 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource__allRecentsItems);
  v9 = *(v8 + 16);

  if (v9)
  {
    v11 = 0;
    v12 = MEMORY[0x1E69E7CC0];
    v13 = &selRef_setOriginatingUIType_;
    while (1)
    {
      if (v11 >= *(v8 + 16))
      {
        __break(1u);
        return result;
      }

      v14 = (*(v2 + 80) + 32) & ~*(v2 + 80);
      v15 = *(v2 + 72);
      sub_1D332CE34(v8 + v14 + v15 * v11, v7, type metadata accessor for RecentsItem);
      if (*(v7 + 32) - 4 < 3)
      {
        v16 = *v7;
        if ([v16 v13[85]] && objc_msgSend(v16, sel_isIncoming))
        {
          v17 = CHRecentCall.unknownHandles.getter();

          v18 = *(v17 + 16);

          if (v18)
          {
            sub_1D33302BC(v7, v24);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v25 = v12;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1D3330B0C(0, *(v12 + 16) + 1, 1);
              v12 = v25;
            }

            v21 = *(v12 + 16);
            v20 = *(v12 + 24);
            v22 = v21 + 1;
            if (v21 >= v20 >> 1)
            {
              sub_1D3330B0C(v20 > 1, v21 + 1, 1);
              v22 = v21 + 1;
              v12 = v25;
            }

            *(v12 + 16) = v22;
            result = sub_1D33302BC(v24, v12 + v14 + v21 * v15);
          }

          else
          {
            result = sub_1D3337A54(v7, type metadata accessor for RecentsItem);
          }

          v13 = &selRef_setOriginatingUIType_;
          goto LABEL_5;
        }
      }

      result = sub_1D3337A54(v7, type metadata accessor for RecentsItem);
LABEL_5:
      if (v9 == ++v11)
      {
        goto LABEL_19;
      }
    }
  }

  v12 = MEMORY[0x1E69E7CC0];
LABEL_19:

  v23 = *(v12 + 16);

  return v23;
}

uint64_t sub_1D33914E4()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = *(MEMORY[0x1E69E88D0] + 4);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_1D33915DC;
  v5 = MEMORY[0x1E69E6530];

  return MEMORY[0x1EEE6DDE0](v0 + 2, 0, 0, 0xD000000000000019, 0x80000001D33E6DF0, sub_1D339373C, v2, v5);
}

uint64_t sub_1D33915DC()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D33916F4, 0, 0);
}

uint64_t sub_1D339170C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D33DE664();
  v25 = *(v4 - 8);
  v5 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D33DE6A4();
  v23 = *(v8 - 8);
  v24 = v8;
  v9 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761948, &unk_1D33E37B0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v22 - v15;
  v22[1] = *(a2 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration + 56);
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v13 + 16))(v16, a1, v12);
  v18 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  (*(v13 + 32))(v19 + v18, v16, v12);
  aBlock[4] = sub_1D3393DDC;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D3329468;
  aBlock[3] = &block_descriptor_110_0;
  v20 = _Block_copy(aBlock);

  sub_1D33DE674();
  v26 = MEMORY[0x1E69E7CC0];
  sub_1D33927E0(&unk_1EDEBEF50, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761680, &unk_1D33E29E0);
  sub_1D334CB54(&qword_1EDEBEF30, &unk_1EC761680, &unk_1D33E29E0);
  sub_1D33DED64();
  MEMORY[0x1D38B7240](0, v11, v7, v20);
  _Block_release(v20);
  (*(v25 + 8))(v7, v4);
  (*(v23 + 8))(v11, v24);
}

void sub_1D3391AEC(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for RecentsItem(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3 - 8);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = (v27 - v9);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v27[1] = a2;
    swift_getKeyPath();
    v30 = v12;
    sub_1D33927E0(&unk_1EDEBF840, type metadata accessor for RecentsItemDataSource);
    sub_1D33DDED4();

    v27[0] = v12;
    v13 = *&v12[OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource__allRecentsItems];
    v14 = *(v13 + 16);

    if (v14)
    {
      v15 = 0;
      v16 = MEMORY[0x1E69E7CC0];
      v28 = v8;
      v29 = v14;
      while (v15 < *(v13 + 16))
      {
        v17 = (*(v4 + 80) + 32) & ~*(v4 + 80);
        v18 = *(v4 + 72);
        sub_1D332CE34(v13 + v17 + v18 * v15, v10, type metadata accessor for RecentsItem);
        if (*(v10 + 32) - 4 >= 3)
        {
          sub_1D3337A54(v10, type metadata accessor for RecentsItem);
        }

        else
        {
          v19 = *v10;
          if ([v19 isIncoming])
          {
            v20 = CHRecentCall.unknownHandles.getter();

            v21 = *(v20 + 16);

            if (v21)
            {
              sub_1D33302BC(v10, v8);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v30 = v16;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_1D3330B0C(0, *(v16 + 2) + 1, 1);
                v16 = v30;
              }

              v24 = *(v16 + 2);
              v23 = *(v16 + 3);
              if (v24 >= v23 >> 1)
              {
                sub_1D3330B0C(v23 > 1, v24 + 1, 1);
                v16 = v30;
              }

              *(v16 + 2) = v24 + 1;
              v25 = &v16[v17 + v24 * v18];
              v8 = v28;
              sub_1D33302BC(v28, v25);
            }

            else
            {
              sub_1D3337A54(v10, type metadata accessor for RecentsItem);
            }

            v14 = v29;
          }

          else
          {
            sub_1D3337A54(v10, type metadata accessor for RecentsItem);
          }
        }

        if (v14 == ++v15)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
    }

    else
    {
      v16 = MEMORY[0x1E69E7CC0];
LABEL_20:

      v26 = *(v16 + 2);

      v30 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761948, &unk_1D33E37B0);
      sub_1D33DE934();
    }
  }

  else
  {
    v30 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761948, &unk_1D33E37B0);
    sub_1D33DE934();
  }
}

uint64_t RecentsItemDataSource.conversationManager(_:didChangeActivatedLinks:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7610E0, &qword_1D33E16C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14 - v6;
  v8 = sub_1D33DE9B4();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_1D33DE974();
  v9 = v2;

  v10 = sub_1D33DE964();
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E85E0];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = v9;
  v11[5] = a2;
  sub_1D333E088(0, 0, v7, &unk_1D33E3418, v11);
}

uint64_t sub_1D3391FC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v5[8] = a1;
  sub_1D33DE974();
  v5[11] = sub_1D33DE964();
  v7 = sub_1D33DE914();

  return MEMORY[0x1EEE6DFA0](sub_1D339205C, v7, v6);
}

uint64_t sub_1D339205C()
{
  v1 = v0[11];
  v2 = v0[9];

  v3 = *(v2 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration + 48);
  if (!v3)
  {
    goto LABEL_3;
  }

  v4 = v0[10];

  v5 = sub_1D3350D20();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1D3355148;
  *(v7 + 24) = v6;
  v0[6] = sub_1D3393DD4;
  v0[7] = v7;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1D3356790;
  v0[5] = &block_descriptor_3;
  v8 = _Block_copy(v0 + 2);
  v9 = v0[7];

  [v5 performWhileLocked_];

  _Block_release(v8);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  else
  {
LABEL_3:
    *v0[8] = v3 == 0;
    v11 = v0[1];

    return v11();
  }

  return result;
}

uint64_t RecentsItemDataSource.conversationManager(_:linkChangedFor:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7610E0, &qword_1D33E16C0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v11 - v3;
  v5 = sub_1D33DE9B4();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_1D33DE974();
  v6 = v0;
  v7 = sub_1D33DE964();
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E85E0];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = v6;
  sub_1D333E088(0, 0, v4, &unk_1D33E3428, v8);
}

uint64_t sub_1D33924C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  sub_1D33DE974();
  v4[4] = sub_1D33DE964();
  v6 = sub_1D33DE914();

  return MEMORY[0x1EEE6DFA0](sub_1D339255C, v6, v5);
}

uint64_t sub_1D339255C()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);

  v3 = *(v2 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration + 48);
  if (v3)
  {

    sub_1D3352F40();
  }

  **(v0 + 16) = v3 == 0;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t RecentsItemDataSource.update(reminderUUID:for:)(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource_configuration + 32);
  v4 = *(v3 + 16);
  if (v4)
  {
    v6 = result;
    v7 = v3 + 32;
    do
    {
      sub_1D3325720(v7, v10);
      v8 = v11;
      v9 = v12;
      __swift_project_boxed_opaque_existential_1(v10, v11);
      (*(v9 + 56))(v6, a2, v8, v9);
      result = __swift_destroy_boxed_opaque_existential_1Tm(v10);
      v7 += 40;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_1D33927E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D3392828(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760F20, &qword_1D33E2290);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v64 = &v62 - v6;
  v69 = sub_1D33DEB74();
  v67 = *(v69 - 8);
  v7 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v62 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D33DEC24();
  v10 = *(v9 - 8);
  v65 = v9;
  v66 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7619D0, &qword_1D33E3928);
  v70 = *(v68 - 8);
  v14 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v68);
  v63 = &v62 - v15;
  v16 = sub_1D33DE2F4();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = (&v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = (&v62 - v23);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v62 - v25;
  v73 = sub_1D33DE2A4();
  v74 = &off_1F4EE4AF0;
  v72[0] = a1;
  v27 = (a2 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController__messageQuery);
  v28 = swift_allocObject();
  *(v28 + 16) = &unk_1F4EE46C0;
  *v24 = v28;
  v29 = *(v17 + 104);
  v29(v24, *MEMORY[0x1E699C008], v16);
  v30 = swift_allocObject();
  *(v30 + 16) = &unk_1F4EE46E8;
  *v21 = v30;
  v29(v21, *MEMORY[0x1E699BFF8], v16);
  sub_1D33DE2E4();
  v31 = *(v17 + 8);
  v31(v21, v16);
  v31(v24, v16);
  *v27 = 0;
  v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7618B0, &qword_1D33E3360) + 28);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7619D8, &unk_1D33E3930);
  bzero(&v27[v32], *(*(v33 - 8) + 64));
  (*(v17 + 32))(&v27[v32], v26, v16);
  v34 = OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_featureFlags;
  *(a2 + v34) = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  v35 = OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_callProviderManager;
  *(a2 + v35) = [objc_allocWithZone(MEMORY[0x1E69D8A90]) init];
  v36 = OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_pagedLoader;
  type metadata accessor for VideoMessageInboxController.PagedLoader();
  v37 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v37 + 112) = xmmword_1D33E31F0;
  *(v37 + 128) = 0;
  *(v37 + 136) = 0;
  *(a2 + v36) = v37;
  *(a2 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController__loadingTask) = 0;
  v38 = a2 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_state;
  *v38 = 0;
  v39 = MEMORY[0x1E69E7CC0];
  *(v38 + 40) = 0;
  *(v38 + 24) = 0;
  *(v38 + 32) = 0;
  *(v38 + 8) = v39;
  *(v38 + 16) = 0;
  v40 = OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_loadingStateSubject;
  LOBYTE(v71[0]) = 0;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7619E0, &unk_1D33E1AA0);
  v42 = *(v41 + 48);
  v43 = *(v41 + 52);
  swift_allocObject();
  *(a2 + v40) = sub_1D33DE504();
  *(a2 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController__signState) = 0;
  sub_1D33DDF04();
  sub_1D3325720(v72, a2 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController__messageStoreController);
  v44 = [objc_opt_self() defaultCenter];
  v45 = *MEMORY[0x1E695C3D8];
  sub_1D33DEC34();

  v46 = v62;
  sub_1D33DEB54();
  sub_1D331DA18(0, &qword_1EDEBEEC8, 0x1E69E9610);
  v47 = sub_1D33DEB94();
  *&v71[0] = v47;
  v48 = sub_1D33DEB34();
  v49 = v64;
  (*(*(v48 - 8) + 56))(v64, 1, 1, v48);
  sub_1D33927E0(&qword_1EDEC0050, MEMORY[0x1E6969F20]);
  sub_1D3357A1C(&qword_1EDEBEED8, &qword_1EDEBEEC8, 0x1E69E9610);
  v50 = v63;
  v51 = v65;
  sub_1D33DE614();
  sub_1D331E880(v49, &qword_1EC760F20, &qword_1D33E2290);
  (*(v67 + 8))(v46, v69);
  (*(v66 + 8))(v13, v51);

  swift_allocObject();
  swift_weakInit();
  sub_1D334CB54(&unk_1EDEBEFF0, &qword_1EC7619D0, &qword_1D33E3928);

  v52 = v68;
  v53 = sub_1D33DE644();

  (*(v70 + 8))(v50, v52);
  v54 = a2 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_state;
  os_unfair_lock_lock((a2 + OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_state));
  v55 = *(v54 + 32);
  *(v54 + 32) = v53;

  os_unfair_lock_unlock(v54);

  v56 = *__swift_project_boxed_opaque_existential_1(v72, v73);

  sub_1D33DE254();

  v57 = swift_allocObject();
  swift_weakInit();

  sub_1D3325720(v72, v71);
  v58 = swift_allocObject();
  *(v58 + 16) = v57;
  sub_1D331E6AC(v71, v58 + 24);

  os_unfair_lock_lock(v54);
  v59 = *(v54 + 16);
  v60 = *(v54 + 24);
  *(v54 + 16) = sub_1D33940C8;
  *(v54 + 24) = v58;

  sub_1D331EEDC(v59);
  os_unfair_lock_unlock(v54);

  sub_1D33220A8();
  __swift_destroy_boxed_opaque_existential_1Tm(v72);
  return a2;
}

char *sub_1D33930E8(uint64_t a1, _BYTE *a2)
{
  ObjectType = swift_getObjectType();
  v17[3] = type metadata accessor for RequestsHandler();
  v17[4] = &off_1F4EE7D80;
  v17[0] = a1;
  v5 = OBJC_IVAR____TtC16CallsAppServices25RecentsUnreadCountManager_tabBarUnreadCallCount;
  v16 = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761740, &unk_1D33E2F70);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  *&a2[v5] = sub_1D33DE504();
  swift_weakInit();
  *&a2[OBJC_IVAR____TtC16CallsAppServices25RecentsUnreadCountManager_totalUnreadCallCount] = 0;
  *&a2[OBJC_IVAR____TtC16CallsAppServices25RecentsUnreadCountManager_unreadRequestCountSink] = 0;
  a2[OBJC_IVAR____TtC16CallsAppServices25RecentsUnreadCountManager_shouldMarkKnownCallsAsReadWhenReady] = 0;
  sub_1D3325720(v17, &a2[OBJC_IVAR____TtC16CallsAppServices25RecentsUnreadCountManager_requestsHandler]);
  v15.receiver = a2;
  v15.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v15, sel_init);
  v16 = sub_1D337EA54();
  *(swift_allocObject() + 16) = v9;
  v10 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7619F0, &qword_1D33E3958);
  sub_1D334CB54(&qword_1EC7619F8, &qword_1EC7619F0, &qword_1D33E3958);
  v11 = sub_1D33DE644();

  v12 = *&v10[OBJC_IVAR____TtC16CallsAppServices25RecentsUnreadCountManager_unreadRequestCountSink];
  *&v10[OBJC_IVAR____TtC16CallsAppServices25RecentsUnreadCountManager_unreadRequestCountSink] = v11;

  v13 = [objc_opt_self() defaultCenter];
  if (qword_1EC760978 != -1)
  {
    swift_once();
  }

  [v13 addObserver:v10 selector:? name:? object:?];

  __swift_destroy_boxed_opaque_existential_1Tm(v17);
  return v10;
}

uint64_t sub_1D3393364(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761830, &qword_1D33E32B0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v23[-1] - v9;
  v23[3] = type metadata accessor for RequestsHandler();
  v23[4] = &off_1F4EE7D80;
  v23[0] = a2;
  *(a3 + 72) = 0;
  *(a3 + 80) = 0;
  LOBYTE(v22) = 0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7619E0, &unk_1D33E1AA0);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  *(a3 + 88) = sub_1D33DE504();
  v14 = OBJC_IVAR____TtC16CallsAppServices20RecentsControllerBox__hasFinishedFirstLoad;
  LOBYTE(v22) = 0;
  sub_1D33DE534();
  (*(v7 + 32))(a3 + v14, v10, v6);
  *(a3 + OBJC_IVAR____TtC16CallsAppServices20RecentsControllerBox_recentCallsDidChangeSubscription) = 0;
  *(a3 + OBJC_IVAR____TtC16CallsAppServices20RecentsControllerBox__needsNewLoad) = 0;
  v15 = OBJC_IVAR____TtC16CallsAppServices20RecentsControllerBox_featureFlags;
  *(a3 + v15) = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  sub_1D33DDF04();
  *(a3 + 16) = a1;
  *(a3 + 24) = &off_1F4EE5B10;
  sub_1D3325720(v23, a3 + 32);
  v22 = *&a1[OBJC_IVAR____TtC16CallsAppServices18RecentCallProvider_recentItemsUpdateTrigger];
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1D33940D4;
  *(v17 + 24) = v16;
  v18 = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761430, &qword_1D33E2BF0);
  sub_1D334CB54(&unk_1EDEBEF90, &unk_1EC761430, &qword_1D33E2BF0);
  v19 = sub_1D33DE644();

  __swift_destroy_boxed_opaque_existential_1Tm(v23);

  v20 = *(a3 + OBJC_IVAR____TtC16CallsAppServices20RecentsControllerBox_recentCallsDidChangeSubscription);
  *(a3 + OBJC_IVAR____TtC16CallsAppServices20RecentsControllerBox_recentCallsDidChangeSubscription) = v19;

  return a3;
}

uint64_t sub_1D3393668(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D334D4B4;

  return sub_1D3340254(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1D3393744(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D334D4B4;

  return sub_1D3391FC0(a1, v4, v5, v7, v6);
}

uint64_t sub_1D3393804(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D334D4B4;

  return sub_1D33924C4(a1, v4, v5, v6);
}

unint64_t sub_1D33938C0()
{
  result = qword_1EC7618F8;
  if (!qword_1EC7618F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7618F8);
  }

  return result;
}

uint64_t sub_1D3393914(uint64_t a1)
{
  result = sub_1D33927E0(&unk_1EDEBF810, type metadata accessor for RecentsLinkController);
  *(a1 + 8) = result;
  return result;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1D3393990(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D33939D8(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_1D3393AF8(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 32) = v4;
  *v4 = v2;
  v4[1] = sub_1D3393BEC;

  return v6(v2 + 16);
}

uint64_t sub_1D3393BEC()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v6 = *v0;

  *v3 = *(v1 + 16);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1D3393D1C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D334CF9C;

  return sub_1D3393AF8(a1, v5);
}

void sub_1D3393DDC()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761948, &unk_1D33E37B0) - 8);
  v2 = *(v0 + 16);
  v3 = (v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80)));

  sub_1D3391AEC(v2, v3);
}

uint64_t sub_1D3393E6C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource__forceLoaded);
  *(v1 + OBJC_IVAR____TtC16CallsAppServices21RecentsItemDataSource__forceLoaded) = *(v0 + 24);
  return sub_1D3389A94(v2);
}

uint64_t keypath_set_141Tm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v6 = *a1;
  v7 = *a2;

  return sub_1D338C6FC(v8, a5);
}

uint64_t objectdestroy_44Tm(void (*a1)(void))
{
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();

  a1(*(v1 + 40));

  return MEMORY[0x1EEE6BDD0](v1, 48, 7);
}

uint64_t sub_1D3393F90(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D334CF9C;

  return sub_1D3390794(a1, v4, v5, v7, v6);
}

uint64_t sub_1D3394050(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761320, &unk_1D33E28D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void *Participant.handle.getter()
{
  v1 = *(v0 + *(type metadata accessor for Participant() + 20));
  if (v1)
  {
    v2 = v1;
  }

  return v1;
}

uint64_t type metadata accessor for Participant()
{
  result = qword_1EC761A18;
  if (!qword_1EC761A18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Participant.RemoteIdentifiers.debugDescription.getter()
{
  v1 = 7104878;
  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = *(v0 + 16);
  v6 = *(v0 + 24);
  v5 = *(v0 + 32);
  sub_1D33DEF24();
  MEMORY[0x1D38B6ED0](0xD000000000000019, 0x80000001D33E70A0);
  v7 = [v2 value];
  sub_1D33DE7B4();

  v8 = sub_1D33DE804();
  MEMORY[0x1D38B6ED0](v8);

  MEMORY[0x1D38B6ED0](0x3D4449736469202CLL, 0xE800000000000000);
  if (v4)
  {
    v9 = 0xE300000000000000;
    v10 = 7104878;
  }

  else
  {
    v10 = sub_1D33DE804();
    v9 = v11;
  }

  MEMORY[0x1D38B6ED0](v10, v9);

  MEMORY[0x1D38B6ED0](0xD000000000000010, 0x80000001D33E70C0);
  if (v5)
  {

    v1 = sub_1D33DE804();
    v13 = v12;
  }

  else
  {
    v13 = 0xE300000000000000;
  }

  MEMORY[0x1D38B6ED0](v1, v13);

  return 0;
}

uint64_t Participant.RemoteIdentifiers.hash(into:)()
{
  v1 = v0[1];
  v2 = *(v0 + 16);
  v3 = v0[3];
  v4 = v0[4];
  v5 = *v0;
  sub_1D33DEC84();
  if (v2 != 1)
  {
    sub_1D33DF2A4();
    MEMORY[0x1D38B7940](v1);
    if (v4)
    {
      goto LABEL_3;
    }

    return sub_1D33DF2A4();
  }

  sub_1D33DF2A4();
  if (!v4)
  {
    return sub_1D33DF2A4();
  }

LABEL_3:
  sub_1D33DF2A4();

  return sub_1D33DE824();
}

uint64_t Participant.RemoteIdentifiers.hashValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 16);
  v4 = v0[3];
  v5 = v0[4];
  sub_1D33DF284();
  sub_1D33DEC84();
  if (v3 != 1)
  {
    sub_1D33DF2A4();
    MEMORY[0x1D38B7940](v1);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1D33DF2A4();
    return sub_1D33DF2C4();
  }

  sub_1D33DF2A4();
  if (!v5)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1D33DF2A4();
  sub_1D33DE824();
  return sub_1D33DF2C4();
}

uint64_t sub_1D33945A4()
{
  v1 = v0[1];
  v2 = *(v0 + 16);
  v3 = v0[3];
  v4 = v0[4];
  v5 = *v0;
  sub_1D33DEC84();
  if (v2 != 1)
  {
    sub_1D33DF2A4();
    MEMORY[0x1D38B7940](v1);
    if (v4)
    {
      goto LABEL_3;
    }

    return sub_1D33DF2A4();
  }

  sub_1D33DF2A4();
  if (!v4)
  {
    return sub_1D33DF2A4();
  }

LABEL_3:
  sub_1D33DF2A4();

  return sub_1D33DE824();
}

uint64_t sub_1D3394660()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 16);
  v4 = v0[3];
  v5 = v0[4];
  sub_1D33DF284();
  sub_1D33DEC84();
  if (v3 != 1)
  {
    sub_1D33DF2A4();
    MEMORY[0x1D38B7940](v1);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1D33DF2A4();
    return sub_1D33DF2C4();
  }

  sub_1D33DF2A4();
  if (!v5)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1D33DF2A4();
  sub_1D33DE824();
  return sub_1D33DF2C4();
}

uint64_t Participant.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D33DDDB4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Participant.identifier.setter(uint64_t a1)
{
  v3 = sub_1D33DDDB4();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

id Participant.remoteIdentifiers.getter@<X0>(void *a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for Participant() + 20);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;

  return sub_1D33959A8(v4);
}

__n128 Participant.remoteIdentifiers.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = v1 + *(type metadata accessor for Participant() + 20);
  v5 = *(v4 + 8);
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(v4 + 32);
  sub_1D33959EC(*v4);
  result = *a1;
  v10 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 16) = v10;
  *(v4 + 32) = v3;
  return result;
}

uint64_t Participant.nickname.getter()
{
  v1 = (v0 + *(type metadata accessor for Participant() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t Participant.nickname.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Participant() + 24));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Participant.associatedParticipants.getter()
{
  v1 = *(v0 + *(type metadata accessor for Participant() + 28));
}

uint64_t Participant.associatedParticipants.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Participant() + 28);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

void *Participant.unverifiedAssociatedHandle.getter()
{
  v1 = *(v0 + *(type metadata accessor for Participant() + 32));
  v2 = v1;
  return v1;
}

void Participant.unverifiedAssociatedHandle.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Participant() + 32);

  *(v1 + v3) = a1;
}

uint64_t Participant.idsIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for Participant() + 20));
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t Participant.debugDescription.getter()
{
  sub_1D33DEF24();
  MEMORY[0x1D38B6ED0](0xD000000000000014, 0x80000001D33E70E0);
  v1 = (v0 + *(type metadata accessor for Participant() + 20));
  if (*v1)
  {
    v2 = 0x65736C6166;
  }

  else
  {
    v2 = 1702195828;
  }

  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  else
  {
    v3 = 0xE400000000000000;
  }

  MEMORY[0x1D38B6ED0](v2, v3);

  MEMORY[0x1D38B6ED0](0xD000000000000014, 0x80000001D33E7100);
  v4 = *v1;
  if (*v1)
  {
    v11 = *v1;
    v12 = v1[1];
    v13 = v1[2] & 1;
    v14 = v1[3];
    v15 = v1[4];

    v5 = v4;
    v6 = sub_1D33DE804();
    v8 = v7;
  }

  else
  {
    v8 = 0xE300000000000000;
    v6 = 7104878;
  }

  MEMORY[0x1D38B6ED0](v6, v8);

  MEMORY[0x1D38B6ED0](0x746E656469202C29, 0xEE003D7265696669);
  sub_1D33DDDB4();
  sub_1D3395CD8(&qword_1EC761A00, MEMORY[0x1E69695A8]);
  v9 = sub_1D33DF174();
  MEMORY[0x1D38B6ED0](v9);

  MEMORY[0x1D38B6ED0](41, 0xE100000000000000);
  return 0;
}

id sub_1D3394DB0(SEL *a1)
{
  v3 = *(v1 + *(type metadata accessor for Participant() + 20));
  if (!v3)
  {
    return 0;
  }

  v4 = [v3 value];
  if (!v4)
  {
    sub_1D33DE7B4();
    v4 = sub_1D33DE784();
  }

  v5 = [v4 *a1];

  return v5;
}

__n128 Participant.contactDetails.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Participant();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D33DDBC4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v2 + *(v4 + 20));
  if (!v13)
  {
    goto LABEL_9;
  }

  v14 = v13;
  v15 = [v14 siriDisplayName];
  if (!v15)
  {

LABEL_9:
    sub_1D33879C0(v2, v7);
    v31 = *(v2 + *(v4 + 36));

    sub_1D3385F00(v7, v36);

    sub_1D3387A88(v7);
    v32 = v36[1];
    result = v36[2];
    v33 = v37;
    *a1 = v36[0];
    *(a1 + 16) = v32;
    *(a1 + 32) = result;
    *(a1 + 48) = v33;
    return result;
  }

  v16 = v15;
  v35 = sub_1D33DE7B4();
  v18 = v17;

  if (([v14 shouldHideContact] & 1) == 0)
  {

    goto LABEL_9;
  }

  v19 = MEMORY[0x1D38B7A70]();
  sub_1D33DDBB4();
  sub_1D33DDB84();
  sub_1D33DDB94();
  if (qword_1EDEC0130 != -1)
  {
    swift_once();
  }

  v20 = qword_1EDEC1498;
  v21 = sub_1D33DDBA4();
  v22 = [v20 stringFromPersonNameComponents_];

  v23 = sub_1D33DE7B4();
  v25 = v24;

  (*(v9 + 8))(v12, v8);
  objc_autoreleasePoolPop(v19);
  *&v36[0] = v23;
  *(&v36[0] + 1) = v25;
  sub_1D3328AF4();
  v26 = sub_1D33DED14();
  v28 = v27;

  v29 = v35;
  *a1 = 0;
  *(a1 + 8) = v29;
  *(a1 + 16) = v18;
  *(a1 + 24) = v29;
  *(a1 + 32) = v18;
  *(a1 + 40) = v26;
  *(a1 + 48) = v28;

  return result;
}

__n128 Participant.init(identifier:remoteIdentifiers:nickname:cache:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = *(a2 + 32);
  v13 = type metadata accessor for Participant();
  v14 = a6 + v13[5];
  *(v14 + 32) = 0;
  *v14 = 0u;
  *(v14 + 16) = 0u;
  v15 = (a6 + v13[6]);
  *(a6 + v13[7]) = MEMORY[0x1E69E7CD0];
  *(a6 + v13[8]) = 0;
  v16 = sub_1D33DDDB4();
  v22 = *(a2 + 16);
  v23 = *a2;
  (*(*(v16 - 8) + 32))(a6, a1, v16);
  v17 = *(v14 + 8);
  v18 = *(v14 + 16);
  v19 = *(v14 + 24);
  v20 = *(v14 + 32);
  sub_1D33959EC(*v14);
  result = v23;
  *v14 = v23;
  *(v14 + 16) = v22;
  *(v14 + 32) = v12;
  *v15 = a3;
  v15[1] = a4;
  *(a6 + v13[9]) = a5;
  return result;
}

uint64_t Participant.name.getter()
{
  Participant.contactDetails.getter(v5);
  v1 = v5[0];
  v0 = v5[1];
  v2 = v5[2];

  v3 = sub_1D33952B0(v0, v2);

  return v3;
}

uint64_t sub_1D33952B0(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7617D8, &unk_1D33E31D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v20 - v7;
  v9 = type metadata accessor for Participant();
  sub_1D335DE34(*(v2 + *(v9 + 28)), v8);
  v10 = (*(*(v9 - 8) + 48))(v8, 1, v9);
  sub_1D3387BA8(v8);
  if (*(v2 + *(v9 + 24) + 8))
  {
    v11 = v10 == 1;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    type metadata accessor for BundleClass();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v13 = [objc_opt_self() bundleForClass_];
    sub_1D33DDB74();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7617C8, &unk_1D33E3B50);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1D33E2410;
    v20[0] = a1;
    v20[1] = a2;

    v15 = MEMORY[0x1E69E6158];
    v16 = sub_1D33DE884();
    v18 = v17;
    *(v14 + 56) = v15;
    *(v14 + 64) = sub_1D3387AE4();
    *(v14 + 32) = v16;
    *(v14 + 40) = v18;
    a1 = sub_1D33DE7D4();
  }

  else
  {
  }

  return a1;
}

uint64_t Participant.shortName.getter()
{
  Participant.contactDetails.getter(v5);
  v0 = v5[0];
  v1 = v5[3];
  v2 = v5[4];

  v3 = sub_1D33952B0(v1, v2);

  return v3;
}

uint64_t static Participant.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_1D33DDD74() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for Participant() + 20);
  return (*(a1 + v4) == 0) ^ (*(a2 + v4) != 0);
}

uint64_t sub_1D33955CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_1D33DDD74())
  {
    return (*(a1 + *(a3 + 20)) == 0) ^ (*(a2 + *(a3 + 20)) != 0);
  }

  else
  {
    return 0;
  }
}

uint64_t Participant.hash(into:)()
{
  sub_1D33DDDB4();
  sub_1D3395CD8(&qword_1EDEBFD38, MEMORY[0x1E69695A8]);

  return sub_1D33DE734();
}

uint64_t Participant.hashValue.getter()
{
  sub_1D33DF284();
  sub_1D33DDDB4();
  sub_1D3395CD8(&qword_1EDEBFD38, MEMORY[0x1E69695A8]);
  sub_1D33DE734();
  return sub_1D33DF2C4();
}

uint64_t sub_1D3395738()
{
  sub_1D33DF284();
  sub_1D33DDDB4();
  sub_1D3395CD8(&qword_1EDEBFD38, MEMORY[0x1E69695A8]);
  sub_1D33DE734();
  return sub_1D33DF2C4();
}

uint64_t sub_1D33957C0()
{
  sub_1D33DDDB4();
  sub_1D3395CD8(&qword_1EDEBFD38, MEMORY[0x1E69695A8]);

  return sub_1D33DE734();
}

uint64_t sub_1D3395844()
{
  sub_1D33DF284();
  sub_1D33DDDB4();
  sub_1D3395CD8(&qword_1EDEBFD38, MEMORY[0x1E69695A8]);
  sub_1D33DE734();
  return sub_1D33DF2C4();
}

BOOL _s16CallsAppServices11ParticipantV17RemoteIdentifiersV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = a1[3];
  v6 = a1[4];
  v7 = *a2;
  v8 = a2[1];
  v9 = *(a2 + 16);
  v11 = a2[3];
  v10 = a2[4];
  sub_1D331DA18(0, &qword_1EDEBEE70, 0x1E69E58C0);
  if ((sub_1D33DEC74() & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (v3 == v8)
    {
      v12 = v9;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      return 0;
    }
  }

  if (v6)
  {
    return v10 && (v5 == v11 && v6 == v10 || (sub_1D33DF1B4() & 1) != 0);
  }

  return !v10;
}

id sub_1D33959A8(id result)
{
  if (result)
  {
    v1 = result;

    return v1;
  }

  return result;
}

void *sub_1D33959EC(void *result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1D3395A30()
{
  result = qword_1EC761A08;
  if (!qword_1EC761A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC761A08);
  }

  return result;
}

void sub_1D3395AF4()
{
  sub_1D33DDDB4();
  if (v0 <= 0x3F)
  {
    sub_1D3395BF8(319, &qword_1EC761A28);
    if (v1 <= 0x3F)
    {
      sub_1D3395BF8(319, &qword_1EDEBFD60);
      if (v2 <= 0x3F)
      {
        sub_1D3395C44();
        if (v3 <= 0x3F)
        {
          sub_1D3395D20();
          if (v4 <= 0x3F)
          {
            type metadata accessor for ParticipantContactDetailsCache();
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

void sub_1D3395BF8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1D33DECF4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1D3395C44()
{
  if (!qword_1EC761A30)
  {
    type metadata accessor for Participant();
    sub_1D3395CD8(&qword_1EC761A38, type metadata accessor for Participant);
    v0 = sub_1D33DEAA4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC761A30);
    }
  }
}

uint64_t sub_1D3395CD8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D3395D20()
{
  if (!qword_1EC761A40)
  {
    sub_1D331DA18(255, &unk_1EDEC0120, 0x1E69D8C00);
    v0 = sub_1D33DECF4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC761A40);
    }
  }
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D3395D9C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1D3395DE4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t (*Features.easySharedNameAndPhoto.modify(uint64_t a1))(uint64_t **a1, uint64_t a2)
{
  *a1 = v1;
  *(a1 + 8) = sub_1D3329770(*v1, &type metadata for EasySharedNameAndPhotoKey, sub_1D33297F0) & 1;
  return sub_1D3395F04;
}

uint64_t (*Features.solarium.modify(uint64_t a1))(uint64_t **a1, uint64_t a2)
{
  *a1 = v1;
  *(a1 + 8) = sub_1D3329770(*v1, &type metadata for SolariumKey, sub_1D3399044) & 1;
  return sub_1D3395FEC;
}

uint64_t (*Features.callExperiencePhoneApp.modify(uint64_t a1))(uint64_t **a1, uint64_t a2)
{
  *a1 = v1;
  *(a1 + 8) = sub_1D3329770(*v1, &type metadata for CallExperiencePhoneAppKey, sub_1D33990C0) & 1;
  return sub_1D33960D4;
}

uint64_t sub_1D339611C(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a1;
  v8 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *a2;
  *a2 = 0x8000000000000000;
  sub_1D3398D94(v7, a5, isUniquelyReferenced_nonNull_native);
  v10 = *a2;

  *a2 = v12;
  return result;
}

uint64_t sub_1D339619C(char a1, uint64_t a2)
{
  v5 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  *v2 = 0x8000000000000000;
  sub_1D3398D94(a1, a2, isUniquelyReferenced_nonNull_native);
  v7 = *v2;

  *v2 = v9;
  return result;
}

uint64_t (*Features.nudityDetection.modify(uint64_t a1))(uint64_t **a1, uint64_t a2)
{
  *a1 = v1;
  *(a1 + 8) = sub_1D3329770(*v1, &type metadata for NudityDetectionKey, sub_1D333746C) & 1;
  return sub_1D339627C;
}

uint64_t sub_1D3396288(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = **a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v4;
  *v4 = 0x8000000000000000;
  sub_1D3398D94(v5, a3, isUniquelyReferenced_nonNull_native);
  v8 = *v4;

  *v4 = v10;
  return result;
}

uint64_t static Features.subscript.getter()
{
  if (qword_1EDEBF070 != -1)
  {
    swift_once();
  }

  sub_1D33DF2E4();
  swift_getAtKeyPath();

  return v1;
}

uint64_t static Features.withOverrides<A>(_:do:)(void (*a1)(uint64_t *))
{
  if (qword_1EDEBF070 != -1)
  {
    swift_once();
  }

  sub_1D33DF2E4();
  a1(&v3);
  sub_1D33DF2F4();
}

uint64_t static Features.withOverrides<A>(_:do:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[6] = a3;
  v6[7] = a4;
  v6[4] = a1;
  v6[5] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D33964B8, 0, 0);
}

uint64_t sub_1D33964B8()
{
  if (qword_1EDEBF070 != -1)
  {
    swift_once();
  }

  v2 = v0[5];
  v1 = v0[6];
  sub_1D33DF2E4();
  v2(v0 + 2);
  v0[3] = v0[2];
  v3 = *(MEMORY[0x1E69E8950] + 4);
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_1D33965F8;
  v5 = v0[8];
  v6 = v0[7];
  v7 = v0[4];
  v10 = v0[9];

  return MEMORY[0x1EEE6DE98](v7, v0 + 3, v6, v5, 0, 0, 0xD00000000000001FLL, 0x80000001D33E7150);
}

uint64_t sub_1D33965F8()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v7 = *v1;
  *(v2 + 88) = v0;

  v4 = *(v2 + 24);

  if (v0)
  {
    v5 = sub_1D339672C;
  }

  else
  {
    v5 = sub_1D3396714;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t static Features.with<A>(_:enabled:do:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = a6;
  *(v6 + 24) = a2;
  *(v6 + 32) = a4;
  *(v6 + 80) = a3;
  *(v6 + 16) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D33967B0, 0, 0);
}

uint64_t sub_1D33967B0()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = sub_1D339688C;
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 32);
  v8 = *(v0 + 16);

  return static Features.withOverrides<A>(_:do:)(v8, sub_1D339A77C, v3, v7, v5, v6);
}

uint64_t sub_1D339688C()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D33969C8, 0, 0);
  }

  else
  {
    v4 = v3[7];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_1D33969C8()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_1D3396A2C(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_1D33DE374();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761A58, &unk_1D33E3D80);
  v44 = a2;
  result = sub_1D33DF114();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v40 = v3;
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
    v41 = (v7 + 16);
    v42 = v7;
    v45 = (v7 + 32);
    v21 = result + 64;
    v43 = v11;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v24 = (v19 - 1) & v19;
LABEL_17:
      v27 = v23 | (v15 << 6);
      v46 = v24;
      v28 = *(v7 + 72);
      v29 = *(v11 + 48) + v28 * v27;
      if (v44)
      {
        (*v45)(v47, v29, v6);
      }

      else
      {
        (*v41)(v47, v29, v6);
      }

      v30 = *(*(v11 + 56) + v27);
      v31 = *(v14 + 40);
      sub_1D3399A3C(&qword_1EC7611A8, MEMORY[0x1E696EDC8]);
      result = sub_1D33DE724();
      v32 = -1 << *(v14 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v21 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v21 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v21 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v45)(*(v14 + 48) + v28 * v22, v47, v6);
      *(*(v14 + 56) + v22) = v30;
      ++*(v14 + 16);
      v7 = v42;
      v11 = v43;
      v19 = v46;
    }

    v25 = v15;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v26 = v16[v15];
      ++v25;
      if (v26)
      {
        v23 = __clz(__rbit64(v26));
        v24 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v39 = 1 << *(v11 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v16, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v39;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_1D3396E18(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7613C0, &qword_1D33E2930);
  v40 = a2;
  result = sub_1D33DF114();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_1D33DF284();
      sub_1D33DE824();
      result = sub_1D33DF2C4();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1D33970D8(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_1D33DDDB4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v57 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for RecentsItem(0);
  v64 = *(v10 - 8);
  v11 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v58 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7612B0, qword_1D33E2830);
  v63 = *(v13 - 8);
  v14 = *(v63 + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v62 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v54 - v17;
  v19 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v20 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761440, &unk_1D33E3050);
  v65 = a2;
  result = sub_1D33DF114();
  v22 = result;
  if (*(v19 + 16))
  {
    v61 = v6;
    v54 = v3;
    v23 = 0;
    v24 = (v19 + 64);
    v25 = 1 << *(v19 + 32);
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    else
    {
      v26 = -1;
    }

    v27 = v26 & *(v19 + 64);
    v28 = (v25 + 63) >> 6;
    v60 = (v7 + 48);
    v56 = (v7 + 32);
    v55 = (v7 + 8);
    v29 = result + 64;
    v30 = v58;
    v59 = v19;
    while (v27)
    {
      v32 = __clz(__rbit64(v27));
      v27 &= v27 - 1;
LABEL_17:
      v35 = v32 | (v23 << 6);
      v36 = *(v19 + 48);
      v67 = *(v63 + 72);
      v37 = v36 + v67 * v35;
      if (v65)
      {
        sub_1D332FEC4(v37, v18);
        v38 = *(v19 + 56);
        v66 = *(v64 + 72);
        sub_1D33290D8(v38 + v66 * v35, v30, type metadata accessor for RecentsItem);
      }

      else
      {
        sub_1D33383BC(v37, v18);
        v39 = *(v19 + 56);
        v66 = *(v64 + 72);
        sub_1D332CE34(v39 + v66 * v35, v30, type metadata accessor for RecentsItem);
      }

      v40 = *(v22 + 40);
      sub_1D33DF284();
      v41 = v18;
      v42 = v62;
      sub_1D33383BC(v18, v62);
      v43 = v61;
      if ((*v60)(v42, 1, v61) == 1)
      {
        sub_1D33DF2A4();
      }

      else
      {
        v44 = v57;
        (*v56)(v57, v42, v43);
        sub_1D33DF2A4();
        sub_1D3399A3C(&qword_1EDEBFD38, MEMORY[0x1E69695A8]);
        sub_1D33DE734();
        v45 = v44;
        v30 = v58;
        (*v55)(v45, v43);
      }

      result = sub_1D33DF2C4();
      v46 = -1 << *(v22 + 32);
      v47 = result & ~v46;
      v48 = v47 >> 6;
      v18 = v41;
      if (((-1 << v47) & ~*(v29 + 8 * (v47 >> 6))) == 0)
      {
        v49 = 0;
        v50 = (63 - v46) >> 6;
        while (++v48 != v50 || (v49 & 1) == 0)
        {
          v51 = v48 == v50;
          if (v48 == v50)
          {
            v48 = 0;
          }

          v49 |= v51;
          v52 = *(v29 + 8 * v48);
          if (v52 != -1)
          {
            v31 = __clz(__rbit64(~v52)) + (v48 << 6);
            goto LABEL_9;
          }
        }

LABEL_41:
        __break(1u);
        return result;
      }

      v31 = __clz(__rbit64((-1 << v47) & ~*(v29 + 8 * (v47 >> 6)))) | v47 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v29 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
      sub_1D332FEC4(v41, *(v22 + 48) + v67 * v31);
      result = sub_1D33290D8(v30, *(v22 + 56) + v66 * v31, type metadata accessor for RecentsItem);
      ++*(v22 + 16);
      v19 = v59;
    }

    v33 = v23;
    while (1)
    {
      v23 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        __break(1u);
        goto LABEL_41;
      }

      if (v23 >= v28)
      {
        break;
      }

      v34 = v24[v23];
      ++v33;
      if (v34)
      {
        v32 = __clz(__rbit64(v34));
        v27 = (v34 - 1) & v34;
        goto LABEL_17;
      }
    }

    if ((v65 & 1) == 0)
    {

      v3 = v54;
      goto LABEL_39;
    }

    v53 = 1 << *(v19 + 32);
    v3 = v54;
    if (v53 >= 64)
    {
      bzero(v24, ((v53 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v24 = -1 << v53;
    }

    *(v19 + 16) = 0;
  }

LABEL_39:
  *v3 = v22;
  return result;
}

uint64_t sub_1D33976B0(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_1D33DDDB4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761428, &unk_1D33E2980);
  v43 = a2;
  result = sub_1D33DF114();
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
      sub_1D3399A3C(&qword_1EDEBFD38, MEMORY[0x1E69695A8]);
      result = sub_1D33DE724();
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

uint64_t sub_1D3397AB8(uint64_t a1, int a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void))
{
  v62 = a6;
  v9 = v6;
  v12 = a3(0);
  v55 = *(v12 - 8);
  v13 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v61 = &v51 - v14;
  v15 = sub_1D33DDDB4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v57 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *v9;
  if (*(*v9 + 24) > a1)
  {
    v20 = *(*v9 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v56 = a2;
  v21 = v19;
  result = sub_1D33DF114();
  v23 = result;
  if (*(v19 + 16))
  {
    v60 = v15;
    v24 = 0;
    v25 = (v19 + 64);
    v26 = 1 << *(v19 + 32);
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    else
    {
      v27 = -1;
    }

    v28 = v27 & *(v19 + 64);
    v29 = (v26 + 63) >> 6;
    v51 = v9;
    v52 = (v16 + 16);
    v53 = v19;
    v54 = v16;
    v58 = (v16 + 32);
    v30 = result + 64;
    v31 = v57;
    while (v28)
    {
      v33 = __clz(__rbit64(v28));
      v28 &= v28 - 1;
LABEL_17:
      v36 = v33 | (v24 << 6);
      v37 = *(v21 + 48);
      v59 = *(v54 + 72);
      v38 = v37 + v59 * v36;
      if (v56)
      {
        (*v58)(v31, v38, v60);
        v39 = *(v21 + 56);
        v40 = *(v55 + 72);
        sub_1D33290D8(v39 + v40 * v36, v61, v62);
      }

      else
      {
        (*v52)(v31, v38, v60);
        v41 = *(v21 + 56);
        v40 = *(v55 + 72);
        sub_1D332CE34(v41 + v40 * v36, v61, v62);
      }

      v42 = *(v23 + 40);
      sub_1D3399A3C(&qword_1EDEBFD38, MEMORY[0x1E69695A8]);
      result = sub_1D33DE724();
      v43 = -1 << *(v23 + 32);
      v44 = result & ~v43;
      v45 = v44 >> 6;
      if (((-1 << v44) & ~*(v30 + 8 * (v44 >> 6))) == 0)
      {
        v46 = 0;
        v47 = (63 - v43) >> 6;
        v31 = v57;
        while (++v45 != v47 || (v46 & 1) == 0)
        {
          v48 = v45 == v47;
          if (v45 == v47)
          {
            v45 = 0;
          }

          v46 |= v48;
          v49 = *(v30 + 8 * v45);
          if (v49 != -1)
          {
            v32 = __clz(__rbit64(~v49)) + (v45 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v32 = __clz(__rbit64((-1 << v44) & ~*(v30 + 8 * (v44 >> 6)))) | v44 & 0x7FFFFFFFFFFFFFC0;
      v31 = v57;
LABEL_9:
      *(v30 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
      (*v58)((*(v23 + 48) + v59 * v32), v31, v60);
      result = sub_1D33290D8(v61, *(v23 + 56) + v40 * v32, v62);
      ++*(v23 + 16);
      v21 = v53;
    }

    v34 = v24;
    while (1)
    {
      v24 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v24 >= v29)
      {
        break;
      }

      v35 = v25[v24];
      ++v34;
      if (v35)
      {
        v33 = __clz(__rbit64(v35));
        v28 = (v35 - 1) & v35;
        goto LABEL_17;
      }
    }

    if ((v56 & 1) == 0)
    {

      v9 = v51;
      goto LABEL_36;
    }

    v50 = 1 << *(v21 + 32);
    v9 = v51;
    if (v50 >= 64)
    {
      bzero(v25, ((v50 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v25 = -1 << v50;
    }

    *(v21 + 16) = 0;
  }

LABEL_36:
  *v9 = v23;
  return result;
}

uint64_t sub_1D3397F2C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7613F0, &qword_1D33E5430);
  result = sub_1D33DF114();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = v20 | (v9 << 6);
      v24 = *(v5 + 48) + 40 * v23;
      if (a2)
      {
        v25 = *v24;
        v26 = *(v24 + 16);
        v40 = *(v24 + 32);
        v38 = v25;
        v39 = v26;
        sub_1D334CCF4((*(v5 + 56) + 32 * v23), v37);
      }

      else
      {
        sub_1D334CD04(v24, &v38);
        sub_1D3328D20(*(v5 + 56) + 32 * v23, v37);
      }

      v27 = *(v8 + 40);
      result = sub_1D33DEE94();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 40 * v16;
      v18 = v38;
      v19 = v39;
      *(v17 + 32) = v40;
      *v17 = v18;
      *(v17 + 16) = v19;
      result = sub_1D334CCF4(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v35 = 1 << *(v5 + 32);
      if (v35 >= 64)
      {
        bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v35;
      }

      *(v5 + 16) = 0;
    }

    v3 = v36;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_1D33981E4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761418, &qword_1D33E2970);
  result = sub_1D33DF114();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = a2;
    v33 = v3;
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
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + v20);
      v23 = *(v8 + 40);
      result = sub_1D33DF274();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if (v32)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_1D3398448(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761410, &qword_1D33E2968);
  v38 = a2;
  result = sub_1D33DF114();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
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
      v25 = *(*(v5 + 56) + 4 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_1D33DF284();
      sub_1D33DE824();
      result = sub_1D33DF2C4();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 4 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
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

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1D33986E8(char a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1D33DE374();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_1D33B9198(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  result = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= result && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *v4;
    if (v19)
    {
LABEL_8:
      *(v21[7] + v15) = a1 & 1;
      return result;
    }

    goto LABEL_11;
  }

  if (v20 >= result && (a3 & 1) == 0)
  {
    result = sub_1D33994C4();
    goto LABEL_7;
  }

  sub_1D3396A2C(result, a3 & 1);
  v22 = *v4;
  result = sub_1D33B9198(a2);
  if ((v19 & 1) != (v23 & 1))
  {
LABEL_14:
    result = sub_1D33DF1E4();
    __break(1u);
    return result;
  }

  v15 = result;
  v21 = *v4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v12, a2, v8);
  return sub_1D33992A0(v15, v12, a1 & 1, v21);
}

uint64_t sub_1D3398888(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1D33DDDB4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_1D33B926C(a2);
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
      sub_1D339A00C(type metadata accessor for RecentsItem, &qword_1EC7613E8, &unk_1D33E2940, type metadata accessor for RecentsItem);
      goto LABEL_7;
    }

    sub_1D3397AB8(v18, a3 & 1, type metadata accessor for RecentsItem, &qword_1EC7613E8, &unk_1D33E2940, type metadata accessor for RecentsItem);
    v25 = *v4;
    v26 = sub_1D33B926C(a2);
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
      return sub_1D3399358(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_1D33DF1E4();
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
  v23 = v22 + *(*(type metadata accessor for RecentsItem(0) - 8) + 72) * v15;

  return sub_1D334C7C4(a1, v23);
}

uint64_t sub_1D3398AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1D33378A8(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_1D3396E18(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_1D33378A8(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = sub_1D33DF1E4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_1D33998C4();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v28 = (v24[6] + 16 * v13);
  *v28 = a3;
  v28[1] = a4;
  v29 = (v24[7] + 16 * v13);
  *v29 = a1;
  v29[1] = a2;
  v30 = v24[2];
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v31;
}

_OWORD *sub_1D3398C48(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1D33B95A0(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1D339A324();
      goto LABEL_7;
    }

    sub_1D3397F2C(v13, a3 & 1);
    v19 = *v4;
    v20 = sub_1D33B95A0(a2);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1D334CD04(a2, v22);
      return sub_1D3399448(v10, v22, a1, v16);
    }

LABEL_15:
    result = sub_1D33DF1E4();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  __swift_destroy_boxed_opaque_existential_1Tm(v17);

  return sub_1D334CCF4(a1, v17);
}

unint64_t sub_1D3398D94(char a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1D33B95E4(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_1D339A4C8();
    result = v17;
    goto LABEL_8;
  }

  sub_1D33981E4(v14, a3 & 1);
  v18 = *v4;
  result = sub_1D33B95E4(a2);
  if ((v15 & 1) == (v19 & 1))
  {
LABEL_8:
    v20 = *v4;
    if (v15)
    {
      *(v20[7] + result) = a1 & 1;
      return result;
    }

    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + 8 * result) = a2;
    *(v20[7] + result) = a1 & 1;
    v21 = v20[2];
    v13 = __OFADD__(v21, 1);
    v22 = v21 + 1;
    if (!v13)
    {
      v20[2] = v22;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_1D33DF1E4();
  __break(1u);
  return result;
}

uint64_t sub_1D3398EC4()
{
  v1 = *(v0 + 16);
  v3 = *(v0 + 24);
  return swift_setAtWritableKeyPath();
}

uint64_t sub_1D3398F30(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_1D3398F78(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D3398FF4(uint64_t a1)
{
  result = sub_1D33297F0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D339901C(uint64_t a1)
{
  result = sub_1D3399044();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D3399044()
{
  result = qword_1EC761A48;
  if (!qword_1EC761A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC761A48);
  }

  return result;
}

unint64_t sub_1D3399098(uint64_t a1)
{
  result = sub_1D33990C0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D33990C0()
{
  result = qword_1EC761A50;
  if (!qword_1EC761A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC761A50);
  }

  return result;
}

unint64_t sub_1D3399114(uint64_t a1)
{
  result = sub_1D333746C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D339913C(int a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1D33378A8(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1D3398448(v16, a4 & 1);
      v20 = *v5;
      result = sub_1D33378A8(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = sub_1D33DF1E4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_1D339A614();
      result = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    *(v22[7] + 4 * result) = a1;
    return result;
  }

  v22[(result >> 6) + 8] |= 1 << result;
  v23 = (v22[6] + 16 * result);
  *v23 = a2;
  v23[1] = a3;
  *(v22[7] + 4 * result) = a1;
  v24 = v22[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v22[2] = v25;
}

uint64_t sub_1D33992A0(unint64_t a1, uint64_t a2, char a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1D33DE374();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + a1) = a3;
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

uint64_t sub_1D3399358(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1D33DDDB4();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for RecentsItem(0);
  result = sub_1D33290D8(a3, v10 + *(*(v11 - 8) + 72) * a1, type metadata accessor for RecentsItem);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

_OWORD *sub_1D3399448(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_1D334CCF4(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

char *sub_1D33994C4()
{
  v1 = v0;
  v32 = sub_1D33DE374();
  v34 = *(v32 - 8);
  v2 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v31 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761A58, &unk_1D33E3D80);
  v4 = *v0;
  v5 = sub_1D33DF104();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v33 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v29 = v34 + 32;
    v30 = v34 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v34;
        v21 = *(v34 + 72) * v19;
        v23 = v31;
        v22 = v32;
        (*(v34 + 16))(v31, *(v4 + 48) + v21, v32);
        v24 = *(*(v4 + 56) + v19);
        v25 = v33;
        result = (*(v20 + 32))(*(v33 + 48) + v21, v23, v22);
        *(*(v25 + 56) + v19) = v24;
        v14 = v35;
      }

      while (v35);
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

        v1 = v27;
        v6 = v33;
        goto LABEL_18;
      }

      v18 = *(v28 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
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

id sub_1D3399760()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761468, &unk_1D33E29A0);
  v2 = *v0;
  v3 = sub_1D33DF104();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        v19 = *(*(v2 + 48) + 16 * v17);
        *(*(v4 + 48) + 16 * v17) = v19;
        *(*(v4 + 56) + 8 * v17) = v18;
        result = *(&v19 + 1);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1D33998C4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7613C0, &qword_1D33E2930);
  v2 = *v0;
  v3 = sub_1D33DF104();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1D3399A3C(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_1D3399A84()
{
  v1 = v0;
  v2 = type metadata accessor for RecentsItem(0);
  v38 = *(v2 - 8);
  v3 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v37 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7612B0, qword_1D33E2830);
  v36 = *(v5 - 8);
  v6 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v35 = &v32 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761440, &unk_1D33E3050);
  v8 = *v0;
  v9 = sub_1D33DF104();
  v10 = v9;
  if (*(v8 + 16))
  {
    v33 = v1;
    result = (v9 + 64);
    v12 = v8 + 64;
    v13 = ((1 << *(v10 + 32)) + 63) >> 6;
    if (v10 != v8 || result >= v12 + 8 * v13)
    {
      result = memmove(result, (v8 + 64), 8 * v13);
    }

    v14 = 0;
    v15 = *(v8 + 16);
    v39 = v10;
    *(v10 + 16) = v15;
    v16 = 1 << *(v8 + 32);
    v17 = *(v8 + 64);
    v18 = -1;
    if (v16 < 64)
    {
      v18 = ~(-1 << v16);
    }

    v19 = v18 & v17;
    v20 = (v16 + 63) >> 6;
    v34 = v8;
    if ((v18 & v17) != 0)
    {
      do
      {
        v21 = __clz(__rbit64(v19));
        v19 &= v19 - 1;
LABEL_14:
        v24 = v21 | (v14 << 6);
        v25 = v35;
        v26 = *(v36 + 72) * v24;
        sub_1D33383BC(*(v8 + 48) + v26, v35);
        v27 = *(v8 + 56);
        v28 = v37;
        v29 = *(v38 + 72) * v24;
        sub_1D332CE34(v27 + v29, v37, type metadata accessor for RecentsItem);
        v30 = v39;
        sub_1D332FEC4(v25, *(v39 + 48) + v26);
        v31 = *(v30 + 56) + v29;
        v8 = v34;
        result = sub_1D33290D8(v28, v31, type metadata accessor for RecentsItem);
      }

      while (v19);
    }

    v22 = v14;
    v10 = v39;
    while (1)
    {
      v14 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v14 >= v20)
      {

        v1 = v33;
        goto LABEL_18;
      }

      v23 = *(v12 + 8 * v14);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v19 = (v23 - 1) & v23;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v10;
  }

  return result;
}

char *sub_1D3399D60()
{
  v1 = v0;
  v34 = sub_1D33DDDB4();
  v36 = *(v34 - 8);
  v2 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761428, &unk_1D33E2980);
  v4 = *v0;
  v5 = sub_1D33DF104();
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

char *sub_1D339A00C(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v49 = a4;
  v7 = v4;
  v8 = a1(0);
  v48 = *(v8 - 8);
  v9 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v47 = &v39 - v10;
  v46 = sub_1D33DDDB4();
  v51 = *(v46 - 8);
  v11 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v45 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v13 = *v4;
  v14 = sub_1D33DF104();
  v15 = v14;
  if (*(v13 + 16))
  {
    result = (v14 + 64);
    v17 = (v13 + 64);
    v18 = ((1 << *(v15 + 32)) + 63) >> 6;
    v40 = v7;
    v41 = v13 + 64;
    if (v15 != v13 || result >= &v17[8 * v18])
    {
      result = memmove(result, v17, 8 * v18);
    }

    v19 = 0;
    v20 = *(v13 + 16);
    v50 = v15;
    *(v15 + 16) = v20;
    v21 = 1 << *(v13 + 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v23 = v22 & *(v13 + 64);
    v24 = (v21 + 63) >> 6;
    v25 = v50;
    v42 = v51 + 32;
    v43 = v51 + 16;
    v44 = v13;
    v26 = v51;
    v27 = v49;
    if (v23)
    {
      do
      {
        v28 = __clz(__rbit64(v23));
        v52 = (v23 - 1) & v23;
LABEL_14:
        v31 = v28 | (v19 << 6);
        v32 = *(v26 + 72) * v31;
        v34 = v45;
        v33 = v46;
        (*(v26 + 16))(v45, *(v13 + 48) + v32, v46);
        v35 = *(v13 + 56);
        v36 = v47;
        v37 = *(v48 + 72) * v31;
        sub_1D332CE34(v35 + v37, v47, v27);
        (*(v26 + 32))(*(v25 + 48) + v32, v34, v33);
        v38 = v36;
        v13 = v44;
        result = sub_1D33290D8(v38, *(v25 + 56) + v37, v27);
        v23 = v52;
      }

      while (v52);
    }

    v29 = v19;
    while (1)
    {
      v19 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v19 >= v24)
      {

        v7 = v40;
        v15 = v50;
        goto LABEL_18;
      }

      v30 = *(v41 + 8 * v19);
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        v52 = (v30 - 1) & v30;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v7 = v15;
  }

  return result;
}

void *sub_1D339A324()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7613F0, &qword_1D33E5430);
  v2 = *v0;
  v3 = sub_1D33DF104();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 40 * v17;
        sub_1D334CD04(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_1D3328D20(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_1D334CCF4(v22, (*(v4 + 56) + v17));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1D339A4C8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761418, &qword_1D33E2970);
  v2 = *v0;
  v3 = sub_1D33DF104();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1D339A614()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761410, &qword_1D33E2968);
  v2 = *v0;
  v3 = sub_1D33DF104();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        LODWORD(v18) = *(*(v2 + 56) + 4 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + 4 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void sub_1D339A780(uint64_t a1)
{
  v1 = a1;
  v35 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_1D33DEE14();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v42 = MEMORY[0x1E69E7CC0];
    sub_1D334A9E0(0, v2 & ~(v2 >> 63), 0);
    v37 = v42;
    if (v35)
    {
      v3 = sub_1D33DEDB4();
    }

    else
    {
      v5 = -1 << *(v1 + 32);
      v3 = sub_1D33DED74();
      v4 = *(v1 + 36);
    }

    v39 = v3;
    v40 = v4;
    v41 = v35 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v33 = v1 + 56;
      v32 = v1 + 64;
      v34 = v2;
      while (v6 < v2)
      {
        if (__OFADD__(v6++, 1))
        {
          goto LABEL_35;
        }

        v9 = v39;
        v10 = v41;
        v36 = v40;
        v11 = v1;
        sub_1D33D3784(v39, v40, v41, v1);
        v13 = v12;
        v14 = [v12 value];
        v15 = sub_1D33DE7B4();
        v17 = v16;

        v18 = v37;
        v42 = v37;
        v20 = *(v37 + 16);
        v19 = *(v37 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_1D334A9E0((v19 > 1), v20 + 1, 1);
          v18 = v42;
        }

        *(v18 + 16) = v20 + 1;
        v21 = v18 + 16 * v20;
        *(v21 + 32) = v15;
        *(v21 + 40) = v17;
        v37 = v18;
        if (v35)
        {
          if (!v10)
          {
            goto LABEL_40;
          }

          v1 = v11;
          if (sub_1D33DEDD4())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v34;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761A80, &unk_1D33E3F60);
          v7 = sub_1D33DEA84();
          sub_1D33DEE84();
          v7(v38, 0);
          if (v6 == v34)
          {
LABEL_32:
            sub_1D335665C(v39, v40, v41);
            return;
          }
        }

        else
        {
          if (v10)
          {
            goto LABEL_41;
          }

          if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v1 = v11;
          v22 = 1 << *(v11 + 32);
          if (v9 >= v22)
          {
            goto LABEL_36;
          }

          v23 = v9 >> 6;
          v24 = *(v33 + 8 * (v9 >> 6));
          if (((v24 >> v9) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v11 + 36) != v36)
          {
            goto LABEL_38;
          }

          v25 = v24 & (-2 << (v9 & 0x3F));
          if (v25)
          {
            v22 = __clz(__rbit64(v25)) | v9 & 0x7FFFFFFFFFFFFFC0;
            v2 = v34;
          }

          else
          {
            v26 = v23 << 6;
            v27 = v23 + 1;
            v28 = (v32 + 8 * v23);
            v2 = v34;
            while (v27 < (v22 + 63) >> 6)
            {
              v30 = *v28++;
              v29 = v30;
              v26 += 64;
              ++v27;
              if (v30)
              {
                sub_1D335665C(v9, v36, 0);
                v22 = __clz(__rbit64(v29)) + v26;
                goto LABEL_31;
              }
            }

            sub_1D335665C(v9, v36, 0);
          }

LABEL_31:
          v31 = *(v11 + 36);
          v39 = v22;
          v40 = v31;
          v41 = 0;
          if (v6 == v2)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

uint64_t sub_1D339AAE8(uint64_t a1)
{
  v26 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_1D33DEE14();
    result = MEMORY[0x1E69E7CC0];
    if (!v2)
    {
      return result;
    }

    v31 = MEMORY[0x1E69E7CC0];
    sub_1D33DEFA4();
    result = sub_1D33DEDB4();
    v28 = result;
    v29 = v4;
    v30 = 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return result;
  }

  v31 = MEMORY[0x1E69E7CC0];
  sub_1D33DEFA4();
  v5 = -1 << *(a1 + 32);
  result = sub_1D33DED74();
  v6 = *(a1 + 36);
  v28 = result;
  v29 = v6;
  v30 = 0;
LABEL_7:
  v7 = 0;
  while (v7 < v2)
  {
    if (__OFADD__(v7++, 1))
    {
      goto LABEL_31;
    }

    v11 = v28;
    v10 = v29;
    v12 = v30;
    sub_1D33D37AC(v28, v29, v30, a1);
    v14 = v13;
    v15 = [v13 handle];

    sub_1D33DEF84();
    v16 = *(v31 + 16);
    sub_1D33DEFB4();
    sub_1D33DEFC4();
    result = sub_1D33DEF94();
    if (v26)
    {
      if (!v12)
      {
        goto LABEL_35;
      }

      if (sub_1D33DEDD4())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC761E50, &qword_1D33E3F58);
      v8 = sub_1D33DEA84();
      sub_1D33DEE84();
      result = v8(v27, 0);
      if (v7 == v2)
      {
LABEL_28:
        sub_1D335665C(v28, v29, v30);
        return v31;
      }
    }

    else
    {
      if (v12)
      {
        goto LABEL_36;
      }

      if ((v11 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      v17 = 1 << *(a1 + 32);
      if (v11 >= v17)
      {
        goto LABEL_32;
      }

      v18 = v11 >> 6;
      v19 = *(a1 + 56 + 8 * (v11 >> 6));
      if (((v19 >> v11) & 1) == 0)
      {
        goto LABEL_33;
      }

      if (*(a1 + 36) != v10)
      {
        goto LABEL_34;
      }

      v20 = v19 & (-2 << (v11 & 0x3F));
      if (v20)
      {
        v17 = __clz(__rbit64(v20)) | v11 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = v18 << 6;
        v22 = v18 + 1;
        v23 = (a1 + 64 + 8 * v18);
        while (v22 < (v17 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            result = sub_1D335665C(v11, v10, 0);
            v17 = __clz(__rbit64(v24)) + v21;
            goto LABEL_27;
          }
        }

        result = sub_1D335665C(v11, v10, 0);
      }

LABEL_27:
      v28 = v17;
      v29 = v10;
      v30 = 0;
      if (v7 == v2)
      {
        goto LABEL_28;
      }
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

void sub_1D339AE00(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1D33DDC44();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  v11 = v2[1];
  v12 = v2[2];
  v13 = [a1 url];
  sub_1D33DDC24();

  v14 = sub_1D33DDC04();
  v15 = [objc_opt_self() conversationLinkForURL_];

  (*(v6 + 8))(v9, v5);
  if (!v15)
  {
    *a2 = v10;
    a2[1] = v11;
    a2[2] = v12;

    v22 = v11;
LABEL_8:

    return;
  }

  v16 = v11;
  if (![v16 isEquivalentToConversationLink_])
  {

    *a2 = v10;
    a2[1] = v16;
    a2[2] = v12;

    v23 = v16;
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7617C0, &unk_1D33E2270);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D33E1DE0;
  *(inited + 32) = a1;

  v18 = a1;
  v19 = sub_1D33A116C(inited, v12);
  swift_setDeallocating();
  v20 = *(inited + 16);
  swift_arrayDestroy();
  if (qword_1EDEC0138 != -1)
  {
    swift_once();
  }

  v21 = qword_1EDEC0110;

  *a2 = v21;
  a2[1] = v16;
  a2[2] = v19;
}

void *sub_1D339B060(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D33DEE14())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1D38B75D0](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

CallsAppServices::LinkSource_optional __swiftcall LinkSource.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D33DF144();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t LinkSource.rawValue.getter()
{
  v1 = 0x64657469766E69;
  if (*v0 != 1)
  {
    v1 = 0x6574736576726168;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x43796C6C61636F6CLL;
  }
}

uint64_t sub_1D339B23C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x64657469766E69;
  if (v2 != 1)
  {
    v4 = 0x6574736576726168;
    v3 = 0xE900000000000064;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x43796C6C61636F6CLL;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xEE00646574616572;
  }

  v7 = 0xE700000000000000;
  v8 = 0x64657469766E69;
  if (*a2 != 1)
  {
    v8 = 0x6574736576726168;
    v7 = 0xE900000000000064;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x43796C6C61636F6CLL;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xEE00646574616572;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D33DF1B4();
  }

  return v11 & 1;
}

void sub_1D339B35C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE00646574616572;
  v4 = 0xE700000000000000;
  v5 = 0x64657469766E69;
  if (v2 != 1)
  {
    v5 = 0x6574736576726168;
    v4 = 0xE900000000000064;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x43796C6C61636F6CLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1D339B3CC()
{
  v1 = *v0;
  sub_1D33DF284();
  sub_1D33DE824();

  return sub_1D33DF2C4();
}

uint64_t sub_1D339B480()
{
  *v0;
  *v0;
  sub_1D33DE824();
}

uint64_t sub_1D339B520()
{
  v1 = *v0;
  sub_1D33DF284();
  sub_1D33DE824();

  return sub_1D33DF2C4();
}

uint64_t ConversationLink.prevailingSuggestion.getter()
{
  v1 = 0;
  v74[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1D33DDD34();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D33DDC44();
  v8 = *(v7 - 8);
  v9 = v8[8];
  MEMORY[0x1EEE9AC00](v7);
  v11 = v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v0 + 16);
  if ((v12 & 0xC000000000000001) == 0)
  {
    if (!*(v12 + 16))
    {
      goto LABEL_40;
    }

    v66 = v2;
    v35 = *(v12 + 32);
    v36 = v35 & 0x3F;
    v18 = ((1 << v35) + 63) >> 6;
    v24 = (8 * v18);

    v70 = v6;
    v71 = v3;
    if (v36 > 0xD)
    {
      goto LABEL_59;
    }

LABEL_26:
    v67 = v7;
    v69 = v1;
    v62[1] = v62;
    v63 = v18;
    MEMORY[0x1EEE9AC00](v37);
    v64 = v62 - ((v24 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v64, v24);
    v65 = 0;
    v38 = 0;
    v39 = 1 << *(v12 + 32);
    v40 = -1;
    if (v39 < 64)
    {
      v40 = ~(-1 << v39);
    }

    v1 = v40 & *(v12 + 56);
    v18 = (v39 + 63) >> 6;
    v68 = v8 + 1;
    while (v1)
    {
      v41 = __clz(__rbit64(v1));
      v1 &= v1 - 1;
LABEL_36:
      v7 = v41 | (v38 << 6);
      v8 = *(*(v12 + 48) + 8 * v7);
      v44 = [v8 url];
      sub_1D33DDC24();

      v45 = sub_1D33DDC04();
      v24 = [objc_opt_self() conversationLinkForURL_];

      (*v68)(v11, v67);
      if (v24)
      {

        *&v64[(v7 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v7;
        v46 = __OFADD__(v65++, 1);
        if (v46)
        {
          __break(1u);
          goto LABEL_40;
        }
      }
    }

    v42 = v38;
    while (1)
    {
      v38 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        goto LABEL_58;
      }

      if (v38 >= v18)
      {
        break;
      }

      v43 = *(v12 + 56 + 8 * v38);
      ++v42;
      if (v43)
      {
        v41 = __clz(__rbit64(v43));
        v1 = (v43 - 1) & v43;
        goto LABEL_36;
      }
    }

    v14 = sub_1D3366F14(v64, v63, v65, v12);
    goto LABEL_42;
  }

  if (v12 < 0)
  {
    v13 = *(v0 + 16);
  }

  if (sub_1D33DEE14() <= 0)
  {
LABEL_40:
    result = 0;
    goto LABEL_65;
  }

  v69 = 0;
  v70 = v6;
  v71 = v3;
  v66 = v2;
  v14 = MEMORY[0x1E69E7CD0];
  v74[0] = MEMORY[0x1E69E7CD0];

  v12 = sub_1D33DEDC4();
  v15 = sub_1D33DEE54();
  if (!v15)
  {
LABEL_23:

    goto LABEL_42;
  }

  v16 = v15;
  v1 = sub_1D331DA18(0, &qword_1EC761170, 0x1E69992A8);
  v17 = v16;
  v18 = (v8 + 1);
  while (1)
  {
    v72 = v17;
    swift_dynamicCast();
    v19 = [v73 url];
    sub_1D33DDC24();

    v20 = sub_1D33DDC04();
    v21 = [objc_opt_self() conversationLinkForURL_];

    (*v18)(v11, v7);
    if (v21)
    {
      break;
    }

LABEL_8:
    v17 = sub_1D33DEE54();
    if (!v17)
    {
      goto LABEL_23;
    }
  }

  v8 = v73;
  v22 = *(v14 + 16);
  if (*(v14 + 24) <= v22)
  {
    sub_1D3364384(v22 + 1);
  }

  v14 = v74[0];
  v23 = *(v74[0] + 40);
  v24 = v8;
  v25 = sub_1D33DEC64();
  v26 = v14 + 56;
  v27 = -1 << *(v14 + 32);
  v28 = v25 & ~v27;
  v29 = v28 >> 6;
  if (((-1 << v28) & ~*(v14 + 56 + 8 * (v28 >> 6))) != 0)
  {
    v30 = __clz(__rbit64((-1 << v28) & ~*(v14 + 56 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_22:
    *(v26 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
    *(*(v14 + 48) + 8 * v30) = v8;
    ++*(v14 + 16);
    goto LABEL_8;
  }

  v31 = 0;
  v32 = (63 - v27) >> 6;
  while (++v29 != v32 || (v31 & 1) == 0)
  {
    v33 = v29 == v32;
    if (v29 == v32)
    {
      v29 = 0;
    }

    v31 |= v33;
    v34 = *(v26 + 8 * v29);
    if (v34 != -1)
    {
      v30 = __clz(__rbit64(~v34)) + (v29 << 6);
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_26;
  }

  v60 = swift_slowAlloc();
  v14 = sub_1D339E750(v60, v18, v12, sub_1D339BD88, 0);
  v69 = v1;

  MEMORY[0x1D38B81C0](v60, -1, -1);
LABEL_42:
  v49 = v70;
  v48 = v71;
  v50 = v69;
  if ((v14 & 0xC000000000000001) == 0)
  {
    if (*(v14 + 16) < 2)
    {
      goto LABEL_48;
    }

LABEL_44:
    v74[0] = sub_1D33A5A94(v14);
    sub_1D339E87C(v74);
    if (v50)
    {

      __break(1u);
      return result;
    }

    v51 = v74[0];
    v52 = sub_1D33DDD04();
    MEMORY[0x1EEE9AC00](v52);
    v62[-2] = v49;
    v53 = sub_1D339B060(sub_1D339E8F8, &v62[-4], v51);
    if (v53)
    {
      v54 = v53;

      v55 = v66;
LABEL_64:
      (*(v48 + 8))(v49, v55);
      result = v54;
      goto LABEL_65;
    }

    v55 = v66;
    if ((v51 & 0x8000000000000000) != 0 || (v51 & 0x4000000000000000) != 0)
    {
      v57 = sub_1D33DEE14();
      if (v57)
      {
LABEL_52:
        v46 = __OFSUB__(v57, 1);
        v58 = v57 - 1;
        if (v46)
        {
          __break(1u);
        }

        else if ((v51 & 0xC000000000000001) == 0)
        {
          if ((v58 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v58 < *(v51 + 16))
          {
            v59 = *(v51 + 8 * v58 + 32);
LABEL_57:
            v54 = v59;

            goto LABEL_64;
          }

          __break(1u);
        }

        v59 = MEMORY[0x1D38B75D0](v58, v51);
        goto LABEL_57;
      }
    }

    else
    {
      v57 = *(v51 + 16);
      if (v57)
      {
        goto LABEL_52;
      }
    }

    v54 = 0;
    goto LABEL_64;
  }

  if (sub_1D33DEE14() >= 2)
  {
    goto LABEL_44;
  }

LABEL_48:
  v56 = sub_1D335DC64(v14);

  result = v56;
LABEL_65:
  v61 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL sub_1D339BD88(id *a1)
{
  v2 = sub_1D33DDC44();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*a1 url];
  sub_1D33DDC24();

  v8 = sub_1D33DDC04();
  v9 = [objc_opt_self() conversationLinkForURL_];

  (*(v3 + 8))(v6, v2);
  if (v9)
  {
  }

  return v9 != 0;
}

uint64_t sub_1D339BEC0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1D33DDD34();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760E10, &unk_1D33E1A90);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v18 - v11;
  v13 = [v2 documentDate];
  if (v13)
  {
    v14 = v13;
    sub_1D33DDCF4();

    v15 = *(v5 + 32);
    v15(v12, v8, v4);
    (*(v5 + 56))(v12, 0, 1, v4);
    return (v15)(a1, v12, v4);
  }

  else
  {
    (*(v5 + 56))(v12, 1, 1, v4);
    v17 = [v2 receivedAt];
    sub_1D33DDCF4();

    result = (*(v5 + 48))(v12, 1, v4);
    if (result != 1)
    {
      return sub_1D33A1104(v12);
    }
  }

  return result;
}

uint64_t sub_1D339C0C4(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760E10, &unk_1D33E1A90);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v15 - v4;
  v6 = sub_1D33DDD34();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  sub_1D339C28C(v5);
  v12 = *(v7 + 48);
  if (v12(v5, 1, v6) == 1)
  {
    sub_1D339BEC0(v10);
    if (v12(v5, 1, v6) != 1)
    {
      sub_1D33A1104(v5);
    }
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
  }

  v13 = sub_1D33DDCA4();
  (*(v7 + 8))(v10, v6);
  return v13 & 1;
}

uint64_t sub_1D339C28C@<X0>(char *a1@<X8>)
{
  v3 = sub_1D33DDD34();
  v16 = *(v3 - 8);
  v4 = *(v16 + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = [v1 documentDate];
  if (v10)
  {
    v11 = v10;
    sub_1D33DDCF4();

    v12 = *(v16 + 32);
    v12(v9, v7, v3);
    if (([v1 flags] & 0x40) != 0)
    {
      v12(a1, v9, v3);
    }

    else
    {
      if (([v1 flags] & 0x20) == 0)
      {
        (*(v16 + 8))(v9, v3);
        return (*(v16 + 56))(a1, 1, 1, v3);
      }

      [v1 documentTimeInterval];
      sub_1D33DDC84();
      (*(v16 + 8))(v9, v3);
    }

    return (*(v16 + 56))(a1, 0, 1, v3);
  }

  else
  {
    v14 = *(v16 + 56);

    return v14(a1, 1, 1, v3);
  }
}