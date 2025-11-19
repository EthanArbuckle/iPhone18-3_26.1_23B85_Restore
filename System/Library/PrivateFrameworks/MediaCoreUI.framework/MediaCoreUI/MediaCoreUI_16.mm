uint64_t static NowPlayingButtonID.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v10[0] = *a1;
  v10[1] = v2;
  v11 = v3;
  v8[0] = v4;
  v8[1] = v5;
  v9 = v6;
  sub_1C5951550();
  sub_1C5951550();
  LOBYTE(v4) = sub_1C5AD0CDC(v10, v8);
  sub_1C5950CE4();
  sub_1C5950CE4();
  return v4 & 1;
}

uint64_t NowPlayingButtonID.geometryID.getter@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = *(v1 + 16);
  sub_1C5BCBA94();

  if (v5)
  {
    MEMORY[0x1C694F170](0x3A70756B6F6F6CLL, 0xE700000000000000);
    sub_1C5BCBBA4();
    sub_1C5950CE4();
    v4 = 0;
    v3 = 0xE000000000000000;
  }

  MEMORY[0x1C694F170](v4, v3);

  *a1 = 0xD000000000000011;
  a1[1] = 0x80000001C5BFADB0;
  return result;
}

uint64_t static NowPlayingButtonID.lookup(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = 1;
}

double static NowPlayingButtonID.spacer.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 0x726563617073;
  *a1 = xmmword_1C5BD4520;
  *(a1 + 16) = 0;
  return result;
}

uint64_t NowPlayingButtonID.hash(into:)()
{
  MEMORY[0x1C69501A0](*(v0 + 16));

  return sub_1C5BCAF04();
}

uint64_t NowPlayingButtonID.hashValue.getter()
{
  v1 = *(v0 + 16);
  sub_1C5BCBF54();
  MEMORY[0x1C69501A0](v1);
  sub_1C5BCAF04();
  return sub_1C5BCBF94();
}

uint64_t sub_1C5AD0B90()
{
  v1 = *(v0 + 16);
  sub_1C5BCBF54();
  MEMORY[0x1C69501A0](v1);
  sub_1C5BCAF04();
  return sub_1C5BCBF94();
}

uint64_t sub_1C5AD0BF4()
{
  MEMORY[0x1C69501A0](*(v0 + 16));

  return sub_1C5BCAF04();
}

uint64_t sub_1C5AD0C48(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v10[0] = *a1;
  v10[1] = v2;
  v11 = v3;
  v8[0] = v4;
  v8[1] = v5;
  v9 = v6;
  sub_1C5951550();
  sub_1C5951550();
  LOBYTE(v4) = sub_1C5AD0CDC(v10, v8);
  sub_1C5950CE4();
  sub_1C5950CE4();
  return v4 & 1;
}

BOOL sub_1C5AD0CDC(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  if (a1[2])
  {
    if (a2[2])
    {
      if (v3 != v5 || v2 != v4)
      {
        v7 = sub_1C5BCBDE4();
        sub_1C5951550();
        sub_1C5951550();
        sub_1C5950CE4();
        sub_1C5950CE4();
        return (v7 & 1) != 0;
      }

      goto LABEL_15;
    }

LABEL_9:
    sub_1C5951550();
    sub_1C5951550();
    sub_1C5950CE4();
    sub_1C5950CE4();
    return 0;
  }

  if (a2[2])
  {
    goto LABEL_9;
  }

  if (v3 != v5 || v2 != v4)
  {
    v10 = sub_1C5BCBDE4();
    sub_1C5951550();
    sub_1C5951550();
    sub_1C5950CE4();
    sub_1C5950CE4();
    return v10 & 1;
  }

LABEL_15:
  sub_1C5951550();
  sub_1C5951550();
  sub_1C5950CE4();
  sub_1C5950CE4();
  return 1;
}

unint64_t sub_1C5AD0ECC()
{
  result = qword_1EC197238;
  if (!qword_1EC197238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC197238);
  }

  return result;
}

unint64_t sub_1C5AD0F5C()
{
  result = qword_1EC197240;
  if (!qword_1EC197240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC197240);
  }

  return result;
}

uint64_t sub_1C5AD0FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930A0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1C5929BC8(a3, v25 - v10);
  v12 = sub_1C5BCB214();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1C5924EF4(v11, &qword_1EC1930A0);
  }

  else
  {
    sub_1C5BCB204();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1C5BCB194();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1C5BCAED4() + 32;
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

      sub_1C5924EF4(a3, &qword_1EC1930A0);

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

  sub_1C5924EF4(a3, &qword_1EC1930A0);
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

uint64_t sub_1C5AD12A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930A0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1C5929BC8(a3, v25 - v10);
  v12 = sub_1C5BCB214();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1C5924EF4(v11, &qword_1EC1930A0);
  }

  else
  {
    sub_1C5BCB204();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1C5BCB194();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1C5BCAED4() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1961E0);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_1C5924EF4(a3, &qword_1EC1930A0);

      return v22;
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

  sub_1C5924EF4(a3, &qword_1EC1930A0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1961E0);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1C5AD15AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930A0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1C5929BC8(a3, v25 - v10);
  v12 = sub_1C5BCB214();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1C5924EF4(v11, &qword_1EC1930A0);
  }

  else
  {
    sub_1C5BCB204();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1C5BCB194();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1C5BCAED4() + 32;
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

      sub_1C5924EF4(a3, &qword_1EC1930A0);

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

  sub_1C5924EF4(a3, &qword_1EC1930A0);
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

uint64_t sub_1C5AD1894@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for NowPlayingViewModel();
  sub_1C5937ED0(qword_1EDA49710, type metadata accessor for NowPlayingViewModel);
  *a3 = sub_1C5BC8C84();
  *(a3 + 8) = v6;
  result = swift_getKeyPath();
  *(a3 + 16) = result;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 56) = a1;
  *(a3 + 64) = a2;
  return result;
}

uint64_t sub_1C5AD1930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = swift_getKeyPath();
  *(a3 + 73) = 0;
  *(a3 + 80) = swift_getKeyPath();
  *(a3 + 88) = 0;
  v6 = type metadata accessor for NowPlayingHostedViewControllerStack();
  v7 = *(*(a2 - 8) + 32);
  v8 = a3 + *(v6 + 40);

  return v7(v8, a1, a2);
}

uint64_t sub_1C5AD19EC(__int128 *a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    swift_beginAccess();
    v4 = a1[3];
    *(v3 + 80) = a1[2];
    *(v3 + 96) = v4;
    *(v3 + 105) = *(a1 + 57);
    v5 = a1[1];
    *(v3 + 48) = *a1;
    *(v3 + 64) = v5;
    v6 = *(v3 + 64);
    if ((v6 & 0xFF0000) != 0x40000)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v8 = *(v3 + 40);
        v9 = Strong;
        ObjectType = swift_getObjectType();
        v11 = *a1;
        v12 = v6;
        v13 = *(a1 + 24);
        v14 = *(a1 + 40);
        v15 = *(a1 + 56);
        v16 = *(a1 + 72);
        (*(v8 + 40))(&v11, ObjectType, v8);
      }
    }
  }

  return result;
}

__n128 sub_1C5AD1AFC@<Q0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 96);
  *(a1 + 32) = *(v1 + 80);
  *(a1 + 48) = v3;
  *(a1 + 57) = *(v1 + 105);
  result = *(v1 + 64);
  *a1 = *(v1 + 48);
  *(a1 + 16) = result;
  return result;
}

void sub_1C5AD1B50(__int128 *a1)
{
  swift_beginAccess();
  v3 = a1[3];
  *(v1 + 80) = a1[2];
  *(v1 + 96) = v3;
  *(v1 + 105) = *(a1 + 57);
  v4 = a1[1];
  *(v1 + 48) = *a1;
  *(v1 + 64) = v4;
  v5 = *(v1 + 64);
  if ((v5 & 0xFF0000) != 0x40000)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = *(v1 + 40);
      v8 = Strong;
      ObjectType = swift_getObjectType();
      v10 = *a1;
      v11 = v5;
      v12 = *(a1 + 24);
      v13 = *(a1 + 40);
      v14 = *(a1 + 56);
      v15 = *(a1 + 72);
      (*(v7 + 40))(&v10, ObjectType, v7);
    }
  }
}

uint64_t sub_1C5AD1C24@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + 16);
  swift_unownedRetainStrong();
  v4 = *(v3 + 104);

  swift_beginAccess();
  LOBYTE(v3) = *(v4 + 58);

  *a2 = v3;
  return result;
}

uint64_t sub_1C5AD1C9C()
{
  v1 = *(v0 + 16);
  swift_unownedRetainStrong();
  v2 = *(v1 + 104);

  swift_beginAccess();
  v3 = *(v2 + 58);

  return v3;
}

uint64_t sub_1C5AD1D04(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  v4 = *(v1 + 16);
  swift_unownedRetainStrong();
  v5 = *(v4 + 104);

  swift_beginAccess();
  LODWORD(v4) = *(v5 + 58);

  if (v4 != v3)
  {
    if (qword_1EDA469E0 != -1)
    {
      swift_once();
    }

    v7 = sub_1C5BC7D64();
    __swift_project_value_buffer(v7, qword_1EDA5DA78);

    v8 = sub_1C5BC7D44();
    v9 = sub_1C5BCB4F4();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 67109120;
      v11 = *(v2 + 16);
      swift_unownedRetainStrong();
      v12 = *(v11 + 104);

      swift_beginAccess();
      LODWORD(v11) = *(v12 + 58);

      *(v10 + 4) = v11;

      _os_log_impl(&dword_1C5922000, v8, v9, "HostedContentSession client set controls hidden to %{BOOL}d", v10, 8u);
      MEMORY[0x1C69510F0](v10, -1, -1);
    }

    else
    {
    }

    MEMORY[0x1EEE9AC00](v13);
    v14 = sub_1C5BCAB14();
    sub_1C596D96C(v14, 1);
  }

  return result;
}

uint64_t sub_1C5AD1F1C(uint64_t a1, char a2)
{
  v3 = *(a1 + 16);
  swift_unownedRetainStrong();
  v4 = *(v3 + 104);

  KeyPath = swift_getKeyPath();
  v6 = swift_getKeyPath();
  return sub_1C5971FE0(a2, v4, KeyPath, v6);
}

void (*sub_1C5AD1F9C(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(v1 + 16);
  swift_unownedRetainStrong();
  v6 = *(v5 + 104);

  swift_beginAccess();
  LOBYTE(v5) = *(v6 + 58);

  *(v4 + 32) = v5;
  return sub_1C5AD2050;
}

void sub_1C5AD2050(uint64_t a1)
{
  v1 = *a1;
  sub_1C5AD1D04(*(*a1 + 32));

  free(v1);
}

uint64_t NowPlayingHostedContentSession.deinit()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930A0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v12 - v3;
  v5 = sub_1C5BCB214();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v6 + 24) = *(v1 + 40);
  swift_unknownObjectWeakInit();

  sub_1C5BCB1E4();

  v8 = sub_1C5BCB1D4();
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E85E0];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v6;

  sub_1C5AD0FB8(0, 0, v4, &unk_1C5BE68D0, v9);

  swift_unownedRelease();

  sub_1C5AC8D5C(v1 + 32);
  return v1;
}

uint64_t NowPlayingHostedContentSession.__deallocating_deinit()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930A0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v12 - v3;
  v5 = sub_1C5BCB214();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v6 + 24) = *(v1 + 40);
  swift_unknownObjectWeakInit();

  sub_1C5BCB1E4();

  v8 = sub_1C5BCB1D4();
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E85E0];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v6;

  sub_1C5AD0FB8(0, 0, v4, &unk_1C5BE68D8, v9);

  swift_unownedRelease();

  sub_1C5AC8D5C(v1 + 32);
  return swift_deallocClassInstance();
}

uint64_t sub_1C5AD23D0@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_1C5BC8F34();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v10 = *(v1 + 32);
  v9 = *(v1 + 40);
  if (*(v1 + 48) == 1)
  {
    *a1 = v7;
    a1[1] = v8;
    a1[2] = v10;
    a1[3] = v9;

    return sub_1C593E7D8(v7, v8);
  }

  else
  {
    v12 = *(v1 + 16);

    sub_1C5BCB4E4();
    v13 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C596AC4C(v12, v8, v10, v9, 0);
    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t static NowPlayingHostedViewControllerRepresentable.dismantleUIViewController(_:coordinator:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 32))(a2, a3);
  qword_1EC1A6D00 = 0;
}

void sub_1C5AD25DC(_OWORD *a1@<X8>)
{
  v3 = sub_1C5BC8F34();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13[10] = *(v1 + 58);
  v7 = v1[3];
  v12[2] = v1[2];
  *v13 = v7;
  v8 = v1[1];
  v12[0] = *v1;
  v12[1] = v8;
  if (v13[25])
  {
    v9 = v1[3];
    a1[2] = v1[2];
    a1[3] = v9;
    *(a1 + 57) = *(v1 + 57);
    v10 = v1[1];
    *a1 = *v1;
    a1[1] = v10;
  }

  else
  {

    sub_1C5BCB4E4();
    v11 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(v12, &unk_1EC194DE0);
    (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1C5AD2764()
{
  v1 = sub_1C5BC8F34();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = *(v0 + 80);
  if ((*(v0 + 88) & 1) == 0)
  {
    v6 = *(v0 + 80);

    sub_1C5BCB4E4();
    v7 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5950E44(v6, 0);
    (*(v2 + 8))(v4, v1);
    return v8[1];
  }

  return result;
}

uint64_t sub_1C5AD28BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDB778](a1, a2, a3, WitnessTable);
}

uint64_t sub_1C5AD2938(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDB740](a1, a2, a3, WitnessTable);
}

void sub_1C5AD29B4()
{
  swift_getWitnessTable();
  sub_1C5BC9784();
  __break(1u);
}

uint64_t NowPlayingHostedViewControllerStack.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197248);
  v4 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197250);
  sub_1C5BC8AB4();
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  v5 = sub_1C5BCA7D4();
  v22 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21 - v6;
  v8 = sub_1C5BC8AB4();
  v23 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21 - v12;
  v14 = *(a1 + 24);
  v25 = v4;
  v26 = v14;
  v27 = v2;
  sub_1C5BC9134();
  sub_1C5BCA7C4();
  sub_1C5BC98A4();
  v31 = &type metadata for Features;
  v32 = sub_1C5A2E158();
  v15 = swift_allocObject();
  *&v30 = v15;
  *(v15 + 16) = "MediaCoreUI";
  *(v15 + 24) = 11;
  *(v15 + 32) = 2;
  *(v15 + 40) = "HoveringChapterPicker";
  *(v15 + 48) = 21;
  *(v15 + 56) = 2;
  v16 = sub_1C5BC7C14();
  __swift_destroy_boxed_opaque_existential_0(&v30);
  if ((v16 & 1) == 0)
  {
    sub_1C5AD25DC(&v30);
    sub_1C5B4B500(&v30);
  }

  WitnessTable = swift_getWitnessTable();
  sub_1C5BCA2F4();
  (*(v22 + 8))(v7, v5);
  v28 = WitnessTable;
  v29 = MEMORY[0x1E697E5D8];
  v18 = swift_getWitnessTable();
  sub_1C593EDC0(v10, v8, v18);
  v19 = *(v23 + 8);
  v19(v10, v8);
  sub_1C593EDC0(v13, v8, v18);
  return (v19)(v13, v8);
}

uint64_t sub_1C5AD2DB0@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v38 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197250);
  v3 = sub_1C5BC8AB4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v33[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v33[-v8];
  type metadata accessor for NowPlayingHostedViewControllerStack();
  sub_1C5AD25DC(&v63);
  if (BYTE2(v64) == 2 || (*(&v64 + 1) = &type metadata for Features, *&v65 = sub_1C5A2E158(), v10 = swift_allocObject(), *&v63 = v10, *(v10 + 16) = "MediaCoreUI", *(v10 + 24) = 11, *(v10 + 32) = 2, *(v10 + 40) = "HoveringChapterPicker", *(v10 + 48) = 21, *(v10 + 56) = 2, v11 = sub_1C5BC7C14(), __swift_destroy_boxed_opaque_existential_0(&v63), (v11 & 1) != 0))
  {
    sub_1C5AD4B60(&v63);
  }

  else
  {
    v37 = sub_1C5AD2764();
    v36 = sub_1C5BC9664();
    sub_1C5BCABD4();
    v13 = v12;
    v15 = v14;
    v35 = sub_1C5BC98C4();
    sub_1C5AD25DC(&v63);
    DeviceMetrics.padding.getter(&v53);
    sub_1C5BC8174();
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    LOBYTE(v42) = 0;
    v34 = sub_1C5BC98E4();
    sub_1C5AD25DC(&v63);
    DeviceMetrics.padding.getter(&v53);
    sub_1C5BC8174();
    *&v53 = 0x49676E6979616C70;
    *(&v53 + 1) = 0xEB000000006D6574;
    *&v54 = v37;
    DWORD2(v54) = v36;
    *&v55 = v13;
    *(&v55 + 1) = v15;
    LOBYTE(v56) = 1;
    BYTE8(v56) = v35;
    *&v57 = v17;
    *(&v57 + 1) = v19;
    *&v58 = v21;
    *(&v58 + 1) = v23;
    LOBYTE(v59) = 0;
    BYTE8(v59) = v34;
    *&v60 = v24;
    *(&v60 + 1) = v25;
    *&v61 = v26;
    *(&v61 + 1) = v27;
    v62 = 0;
    CGSizeMake(&v53, v28);
    v69 = v59;
    v70 = v60;
    v71 = v61;
    v72 = v62;
    v65 = v55;
    v66 = v56;
    v67 = v57;
    v68 = v58;
    v63 = v53;
    v64 = v54;
  }

  sub_1C5AD472C();
  sub_1C5BCA3A4();
  v29 = sub_1C5924F54(&qword_1EC197280, &qword_1EC197250);
  v52[2] = a1;
  v52[3] = v29;
  WitnessTable = swift_getWitnessTable();
  sub_1C593EDC0(v6, v3, WitnessTable);
  v31 = *(v4 + 8);
  v31(v6, v3);
  v48 = v69;
  v49 = v70;
  v50 = v71;
  v51 = v72;
  v44 = v65;
  v45 = v66;
  v46 = v67;
  v47 = v68;
  v42 = v63;
  v43 = v64;
  v52[0] = &v42;
  (*(v4 + 16))(v6, v9, v3);
  v52[1] = v6;
  v41[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197248);
  v41[1] = v3;
  v39 = sub_1C5AD48F0();
  v40 = WitnessTable;
  sub_1C594226C(v52, 2uLL, v41);
  v31(v9, v3);
  v31(v6, v3);
  v59 = v48;
  v60 = v49;
  v61 = v50;
  v62 = v51;
  v55 = v44;
  v56 = v45;
  v57 = v46;
  v58 = v47;
  v53 = v42;
  v54 = v43;
  return sub_1C5924EF4(&v53, &qword_1EC197248);
}

double sub_1C5AD3268@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  v10 = sub_1C5BC9044();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20.origin.x = a2;
  v20.origin.y = a3;
  v20.size.width = a4;
  v20.size.height = a5;
  CGRectInset(v20, -100.0, 0.0);
  (*(v11 + 104))(v13, *MEMORY[0x1E697F468], v10);
  sub_1C5BC9AB4();
  result = *&v17;
  v15 = v18;
  *a1 = v17;
  *(a1 + 16) = v15;
  *(a1 + 32) = v19;
  return result;
}

void (*sub_1C5AD33B8(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_1C5BC8134();
  return sub_1C599BD44;
}

uint64_t sub_1C5AD3440(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C5AD472C();

  return MEMORY[0x1EEDE4440](a1, a2, a3, v6);
}

uint64_t sub_1C5AD34A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C5AD472C();

  return MEMORY[0x1EEDE43F0](a1, a2, a3, v6);
}

uint64_t sub_1C5AD3508(uint64_t a1)
{
  v2 = sub_1C5AD472C();

  return MEMORY[0x1EEDE4410](a1, v2);
}

uint64_t sub_1C5AD3574()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C592A748;

  return sub_1C5A2C00C();
}

uint64_t sub_1C5AD3628()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C592ABD4;

  return sub_1C5A2C00C();
}

uint64_t sub_1C5AD36DC(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_1C5AD37D0;

  return v5(v2 + 16);
}

uint64_t sub_1C5AD37D0()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v5 = *v0;

  *v2 = *(v1 + 16);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1C5AD3900(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC199F20);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1972C8);
  v8 = *(v7 - 8);
  v22 = v7;
  v23 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - v9;
  *(v2 + 24) = MEMORY[0x1E69E7CD0];
  *(v2 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0x40000;
  *(v2 + 72) = 0u;
  *(v2 + 88) = 0u;
  *(v2 + 104) = 0u;
  *(v2 + 120) = 0;
  *(v2 + 16) = a1;
  v11 = *(a1 + 152);
  swift_getKeyPath();
  *&v26 = v11;
  swift_unownedRetain();
  sub_1C5937ED0(&qword_1EDA4B960, type metadata accessor for WindowProperties);
  sub_1C5BC7B74();

  v12 = *(v11 + 104);
  v13 = *(v11 + 136);
  v28 = *(v11 + 120);
  v29[0] = v13;
  *(v29 + 9) = *(v11 + 145);
  v26 = *(v11 + 88);
  v27 = v12;
  swift_beginAccess();
  v14 = v28;
  v15 = v29[0];
  v16 = v26;
  *(v2 + 64) = v27;
  *(v2 + 80) = v14;
  *(v2 + 96) = v15;
  *(v2 + 105) = *(v29 + 9);
  *(v2 + 48) = v16;
  v24 = *(v11 + 168);
  sub_1C5929CA0();

  v17 = sub_1C5BCB5A4();
  v25 = v17;
  v18 = sub_1C5BCB594();
  (*(*(v18 - 8) + 56))(v6, 1, 1, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1943B0);
  sub_1C5924F54(&qword_1EDA46870, &qword_1EC1943B0);
  sub_1C5937ED0(&qword_1EDA4E630, sub_1C5929CA0);
  sub_1C5BC80D4();
  sub_1C5924EF4(v6, &unk_1EC199F20);

  swift_allocObject();
  swift_weakInit();
  sub_1C5924F54(&qword_1EDA468E0, &qword_1EC1972C8);
  v19 = v22;
  sub_1C5BC8114();

  (*(v23 + 8))(v10, v19);
  swift_beginAccess();
  sub_1C5BC7EE4();
  swift_endAccess();

  return v2;
}

uint64_t sub_1C5AD3D30()
{
  result = *v0;
  if (!*v0)
  {
    type metadata accessor for NowPlayingViewModel();
    sub_1C5937ED0(qword_1EDA49710, type metadata accessor for NowPlayingViewModel);
    result = sub_1C5BC8C74();
    __break(1u);
  }

  return result;
}

uint64_t sub_1C5AD3DAC(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  v14[0] = *v1;
  v14[1] = v3;
  v14[2] = *(v1 + 32);
  v15 = *(v1 + 48);
  v16 = v4;
  v17 = v5;
  sub_1C5AD3D30();
  type metadata accessor for NowPlayingHostedContentSession();
  swift_allocObject();

  v7 = sub_1C5AD3900(v6);

  qword_1EC1A6D00 = v7;

  v8 = v4(v7);
  v9 = *(a1 + 24);
  *(v7 + 40) = v9;
  swift_unknownObjectWeakAssign();
  v10 = *(a1 + 16);
  (*(v9 + 8))(v10, v9);
  sub_1C5AD23D0(v14);
  v11 = *(&v14[0] + 1);
  if (*(&v14[0] + 1) == 1)
  {
    (*(v9 + 16))(v10, v9);
  }

  else
  {
    v12 = *&v14[0];

    sub_1C593E820(v12, v11);
  }

  return v8;
}

void sub_1C5AD3F38(void *a1)
{
  v1 = [a1 view];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() clearColor];
    [v2 setBackgroundColor_];
  }

  else
  {
    __break(1u);
  }
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

uint64_t sub_1C5AD418C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C5AD41D4(uint64_t result, int a2, int a3)
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
      *(result + 56) = (a2 - 1);
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

uint64_t sub_1C5AD4224(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 89) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if (v5 > 0xFE)
      {
        return (*(v4 + 48))((((a1 + 81) & 0xFFFFFFFFFFFFFFF8) + v6 + 9) & ~v6);
      }

      v15 = *(a1 + 73);
      if (v15 > 1)
      {
        return (v15 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_1C5AD43B0(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 89) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v7 > 0xFE)
  {
    v19 = *(v6 + 56);
    v20 = (((a1 + 81) & 0xFFFFFFFFFFFFFFF8) + v9 + 9) & ~v9;

    v19(v20);
  }

  else if (a2 > 0xFE)
  {
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 36) = 0;
    *a1 = a2 - 255;
  }

  else
  {
    a1[73] = -a2;
  }
}

unint64_t sub_1C5AD4680()
{
  result = qword_1EC197268;
  if (!qword_1EC197268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC197268);
  }

  return result;
}

unint64_t sub_1C5AD46D8()
{
  result = qword_1EC197270;
  if (!qword_1EC197270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC197270);
  }

  return result;
}

unint64_t sub_1C5AD472C()
{
  result = qword_1EC197278;
  if (!qword_1EC197278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC197278);
  }

  return result;
}

uint64_t sub_1C5AD4780(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C592A748;

  return sub_1C5AD36DC(a1, v4);
}

uint64_t sub_1C5AD4838(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C592ABD4;

  return sub_1C5AD36DC(a1, v4);
}

unint64_t sub_1C5AD48F0()
{
  result = qword_1EC197288;
  if (!qword_1EC197288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197248);
    sub_1C5AD49D0(&qword_1EC197290, &qword_1EC197298, &unk_1C5BE6D18, sub_1C5AD49A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC197288);
  }

  return result;
}

uint64_t sub_1C5AD49D0(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_1C5AD4A54()
{
  result = qword_1EC1972B0;
  if (!qword_1EC1972B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1972B8);
    sub_1C5AD4B0C();
    sub_1C5924F54(&qword_1EC191B60, &qword_1EC191B40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1972B0);
  }

  return result;
}

unint64_t sub_1C5AD4B0C()
{
  result = qword_1EC1972C0;
  if (!qword_1EC1972C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1972C0);
  }

  return result;
}

double sub_1C5AD4B60(uint64_t a1)
{
  *(a1 + 144) = 0;
  result = 0.0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

unint64_t sub_1C5AD4C0C()
{
  result = qword_1EDA46C38[0];
  if (!qword_1EDA46C38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDA46C38);
  }

  return result;
}

