unint64_t sub_248A625D0()
{
  result = qword_27EEBDA48;
  if (!qword_27EEBDA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBDA48);
  }

  return result;
}

unint64_t sub_248A62628()
{
  result = qword_27EEBDA50;
  if (!qword_27EEBDA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBDA50);
  }

  return result;
}

unint64_t sub_248A62680()
{
  result = qword_27EEBDA58;
  if (!qword_27EEBDA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBDA58);
  }

  return result;
}

unint64_t sub_248A626D8()
{
  result = qword_27EEBDA60;
  if (!qword_27EEBDA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBDA60);
  }

  return result;
}

unint64_t sub_248A62730()
{
  result = qword_27EEBDA68;
  if (!qword_27EEBDA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBDA68);
  }

  return result;
}

unint64_t sub_248A62788()
{
  result = qword_27EEBDA70;
  if (!qword_27EEBDA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBDA70);
  }

  return result;
}

unint64_t sub_248A627E0()
{
  result = qword_27EEBDA78;
  if (!qword_27EEBDA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBDA78);
  }

  return result;
}

unint64_t sub_248A62838()
{
  result = qword_27EEBDA80;
  if (!qword_27EEBDA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBDA80);
  }

  return result;
}

uint64_t sub_248A6288C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_248A628D4()
{
  result = qword_27EEBDA98;
  if (!qword_27EEBDA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBDA98);
  }

  return result;
}

unint64_t sub_248A62928()
{
  result = qword_27EEBDAA0;
  if (!qword_27EEBDAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBDAA0);
  }

  return result;
}

unint64_t sub_248A6297C()
{
  result = qword_27EEBDAA8;
  if (!qword_27EEBDAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBDAA8);
  }

  return result;
}

uint64_t Application.localizedTitle.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t Application.bundleIdentifier.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t Application.appIconImageData.getter()
{
  swift_getKeyPath();
  v3 = v0;
  sub_248A686AC(&qword_27EEBDAB8, type metadata accessor for Application);
  sub_248A6D4F4();

  swift_beginAccess();
  v1 = *(v0 + 56);
  sub_248A62C38(v1, *(v3 + 64));
  return v1;
}

uint64_t sub_248A62B14@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_248A686AC(&qword_27EEBDAB8, type metadata accessor for Application);
  sub_248A6D4F4();

  swift_beginAccess();
  v4 = *(v3 + 56);
  v5 = *(v3 + 64);
  *a2 = v4;
  a2[1] = v5;
  return sub_248A62C38(v4, v5);
}

uint64_t sub_248A62BD4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  sub_248A62C38(*a1, v3);
  return Application.appIconImageData.setter(v2, v3);
}

uint64_t sub_248A62C38(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_248A557A0(a1, a2);
  }

  return a1;
}

uint64_t Application.appIconImageData.setter(uint64_t a1, unint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 56);
  v6 = *(v2 + 64);
  sub_248A62C38(v5, v6);
  v7 = sub_248A6847C(v5, v6, a1, a2);
  sub_248A55848(v5, v6);
  if (v7)
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_248A686AC(&qword_27EEBDAB8, type metadata accessor for Application);
    sub_248A6D4E4();
    sub_248A55848(a1, a2);
  }

  else
  {
    v9 = *(v2 + 56);
    v10 = *(v2 + 64);
    *(v2 + 56) = a1;
    *(v2 + 64) = a2;
    return sub_248A55848(v9, v10);
  }
}

uint64_t sub_248A62DBC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  swift_beginAccess();
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  *(a1 + 56) = a2;
  *(a1 + 64) = a3;
  sub_248A62C38(a2, a3);
  return sub_248A55848(v6, v7);
}

void (*Application.appIconImageData.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x277D84FD8])
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
  v4[4] = OBJC_IVAR____TtC21DeviceSharingServices11Application___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_248A686AC(&qword_27EEBDAB8, type metadata accessor for Application);
  sub_248A6D4F4();

  *v4 = v1;
  swift_getKeyPath();
  sub_248A6D514();

  swift_beginAccess();
  return sub_248A62F78;
}

uint64_t Application.isSelectedToShare.getter()
{
  swift_getKeyPath();
  sub_248A686AC(&qword_27EEBDAB8, type metadata accessor for Application);
  sub_248A6D4F4();

  swift_beginAccess();
  return *(v0 + 72);
}

uint64_t sub_248A63038@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_248A686AC(&qword_27EEBDAB8, type metadata accessor for Application);
  sub_248A6D4F4();

  result = swift_beginAccess();
  *a2 = *(v3 + 72);
  return result;
}

uint64_t Application.isSelectedToShare.setter(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 72) == v2)
  {
    *(v1 + 72) = v2;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_248A686AC(&qword_27EEBDAB8, type metadata accessor for Application);
    sub_248A6D4E4();
  }

  return result;
}

void (*Application.isSelectedToShare.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x277D84FD8])
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
  v4[4] = OBJC_IVAR____TtC21DeviceSharingServices11Application___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_248A686AC(&qword_27EEBDAB8, type metadata accessor for Application);
  sub_248A6D4F4();

  *v4 = v1;
  swift_getKeyPath();
  sub_248A6D514();

  swift_beginAccess();
  return sub_248A63380;
}

uint64_t Application.__allocating_init(localizedTitle:bundleIdentifier:isNativeVisionApp:isSelectedToShare:appIconImageData:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, uint64_t a7, unint64_t a8)
{
  v17 = *(v8 + 48);
  v18 = *(v8 + 52);
  v19 = swift_allocObject();
  *(v19 + 56) = xmmword_248A71050;
  sub_248A6D524();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  *(v19 + 32) = a3;
  *(v19 + 40) = a4;
  *(v19 + 48) = a5;
  *(v19 + 72) = a6;
  Application.appIconImageData.setter(a7, a8);
  return v19;
}

uint64_t Application.init(localizedTitle:bundleIdentifier:isNativeVisionApp:isSelectedToShare:appIconImageData:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, uint64_t a7, unint64_t a8)
{
  *(v8 + 56) = xmmword_248A71050;
  sub_248A6D524();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  *(v8 + 48) = a5;
  *(v8 + 72) = a6;
  Application.appIconImageData.setter(a7, a8);
  return v8;
}

BOOL Application.appIconImage.getter()
{
  v1 = *v0;
  swift_getKeyPath();
  v8 = v0;
  sub_248A686AC(&qword_27EEBDAB8, type metadata accessor for Application);
  sub_248A6D4F4();

  swift_beginAccess();
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[4];
  v5 = v8[5];
  sub_248A62C38(v2, v3);
  v6 = sub_248A635F0(v2, v3, v4, v5);
  sub_248A55848(v2, v3);
  return v6;
}

BOOL sub_248A635F0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (qword_27EEBD420 != -1)
  {
    swift_once();
  }

  v8 = sub_248A6D624();
  __swift_project_value_buffer(v8, qword_27EEC3BF0);

  v9 = sub_248A6D604();
  v10 = sub_248A6D814();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = v24;
    *v11 = 136446466;
    v12 = sub_248A6DBB4();
    v14 = sub_248A50F9C(v12, v13, &v25);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2082;
    *(v11 + 14) = sub_248A50F9C(a3, a4, &v25);
    _os_log_impl(&dword_248A4A000, v9, v10, "%{public}s decoding image for %{public}s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E2580](v24, -1, -1);
    MEMORY[0x24C1E2580](v11, -1, -1);
  }

  else
  {
  }

  if (a2 >> 60 == 15)
  {

    v15 = sub_248A6D604();
    v16 = sub_248A6D804();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v25 = v18;
      *v17 = 136446466;
      v19 = sub_248A6DBB4();
      v21 = sub_248A50F9C(v19, v20, &v25);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2082;
      *(v17 + 14) = sub_248A50F9C(a3, a4, &v25);
      _os_log_impl(&dword_248A4A000, v15, v16, "%{public}s missing icon data for %{public}s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1E2580](v18, -1, -1);
      MEMORY[0x24C1E2580](v17, -1, -1);
    }

    return 0;
  }

  else
  {
    sub_248A62C38(a1, a2);
    v22 = sub_248A6D08C();
    sub_248A55848(a1, a2);
    return v22;
  }
}

unint64_t sub_248A63AB4()
{
  v1 = *v0;
  v2 = 0x657A696C61636F6CLL;
  v3 = 0xD000000000000016;
  if (v1 == 4)
  {
    v3 = 0xD000000000000012;
  }

  if (v1 == 3)
  {
    v4 = 0xD000000000000011;
  }

  else
  {
    v4 = v3;
  }

  v5 = 0xD000000000000010;
  if (v1 != 1)
  {
    v5 = 0xD000000000000011;
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
    return v4;
  }
}