uint64_t MCUINamespace<A>.fittedToMaxLines(_:)(uint64_t (*a1)(void))
{
  a1();
  sub_1C5AD4C0C();
  return sub_1C5BC9E14();
}

uint64_t View.fittedToMaxLines(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for MCUINamespace();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - v6;
  View.mcui.getter(a3, &v9 - v6);
  MCUINamespace<A>.fittedToMaxLines(_:)();
  return (*(v5 + 8))(v7, v4);
}

uint64_t View.fittedToMaxLines(_:)(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for MCUINamespace();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  View.mcui.getter(a3, &v10 - v7);
  MCUINamespace<A>.fittedToMaxLines(_:)(a1);
  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1C5AD4F10()
{
  result = qword_1EC1972D8;
  if (!qword_1EC1972D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1972D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1972D8);
  }

  return result;
}

uint64_t sub_1C5AD4F84()
{
  v0 = 0;
  result = MGGetProductType();
  if (result > 2270970152)
  {
    if (result > 3242623366)
    {
      if (result != 3645319985 && result != 3242623367)
      {
        goto LABEL_15;
      }
    }

    else if (result != 2270970153 && result != 2311900306)
    {
      goto LABEL_15;
    }
  }

  else if (result > 1429914405)
  {
    if (result != 1429914406 && result != 1721691077)
    {
      goto LABEL_15;
    }
  }

  else if (result != 228444038 && result != 502329937)
  {
LABEL_15:
    v0 = 1;
  }

  byte_1EC1972E0 = v0;
  return result;
}

uint64_t static Backdrop.supportsHighFrameRate.getter()
{
  if (qword_1EC190838 != -1)
  {
    swift_once();
  }

  return byte_1EC1972E0;
}

uint64_t Backdrop.State.hashValue.getter()
{
  v1 = *v0;
  sub_1C5BCBF54();
  MEMORY[0x1C69501A0](v1);
  return sub_1C5BCBF94();
}

uint64_t sub_1C5AD519C(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_observer;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1C5AD5208(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_observer;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1C5AD52A8;
}

void sub_1C5AD52A8(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_1C5AD5330@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_state;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t sub_1C5AD5384(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_state;
  result = swift_beginAccess();
  v5 = *(v1 + v3);
  *(v1 + v3) = v2;
  if (v5 != v2)
  {
    v6 = v1 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_observer;
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v7 = *(v6 + 8);
      ObjectType = swift_getObjectType();
      (*(v7 + 8))(v1, ObjectType, v7);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1C5AD5444()
{
  v1 = OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_framebufferPixelFormat;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C5AD5488(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_framebufferPixelFormat;
  result = swift_beginAccess();
  v5 = *(v1 + v3);
  *(v1 + v3) = a1;
  if (v5 != a1)
  {
    v6 = *(v1 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_renderers + 16);
    v6[2] = a1;
    v6[21] = sub_1C5ADAC30(v6[5] != 0);
    return swift_unknownObjectRelease();
  }

  return result;
}

void (*sub_1C5AD5518(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_framebufferPixelFormat;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return sub_1C5AD55AC;
}

void sub_1C5AD55AC(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  if (a2)
  {
    sub_1C5AD5488(v3);
  }

  else
  {
    v5 = v2[4];
    v4 = v2[5];
    v6 = *(v5 + v4);
    *(v5 + v4) = v3;
    if (v6 != v3)
    {
      v7 = *(v2[4] + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_renderers + 16);
      v7[2] = v3;
      v7[21] = sub_1C5ADAC30(v7[5] != 0);
      swift_unknownObjectRelease();
    }
  }

  free(v2);
}

uint64_t sub_1C5AD5644()
{
  v1 = OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_colorPixelFormat;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1C5AD5688(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_colorPixelFormat;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  if (v4 != a1)
  {
    v5 = (v1 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_renderers);
    v6 = *(v1 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_renderers + 8);
    *(v6 + 16) = a1;
    v7 = v1;
    *(v6 + 136) = sub_1C5ADCC14();
    swift_unknownObjectRelease();
    v8 = *v5;
    *(*v5 + 16) = *(v7 + v3);
    v9 = sub_1C5ADB484();
    v10 = *(v8 + 152);
    *(v8 + 152) = v9;

    *(v8 + 160) = sub_1C5ADB894();
    swift_unknownObjectRelease();
    sub_1C5ADBC3C(*(v8 + 48));
  }
}

void (*sub_1C5AD5754(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_colorPixelFormat;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return sub_1C5AD57E8;
}

void sub_1C5AD57E8(uint64_t a1)
{
  v1 = *a1;
  sub_1C5AD5688(*(*a1 + 24));

  free(v1);
}

BOOL sub_1C5AD5824()
{
  v1 = OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_spectrumAnalysis;
  swift_beginAccess();
  return *(*(v0 + v1) + 64) == 1.0;
}

double sub_1C5AD5878(char a1)
{
  v3 = OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_spectrumAnalysis;
  swift_beginAccess();
  v4 = 0.2;
  if (a1)
  {
    v4 = 1.0;
  }

  *(*(v1 + v3) + 64) = v4;
  *&result = sub_1C5AD6E34().n128_u64[0];
  return result;
}

void (*sub_1C5AD58E8(uint64_t *a1))(uint64_t a1)
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
  v5 = OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_spectrumAnalysis;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(*(v1 + v5) + 64) == 1.0;
  return sub_1C5AD598C;
}

void sub_1C5AD598C(uint64_t a1)
{
  v1 = *a1;
  v2 = 0.2;
  if (*(*a1 + 40))
  {
    v2 = 1.0;
  }

  *(*(*(*a1 + 24) + *(*a1 + 32)) + 64) = v2;
  sub_1C5AD6E34();

  free(v1);
}

uint64_t (*sub_1C5AD5A0C(uint64_t a1))(uint64_t result)
{
  v2 = OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer__isPaused;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + v2);
  return sub_1C5AD5A40;
}

uint64_t sub_1C5AD5A50(void *a1)
{
  if ([a1 supportsFamily_])
  {
    v2 = [objc_opt_self() mainScreen];
    v3 = [v2 maximumFramesPerSecond];

    return v3;
  }

  else
  {
    v5 = OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_state;
    swift_beginAccess();
    if (*(v1 + v5))
    {
      return 30;
    }

    else
    {
      return 15;
    }
  }
}

float sub_1C5AD5AF8()
{
  v1 = v0 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_crossfadeDuration;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_1C5AD5B40(float a1)
{
  v3 = (v1 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_crossfadeDuration);
  result = swift_beginAccess();
  *v3 = a1;
  return result;
}

void sub_1C5AD5BF4(void *a1)
{
  sub_1C5AD6138(a1, 0, *(*(v1 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_renderers) + 96) != 0, 0, 0);
}

void *sub_1C5AD5C50()
{
  v1 = *(v0 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_imageStorage);
  v2 = v1;
  return v1;
}

void (*sub_1C5AD5C80(void *a1))(uint64_t a1, char a2)
{
  v2 = *(v1 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_imageStorage);
  *a1 = v2;
  a1[1] = v1;
  v3 = v2;
  return sub_1C5AD5CD4;
}

void sub_1C5AD5CD4(uint64_t a1, char a2)
{
  v2 = *(*(*(a1 + 8) + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_renderers) + 96);
  v6 = *a1;
  if (a2)
  {
    v3 = v2 != 0;
    v4 = v6;
    sub_1C5AD6138(v6, 0, v3, 0, 0);

    v5 = v4;
  }

  else
  {
    sub_1C5AD6138(v6, 0, v2 != 0, 0, 0);
    v5 = v6;
  }
}

uint64_t sub_1C5AD5D94(uint64_t a1, char a2)
{
  *(v3 + 48) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return MEMORY[0x1EEE6DFA0](sub_1C5AD5DB8, 0, 0);
}

uint64_t sub_1C5AD5DB8()
{
  v1 = *(v0 + 48);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  *(v4 + 32) = v1;
  v5 = swift_task_alloc();
  *(v0 + 40) = v5;
  *v5 = v0;
  v5[1] = sub_1C5AD5EBC;
  v6 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DDE0](v5, 0, 0, 0xD00000000000001ALL, 0x80000001C5BFAE30, sub_1C5ADD36C, v4, v6);
}

uint64_t sub_1C5AD5EBC()
{

  return MEMORY[0x1EEE6DFA0](sub_1C5AC59B0, 0, 0);
}

uint64_t sub_1C5AD5FD4(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195730);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10, a1, v7, v9);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = swift_allocObject();
  (*(v8 + 32))(v13 + v12, v11, v7);
  sub_1C5AD6138(a3, 1, a4, sub_1C5ADEDB4, v13);
}

void sub_1C5AD6138(void *a1, char a2, char a3, void (*a4)(void), uint64_t a5)
{
  v6 = v5;
  v11 = OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_imageStorage;
  v12 = *&v5[OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_imageStorage];
  if (!a1)
  {
    *&v5[OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_imageStorage] = 0;
    v17 = 0;

LABEL_18:
    v31 = *&v6[OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_placeholderColor];
    v27 = sub_1C5AD7A10(v31);
    v28 = 1.0;
    if (a3)
    {
      v28 = 0.0;
    }

    *&v6[OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_textureTransitionMix] = v28;
    v29 = *&v6[OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_renderers];
    *(v29 + 96) = v27;
    swift_unknownObjectRelease();
    *(v29 + 104) = 1;
    if (a4)
    {
      v30 = swift_unknownObjectRetain();
      (a4)(v30);
      swift_unknownObjectRelease();
    }

    goto LABEL_22;
  }

  if (v12)
  {
    sub_1C592535C(0, &qword_1EDA4E5E0);
    v14 = v12;
    v15 = a1;
    v16 = sub_1C5BCB744();

    if (v16)
    {
      if (a4)
      {
        a4();
      }

      return;
    }

    v11 = OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_imageStorage;
  }

  v18 = *&v6[v11];
  *&v6[v11] = a1;
  v19 = a1;

  v20 = [v19 CGImage];
  if (!v20)
  {
    goto LABEL_18;
  }

  v21 = *&v6[OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_renderers];
  v22 = *(v21 + 24);
  if ((*&v22 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (v22 <= -9.22337204e18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v22 >= 9.22337204e18)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v23 = *(v21 + 32);
  if ((*&v23 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v23 <= -9.22337204e18)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v23 >= 9.22337204e18)
  {
LABEL_30:
    __break(1u);
    return;
  }

  v24 = v20;
  v25 = sub_1C5AD641C(v22, 0, v23, 0);

  if (!v25)
  {
    goto LABEL_18;
  }

  sub_1C5974664(a4, a5);
  v31 = v25;
  v26 = v6;
  sub_1C5ADD45C(v31, (a2 | a3) & 1, v26, a4, a5, v25, 0, v26, a3 & 1);

  sub_1C59A5824(a4, a5);
LABEL_22:
}

CGImageRef sub_1C5AD641C(int64_t Width, char a2, int64_t Height, char a4)
{
  if (a2)
  {
    Width = CGImageGetWidth(v4);
  }

  v8 = CGImageGetWidth(v4);
  if (v8 < Width)
  {
    Width = v8;
  }

  if (a4)
  {
    Height = CGImageGetHeight(v4);
  }

  v9 = CGImageGetHeight(v4);
  if (v9 < Height)
  {
    Height = v9;
  }

  v10 = CGImageGetColorSpace(v4);
  if (!v10 || (v11 = v10, Model = CGColorSpaceGetModel(v10), v11, Model))
  {
    if (CGImageGetAlphaInfo(v4) != kCGImageAlphaNoneSkipFirst && CGImageGetAlphaInfo(v4) != kCGImageAlphaPremultipliedFirst)
    {
      return v4;
    }
  }

  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v14 = __CGBitmapContextCreate(0, Width, Height, 0, DeviceRGB, 5u);

  if (!v14)
  {
    return v4;
  }

  if (qword_1EDA4E6D0 != -1)
  {
    swift_once();
  }

  v15 = sub_1C5BC7D64();
  __swift_project_value_buffer(v15, qword_1EDA4E6E0);
  v16 = v4;
  v17 = sub_1C5BC7D44();
  v18 = sub_1C5BCB4B4();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v27 = v20;
    *v19 = 136315138;
    type metadata accessor for CGImage(0);
    v21 = v16;
    v22 = sub_1C5BCAEA4();
    v24 = sub_1C592ADA8(v22, v23, &v27);

    *(v19 + 4) = v24;
    _os_log_impl(&dword_1C5922000, v17, v18, "Redrawing incompatible image: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x1C69510F0](v20, -1, -1);
    MEMORY[0x1C69510F0](v19, -1, -1);
  }

  sub_1C5BCB494();
  Image = CGBitmapContextCreateImage(v14);

  return Image;
}

void sub_1C5AD6690(void *a1, char a2)
{
  v4 = OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_placeholderColor;
  v5 = *(v2 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_placeholderColor);
  *(v2 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_placeholderColor) = a1;
  v6 = a1;

  if (!*(v2 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_imageStorage))
  {
    v10 = *(v2 + v4);
    v7 = sub_1C5AD7A10(v10);
    v8 = 1.0;
    if (a2)
    {
      v8 = 0.0;
    }

    *(v2 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_textureTransitionMix) = v8;
    v9 = *(v2 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_renderers);
    *(v9 + 96) = v7;
    swift_unknownObjectRelease();
    *(v9 + 104) = 1;
  }
}

uint64_t sub_1C5AD6760(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  v2 = v1;

  sub_1C5BA9978(v1);
}

void *sub_1C5AD67D0()
{
  v1 = OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_spectrumAnalysis;
  swift_beginAccess();
  v2 = *(*(v0 + v1) + 16);
  v3 = v2;
  return v2;
}

uint64_t sub_1C5AD6820(void *a1)
{
  swift_beginAccess();

  sub_1C5BA9978(a1);
}

void (*sub_1C5AD6888(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_spectrumAnalysis;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(*(v1 + v5) + 16);
  *(v4 + 24) = v6;
  v7 = v6;
  return sub_1C5AD6928;
}

void sub_1C5AD6928(void **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  if (a2)
  {
    v5 = v3;

    sub_1C5BA9978(v3);
  }

  else
  {

    sub_1C5BA9978(v3);
  }

  free(v2);
}

id Backdrop.CompositeRenderer.context.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_context;
  v3 = *(v1 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_context);
  v4 = *(v1 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_context + 8);
  v5 = *(v1 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_context + 16);
  v8 = *(v2 + 24);
  v6 = *(v2 + 32);
  LOBYTE(v2) = *(v2 + 40);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v8;
  *(a1 + 32) = v6;
  *(a1 + 40) = v2;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  return v8;
}

id Backdrop.CompositeRenderer.init(context:configuration:)(uint64_t *a1, char *a2)
{
  v3 = v2;
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v9 = *(a1 + 40);
  v42 = *a2;
  *&v2[OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_observer + 8] = 0;
  swift_unknownObjectWeakInit();
  v2[OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_state] = 0;
  *&v2[OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_framebufferPixelFormat] = 80;
  *&v2[OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_colorPixelFormat] = 115;
  v2[OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer__isPaused] = 0;
  *&v2[OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_crossfadeDuration] = 1061997773;
  *&v2[OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_imageStorage] = 0;
  v10 = OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_placeholderColor;
  *&v3[v10] = [objc_opt_self() systemRedColor];
  v11 = &v3[OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_environment];
  *v11 = 0;
  *(v11 + 4) = 0x432000004019999ALL;
  v12 = OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_crossfadeTimingFunction;
  v13 = objc_allocWithZone(MEMORY[0x1E69793D0]);
  LODWORD(v14) = 1050253722;
  LODWORD(v15) = 1.0;
  *&v3[v12] = [v13 initWithControlPoints__:0.0 :{0.0, v14, v15}];
  v16 = OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_modeTimingFunction;
  v17 = objc_allocWithZone(MEMORY[0x1E69793D0]);
  LODWORD(v18) = 1.0;
  LODWORD(v19) = 1054280253;
  LODWORD(v20) = 1058306785;
  *&v3[v16] = [v17 initWithControlPoints__:v19 :{0.0, v20, v18}];
  v21 = OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_warpTimingFunction;
  v22 = objc_allocWithZone(MEMORY[0x1E69793D0]);
  LODWORD(v23) = 1.0;
  LODWORD(v24) = 1054280253;
  LODWORD(v25) = 1058306785;
  *&v3[v21] = [v22 initWithControlPoints__:v24 :{0.0, v25, v23}];
  *&v3[OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_warpTimingSpeed] = 0x400C000000000000;
  *&v3[OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_textureTransitionMix] = 0;
  *&v3[OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_pinchMix] = 0;
  v26 = OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_uniforms;
  if (qword_1EDA4E5C0 != -1)
  {
    swift_once();
  }

  memmove(&v3[v26], &dword_1EDA5DB90, 0x170uLL);
  v27 = OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_spectrumAnalysis;
  type metadata accessor for SpectrumAnalysis();
  swift_allocObject();
  *&v3[v27] = sub_1C5BA98F0();
  __asm { FMOV            V0.2S, #1.0 }

  *&v3[OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_aspectRatio] = _D0;
  v33 = &v3[OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_context];
  *v33 = v4;
  *(v33 + 1) = v5;
  *(v33 + 2) = v6;
  *(v33 + 3) = v7;
  *(v33 + 4) = v8;
  v33[40] = v9;
  *&v44 = v4;
  *(&v44 + 1) = v5;
  v45 = v6;
  v46 = v7;
  v47 = v8;
  v48 = v9;
  type metadata accessor for Backdrop.TextureBlender();
  v34 = swift_allocObject();
  swift_unknownObjectRetain_n();
  swift_unknownObjectRetain_n();
  swift_unknownObjectRetain_n();
  v35 = v7;
  sub_1C5ADB2C8(&v44);
  *&v44 = v4;
  *(&v44 + 1) = v5;
  v45 = v6;
  v46 = v35;
  v47 = v8;
  v48 = v9;
  type metadata accessor for Backdrop.RotatingArtworkRenderer();
  v36 = swift_allocObject();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v37 = v35;
  sub_1C5ADC320(&v44);
  *&v44 = v4;
  *(&v44 + 1) = v5;
  v45 = v6;
  v46 = v37;
  v47 = v8;
  v48 = v9;
  type metadata accessor for Backdrop.PinchRenderer();
  v38 = swift_allocObject();
  sub_1C5AD9D58(&v44, v42 & 1);
  v39 = &v3[OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_renderers];
  *v39 = v34;
  v39[1] = v36;
  v39[2] = v38;
  v43.receiver = v3;
  v43.super_class = type metadata accessor for Backdrop.CompositeRenderer();
  v40 = objc_msgSendSuper2(&v43, sel_init);
  sub_1C5AD70F8();

  return v40;
}

__n128 sub_1C5AD6E34()
{
  v1 = v0 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_renderers;
  v2 = *(*(v0 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_renderers + 8) + 40) < *(*(v0 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_renderers + 8) + 32);
  v3 = OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_spectrumAnalysis;
  swift_beginAccess();
  v4 = *(*(v0 + v3) + 64) == 1.0;
  v5 = v0 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_environment;
  *v5 = v2;
  v6 = vcltz_s32(vshl_n_s32(vdup_n_s32(v4), 0x1FuLL));
  v7.n128_u64[0] = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(v2), 0x1FuLL)), vbsl_s8(v6, 0x42F000004019999ALL, 0x434800004039999ALL), vbsl_s8(v6, 0x42AA000040000000, 0x432000004019999ALL));
  v10 = v7;
  *(v5 + 4) = v7.n128_u64[0];
  *(*(v1 + 16) + 112) = v2;
  v8 = v0 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_uniforms;
  swift_beginAccess();
  result = v10;
  *(v8 + 340) = v10.n128_u32[0];
  return result;
}

void sub_1C5AD6F38(float a1)
{
  v2 = *(v1 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_pinchMix);
  if (v2 != a1)
  {
    v3 = OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_state;
    if (v2 >= 1.0 || v2 <= 0.0)
    {
      swift_beginAccess();
      v5 = *(v1 + v3);
      *(v1 + v3) = 0;
      if (v5 != 1)
      {
        return;
      }
    }

    else
    {
      swift_beginAccess();
      v4 = *(v1 + v3);
      *(v1 + v3) = 1;
      if (v4)
      {
        return;
      }
    }

    v6 = OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_observer;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v7 = *(v1 + v6 + 8);
      ObjectType = swift_getObjectType();
      (*(v7 + 8))(v1, ObjectType, v7);
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1C5AD7048(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_spectrumAnalysis;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

void sub_1C5AD70F8()
{
  sub_1C5ADDF3C();
  v2 = *(v1 + 16);
  if (!v2)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v2 == 1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v2 >= 3)
  {
    v14 = *(v1 + 48);
    v15 = *(v1 + 32);
    v12 = *(v1 + 80);
    v13 = *(v1 + 64);
    v11 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1C5BDA760, COERCE_FLOAT(*(v1 + 96))), xmmword_1C5BDA770, *(v1 + 96), 1), xmmword_1C5BDA780, *(v1 + 96), 2), xmmword_1C5BE6EA0, *(v1 + 96), 3);
    v10 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1C5BDA760, COERCE_FLOAT(*(v1 + 112))), xmmword_1C5BDA770, *(v1 + 112), 1), xmmword_1C5BDA780, *(v1 + 112), 2), xmmword_1C5BE6EA0, *(v1 + 112), 3);
    v9 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1C5BDA760, COERCE_FLOAT(*(v1 + 128))), xmmword_1C5BDA770, *(v1 + 128), 1), xmmword_1C5BDA780, *(v1 + 128), 2), xmmword_1C5BE6EA0, *(v1 + 128), 3);
    v8 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1C5BDA760, COERCE_FLOAT(*(v1 + 144))), xmmword_1C5BDA770, *(v1 + 144), 1), xmmword_1C5BDA780, *(v1 + 144), 2), xmmword_1C5BE6EA0, *(v1 + 144), 3);
    v6 = *(v1 + 176);
    v7 = *(v1 + 160);
    v4 = *(v1 + 208);
    v5 = *(v1 + 192);

    v3 = v0 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_uniforms;
    swift_beginAccess();
    *(v3 + 80) = v15;
    *(v3 + 96) = v14;
    *(v3 + 112) = v13;
    *(v3 + 128) = v12;
    *(v3 + 144) = -1;
    *(v3 + 148) = 1123024896;
    *(v3 + 160) = v11;
    *(v3 + 176) = v10;
    *(v3 + 192) = v9;
    *(v3 + 208) = v8;
    *(v3 + 224) = -1;
    *(v3 + 228) = 1116471296;
    *(v3 + 240) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1C5BDA760, v7.f32[0]), xmmword_1C5BDA770, *v7.f32, 1), xmmword_1C5BDA780, v7, 2), xmmword_1C5BE6EB0, v7, 3);
    *(v3 + 256) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1C5BDA760, v6.f32[0]), xmmword_1C5BDA770, *v6.f32, 1), xmmword_1C5BDA780, v6, 2), xmmword_1C5BE6EB0, v6, 3);
    *(v3 + 272) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1C5BDA760, v5.f32[0]), xmmword_1C5BDA770, *v5.f32, 1), xmmword_1C5BDA780, v5, 2), xmmword_1C5BE6EB0, v5, 3);
    *(v3 + 288) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1C5BDA760, v4.f32[0]), xmmword_1C5BDA770, *v4.f32, 1), xmmword_1C5BDA780, v4, 2), xmmword_1C5BE6EB0, v4, 3);
    *(v3 + 304) = 0;
    *(v3 + 308) = 1119092736;
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_1C5AD72D4(uint64_t result, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7)
{
  if (a5 & 1) != 0 || (v8 = *(a6 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_imageStorage)) == 0 || (v9 = result, v10 = a6, v11 = a7, sub_1C592535C(0, &qword_1EDA4E5E0), v12 = v8, v13 = sub_1C5BCB744(), v12, a7 = v11, a6 = v10, result = v9, (v13))
  {
    v14 = 1.0;
    if (a7)
    {
      v14 = 0.0;
    }

    *(a6 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_textureTransitionMix) = v14;
    v15 = *(a6 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_renderers);
    *(v15 + 96) = result;
    swift_unknownObjectRetain();
    result = swift_unknownObjectRelease();
    *(v15 + 104) = 1;
  }

  if (a2)
  {
    return a2(result);
  }

  return result;
}

uint64_t sub_1C5AD73C8(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v41 = a3;
  v39 = a1;
  v8 = sub_1C5BCAC14();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1C5BCAC44();
  v38 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v37 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    v14 = a2;
    if (qword_1EDA4E6D0 != -1)
    {
      swift_once();
    }

    v15 = sub_1C5BC7D64();
    __swift_project_value_buffer(v15, qword_1EDA4E6E0);
    v16 = a2;
    v17 = sub_1C5BC7D44();
    v18 = sub_1C5BCB4D4();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v35 = a5;
      v20 = v19;
      v21 = swift_slowAlloc();
      v36 = v9;
      v34 = v21;
      aBlock[0] = v21;
      *v20 = 136315138;
      swift_getErrorValue();
      v22 = sub_1C5BCBEE4();
      v24 = sub_1C592ADA8(v22, v23, aBlock);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_1C5922000, v17, v18, "Error loading texture: %s", v20, 0xCu);
      v25 = v34;
      __swift_destroy_boxed_opaque_existential_0(v34);
      v9 = v36;
      MEMORY[0x1C69510F0](v25, -1, -1);
      v26 = v20;
      a5 = v35;
      MEMORY[0x1C69510F0](v26, -1, -1);
    }

    else
    {
    }

    v13 = v37;
  }

  sub_1C592535C(0, &qword_1EDA4E620);
  v27 = sub_1C5BCB5A4();
  v28 = swift_allocObject();
  v29 = v41;
  v28[2] = v41;
  v28[3] = a4;
  v30 = v39;
  v28[4] = a5;
  v28[5] = v30;
  aBlock[4] = sub_1C5ADEE44;
  aBlock[5] = v28;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C596D09C;
  aBlock[3] = &block_descriptor_218;
  v31 = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  v32 = v29;

  sub_1C5BCAC34();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1C5ADEE50(&qword_1EDA4E6A0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1961C0);
  sub_1C5A3437C();
  sub_1C5BCB8F4();
  MEMORY[0x1C694F7F0](0, v13, v11, v31);
  _Block_release(v31);

  (*(v9 + 8))(v11, v8);
  return (*(v38 + 8))(v13, v40);
}