uint64_t sub_248A63B80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_248A687BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_248A63BB4(uint64_t a1)
{
  v2 = sub_248A68604();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_248A63BF0(uint64_t a1)
{
  v2 = sub_248A68604();

  return MEMORY[0x2821FE720](a1, v2);
}

char *Application.deinit()
{
  v1 = *(v0 + 3);

  v2 = *(v0 + 5);

  sub_248A55848(*(v0 + 7), *(v0 + 8));
  v3 = OBJC_IVAR____TtC21DeviceSharingServices11Application___observationRegistrar;
  v4 = sub_248A6D534();
  (*(*(v4 - 8) + 8))(&v0[v3], v4);
  return v0;
}

uint64_t Application.__deallocating_deinit()
{
  v1 = *(v0 + 3);

  v2 = *(v0 + 5);

  sub_248A55848(*(v0 + 7), *(v0 + 8));
  v3 = OBJC_IVAR____TtC21DeviceSharingServices11Application___observationRegistrar;
  v4 = sub_248A6D534();
  (*(*(v4 - 8) + 8))(&v0[v3], v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

uint64_t Application.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBDAC0, &qword_248A710B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_248A68604();
  sub_248A6DB84();
  v11 = *(v3 + 16);
  v12 = *(v3 + 24);
  v23 = 0;
  sub_248A6DA54();
  if (!v2)
  {
    v13 = *(v3 + 32);
    v14 = *(v3 + 40);
    v23 = 1;
    sub_248A6DA54();
    v15 = *(v3 + 48);
    v23 = 2;
    sub_248A6DA64();
    swift_beginAccess();
    v16 = *(v3 + 64);
    v20 = *(v3 + 56);
    v21 = v16;
    v22 = 3;
    sub_248A62C38(v20, v16);
    sub_248A68658();
    sub_248A6DA44();
    sub_248A55848(v20, v21);
    swift_beginAccess();
    v17 = *(v3 + 72);
    v22 = 4;
    sub_248A6DA64();
    v22 = 5;
    sub_248A6D534();
    sub_248A686AC(&qword_27EEBDAD8, MEMORY[0x277D85390]);
    sub_248A6DA74();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t *Application.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v27 = *v1;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBDAE0, &qword_248A710B8);
  v5 = *(v22 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v22);
  v8 = &v21 - v7;
  *(v1 + 7) = xmmword_248A71050;
  v23 = OBJC_IVAR____TtC21DeviceSharingServices11Application___observationRegistrar;
  sub_248A6D524();
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_248A68604();
  sub_248A6DB74();
  if (v2)
  {
    sub_248A55848(v1[7], v1[8]);
    v17 = sub_248A6D534();
    (*(*(v17 - 8) + 8))(v1 + v23, v17);
    v18 = *(*v1 + 48);
    v19 = *(*v1 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v24 = 0;
    v1[2] = sub_248A6D9E4();
    v1[3] = v10;
    v24 = 1;
    v1[4] = sub_248A6D9E4();
    v1[5] = v11;
    v24 = 2;
    *(v1 + 48) = sub_248A6D9F4() & 1;
    v24 = 3;
    sub_248A686F4();
    sub_248A6D9D4();
    v12 = v25;
    v13 = v26;
    swift_beginAccess();
    v14 = v3[7];
    v15 = v3[8];
    v3[7] = v12;
    v3[8] = v13;
    v16 = v22;
    sub_248A55848(v14, v15);
    LOBYTE(v25) = 4;
    LOBYTE(v12) = sub_248A6D9F4();
    (*(v5 + 8))(v8, v16);
    *(v3 + 72) = v12 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

uint64_t sub_248A64420()
{
  sub_248A686AC(&qword_27EEBDB38, type metadata accessor for Application);
  sub_248A686AC(&qword_27EEBDB20, type metadata accessor for Application);
  return sub_248A6D5E4();
}

uint64_t sub_248A644D0()
{
  sub_248A686AC(&qword_27EEBDB38, type metadata accessor for Application);
  sub_248A686AC(&qword_27EEBDB20, type metadata accessor for Application);
  return sub_248A6D5F4();
}

uint64_t sub_248A6459C@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 40);
  *a1 = *(*v1 + 32);
  a1[1] = v2;
}

uint64_t Application.isEqual(to:)(uint64_t a1)
{
  v3 = *(v1 + 32) == *(a1 + 32) && *(v1 + 40) == *(a1 + 40);
  if (v3 || (v4 = sub_248A6DAB4(), v5 = 0, (v4 & 1) != 0))
  {
    swift_getKeyPath();
    sub_248A686AC(&qword_27EEBDAB8, type metadata accessor for Application);
    sub_248A6D4F4();

    swift_beginAccess();
    v6 = *(v1 + 72);
    swift_getKeyPath();
    sub_248A6D4F4();

    swift_beginAccess();
    v5 = v6 ^ *(a1 + 72) ^ 1;
  }

  return v5 & 1;
}

uint64_t Application.hash(into:)()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return sub_248A6D6A4();
}

uint64_t Application.hashValue.getter()
{
  sub_248A6DB34();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_248A6D6A4();
  return sub_248A6DB64();
}

uint64_t sub_248A6474C()
{
  v1 = *v0;
  sub_248A6DB34();
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  sub_248A6D6A4();
  return sub_248A6DB64();
}

uint64_t sub_248A64794()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 40);
  return sub_248A6D6A4();
}

uint64_t sub_248A647A0()
{
  v1 = *v0;
  sub_248A6DB34();
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  sub_248A6D6A4();
  return sub_248A6DB64();
}

uint64_t Application.description.getter()
{
  v1 = v0;
  v2 = *v0;
  v8 = sub_248A6DBB4();
  MEMORY[0x24C1E18E0](0x209480E220, 0xA500000000000000);
  MEMORY[0x24C1E18E0](v1[2], v1[3]);
  MEMORY[0x24C1E18E0](10272, 0xE200000000000000);
  MEMORY[0x24C1E18E0](v1[4], v1[5]);
  MEMORY[0x24C1E18E0](41, 0xE100000000000000);
  if (*(v0 + 48))
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (*(v0 + 48))
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x24C1E18E0](v3, v4);

  MEMORY[0x24C1E18E0](0x766974614E736920, 0xEB00000000203A65);

  strcpy(v9, " isSelected: ");
  HIWORD(v9[1]) = -4864;
  swift_getKeyPath();
  sub_248A686AC(&qword_27EEBDAB8, type metadata accessor for Application);
  sub_248A6D4F4();

  swift_beginAccess();
  if (*(v0 + 72))
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (*(v0 + 72))
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x24C1E18E0](v5, v6);

  MEMORY[0x24C1E18E0](v9[0], v9[1]);

  return v8;
}

uint64_t sub_248A64A68()
{
  sub_248A6DB34();
  sub_248A6D6A4();
  return sub_248A6DB64();
}

uint64_t sub_248A64AE4()
{
  sub_248A6DB34();
  sub_248A6D6A4();
  return sub_248A6DB64();
}

uint64_t sub_248A64B3C@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_248A6D994();

  *a2 = v5 != 0;
  return result;
}

void sub_248A64B90(uint64_t a1@<X8>)
{
  strcpy(a1, "applications");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

uint64_t sub_248A64BD4@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_248A6D994();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_248A64C2C(uint64_t a1)
{
  v2 = sub_248A68A5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_248A64C68(uint64_t a1)
{
  v2 = sub_248A68A5C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ApplicationLibrary.applications.getter()
{
  swift_getKeyPath();
  sub_248A686AC(&qword_27EEBDAF8, type metadata accessor for ApplicationLibrary);
  sub_248A6D4F4();

  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t sub_248A64D5C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_248A686AC(&qword_27EEBDAF8, type metadata accessor for ApplicationLibrary);
  sub_248A6D4F4();

  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_248A64E1C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return ApplicationLibrary.applications.setter(v4);
}

uint64_t ApplicationLibrary.applications.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);

  v5 = sub_248A68278(v4, a1);

  if (v5)
  {
    v6 = *(v1 + 16);
    *(v1 + 16) = a1;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_248A686AC(&qword_27EEBDAF8, type metadata accessor for ApplicationLibrary);
    sub_248A6D4E4();
  }
}

uint64_t sub_248A64F90(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  *(a1 + 16) = a2;
}

void (*ApplicationLibrary.applications.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x277D84FD8])
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
  v4[4] = OBJC_IVAR____TtC21DeviceSharingServices18ApplicationLibrary___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_248A686AC(&qword_27EEBDAF8, type metadata accessor for ApplicationLibrary);
  sub_248A6D4F4();

  *v4 = v1;
  swift_getKeyPath();
  sub_248A6D514();

  swift_beginAccess();
  return sub_248A65138;
}

void sub_248A65144(void **a1)
{
  v1 = *a1;
  swift_endAccess();
  v2 = v1[4];
  v3 = v1[5];
  *v1 = v1[3];
  swift_getKeyPath();
  sub_248A6D504();

  free(v1);
}

BOOL ApplicationLibrary.areAllApplicationsSelectedToShare.getter()
{
  v1 = v0;
  swift_getKeyPath();
  sub_248A686AC(&qword_27EEBDAF8, type metadata accessor for ApplicationLibrary);
  sub_248A6D4F4();

  swift_beginAccess();
  v2 = *(v0 + 16);
  v15 = MEMORY[0x277D84F90];
  if (v2 >> 62)
  {
LABEL_24:
    v3 = sub_248A6D954();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3)
  {
    v14 = v1;
    v4 = 0;
    v1 = v2 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x24C1E1AE0](v4, v2);
        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_14:
          __break(1u);
LABEL_15:
          v8 = v15;
          v1 = v14;
          goto LABEL_17;
        }
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_24;
        }

        v5 = *(v2 + 8 * v4 + 32);

        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_14;
        }
      }

      swift_getKeyPath();
      sub_248A686AC(&qword_27EEBDAB8, type metadata accessor for Application);
      sub_248A6D4F4();

      swift_beginAccess();
      if (*(v5 + 72))
      {
        sub_248A6D904();
        v7 = *(v15 + 16);
        sub_248A6D924();
        sub_248A6D934();
        sub_248A6D914();
      }

      else
      {
      }

      ++v4;
      if (v6 == v3)
      {
        goto LABEL_15;
      }
    }
  }

  v8 = MEMORY[0x277D84F90];
LABEL_17:

  if (v8 < 0 || (v8 & 0x4000000000000000) != 0)
  {
    v9 = sub_248A6D954();
  }

  else
  {
    v9 = *(v8 + 16);
  }

  swift_getKeyPath();
  sub_248A6D4F4();

  v10 = *(v1 + 16);
  if (v10 >> 62)
  {
    if (v10 < 0)
    {
      v13 = *(v1 + 16);
    }

    v11 = sub_248A6D954();
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v9 == v11;
}

uint64_t ApplicationLibrary.selectedApplications.getter()
{
  swift_getKeyPath();
  sub_248A686AC(&qword_27EEBDAF8, type metadata accessor for ApplicationLibrary);
  sub_248A6D4F4();

  swift_beginAccess();
  v1 = *(v0 + 16);
  v9 = MEMORY[0x277D84F90];
  if (v1 >> 62)
  {
LABEL_19:
    v2 = sub_248A6D954();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2)
  {
    v3 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x24C1E1AE0](v3, v1);
        v5 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
LABEL_14:
          __break(1u);
LABEL_15:
          v7 = v9;
          goto LABEL_17;
        }
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_19;
        }

        v4 = *(v1 + 8 * v3 + 32);

        v5 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_14;
        }
      }

      swift_getKeyPath();
      sub_248A686AC(&qword_27EEBDAB8, type metadata accessor for Application);
      sub_248A6D4F4();

      swift_beginAccess();
      if (*(v4 + 72))
      {
        sub_248A6D904();
        v6 = *(v9 + 16);
        sub_248A6D924();
        sub_248A6D934();
        sub_248A6D914();
      }

      else
      {
      }

      ++v3;
      if (v5 == v2)
      {
        goto LABEL_15;
      }
    }
  }

  v7 = MEMORY[0x277D84F90];
LABEL_17:

  return v7;
}

char *ApplicationLibrary.selectedApplicationBundleIds.getter()
{
  swift_getKeyPath();
  sub_248A686AC(&qword_27EEBDAF8, type metadata accessor for ApplicationLibrary);
  sub_248A6D4F4();

  swift_beginAccess();
  v1 = *(v0 + 16);
  v19 = MEMORY[0x277D84F90];
  if (v1 >> 62)
  {
LABEL_30:
    v2 = sub_248A6D954();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v4 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x24C1E1AE0](v4, v1);
        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_14:
          __break(1u);
LABEL_15:
          v8 = v19;
          v3 = MEMORY[0x277D84F90];
          goto LABEL_17;
        }
      }

      else
      {
        if (v4 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_30;
        }

        v5 = *(v1 + 8 * v4 + 32);

        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_14;
        }
      }

      swift_getKeyPath();
      sub_248A686AC(&qword_27EEBDAB8, type metadata accessor for Application);
      sub_248A6D4F4();

      swift_beginAccess();
      if (*(v5 + 72))
      {
        sub_248A6D904();
        v7 = *(v19 + 16);
        sub_248A6D924();
        sub_248A6D934();
        sub_248A6D914();
      }

      else
      {
      }

      ++v4;
      if (v6 == v2)
      {
        goto LABEL_15;
      }
    }
  }

  v8 = MEMORY[0x277D84F90];
LABEL_17:

  if ((v8 & 0x8000000000000000) == 0 && (v8 & 0x4000000000000000) == 0)
  {
    v9 = *(v8 + 16);
    if (v9)
    {
      goto LABEL_20;
    }

LABEL_32:

    v18 = sub_248A689C4(v3);

    return v18;
  }

  v9 = sub_248A6D954();
  if (!v9)
  {
    goto LABEL_32;
  }

LABEL_20:
  result = sub_248A66B04(0, v9 & ~(v9 >> 63), 0);
  if ((v9 & 0x8000000000000000) == 0)
  {
    v11 = 0;
    do
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x24C1E1AE0](v11, v8);
      }

      else
      {
        v12 = *(v8 + 8 * v11 + 32);
      }

      v14 = *(v12 + 32);
      v13 = *(v12 + 40);

      v16 = *(v3 + 16);
      v15 = *(v3 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_248A66B04((v15 > 1), v16 + 1, 1);
      }

      ++v11;
      *(v3 + 16) = v16 + 1;
      v17 = v3 + 16 * v16;
      *(v17 + 32) = v14;
      *(v17 + 40) = v13;
    }

    while (v9 != v11);
    goto LABEL_32;
  }

  __break(1u);
  return result;
}

uint64_t ApplicationLibrary.__allocating_init(applications:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  sub_248A6D524();
  *(v5 + 16) = a1;
  swift_getKeyPath();
  v8[1] = v5;
  sub_248A686AC(&qword_27EEBDAF8, type metadata accessor for ApplicationLibrary);
  sub_248A6D4F4();

  swift_beginAccess();
  v6 = *(v5 + 16);
  swift_bridgeObjectRetain_n();
  v8[0] = sub_248A68064(v6);
  sub_248A674F4(v8);

  ApplicationLibrary.applications.setter(v8[0]);
  return v5;
}

uint64_t ApplicationLibrary.init(applications:)(uint64_t a1)
{
  v2 = v1;
  sub_248A6D524();
  *(v2 + 16) = a1;
  swift_getKeyPath();
  v6[1] = v2;
  sub_248A686AC(&qword_27EEBDAF8, type metadata accessor for ApplicationLibrary);
  sub_248A6D4F4();

  swift_beginAccess();
  v4 = *(v2 + 16);
  swift_bridgeObjectRetain_n();
  v6[0] = sub_248A68064(v4);
  sub_248A674F4(v6);

  ApplicationLibrary.applications.setter(v6[0]);
  return v2;
}

Swift::Void __swiftcall ApplicationLibrary.sort()()
{
  swift_getKeyPath();
  v3 = v0;
  sub_248A686AC(&qword_27EEBDAF8, type metadata accessor for ApplicationLibrary);
  sub_248A6D4F4();

  swift_beginAccess();
  v1 = *(v0 + 16);
  swift_bridgeObjectRetain_n();
  v2 = sub_248A68064(v1);
  sub_248A674F4(&v2);

  ApplicationLibrary.applications.setter(v2);
}

uint64_t ApplicationLibrary.deinit()
{
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtC21DeviceSharingServices18ApplicationLibrary___observationRegistrar;
  v3 = sub_248A6D534();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t ApplicationLibrary.__deallocating_deinit()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtC21DeviceSharingServices18ApplicationLibrary___observationRegistrar;
  v3 = sub_248A6D534();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

uint64_t ApplicationLibrary.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBDB00, &qword_248A710E8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_248A68A5C();
  sub_248A6DB84();
  swift_beginAccess();
  v11 = *(v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBDB10, &qword_248A710F0);
  sub_248A68AB0(&qword_27EEBDB18, &qword_27EEBDB20);
  sub_248A6DA74();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_248A6609C(uint64_t a1, void (*a2)(uint64_t))
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  a2(a1);
  return v7;
}