uint64_t sub_1C5AD782C(void *a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  if (qword_1EDA4E6D0 != -1)
  {
    swift_once();
  }

  v7 = sub_1C5BC7D64();
  __swift_project_value_buffer(v7, qword_1EDA4E6E0);
  v8 = a1;
  v9 = sub_1C5BC7D44();
  v10 = sub_1C5BCB4F4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 136315138;
    type metadata accessor for CGImage(0);
    sub_1C5ADEE50(&qword_1EDA4E678, type metadata accessor for CGImage);
    sub_1C5BC7C44();
    v13 = sub_1C5BCBD64();
    v15 = sub_1C592ADA8(v13, v14, &v17);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_1C5922000, v9, v10, "finished loading texture CGImage %s using MTKTextureLoader", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x1C69510F0](v12, -1, -1);
    MEMORY[0x1C69510F0](v11, -1, -1);
  }

  return a2(a4);
}

id sub_1C5AD7A10(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [objc_opt_self() texture2DDescriptorWithPixelFormat:80 width:1 height:1 mipmapped:0];
  v4 = [*(v1 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_context) newTextureWithDescriptor_];
  if (v4)
  {
    v13 = 0.0;
    v14 = 0.0;
    v12 = 0.0;
    [a1 getRed:&v14 green:&v13 blue:&v12 alpha:0];
    v5 = v12 * 255.0;
    if (COERCE__INT64(fabs(v12 * 255.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v5 > -1.0)
    {
      if (v5 < 256.0)
      {
        v15[0] = v5;
        v6 = v13 * 255.0;
        if (COERCE__INT64(fabs(v13 * 255.0)) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v6 > -1.0)
          {
            if (v6 < 256.0)
            {
              v15[1] = v6;
              v7 = v14 * 255.0;
              if (COERCE__INT64(fabs(v14 * 255.0)) <= 0x7FEFFFFFFFFFFFFFLL)
              {
                if (v7 > -1.0)
                {
                  if (v7 < 256.0)
                  {
                    v15[2] = v7;
                    v15[3] = -1;
                    memset(v9, 0, sizeof(v9));
                    v10 = vdupq_n_s64(1uLL);
                    v11 = 1;
                    [v4 replaceRegion:v9 mipmapLevel:0 withBytes:v15 bytesPerRow:4];
                    goto LABEL_12;
                  }

LABEL_21:
                  __break(1u);
                }

LABEL_20:
                __break(1u);
                goto LABEL_21;
              }

LABEL_19:
              __break(1u);
              goto LABEL_20;
            }

LABEL_18:
            __break(1u);
            goto LABEL_19;
          }

LABEL_17:
          __break(1u);
          goto LABEL_18;
        }

LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    __break(1u);
    goto LABEL_15;
  }

LABEL_12:

  return v4;
}

id Backdrop.CompositeRenderer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id Backdrop.CompositeRenderer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Backdrop.CompositeRenderer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1C5AD7DFC(void *a1, float a2)
{
  v5 = v2 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_uniforms;
  swift_beginAccess();
  *v5 = *v5 + a2;
  swift_beginAccess();
  sub_1C5BAA068();
  *&v6 = sub_1C5BA9A40();
  *(v5 + 352) = v6;
  sub_1C5AD8018(a2 + a2);
  v7 = *(v2 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_warpTimingSpeed);
  v8 = 0.5;
  *(v5 + 324) = (sinf(*v5 / v7) + 1.0) * 0.5;
  if (a1)
  {
    if ([a1 userInterfaceStyle] == 1)
    {
      v8 = 0.35;
    }
  }

  *(v5 + 348) = v8;
  *(v5 + 344) = 1036831949;
  LODWORD(v9) = *(v2 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_pinchMix);
  [*(v2 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_modeTimingFunction) _solveForInput_];
  *(v5 + 328) = v10;
  LODWORD(v11) = *(v2 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_textureTransitionMix);
  result = [*(v2 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_crossfadeTimingFunction) _solveForInput_];
  *(v5 + 320) = v13;
  *(v5 + 332) = 1082130432;
  v14 = *(v2 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_renderers + 8);
  v15 = *(v14 + 32);
  if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v15 <= -32769.0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v15 >= 32768.0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  *(v5 + 336) = v15;
  v16 = *(v14 + 40);
  if ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v16 <= -32769.0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v16 < 32768.0)
  {
    *(v5 + 338) = v16;
    return result;
  }

LABEL_16:
  __break(1u);
  return result;
}

void sub_1C5AD8018(float a1)
{
  v3 = (v1 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_crossfadeDuration);
  swift_beginAccess();
  v4 = a1 / *v3;
  v5 = v4 + *(v1 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_textureTransitionMix);
  if (v5 > 1.0)
  {
    v5 = 1.0;
  }

  *(v1 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_textureTransitionMix) = v5;
  v6 = OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_spectrumAnalysis;
  swift_beginAccess();
  v7 = *(v1 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_pinchMix);
  v8 = v7 - v4;
  if ((v7 - v4) <= 0.0)
  {
    v8 = 0.0;
  }

  v9 = v4 + v7;
  if ((v4 + v7) > 1.0)
  {
    v9 = 1.0;
  }

  if (*(*(v1 + v6) + 64) == 1.0)
  {
    v10 = v9;
  }

  else
  {
    v10 = v8;
  }

  *(v1 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_pinchMix) = v10;
  sub_1C5AD6F38(v7);
  v11 = *(v1 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_renderers + 8);
  v12 = *(v11 + 24);
  v13 = *(v1 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_environment + 8);
  v14 = -1.0;
  if (v13 < v12 || (v14 = 1.0, v12 < v13))
  {
    *(v11 + 24) = v12 + v14;
    sub_1C5ADD180();
  }
}

void sub_1C5AD8138(double a1, double a2, double a3)
{
  v4 = v3;
  v6 = a2;
  v7 = a1;
  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    if (qword_1EDA4E6D0 != -1)
    {
      swift_once();
    }

    v8 = sub_1C5BC7D64();
    __swift_project_value_buffer(v8, qword_1EDA4E6E0);
    v9 = sub_1C5BC7D44();
    v10 = sub_1C5BCB4B4();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1C5922000, v9, v10, "Tried to resize with non-finite size, falling back to 1x1 size", v11, 2u);
      MEMORY[0x1C69510F0](v11, -1, -1);
    }

    v7 = 1.0;
    v6 = 1.0;
  }

  v12 = v7 / v6;
  v13 = 1.0 / v12;
  if (v12 < 1.0)
  {
    v12 = 1.0;
  }

  else
  {
    v13 = 1.0;
  }

  v14 = (v4 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_aspectRatio);
  *v14 = v13;
  v14[1] = v12;
  v22 = LODWORD(v13);
  LODWORD(v15) = 0;
  *(&v15 + 1) = v12;
  v21 = v15;
  v16 = (v4 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_uniforms);
  swift_beginAccess();
  v16[1] = v22;
  v16[2] = v21;
  v16[3] = xmmword_1C5BDA780;
  v16[4] = xmmword_1C5BDA790;
  v17 = *(v4 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_renderers + 8);
  v18 = *(v17 + 32);
  v19 = *(v17 + 40);
  *(v17 + 32) = v7;
  *(v17 + 40) = v6;
  *(v17 + 48) = a3;
  if (v7 != v18 || v6 != v19)
  {
    sub_1C5ADCFA8(*(v17 + 56));
    sub_1C5ADD180();
  }

  sub_1C5AD6E34();
}

uint64_t static Backdrop.CompositeRenderer.snapshot(configuration:)(uint64_t *a1)
{
  v3 = sub_1C5BC7CA4();
  *(v1 + 160) = v3;
  *(v1 + 168) = *(v3 - 8);
  *(v1 + 176) = swift_task_alloc();
  v4 = swift_task_alloc();
  v5 = *a1;
  *(v1 + 184) = v4;
  *(v1 + 192) = v5;
  *(v1 + 200) = *(a1 + 1);
  *(v1 + 216) = *(a1 + 3);
  *(v1 + 232) = a1[5];

  return MEMORY[0x1EEE6DFA0](sub_1C5AD840C, 0, 0);
}

uint64_t sub_1C5AD840C()
{
  v33 = v0;
  if (qword_1EDA4E2D0 != -1)
  {
    swift_once();
  }

  v1 = sub_1C5BC7CE4();
  __swift_project_value_buffer(v1, qword_1EDA5DB78);
  sub_1C5BC7C94();
  v2 = sub_1C5BC7CC4();
  v3 = sub_1C5BCB5E4();
  if (sub_1C5BCB7E4())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = sub_1C5BC7C84();
    _os_signpost_emit_with_name_impl(&dword_1C5922000, v2, v3, v5, "Backdrop Snapshot Generation", "", v4, 2u);
    MEMORY[0x1C69510F0](v4, -1, -1);
  }

  v6 = *(v0 + 176);
  v7 = *(v0 + 184);
  v8 = *(v0 + 160);
  v9 = *(v0 + 168);

  (*(v9 + 16))(v6, v7, v8);
  sub_1C5BC7D24();
  swift_allocObject();
  *(v0 + 240) = sub_1C5BC7D14();
  (*(v9 + 8))(v7, v8);
  if (qword_1EDA4F008 != -1)
  {
    swift_once();
  }

  v11 = qword_1EDA4F010;
  v10 = qword_1EDA4F018;
  *(v0 + 248) = qword_1EDA4F010;
  *(v0 + 256) = v10;
  v12 = qword_1EDA4F020;
  v13 = qword_1EDA4F028;
  *(v0 + 264) = qword_1EDA4F020;
  *(v0 + 272) = v13;
  v14 = qword_1EDA4F030;
  *(v0 + 280) = qword_1EDA4F030;
  v15 = byte_1EDA4F038;
  *(v0 + 360) = byte_1EDA4F038;
  if (v11)
  {
    v16 = *(v0 + 192);
    v30[0] = v11;
    v30[1] = v10;
    v30[2] = v12;
    v30[3] = v13;
    v30[4] = v14;
    v31 = v15 & 1;
    v32[0] = 2;
    v17 = objc_allocWithZone(type metadata accessor for Backdrop.CompositeRenderer());
    swift_unknownObjectRetain_n();
    swift_unknownObjectRetain_n();
    swift_unknownObjectRetain_n();
    v18 = v13;
    v19 = Backdrop.CompositeRenderer.init(context:configuration:)(v30, v32);
    *(v0 + 288) = v19;
    v20 = *&v19[OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_pinchMix];
    *&v19[OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_pinchMix] = 1065353216;
    sub_1C5AD6F38(v20);
    v21 = &v19[OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_environment];
    *v21 = 0;
    *(v21 + 4) = 0x42AA000040000000;
    *(*&v19[OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_renderers + 16] + 112) = 0;
    v22 = &v19[OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_uniforms];
    swift_beginAccess();
    *(v22 + 85) = 0x40000000;
    v23 = OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_spectrumAnalysis;
    swift_beginAccess();
    *(*&v19[v23] + 64) = 1065353216;
    sub_1C5AD6E34();
    v24 = swift_task_alloc();
    *(v0 + 296) = v24;
    *(v24 + 16) = v19;
    *(v24 + 24) = v16;
    *(v24 + 32) = 0;
    v25 = swift_task_alloc();
    *(v0 + 304) = v25;
    *v25 = v0;
    v25[1] = sub_1C5AD8844;
    v26 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DDE0](v25, 0, 0, 0xD00000000000001ALL, 0x80000001C5BFAE30, sub_1C5ADEEA0, v24, v26);
  }

  else
  {
    sub_1C5ADD408();
    swift_allocError();
    *v27 = 2;
    swift_willThrow();
    sub_1C5ADDFC4();

    v28 = *(v0 + 8);

    return v28();
  }
}

uint64_t sub_1C5AD8844()
{

  return MEMORY[0x1EEE6DFA0](sub_1C5AD895C, 0, 0);
}

uint64_t sub_1C5AD895C()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 216);
  v3 = *(v0 + 200);
  sub_1C5AD8138(v3, *(v0 + 208), v2);
  v4 = objc_opt_self();
  v5 = OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_framebufferPixelFormat;
  result = swift_beginAccess();
  v7 = v2 * v3;
  if (v2 * v3 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v7 >= 9.22337204e18)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v8 = *(v0 + 216) * *(v0 + 208);
  v9 = COERCE__INT64(fabs(v8)) > 0x7FEFFFFFFFFFFFFFLL;
  if (COERCE__INT64(fabs(v2 * v3)) > 0x7FEFFFFFFFFFFFFFLL || v9)
  {
    goto LABEL_18;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v8 >= 9.22337204e18)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v10 = *(v1 + v5);
  v11 = *(v0 + 288);
  v12 = [v4 texture2DDescriptorWithPixelFormat:v10 width:v7 height:v8 mipmapped:0];
  *(v0 + 312) = v12;
  [v12 setStorageMode_];
  [v12 setUsage_];
  v13 = [*(v11 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_context) newTextureWithDescriptor_];
  *(v0 + 320) = v13;
  if (v13)
  {
    v14 = v13;
    v15 = objc_allocWithZone(MEMORY[0x1E6974128]);
    swift_unknownObjectRetain();
    v16 = [v15 init];
    *(v0 + 328) = v16;
    v17 = [v16 colorAttachments];
    v18 = [v17 objectAtIndexedSubscript_];
    *(v0 + 336) = v18;

    if (v18)
    {
      v19 = *(v0 + 232);
      v20 = *(v0 + 224);
      v21 = v18;
      [v21 setTexture_];
      [v21 setLoadAction_];

      [v21 setClearColor_];
      v22 = v20;
      sub_1C5AD7DFC(v19, v22);
      v23 = swift_task_alloc();
      *(v0 + 344) = v23;
      *v23 = v0;
      v23[1] = sub_1C5AD8D7C;

      return sub_1C5AD92CC(v16);
    }

    else
    {
      return sub_1C5BCBBC4();
    }
  }

  else
  {
    v24 = *(v0 + 288);
    v25 = *(v0 + 264);
    v30 = *(v0 + 272);
    v27 = *(v0 + 248);
    v26 = *(v0 + 256);
    sub_1C5ADD408();
    swift_allocError();
    *v28 = 5;
    swift_willThrow();

    sub_1C5ADE250(v27, v26, v25, v30);
    sub_1C5ADDFC4();

    v29 = *(v0 + 8);

    return v29();
  }
}

uint64_t sub_1C5AD8D7C()
{
  *(*v1 + 352) = v0;

  if (v0)
  {
    v2 = sub_1C5AD91DC;
  }

  else
  {
    v2 = sub_1C5AD8E90;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1C5AD8E90()
{
  v1 = *(v0 + 320);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197390);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C5BCFF00;
  v3 = *MEMORY[0x1E695F9A8];
  *(inited + 32) = *MEMORY[0x1E695F9A8];
  v4 = v3;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  type metadata accessor for CGColorSpace(0);
  *(inited + 64) = v6;
  *(inited + 40) = DeviceRGB;
  sub_1C59AE750(inited);
  swift_setDeallocating();
  sub_1C5924EF4(inited + 32, &qword_1EC191848);
  v7 = objc_allocWithZone(MEMORY[0x1E695F658]);
  type metadata accessor for CIImageOption(0);
  sub_1C5ADEE50(&qword_1EDA4E140, type metadata accessor for CIImageOption);
  swift_unknownObjectRetain();
  v8 = sub_1C5BCACA4();

  v9 = [v7 initWithMTLTexture:v1 options:v8];

  swift_unknownObjectRelease();
  v11 = *(v0 + 328);
  v10 = *(v0 + 336);
  v12 = *(v0 + 312);
  v22 = *(v0 + 272);
  v13 = *(v0 + 256);
  v20 = *(v0 + 288);
  v21 = *(v0 + 264);
  v14 = *(v0 + 248);
  if (v9)
  {
    v15 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCIImage:v9 scale:4 orientation:*(v0 + 216)];

    swift_unknownObjectRelease_n();
    sub_1C5ADE250(v14, v13, v21, v22);
    sub_1C5ADDFC4();

    v16 = *(v0 + 8);

    return v16(v15);
  }

  else
  {
    sub_1C5ADD408();
    swift_allocError();
    *v18 = 6;
    swift_willThrow();

    swift_unknownObjectRelease_n();
    sub_1C5ADE250(v14, v13, v21, v22);
    sub_1C5ADDFC4();

    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_1C5AD91DC()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 312);
  v3 = *(v0 + 288);
  v4 = *(v0 + 264);
  v9 = *(v0 + 272);
  v6 = *(v0 + 248);
  v5 = *(v0 + 256);

  swift_unknownObjectRelease_n();
  sub_1C5ADE250(v6, v5, v4, v9);
  sub_1C5ADDFC4();

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1C5AD92CC(uint64_t a1)
{
  *(v2 + 136) = a1;
  *(v2 + 144) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C5AD92EC, 0, 0);
}

uint64_t sub_1C5AD92EC()
{
  v1 = *(v0[18] + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_context + 8);
  v0[16] = &unk_1F455D550;
  v0[19] = v1;
  v2 = swift_dynamicCastObjCProtocolConditional();
  if (v2)
  {
    v3 = v2;
    swift_unknownObjectRetain();
    [v3 setBackgroundGPUPriority_];
    v4 = [v3 commandBuffer];
    v0[20] = v4;
    if (v4)
    {
      v5 = v4;
      v6 = v0[17];
      v7 = v0[18];
      v8 = v7 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_renderers;
      v9 = *(v7 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_renderers);
      v10 = OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_uniforms;
      swift_beginAccess();
      sub_1C5ADBDD4(v5, v7 + v10);
      swift_endAccess();
      v11 = *(v8 + 8);
      *(v11 + 152) = *(v9 + 40);
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      swift_beginAccess();
      sub_1C5ADC474(v5, v7 + v10);
      swift_endAccess();
      *(*(v8 + 16) + 32) = *(v11 + 168);
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      swift_beginAccess();
      sub_1C5ADA240(v5, v7 + v10, v6);
      swift_endAccess();

      return MEMORY[0x1EEE6DFA0](sub_1C5AD9560, 0, 0);
    }

    sub_1C5ADD408();
    swift_allocError();
    *v13 = 1;
    swift_willThrow();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1C5ADD408();
    swift_allocError();
    *v12 = 3;
    swift_willThrow();
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_1C5AD9560()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0[20];
  v1[2] = v2;
  v1[3] = sub_1C5AD96B0;
  v6 = swift_continuation_init();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v1[14] = sub_1C5ADED98;
  v1[15] = v7;
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_1C5AC79C8;
  v1[13] = &block_descriptor_16;
  v8 = _Block_copy(v4);

  [v5 addCompletedHandler_];
  _Block_release(v8);
  [v5 commit];

  return MEMORY[0x1EEE6DEC8](v3);
}

uint64_t sub_1C5AD96B0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    swift_willThrow();
    v2 = sub_1C5AD9838;
  }

  else
  {
    v2 = sub_1C5AD97CC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1C5AD97CC()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C5AD9838()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C5AD98A4()
{
  v0 = sub_1C5BC7CE4();
  __swift_allocate_value_buffer(v0, qword_1EDA5DB78);
  __swift_project_value_buffer(v0, qword_1EDA5DB78);
  return sub_1C5BC7CD4();
}

Swift::Void __swiftcall Backdrop.CompositeRenderer.mtkView(_:drawableSizeWillChange:)(MTKView *_, CGSize drawableSizeWillChange)
{
  height = drawableSizeWillChange.height;
  width = drawableSizeWillChange.width;
  v4 = [(MTKView *)_ traitCollection];
  [v4 displayScale];
  v6 = v5;

  sub_1C5AD8138(width, height, v6);
}

Swift::Void __swiftcall Backdrop.CompositeRenderer.draw(in:)(MTKView *in)
{
  if ((*(v1 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer__isPaused) & 1) == 0)
  {
    v16 = [(MTKView *)in layer];
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      v4 = [v3 isDrawableAvailable];

      if (v4)
      {
        v5 = UIAccessibilityIsReduceMotionEnabled() ? 0.0016667 : 0.016667;
        v6 = [(MTKView *)in traitCollection];
        sub_1C5AD7DFC(v6, v5);
        v7 = v1;

        v8 = [*(v1 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_context + 8) commandBuffer];
        if (v8)
        {
          v9 = v8;
          v10 = v1 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_renderers;
          v11 = *(v1 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_renderers);
          v12 = OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_uniforms;
          swift_beginAccess();
          sub_1C5ADBDD4(v9, v7 + v12);
          swift_endAccess();
          v13 = *(v10 + 8);
          *(v13 + 152) = *(v11 + 40);
          swift_unknownObjectRetain();
          swift_unknownObjectRelease();
          swift_beginAccess();
          sub_1C5ADC474(v9, v7 + v12);
          swift_endAccess();
          *(*(v10 + 16) + 32) = *(v13 + 168);
          swift_unknownObjectRetain();
          swift_unknownObjectRelease();
          v14 = [(MTKView *)in currentRenderPassDescriptor];
          swift_beginAccess();
          sub_1C5ADA240(v9, v7 + v12, v14);
          swift_endAccess();

          v15 = [(MTKView *)in currentDrawable];
          if (v15)
          {
            [v9 presentDrawable_];
            swift_unknownObjectRelease();
          }

          [v9 commit];
          swift_unknownObjectRelease();
        }
      }
    }

    else
    {
    }
  }
}

void *sub_1C5AD9D58(uint64_t a1, char a2)
{
  v3 = v2;
  v4 = *a1;
  v5 = *(a1 + 8);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  *(v3 + 16) = 80;
  *(v3 + 112) = 0;
  *(v3 + 168) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 120) = v4;
  *(v3 + 128) = v5;
  *(v3 + 136) = v7;
  *(v3 + 144) = v6;
  *(v3 + 152) = v8;
  *(v3 + 160) = v9;
  v46 = v4;
  swift_unknownObjectRetain_n();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v44 = v6;
  sub_1C5AAFCD0(1, &v47);
  v10 = v50;
  v11 = v51;
  v12 = *MEMORY[0x1E6979700];
  v13 = [objc_allocWithZone(MEMORY[0x1E69793D8]) initWithVertexCount:*(v47 + 2) vertices:v47 + 32 faceCount:*(v48 + 16) faces:v48 + 32 depthNormalization:*MEMORY[0x1E6979700]];
  v14 = [v13 subdividedMesh_];

  v15 = [objc_allocWithZone(MEMORY[0x1E69793D8]) initWithVertexCount:*(v10 + 16) vertices:v10 + 32 faceCount:*(v11 + 16) faces:v11 + 32 depthNormalization:v12];

  v16 = [v15 subdividedMesh_];

  result = sub_1C5A2DBCC(v16);
  v19 = result[2];
  if (v19 >> 57)
  {
    __break(1u);
    goto LABEL_9;
  }

  v20 = result;
  v21 = v18;
  v22 = v19 << 6;

  result = [v46 newBufferWithBytes:v20 + 4 length:v22 options:0];
  v23 = *(v21 + 16);
  if (v23 + 0x4000000000000000 < 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v24 = result;
  v25 = 2 * v23;
  swift_unknownObjectRetain();
  v26 = [v46 newBufferWithBytes:v21 + 32 length:v25 options:0];
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  *(v3 + 48) = v20;
  *(v3 + 56) = v21;
  *(v3 + 64) = v24;
  *(v3 + 72) = v26;
  swift_unknownObjectRetain();
  sub_1C5AAFCD0(0, &v47);
  v27 = v50;
  v28 = v51;
  v29 = [objc_allocWithZone(MEMORY[0x1E69793D8]) initWithVertexCount:*(v47 + 2) vertices:v47 + 32 faceCount:*(v48 + 16) faces:v48 + 32 depthNormalization:v12];
  v30 = [v29 subdividedMesh_];

  v31 = [objc_allocWithZone(MEMORY[0x1E69793D8]) initWithVertexCount:*(v27 + 16) vertices:v27 + 32 faceCount:*(v28 + 16) faces:v28 + 32 depthNormalization:v12];

  v32 = [v31 subdividedMesh_];

  result = sub_1C5A2DBCC(v32);
  v34 = result[2];
  if (v34 >> 57)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v35 = result;
  v36 = v33;
  v37 = v34 << 6;

  result = [v46 newBufferWithBytes:v35 + 4 length:v37 options:0];
  v38 = *(v36 + 16);
  if (v38 + 0x4000000000000000 < 0)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v39 = result;
  v40 = 2 * v38;
  swift_unknownObjectRetain();
  v41 = [v46 newBufferWithBytes:v36 + 32 length:v40 options:0];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease_n();

  swift_unknownObjectRelease();

  *(v3 + 80) = v35;
  *(v3 + 88) = v36;
  *(v3 + 96) = v39;
  *(v3 + 104) = v41;
  *(v3 + 24) = a2 & 1;
  v42 = *(v3 + 120);
  v49 = &type metadata for Features;
  v50 = sub_1C5A2E158();
  v43 = swift_allocObject();
  v47 = v43;
  *(v43 + 16) = "MediaCoreUI";
  *(v43 + 24) = 11;
  *(v43 + 32) = 2;
  *(v43 + 40) = "BackdropLUT";
  *(v43 + 48) = 11;
  *(v43 + 56) = 2;
  LOBYTE(v39) = sub_1C5BC7C14();
  __swift_destroy_boxed_opaque_existential_0(&v47);
  if (v39)
  {
    *(v3 + 40) = sub_1C5ADDB3C(v42);
    swift_unknownObjectRelease();
  }

  *(v3 + 168) = sub_1C5ADAC30(*(v3 + 40) != 0);
  swift_unknownObjectRelease();
  return v3;
}

void sub_1C5ADA240(void *a1, uint64_t a2, void *a3)
{
  v4 = *(v3 + 168);
  if (!v4)
  {
    return;
  }

  if (*(v3 + 112) == 1)
  {
    v5 = *(v3 + 64);
    if (!v5)
    {
      return;
    }

    v6 = *(v3 + 72);
    if (!v6)
    {
      return;
    }
  }

  else
  {
    v5 = *(v3 + 96);
    if (!v5)
    {
      return;
    }

    v6 = *(v3 + 104);
    if (!v6)
    {
      return;
    }
  }

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v10 = *(v3 + 32);
  if (!v10 || !a3)
  {
    swift_unknownObjectRelease();
LABEL_16:

    swift_unknownObjectRelease();
    return;
  }

  swift_unknownObjectRetain();
  v15 = a3;
  swift_unknownObjectRetain();
  v11 = [a1 renderCommandEncoderWithDescriptor_];
  if (v11)
  {
    v12 = v11;
    v13 = sub_1C5BCAE44();
    [v12 setLabel_];

    [v12 setRenderPipelineState_];
    [v12 setVertexBuffer:v5 offset:0 atIndex:0];
    [v12 setVertexBytes:a2 length:368 atIndex:1];
    [v12 setFragmentBytes:a2 length:368 atIndex:1];
    [v12 setFragmentTexture:v10 atIndex:0];
    [v12 setFragmentTexture:*(v3 + 40) atIndex:1];
    v14 = 88;
    if (*(v3 + 112))
    {
      v14 = 56;
    }

    [v12 drawIndexedPrimitives:3 indexCount:*(*(v3 + v14) + 16) indexType:0 indexBuffer:v6 indexBufferOffset:0 instanceCount:1];
    [v12 endEncoding];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    goto LABEL_16;
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

void *sub_1C5ADA4EC()
{
  result = sub_1C5ADA50C();
  off_1EDA4ED88 = result;
  return result;
}

uint64_t sub_1C5ADA50C()
{
  if (qword_1EDA4E5D0 != -1)
  {
    goto LABEL_75;
  }

  while (1)
  {
    v0 = qword_1EDA5DD00;
    v1 = sub_1C5BCAE44();
    v2 = [objc_opt_self() imageNamed:v1 inBundle:v0];

    if (!v2 || (v3 = [v2 CGImage], v2, !v3))
    {
      if (qword_1EDA4E6D0 != -1)
      {
        goto LABEL_80;
      }

      goto LABEL_12;
    }

    if (CGImageGetWidth(v3) != 32 || CGImageGetHeight(v3) != 1024)
    {
      if (qword_1EDA4E6D0 != -1)
      {
        swift_once();
      }

      v13 = sub_1C5BC7D64();
      __swift_project_value_buffer(v13, qword_1EDA4E6E0);
      v3 = v3;
      v14 = sub_1C5BC7D44();
      v15 = sub_1C5BCB4D4();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 134219008;
        *(v16 + 4) = CGImageGetWidth(v3);
        *(v16 + 12) = 2048;
        *(v16 + 14) = CGImageGetHeight(v3);

        *(v16 + 22) = 2048;
        *(v16 + 24) = 32;
        *(v16 + 32) = 2048;
        *(v16 + 34) = 32;
        *(v16 + 42) = 2048;
        *(v16 + 44) = 32;
        _os_log_impl(&dword_1C5922000, v14, v15, "Incorrect dimension for LUT image. Provided: %ldx%ld. Expected: %ldx(%ldx%ld)", v16, 0x34u);
        MEMORY[0x1C69510F0](v16, -1, -1);
      }

      else
      {
      }

      goto LABEL_19;
    }

    Width = CGImageGetWidth(v3);
    if ((Width - 0x2000000000000000) >> 62 != 3)
    {
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      swift_once();
LABEL_31:
      v28 = sub_1C5BC7D64();
      __swift_project_value_buffer(v28, qword_1EDA4E6E0);
      v29 = sub_1C5BC7D44();
      v30 = sub_1C5BCB4D4();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_1C5922000, v29, v30, "Couldn't build context for reading LUT image data", v31, 2u);
        MEMORY[0x1C69510F0](v31, -1, -1);
      }

      goto LABEL_19;
    }

    v5 = 4 * Width;
    Height = CGImageGetHeight(v3);
    v7 = Height * v5;
    if ((Height * v5) >> 64 != (Height * v5) >> 63)
    {
      goto LABEL_82;
    }

    if ((v7 & 0x8000000000000000) != 0)
    {
      goto LABEL_83;
    }

    v8 = MEMORY[0x1E69E7CC0];
    if (v7)
    {
      v9 = sub_1C5BCB0C4();
      *(v9 + 16) = v7;
      bzero((v9 + 32), v7);
    }

    else
    {
      v9 = MEMORY[0x1E69E7CC0];
    }

    v19 = CGImageGetWidth(v3);
    v20 = CGImageGetHeight(v3);
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    v22 = __CGBitmapContextCreate((v9 + 32), v19, v20, v5, DeviceRGB, 1u);

    if (!v22)
    {
      if (qword_1EDA4E6D0 == -1)
      {
        goto LABEL_31;
      }

      goto LABEL_85;
    }

    CGImageGetWidth(v3);
    CGImageGetHeight(v3);
    sub_1C5BCB494();
    v23 = *(v9 + 16);
    if (v23)
    {
      v24 = 0;
      v25 = 0;
      while (1)
      {
        v26 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          break;
        }

        v27 = __OFADD__(v25, 4096);
        v25 += 4096;
        if (v27)
        {
          v25 = 0x7FFFFFFFFFFFFFFFLL;
        }

        ++v24;
        if (v25 >= v23)
        {
          goto LABEL_35;
        }
      }

      __break(1u);
      goto LABEL_72;
    }

    v26 = 0;
LABEL_35:
    sub_1C5B8F120(0, v26 & ~(v26 >> 63), 0);
    if (v26 < 0)
    {
      goto LABEL_84;
    }

    v17 = v8;
    v49 = v22;
    if (!v26)
    {
      break;
    }

    v32 = 0;
    v33 = 0x7FFFFFFFFFFFF000;
    while (v32 < v23)
    {
      if (!v33)
      {
        goto LABEL_73;
      }

      v34 = v32 + 4096;
      v35 = *(v9 + 16);
      if (v35 < v32 || v35 < v34)
      {
        goto LABEL_74;
      }

      if (v35 == 4096)
      {

        v37 = v9;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193638);
        v37 = swift_allocObject();
        v40 = _swift_stdlib_malloc_size(v37);
        v37[2] = 4096;
        v37[3] = 2 * v40 - 64;
        memcpy(v37 + 4, (v9 + v32 + 32), 0x1000uLL);
      }

      v39 = *(v17 + 16);
      v38 = *(v17 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_1C5B8F120((v38 > 1), v39 + 1, 1);
      }

      *(v17 + 16) = v39 + 1;
      *(v17 + 8 * v39 + 32) = v37;
      v33 -= 4096;
      v32 += 4096;
      if (!--v26)
      {
        if (v34 < v23)
        {
          goto LABEL_55;
        }

        goto LABEL_70;
      }
    }

LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    swift_once();
  }

  if (v23)
  {
    v34 = 0;
LABEL_55:
    v41 = v34;
    while (1)
    {
      v42 = v41 + 4096;
      if (__OFADD__(v41, 4096))
      {
        break;
      }

      if (v42 < v41)
      {
        goto LABEL_77;
      }

      if (v34 < 0)
      {
        goto LABEL_78;
      }

      v43 = *(v9 + 16);
      if (v43 < v41 || v43 < v42)
      {
        goto LABEL_79;
      }

      if (v43 == 4096)
      {

        v45 = v9;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193638);
        v45 = swift_allocObject();
        v48 = _swift_stdlib_malloc_size(v45);
        v45[2] = 4096;
        v45[3] = 2 * v48 - 64;
        memcpy(v45 + 4, (v9 + v41 + 32), 0x1000uLL);
      }

      v47 = *(v17 + 16);
      v46 = *(v17 + 24);
      if (v47 >= v46 >> 1)
      {
        sub_1C5B8F120((v46 > 1), v47 + 1, 1);
      }

      *(v17 + 16) = v47 + 1;
      *(v17 + 8 * v47 + 32) = v45;
      v41 += 4096;
      if (v42 >= v23)
      {
        goto LABEL_70;
      }
    }

    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    swift_once();
LABEL_12:
    v10 = sub_1C5BC7D64();
    __swift_project_value_buffer(v10, qword_1EDA4E6E0);
    v3 = sub_1C5BC7D44();
    v11 = sub_1C5BCB4D4();
    if (os_log_type_enabled(v3, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1C5922000, v3, v11, "Couldn't load LUT image", v12, 2u);
      MEMORY[0x1C69510F0](v12, -1, -1);
    }

LABEL_19:

    return 0;
  }

LABEL_70:

  return v17;
}

id sub_1C5ADAC30(char a1)
{
  v44[2] = *MEMORY[0x1E69E9840];
  v3 = v1[15];
  v5 = v1[17];
  v4 = v1[18];
  v6 = objc_allocWithZone(MEMORY[0x1E6974060]);
  v40 = v3;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v39 = v4;
  v7 = [v6 init];
  LOBYTE(v44[0]) = a1;
  [v7 setConstantValue:v44 type:53 atIndex:0];
  v8 = sub_1C5BCAE44();
  v41 = 0;
  v9 = [v5 newFunctionWithName:v8 constantValues:v7 error:&v41];

  if (v9)
  {
    v10 = v41;
  }

  else
  {
    v11 = v41;
    v12 = sub_1C5BC7914();

    swift_willThrow();
  }

  v13 = sub_1C5BCAE44();
  v41 = 0;
  v14 = [v5 newFunctionWithName:v13 constantValues:v7 error:&v41];

  if (v14)
  {
    v15 = v41;
  }

  else
  {
    v16 = v41;
    v17 = sub_1C5BC7914();

    swift_willThrow();
  }

  v18 = [objc_allocWithZone(MEMORY[0x1E6974148]) init];
  v19 = sub_1C5BCAE44();
  [v18 setLabel_];

  [v18 setVertexFunction_];
  [v18 setFragmentFunction_];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  if (qword_1EDA4EDC0 != -1)
  {
    swift_once();
  }

  [v18 setVertexDescriptor_];
  v20 = [v18 colorAttachments];
  v21 = [v20 objectAtIndexedSubscript_];

  if (!v21)
  {
    if (qword_1EDA4E6D0 != -1)
    {
      swift_once();
    }

    v24 = sub_1C5BC7D64();
    __swift_project_value_buffer(v24, qword_1EDA4E6E0);
    v25 = sub_1C5BC7D44();
    v26 = sub_1C5BCB4D4();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_1C5922000, v25, v26, "Could not create pipeline for pinch. Missing color attachments", v27, 2u);
      MEMORY[0x1C69510F0](v27, -1, -1);
    }

    return 0;
  }

  [v21 setPixelFormat_];
  v41 = 0;
  v22 = [v40 newRenderPipelineStateWithDescriptor:v18 error:&v41];
  v23 = v41;
  if (!v22)
  {
    v28 = v23;
    v29 = sub_1C5BC7914();

    swift_willThrow();
    v44[0] = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930D0);
    sub_1C592535C(0, &qword_1EC195458);
    swift_dynamicCast();
    v30 = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC197420);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1C5BCFF00;
    v41 = 0;
    v42 = 0xE000000000000000;
    sub_1C5BCBA94();

    v41 = 0xD00000000000001FLL;
    v42 = 0x80000001C5BFB420;
    v32 = [v30 description];
    v33 = sub_1C5BCAE74();
    v35 = v34;

    MEMORY[0x1C694F170](v33, v35);

    v36 = v41;
    v37 = v42;
    *(v31 + 56) = MEMORY[0x1E69E6158];
    *(v31 + 32) = v36;
    *(v31 + 40) = v37;
    sub_1C5BCBF34();

    return 0;
  }

  return v22;
}

uint64_t sub_1C5ADB204()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void *sub_1C5ADB2C8(__int128 *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 4);
  v5 = *(a1 + 40);
  *(v1 + 16) = 115;
  *(v1 + 24) = vdupq_n_s64(0x4060000000000000uLL);
  *(v1 + 40) = 0;
  *(v1 + 96) = 0;
  *(v1 + 104) = 0;
  *(v1 + 112) = 0;
  v12 = v2;
  if (qword_1EDA4EDB8 != -1)
  {
    v11 = v3;
    swift_once();
    v3 = v11;
    v2 = v12;
  }

  result = qword_1EDA5DDD0;
  *(v1 + 120) = qword_1EDA5DDD0;
  *(v1 + 128) = &unk_1F45189A8;
  *(v1 + 160) = 0;
  *(v1 + 168) = 0;
  *(v1 + 152) = 0;
  *(v1 + 48) = v2;
  *(v1 + 64) = v3;
  *(v1 + 80) = v4;
  *(v1 + 88) = v5;
  v7 = result[2];
  if (v7 >> 57)
  {
    __break(1u);
  }

  else
  {
    result = [v12 newBufferWithBytes:+ 32 length:v7 << 6 options:0];
    *(v1 + 136) = result;
    v8 = *(v1 + 128);
    v9 = *(v8 + 16);
    if (v9 + 0x4000000000000000 >= 0)
    {
      *(v1 + 144) = [*(v1 + 48) newBufferWithBytes:v8 + 32 length:2 * v9 options:0];
      *(v1 + 160) = sub_1C5ADB894();
      swift_unknownObjectRelease();
      v10 = swift_unknownObjectRetain();
      sub_1C5ADBC3C(v10);
      swift_unknownObjectRelease();
      return v1;
    }
  }

  __break(1u);
  return result;
}

id sub_1C5ADB42C()
{
  v1 = *(v0 + 152);
  if (v1)
  {
    v2 = *(v0 + 152);
  }

  else
  {
    v3 = sub_1C5ADB484();
    v4 = *(v0 + 152);
    *(v0 + 152) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t sub_1C5ADB484()
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = v0[8];
  v1 = v0[9];
  v3 = objc_allocWithZone(MEMORY[0x1E6974060]);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v24 = v1;
  v4 = [v3 init];
  v26 = 0;
  [v4 setConstantValue:&v26 type:53 atIndex:0];
  v5 = sub_1C5BCAE44();
  v25[0] = 0;
  v6 = [v2 newFunctionWithName:v5 constantValues:v4 error:v25];

  if (v6)
  {
    v7 = v25[0];
  }

  else
  {
    v8 = v25[0];
    v9 = sub_1C5BC7914();

    swift_willThrow();
  }

  v10 = sub_1C5BCAE44();
  v25[0] = 0;
  v11 = [v2 newFunctionWithName:v10 constantValues:v4 error:v25];

  if (v11)
  {
    v12 = v25[0];
  }

  else
  {
    v13 = v25[0];
    v14 = sub_1C5BC7914();

    swift_willThrow();
  }

  v15 = [objc_allocWithZone(MEMORY[0x1E6974148]) init];
  v16 = sub_1C5BCAE44();
  [v15 setLabel_];

  [v15 setVertexFunction_];
  [v15 setFragmentFunction_];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v17 = [v15 colorAttachments];
  v18 = [v17 objectAtIndexedSubscript_];

  if (v18)
  {
    [v18 setPixelFormat_];
    if (qword_1EDA4EDC0 != -1)
    {
      swift_once();
    }

    [v15 setVertexDescriptor_];

    return v15;
  }

  else
  {
    v25[0] = 0;
    v25[1] = 0xE000000000000000;
    sub_1C5BCBA94();
    MEMORY[0x1C694F170](0xD000000000000036, 0x80000001C5BFB460);
    v20 = [v15 description];
    v21 = sub_1C5BCAE74();
    v23 = v22;

    MEMORY[0x1C694F170](v21, v23);

    result = sub_1C5BCBBC4();
    __break(1u);
  }

  return result;
}

id sub_1C5ADB894()
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 48);
  v2 = sub_1C5ADB42C();
  v16 = 0;
  v3 = [v1 newRenderPipelineStateWithDescriptor:v2 error:&v16];

  v4 = v16;
  if (!v3)
  {
    v5 = v4;
    v6 = sub_1C5BC7914();

    swift_willThrow();
    v19 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930D0);
    sub_1C592535C(0, &qword_1EC195458);
    swift_dynamicCast();
    v7 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC197420);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1C5BCFF00;
    v16 = 0;
    v17 = 0xE000000000000000;
    sub_1C5BCBA94();

    v16 = 0xD00000000000001FLL;
    v17 = 0x80000001C5BFB420;
    v9 = [v7 description];
    v10 = sub_1C5BCAE74();
    v12 = v11;

    MEMORY[0x1C694F170](v10, v12);

    v13 = v16;
    v14 = v17;
    *(v8 + 56) = MEMORY[0x1E69E6158];
    *(v8 + 32) = v13;
    *(v8 + 40) = v14;
    sub_1C5BCBF34();

    return 0;
  }

  return v3;
}

uint64_t sub_1C5ADBA8C()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E6974128]) init];
  v2 = [v1 colorAttachments];
  v3 = [v2 objectAtIndexedSubscript_];

  if (v3)
  {
    v4 = *(v0 + 40);
    v5 = v3;
    [v5 setTexture_];
    [v5 setLoadAction_];
    [v5 setStoreAction_];

    [v5 setClearColor_];
    return v1;
  }

  else
  {
    sub_1C5BCBA94();
    MEMORY[0x1C694F170](0xD000000000000032, 0x80000001C5BFB280);
    v7 = [v1 description];
    v8 = sub_1C5BCAE74();
    v10 = v9;

    MEMORY[0x1C694F170](v8, v10);

    result = sub_1C5BCBBC4();
    __break(1u);
  }

  return result;
}

void sub_1C5ADBC3C(void *a1)
{
  v2 = *(v1 + 24);
  if (v2 <= 0.0)
  {
    return;
  }

  v3 = *(v1 + 32);
  if (v3 <= 0.0)
  {
    return;
  }

  if (v2 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v2 >= 9.22337204e18)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (*&v2 >> 52 > 0x7FEuLL || *&v3 >> 52 > 0x7FEuLL)
  {
    goto LABEL_15;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v5 = [objc_opt_self() texture2DDescriptorWithPixelFormat:*(v1 + 16) width:v2 height:v3 mipmapped:0];
  [v5 setStorageMode_];
  [v5 setUsage_];
  *(v1 + 40) = [a1 newTextureWithDescriptor_];
  swift_unknownObjectRelease();
  *(v1 + 112) = [a1 newTextureWithDescriptor_];
  swift_unknownObjectRelease();
  v6 = sub_1C5ADBA8C();

  v7 = *(v1 + 168);
  *(v1 + 168) = v6;
}

void sub_1C5ADBDD4(void *a1, uint64_t a2)
{
  v3 = *(v2 + 160);
  if (v3)
  {
    v4 = *(v2 + 136);
    if (v4)
    {
      v5 = *(v2 + 144);
      if (v5)
      {
        v6 = *(v2 + 96);
        if (v6)
        {
          if (*(v2 + 104) == 1 && (v7 = *(v2 + 40)) != 0)
          {
            v8 = a1;
            v9 = a2;
            v10 = *(v2 + 112);
            if (v10)
            {
              swift_unknownObjectRetain();
              swift_unknownObjectRetain();
              swift_unknownObjectRetain();
              swift_unknownObjectRetain();
              swift_unknownObjectRetain();
              swift_unknownObjectRetain();
              v11 = [v8 blitCommandEncoder];
              if (v11)
              {
                v12 = v11;
                [v11 copyFromTexture:v7 toTexture:v10];
                *(v2 + 104) = 0;
                [v12 endEncoding];
                swift_unknownObjectRelease();
              }

              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              if (!*(v2 + 168))
              {
                goto LABEL_22;
              }

LABEL_19:
              v16 = [v8 renderCommandEncoderWithDescriptor_];
              if (v16)
              {
                v17 = v16;
                v18 = sub_1C5BCAE44();
                [v17 setLabel_];

                [v17 setRenderPipelineState_];
                [v17 setVertexBuffer:v4 offset:0 atIndex:0];
                [v17 setVertexBytes:v9 length:368 atIndex:1];
                [v17 setFragmentTexture:v6 atIndex:0];
                [v17 setFragmentTexture:*(v2 + 112) atIndex:1];
                [v17 setFragmentBytes:v9 length:368 atIndex:1];
                [v17 drawIndexedPrimitives:3 indexCount:*(*(v2 + 128) + 16) indexType:0 indexBuffer:v5 indexBufferOffset:0 instanceCount:1];
                [v17 endEncoding];
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
LABEL_27:

                swift_unknownObjectRelease();
                return;
              }

LABEL_22:
              if (qword_1EDA4E6D0 != -1)
              {
                swift_once();
              }

              v19 = sub_1C5BC7D64();
              __swift_project_value_buffer(v19, qword_1EDA4E6E0);
              v20 = sub_1C5BC7D44();
              v21 = sub_1C5BCB4D4();
              if (os_log_type_enabled(v20, v21))
              {
                v22 = swift_slowAlloc();
                *v22 = 0;
                _os_log_impl(&dword_1C5922000, v20, v21, "Could not create command encoder", v22, 2u);
                MEMORY[0x1C69510F0](v22, -1, -1);
              }

              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              goto LABEL_27;
            }
          }

          else
          {
            v8 = a1;
            v9 = a2;
          }

          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          if (!*(v2 + 168))
          {
            goto LABEL_22;
          }

          goto LABEL_19;
        }
      }
    }
  }

  if (qword_1EDA4E6D0 != -1)
  {
    swift_once();
  }

  v13 = sub_1C5BC7D64();
  __swift_project_value_buffer(v13, qword_1EDA4E6E0);
  oslog = sub_1C5BC7D44();
  v14 = sub_1C5BCB4B4();
  if (os_log_type_enabled(oslog, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1C5922000, oslog, v14, "Could not encode texture blender, missing required value", v15, 2u);
    MEMORY[0x1C69510F0](v15, -1, -1);
  }
}

id *sub_1C5ADC250()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1C5ADC2EC()
{
  sub_1C5ADC250();

  return swift_deallocClassInstance();
}

uint64_t sub_1C5ADC320(uint64_t a1)
{
  *(v1 + 120) = 0u;
  *(v1 + 136) = 0u;
  *(v1 + 152) = 0u;
  *(v1 + 168) = 0u;
  v2 = *(a1 + 16);
  *(v1 + 56) = *a1;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  *(v1 + 16) = 115;
  *(v1 + 24) = 1117782016;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0x3FF0000000000000;
  *(v1 + 72) = v2;
  *(v1 + 88) = v3;
  *(v1 + 96) = v4;
  if (qword_1EDA4EDB8 != -1)
  {
    swift_once();
  }

  result = qword_1EDA5DDD0;
  *(v1 + 104) = qword_1EDA5DDD0;
  *(v1 + 112) = &unk_1F45189A8;
  v6 = *(result + 16);
  if (v6 >> 57)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 120) = [*(v1 + 56) newBufferWithBytes:+ 32 length:v6 << 6 options:0];
    result = swift_unknownObjectRelease();
    v7 = *(v1 + 112);
    v8 = *(v7 + 16);
    if (v8 + 0x4000000000000000 >= 0)
    {
      *(v1 + 128) = [*(v1 + 56) newBufferWithBytes:v7 + 32 length:2 * v8 options:0];
      swift_unknownObjectRelease();
      *(v1 + 136) = sub_1C5ADCC14();
      swift_unknownObjectRelease();
      return v1;
    }
  }

  __break(1u);
  return result;
}

void sub_1C5ADC474(void *a1, uint64_t a2)
{
  v3 = v2[17];
  if (v3)
  {
    v4 = v2[15];
    if (v4)
    {
      v5 = v2[16];
      if (v5)
      {
        v6 = v2[20];
        if (v6)
        {
          v7 = v2[21];
          if (v7)
          {
            v8 = v2[18];
            if (v8)
            {
              swift_unknownObjectRetain();
              swift_unknownObjectRetain();
              swift_unknownObjectRetain();
              swift_unknownObjectRetain();
              swift_unknownObjectRetain();
              v11 = a1;
              v12 = [a1 renderCommandEncoderWithDescriptor_];
              if (v12)
              {
                v13 = v12;
                v14 = sub_1C5BCAE44();
                [v13 setLabel_];

                [v13 setRenderPipelineState_];
                [v13 setVertexBuffer:v4 offset:0 atIndex:0];
                [v13 setVertexBytes:a2 length:368 atIndex:1];
                [v13 setFragmentBytes:a2 length:368 atIndex:1];
                [v13 setFragmentTexture:v2[19] atIndex:0];
                [v13 drawIndexedPrimitives:3 indexCount:*(v2[14] + 16) indexType:0 indexBuffer:v5 indexBufferOffset:0 instanceCount:3];
                [v13 endEncoding];
                v15 = v2[22];
                if (v15)
                {
                  v16 = v15;
                  [v16 encodeToCommandBuffer:v11 sourceTexture:v6 destinationTexture:v7];
                }

                swift_unknownObjectRelease();
LABEL_24:
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();

                swift_unknownObjectRelease();
                return;
              }
            }

            else
            {
              swift_unknownObjectRetain();
              swift_unknownObjectRetain();
              swift_unknownObjectRetain();
              swift_unknownObjectRetain();
              swift_unknownObjectRetain();
            }

            if (qword_1EDA4E6D0 != -1)
            {
              swift_once();
            }

            v20 = sub_1C5BC7D64();
            __swift_project_value_buffer(v20, qword_1EDA4E6E0);
            v21 = sub_1C5BC7D44();
            v22 = sub_1C5BCB4D4();
            if (os_log_type_enabled(v21, v22))
            {
              v23 = swift_slowAlloc();
              *v23 = 0;
              _os_log_impl(&dword_1C5922000, v21, v22, "Could not create command Encoder", v23, 2u);
              MEMORY[0x1C69510F0](v23, -1, -1);
            }

            goto LABEL_24;
          }
        }
      }
    }
  }

  if (qword_1EDA4E6D0 != -1)
  {
    swift_once();
  }

  v17 = sub_1C5BC7D64();
  __swift_project_value_buffer(v17, qword_1EDA4E6E0);
  oslog = sub_1C5BC7D44();
  v18 = sub_1C5BCB4B4();
  if (os_log_type_enabled(oslog, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_1C5922000, oslog, v18, "Could not encode rotating artwork, missing required value", v19, 2u);
    MEMORY[0x1C69510F0](v19, -1, -1);
  }
}

uint64_t sub_1C5ADC860()
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = v0[9];
  v1 = v0[10];
  v3 = objc_allocWithZone(MEMORY[0x1E6974060]);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v20 = v1;
  v4 = [v3 init];
  v22 = 0;
  [v4 setConstantValue:&v22 type:53 atIndex:0];
  v5 = sub_1C5BCAE44();
  v21 = 0;
  v6 = [v2 newFunctionWithName:v5 constantValues:v4 error:&v21];

  if (v6)
  {
    v7 = v21;
  }

  else
  {
    v8 = v21;
    v9 = sub_1C5BC7914();

    swift_willThrow();
  }

  v10 = sub_1C5BCAE44();
  v21 = 0;
  v11 = [v2 newFunctionWithName:v10 constantValues:v4 error:&v21];

  if (v11)
  {
    v12 = v21;
  }

  else
  {
    v13 = v21;
    v14 = sub_1C5BC7914();

    swift_willThrow();
  }

  v15 = [objc_allocWithZone(MEMORY[0x1E6974148]) init];
  v16 = sub_1C5BCAE44();
  [v15 setLabel_];

  [v15 setVertexFunction_];
  [v15 setFragmentFunction_];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v17 = [v15 colorAttachments];
  v18 = [v17 objectAtIndexedSubscript_];

  if (v18)
  {
    [v18 setPixelFormat_];
    [v18 setBlendingEnabled_];
    if (qword_1EDA4EDC0 != -1)
    {
      swift_once();
    }

    [v15 setVertexDescriptor_];

    return v15;
  }

  else
  {
    result = sub_1C5BCBBC4();
    __break(1u);
  }

  return result;
}