char *ApplicationLibrary.init(from:)(uint64_t *a1)
{
  v15[1] = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBDB28, &qword_248A710F8);
  v15[0] = *(v4 - 8);
  v5 = *(v15[0] + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v15 - v6;
  v8 = OBJC_IVAR____TtC21DeviceSharingServices18ApplicationLibrary___observationRegistrar;
  sub_248A6D524();
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_248A68A5C();
  sub_248A6DB74();
  if (v2)
  {
    v11 = sub_248A6D534();
    (*(*(v11 - 8) + 8))(&v1[v8], v11);
    v12 = *(*v1 + 48);
    v13 = *(*v1 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v10 = v15[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBDB10, &qword_248A710F0);
    sub_248A68AB0(&qword_27EEBDB30, &qword_27EEBDB38);
    sub_248A6DA04();
    (*(v10 + 8))(v7, v4);
    *(v1 + 2) = v15[3];
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

uint64_t sub_248A663A8@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X3>, uint64_t *a3@<X8>)
{
  v8 = *(v3 + 48);
  v9 = *(v3 + 52);
  v10 = swift_allocObject();
  result = a2(a1);
  if (!v4)
  {
    *a3 = v10;
  }

  return result;
}

uint64_t sub_248A66434()
{
  sub_248A686AC(&qword_27EEBDB98, type metadata accessor for ApplicationLibrary);
  sub_248A686AC(&qword_27EEBDBA0, type metadata accessor for ApplicationLibrary);
  return sub_248A6D5E4();
}

uint64_t sub_248A664E4()
{
  sub_248A686AC(&qword_27EEBDB98, type metadata accessor for ApplicationLibrary);
  sub_248A686AC(&qword_27EEBDBA0, type metadata accessor for ApplicationLibrary);
  return sub_248A6D5F4();
}

BOOL ApplicationLibrary.isEqual(to:)(unint64_t a1)
{
  v2 = v1;
  swift_getKeyPath();
  v4 = 0x27EEBD000uLL;
  sub_248A686AC(&qword_27EEBDAF8, type metadata accessor for ApplicationLibrary);
  sub_248A6D4F4();

  swift_beginAccess();
  v5 = *(v1 + 16);
  if (v5 >> 62)
  {
    goto LABEL_35;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  swift_getKeyPath();
  v4 = *(v4 + 2800);
  sub_248A6D4F4();

  swift_beginAccess();
  v7 = *(a1 + 16);
  if (v7 >> 62)
  {
    if (v7 < 0)
    {
      v16 = *(a1 + 16);
    }

    if (v6 == sub_248A6D954())
    {
      goto LABEL_5;
    }
  }

  else if (v6 == *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_5:
    swift_getKeyPath();
    sub_248A6D4F4();

    v2 = *(v2 + 16);
    swift_getKeyPath();

    sub_248A6D4F4();

    v22 = *(a1 + 16);
    v18 = v2 & 0xFFFFFFFFFFFFFF8;
    if (v2 >> 62)
    {
      v8 = sub_248A6D954();
    }

    else
    {
      v8 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v19 = v2 & 0xC000000000000001;
    v20 = -v8;
    v9 = 4;
    v17 =  >> 62;
    while (1)
    {
      v21 = v20 + v9 == 4;
      if (v20 + v9 == 4)
      {
        goto LABEL_31;
      }

      v13 = v9 - 4;
      if (v19)
      {
        v4 = MEMORY[0x24C1E1AE0](v9 - 4, v2);
        if (__OFADD__(v13, 1))
        {
          goto LABEL_32;
        }
      }

      else
      {
        if (v13 >= *(v18 + 16))
        {
          goto LABEL_33;
        }

        v4 = *(v2 + 8 * v9);

        if (__OFADD__(v13, 1))
        {
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          v6 = sub_248A6D954();
          goto LABEL_3;
        }
      }

      if (v17)
      {
        if (v13 == sub_248A6D954())
        {
LABEL_29:

          v21 = 1;
LABEL_31:

          return v21;
        }
      }

      else if (v13 == *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      if ((v22 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x24C1E1AE0](v9 - 4, v22);
      }

      else
      {
        if (v13 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_34;
        }

        v14 = *(v22 + 8 * v9);
      }

      if ((*(v4 + 32) != *(v14 + 32) || *(v4 + 40) != *(v14 + 40)) && (sub_248A6DAB4() & 1) == 0)
      {

        v21 = 0;
        goto LABEL_31;
      }

      swift_getKeyPath();
      sub_248A686AC(&qword_27EEBDAB8, type metadata accessor for Application);
      sub_248A6D4F4();

      swift_beginAccess();
      a1 = v2;
      v10 = *(v4 + 72);
      swift_getKeyPath();
      sub_248A6D4F4();

      swift_beginAccess();
      v11 = *(v14 + 72);

      ++v9;
      v12 = v10 == v11;
      v2 = a1;
      if (!v12)
      {
        goto LABEL_31;
      }
    }
  }

  return 0;
}

void *sub_248A66A7C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBDBB0, &unk_248A716A0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

char *sub_248A66B04(char *a1, int64_t a2, char a3)
{
  result = sub_248A66B24(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_248A66B24(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBDBC0, &qword_248A716B8);
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

uint64_t sub_248A66C30(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_248A6DB34();
  sub_248A6D6A4();
  v9 = sub_248A6DB64();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_248A6DAB4() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_248A66FE0(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_248A66D80(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBDBB8, &qword_248A716B0);
  result = sub_248A6D894();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_248A6DB34();
      sub_248A6D6A4();
      result = sub_248A6DB64();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_248A66FE0(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_248A66D80(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_248A67160();
      goto LABEL_16;
    }

    sub_248A672BC(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_248A6DB34();
  sub_248A6D6A4();
  result = sub_248A6DB64();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_248A6DAB4();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_248A6DAC4();
  __break(1u);
  return result;
}

void *sub_248A67160()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBDBB8, &qword_248A716B0);
  v2 = *v0;
  v3 = sub_248A6D884();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_248A672BC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBDBB8, &qword_248A716B0);
  result = sub_248A6D894();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_248A6DB34();

      sub_248A6D6A4();
      result = sub_248A6DB64();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_248A674F4(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_248A68468(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_248A67570(v6);
  return sub_248A6D914();
}

uint64_t sub_248A67570(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_248A6DA94();
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
        type metadata accessor for Application(0);
        v6 = sub_248A6D784();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_248A67734(v8, v9, a1, v4);
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
    return sub_248A67674(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_248A67674(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 8 * a3 - 8;
    v8 = result - a3;
LABEL_5:
    v9 = *(v6 + 8 * v4);
    v10 = v8;
    v11 = v7;
    while (1)
    {
      result = *(v9 + 16);
      v12 = result == *(*v11 + 16) && *(v9 + 24) == *(*v11 + 24);
      if (v12 || (result = sub_248A6DAB4(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 8;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v13 = *v11;
      v9 = v11[1];
      *v11 = v9;
      v11[1] = v13;
      --v11;
      if (__CFADD__(v10++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_248A67734(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v86 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_105:
    v8 = *v86;
    if (!*v86)
    {
      goto LABEL_143;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_137:
      result = sub_248A67FC8(v7);
      v7 = result;
    }

    v80 = *(v7 + 2);
    if (v80 >= 2)
    {
      while (*a3)
      {
        v81 = *&v7[16 * v80];
        v82 = *&v7[16 * v80 + 24];
        sub_248A67D04((*a3 + 8 * v81), (*a3 + 8 * *&v7[16 * v80 + 16]), (*a3 + 8 * v82), v8);
        if (v4)
        {
        }

        if (v82 < v81)
        {
          goto LABEL_130;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_248A67FC8(v7);
        }

        if (v80 - 2 >= *(v7 + 2))
        {
          goto LABEL_131;
        }

        v83 = &v7[16 * v80];
        *v83 = v81;
        *(v83 + 1) = v82;
        result = sub_248A67F3C(v80 - 1);
        v80 = *(v7 + 2);
        if (v80 <= 1)
        {
        }
      }

      goto LABEL_141;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *a3;
      v10 = *(*a3 + 8 * v6);
      v11 = *(*a3 + 8 * v8);
      result = *(v10 + 16);
      if (result == *(v11 + 16) && *(v10 + 24) == *(v11 + 24))
      {
        v13 = 0;
      }

      else
      {
        result = sub_248A6DAB4();
        v13 = result;
      }

      v6 = v8 + 2;
      if (v8 + 2 < v5)
      {
        v14 = v9 + 8 * v8 + 16;
        do
        {
          v15 = *(v14 - 8);
          result = *(*v14 + 16);
          if (result == *(v15 + 16) && *(*v14 + 24) == *(v15 + 24))
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_248A6DAB4();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v6;
          v14 += 8;
        }

        while (v5 != v6);
        v6 = v5;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v6 < v8)
        {
          goto LABEL_134;
        }

        if (v8 < v6)
        {
          v17 = 8 * v6 - 8;
          v18 = 8 * v8;
          v19 = v6;
          v20 = v8;
          do
          {
            if (v20 != --v19)
            {
              v22 = *a3;
              if (!*a3)
              {
                goto LABEL_140;
              }

              v21 = *(v22 + v18);
              *(v22 + v18) = *(v22 + v17);
              *(v22 + v17) = v21;
            }

            ++v20;
            v17 -= 8;
            v18 += 8;
          }

          while (v20 < v19);
        }
      }
    }

    v23 = a3[1];
    if (v6 < v23)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_133;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_135;
        }

        if (v8 + a4 >= v23)
        {
          v24 = a3[1];
        }

        else
        {
          v24 = (v8 + a4);
        }

        if (v24 < v8)
        {
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (v6 != v24)
        {
          break;
        }
      }
    }

LABEL_54:
    if (v6 < v8)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_248A5B6E8(0, *(v7 + 2) + 1, 1, v7);
      v7 = result;
    }

    v35 = *(v7 + 2);
    v34 = *(v7 + 3);
    v36 = v35 + 1;
    if (v35 >= v34 >> 1)
    {
      result = sub_248A5B6E8((v34 > 1), v35 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 2) = v36;
    v37 = &v7[16 * v35];
    *(v37 + 4) = v8;
    *(v37 + 5) = v6;
    v38 = *v86;
    if (!*v86)
    {
      goto LABEL_142;
    }

    if (v35)
    {
      while (1)
      {
        v39 = v36 - 1;
        if (v36 >= 4)
        {
          break;
        }

        if (v36 == 3)
        {
          v40 = *(v7 + 4);
          v41 = *(v7 + 5);
          v50 = __OFSUB__(v41, v40);
          v42 = v41 - v40;
          v43 = v50;
LABEL_74:
          if (v43)
          {
            goto LABEL_121;
          }

          v56 = &v7[16 * v36];
          v58 = *v56;
          v57 = *(v56 + 1);
          v59 = __OFSUB__(v57, v58);
          v60 = v57 - v58;
          v61 = v59;
          if (v59)
          {
            goto LABEL_124;
          }

          v62 = &v7[16 * v39 + 32];
          v64 = *v62;
          v63 = *(v62 + 1);
          v50 = __OFSUB__(v63, v64);
          v65 = v63 - v64;
          if (v50)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v60, v65))
          {
            goto LABEL_128;
          }

          if (v60 + v65 >= v42)
          {
            if (v42 < v65)
            {
              v39 = v36 - 2;
            }

            goto LABEL_95;
          }

          goto LABEL_88;
        }

        v66 = &v7[16 * v36];
        v68 = *v66;
        v67 = *(v66 + 1);
        v50 = __OFSUB__(v67, v68);
        v60 = v67 - v68;
        v61 = v50;
LABEL_88:
        if (v61)
        {
          goto LABEL_123;
        }

        v69 = &v7[16 * v39];
        v71 = *(v69 + 4);
        v70 = *(v69 + 5);
        v50 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v50)
        {
          goto LABEL_126;
        }

        if (v72 < v60)
        {
          goto LABEL_3;
        }

LABEL_95:
        v8 = v39 - 1;
        if (v39 - 1 >= v36)
        {
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
          goto LABEL_136;
        }

        if (!*a3)
        {
          goto LABEL_139;
        }

        v77 = *&v7[16 * v8 + 32];
        v78 = *&v7[16 * v39 + 40];
        sub_248A67D04((*a3 + 8 * v77), (*a3 + 8 * *&v7[16 * v39 + 32]), (*a3 + 8 * v78), v38);
        if (v4)
        {
        }

        if (v78 < v77)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_248A67FC8(v7);
        }

        if (v8 >= *(v7 + 2))
        {
          goto LABEL_118;
        }

        v79 = &v7[16 * v8];
        *(v79 + 4) = v77;
        *(v79 + 5) = v78;
        result = sub_248A67F3C(v39);
        v36 = *(v7 + 2);
        if (v36 <= 1)
        {
          goto LABEL_3;
        }
      }

      v44 = &v7[16 * v36 + 32];
      v45 = *(v44 - 64);
      v46 = *(v44 - 56);
      v50 = __OFSUB__(v46, v45);
      v47 = v46 - v45;
      if (v50)
      {
        goto LABEL_119;
      }

      v49 = *(v44 - 48);
      v48 = *(v44 - 40);
      v50 = __OFSUB__(v48, v49);
      v42 = v48 - v49;
      v43 = v50;
      if (v50)
      {
        goto LABEL_120;
      }

      v51 = &v7[16 * v36];
      v53 = *v51;
      v52 = *(v51 + 1);
      v50 = __OFSUB__(v52, v53);
      v54 = v52 - v53;
      if (v50)
      {
        goto LABEL_122;
      }

      v50 = __OFADD__(v42, v54);
      v55 = v42 + v54;
      if (v50)
      {
        goto LABEL_125;
      }

      if (v55 >= v47)
      {
        v73 = &v7[16 * v39 + 32];
        v75 = *v73;
        v74 = *(v73 + 1);
        v50 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v50)
        {
          goto LABEL_129;
        }

        if (v42 < v76)
        {
          v39 = v36 - 2;
        }

        goto LABEL_95;
      }

      goto LABEL_74;
    }

LABEL_3:
    v5 = a3[1];
    if (v6 >= v5)
    {
      goto LABEL_105;
    }
  }

  v25 = *a3;
  v26 = *a3 + 8 * v6 - 8;
  v84 = v8;
  v27 = (v8 - v6);
LABEL_43:
  v28 = *(v25 + 8 * v6);
  v29 = v27;
  v30 = v26;
  while (1)
  {
    v31 = *(v28 + 16) == *(*v30 + 16) && *(v28 + 24) == *(*v30 + 24);
    if (v31 || (result = sub_248A6DAB4(), (result & 1) == 0))
    {
LABEL_42:
      ++v6;
      v26 += 8;
      --v27;
      if (v6 != v24)
      {
        goto LABEL_43;
      }

      v6 = v24;
      v8 = v84;
      goto LABEL_54;
    }

    if (!v25)
    {
      break;
    }

    v32 = *v30;
    v28 = v30[1];
    *v30 = v28;
    v30[1] = v32;
    --v30;
    if (__CFADD__(v29++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
  return result;
}

uint64_t sub_248A67D04(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
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
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *(*v6 + 16) == *(*v4 + 16) && *(*v6 + 24) == *(*v4 + 24);
      if (!v16 && (sub_248A6DAB4() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = *(v18 - 1);
      v18 -= 8;
      v20 = *(v19 + 24);
      v21 = *(v19 + 16) == *(*v17 + 16) && v20 == *(*v17 + 24);
      if (!v21 && (sub_248A6DAB4() & 1) != 0)
      {
        if (v5 + 8 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 8 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * ((v14 - v4) / 8));
  }

  return 1;
}

uint64_t sub_248A67F3C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_248A67FC8(v3);
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
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t (*sub_248A67FDC(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x24C1E1AE0](a2, a3);
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
    return sub_248A6805C;
  }

  __break(1u);
  return result;
}

uint64_t sub_248A68064(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = sub_248A6D954();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v5 = sub_248A66A7C(v3, 0);
  sub_248A680F8((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_248A680F8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_248A6D954();
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
      result = sub_248A6D954();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_248A6911C();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBDB10, &qword_248A710F0);
            v9 = sub_248A67FDC(v13, i, a3);
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
        type metadata accessor for Application(0);
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

uint64_t sub_248A68278(uint64_t a1, uint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_42;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      return 0;
    }

LABEL_5:
    if (!v5)
    {
      return 1;
    }

    v7 = a1 & 0xFFFFFFFFFFFFFF8;
    v8 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a1 < 0)
    {
      v7 = a1;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = a2 & 0xFFFFFFFFFFFFFF8;
    }

    if (a2 >> 62)
    {
      v9 = v10;
    }

    if (v8 == v9)
    {
      return 1;
    }

    if (v5 < 0)
    {
LABEL_48:
      __break(1u);
      return result;
    }

    if (((a2 | a1) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      for (i = 4; ; ++i)
      {
        v13 = i - 4;
        v14 = i - 3;
        if (__OFADD__(i - 4, 1))
        {
          goto LABEL_41;
        }

        if ((a1 & 0xC000000000000001) != 0)
        {
          result = MEMORY[0x24C1E1AE0](i - 4, a1);
          v4 = result;
          if (v11)
          {
            goto LABEL_22;
          }
        }

        else
        {
          if (v13 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_47:
            __break(1u);
            goto LABEL_48;
          }

          v4 = *(a1 + 8 * i);

          if (v11)
          {
LABEL_22:
            v15 = MEMORY[0x24C1E1AE0](i - 4, a2);
            swift_unknownObjectRelease();
            goto LABEL_27;
          }
        }

        if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_47;
        }

        v15 = *(a2 + 8 * i);
LABEL_27:

        if (v4 != v15)
        {
          return 0;
        }

        if (v14 == v5)
        {
          return 1;
        }
      }
    }

    v16 = (a1 + 32);
    v17 = (a2 + 32);
    v18 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v19 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v20 = v5 - 1;
    while (v18)
    {
      if (!v19)
      {
        goto LABEL_40;
      }

      v22 = *v16++;
      v21 = v22;
      v24 = *v17++;
      v23 = v24;
      v26 = v20-- != 0;
      result = v21 == v23;
      if (v21 == v23)
      {
        --v19;
        --v18;
        if (v26)
        {
          continue;
        }
      }

      return result;
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    v5 = sub_248A6D954();
  }

  result = sub_248A6D954();
  if (v5 == result)
  {
    goto LABEL_5;
  }

  return 0;
}

uint64_t sub_248A6847C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 >> 60 != 15)
  {
    if (a4 >> 60 != 15)
    {
      sub_248A62C38(a1, a2);
      sub_248A62C38(a3, a4);
      v9 = sub_248A6C600(a1, a2, a3, a4);
      sub_248A55848(a3, a4);
      sub_248A55848(a1, a2);
      v8 = v9 ^ 1;
      return v8 & 1;
    }

    goto LABEL_5;
  }

  if (a4 >> 60 != 15)
  {
LABEL_5:
    sub_248A62C38(a1, a2);
    sub_248A62C38(a3, a4);
    sub_248A55848(a1, a2);
    sub_248A55848(a3, a4);
    v8 = 1;
    return v8 & 1;
  }

  sub_248A62C38(a1, a2);
  sub_248A62C38(a3, a4);
  sub_248A55848(a1, a2);
  v8 = 0;
  return v8 & 1;
}

uint64_t sub_248A685B0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 72) = v2;
  return result;
}

unint64_t sub_248A68604()
{
  result = qword_27EEBDAC8;
  if (!qword_27EEBDAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBDAC8);
  }

  return result;
}

unint64_t sub_248A68658()
{
  result = qword_27EEBDAD0;
  if (!qword_27EEBDAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBDAD0);
  }

  return result;
}

uint64_t sub_248A686AC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_248A686F4()
{
  result = qword_27EEBDAE8;
  if (!qword_27EEBDAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBDAE8);
  }

  return result;
}

uint64_t sub_248A68768(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_248A687BC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657A696C61636F6CLL && a2 == 0xEE00656C74695464;
  if (v4 || (sub_248A6DAB4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000248A732C0 == a2 || (sub_248A6DAB4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000248A732E0 == a2 || (sub_248A6DAB4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000248A73300 == a2 || (sub_248A6DAB4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000248A73320 == a2 || (sub_248A6DAB4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000248A73340 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_248A6DAB4();

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

uint64_t sub_248A689C4(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x24C1E1A10](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_248A66C30(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_248A68A5C()
{
  result = qword_27EEBDB08;
  if (!qword_27EEBDB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBDB08);
  }

  return result;
}

uint64_t sub_248A68AB0(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEBDB10, &qword_248A710F0);
    sub_248A686AC(a2, type metadata accessor for Application);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_248A68BA8()
{
  result = sub_248A6D534();
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

uint64_t sub_248A68CB8()
{
  result = sub_248A6D534();
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

uint64_t getEnumTagSinglePayload for Application.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Application.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_248A68F10()
{
  result = qword_27EEBDB68;
  if (!qword_27EEBDB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBDB68);
  }

  return result;
}

unint64_t sub_248A68F68()
{
  result = qword_27EEBDB70;
  if (!qword_27EEBDB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBDB70);
  }

  return result;
}

unint64_t sub_248A68FC0()
{
  result = qword_27EEBDB78;
  if (!qword_27EEBDB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBDB78);
  }

  return result;
}

unint64_t sub_248A69018()
{
  result = qword_27EEBDB80;
  if (!qword_27EEBDB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBDB80);
  }

  return result;
}

unint64_t sub_248A69070()
{
  result = qword_27EEBDB88;
  if (!qword_27EEBDB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBDB88);
  }

  return result;
}

unint64_t sub_248A690C8()
{
  result = qword_27EEBDB90;
  if (!qword_27EEBDB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBDB90);
  }

  return result;
}

unint64_t sub_248A6911C()
{
  result = qword_27EEBDBA8;
  if (!qword_27EEBDBA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEBDB10, &qword_248A710F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBDBA8);
  }

  return result;
}

unint64_t sub_248A69180()
{
  result = qword_27EEBDBC8;
  if (!qword_27EEBDBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBDBC8);
  }

  return result;
}

uint64_t sub_248A691D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBD530, &qword_248A6EFB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_248A69330()
{
  sub_248A69BE0(&qword_27EEBDBF0);
  sub_248A69BE0(&qword_27EEBDBE0);
  return sub_248A6D5E4();
}

uint64_t sub_248A693BC()
{
  sub_248A69BE0(&qword_27EEBDBF0);
  sub_248A69BE0(&qword_27EEBDBE0);
  return sub_248A6D5F4();
}

uint64_t sub_248A6949C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x8000000248A733A0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_248A6DAB4();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_248A69530(uint64_t a1)
{
  v2 = sub_248A69718();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_248A6956C(uint64_t a1)
{
  v2 = sub_248A69718();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GuestUserModeStateWrapper.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBDBD0, &qword_248A716C0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_248A69718();
  sub_248A6DB84();
  v11[1] = v8;
  type metadata accessor for DSSGuestUserModeState(0);
  sub_248A69BE0(&qword_27EEBDBE0);
  sub_248A6DA74();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_248A69718()
{
  result = qword_27EEBDBD8;
  if (!qword_27EEBDBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBDBD8);
  }

  return result;
}

uint64_t GuestUserModeStateWrapper.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBDBE8, &unk_248A716C8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_248A69718();
  sub_248A6DB74();
  if (!v2)
  {
    type metadata accessor for DSSGuestUserModeState(0);
    sub_248A69BE0(&qword_27EEBDBF0);
    sub_248A6DA04();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_248A69940()
{
  sub_248A69B38();
  sub_248A69B8C();
  return sub_248A6D5E4();
}

uint64_t sub_248A69994()
{
  sub_248A69B38();
  sub_248A69B8C();
  return sub_248A6D5F4();
}

unint64_t sub_248A69A34()
{
  result = qword_27EEBDBF8;
  if (!qword_27EEBDBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBDBF8);
  }

  return result;
}

unint64_t sub_248A69A8C()
{
  result = qword_27EEBDC00;
  if (!qword_27EEBDC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBDC00);
  }

  return result;
}

unint64_t sub_248A69AE4()
{
  result = qword_27EEBDC08;
  if (!qword_27EEBDC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBDC08);
  }

  return result;
}

unint64_t sub_248A69B38()
{
  result = qword_27EEBDC10;
  if (!qword_27EEBDC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBDC10);
  }

  return result;
}

unint64_t sub_248A69B8C()
{
  result = qword_27EEBDC18;
  if (!qword_27EEBDC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBDC18);
  }

  return result;
}

uint64_t sub_248A69BE0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DSSGuestUserModeState(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_248A69C24()
{
  v4[3] = &type metadata for CompanionAppFeatures;
  v4[4] = sub_248A6B138();
  v0 = sub_248A6D544();
  result = __swift_destroy_boxed_opaque_existential_1(v4);
  v2 = 0xD000000000000016;
  if (v0)
  {
    v3 = "com.apple.airplayreceiver";
  }

  else
  {
    v2 = 0xD000000000000019;
    v3 = "sHandle8@NSError16";
  }

  qword_27EEBDC28 = v2;
  unk_27EEBDC30 = v3 | 0x8000000000000000;
  return result;
}

uint64_t sub_248A69CB0()
{
  v4[3] = &type metadata for CompanionAppFeatures;
  v4[4] = sub_248A6B138();
  v0 = sub_248A6D544();
  result = __swift_destroy_boxed_opaque_existential_1(v4);
  v2 = 0xD00000000000003FLL;
  if (v0)
  {
    v2 = 0xD000000000000035;
    v3 = "serHandoverRequestViewMirroring";
  }

  else
  {
    v3 = "com.apple.visionproapp";
  }

  qword_27EEBDC38 = v2;
  unk_27EEBDC40 = v3 | 0x8000000000000000;
  return result;
}

uint64_t sub_248A69D48()
{
  if (qword_27EEBD448 != -1)
  {
    swift_once();
  }

  qword_27EEBDC48 = qword_27EEBDC28;
  unk_27EEBDC50 = unk_27EEBDC30;
}

uint64_t sub_248A69DDC()
{
  if (qword_27EEBD450 != -1)
  {
    swift_once();
  }

  qword_27EEBDC58 = qword_27EEBDC38;
  unk_27EEBDC60 = unk_27EEBDC40;
}

uint64_t sub_248A69E70(void *a1, void *a2, void *a3)
{
  if (*a1 != -1)
  {
    v6 = a2;
    v7 = a3;
    swift_once();
    a2 = v6;
    a3 = v7;
  }

  v3 = *a2;
  v4 = *a3;

  return v3;
}

Swift::Void __swiftcall AirPlayReceiverCoordinator.enableAirPlayReceiver()()
{
  v1 = objc_opt_self();
  if ([v1 listeningForAlternateBonjourBrowsing])
  {
    *v0 = 1;
    if (qword_27EEBD428 != -1)
    {
      swift_once();
    }

    v2 = sub_248A6D624();
    __swift_project_value_buffer(v2, qword_27EEC3C08);
    oslog = sub_248A6D604();
    v3 = sub_248A6D814();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v9 = v5;
      *v4 = 136446210;
      *(v4 + 4) = sub_248A50F9C(0xD00000000000001ALL, 0x8000000248A71960, &v9);
      v6 = "[%{public}s] AirPlayReceiver already enabled";
LABEL_10:
      _os_log_impl(&dword_248A4A000, oslog, v3, v6, v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v5);
      MEMORY[0x24C1E2580](v5, -1, -1);
      MEMORY[0x24C1E2580](v4, -1, -1);

      return;
    }
  }

  else
  {
    *v0 = 0;
    [v1 setListeningForAlternateBonjourBrowsing_];
    if (qword_27EEBD428 != -1)
    {
      swift_once();
    }

    v7 = sub_248A6D624();
    __swift_project_value_buffer(v7, qword_27EEC3C08);
    oslog = sub_248A6D604();
    v3 = sub_248A6D814();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v9 = v5;
      *v4 = 136446210;
      *(v4 + 4) = sub_248A50F9C(0xD00000000000001ALL, 0x8000000248A71960, &v9);
      v6 = "[%{public}s] AirPlayReceiver enabled";
      goto LABEL_10;
    }
  }
}

Swift::Void __swiftcall AirPlayReceiverCoordinator.disableAirPlayReceiver()()
{
  if (*v0)
  {
    if (qword_27EEBD428 != -1)
    {
      swift_once();
    }

    v1 = sub_248A6D624();
    __swift_project_value_buffer(v1, qword_27EEC3C08);
    oslog = sub_248A6D604();
    v2 = sub_248A6D814();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      v8 = v4;
      *v3 = 136446210;
      *(v3 + 4) = sub_248A50F9C(0xD00000000000001ALL, 0x8000000248A71960, &v8);
      v5 = "[%{public}s] AirPlayReceiver not reset";
LABEL_10:
      _os_log_impl(&dword_248A4A000, oslog, v2, v5, v3, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v4);
      MEMORY[0x24C1E2580](v4, -1, -1);
      MEMORY[0x24C1E2580](v3, -1, -1);

      return;
    }
  }

  else
  {
    [objc_opt_self() setListeningForAlternateBonjourBrowsing_];
    if (qword_27EEBD428 != -1)
    {
      swift_once();
    }

    v6 = sub_248A6D624();
    __swift_project_value_buffer(v6, qword_27EEC3C08);
    oslog = sub_248A6D604();
    v2 = sub_248A6D814();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      v8 = v4;
      *v3 = 136446210;
      *(v3 + 4) = sub_248A50F9C(0xD00000000000001ALL, 0x8000000248A71960, &v8);
      v5 = "[%{public}s] AirPlayReceiver reset back to disabled";
      goto LABEL_10;
    }
  }
}

uint64_t sub_248A6A3BC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBD888, &qword_248A70698);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_248A71970;
  v2 = *MEMORY[0x277D0AC58];
  *(v0 + 192) = sub_248A6D664();
  *(v0 + 200) = v3;
  sub_248A6D874();
  *(inited + 96) = MEMORY[0x277D839B0];
  *(inited + 72) = 1;
  v4 = *MEMORY[0x277D0AC40];
  *(v0 + 208) = sub_248A6D664();
  *(v0 + 216) = v5;
  sub_248A6D874();
  if (qword_27EEBD450 != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 241);
  *(inited + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBDC68, &unk_248A719B0);
  __swift_allocate_boxed_opaque_existential_0((inited + 144));
  sub_248A6D404();
  sub_248A5F364(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEBD890, &unk_248A706A0);
  swift_arrayDestroy();
  v7 = sub_248A6D634();

  v8 = [objc_opt_self() optionsWithDictionary_];
  *(v0 + 224) = v8;

  *(v0 + 240) = v6;
  v9 = swift_task_alloc();
  *(v0 + 232) = v9;
  *v9 = v0;
  v9[1] = sub_248A6A610;

  return sub_248A6A76C(v8);
}