id sub_1C5ADCC14()
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 56);
  v2 = sub_1C5ADC860();
  v16 = 0;
  v3 = [v1 newRenderPipelineStateWithDescriptor:v2 error:&v16];

  v4 = v16;
  if (!v3)
  {
    v5 = v4;
    v6 = sub_1C5BC7914();

    swift_willThrow();
    v19 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930D0);
    sub_1C592535C(0, &qword_1EC195458);
    swift_dynamicCast();
    v7 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC197420);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1C5BCFF00;
    v16 = 0;
    v17 = 0xE000000000000000;
    sub_1C5BCBA94();

    v16 = 0xD00000000000001FLL;
    v17 = 0x80000001C5BFB420;
    v9 = [v7 description];
    v10 = sub_1C5BCAE74();
    v12 = v11;

    MEMORY[0x1C694F170](v10, v12);

    v13 = v16;
    v14 = v17;
    *(v8 + 56) = MEMORY[0x1E69E6158];
    *(v8 + 32) = v13;
    *(v8 + 40) = v14;
    sub_1C5BCBF34();

    return 0;
  }

  return v3;
}

uint64_t sub_1C5ADCE0C()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E6974128]) init];
  v2 = [v1 colorAttachments];
  v3 = [v2 objectAtIndexedSubscript_];

  if (v3)
  {
    v4 = *(v0 + 160);
    v5 = v3;
    [v5 setTexture_];
    [v5 setLoadAction_];

    [v5 setClearColor_];
    return v1;
  }

  else
  {
    sub_1C5BCBA94();
    MEMORY[0x1C694F170](0xD000000000000032, 0x80000001C5BFB280);
    v7 = [v1 description];
    v8 = sub_1C5BCAE74();
    v10 = v9;

    MEMORY[0x1C694F170](v8, v10);

    result = sub_1C5BCBBC4();
    __break(1u);
  }

  return result;
}

void sub_1C5ADCFA8(void *a1)
{
  v2 = *(v1 + 32);
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v2 >= 9.22337204e18)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v3 = v2;
  v4 = v2 + 3;
  if (v2 >= 0)
  {
    v4 = v2;
  }

  v5 = *(v1 + 40);
  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_23;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v5 >= 9.22337204e18)
  {
LABEL_25:
    __break(1u);
    return;
  }

  v6 = v5;
  if (v3 < 4 || v6 < 4)
  {
    *(v1 + 160) = 0;
    swift_unknownObjectRelease();
    *(v1 + 168) = 0;

    swift_unknownObjectRelease();
  }

  else
  {
    v9 = [objc_opt_self() texture2DDescriptorWithPixelFormat:*(v1 + 16) width:v4 >> 2 height:v6 >> 2 mipmapped:0];
    [v9 setStorageMode_];
    [v9 setUsage_];
    *(v1 + 160) = [a1 newTextureWithDescriptor_];
    swift_unknownObjectRelease();
    *(v1 + 168) = [a1 newTextureWithDescriptor_];
    swift_unknownObjectRelease();
    v10 = sub_1C5ADCE0C();

    v11 = *(v1 + 144);
    *(v1 + 144) = v10;
  }
}

id sub_1C5ADD180()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24) / (4.0 / v1);
  v3 = *(v0 + 176);
  if (!v3 || (result = [v3 sigma], v2 != v5))
  {
    v6 = *(v0 + 56);
    v7 = objc_allocWithZone(MEMORY[0x1E69745C0]);
    *&v8 = v2;
    *(v0 + 176) = [v7 initWithDevice:v6 sigma:v8];

    return MEMORY[0x1EEE66BB8]();
  }

  return result;
}

id *sub_1C5ADD224()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_1C5ADD2C0()
{
  sub_1C5ADD224();

  return swift_deallocClassInstance();
}

uint64_t sub_1C5ADD2F4()
{
  v0 = sub_1C5BC7D64();
  __swift_allocate_value_buffer(v0, qword_1EDA4E6E0);
  __swift_project_value_buffer(v0, qword_1EDA4E6E0);
  return sub_1C5BC7D54();
}

unint64_t sub_1C5ADD408()
{
  result = qword_1EC197388;
  if (!qword_1EC197388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC197388);
  }

  return result;
}

void sub_1C5ADD45C(void *a1, char a2, uint64_t a3, void (*a4)(void), uint64_t a5, void *a6, char a7, void *a8, char a9)
{
  aBlock[12] = *MEMORY[0x1E69E9840];
  v17 = swift_allocObject();
  *(v17 + 16) = a4;
  *(v17 + 24) = a5;
  *(v17 + 32) = a6;
  v59 = a7;
  *(v17 + 40) = a7 & 1;
  *(v17 + 48) = a8;
  *(v17 + 56) = a9;
  v61 = a4;
  sub_1C5974664(a4, a5);
  v18 = qword_1EDA4E6D0;
  v19 = a6;
  v20 = a8;
  if (v18 != -1)
  {
    swift_once();
  }

  v21 = sub_1C5BC7D64();
  __swift_project_value_buffer(v21, qword_1EDA4E6E0);
  v22 = a1;
  v23 = sub_1C5BC7D44();
  v24 = sub_1C5BCB4F4();

  v60 = v20;
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    aBlock[0] = v26;
    *v25 = 136315394;
    type metadata accessor for CGImage(0);
    sub_1C5ADEE50(&qword_1EDA4E678, type metadata accessor for CGImage);
    sub_1C5BC7C44();
    v27 = sub_1C5BCBD64();
    v29 = a3;
    v30 = sub_1C592ADA8(v27, v28, aBlock);

    *(v25 + 4) = v30;
    a3 = v29;
    *(v25 + 12) = 1024;
    *(v25 + 14) = a2 & 1;
    _os_log_impl(&dword_1C5922000, v23, v24, "beginning loading texture CGImage: %s, async: %{BOOL}d using MTKTextureLoader", v25, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x1C69510F0](v26, -1, -1);
    MEMORY[0x1C69510F0](v25, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197410);
  inited = swift_initStackObject();
  v32 = MEMORY[0x1E69743F8];
  *(inited + 16) = xmmword_1C5BCFF00;
  v33 = *v32;
  *(inited + 32) = v33;
  *(inited + 40) = 0;
  v34 = v33;
  v35 = sub_1C59AE660(inited);
  swift_setDeallocating();
  sub_1C5924EF4(inited + 32, &qword_1EC197418);
  v36 = *(a3 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_context + 24);
  sub_1C5A0F2F8(v35);

  type metadata accessor for Option(0);
  sub_1C5ADEE50(&qword_1EDA4E610, type metadata accessor for Option);
  v37 = sub_1C5BCACA4();

  if (a2)
  {
    v38 = swift_allocObject();
    v38[2] = v22;
    v38[3] = sub_1C5ADEE20;
    v38[4] = v17;
    aBlock[4] = sub_1C5ADEE38;
    aBlock[5] = v38;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C5B51CC4;
    aBlock[3] = &block_descriptor_212;
    v39 = _Block_copy(aBlock);
    v40 = v22;

    [v36 newTextureWithCGImage:v40 options:v37 completionHandler:v39];
    _Block_release(v39);
  }

  else
  {
    aBlock[0] = 0;
    v41 = [v36 newTextureWithCGImage:v22 options:v37 error:aBlock];

    v42 = aBlock[0];
    if (v41)
    {
      v43 = v41;
    }

    else
    {
      v44 = v42;
      v45 = sub_1C5BC7914();

      swift_willThrow();
      v43 = 0;
    }

    v46 = v22;
    v47 = sub_1C5BC7D44();
    v48 = sub_1C5BCB4F4();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      aBlock[0] = v50;
      *v49 = 136315138;
      type metadata accessor for CGImage(0);
      sub_1C5ADEE50(&qword_1EDA4E678, type metadata accessor for CGImage);
      sub_1C5BC7C44();
      v51 = sub_1C5BCBD64();
      v53 = sub_1C592ADA8(v51, v52, aBlock);

      *(v49 + 4) = v53;
      _os_log_impl(&dword_1C5922000, v47, v48, "finished loading texture CGImage %s using MTKTextureLoader", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v50);
      MEMORY[0x1C69510F0](v50, -1, -1);
      MEMORY[0x1C69510F0](v49, -1, -1);
    }

    if (v59 & 1) != 0 || (v54 = *&v60[OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_imageStorage]) == 0 || (sub_1C592535C(0, &qword_1EDA4E5E0), v55 = v54, v56 = sub_1C5BCB744(), v55, (v56))
    {
      v57 = 1.0;
      if (a9)
      {
        v57 = 0.0;
      }

      *&v60[OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_textureTransitionMix] = v57;
      v58 = *&v60[OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_renderers];
      *(v58 + 96) = v43;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      *(v58 + 104) = 1;
    }

    if (v61)
    {
      v61();
    }

    swift_unknownObjectRelease();
  }
}

void *sub_1C5ADDB3C(id a1)
{
  if (qword_1EDA4ED78 != -1)
  {
LABEL_27:
    v19 = a1;
    swift_once();
    a1 = v19;
  }

  v1 = off_1EDA4ED88;
  if (off_1EDA4ED88 && *(off_1EDA4ED88 + 2) == 32)
  {
    v2 = a1;
    v3 = [objc_allocWithZone(MEMORY[0x1E69741C0]) init];
    [v3 setTextureType:7];
    [v3 setPixelFormat:70];
    [v3 setWidth:32];
    [v3 setHeight:32];
    [v3 setDepth:32];
    [v3 setUsage:1];
    a1 = [v2 newTextureWithDescriptor_];
    if (a1)
    {
      v4 = a1;
      v5 = 0;
      v20 = vdupq_n_s64(0x20uLL);
      while (1)
      {
        if (v5 >= v1[2])
        {
          __break(1u);
          goto LABEL_27;
        }

        v6 = v1[v5 + 4];
        if (*(v6 + 16) != 4096)
        {
          break;
        }

        v7 = v5 + 1;
        v21[0] = 0;
        v21[1] = 0;
        v21[2] = v5;
        v22 = v20;
        v23 = 1;
        a1 = [v4 replaceRegion:v21 mipmapLevel:0 slice:0 withBytes:v6 + 32 bytesPerRow:128 bytesPerImage:4096];
        v5 = v7;
        if (v7 == 32)
        {

          return v4;
        }
      }

      if (qword_1EDA4E6D0 != -1)
      {
        swift_once();
      }

      v15 = sub_1C5BC7D64();
      __swift_project_value_buffer(v15, qword_1EDA4E6E0);
      v12 = sub_1C5BC7D44();
      v16 = sub_1C5BCB4D4();
      if (os_log_type_enabled(v12, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_1C5922000, v12, v16, "Invalid LUT data", v17, 2u);
        MEMORY[0x1C69510F0](v17, -1, -1);
      }

      swift_unknownObjectRelease();
    }

    else
    {
      if (qword_1EDA4E6D0 != -1)
      {
        swift_once();
      }

      v11 = sub_1C5BC7D64();
      __swift_project_value_buffer(v11, qword_1EDA4E6E0);
      v12 = sub_1C5BC7D44();
      v13 = sub_1C5BCB4D4();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_1C5922000, v12, v13, "Couldn't build LUT texture", v14, 2u);
        MEMORY[0x1C69510F0](v14, -1, -1);
      }
    }
  }

  else
  {
    if (qword_1EDA4E6D0 != -1)
    {
      swift_once();
    }

    v8 = sub_1C5BC7D64();
    __swift_project_value_buffer(v8, qword_1EDA4E6E0);
    v3 = sub_1C5BC7D44();
    v9 = sub_1C5BCB4D4();
    if (os_log_type_enabled(v3, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1C5922000, v3, v9, "LUT image data not available", v10, 2u);
      MEMORY[0x1C69510F0](v10, -1, -1);
    }
  }

  return 0;
}

double sub_1C5ADDF3C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197408);
  v0 = swift_allocObject();
  v0[1] = xmmword_1C5BD21E0;
  v0[2] = xmmword_1C5BE6EC0;
  v0[3] = xmmword_1C5BE6ED0;
  v0[4] = xmmword_1C5BDA780;
  result = 0.0;
  v0[5] = xmmword_1C5BDA790;
  v0[6] = xmmword_1C5BE6EE0;
  v0[7] = xmmword_1C5BE6EF0;
  v0[8] = xmmword_1C5BDA780;
  v0[9] = xmmword_1C5BDA790;
  v0[10] = xmmword_1C5BE6EE0;
  v0[11] = xmmword_1C5BE6EF0;
  v0[12] = xmmword_1C5BDA780;
  v0[13] = xmmword_1C5BDA790;
  return result;
}

uint64_t sub_1C5ADDFC4()
{
  v0 = sub_1C5BC7CF4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C5BC7CA4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDA4E2D0 != -1)
  {
    swift_once();
  }

  v8 = sub_1C5BC7CE4();
  __swift_project_value_buffer(v8, qword_1EDA5DB78);
  v9 = sub_1C5BC7CC4();
  sub_1C5BC7D04();
  v10 = sub_1C5BCB5D4();
  if (sub_1C5BCB7E4())
  {

    sub_1C5BC7D34();

    if ((*(v1 + 88))(v3, v0) == *MEMORY[0x1E69E93E8])
    {
      v11 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1 + 8))(v3, v0);
      v11 = "";
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = sub_1C5BC7C84();
    _os_signpost_emit_with_name_impl(&dword_1C5922000, v9, v10, v13, "Backdrop Snapshot Generation", v11, v12, 2u);
    MEMORY[0x1C69510F0](v12, -1, -1);
  }

  return (*(v5 + 8))(v7, v4);
}

void sub_1C5ADE250(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a1)
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }
}

unint64_t sub_1C5ADE2B4()
{
  result = qword_1EC197398;
  if (!qword_1EC197398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC197398);
  }

  return result;
}

uint64_t keypath_get_10Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = swift_beginAccess();
  *a3 = *(v4 + v5);
  return result;
}

uint64_t dispatch thunk of Backdrop.CompositeRenderer.setImageAsync(_:animated:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x1F8);
  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C592ABD4;

  return v9(a1, a2);
}

uint64_t getEnumTagSinglePayload for Backdrop.Specs.Environment(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[12])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for Backdrop.Specs.Environment(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 12) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 12) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11MediaCoreUI8BackdropO5ErrorO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C5ADECA4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFF9 && *(a1 + 8))
  {
    return (*a1 + 2147483641);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) < 2)
  {
    LODWORD(v3) = 0;
  }

  if (v3 >= 7)
  {
    return (v3 - 6);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C5ADED08(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF9)
  {
    *result = 0;
    *result = a2 - 2147483641;
    if (a3 >= 0x7FFFFFF9)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF9)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 6;
    }
  }

  return result;
}

void *sub_1C5ADED58(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    *result = a2;
  }

  return result;
}

uint64_t sub_1C5ADEE50(unint64_t *a1, void (*a2)(uint64_t))
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

id static WaveformTheme.color(palette:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v9 = *(a1 + 24);
  *a2 = *a1;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v9;
  *(a2 + 32) = 0;
  v5 = v2;
  v6 = v3;
  v7 = v4;

  return v9;
}

id static WaveformTheme.artwork(image:)@<X0>(id a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 1;
  return a1;
}

double static WaveformTheme.automatic.getter@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 2;
  return result;
}

void MCUINamespace<A>.waveformTheme(_:)(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  swift_getKeyPath();
  sub_1C5ADF038(v1, v2, v3, v4, v5);
  sub_1C5BC9DF4();

  sub_1C5ADF09C(v1, v2, v3, v4, v5);
}

uint64_t sub_1C5ADEFF0()
{
  sub_1C5AE1310();

  return sub_1C5BC8F44();
}

id sub_1C5ADF038(id result, void *a2, void *a3, void *a4, char a5)
{
  if (a5 != 1)
  {
    if (a5)
    {
      return result;
    }

    v8 = result;
    v9 = a2;
    v10 = a3;
    result = a4;
  }

  return result;
}

void sub_1C5ADF09C(void *a1, void *a2, void *a3, void *a4, char a5)
{
  if (a5 != 1)
  {
    if (a5)
    {
      return;
    }

    a1 = a4;
  }
}

uint64_t get_enum_tag_for_layout_string_11MediaCoreUI13WaveformThemeV0E0O(uint64_t a1)
{
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

unint64_t sub_1C5ADF12C()
{
  result = qword_1EC197460;
  if (!qword_1EC197460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197458);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC197460);
  }

  return result;
}

uint64_t sub_1C5ADF1A0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1C5ADF1E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C5ADF230(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

double sub_1C5ADF25C@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 2;
  return result;
}

uint64_t sub_1C5ADF270()
{
  sub_1C5BCBA94();
  MEMORY[0x1C694F170](0xD000000000000019, 0x80000001C5BFB530);
  sub_1C5BCB324();
  MEMORY[0x1C694F170](0xD000000000000019, 0x80000001C5BFB550);
  sub_1C5BCB324();
  MEMORY[0x1C694F170](0x617275746173202CLL, 0xEE00203A6E6F6974);
  sub_1C5BCB324();
  MEMORY[0x1C694F170](41, 0xE100000000000000);
  return 0;
}

CGColorSpaceRef sub_1C5ADF3A8()
{
  result = CGColorSpaceCreateDeviceRGB();
  qword_1EC197430 = result;
  return result;
}

id sub_1C5ADF3C8()
{
  result = [objc_allocWithZone(MEMORY[0x1E695F620]) init];
  qword_1EC197438 = result;
  return result;
}