uint64_t sub_248A6A610()
{
  v1 = *(*v0 + 232);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_248A6A70C, 0, 0);
}

uint64_t sub_248A6A70C()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_248A6A78C()
{
  v14 = v0;
  v1 = [objc_opt_self() serviceWithDefaultShellEndpoint];
  v0[20] = v1;
  if (v1)
  {
    v2 = v1;
    if (qword_27EEBD448 != -1)
    {
      swift_once();
    }

    v3 = v0[19];
    v4 = sub_248A6D644();
    v0[21] = v4;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_248A6AA78;
    v5 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBDC70, &unk_248A719F8);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_248A6AF20;
    v0[13] = &block_descriptor;
    v0[14] = v5;
    [v2 openApplication:v4 withOptions:v3 completion:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    if (qword_27EEBD428 != -1)
    {
      swift_once();
    }

    v6 = sub_248A6D624();
    __swift_project_value_buffer(v6, qword_27EEC3C08);
    v7 = sub_248A6D604();
    v8 = sub_248A6D804();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v13 = v10;
      *v9 = 136446210;
      *(v9 + 4) = sub_248A50F9C(0xD00000000000001ALL, 0x8000000248A71960, &v13);
      _os_log_impl(&dword_248A4A000, v7, v8, "%{public}s failed to launch AirPlayReceiver; unable to create FBSOpenApplicationService", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x24C1E2580](v10, -1, -1);
      MEMORY[0x24C1E2580](v9, -1, -1);
    }

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_248A6AA78()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 176) = v2;
  if (v2)
  {
    v3 = sub_248A6AD14;
  }

  else
  {
    v3 = sub_248A6AB88;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_248A6AB88()
{
  v12 = v0;
  v1 = *(v0 + 168);

  if (qword_27EEBD428 != -1)
  {
    swift_once();
  }

  v2 = sub_248A6D624();
  __swift_project_value_buffer(v2, qword_27EEC3C08);
  v3 = sub_248A6D604();
  v4 = sub_248A6D814();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 160);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_248A50F9C(0xD00000000000001ALL, 0x8000000248A71960, &v11);
    _os_log_impl(&dword_248A4A000, v3, v4, "%{public}s successfully launched AirPlayReceiver", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x24C1E2580](v8, -1, -1);
    MEMORY[0x24C1E2580](v7, -1, -1);
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_248A6AD14()
{
  v19 = v0;
  v1 = v0[21];
  v2 = v0[22];
  swift_willThrow();

  if (qword_27EEBD428 != -1)
  {
    swift_once();
  }

  v3 = v0[22];
  v4 = sub_248A6D624();
  __swift_project_value_buffer(v4, qword_27EEC3C08);
  v5 = v3;
  v6 = sub_248A6D604();
  v7 = sub_248A6D804();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[22];
  v10 = v0[20];
  if (v8)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18 = v13;
    *v11 = 136446466;
    *(v11 + 4) = sub_248A50F9C(0xD00000000000001ALL, 0x8000000248A71960, &v18);
    *(v11 + 12) = 2114;
    v14 = v9;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v15;
    *v12 = v15;
    _os_log_impl(&dword_248A4A000, v6, v7, "%{public}s failed to launch AirPlayReceiver with error %{public}@", v11, 0x16u);
    sub_248A691D4(v12);
    MEMORY[0x24C1E2580](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x24C1E2580](v13, -1, -1);
    MEMORY[0x24C1E2580](v11, -1, -1);
  }

  else
  {
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_248A6AF20(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBDC78, &qword_248A71A08);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x282200958](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v5);
  }
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AirPlayReceiverCoordinator(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_248A6B138()
{
  result = qword_27EEBDC80;
  if (!qword_27EEBDC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBDC80);
  }

  return result;
}

uint64_t static GuestUserRemoteUnlockRequestConfiguration.Version1.emptyConfiguration.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for ApplicationLibrary(0);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  v5 = swift_allocObject();
  sub_248A6D524();
  *(v5 + 16) = MEMORY[0x277D84F90];
  swift_getKeyPath();
  v8[1] = v5;
  sub_248A6C504(&qword_27EEBDAF8);
  sub_248A6D4F4();

  swift_beginAccess();
  v6 = *(v5 + 16);
  swift_bridgeObjectRetain_n();
  v8[0] = sub_248A68064(v6);
  sub_248A674F4(v8);

  result = ApplicationLibrary.applications.setter(v8[0]);
  *a1 = v5;
  return result;
}

uint64_t GuestUserRemoteUnlockRequestConfiguration.Version1.description.getter()
{
  v1 = *v0;
  sub_248A6D8B4();
  MEMORY[0x24C1E18E0](0x316E6F6973726556, 0xE800000000000000);
  MEMORY[0x24C1E18E0](0xD000000000000017, 0x8000000248A734D0);
  type metadata accessor for ApplicationLibrary(0);
  sub_248A6D944();
  return 0;
}

uint64_t sub_248A6B408@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x8000000248A73520 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_248A6DAB4();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_248A6B49C(uint64_t a1)
{
  v2 = sub_248A6C4B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_248A6B4D8(uint64_t a1)
{
  v2 = sub_248A6C4B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GuestUserRemoteUnlockRequestConfiguration.Version1.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBDC88, &qword_248A71A78);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_248A6C4B0();

  sub_248A6DB84();
  v11[1] = v8;
  type metadata accessor for ApplicationLibrary(0);
  sub_248A6C504(&qword_27EEBDBA0);
  sub_248A6DA74();

  return (*(v4 + 8))(v7, v3);
}