uint64_t sub_1C5ADF3FC(uint64_t a1, const char *a2, uint64_t a3, char a4)
{
  v21 = a2;
  v5 = sub_1C5BC7CF4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1C5BC7CA4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_1C5BC7CC4();
  sub_1C5BC7D04();
  v20 = sub_1C5BCB5D4();
  result = sub_1C5BCB7E4();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v10 + 8))(v12, v9);
  }

  if ((a4 & 1) == 0)
  {
    v15 = v21;
    if (v21)
    {
LABEL_9:

      sub_1C5BC7D34();

      if ((*(v6 + 88))(v8, v5) == *MEMORY[0x1E69E93E8])
      {
        v16 = "[Error] Interval already ended";
      }

      else
      {
        (*(v6 + 8))(v8, v5);
        v16 = "";
      }

      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = sub_1C5BC7C84();
      _os_signpost_emit_with_name_impl(&dword_1C5922000, v13, v20, v18, v15, v16, v17, 2u);
      MEMORY[0x1C69510F0](v17, -1, -1);
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v21 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v21 & 0xFFFFF800) != 0xD800)
  {
    if (v21 >> 16 <= 0x10)
    {
      v15 = &v22;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1C5ADF698()
{
  v0 = sub_1C5BC7CE4();
  __swift_allocate_value_buffer(v0, qword_1EC197440);
  __swift_project_value_buffer(v0, qword_1EC197440);
  return sub_1C5BC7CD4();
}

uint64_t sub_1C5ADF710(CGImage *a1)
{
  v2 = a1;
  if (CGImageGetWidth(a1) && CGImageGetHeight(v2))
  {
    Width = CGImageGetWidth(v2);
    CGImageGetHeight(v2);
    Height = CGImageGetHeight(v2);
    v5 = CGImageGetWidth(v2);
    v6 = Height * v5;
    if ((Height * v5) >> 64 != (Height * v5) >> 63)
    {
      goto LABEL_56;
    }

    if ((v6 - 0x2000000000000000) >> 62 != 3)
    {
      goto LABEL_57;
    }

    v1 = (4 * v6);
    if (((4 * v6) & 0x8000000000000000) != 0)
    {
      goto LABEL_58;
    }

    if (v1)
    {
      Height = sub_1C5BCB0C4();
      *(Height + 16) = v1;
      bzero((Height + 32), 4 * v6);
    }

    else
    {
      Height = MEMORY[0x1E69E7CC0];
    }

    v1 = [objc_allocWithZone(MEMORY[0x1E695F658]) initWithCGImage_];
    if (qword_1EC190850 != -1)
    {
      goto LABEL_59;
    }

    while (1)
    {
      v9 = qword_1EC197438;
      v10 = CGImageGetWidth(v2);
      if ((v10 - 0x2000000000000000) >> 62 == 3)
      {
        v13 = Width;
        v11 = 4 * v10;
        v12 = *MEMORY[0x1E695F910];
        if (qword_1EC190848 == -1)
        {
          goto LABEL_14;
        }
      }

      else
      {
        __break(1u);
      }

      v140 = v13;
      v2 = v11;
      Width = v12;
      swift_once();
LABEL_14:
      v14 = 0.0;
      *&result = COERCE_DOUBLE([v9 render:v1 toBitmap:Height + 32 rowBytes:0.0 bounds:0.0 format:*&v140 colorSpace:?]);
      if ((v6 & 0x8000000000000000) != 0)
      {
        __break(1u);
        return result;
      }

      if (!v6)
      {
LABEL_37:
        v7 = v14 / v6;
        if (v7 >= 0.0 && v7 < 0.6)
        {

          *&result = 0.6 - v7;
          return result;
        }

        if (v7 >= 0.6 && v7 <= 0.7)
        {

          *&result = 0.0;
          return result;
        }

        if (v7 >= 0.7 && v7 <= 1.0)
        {

          *&result = v7 + -0.7;
          return result;
        }

        sub_1C5AE12BC();
        swift_willThrowTypedImpl();

        goto LABEL_9;
      }

      v16 = *(Height + 16);
      if (!v16)
      {
        goto LABEL_53;
      }

      if (v16 == 1)
      {
        goto LABEL_54;
      }

      if (v16 >= 3)
      {
        LOBYTE(v15) = *(Height + 32);
        *&v17 = v15;
        v18 = *&v17 / 255.0;
        LOBYTE(v17) = *(Height + 33);
        *&v19 = v17;
        v20 = *&v19 / 255.0;
        LOBYTE(v19) = *(Height + 34);
        v21 = v19 / 255.0;
        v22 = v18 * (v18 * 0.299) + v20 * (v20 * 0.587);
        v23.f64[0] = v21 * 0.114;
        v14 = sqrt(v22 + v21 * (v21 * 0.114)) + 0.0;
        if (v6 == 1)
        {
          goto LABEL_37;
        }

        v24 = (v16 - 1) >> 2;
        if (v24 >= (v16 - 2) >> 2)
        {
          v24 = (v16 - 2) >> 2;
        }

        v25 = (v16 - 3) >> 2;
        if (v24 < v25)
        {
          v25 = v24;
        }

        if (v6 - 2 < v25)
        {
          v25 = v6 - 2;
        }

        if (v25 >= 0x10)
        {
          v27 = v25 + 1;
          v28 = v27 & 0xF;
          if ((v27 & 0xF) == 0)
          {
            v28 = 16;
          }

          v29 = v27 - v28;
          v26 = v29 + 1;
          v30 = (Height + 36);
          v31 = vdupq_n_s64(0x406FE00000000000uLL);
          v23 = vdupq_n_s64(0x3FD322D0E5604189uLL);
          v32 = vdupq_n_s64(0x3FE2C8B439581062uLL);
          v33 = vdupq_n_s64(0x3FBD2F1A9FBE76C9uLL);
          do
          {
            v141 = vld4q_s8(v30);
            v30 += 64;
            v34 = vextq_s8(v141.val[0], v141.val[0], 8uLL).u64[0];
            v35.i32[0] = BYTE6(v34);
            v36.i32[0] = BYTE4(v34);
            v35.i32[1] = HIBYTE(v34);
            v36.i32[1] = BYTE5(v34);
            v37.i32[0] = BYTE2(v34);
            v37.i32[1] = BYTE3(v34);
            v38 = vand_s8(v35, 0xFF000000FFLL);
            v39 = v34;
            v40 = BYTE1(v34);
            v41 = vand_s8(v36, 0xFF000000FFLL);
            v42 = vand_s8(v37, 0xFF000000FFLL);
            v43.i32[0] = v141.val[0].u8[6];
            v43.i32[1] = v141.val[0].u8[7];
            v44 = vand_s8(__PAIR64__(v40, v39), 0xFF000000FFLL);
            v45 = vand_s8(v43, 0xFF000000FFLL);
            v46.i64[0] = v45.u32[0];
            v46.i64[1] = v45.u32[1];
            v47 = v46;
            v48.i32[0] = v141.val[0].u8[4];
            v46.i64[0] = v38.u32[0];
            v46.i64[1] = v38.u32[1];
            v49 = v46;
            v48.i32[1] = v141.val[0].u8[5];
            v50 = vand_s8(v48, 0xFF000000FFLL);
            v46.i64[0] = v41.u32[0];
            v46.i64[1] = v41.u32[1];
            v51 = v46;
            v46.i64[0] = v50.u32[0];
            v46.i64[1] = v50.u32[1];
            v52 = v46;
            v46.i64[0] = v42.u32[0];
            v46.i64[1] = v42.u32[1];
            v53 = v46;
            v41.i32[0] = v141.val[0].u8[2];
            v41.i32[1] = v141.val[0].u8[3];
            v54 = vand_s8(v41, 0xFF000000FFLL);
            v46.i64[0] = v54.u32[0];
            v46.i64[1] = v54.u32[1];
            v55 = v46;
            v46.i64[0] = v44.u32[0];
            v46.i64[1] = v44.u32[1];
            v56 = v46;
            v44.i32[0] = v141.val[0].u8[0];
            v44.i32[1] = v141.val[0].u8[1];
            v57 = vand_s8(v44, 0xFF000000FFLL);
            v46.i64[0] = v57.u32[0];
            v46.i64[1] = v57.u32[1];
            v58 = vextq_s8(v141.val[1], v141.val[1], 8uLL).u64[0];
            v59 = vcvtq_f64_u64(v52);
            v52.i32[0] = BYTE6(v58);
            v60 = vcvtq_f64_u64(v55);
            v52.i32[1] = HIBYTE(v58);
            *v52.i8 = vand_s8(*v52.i8, 0xFF000000FFLL);
            v61 = vcvtq_f64_u64(v46);
            v62.i32[0] = BYTE4(v58);
            v62.i32[1] = BYTE5(v58);
            v63 = vcvtq_f64_u64(v49);
            v46.i64[0] = v52.u32[0];
            v46.i64[1] = v52.u32[1];
            v64 = v46;
            *v49.i8 = vand_s8(v62, 0xFF000000FFLL);
            v46.i64[0] = v49.u32[0];
            v46.i64[1] = v49.u32[1];
            v65 = v46;
            v66 = vcvtq_f64_u64(v51);
            v49.i32[0] = BYTE2(v58);
            v49.i32[1] = BYTE3(v58);
            v67 = vcvtq_f64_u64(v53);
            v68 = vand_s8(*v49.i8, 0xFF000000FFLL);
            v69 = vcvtq_f64_u64(v56);
            v70.i32[0] = v58;
            v70.i32[1] = BYTE1(v58);
            v71 = vdivq_f64(v61, v31);
            LODWORD(v61.f64[0]) = v141.val[1].u8[6];
            HIDWORD(v61.f64[0]) = v141.val[1].u8[7];
            v72 = vdivq_f64(v60, v31);
            v46.i64[0] = v68.u32[0];
            v46.i64[1] = v68.u32[1];
            v73 = v46;
            v74 = vdivq_f64(v59, v31);
            *&v60.f64[0] = vand_s8(v70, 0xFF000000FFLL);
            v75 = vdivq_f64(vcvtq_f64_u64(v47), v31);
            v46.i64[0] = LODWORD(v60.f64[0]);
            v46.i64[1] = HIDWORD(v60.f64[0]);
            v76 = v46;
            v77 = v141.val[1].u8[0];
            v78 = v141.val[1].u8[1];
            *&v61.f64[0] = vand_s8(*&v61.f64[0], 0xFF000000FFLL);
            v79 = v141.val[2].u8[0];
            v80 = v141.val[2].u8[1];
            v46.i64[0] = LODWORD(v61.f64[0]);
            v46.i64[1] = HIDWORD(v61.f64[0]);
            v81 = v141.val[2].u8[2];
            v82 = v141.val[2].u8[3];
            v83 = vcvtq_f64_u64(v46);
            v84 = v141.val[2].u8[4];
            v85 = v141.val[2].u8[5];
            v86 = v141.val[2].u8[6];
            v87 = v141.val[2].u8[7];
            v141.val[2].i64[0] = vextq_s8(v141.val[2], v141.val[2], 8uLL).u64[0];
            v141.val[3] = vdivq_f64(v69, v31);
            v141.val[0].i32[0] = v141.val[1].u8[4];
            v141.val[0].i32[1] = v141.val[1].u8[5];
            *v141.val[0].i8 = vand_s8(*v141.val[0].i8, 0xFF000000FFLL);
            v46.i64[0] = v141.val[0].u32[0];
            v46.i64[1] = v141.val[0].u32[1];
            v88 = vdivq_f64(v67, v31);
            v89 = vcvtq_f64_u64(v46);
            v141.val[0].i32[0] = v141.val[1].u8[2];
            v141.val[0].i32[1] = v141.val[1].u8[3];
            *v141.val[0].i8 = vand_s8(*v141.val[0].i8, 0xFF000000FFLL);
            v90 = vdivq_f64(v66, v31);
            v46.i64[0] = v141.val[0].u32[0];
            v46.i64[1] = v141.val[0].u32[1];
            v141.val[1] = vcvtq_f64_u64(v46);
            v91 = vdivq_f64(v63, v31);
            *v141.val[0].i8 = vand_s8(__PAIR64__(v78, v77), 0xFF000000FFLL);
            v46.i64[0] = v141.val[0].u32[0];
            v46.i64[1] = v141.val[0].u32[1];
            v92 = v141.val[2].u8[0];
            v93 = vdivq_f64(vcvtq_f64_u64(v76), v31);
            v141.val[0] = vdivq_f64(vcvtq_f64_u64(v46), v31);
            v94 = v141.val[2].u8[1];
            v95 = v141.val[2].u8[2];
            v96 = vdivq_f64(vcvtq_f64_u64(v73), v31);
            v141.val[1] = vdivq_f64(v141.val[1], v31);
            v97 = v141.val[2].u8[3];
            v98 = v141.val[2].u8[4];
            v99 = vdivq_f64(vcvtq_f64_u64(v65), v31);
            v100 = vdivq_f64(v89, v31);
            v101 = v141.val[2].u8[5];
            v2 = v141.val[2].u8[6];
            v102 = vdivq_f64(vcvtq_f64_u64(v64), v31);
            v103 = vdivq_f64(v83, v31);
            v104 = v141.val[2].u8[7];
            v141.val[2] = vmulq_f64(v88, vmulq_f64(v88, v23));
            v105 = vmulq_f64(v72, vmulq_f64(v72, v23));
            v106 = vmulq_f64(v102, vmulq_f64(v102, v32));
            v107 = vmulq_f64(v141.val[0], vmulq_f64(v141.val[0], v32));
            v108 = vmulq_f64(v141.val[1], vmulq_f64(v141.val[1], v32));
            v109 = vaddq_f64(vmulq_f64(v91, vmulq_f64(v91, v23)), v106);
            v141.val[0] = vaddq_f64(vmulq_f64(v90, vmulq_f64(v90, v23)), vmulq_f64(v99, vmulq_f64(v99, v32)));
            v141.val[2] = vaddq_f64(v141.val[2], vmulq_f64(v96, vmulq_f64(v96, v32)));
            v141.val[3] = vaddq_f64(vmulq_f64(v141.val[3], vmulq_f64(v141.val[3], v23)), vmulq_f64(v93, vmulq_f64(v93, v32)));
            v141.val[1] = vaddq_f64(vmulq_f64(v75, vmulq_f64(v75, v23)), vmulq_f64(v103, vmulq_f64(v103, v32)));
            v110 = vaddq_f64(vmulq_f64(v74, vmulq_f64(v74, v23)), vmulq_f64(v100, vmulq_f64(v100, v32)));
            v111 = vaddq_f64(v105, v108);
            *&v93.f64[0] = vand_s8(__PAIR64__(v94, v92), 0xFF000000FFLL);
            v46.i64[0] = LODWORD(v93.f64[0]);
            v46.i64[1] = HIDWORD(v93.f64[0]);
            v112 = v46;
            *&v103.f64[0] = vand_s8(__PAIR64__(v97, v95), 0xFF000000FFLL);
            v46.i64[0] = LODWORD(v103.f64[0]);
            v46.i64[1] = HIDWORD(v103.f64[0]);
            v113 = v46;
            *&v90.f64[0] = vand_s8(__PAIR64__(v101, v98), 0xFF000000FFLL);
            v46.i64[0] = LODWORD(v90.f64[0]);
            v46.i64[1] = HIDWORD(v90.f64[0]);
            v114 = v46;
            *&v99.f64[0] = vand_s8(__PAIR64__(v104, v2), 0xFF000000FFLL);
            v46.i64[0] = LODWORD(v99.f64[0]);
            v46.i64[1] = HIDWORD(v99.f64[0]);
            v115 = v46;
            *&v96.f64[0] = vand_s8(__PAIR64__(v80, v79), 0xFF000000FFLL);
            v46.i64[0] = LODWORD(v96.f64[0]);
            v46.i64[1] = HIDWORD(v96.f64[0]);
            v116 = vcvtq_f64_u64(v46);
            *&v75.f64[0] = vand_s8(__PAIR64__(v82, v81), 0xFF000000FFLL);
            v46.i64[0] = LODWORD(v75.f64[0]);
            v46.i64[1] = HIDWORD(v75.f64[0]);
            v117 = vcvtq_f64_u64(v46);
            *&v100.f64[0] = vand_s8(__PAIR64__(v85, v84), 0xFF000000FFLL);
            v46.i64[0] = LODWORD(v100.f64[0]);
            v46.i64[1] = HIDWORD(v100.f64[0]);
            v118 = vcvtq_f64_u64(v46);
            *&v105.f64[0] = vand_s8(__PAIR64__(v87, v86), 0xFF000000FFLL);
            v46.i64[0] = LODWORD(v105.f64[0]);
            v46.i64[1] = HIDWORD(v105.f64[0]);
            v119 = vdivq_f64(vcvtq_f64_u64(v115), v31);
            v120 = vdivq_f64(vcvtq_f64_u64(v114), v31);
            v121 = vdivq_f64(vcvtq_f64_u64(v113), v31);
            v122 = vdivq_f64(vcvtq_f64_u64(v46), v31);
            v123 = vdivq_f64(v118, v31);
            v124 = vdivq_f64(vcvtq_f64_u64(v112), v31);
            v125 = vdivq_f64(v117, v31);
            v126 = vdivq_f64(v116, v31);
            v127 = vsqrtq_f64(vaddq_f64(vaddq_f64(vmulq_f64(v71, vmulq_f64(v71, v23)), v107), vmulq_f64(v126, vmulq_f64(v126, v33))));
            v128 = vsqrtq_f64(vaddq_f64(v111, vmulq_f64(v125, vmulq_f64(v125, v33))));
            v129 = vsqrtq_f64(vaddq_f64(v110, vmulq_f64(v123, vmulq_f64(v123, v33))));
            v141.val[1] = vsqrtq_f64(vaddq_f64(v141.val[1], vmulq_f64(v122, vmulq_f64(v122, v33))));
            v127.f64[0] = v14 + v127.f64[0] + v127.f64[1] + v128.f64[0] + v128.f64[1] + v129.f64[0] + v129.f64[1] + *v141.val[1].i64 + *&v141.val[1].i64[1];
            v130 = vsqrtq_f64(vaddq_f64(v109, vmulq_f64(v119, vmulq_f64(v119, v33))));
            v141.val[0] = vsqrtq_f64(vaddq_f64(v141.val[0], vmulq_f64(v120, vmulq_f64(v120, v33))));
            v141.val[1] = vsqrtq_f64(vaddq_f64(v141.val[3], vmulq_f64(v124, vmulq_f64(v124, v33))));
            v141.val[2] = vsqrtq_f64(vaddq_f64(v141.val[2], vmulq_f64(v121, vmulq_f64(v121, v33))));
            v14 = v127.f64[0] + *v141.val[1].i64 + *&v141.val[1].i64[1] + *v141.val[2].i64 + *&v141.val[2].i64[1] + *v141.val[0].i64 + *&v141.val[0].i64[1] + v130.f64[0] + v130.f64[1];
            v29 -= 16;
          }

          while (v29);
        }

        else
        {
          v26 = 1;
        }

        v131 = 4 * v26;
        v132 = v6 - v26;
        v133 = vdupq_n_s64(0x406FE00000000000uLL);
        while (v131 < v16)
        {
          if (v131 + 1 >= v16)
          {
            goto LABEL_54;
          }

          if (v131 + 2 >= v16)
          {
            goto LABEL_55;
          }

          LOBYTE(v23.f64[0]) = *(Height + v131 + 32);
          v134.i64[0] = *(Height + v131 + 33);
          v134.i64[1] = *(Height + v131 + 34);
          v135 = vdivq_f64(vcvtq_f64_u64(v134), v133);
          v136 = vmulq_f64(v135, vmulq_f64(v135, xmmword_1C5BE72C0));
          v23.f64[0] = sqrt(*&v23.f64[0] / 255.0 * (*&v23.f64[0] / 255.0 * 0.299) + v136.f64[0] + v136.f64[1]);
          v14 = v14 + v23.f64[0];
          v131 += 4;
          if (!--v132)
          {
            goto LABEL_37;
          }
        }

LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
      }

LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      swift_once();
    }
  }

  v7 = CGImageGetWidth(v2);
  CGImageGetHeight(v2);
  sub_1C5AE12BC();
  swift_willThrowTypedImpl();
LABEL_9:
  *&result = v7;
  return result;
}

uint64_t sub_1C5AE0100(uint64_t a1, const char *a2, uint64_t a3, int a4, CGImage *a5)
{
  v6 = v5;
  v33 = a4;
  v31 = a3;
  v32 = a2;
  v9 = sub_1C5BC7CA4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v28 - v14;
  sub_1C5BC7C94();
  v30 = a1;
  v16 = sub_1C5BC7CC4();
  v17 = sub_1C5BCB5E4();
  result = sub_1C5BCB7E4();
  if (result)
  {
    v28 = a5;
    v29 = v5;
    if ((v33 & 1) == 0)
    {
      v19 = v32;
      if (v32)
      {
LABEL_9:
        v20 = swift_slowAlloc();
        *v20 = 0;
        v21 = sub_1C5BC7C84();
        _os_signpost_emit_with_name_impl(&dword_1C5922000, v16, v17, v21, v19, "", v20, 2u);
        MEMORY[0x1C69510F0](v20, -1, -1);
        a5 = v28;
        v6 = v29;
        goto LABEL_10;
      }

      __break(1u);
    }

    if (v32 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v32 & 0xFFFFF800) == 0xD800)
      {
LABEL_15:
        __break(1u);
        return result;
      }

      if (v32 >> 16 <= 0x10)
      {
        v19 = &v34;
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

LABEL_10:

  (*(v10 + 16))(v12, v15, v9);
  sub_1C5BC7D24();
  swift_allocObject();
  sub_1C5BC7D14();
  (*(v10 + 8))(v15, v9);
  v22 = sub_1C5ADF710(a5);
  v24 = v23;
  v26 = v25;
  if (v6)
  {
    sub_1C5AE12BC();
    swift_allocError();
    *v27 = v22;
    *(v27 + 8) = v24;
    *(v27 + 16) = v26;
  }

  sub_1C5ADF3FC(v30, v32, v31, v33);

  return v22;
}

uint64_t sub_1C5AE03BC(uint64_t a1)
{
  v1[18] = a1;
  v2 = sub_1C5BCB1C4();
  v1[19] = v2;
  v1[20] = *(v2 - 8);
  v1[21] = swift_task_alloc();
  v3 = sub_1C5BC7D64();
  v1[22] = v3;
  v1[23] = *(v3 - 8);
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C5AE0520, 0, 0);
}

uint64_t sub_1C5AE0520()
{
  v150 = v0;
  if (qword_1EC190510 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 240);
  v2 = *(v0 + 184);
  v3 = *(v0 + 144);
  v134 = __swift_project_value_buffer(*(v0 + 176), qword_1EC1A6970);
  v137 = *(v2 + 16);
  v137(v1);
  v4 = v3;
  v5 = sub_1C5BC7D44();
  v6 = sub_1C5BCB4F4();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 240);
  v10 = *(v0 + 176);
  v9 = *(v0 + 184);
  if (v7)
  {
    v11 = *(v0 + 144);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v148 = v13;
    *v12 = 136446210;
    *(v0 + 136) = v11;
    v14 = sub_1C5BCAEA4();
    v16 = sub_1C592ADA8(v14, v15, &v148);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_1C5922000, v5, v6, "Deriving ArtworkTreatment from image %{public}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x1C69510F0](v13, -1, -1);
    MEMORY[0x1C69510F0](v12, -1, -1);

    v17 = *(v9 + 8);
    v17(v8, v10);
  }

  else
  {

    v17 = *(v9 + 8);
    v17(v8, v10);
  }

  v18 = [*(v0 + 144) CGImage];
  if (!v18)
  {
    sub_1C5AE12BC();
    v28 = swift_allocError();
    *v29 = 0;
    *(v29 + 8) = 0;
    *(v29 + 16) = 2;
    swift_willThrow();
    *(v0 + 64) = v28;
    v30 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930D0);
    if (!swift_dynamicCast())
    {

      *(v0 + 72) = v28;
      v50 = v28;
      v51 = swift_dynamicCast();
      v52 = *(v0 + 176);
      v53 = *(v0 + 144);
      if (!v51)
      {
        v67 = *(v0 + 192);

        (v137)(v67, v134, v52);
        v68 = v53;
        v69 = v28;
        v70 = sub_1C5BC7D44();
        v71 = sub_1C5BCB4D4();

        v72 = os_log_type_enabled(v70, v71);
        v73 = *(v0 + 192);
        v74 = *(v0 + 176);
        if (v72)
        {
          v144 = *(v0 + 192);
          v75 = *(v0 + 144);
          v135 = *(v0 + 176);
          v76 = swift_slowAlloc();
          v139 = v17;
          v77 = swift_slowAlloc();
          v148 = v77;
          *v76 = 136446466;
          *(v0 + 80) = v75;
          v78 = sub_1C5BCAEA4();
          v80 = sub_1C592ADA8(v78, v79, &v148);

          *(v76 + 4) = v80;
          *(v76 + 12) = 2082;
          *(v0 + 88) = v28;
          v81 = v28;
          v82 = sub_1C5BCAEA4();
          v84 = sub_1C592ADA8(v82, v83, &v148);

          *(v76 + 14) = v84;
          _os_log_impl(&dword_1C5922000, v70, v71, "ArtworkTreatment [%{public}s] encountered unhandled error: %{public}s", v76, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1C69510F0](v77, -1, -1);
          MEMORY[0x1C69510F0](v76, -1, -1);

          v139(v144, v135);
        }

        else
        {

          v17(v73, v74);
        }

        goto LABEL_38;
      }

      v54 = *(v0 + 200);

      (v137)(v54, v134, v52);
      v55 = v53;
      v56 = sub_1C5BC7D44();
      v57 = sub_1C5BCB4D4();

      v58 = os_log_type_enabled(v56, v57);
      v59 = *(v0 + 200);
      v60 = *(v0 + 176);
      if (v58)
      {
        v61 = *(v0 + 144);
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v148 = v63;
        *v62 = 136446210;
        *(v0 + 96) = v61;
        v64 = sub_1C5BCAEA4();
        v138 = v17;
        v66 = sub_1C592ADA8(v64, v65, &v148);

        *(v62 + 4) = v66;
        _os_log_impl(&dword_1C5922000, v56, v57, "ArtworkTreatment [%{public}s] cancelled", v62, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v63);
        MEMORY[0x1C69510F0](v63, -1, -1);
        MEMORY[0x1C69510F0](v62, -1, -1);

        v138(v59, v60);
      }

      else
      {

        v17(v59, v60);
      }

      (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
      v109 = *(v0 + 72);
LABEL_37:

LABEL_38:
      v141 = 0.0;
      v146 = 0;
      v114 = 0;
      v115 = 1;
      goto LABEL_39;
    }

    v31 = *(v0 + 40);
    v32 = *(v0 + 176);
    v33 = *(v0 + 144);
    if (*(v0 + 56))
    {
      if (*(v0 + 56) == 1)
      {
        (v137)(*(v0 + 208), v134, v32);
        v34 = v33;
        v35 = sub_1C5BC7D44();
        v36 = sub_1C5BCB4D4();

        v37 = os_log_type_enabled(v35, v36);
        v38 = *(v0 + 208);
        v39 = *(v0 + 176);
        if (v37)
        {
          v143 = *(v0 + 208);
          v40 = *(v0 + 144);
          v41 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          v147 = v42;
          *v41 = 136446466;
          *(v0 + 104) = v40;
          v43 = sub_1C5BCAEA4();
          v45 = v17;
          v46 = sub_1C592ADA8(v43, v44, &v147);

          *(v41 + 4) = v46;
          *(v41 + 12) = 2080;
          v148 = 540702524;
          v149 = 0xE400000000000000;
          v47 = sub_1C5BCB304();
          MEMORY[0x1C694F170](v47);

          MEMORY[0x1C694F170](0x203A68203BLL, 0xE500000000000000);
          v48 = sub_1C5BCB304();
          MEMORY[0x1C694F170](v48);

          MEMORY[0x1C694F170](62, 0xE100000000000000);
          v49 = sub_1C592ADA8(v148, v149, &v147);

          *(v41 + 14) = v49;
          _os_log_impl(&dword_1C5922000, v35, v36, "ArtworkTreatment [%{public}s] failed to update treatment: image has invalid size %s", v41, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1C69510F0](v42, -1, -1);
          MEMORY[0x1C69510F0](v41, -1, -1);

          v45(v143, v39);
LABEL_36:
          v109 = *(v0 + 64);
          goto LABEL_37;
        }

        v112 = v38;
        v113 = v39;
LABEL_35:
        v17(v112, v113);
        goto LABEL_36;
      }

      (v137)(*(v0 + 224), v134, v32);
      v98 = v33;
      v99 = sub_1C5BC7D44();
      v100 = sub_1C5BCB4D4();

      v101 = os_log_type_enabled(v99, v100);
      v102 = *(v0 + 224);
      v90 = *(v0 + 176);
      if (v101)
      {
        v103 = *(v0 + 144);
        v104 = swift_slowAlloc();
        v105 = swift_slowAlloc();
        v148 = v105;
        *v104 = 136446210;
        *(v0 + 120) = v103;
        v106 = sub_1C5BCAEA4();
        v140 = v17;
        v108 = sub_1C592ADA8(v106, v107, &v148);

        *(v104 + 4) = v108;
        _os_log_impl(&dword_1C5922000, v99, v100, "ArtworkTreatment [%{public}s] failed to update treatment: no CGImage available", v104, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v105);
        MEMORY[0x1C69510F0](v105, -1, -1);
        MEMORY[0x1C69510F0](v104, -1, -1);

        v97 = v102;
        goto LABEL_24;
      }

      v112 = v102;
    }

    else
    {
      (v137)(*(v0 + 216), v134, v32);
      v85 = v33;
      v86 = sub_1C5BC7D44();
      v87 = sub_1C5BCB4D4();

      v88 = os_log_type_enabled(v86, v87);
      v89 = *(v0 + 216);
      v90 = *(v0 + 176);
      if (v88)
      {
        v91 = *(v0 + 144);
        v145 = *(v0 + 216);
        v92 = swift_slowAlloc();
        v93 = swift_slowAlloc();
        v148 = v93;
        *v92 = 136446466;
        *(v0 + 112) = v91;
        v94 = sub_1C5BCAEA4();
        v140 = v17;
        v96 = sub_1C592ADA8(v94, v95, &v148);

        *(v92 + 4) = v96;
        *(v92 + 12) = 2048;
        *(v92 + 14) = v31;
        _os_log_impl(&dword_1C5922000, v86, v87, "ArtworkTreatment [%{public}s] failed to update treatment: calculated impossible luminance of %f", v92, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v93);
        MEMORY[0x1C69510F0](v93, -1, -1);
        MEMORY[0x1C69510F0](v92, -1, -1);

        v97 = v145;
LABEL_24:
        v140(v97, v90);
        goto LABEL_36;
      }

      v112 = v89;
    }

    v113 = v90;
    goto LABEL_35;
  }

  v19 = v18;
  if (qword_1EC190858 != -1)
  {
    swift_once();
  }

  v20 = sub_1C5BC7CE4();
  v21 = __swift_project_value_buffer(v20, qword_1EC197440);
  v22 = v19;
  v23 = sub_1C5AE0100(v21, "Artwork Luminance Analysis", 26, 2, v22);
  v25 = v24;
  v27 = v26;

  sub_1C5BCB2E4();
  if (v27)
  {
    v110 = 1.25;
    if (v27 == 1)
    {
      v111 = v23;
    }

    else
    {
      v111 = 0;
    }

    v146 = 0;
  }

  else
  {
    v146 = v23;
    v111 = 0;
    v110 = v25 + 1.25;
  }

  v118 = *(v0 + 144);
  (v137)(*(v0 + 232), v134, *(v0 + 176));
  v119 = v118;
  v120 = sub_1C5BC7D44();
  v121 = sub_1C5BCB4F4();

  v122 = os_log_type_enabled(v120, v121);
  v123 = *(v0 + 232);
  v124 = *(v0 + 176);
  if (v122)
  {
    v136 = *(v0 + 232);
    v125 = *(v0 + 144);
    v142 = v17;
    v126 = swift_slowAlloc();
    v127 = swift_slowAlloc();
    v148 = v127;
    *v126 = 136446466;
    *(v0 + 128) = v125;
    v128 = sub_1C5BCAEA4();
    v130 = sub_1C592ADA8(v128, v129, &v148);

    *(v126 + 4) = v130;
    *(v126 + 12) = 2082;
    *(v0 + 16) = v146;
    *(v0 + 24) = v111;
    *(v0 + 32) = v110;
    v131 = sub_1C5BCAEA4();
    v133 = sub_1C592ADA8(v131, v132, &v148);

    *(v126 + 14) = v133;
    _os_log_impl(&dword_1C5922000, v120, v121, "ArtworkTreatment [%{public}s] derived treatment %{public}s", v126, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C69510F0](v127, -1, -1);
    MEMORY[0x1C69510F0](v126, -1, -1);

    v142(v136, v124);
  }

  else
  {

    v17(v123, v124);
  }

  v115 = 0;
  v141 = v110;
  v114 = v111;
LABEL_39:

  v116 = *(v0 + 8);

  return v116(v146, v114, *&v141, v115);
}

unint64_t sub_1C5AE12BC()
{
  result = qword_1EC197468;
  if (!qword_1EC197468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC197468);
  }

  return result;
}