uint64_t GuestUserRemoteUnlockRequestConfiguration.Version1.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBDC98, &qword_248A71A80);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_248A6C4B0();
  sub_248A6DB74();
  if (!v2)
  {
    type metadata accessor for ApplicationLibrary(0);
    sub_248A6C504(&qword_27EEBDB98);
    sub_248A6DA04();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_248A6B884()
{
  sub_248A5F178();
  sub_248A5F1CC();
  return sub_248A6D5E4();
}

uint64_t sub_248A6B8D8()
{
  sub_248A5F178();
  sub_248A5F1CC();
  return sub_248A6D5F4();
}

uint64_t GuestUserRemoteUnlockRequestConfiguration.Version2.applicationLibraryData.getter()
{
  v1 = *v0;
  sub_248A557A0(*v0, *(v0 + 8));
  return v1;
}

uint64_t GuestUserRemoteUnlockRequestConfiguration.Version2.init(applicationLibraryData:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

double static GuestUserRemoteUnlockRequestConfiguration.Version2.emptyConfiguration.getter@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_248A71A40;
  return result;
}

uint64_t GuestUserRemoteUnlockRequestConfiguration.Version2.makeApplicationLibrary()()
{
  v2 = *v0;
  v3 = v0[1];
  result = sub_248A6D424();
  if (!v1)
  {
    type metadata accessor for ApplicationLibrary(0);
    sub_248A6C504(&qword_27EEBDCA0);
    sub_248A6C504(&qword_27EEBDB98);
    sub_248A6C504(&qword_27EEBDBA0);
    sub_248A6D5F4();
    result = v5;
    if (!v5)
    {
      [objc_opt_self() dss:0 errorWithCode:?];
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t GuestUserRemoteUnlockRequestConfiguration.Version2.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_248A6D8B4();

  v4 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v4 != 2 || !__OFSUB__(*(v1 + 24), *(v1 + 16)))
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  else if (!v4)
  {
    goto LABEL_9;
  }

  if (!__OFSUB__(HIDWORD(v1), v1))
  {
LABEL_9:
    v5 = sub_248A6DAA4();
    MEMORY[0x24C1E18E0](v5);

    MEMORY[0x24C1E18E0](93, 0xE100000000000000);
    return 0xD000000000000024;
  }

  __break(1u);
  return result;
}

uint64_t sub_248A6BBF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000016 && 0x8000000248A73540 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_248A6DAB4();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_248A6BC8C(uint64_t a1)
{
  v2 = sub_248A6C768();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_248A6BCC8(uint64_t a1)
{
  v2 = sub_248A6C768();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GuestUserRemoteUnlockRequestConfiguration.Version2.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBDCA8, &qword_248A71A88);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_248A557A0(v8, v9);
  sub_248A6C768();
  sub_248A6DB84();
  v12 = v8;
  v13 = v9;
  sub_248A68658();
  sub_248A6DA74();
  sub_248A5585C(v12, v13);
  return (*(v4 + 8))(v7, v3);
}

uint64_t GuestUserRemoteUnlockRequestConfiguration.Version2.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEBDCB8, &qword_248A71A90);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_248A6C768();
  sub_248A6DB74();
  if (!v2)
  {
    sub_248A686F4();
    sub_248A6DA04();
    (*(v6 + 8))(v9, v5);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_248A6C01C()
{
  sub_248A5F270();
  sub_248A5F2C4();
  return sub_248A6D5E4();
}

uint64_t sub_248A6C070()
{
  sub_248A5F270();
  sub_248A5F2C4();
  return sub_248A6D5F4();
}

uint64_t sub_248A6C0F0@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_248A6D3D4();
    if (v10)
    {
      v11 = sub_248A6D3F4();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_248A6D3E4();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v21 = a3;
    v22 = BYTE2(a3);
    v23 = BYTE3(a3);
    v24 = BYTE4(a3);
    v25 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      v19 = *MEMORY[0x277D85DE8];
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_248A6D3D4();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_248A6D3F4();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_248A6D3E4();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_248A6C320(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_248A6C548(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_248A5585C(a3, a4);
    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  sub_248A6C0F0(v14, a3, a4, &v13);
  v10 = v4;
  sub_248A5585C(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

unint64_t sub_248A6C4B0()
{
  result = qword_27EEBDC90;
  if (!qword_27EEBDC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBDC90);
  }

  return result;
}

uint64_t sub_248A6C504(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ApplicationLibrary(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_248A6C548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_248A6D3D4();
  v11 = result;
  if (result)
  {
    result = sub_248A6D3F4();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_248A6D3E4();
  sub_248A6C0F0(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_248A6C600(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_248A557A0(a3, a4);
          return sub_248A6C320(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

unint64_t sub_248A6C768()
{
  result = qword_27EEBDCB0;
  if (!qword_27EEBDCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBDCB0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_248A6C7F8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 16))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_248A6C84C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

unint64_t sub_248A6C8CC()
{
  result = qword_27EEBDCC0;
  if (!qword_27EEBDCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBDCC0);
  }

  return result;
}

unint64_t sub_248A6C924()
{
  result = qword_27EEBDCC8;
  if (!qword_27EEBDCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBDCC8);
  }

  return result;
}

unint64_t sub_248A6C97C()
{
  result = qword_27EEBDCD0;
  if (!qword_27EEBDCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBDCD0);
  }

  return result;
}

unint64_t sub_248A6C9D4()
{
  result = qword_27EEBDCD8;
  if (!qword_27EEBDCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBDCD8);
  }

  return result;
}

unint64_t sub_248A6CA2C()
{
  result = qword_27EEBDCE0;
  if (!qword_27EEBDCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBDCE0);
  }

  return result;
}

unint64_t sub_248A6CA84()
{
  result = qword_27EEBDCE8;
  if (!qword_27EEBDCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBDCE8);
  }

  return result;
}

uint64_t ViewMirroringInitiator.rawValue.getter()
{
  if (*v0)
  {
    return 0x72656E776FLL;
  }

  else
  {
    return 0x7473657567;
  }
}

DeviceSharingServices::ViewMirroringInitiator_optional __swiftcall ViewMirroringInitiator.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_248A6D994();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_248A6CB6C()
{
  result = qword_27EEBDCF0;
  if (!qword_27EEBDCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBDCF0);
  }

  return result;
}

uint64_t sub_248A6CBC0()
{
  v1 = *v0;
  sub_248A6DB34();
  sub_248A6D6A4();

  return sub_248A6DB64();
}

uint64_t sub_248A6CC30()
{
  *v0;
  sub_248A6D6A4();
}

uint64_t sub_248A6CC84()
{
  v1 = *v0;
  sub_248A6DB34();
  sub_248A6D6A4();

  return sub_248A6DB64();
}

uint64_t sub_248A6CCF0@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_248A6D994();

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

void sub_248A6CD50(uint64_t *a1@<X8>)
{
  v2 = 0x7473657567;
  if (*v1)
  {
    v2 = 0x72656E776FLL;
  }

  *a1 = v2;
  a1[1] = 0xE500000000000000;
}

uint64_t sub_248A6CE30(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x72656E776FLL;
  }

  else
  {
    v2 = 0x7473657567;
  }

  if (*a2)
  {
    v3 = 0x72656E776FLL;
  }

  else
  {
    v3 = 0x7473657567;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_248A6DAB4();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_248A6CEB0()
{
  sub_248A6CF90();
  sub_248A6CFE4();
  return sub_248A6D5E4();
}

uint64_t sub_248A6CF04()
{
  sub_248A6CF90();
  sub_248A6CFE4();
  return sub_248A6D5F4();
}

unint64_t sub_248A6CF90()
{
  result = qword_27EEBDCF8;
  if (!qword_27EEBDCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBDCF8);
  }

  return result;
}

unint64_t sub_248A6CFE4()
{
  result = qword_27EEBDD00;
  if (!qword_27EEBDD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBDD00);
  }

  return result;
}

unint64_t sub_248A6D038()
{
  result = qword_27EEBDD08;
  if (!qword_27EEBDD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBDD08);
  }

  return result;
}

BOOL sub_248A6D08C()
{
  v0 = sub_248A6D414();
  v1 = CGDataProviderCreateWithCFData(v0);

  if (v1)
  {
    v2 = CGImageCreateWithPNGDataProvider(v1, 0, 0, kCGRenderingIntentDefault);
    if (v2)
    {
      v3 = v2;

      return v3;
    }

    sub_248A69180();
    swift_willThrowTypedImpl();
  }

  else
  {
    sub_248A69180();
    swift_willThrowTypedImpl();
  }

  return v1 != 0;
}

unint64_t sub_248A6D15C()
{
  result = qword_27EEBDD10;
  if (!qword_27EEBDD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEBDD10);
  }

  return result;
}

void _DSSGuestUserCreateCopy_cold_1()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"__kindof DSSGuestUser *_DSSGuestUserCreateCopy(__kindof DSSGuestUser *__strong, __unsafe_unretained Class, NSZone * _Nullable)"}];
  [v1 handleFailureInFunction:v0 file:@"DSSGuestUser.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"self"}];
}

void _DSSGuestUserCreateCopy_cold_2()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"__kindof DSSGuestUser *_DSSGuestUserCreateCopy(__kindof DSSGuestUser *__strong, __unsafe_unretained Class, NSZone * _Nullable)"}];
  [v1 handleFailureInFunction:v0 file:@"DSSGuestUser.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"klass"}];
}