unint64_t sub_1C5AE1310()
{
  result = qword_1EDA46390;
  if (!qword_1EDA46390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46390);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WaveformTheme.ArtworkTreatment.CalculationError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for WaveformTheme.ArtworkTreatment.CalculationError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_1C5AE1400(uint64_t a1)
{
  if (*(a1 + 16) <= 1u)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1C5AE1418(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_1C5AE1448()
{
  sub_1C592BEC4();
  sub_1C5BC8F44();
  return v1;
}

uint64_t sub_1C5AE1484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C5954488();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t MCUINamespace<A>.motionCacheBucket(id:)()
{
  swift_getKeyPath();

  sub_1C5BC9DF4();
}

{
  swift_getKeyPath();
  sub_1C5BC9DF4();
}

uint64_t sub_1C5AE1610@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v67 = a1;
  v81 = a3;
  v79 = type metadata accessor for CapsuleProgressStyle(0);
  MEMORY[0x1EEE9AC00](v79);
  v80 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = *(a2 - 8);
  v69 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v66 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CapsuleProgress(255);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197500);
  v65 = a2;
  v7 = *(a2 + 16);
  v64 = *(a2 + 24);
  sub_1C5BC8BE4();
  v8 = sub_1C5BC8AB4();
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192838);
  v10 = sub_1C5924F54(&qword_1EC197508, &qword_1EC197500);
  WitnessTable = swift_getWitnessTable();
  v99 = v10;
  v100 = WitnessTable;
  v12 = swift_getWitnessTable();
  v13 = sub_1C5924F54(&qword_1EDA45D08, &qword_1EC192838);
  v95 = v8;
  v96 = v9;
  v97 = v12;
  v98 = v13;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  v62 = sub_1C5BCA7D4();
  v63 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v61 = &v60 - v14;
  type metadata accessor for DraggableViewModifier(255);
  v15 = sub_1C5BC8AB4();
  v70 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v83 = &v60 - v16;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197510);
  v71 = v15;
  v17 = sub_1C5BC8AB4();
  v76 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v73 = &v60 - v18;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194DC0);
  v77 = v17;
  v72 = sub_1C5BC8AB4();
  v78 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v74 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v75 = &v60 - v21;
  v22 = v64;
  v84 = v7;
  v85 = v64;
  v23 = v82;
  v86 = v67;
  v87 = v82;
  sub_1C5BC9134();
  sub_1C5BCA7C4();
  v24 = sub_1C5BC95D4();
  v26 = v25;
  v28 = v27;
  v29 = v23;
  LOBYTE(v12) = *v23;
  v30 = v68;
  v31 = v66;
  v32 = v65;
  (*(v68 + 16))(v66, v29, v65);
  v33 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = v7;
  *(v34 + 24) = v22;
  (*(v30 + 32))(v34 + v33, v31, v32);
  v35 = v62;
  v36 = swift_getWitnessTable();
  v37 = v12;
  v38 = v61;
  sub_1C5AE3120(v24, v26, v37, 0, 1, sub_1C5AE6670, v34, v35, v83, v28, v36);

  (*(v63 + 8))(v38, v35);
  v39 = &v82[*(v32 + 40)];
  v40 = *v39;
  v41 = *(v39 + 1);
  LOBYTE(v95) = *v39;
  v96 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191AB0);
  sub_1C5BCA694();
  if (v94 == 1)
  {
    if (qword_1EC190870 != -1)
    {
      swift_once();
    }

    v42 = qword_1EC1A6D28;
  }

  else
  {
    if (qword_1EC190868 != -1)
    {
      swift_once();
    }

    v42 = qword_1EC1A6D10;
  }

  v43 = __swift_project_value_buffer(v79, v42);
  v44 = v80;
  sub_1C5AE8560(v43, v80, type metadata accessor for CapsuleProgressStyle);
  v45 = sub_1C5AE8518(qword_1EDA48CF8, type metadata accessor for DraggableViewModifier);
  v92 = v36;
  v93 = v45;
  v46 = v71;
  v47 = swift_getWitnessTable();
  v48 = v73;
  v49 = v83;
  sub_1C5AE33FC();
  sub_1C5AE8458(v44, type metadata accessor for CapsuleProgressStyle);
  (*(v70 + 8))(v49, v46);
  MEMORY[0x1C694ED40](0.5, 1.0, 0.0);
  LOBYTE(v95) = v40;
  v96 = v41;
  sub_1C5BCA694();
  LOBYTE(v95) = v94;
  v50 = sub_1C5924F54(&qword_1EC197518, &qword_1EC197510);
  v90 = v47;
  v91 = v50;
  v51 = v77;
  v52 = swift_getWitnessTable();
  v53 = v74;
  sub_1C5BCA384();

  (*(v76 + 8))(v48, v51);
  v54 = sub_1C5924F54(&qword_1EDA46340, &qword_1EC194DC0);
  v88 = v52;
  v89 = v54;
  v55 = v72;
  v56 = swift_getWitnessTable();
  v57 = v75;
  sub_1C593EDC0(v53, v55, v56);
  v58 = *(v78 + 8);
  v58(v53, v55);
  sub_1C593EDC0(v57, v55, v56);
  return (v58)(v57, v55);
}

uint64_t sub_1C5AE2068@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v61 = a3;
  v60 = a2;
  v64 = a1;
  v58 = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192838);
  MEMORY[0x1EEE9AC00](v4);
  v63 = &v50 - v5;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197500);
  MEMORY[0x1EEE9AC00](v62);
  v7 = &v50 - v6;
  sub_1C5BC8BE4();
  v8 = sub_1C5BC8AB4();
  v56 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v65 = &v50 - v9;
  v10 = sub_1C5924F54(&qword_1EC197508, &qword_1EC197500);
  v59 = v10;
  WitnessTable = swift_getWitnessTable();
  v77 = v10;
  v78 = WitnessTable;
  v12 = swift_getWitnessTable();
  v13 = sub_1C5924F54(&qword_1EDA45D08, &qword_1EC192838);
  v51 = v8;
  v73 = v8;
  v74 = v4;
  v57 = v4;
  v52 = v12;
  v75 = v12;
  v76 = v13;
  v14 = v13;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v53 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v55 = &v50 - v19;
  v20 = type metadata accessor for CapsuleProgress(0);
  MEMORY[0x1EEE9AC00](v20);
  v54 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = (&v50 - v23);
  sub_1C5BC95C4();
  v26 = v25;
  *v24 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC192F00);
  swift_storeEnumTagMultiPayload();
  v27 = v24 + v20[5];
  *v27 = swift_getKeyPath();
  v27[8] = 0;
  v28 = v20[6];
  *(v24 + v28) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195900);
  swift_storeEnumTagMultiPayload();
  v29 = v24 + v20[7];
  *v29 = swift_getKeyPath();
  v29[8] = 0;
  v30 = v24 + v20[8];
  v71 = 0;
  LOBYTE(v72) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195790);
  sub_1C5BCA684();
  v31 = v74;
  v32 = v75;
  *v30 = v73;
  v30[8] = v31;
  *(v30 + 2) = v32;
  *(v24 + v20[9]) = v26;
  *v7 = sub_1C5BC8FC4();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197540);
  v34 = v64;
  v35 = v60;
  v36 = v61;
  sub_1C5AE2860(&v7[*(v33 + 44)]);
  sub_1C5BC9134();
  sub_1C5BC8F94();
  v66 = v35;
  v67 = v36;
  v68 = v34;
  v37 = v63;
  sub_1C5BCA2C4();
  sub_1C5924EF4(v7, &qword_1EC197500);
  v38 = *MEMORY[0x1E697E720];
  v39 = sub_1C5BC89B4();
  (*(*(v39 - 8) + 104))(v37, v38, v39);
  sub_1C5AE8518(&qword_1EDA46688, MEMORY[0x1E697E730]);
  result = sub_1C5BCADB4();
  if (result)
  {
    v41 = v51;
    v42 = v57;
    v43 = v52;
    v44 = v65;
    sub_1C5BC9F54();
    sub_1C5924EF4(v37, &qword_1EC192838);
    (*(v56 + 8))(v44, v41);
    v73 = v41;
    v74 = v42;
    v75 = v43;
    v76 = v14;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v46 = v55;
    sub_1C593EDC0(v17, OpaqueTypeMetadata2, OpaqueTypeConformance2);
    v47 = v53;
    v48 = *(v53 + 8);
    v48(v17, OpaqueTypeMetadata2);
    v49 = v54;
    sub_1C5AE8560(v24, v54, type metadata accessor for CapsuleProgress);
    v73 = v49;
    (*(v47 + 16))(v17, v46, OpaqueTypeMetadata2);
    v74 = v17;
    v71 = v20;
    v72 = OpaqueTypeMetadata2;
    v69 = sub_1C5AE8518(&qword_1EC197548, type metadata accessor for CapsuleProgress);
    v70 = OpaqueTypeConformance2;
    sub_1C594226C(&v73, 2uLL, &v71);
    v48(v46, OpaqueTypeMetadata2);
    sub_1C5AE8458(v24, type metadata accessor for CapsuleProgress);
    v48(v17, OpaqueTypeMetadata2);
    return sub_1C5AE8458(v49, type metadata accessor for CapsuleProgress);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C5AE2860@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v1 = sub_1C5BC9584();
  v24 = *(v1 - 8);
  v2 = v24;
  v25 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197550);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v24 - v12;
  v14 = type metadata accessor for ContentBelowSliderStyle();
  sub_1C5AE2AF0(v14, v13);
  sub_1C5BC95A4();
  sub_1C59400B0(v13, v10, &qword_1EC197550);
  v27 = 1;
  v15 = *(v2 + 16);
  v16 = v4;
  v17 = v25;
  v15(v4, v7, v25);
  v18 = v26;
  sub_1C59400B0(v10, v26, &qword_1EC197550);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197558);
  v20 = v18 + *(v19 + 48);
  v21 = v27;
  *v20 = 0;
  *(v20 + 8) = v21;
  v15((v18 + *(v19 + 64)), v16, v17);
  v22 = *(v24 + 8);
  v22(v7, v17);
  sub_1C5924EF4(v13, &qword_1EC197550);
  v22(v16, v17);
  return sub_1C5924EF4(v10, &qword_1EC197550);
}

uint64_t sub_1C5AE2AF0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v31 = a2;
  v32 = sub_1C5BC9594();
  v4 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197560);
  MEMORY[0x1EEE9AC00](v29);
  v8 = &v28 - v7;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197568);
  MEMORY[0x1EEE9AC00](v30);
  v10 = &v28 - v9;
  v11 = sub_1C5BC8F34();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v2 + *(a1 + 44);
  v16 = *v15;
  if (*(v15 + 8) == 1)
  {
    if ((v16 & 1) == 0)
    {
LABEL_3:
      sub_1C5BC95B4();
      v17 = v32;
      (*(v4 + 16))(v8, v6, v32);
      swift_storeEnumTagMultiPayload();
      sub_1C5AE85C8();
      sub_1C5AE8518(&qword_1EC197578, MEMORY[0x1E697C928]);
      sub_1C5BC92C4();
      return (*(v4 + 8))(v6, v17);
    }
  }

  else
  {

    sub_1C5BCB4E4();
    v19 = sub_1C5BC9844();
    v28 = v10;
    v20 = v19;
    sub_1C5BC7C54();

    v10 = v28;
    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5942458(v16, 0);
    (*(v12 + 8))(v14, v11);
    if (v33 != 1)
    {
      goto LABEL_3;
    }
  }

  sub_1C5BC84B4();
  v21 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195F58) + 36)];
  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195F60) + 28);
  v23 = *MEMORY[0x1E697DC08];
  v24 = sub_1C5BC82A4();
  (*(*(v24 - 8) + 104))(v21 + v22, v23, v24);
  *v21 = swift_getKeyPath();
  v25 = sub_1C5BCA494();
  KeyPath = swift_getKeyPath();
  v27 = &v10[*(v30 + 36)];
  *v27 = KeyPath;
  v27[1] = v25;
  sub_1C59400B0(v10, v8, &qword_1EC197568);
  swift_storeEnumTagMultiPayload();
  sub_1C5AE85C8();
  sub_1C5AE8518(&qword_1EC197578, MEMORY[0x1E697C928]);
  sub_1C5BC92C4();
  return sub_1C5924EF4(v10, &qword_1EC197568);
}

uint64_t sub_1C5AE2FAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ContentBelowSliderStyle();
  sub_1C593EDC0(a1 + *(v9 + 36), a2, a3);
  sub_1C593EDC0(v8, a2, a3);
  return (*(v6 + 8))(v8, a2);
}

uint64_t sub_1C5AE30A4()
{
  type metadata accessor for ContentBelowSliderStyle();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191AB0);
  return sub_1C5BCA6A4();
}

uint64_t sub_1C5AE3120@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, uint64_t a11)
{
  v37 = a8;
  v33 = a5;
  v35 = a9;
  v36 = a11;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197528);
  MEMORY[0x1EEE9AC00](v34);
  v19 = &v32[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v32[-v21];
  v23 = type metadata accessor for DraggableViewModifier(0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v32[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v25 = a1;
  *(v25 + 1) = a2;
  *(v25 + 2) = a10;
  v25[24] = a3;
  *(v25 + 4) = a4;
  v25[40] = v33 & 1;
  *(v25 + 6) = a6;
  *(v25 + 7) = a7;
  v38 = 0;

  sub_1C5974668(a6);
  sub_1C5BCA684();
  v26 = v40;
  *(v25 + 8) = v39;
  *(v25 + 9) = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197530);
  (*(*(v27 - 8) + 56))(v22, 1, 1, v27);
  sub_1C59400B0(v22, v19, &qword_1EC197528);
  sub_1C5BCA684();
  sub_1C5924EF4(v22, &qword_1EC197528);
  v28 = &v25[v23[10]];
  *v28 = swift_getKeyPath();
  *(v28 + 1) = 0;
  *(v28 + 2) = 0;
  *(v28 + 3) = 0;
  v28[32] = 0;
  v29 = v23[11];
  *&v25[v29] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1921C8);
  swift_storeEnumTagMultiPayload();
  v30 = &v25[v23[12]];
  *v30 = swift_getKeyPath();
  v30[8] = 0;
  MEMORY[0x1C694E550](v25, v37, v23, v36);
  return sub_1C5AE8458(v25, type metadata accessor for DraggableViewModifier);
}

uint64_t sub_1C5AE33FC()
{
  swift_getKeyPath();
  sub_1C5BC9DF4();
}

uint64_t sub_1C5AE3470@<X0>(char a1@<W0>, void (*a2)(void)@<X1>, _BYTE *a3@<X8>)
{
  *a3 = a1;
  v5 = type metadata accessor for ContentBelowSliderStyle();
  a2();
  v6 = &a3[*(v5 + 40)];
  sub_1C5BCA684();
  *v6 = v9;
  *(v6 + 1) = v10;
  v7 = &a3[*(v5 + 44)];
  result = swift_getKeyPath();
  *v7 = result;
  v7[8] = 0;
  return result;
}

double sub_1C5AE3520()
{
  sub_1C5AE84B8();
  sub_1C5BC8F44();
  return v1;
}

uint64_t sub_1C5AE355C()
{
  swift_getKeyPath();
  sub_1C5BC9DF4();
}

uint64_t sub_1C5AE35D0()
{
  sub_1C5AE37D0();
  sub_1C5BC8F44();
  return v1;
}

uint64_t sub_1C5AE360C()
{
  swift_getKeyPath();
  sub_1C5BC9DF4();
}

double sub_1C5AE36A0()
{
  sub_1C5AE377C();
  sub_1C5BC8F44();
  return v1;
}

double sub_1C5AE36E0@<D0>(_OWORD *a1@<X8>)
{
  sub_1C5AE377C();
  sub_1C5BC8F44();
  result = *&v3;
  *a1 = v3;
  a1[1] = v4;
  return result;
}

unint64_t sub_1C5AE377C()
{
  result = qword_1EC197478;
  if (!qword_1EC197478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC197478);
  }

  return result;
}

unint64_t sub_1C5AE37D0()
{
  result = qword_1EDA4DDF8;
  if (!qword_1EDA4DDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA4DDF8);
  }

  return result;
}

void sub_1C5AE385C()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_1C5AE8BA4(319, &qword_1EDA4E188, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
    if (v1 <= 0x3F)
    {
      sub_1C5AE8BA4(319, &qword_1EDA46720, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1C5AE3954(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = *(*(*(a3 + 16) - 8) + 64) + 7;
  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v9 = ((((v8 + ((v6 + 1) & ~v6)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 9;
  v10 = (a2 - v7 + 255) >> 8;
  if (v9 <= 3)
  {
    v11 = v10 + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *&a1[v9];
      if (!*&a1[v9])
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *&a1[v9];
      if (!v14)
      {
        goto LABEL_28;
      }
    }

LABEL_24:
    v16 = (v14 - 1) << (8 * v9);
    if (v9 <= 3)
    {
      v17 = *a1;
    }

    else
    {
      v16 = 0;
      v17 = *a1;
    }

    return v7 + (v17 | v16) + 1;
  }

  if (v13)
  {
    v14 = a1[v9];
    if (a1[v9])
    {
      goto LABEL_24;
    }
  }

LABEL_28:
  v18 = &a1[v6 + 1] & ~v6;
  if (v5 >= 0x7FFFFFFE)
  {
    return (*(v4 + 48))(v18);
  }

  v19 = *(((v8 + v18) & 0xFFFFFFFFFFFFFFF8) + 8);
  if (v19 >= 0xFFFFFFFF)
  {
    LODWORD(v19) = -1;
  }

  v20 = v19 - 1;
  if (v20 < 0)
  {
    v20 = -1;
  }

  return (v20 + 1);
}

void sub_1C5AE3AD8(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = *(*(*(a4 + 16) - 8) + 64) + 7;
  v11 = ((((v10 + ((v9 + 1) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v8 >= a3)
  {
    v15 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v12 = (a3 - v8 + 255) >> 8;
    if (v11 <= 3)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v15 > 1)
      {
        if (v15 != 2)
        {
          *&a1[v11] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v11] = 0;
      }

      else if (v15)
      {
        a1[v11] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      v18 = &a1[v9 + 1] & ~v9;
      if (v7 < 0x7FFFFFFE)
      {
        v20 = ((v10 + v18) & 0xFFFFFFFFFFFFFFF8);
        if (a2 > 0x7FFFFFFE)
        {
          *v20 = a2 - 0x7FFFFFFF;
          v20[1] = 0;
        }

        else
        {
          v20[1] = a2;
        }
      }

      else
      {
        v19 = *(v6 + 56);

        v19(v18);
      }

      return;
    }
  }

  v16 = ~v8 + a2;
  bzero(a1, ((((v10 + ((v9 + 1) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 9);
  if (v11 <= 3)
  {
    v17 = (v16 >> 8) + 1;
  }

  else
  {
    v17 = 1;
  }

  if (v11 <= 3)
  {
    *a1 = v16;
    if (v15 > 1)
    {
LABEL_27:
      if (v15 == 2)
      {
        *&a1[v11] = v17;
      }

      else
      {
        *&a1[v11] = v17;
      }

      return;
    }
  }

  else
  {
    *a1 = v16;
    if (v15 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v15)
  {
    a1[v11] = v17;
  }
}

uint64_t sub_1C5AE3CE4@<X0>(uint64_t (*a1)(uint64_t a1)@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v86 = a1;
  v83 = a2;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191D38);
  v74 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v73 = &v71 - v4;
  v5 = type metadata accessor for DraggableViewModifier(0);
  v6 = v5 - 8;
  v85 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v84 = v7;
  v87 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_1C5BC8F34();
  v8 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v10 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1975D8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v71 - v12;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1975E0);
  v72 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v88 = &v71 - v14;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1975E8);
  v77 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v75 = &v71 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1975F0);
  v81 = *(v16 - 8);
  v82 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v79 = &v71 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197528);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v71 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197598);
  sub_1C5BCA694();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197530);
  v22 = (*(*(v21 - 8) + 48))(v20, 1, v21);
  sub_1C5924EF4(v20, &qword_1EC197528);
  v23 = *(v6 + 48);
  v24 = v3;
  v25 = v3 + v23;
  v27 = *v25;
  v26 = *(v25 + 16);
  LOBYTE(v25) = *(v25 + 32);
  v89 = v27;
  v90 = v26;
  if ((v25 & 1) == 0)
  {
    v28 = v27;

    sub_1C5BCB4E4();
    v29 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5AE8EE4(v28, *(&v89 + 1), v90, *(&v90 + 1), 0);
    (*(v8 + 8))(v10, v71);
    v89 = v93;
    v90 = v94;
  }

  v30 = v22 != 1;
  v31 = sub_1C5BC9894();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1975F8);
  v33 = v13;
  (*(*(v32 - 8) + 16))(v13, v86, v32);
  v34 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197600) + 36)];
  *v34 = v31;
  v35 = v89;
  *(v34 + 24) = v90;
  *(v34 + 8) = v35;
  v34[40] = 0;
  v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197608) + 36)] = 0;
  v86 = type metadata accessor for DraggableViewModifier;
  v36 = v87;
  sub_1C5AE8560(v24, v87, type metadata accessor for DraggableViewModifier);
  *&v90 = *(v85 + 80);
  v84 += (v90 + 16) & ~v90;
  v37 = (v90 + 16) & ~v90;
  *&v89 = v37;
  v38 = swift_allocObject();
  v85 = type metadata accessor for DraggableViewModifier;
  sub_1C5AE9678(v36, v38 + v37, type metadata accessor for DraggableViewModifier);
  v39 = (v33 + *(v11 + 36));
  *v39 = sub_1C5941E6C;
  v39[1] = 0;
  v39[2] = sub_1C5AE8EF0;
  v39[3] = v38;
  v40 = v73;
  sub_1C5AE4818(v73);
  sub_1C5BC8334();
  v71 = sub_1C5AE8F1C();
  v41 = sub_1C5924F54(&qword_1EDA466B0, &qword_1EC191D38);
  v42 = v78;
  sub_1C5BCA0B4();
  (*(v74 + 8))(v40, v42);
  sub_1C5924EF4(v33, &qword_1EC1975D8);
  LOBYTE(v91) = v30;
  v43 = v36;
  v44 = v36;
  v45 = v86;
  sub_1C5AE8560(v24, v44, v86);
  v46 = v84;
  v47 = swift_allocObject();
  v48 = v43;
  v49 = v85;
  sub_1C5AE9678(v48, v47 + v89, v85);
  *(v47 + v46) = v30;
  *&v93 = v11;
  *(&v93 + 1) = v42;
  *&v94 = v71;
  *(&v94 + 1) = v41;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v51 = MEMORY[0x1E69E6370];
  v52 = v75;
  v53 = v76;
  v54 = v88;
  sub_1C5BCA344();

  (*(v72 + 8))(v54, v53);
  v55 = *(v24 + 40);
  v91 = *(v24 + 32);
  v92 = v55;
  v56 = v87;
  sub_1C5AE8560(v24, v87, v45);
  v57 = swift_allocObject();
  v58 = v56;
  sub_1C5AE9678(v56, v57 + v89, v49);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195790);
  *&v93 = v53;
  *(&v93 + 1) = v51;
  *&v94 = OpaqueTypeConformance2;
  *(&v94 + 1) = MEMORY[0x1E69E6388];
  v60 = swift_getOpaqueTypeConformance2();
  v61 = sub_1C5AE9478();
  v63 = v79;
  v62 = v80;
  sub_1C5BCA334();

  (*(v77 + 8))(v52, v62);
  v64 = *(v24 + 8);
  v65 = *(v24 + 16);
  *&v93 = *v24;
  *(&v93 + 1) = v64;
  *&v94 = v65;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191B80);
  MEMORY[0x1C694EA50](&v91, v66);
  sub_1C5AE8560(v24, v56, v86);
  v67 = swift_allocObject();
  sub_1C5AE9678(v58, v67 + v89, v85);
  v68 = swift_allocObject();
  *(v68 + 16) = sub_1C5AE94FC;
  *(v68 + 24) = v67;
  *&v93 = v62;
  *(&v93 + 1) = v59;
  *&v94 = v60;
  *(&v94 + 1) = v61;
  swift_getOpaqueTypeConformance2();
  v69 = v82;
  sub_1C5BCA334();

  return (*(v81 + 8))(v63, v69);
}

uint64_t sub_1C5AE4818@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v24 = a1;
  v3 = type metadata accessor for DraggableViewModifier(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v20[0] = v5;
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C5BC9304();
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1C5BC82F4();
  v21 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191D30);
  v12 = *(v11 - 8);
  v22 = v11;
  v23 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = v20 - v13;
  sub_1C5BC9474();
  sub_1C5BC82B4();
  sub_1C5AE8560(v2, v6, type metadata accessor for DraggableViewModifier);
  v15 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v16 = swift_allocObject();
  sub_1C5AE9678(v6, v16 + v15, type metadata accessor for DraggableViewModifier);
  sub_1C5AE8518(&qword_1EDA467D8, MEMORY[0x1E697BEA8]);
  sub_1C5AE8518(&qword_1EDA467E0, MEMORY[0x1E697BE90]);
  sub_1C5BCA8E4();

  (*(v21 + 8))(v10, v8);
  sub_1C5AE8560(v20[1], v6, type metadata accessor for DraggableViewModifier);
  v17 = swift_allocObject();
  sub_1C5AE9678(v6, v17 + v15, type metadata accessor for DraggableViewModifier);
  sub_1C5924F54(&qword_1EDA46438, &qword_1EC191D30);
  v18 = v22;
  sub_1C5BCA8D4();

  return (*(v23 + 8))(v14, v18);
}

void sub_1C5AE4C28(uint64_t a1, uint64_t a2, double *a3)
{
  v6 = sub_1C5BC8F34();
  v53 = *(v6 - 8);
  v54 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v52 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C5BC89D4();
  v57 = *(v8 - 8);
  v58 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v56 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v55 = &v52 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197530);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v59 = (&v52 - v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197528);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v52 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = (&v52 - v22);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v52 - v25;
  v27 = *a2;
  v28 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (*(a2 + 8))
    {
      return;
    }

    goto LABEL_6;
  }

  v29 = type metadata accessor for DraggableViewModifier(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197598);
  sub_1C5BCA694();
  v30 = (*(v13 + 48))(v26, 1, v12);
  sub_1C5924EF4(v26, &qword_1EC197528);
  if (v30 == 1)
  {
    if ((v28 & 1) == 0)
    {
LABEL_6:
      v31 = *(a3 + 1);
      v32 = *(a3 + 2);
      v61 = *a3;
      v62 = v31;
      v63 = v32;
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191B80);
      MEMORY[0x1C694EA50](&v60, v33);
      *v23 = v60;
      sub_1C5BC7AB4();
      (*(v13 + 56))(v23, 0, 1, v12);
      v29 = type metadata accessor for DraggableViewModifier(0);
      sub_1C59400B0(v23, v20, &qword_1EC197528);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197598);
      sub_1C5BCA6A4();
      sub_1C5924EF4(v23, &qword_1EC197528);
      goto LABEL_9;
    }

LABEL_8:
    (*(v13 + 56))(v23, 1, 1, v12);
    sub_1C59400B0(v23, v20, &qword_1EC197528);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197598);
    sub_1C5BCA6A4();
    sub_1C5924EF4(v23, &qword_1EC197528);
    return;
  }

  if (v28)
  {
    goto LABEL_8;
  }

LABEL_9:
  type metadata accessor for DraggableViewModifier(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197598);
  sub_1C5BCA694();
  if ((*(v13 + 48))(v17, 1, v12) == 1)
  {
    sub_1C5924EF4(v17, &qword_1EC197528);
  }

  else
  {
    v34 = v59;
    sub_1C59E7D34(v17, v59, &qword_1EC197530);
    v35 = v55;
    sub_1C59EFDDC(v55);
    v37 = v56;
    v36 = v57;
    v38 = v58;
    (*(v57 + 104))(v56, *MEMORY[0x1E697E7D0], v58);
    v39 = sub_1C5BC89C4();
    v40 = *(v36 + 8);
    v40(v37, v38);
    v40(v35, v38);
    if ((v39 & 1) == 0)
    {
      v27 = -v27;
    }

    v41 = *v34;
    v42 = *(a3 + 9);
    v61 = a3[8];
    v62 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191710);
    sub_1C5BCA694();
    v43 = v60;
    v44 = a3 + *(v29 + 48);
    v45 = *v44;
    if (v44[8] == 1)
    {
      v46 = *v44;
    }

    else
    {

      sub_1C5BCB4E4();
      v47 = sub_1C5BC9844();
      sub_1C5BC7C54();

      v48 = v52;
      sub_1C5BC8F24();
      swift_getAtKeyPath();
      sub_1C5942458(v45, 0);
      (*(v53 + 8))(v48, v54);
      v46 = v61;
    }

    v49 = v41 + v27 / (v43 - (v46 + v46));
    if (v49 <= 0.0)
    {
      v49 = 0.0;
    }

    v50 = *(a3 + 1);
    v51 = *(a3 + 2);
    v61 = *a3;
    v62 = v50;
    if (v49 > 1.0)
    {
      v49 = 1.0;
    }

    v63 = v51;
    v60 = v49;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191B80);
    sub_1C5BCA824();
    sub_1C5924EF4(v34, &qword_1EC197530);
  }
}

void sub_1C5AE534C(uint64_t a1, uint64_t a2)
{
  v54 = a1;
  v3 = sub_1C5BC8F34();
  v52 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v51 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C5BC89D4();
  v53 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v45 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197528);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v45 - v15);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v45 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197530);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  if (*(a2 + 40) == 1)
  {
    v50 = (&v45 - v22);
    v46 = v3;
    v49 = type metadata accessor for DraggableViewModifier(0);
    v23 = *(v49 + 36);
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197598);
    v48 = v23;
    sub_1C5BCA694();
    if ((*(v21 + 48))(v19, 1, v20) == 1)
    {
      sub_1C5924EF4(v19, &qword_1EC197528);
      v24 = *(a2 + 8);
      v25 = *(a2 + 16);
      v56 = *a2;
      v57 = v24;
      v58 = v25;
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191B80);
      MEMORY[0x1C694EA50](&v55, v26);
      *v16 = v55;
      sub_1C5BC82D4();
      (*(v21 + 56))(v16, 0, 1, v20);
      sub_1C59400B0(v16, v13, &qword_1EC197528);
      sub_1C5BCA6A4();
      sub_1C5924EF4(v16, &qword_1EC197528);
    }

    else
    {
      v27 = v50;
      sub_1C59E7D34(v19, v50, &qword_1EC197530);
      v28 = v49;
      sub_1C59EFDDC(v10);
      v29 = v53;
      (*(v53 + 104))(v7, *MEMORY[0x1E697E7D0], v5);
      v30 = sub_1C5BC89C4();
      v31 = *(v29 + 8);
      v31(v7, v5);
      v31(v10, v5);
      sub_1C5BC82C4();
      if (v30)
      {
        v33 = v32;
      }

      else
      {
        v33 = -v32;
      }

      v34 = *v27;
      v35 = *(a2 + 72);
      v56 = *(a2 + 64);
      v57 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191710);
      sub_1C5BCA694();
      v36 = v55;
      v37 = a2 + *(v28 + 48);
      v38 = *v37;
      if (*(v37 + 8) == 1)
      {
        v39 = *v37;
      }

      else
      {

        sub_1C5BCB4E4();
        v40 = sub_1C5BC9844();
        sub_1C5BC7C54();

        v41 = v51;
        sub_1C5BC8F24();
        swift_getAtKeyPath();
        sub_1C5942458(v38, 0);
        (*(v52 + 8))(v41, v46);
        v39 = v56;
      }

      v42 = v34 + v33 / (v36 - (v39 + v39));
      if (v42 > 1.0)
      {
        v42 = 1.0;
      }

      v43 = *(a2 + 8);
      v44 = *(a2 + 16);
      v56 = *a2;
      v57 = v43;
      if (v42 <= 0.0)
      {
        v42 = 0.0;
      }

      v58 = v44;
      v55 = v42;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191B80);
      sub_1C5BCA824();
      sub_1C5924EF4(v50, &qword_1EC197530);
    }
  }
}

void sub_1C5AE592C(uint64_t a1, char *a2)
{
  v89 = a1;
  v3 = sub_1C5BC89D4();
  v85 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v84 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v83 = &v73 - v6;
  v86 = sub_1C5BC8F34();
  v88 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v87 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C5BC7AC4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197528);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v73 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v73 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197530);
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  if (a2[40] == 1)
  {
    if (a2[24] != 1)
    {
LABEL_15:
      (*(v22 + 56))(v17, 1, 1, v21);
      type metadata accessor for DraggableViewModifier(0);
      sub_1C59400B0(v17, v14, &qword_1EC197528);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197598);
      sub_1C5BCA6A4();
      sub_1C5924EF4(v17, &qword_1EC197528);
      return;
    }

    v82 = &v73 - v23;
    v80 = v3;
    v81 = type metadata accessor for DraggableViewModifier(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197598);
    sub_1C5BCA694();
    if ((*(v22 + 48))(v20, 1, v21) == 1)
    {
      v24 = &qword_1EC197528;
      v25 = v20;
LABEL_5:
      sub_1C5924EF4(v25, v24);
      goto LABEL_15;
    }

    v79 = a2;
    v26 = v20;
    v27 = v82;
    sub_1C59E7D34(v26, v82, &qword_1EC197530);
    sub_1C5BC82D4();
    sub_1C5BC7A74();
    v29 = v28;
    (*(v9 + 8))(v11, v8);
    if (v29 >= 0.2)
    {
      v40 = v27;
    }

    else
    {
      sub_1C5BC82C4();
      if (fabs(v30) < 3.0)
      {
        v31 = v79;
        v32 = *(v79 + 8);
        v33 = *(v79 + 9);
        v90 = v32;
        v91 = v33;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191710);
        sub_1C5BCA694();
        if (v93 > 0.0)
        {
          v90 = v32;
          v91 = v33;
          sub_1C5BCA694();
          v34 = v93;
          v35 = (v31 + *(v81 + 40));
          v37 = *v35;
          v36 = v35[1];
          v38 = v35[2];
          v39 = v35[3];
          v75 = *(v35 + 32);
          v78 = *&v36;
          v74 = v37;
          v77 = v38;
          v76 = v39;
          if (v75 == 1)
          {
            v43 = *&v36;
            v47 = *&v39;
            v46 = v86;
          }

          else
          {

            sub_1C5BCB4E4();
            v41 = sub_1C5BC9844();
            sub_1C5BC7C54();

            v42 = v87;
            sub_1C5BC8F24();
            swift_getAtKeyPath();
            sub_1C5AE8EE4(v37, v36, v77, v76, 0);
            v73 = *(v88 + 8);
            v73(v42, v86);
            v43 = v91;

            sub_1C5BCB4E4();
            v44 = sub_1C5BC9844();
            sub_1C5BC7C54();

            sub_1C5BC8F24();
            swift_getAtKeyPath();
            v45 = v37;
            v46 = v86;
            sub_1C5AE8EE4(v45, *&v78, v77, v76, 0);
            v73(v42, v46);
            v47 = v92;
          }

          v48 = (v31 + *(v81 + 48));
          v49 = *v48;
          LODWORD(v89) = *(v48 + 8);
          if (v89 == 1)
          {
            v50 = *&v49;
          }

          else
          {

            sub_1C5BCB4E4();
            v51 = sub_1C5BC9844();
            sub_1C5BC7C54();

            v52 = v87;
            sub_1C5BC8F24();
            swift_getAtKeyPath();
            sub_1C5942458(v49, 0);
            (*(v88 + 8))(v52, v46);
            v50 = v90;
          }

          v53 = v34 - v43 - v47;
          v54 = v50 + v50;
          sub_1C5BC82E4();
          v56 = v55;
          if (v75)
          {
            v57 = v78;
          }

          else
          {
            v58 = v46;
            v59 = v74;

            sub_1C5BCB4E4();
            v60 = sub_1C5BC9844();
            sub_1C5BC7C54();

            v61 = v87;
            sub_1C5BC8F24();
            swift_getAtKeyPath();
            v62 = v59;
            v46 = v58;
            sub_1C5AE8EE4(v62, *&v78, v77, v76, 0);
            (*(v88 + 8))(v61, v58);
            v57 = v91;
          }

          v63 = v53 - v54;
          if (v89)
          {
            v64 = *&v49;
          }

          else
          {

            sub_1C5BCB4E4();
            v65 = sub_1C5BC9844();
            sub_1C5BC7C54();

            v66 = v87;
            sub_1C5BC8F24();
            swift_getAtKeyPath();
            sub_1C5942458(v49, 0);
            (*(v88 + 8))(v66, v46);
            v64 = v90;
          }

          v67 = v56 - v57 - v64;
          v68 = v83;
          sub_1C59EFDDC(v83);
          v70 = v84;
          v69 = v85;
          v71 = v80;
          (*(v85 + 104))(v84, *MEMORY[0x1E697E7D0], v80);
          LODWORD(v89) = sub_1C5BC89C4();
          v72 = *(v69 + 8);
          v72(v70, v71);
          v72(v68, v71);
          if ((v89 & 1) == 0)
          {
            v67 = v63 - v67;
          }

          if (qword_1EC190860 != -1)
          {
            swift_once();
          }

          MEMORY[0x1EEE9AC00](qword_1EC1A6D08);
          *(&v73 - 4) = v31;
          *(&v73 - 3) = v67;
          *(&v73 - 2) = v63;
          sub_1C5BC87F4();
        }

        v24 = &qword_1EC197530;
        v25 = v82;
        goto LABEL_5;
      }

      v40 = v82;
    }

    sub_1C5924EF4(v40, &qword_1EC197530);
    goto LABEL_15;
  }
}

void sub_1C5AE641C(double a1, double a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197528);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  type metadata accessor for DraggableViewModifier(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197598);
  sub_1C5BCA694();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197530);
  v8 = (*(*(v7 - 8) + 48))(v6, 1, v7);
  sub_1C5924EF4(v6, &qword_1EC197528);
  if ((a2 == 1.0 || a2 == 0.0) && v8 != 1 && a1 != a2)
  {
    v12 = [objc_allocWithZone(MEMORY[0x1E69DCAE8]) initWithStyle_];
    [v12 impactOccurred];
  }
}

uint64_t sub_1C5AE658C()
{
  result = MEMORY[0x1C694ED40](0.15, 1.0, 0.0);
  qword_1EC1A6D08 = result;
  return result;
}

uint64_t sub_1C5AE6670()
{
  type metadata accessor for ContentBelowSliderStyle();

  return sub_1C5AE30A4();
}

uint64_t sub_1C5AE66FC()
{
  v1 = sub_1C5BC8F34();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for CapsuleProgress(0);
  v6 = result;
  v7 = v0 + *(result + 28);
  v8 = *v7;
  v9 = *(v7 + 8);
  if (v9 == 1)
  {
    if (*&v8 <= 0.0)
    {
      return result;
    }
  }

  else
  {

    sub_1C5BCB4E4();
    v10 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5942458(v8, 0);
    result = (*(v2 + 8))(v4, v1);
    if (v23 <= 0.0)
    {
      return result;
    }
  }

  v11 = v0 + *(v6 + 32);
  v12 = *v11;
  v13 = *(v11 + 8);
  v14 = *(v11 + 16);
  v23 = v12;
  LOBYTE(v24) = v13;
  *(&v24 + 1) = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195880);
  result = sub_1C5BCA694();
  if ((v28 & 1) == 0)
  {
    v15 = v27;
    if (v9)
    {
      v16 = *&v8;
      if (v16 + v16 >= v27 || v27 <= 0.0)
      {
        return result;
      }
    }

    else
    {

      sub_1C5BCB4E4();
      v17 = sub_1C5BC9844();
      sub_1C5BC7C54();

      sub_1C5BC8F24();
      swift_getAtKeyPath();
      sub_1C5942458(v8, 0);
      v18 = *(v2 + 8);
      result = v18(v4, v1);
      if (v15 <= 0.0 || v23 + v23 >= v15)
      {
        return result;
      }

      sub_1C5BCB4E4();
      v19 = sub_1C5BC9844();
      sub_1C5BC7C54();

      sub_1C5BC8F24();
      swift_getAtKeyPath();
      sub_1C5942458(v8, 0);
      result = v18(v4, v1);
      v16 = v23;
    }

    v20 = v16 / v15;
    if (v20 > 1.0 - v20)
    {
      __break(1u);
    }

    else
    {
      v21 = *(v0 + *(v6 + 36));
      if (v21 < 0.0 || v21 > 1.0)
      {
        v23 = *(v0 + *(v6 + 36));
        v24 = xmmword_1C5BE5090;
        v25 = v20;
        v26 = 1.0 - v20;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197698);
        sub_1C5924F54(&qword_1EC1976A0, &qword_1EC197698);
        return swift_willThrowTypedImpl();
      }
    }
  }

  return result;
}

double sub_1C5AE6ADC@<D0>(uint64_t a1@<X8>)
{
  v77 = a1;
  v2 = type metadata accessor for CapsuleProgressStyle(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  *&v76 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_1C5BC8F34();
  v58 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v57 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CapsuleProgress(0);
  v6 = *(v5 - 8);
  v69 = v5 - 8;
  v68 = v6;
  v67 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v66 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197618);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v56 - v10;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197620) - 8;
  MEMORY[0x1EEE9AC00](v64);
  v63 = &v56 - v12;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197628) - 8;
  MEMORY[0x1EEE9AC00](v65);
  v62 = &v56 - v13;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197630);
  MEMORY[0x1EEE9AC00](v72);
  v71 = &v56 - v14;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197638);
  MEMORY[0x1EEE9AC00](v70);
  *&v74 = &v56 - v15;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197640);
  MEMORY[0x1EEE9AC00](v73);
  v75 = &v56 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1970D8);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1C5BD4D40;
  sub_1C5AE66FC();
  if (v18 <= 0.0)
  {
    v18 = 0.0;
  }

  v19 = 1.0;
  if (v18 > 1.0)
  {
    v18 = 1.0;
  }

  *(v17 + 32) = v18;
  *(v17 + 40) = 0x3FF0000000000000;
  sub_1C5AE73BC(&v81);
  v60 = v81;
  v20 = v82;
  v21 = BYTE8(v82);
  v61 = sub_1C5BCAA54();
  v23 = v22;
  sub_1C5AE7590(v1, &v81);
  v24 = v81;
  v80 = v21;
  v25 = &v11[*(v9 + 44)];
  v26 = *MEMORY[0x1E697F468];
  v27 = sub_1C5BC9044();
  (*(*(v27 - 8) + 104))(v25, v26, v27);
  *&v25[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1924E0) + 36)] = 256;
  *v11 = 0;
  *(v11 + 1) = *v79;
  *(v11 + 1) = *&v79[3];
  *(v11 + 1) = v17;
  *(v11 + 1) = v60;
  *(v11 + 4) = v20;
  v11[40] = v21;
  *(v11 + 41) = *v78;
  *(v11 + 11) = *&v78[3];
  *(v11 + 3) = v24;
  *(v11 + 8) = v61;
  *(v11 + 9) = v23;
  v28 = sub_1C5BCAA64();
  v30 = v29;
  v31 = v63;
  v32 = &v63[*(v64 + 44)];
  sub_1C5AE7860(v1, v32);
  v33 = (v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197648) + 36));
  *v33 = v28;
  v33[1] = v30;
  v34 = v11;
  v35 = v62;
  v36 = v31;
  sub_1C59E7D34(v34, v31, &qword_1EC197618);
  v37 = v66;
  sub_1C5AE8560(v1, v66, type metadata accessor for CapsuleProgress);
  v38 = (*(v68 + 80) + 16) & ~*(v68 + 80);
  v39 = swift_allocObject();
  sub_1C5AE9678(v37, v39 + v38, type metadata accessor for CapsuleProgress);
  sub_1C59E7D34(v36, v35, &qword_1EC197620);
  v40 = (v35 + *(v65 + 44));
  *v40 = sub_1C5941E6C;
  v40[1] = 0;
  v40[2] = sub_1C5AE96E0;
  v40[3] = v39;
  v41 = v1 + *(v69 + 28);
  v42 = *v41;
  if (*(v41 + 8) == 1)
  {
    v43 = v76;
    if (v42)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  sub_1C5BCB4E4();
  v44 = sub_1C5BC9844();
  sub_1C5BC7C54();

  v45 = v57;
  sub_1C5BC8F24();
  swift_getAtKeyPath();
  sub_1C5942458(v42, 0);
  (*(v58 + 8))(v45, v59);
  v43 = v76;
  if ((v81 & 1) == 0)
  {
LABEL_9:
    sub_1C59F01FC(v43);
    v19 = *(v43 + 104);
    sub_1C5AE8458(v43, type metadata accessor for CapsuleProgressStyle);
  }

LABEL_10:
  v46 = v71;
  sub_1C59E7D34(v35, v71, &qword_1EC197628);
  *(v46 + *(v72 + 36)) = v19;
  v47 = v74;
  sub_1C59E7D34(v46, v74, &qword_1EC197630);
  v48 = (v47 + *(v70 + 36));
  *v48 = sub_1C5AE7D88;
  v48[1] = 0;
  sub_1C59F01FC(v43);
  sub_1C5AE8458(v43, type metadata accessor for CapsuleProgressStyle);
  sub_1C5BCAA54();
  sub_1C5BC85D4();
  v49 = v47;
  v50 = v75;
  sub_1C59E7D34(v49, v75, &qword_1EC197638);
  v51 = (v50 + *(v73 + 36));
  v52 = v82;
  *v51 = v81;
  v51[1] = v52;
  v51[2] = v83;
  sub_1C59F01FC(v43);
  v76 = *(v43 + 8);
  v74 = *(v43 + 24);
  sub_1C5AE8458(v43, type metadata accessor for CapsuleProgressStyle);
  LOBYTE(v46) = sub_1C5BC9894();
  v53 = v77;
  sub_1C59E7D34(v50, v77, &qword_1EC197640);
  v54 = v53 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197650) + 36);
  *v54 = v46;
  *(v54 + 24) = v74;
  result = *&v76;
  *(v54 + 8) = v76;
  *(v54 + 40) = 0;
  return result;
}

uint64_t sub_1C5AE73BC@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for CapsuleProgressStyle(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C59F01FC(v4);
  v5 = *(v4 + 6);

  sub_1C5AE8458(v4, type metadata accessor for CapsuleProgressStyle);
  sub_1C59F01FC(v4);
  v6 = v4[64];
  sub_1C5AE8458(v4, type metadata accessor for CapsuleProgressStyle);
  if (v6 == 1)
  {
    sub_1C59F01FC(v4);
    v7 = *(v4 + 7);

    sub_1C5AE8458(v4, type metadata accessor for CapsuleProgressStyle);
    sub_1C59F01FC(v4);
    v8 = *(v4 + 9);
    sub_1C5AE8458(v4, type metadata accessor for CapsuleProgressStyle);
    *&v14 = v7;
    *(&v14 + 1) = v8;
    v15 = 0;
  }

  else
  {
    v14 = xmmword_1C5BDB910;
    v15 = 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197678);
  sub_1C5AE9794();
  sub_1C5BC92C4();
  v9 = v16;
  v10 = v17;
  v13 = v16;
  *a1 = v5;
  *(a1 + 8) = v9;
  *(a1 + 24) = v10;

  v11 = v13;
  sub_1C5AE98D8(v13, *(&v13 + 1), v10);
  sub_1C599ACD8(v11, *(&v11 + 1), v10);
}

uint64_t sub_1C5AE7590@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v23 = a2;
  v3 = sub_1C5BC8F34();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC192F00);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - v8;
  v10 = type metadata accessor for CapsuleProgressStyle(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v22 - v14;
  sub_1C59400B0(a1, v9, &unk_1EC192F00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C5AE9678(v9, v15, type metadata accessor for CapsuleProgressStyle);
  }

  else
  {
    sub_1C5BCB4E4();
    v16 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();

    (*(v4 + 8))(v6, v3);
  }

  v17 = v15[64];
  result = sub_1C5AE8458(v15, type metadata accessor for CapsuleProgressStyle);
  if (v17)
  {
    v19 = 0;
    v20 = 0;
  }

  else
  {
    sub_1C59F01FC(v12);
    v19 = *(v12 + 7);

    sub_1C5AE8458(v12, type metadata accessor for CapsuleProgressStyle);
    sub_1C59F01FC(v12);
    v20 = *(v12 + 9);
    result = sub_1C5AE8458(v12, type metadata accessor for CapsuleProgressStyle);
  }

  v21 = v23;
  *v23 = v19;
  v21[1] = v20;
  return result;
}

uint64_t sub_1C5AE7860@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197658);
  v38 = *(v3 - 8);
  v39 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v37 - v4;
  v6 = sub_1C5BC8F34();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC192F00);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v37 - v11;
  v13 = type metadata accessor for CapsuleProgressStyle(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = a1;
  sub_1C59400B0(a1, v12, &unk_1EC192F00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C5AE9678(v12, v15, type metadata accessor for CapsuleProgressStyle);
  }

  else
  {
    sub_1C5BCB4E4();
    v16 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();

    (*(v7 + 8))(v9, v6);
  }

  v17 = *(v15 + 12);

  sub_1C5AE8458(v15, type metadata accessor for CapsuleProgressStyle);
  if (v17)
  {
    v18 = v37 + *(type metadata accessor for CapsuleProgress(0) + 32);
    v19 = *v18;
    v20 = *(v18 + 8);
    v21 = *(v18 + 16);
    *&v43 = v19;
    BYTE8(v43) = v20;
    *&v44 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195880);
    sub_1C5BCA694();
    if ((v42 & 1) == 0)
    {
      v25 = v41;
      v26 = *MEMORY[0x1E697F468];
      v27 = sub_1C5BC9044();
      (*(*(v27 - 8) + 104))(v5, v26, v27);
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197660);
      *&v5[*(v28 + 52)] = v17;
      *&v5[*(v28 + 56)] = 256;

      sub_1C5BCAA54();
      sub_1C5BC85D4();
      v29 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197668) + 36)];
      v30 = v44;
      *v29 = v43;
      *(v29 + 1) = v30;
      *(v29 + 2) = v45;
      *&v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197670) + 36)] = xmmword_1C5BE75E0;
      sub_1C5AE66FC();
      v32 = v31;

      v34 = v39;
      v33 = v40;
      v35 = &v5[*(v39 + 36)];
      *v35 = v25 * v32;
      *(v35 + 1) = 0;
      sub_1C59E7D34(v5, v33, &qword_1EC197658);
      v24 = v34;
      v23 = v33;
      v22 = 0;
      return (*(v38 + 56))(v23, v22, 1, v24);
    }
  }

  v22 = 1;
  v24 = v39;
  v23 = v40;
  return (*(v38 + 56))(v23, v22, 1, v24);
}

uint64_t sub_1C5AE7D08()
{
  type metadata accessor for CapsuleProgress(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195880);
  return sub_1C5BCA6A4();
}

uint64_t sub_1C5AE7DB0()
{
  sub_1C5AE8404();

  return sub_1C5BC8F44();
}

uint64_t sub_1C5AE7DF8(uint64_t a1)
{
  v2 = type metadata accessor for CapsuleProgressStyle(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  sub_1C5AE8560(a1, &v9 - v6, type metadata accessor for CapsuleProgressStyle);
  sub_1C5AE8560(v7, v4, type metadata accessor for CapsuleProgressStyle);
  sub_1C5AE8404();
  sub_1C5BC8F54();
  return sub_1C5AE8458(v7, type metadata accessor for CapsuleProgressStyle);
}

uint64_t sub_1C5AE7F04@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC190868 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for CapsuleProgressStyle(0);
  v3 = __swift_project_value_buffer(v2, qword_1EC1A6D10);
  return sub_1C5AE8560(v3, a1, type metadata accessor for CapsuleProgressStyle);
}

uint64_t sub_1C5AE7F84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C59AEC40();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_1C5AE7FE8()
{
  v0 = type metadata accessor for CapsuleProgressStyle(0);
  __swift_allocate_value_buffer(v0, qword_1EC1A6D10);
  v1 = __swift_project_value_buffer(v0, qword_1EC1A6D10);
  if (qword_1EC190670 != -1)
  {
    swift_once();
  }

  v2 = objc_opt_self();

  v3 = [v2 systemGrayColor];
  v6 = sub_1C5BCA424();
  sub_1C5BC85E4();
  sub_1C5BC85E4();
  if (qword_1EC190678 != -1)
  {
    swift_once();
  }

  v4 = [v2 systemFillColor];
  sub_1C5BCA424();
  sub_1C5BC85E4();
  sub_1C5BC85E4();
  *(v1 + 104) = 0x3FD0000000000000;
  sub_1C5BC7AF4();
  *v1 = xmmword_1C5BE75F0;
  *(v1 + 16) = xmmword_1C5BE7600;
  *(v1 + 32) = xmmword_1C5BE5090;
  *(v1 + 64) = 1;
  sub_1C59E6BD4();
  *(v1 + 48) = sub_1C5BC85E4();
  result = sub_1C5BC85E4();
  *(v1 + 56) = result;
  *(v1 + 72) = 0x3FF0000000000000;
  *(v1 + 80) = 0;
  *(v1 + 88) = 0;
  *(v1 + 96) = 0;
  return result;
}

uint64_t sub_1C5AE821C()
{
  v0 = type metadata accessor for CapsuleProgressStyle(0);
  __swift_allocate_value_buffer(v0, qword_1EC1A6D28);
  v1 = __swift_project_value_buffer(v0, qword_1EC1A6D28);
  sub_1C5BCA494();
  v5 = sub_1C5BCA4C4();
  sub_1C5BC85E4();
  sub_1C5BC85E4();
  if (qword_1EC190678 != -1)
  {
    swift_once();
  }

  v2 = objc_opt_self();

  v3 = [v2 systemFillColor];
  sub_1C5BCA424();
  sub_1C5BC85E4();
  sub_1C5BC85E4();
  *(v1 + 104) = 0x3FD0000000000000;
  sub_1C5BC7AF4();
  *v1 = 0x4030000000000000;
  *(v1 + 8) = 0u;
  *(v1 + 24) = 0u;
  *(v1 + 40) = 0x3FF0CCCCCCCCCCCDLL;
  *(v1 + 64) = 1;
  sub_1C59E6BD4();
  *(v1 + 48) = sub_1C5BC85E4();
  result = sub_1C5BC85E4();
  *(v1 + 56) = result;
  *(v1 + 72) = 0x3FF0000000000000;
  *(v1 + 80) = 0;
  *(v1 + 88) = 0;
  *(v1 + 96) = 0;
  return result;
}

unint64_t sub_1C5AE8404()
{
  result = qword_1EC197520;
  if (!qword_1EC197520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC197520);
  }

  return result;
}

uint64_t sub_1C5AE8458(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1C5AE84B8()
{
  result = qword_1EC197538;
  if (!qword_1EC197538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC197538);
  }

  return result;
}

uint64_t sub_1C5AE8518(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C5AE8560(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1C5AE85C8()
{
  result = qword_1EDA464B8;
  if (!qword_1EDA464B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197568);
    sub_1C5AE8680();
    sub_1C5924F54(&qword_1EDA46088, &qword_1EC192C80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA464B8);
  }

  return result;
}

unint64_t sub_1C5AE8680()
{
  result = qword_1EDA465C8;
  if (!qword_1EDA465C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195F58);
    sub_1C5924F54(&qword_1EDA466D8, &qword_1EC197570);
    sub_1C5924F54(&qword_1EDA460A0, &qword_1EC195F60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA465C8);
  }

  return result;
}