uint64_t sub_1DF5C5A04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42A20, &qword_1DF638C58);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v19 - v9;
  v11 = sub_1DF6335AC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    sub_1DF59CB50(a1, &qword_1ECE42A20, &qword_1DF638C58);
    sub_1DF62D980(a2, a3, v10);

    return sub_1DF59CB50(v10, &qword_1ECE42A20, &qword_1DF638C58);
  }

  else
  {
    (*(v12 + 32))(v15, a1, v11);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_1DF62EC5C(v15, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_1DF5C5BDC(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE429F8, &qword_1DF638C28);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42A00, &qword_1DF638C30);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v19 - v12;
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_1DF59CB50(a1, &qword_1ECE429F8, &qword_1DF638C28);
    sub_1DF62DAF0(a2, v8);
    v14 = sub_1DF6325AC();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_1DF59CB50(v8, &qword_1ECE429F8, &qword_1DF638C28);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_1DF62EDDC(v13, a2, isUniquelyReferenced_nonNull_native);
    v18 = sub_1DF6325AC();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

uint64_t sub_1DF5C5E10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 8))
  {
    v6 = *(a1 + 80);
    v13[4] = *(a1 + 64);
    v13[5] = v6;
    v13[6] = *(a1 + 96);
    v7 = *(a1 + 16);
    v13[0] = *a1;
    v13[1] = v7;
    v8 = *(a1 + 48);
    v13[2] = *(a1 + 32);
    v13[3] = v8;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v3;
    sub_1DF62EFEC(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v12;
  }

  else
  {
    sub_1DF59CB50(a1, &qword_1ECE429F0, &qword_1DF638C20);
    sub_1DF62DD4C(a2, a3, v13);

    return sub_1DF59CB50(v13, &qword_1ECE429F0, &qword_1DF638C20);
  }

  return result;
}

uint64_t DarwinNotification.Listener.__allocating_init(stream:handler:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  DarwinNotification.Listener.init(stream:handler:)(a1);
  return v5;
}

uint64_t sub_1DF5C5F5C()
{
  if (qword_1ED8E5C08 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1DF5C5FB8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DarwinNotificationHandler();

  return MEMORY[0x1EEE6DBF0](v3, a2);
}

uint64_t static DarwinNotificationHandler.asyncStream(name:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DF5A4698, 0, 0);
}

uint64_t static DarwinNotificationHandler.asyncStream(name:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DF5C6058, 0, 0);
}

uint64_t sub_1DF5C6058()
{
  if (qword_1ED8E5C08 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED8E5C10;
  *(v0 + 32) = qword_1ED8E5C10;

  return MEMORY[0x1EEE6DFA0](sub_1DF5C60F0, v1, 0);
}

uint64_t sub_1DF5C60F0()
{
  v1 = *(v0 + 32);
  sub_1DF59E6F8(*(v0 + 24), *(v0 + 16));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t static DarwinNotificationHandler.listen(name:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE429A0, &qword_1DF63E290) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF5C61F4, 0, 0);
}

uint64_t sub_1DF5C61F4()
{
  if (qword_1ED8E5C08 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED8E5C10;
  *(v0 + 56) = qword_1ED8E5C10;

  return MEMORY[0x1EEE6DFA0](sub_1DF5C628C, v1, 0);
}

uint64_t sub_1DF5C628C()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[2];
  v4 = v0[3];
  v5 = sub_1DF63295C();
  sub_1DF59E6F8(v5, v1);

  return MEMORY[0x1EEE6DFA0](sub_1DF5C6310, 0, 0);
}

uint64_t sub_1DF5C6310()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = type metadata accessor for DarwinNotification.Listener();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  v7 = swift_allocObject();

  DarwinNotification.Listener.init(stream:handler:)(v1);

  v8 = v0[1];

  return v8(v7);
}

uint64_t static DarwinNotificationHandler.listen(name:handler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE429A0, &qword_1DF63E290) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF5C6458, 0, 0);
}

uint64_t sub_1DF5C6458()
{
  if (qword_1ED8E5C08 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED8E5C10;
  *(v0 + 48) = qword_1ED8E5C10;

  return MEMORY[0x1EEE6DFA0](sub_1DF5C64F0, v1, 0);
}

uint64_t sub_1DF5C64F0()
{
  v1 = *(v0 + 48);
  sub_1DF59E6F8(*(v0 + 16), *(v0 + 40));

  return MEMORY[0x1EEE6DFA0](sub_1DF5C655C, 0, 0);
}

uint64_t sub_1DF5C655C()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = type metadata accessor for DarwinNotification.Listener();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  v7 = swift_allocObject();

  DarwinNotification.Listener.init(stream:handler:)(v1);

  v8 = v0[1];

  return v8(v7);
}

void *DarwinNotification.Listener.init(stream:handler:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE429A8, &qword_1DF6389E0);
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  *(v5 + 16) = 0;
  v6 = (v5 + 16);
  *(v5 + 32) = 0;
  v7 = (v5 + 32);
  v1[2] = v5;

  os_unfair_lock_lock(v7);
  sub_1DF5C8C04(v6);
  os_unfair_lock_unlock(v7);

  v8 = OBJC_IVAR____TtCV10FindMyBase18DarwinNotification8Listener_stream;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE429A0, &qword_1DF63E290);
  v10 = *(v9 - 8);
  (*(v10 + 16))(v2 + v8, a1, v9);
  if (qword_1ECE423C0 != -1)
  {
    swift_once();
  }

  v11 = sub_1DF6326AC();
  __swift_project_value_buffer(v11, qword_1ECE423C8);

  v12 = sub_1DF63268C();
  v13 = sub_1DF63318C();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v20 = a1;
    v15 = swift_slowAlloc();
    v21 = v15;
    *v14 = 136315138;

    v16 = sub_1DF632A3C();
    v18 = sub_1DF59EEC8(v16, v17, &v21);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_1DF59A000, v12, v13, "Created ListenerInstance: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x1E12D9D80](v15, -1, -1);
    MEMORY[0x1E12D9D80](v14, -1, -1);

    (*(v10 + 8))(v20, v9);
  }

  else
  {

    (*(v10 + 8))(a1, v9);
  }

  return v2;
}

uint64_t sub_1DF5C6928(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  if (v6)
  {
    v7 = a1[1];
    sub_1DF5A83BC(v6);
  }

  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  *a1 = &unk_1DF638C70;
  a1[1] = v8;
}

uint64_t sub_1DF5C69A4(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1DF59D2C4;

  return v6();
}

uint64_t sub_1DF5C6A98(uint64_t a1, uint64_t a2, int *a3)
{
  v8 = (a3 + *a3);
  v5 = a3[1];
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1DF59D2C8;

  return v8(a2);
}

void *DarwinNotification.Listener.deinit()
{
  v1 = v0;
  v2 = *v0;
  if (qword_1ECE423C0 != -1)
  {
    swift_once();
  }

  v3 = sub_1DF6326AC();
  __swift_project_value_buffer(v3, qword_1ECE423C8);

  v4 = sub_1DF63268C();
  v5 = sub_1DF63318C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136315138;

    v8 = sub_1DF632A3C();
    v10 = sub_1DF59EEC8(v8, v9, &v15);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1DF59A000, v4, v5, "Destroy ListenerInstance: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1E12D9D80](v7, -1, -1);
    MEMORY[0x1E12D9D80](v6, -1, -1);
  }

  v11 = v1[2];

  v12 = OBJC_IVAR____TtCV10FindMyBase18DarwinNotification8Listener_stream;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE429A0, &qword_1DF63E290);
  (*(*(v13 - 8) + 8))(v1 + v12, v13);
  return v1;
}

uint64_t DarwinNotification.Listener.__deallocating_deinit()
{
  DarwinNotification.Listener.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t DarwinNotification.Listener.run()()
{
  v1[7] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE429B0, &qword_1DF6389F0);
  v1[8] = v2;
  v3 = *(v2 - 8);
  v1[9] = v3;
  v4 = *(v3 + 64) + 15;
  v1[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF5C6E98, 0, 0);
}

uint64_t sub_1DF5C6E98()
{
  v1 = *(v0[7] + 16);
  os_unfair_lock_lock((v1 + 32));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[10];
    v4 = v0[7];
    v5 = *(v1 + 24);
    v6 = swift_allocObject();
    *(v6 + 16) = v2;
    *(v6 + 24) = v5;
    v7 = swift_allocObject();
    *(v7 + 16) = &unk_1DF638A18;
    *(v7 + 24) = v6;
    v8 = swift_allocObject();
    *(v8 + 16) = &unk_1DF638A18;
    *(v8 + 24) = v6;
    *(v1 + 16) = &unk_1DF638A30;
    *(v1 + 24) = v8;

    os_unfair_lock_unlock((v1 + 32));
    v9 = swift_allocObject();
    v0[11] = v9;
    *(v9 + 16) = &unk_1DF638A28;
    *(v9 + 24) = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE429A0, &qword_1DF63E290);
    sub_1DF632F1C();
    v10 = *(MEMORY[0x1E69E8678] + 4);
    v11 = swift_task_alloc();
    v0[12] = v11;
    *v11 = v0;
    v11[1] = sub_1DF5C709C;
    v12 = v0[10];
    v13 = v0[8];

    return MEMORY[0x1EEE6D9C8](v0 + 2, 0, 0, v13);
  }

  else
  {
    os_unfair_lock_unlock((v1 + 32));
    v14 = v0[10];

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_1DF5C709C()
{
  v1 = *(*v0 + 96);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DF5C7198, 0, 0);
}

uint64_t sub_1DF5C7198()
{
  v1 = v0[2];
  v2 = v0[3];
  v0[13] = v1;
  v0[14] = v2;
  v4 = v0[4];
  v3 = v0[5];
  v0[15] = v4;
  v0[16] = v3;
  if (!v2)
  {
    v6 = v0[11];
    (*(v0[9] + 8))(v0[10], v0[8]);

    goto LABEL_5;
  }

  if (sub_1DF632F6C())
  {
    v5 = v0[11];
    (*(v0[9] + 8))(v0[10], v0[8]);

    sub_1DF5BAC08(v1, v2);
LABEL_5:
    v7 = v0[10];

    v8 = v0[1];

    return v8();
  }

  if (qword_1ED8E6098 != -1)
  {
    swift_once();
  }

  v10 = v0[11];
  v0[6] = v3;
  v11 = swift_task_alloc();
  v0[17] = v11;
  v11[2] = &unk_1DF638A00;
  v11[3] = v10;
  v11[4] = v1;
  v11[5] = v2;
  v11[6] = v4;
  v11[7] = v3;
  v12 = *(MEMORY[0x1E69E8950] + 4);

  v13 = swift_task_alloc();
  v0[18] = v13;
  *v13 = v0;
  v13[1] = sub_1DF5BAA10;

  return MEMORY[0x1EEE6DE98](v13, v0 + 6, &unk_1DF638A10, v11, 0, 0, 0xD00000000000002ALL, 0x80000001DF634B30);
}

uint64_t sub_1DF5C73CC(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a4;
  v7[3] = a5;
  v7[4] = a6;
  v7[5] = a7;
  v11 = (a2 + *a2);
  v8 = a2[1];
  v9 = swift_task_alloc();
  v7[6] = v9;
  *v9 = v7;
  v9[1] = sub_1DF5BA918;

  return v11(v7 + 2);
}

uint64_t sub_1DF5C74CC(uint64_t result, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  if (a2)
  {
    v8 = result;

    if (a3)
    {
      v9 = sub_1DF63298C();
      v11 = v10;
      v12 = swift_allocObject();
      v12[2] = v9;
      v12[3] = v11;
      v12[4] = a2;
      v13 = a3;
      v14 = v8;
      v15 = a5;

      _s10FindMyBase11TransactionC9asyncTask4name5blockys12StaticStringV_yyYaYbctFZ_0("UnregisteredDarwinNotification", 30, 2, &unk_1DF638C90, v12);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DF5C75D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DF5C75F4, 0, 0);
}

uint64_t sub_1DF5C75F4()
{
  if (qword_1ED8E6098 != -1)
  {
    swift_once();
  }

  sub_1DF633C5C();
  v1 = v0[2];
  v0[9] = v1;
  if (v1)
  {
    v3 = v0[7];
    v2 = v0[8];
    v4 = v0[6];
    v5 = sub_1DF63295C();
    MyBase18DarwinNotificationV12currentValue4names6UInt64VSo18CFNotificationNamea_tFZ_0 = _s10FindMyBase18DarwinNotificationV12currentValue4names6UInt64VSo18CFNotificationNamea_tFZ_0();

    v0[2] = v4;
    v0[3] = v3;
    v0[4] = MyBase18DarwinNotificationV12currentValue4names6UInt64VSo18CFNotificationNamea_tFZ_0;
    v0[5] = v1;

    return MEMORY[0x1EEE6DFA0](sub_1DF5C7728, v2, 0);
  }

  else
  {
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_1DF5C7728()
{
  v1 = v0[8];
  sub_1DF5C7810(v0 + 2, v0[9]);

  return MEMORY[0x1EEE6DFA0](sub_1DF5C7794, 0, 0);
}

uint64_t sub_1DF5C7794()
{
  v1 = v0[9];
  v2 = v0[7];

  v3 = v0[1];

  return v3();
}

uint64_t DarwinNotification.init(name:value:transaction:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

void sub_1DF5C7810(uint64_t *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42C10, &qword_1DF63B260);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v28 - v7;
  v10 = *a1;
  v9 = a1[1];
  v12 = a1[2];
  v11 = a1[3];
  swift_beginAccess();
  v13 = *(v2 + 128);
  if (*(v13 + 16))
  {

    v14 = sub_1DF59F358(v10, v9, sub_1DF5A3D44);
    if (v15)
    {
      v16 = *(*(v13 + 56) + 8 * v14);

      v17 = sub_1DF632E9C();
      (*(*(v17 - 8) + 56))(v8, 1, 1, v17);
      v18 = swift_allocObject();
      v18[2] = 0;
      v18[3] = 0;
      v18[4] = a2;
      v18[5] = v16;
      v18[6] = v10;
      v18[7] = v9;
      v18[8] = v12;
      v18[9] = v11;

      sub_1DF5CE7F8(0, 0, v8, &unk_1DF638CA8, v18);

      return;
    }
  }

  if (qword_1ED8E5C20 != -1)
  {
    swift_once();
  }

  v19 = sub_1DF6326AC();
  __swift_project_value_buffer(v19, qword_1ED8E5C28);

  v20 = sub_1DF63268C();
  v21 = sub_1DF63317C();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v28[3] = v11;
    v29 = v23;
    *v22 = 136315138;
    v28[0] = v10;
    v28[1] = v9;
    v28[2] = v12;

    v24 = DarwinNotification.description.getter();
    v26 = v25;

    v27 = sub_1DF59EEC8(v24, v26, &v29);

    *(v22 + 4) = v27;
    _os_log_impl(&dword_1DF59A000, v20, v21, "Received unexpected unregistered notification: [%s]", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x1E12D9D80](v23, -1, -1);
    MEMORY[0x1E12D9D80](v22, -1, -1);
  }
}

uint64_t sub_1DF5C7B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[11] = a8;
  v8[12] = v17;
  v8[9] = a6;
  v8[10] = a7;
  v8[7] = a4;
  v8[8] = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42A38, &qword_1DF638CB0);
  v8[13] = v9;
  v10 = *(v9 - 8);
  v8[14] = v10;
  v11 = *(v10 + 64) + 15;
  v8[15] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42940, &qword_1DF638930);
  v8[16] = v12;
  v13 = *(v12 - 8);
  v8[17] = v13;
  v14 = *(v13 + 64) + 15;
  v8[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF5C7C70, 0, 0);
}

uint64_t sub_1DF5C7C70()
{
  if (qword_1ED8E6098 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v0[6] = v0[7];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42A40, &qword_1DF638CB8);
  swift_task_localValuePush();
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[17];
    v19 = *(v3 + 16);
    v4 = v0[8] + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v17 = (v0[14] + 8);
    v18 = *(v3 + 72);
    v16 = (v3 + 8);
    do
    {
      v5 = v0[18];
      v7 = v0[15];
      v6 = v0[16];
      v8 = v0[12];
      v20 = v0[13];
      v9 = v0[10];
      v10 = v0[11];
      v11 = v0[9];
      v19(v5, v4, v6);
      v0[2] = v11;
      v0[3] = v9;
      v0[4] = v10;
      v0[5] = v8;

      sub_1DF632EEC();
      (*v17)(v7, v20);
      (*v16)(v5, v6);
      v4 += v18;
      --v2;
    }

    while (v2);
  }

  v12 = v0[18];
  v13 = v0[15];
  swift_task_localValuePop();

  v14 = v0[1];

  return v14();
}

uint64_t DarwinNotification.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t DarwinNotification.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1DF63347C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE429B8, &qword_1DF638A38);
  v5 = sub_1DF632A3C();
  MEMORY[0x1E12D82E0](v5);

  MEMORY[0x1E12D82E0](8250, 0xE200000000000000);
  MEMORY[0x1E12D82E0](v1, v2);
  MEMORY[0x1E12D82E0](58, 0xE100000000000000);
  v6 = sub_1DF6338DC();
  MEMORY[0x1E12D82E0](v6);

  MEMORY[0x1E12D82E0](0x3A6E787420, 0xE500000000000000);
  MEMORY[0x1E12D82E0](*(v3 + 16), *(v3 + 24));
  MEMORY[0x1E12D82E0](93, 0xE100000000000000);
  MEMORY[0x1E12D82E0](0x3A4E58545BLL, 0xE500000000000000);

  MEMORY[0x1E12D82E0](93, 0xE100000000000000);
  return 91;
}

void static DarwinNotification.post(name:)()
{
  v0 = sub_1DF63295C();
  v1 = CFNotificationCenterGetDarwinNotifyCenter();
  if (v1)
  {
    v2 = v1;
    CFNotificationCenterPostNotification(v1, v0, 0, 0, 1u);
  }

  else
  {
    __break(1u);
  }
}

void static DarwinNotification.post(name:)(const __CFString *a1)
{
  v2 = CFNotificationCenterGetDarwinNotifyCenter();
  if (v2)
  {
    v3 = v2;
    CFNotificationCenterPostNotification(v2, a1, 0, 0, 1u);
  }

  else
  {
    __break(1u);
  }
}

void static DarwinNotification.setValue(name:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1DF63295C();
  _s10FindMyBase18DarwinNotificationV8setValue4name5valueySo18CFNotificationNamea_s6UInt64VtFZ_0(v4, a3);
}

uint64_t ThrottledDarwinPoster.init(name:rateLimit:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE429C0, &qword_1DF638A40);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();
  sub_1DF6335BC();
  v12 = qword_1ED8E4B38;
  v13 = sub_1DF5C8F38(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE429C8, &qword_1DF638A48);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v13;
  *(v11 + v12) = result;
  v15 = (v11 + qword_1ED8E4B40);
  *v15 = a3;
  v15[1] = a4;
  a5[2] = v11;
  return result;
}

void ThrottledDarwinPoster.init(name:rateLimit:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_1DF63298C();
  v10 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE429C0, &qword_1DF638A40);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  v14 = swift_allocObject();
  sub_1DF6335BC();
  v15 = qword_1ED8E4B38;
  v16 = sub_1DF5C8F38(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE429C8, &qword_1DF638A48);
  v17 = swift_allocObject();
  *(v17 + 24) = 0;
  *(v14 + v15) = v17;
  *(v17 + 16) = v16;
  v18 = (v14 + qword_1ED8E4B40);
  *v18 = a2;
  v18[1] = a3;

  *a4 = v8;
  a4[1] = v10;
  a4[2] = v14;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ThrottledDarwinPoster.post(bypassRateLimit:)(Swift::Bool bypassRateLimit)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  if (bypassRateLimit)
  {
    v4 = *v1;
    v5 = *(v1 + 8);
    v6 = sub_1DF63295C();
    v7 = CFNotificationCenterGetDarwinNotifyCenter();
    if (v7)
    {
      v8 = v7;
      CFNotificationCenterPostNotification(v7, v6, 0, 0, 1u);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v9 = *(v1 + 16);

    sub_1DF5F466C(v2, v3, v9, v2, v3);
  }
}

unint64_t sub_1DF5C83A8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_1DF6325AC();
  sub_1DF5A27C8(&qword_1ED8E6150, 255, MEMORY[0x1E69695A8]);
  v5 = sub_1DF6328BC();

  return sub_1DF5C84D8(a1, v5);
}

unint64_t sub_1DF5C8444(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_1DF63298C();
  sub_1DF633A6C();
  sub_1DF632ACC();
  v4 = sub_1DF633AAC();

  return sub_1DF5C869C(a1, v4);
}

unint64_t sub_1DF5C84D8(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_1DF6325AC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_1DF5A27C8(&qword_1ED8E4BF0, 255, MEMORY[0x1E69695A8]);
      v16 = sub_1DF63292C();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_1DF5C869C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1DF63298C();
      v9 = v8;
      if (v7 == sub_1DF63298C() && v9 == v10)
      {
        break;
      }

      v12 = sub_1DF63394C();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1DF5C87A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42A68, &qword_1DF638CE0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42A70, &qword_1DF638CE8);
    v8 = sub_1DF63373C();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1DF59CC98(v10, v6, &qword_1ECE42A68, &qword_1DF638CE0);
      v13 = *v6;
      v12 = v6[1];
      result = sub_1DF59F358(*v6, v12, sub_1DF5A3D44);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v13;
      v17[1] = v12;
      v18 = v8[7];
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE429A0, &qword_1DF63E290);
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1DF5C89AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42A58, &qword_1DF638CD0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42A60, &qword_1DF638CD8);
    v8 = sub_1DF63373C();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1DF59CC98(v10, v6, &qword_1ECE42A58, &qword_1DF638CD0);
      v13 = *v6;
      v12 = v6[1];
      result = sub_1DF59F358(*v6, v12, sub_1DF5A3D44);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v13;
      v17[1] = v12;
      v18 = v8[7];
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42940, &qword_1DF638930);
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t type metadata accessor for DarwinNotification.Listener()
{
  result = qword_1ECE423A8;
  if (!qword_1ECE423A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DF5C8C20(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1DF59D2C4;

  return sub_1DF5C69A4(a1, v5);
}

uint64_t sub_1DF5C8CD4(uint64_t a1)
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
  v10[1] = sub_1DF59D2C8;

  return sub_1DF5C73CC(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1DF5C8DA8(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1DF59D2C4;

  return sub_1DF5C6A98(a1, a2, v7);
}

uint64_t sub_1DF5C8E70(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1DF59D2C8;

  return sub_1DF5C6A98(a1, a2, v7);
}

unint64_t sub_1DF5C8F38(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42A28, &qword_1DF638C60);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42A30, &qword_1DF638C68);
    v8 = sub_1DF63373C();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1DF59CC98(v10, v6, &qword_1ECE42A28, &qword_1DF638C60);
      v12 = *v6;
      v13 = v6[1];
      result = sub_1DF59F358(*v6, v13, sub_1DF5A3D44);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = sub_1DF6335AC();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1DF5C9138(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42A18, &qword_1DF638C50);
    v3 = sub_1DF63373C();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1DF59F358(v5, v6, sub_1DF5A3D44);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1DF5C9260(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42A08, &qword_1DF638C38);
    v3 = sub_1DF63373C();
    v4 = a1 + 32;

    while (1)
    {
      sub_1DF59CC98(v4, &v11, &qword_1ECE42A10, &unk_1DF638C40);
      v5 = v11;
      result = sub_1DF5C8444(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1DF5A5660(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1DF5C9388(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE429D8, &qword_1DF638C08);
    v3 = sub_1DF63373C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = *(i - 2);

      result = sub_1DF59F794(v7);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v7;
      v10 = (v3[7] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1DF5C9488(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE429E0, &qword_1DF638C10);
    v3 = sub_1DF63373C();
    v4 = a1 + 32;

    while (1)
    {
      sub_1DF59CC98(v4, &v11, &qword_1ECE429E8, &qword_1DF638C18);
      v5 = v11;
      result = sub_1DF59F794(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1DF5A5660(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void _s10FindMyBase18DarwinNotificationV8setValue4name5valueySo18CFNotificationNamea_s6UInt64VtFZ_0(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  out_token = 0;
  sub_1DF63298C();
  v3 = sub_1DF632A7C();

  notify_register_check((v3 + 32), &out_token);

  if (out_token == -1)
  {
    if (qword_1ED8E5BE8 != -1)
    {
      swift_once();
    }

    v4 = sub_1DF6326AC();
    __swift_project_value_buffer(v4, qword_1ED8E5BF0);
    v5 = sub_1DF63268C();
    v6 = sub_1DF63316C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1DF59A000, v5, v6, "Failed notify_register_check.", v7, 2u);
      MEMORY[0x1E12D9D80](v7, -1, -1);
    }
  }

  else
  {
    notify_set_state(out_token, a2);
    notify_cancel(out_token);
  }

  v8 = *MEMORY[0x1E69E9840];
}

uint64_t dispatch thunk of DarwinNotificationHandler.asyncStream(name:)()
{
  return (*(*v0 + 200))();
}

{
  return (*(*v0 + 208))();
}

void sub_1DF5C97F8()
{
  sub_1DF5C98C4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1DF5C98C4()
{
  if (!qword_1ECE42310)
  {
    v0 = sub_1DF632F3C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECE42310);
    }
  }
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DF5C9920(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1DF5C9968(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1DF5C99BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1DF5C9A04(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DF5C9AA8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1DF59D2C4;

  return sub_1DF5C75D0(v2, v3, v4);
}

uint64_t sub_1DF5C9B50(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v11 = v1[8];
  v10 = v1[9];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1DF59D2C4;

  return sub_1DF5C7B2C(a1, v4, v5, v6, v7, v8, v9, v11);
}

uint64_t Sequence.asyncMap<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[7] = a5;
  v6[8] = v5;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  v8 = *(*(a4 - 8) + 64) + 15;
  v6[9] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[10] = AssociatedTypeWitness;
  v10 = *(AssociatedTypeWitness - 8);
  v6[11] = v10;
  v11 = *(v10 + 64) + 15;
  v6[12] = swift_task_alloc();
  v12 = *(*(sub_1DF63327C() - 8) + 64) + 15;
  v6[13] = swift_task_alloc();
  v13 = *(a3 - 8);
  v6[14] = v13;
  v14 = *(v13 + 64) + 15;
  v6[15] = swift_task_alloc();
  v15 = swift_getAssociatedTypeWitness();
  v6[16] = v15;
  v16 = *(v15 - 8);
  v6[17] = v16;
  v17 = *(v16 + 64) + 15;
  v6[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF5C9E50, 0, 0);
}

uint64_t sub_1DF5C9E50()
{
  v1 = v0[18];
  v3 = v0[14];
  v2 = v0[15];
  v5 = v0[7];
  v4 = v0[8];
  v7 = v0[5];
  v6 = v0[6];
  v0[2] = sub_1DF6327EC();
  (*(v3 + 16))(v2, v4, v7);
  sub_1DF632C1C();
  v8 = v0[18];
  v9 = v0[16];
  v10 = v0[13];
  v11 = v0[10];
  v12 = v0[11];
  v13 = v0[7];
  v14 = v0[5];
  swift_getAssociatedConformanceWitness();
  sub_1DF63329C();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    v15 = v0[15];
    v17 = v0[12];
    v16 = v0[13];
    v18 = v0[9];
    (*(v0[17] + 8))(v0[18], v0[16]);
    v19 = v0[2];

    v20 = v0[1];

    return v20(v19);
  }

  else
  {
    v22 = v0[3];
    (*(v0[11] + 32))(v0[12], v0[13], v0[10]);
    v28 = (v22 + *v22);
    v23 = v22[1];
    v24 = swift_task_alloc();
    v0[19] = v24;
    *v24 = v0;
    v24[1] = sub_1DF5CA0BC;
    v25 = v0[12];
    v26 = v0[9];
    v27 = v0[4];

    return v28(v26, v25);
  }
}

uint64_t sub_1DF5CA0BC()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v7 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v4 = *(v2 + 16);

    v5 = sub_1DF5CA430;
  }

  else
  {
    v5 = sub_1DF5CA1D8;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DF5CA1D8()
{
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[6];
  sub_1DF632DEC();
  sub_1DF632DBC();
  (*(v2 + 8))(v1, v3);
  v6 = v0[18];
  v7 = v0[16];
  v8 = v0[13];
  v9 = v0[10];
  v10 = v0[11];
  v11 = v0[7];
  v12 = v0[5];
  swift_getAssociatedConformanceWitness();
  sub_1DF63329C();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    v13 = v0[15];
    v15 = v0[12];
    v14 = v0[13];
    v16 = v0[9];
    (*(v0[17] + 8))(v0[18], v0[16]);
    v17 = v0[2];

    v18 = v0[1];

    return v18(v17);
  }

  else
  {
    v20 = v0[3];
    (*(v0[11] + 32))(v0[12], v0[13], v0[10]);
    v26 = (v20 + *v20);
    v21 = v20[1];
    v22 = swift_task_alloc();
    v0[19] = v22;
    *v22 = v0;
    v22[1] = sub_1DF5CA0BC;
    v23 = v0[12];
    v24 = v0[9];
    v25 = v0[4];

    return v26(v24, v23);
  }
}

uint64_t sub_1DF5CA430()
{
  v2 = v0[17];
  v1 = v0[18];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[13];
  v6 = v0[9];
  (*(v0[11] + 8))(v0[12], v0[10]);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];
  v8 = v0[20];

  return v7();
}

uint64_t Sequence.asyncCompactMap<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[7] = a5;
  v6[8] = v5;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  v9 = sub_1DF63327C();
  v6[9] = v9;
  v10 = *(v9 - 8);
  v6[10] = v10;
  v11 = *(v10 + 64) + 15;
  v6[11] = swift_task_alloc();
  v12 = *(a4 - 8);
  v6[12] = v12;
  v13 = *(v12 + 64) + 15;
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[15] = AssociatedTypeWitness;
  v15 = *(AssociatedTypeWitness - 8);
  v6[16] = v15;
  v16 = *(v15 + 64) + 15;
  v6[17] = swift_task_alloc();
  v17 = *(*(sub_1DF63327C() - 8) + 64) + 15;
  v6[18] = swift_task_alloc();
  v18 = *(a3 - 8);
  v6[19] = v18;
  v19 = *(v18 + 64) + 15;
  v6[20] = swift_task_alloc();
  v20 = swift_getAssociatedTypeWitness();
  v6[21] = v20;
  v21 = *(v20 - 8);
  v6[22] = v21;
  v22 = *(v21 + 64) + 15;
  v6[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF5CA7BC, 0, 0);
}

uint64_t sub_1DF5CA7BC()
{
  v1 = v0[23];
  v3 = v0[19];
  v2 = v0[20];
  v5 = v0[7];
  v4 = v0[8];
  v7 = v0[5];
  v6 = v0[6];
  v0[2] = sub_1DF6327EC();
  (*(v3 + 16))(v2, v4, v7);
  sub_1DF632C1C();
  v8 = v0[23];
  v9 = v0[21];
  v10 = v0[18];
  v11 = v0[15];
  v12 = v0[16];
  v13 = v0[7];
  v14 = v0[5];
  swift_getAssociatedConformanceWitness();
  sub_1DF63329C();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    v15 = v0[20];
    v17 = v0[17];
    v16 = v0[18];
    v19 = v0[13];
    v18 = v0[14];
    v20 = v0[11];
    (*(v0[22] + 8))(v0[23], v0[21]);
    v21 = v0[2];

    v22 = v0[1];

    return v22(v21);
  }

  else
  {
    v24 = v0[3];
    (*(v0[16] + 32))(v0[17], v0[18], v0[15]);
    v30 = (v24 + *v24);
    v25 = v24[1];
    v26 = swift_task_alloc();
    v0[24] = v26;
    *v26 = v0;
    v26[1] = sub_1DF5CAA44;
    v27 = v0[17];
    v28 = v0[11];
    v29 = v0[4];

    return v30(v28, v27);
  }
}

uint64_t sub_1DF5CAA44()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v7 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v4 = *(v2 + 16);

    v5 = sub_1DF5CAE9C;
  }

  else
  {
    v5 = sub_1DF5CAB60;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DF5CAB60()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[6];
  v4 = (*(v2 + 48))(v1, 1, v3);
  v6 = v0[16];
  v5 = v0[17];
  v7 = v0[15];
  if (v4 == 1)
  {
    v8 = v0[9];
    v9 = v0[10];
    (*(v6 + 8))(v0[17], v0[15]);
    (*(v9 + 8))(v1, v8);
  }

  else
  {
    v11 = v0[13];
    v10 = v0[14];
    (*(v2 + 32))(v10, v1, v3);
    (*(v2 + 16))(v11, v10, v3);
    sub_1DF632DEC();
    sub_1DF632DBC();
    (*(v2 + 8))(v10, v3);
    (*(v6 + 8))(v5, v7);
  }

  v12 = v0[23];
  v13 = v0[21];
  v14 = v0[18];
  v15 = v0[15];
  v16 = v0[16];
  v17 = v0[7];
  v18 = v0[5];
  swift_getAssociatedConformanceWitness();
  sub_1DF63329C();
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    v19 = v0[20];
    v21 = v0[17];
    v20 = v0[18];
    v23 = v0[13];
    v22 = v0[14];
    v24 = v0[11];
    (*(v0[22] + 8))(v0[23], v0[21]);
    v25 = v0[2];

    v26 = v0[1];

    return v26(v25);
  }

  else
  {
    v28 = v0[3];
    (*(v0[16] + 32))(v0[17], v0[18], v0[15]);
    v34 = (v28 + *v28);
    v29 = v28[1];
    v30 = swift_task_alloc();
    v0[24] = v30;
    *v30 = v0;
    v30[1] = sub_1DF5CAA44;
    v31 = v0[17];
    v32 = v0[11];
    v33 = v0[4];

    return v34(v32, v31);
  }
}

uint64_t sub_1DF5CAE9C()
{
  v2 = v0[22];
  v1 = v0[23];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[18];
  v7 = v0[13];
  v6 = v0[14];
  v8 = v0[11];
  (*(v0[16] + 8))(v0[17], v0[15]);
  (*(v2 + 8))(v1, v3);

  v9 = v0[1];
  v10 = v0[25];

  return v9();
}

uint64_t Sequence.asyncFirst(where:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[8] = AssociatedTypeWitness;
  v9 = *(AssociatedTypeWitness - 8);
  v6[9] = v9;
  v10 = *(v9 + 64) + 15;
  v6[10] = swift_task_alloc();
  v11 = *(*(sub_1DF63327C() - 8) + 64) + 15;
  v6[11] = swift_task_alloc();
  v12 = *(a4 - 8);
  v6[12] = v12;
  v13 = *(v12 + 64) + 15;
  v6[13] = swift_task_alloc();
  v14 = swift_getAssociatedTypeWitness();
  v6[14] = v14;
  v15 = *(v14 - 8);
  v6[15] = v15;
  v16 = *(v15 + 64) + 15;
  v6[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF5A857C, 0, 0);
}

uint64_t sub_1DF5CB184()
{
  v2 = v0[15];
  v1 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[11];
  (*(v0[9] + 8))(v0[10], v0[8]);
  (*(v2 + 8))(v1, v3);

  v6 = v0[1];
  v7 = v0[20];

  return v6();
}

uint64_t Sequence.asyncForEach(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[7] = AssociatedTypeWitness;
  v8 = *(AssociatedTypeWitness - 8);
  v5[8] = v8;
  v9 = *(v8 + 64) + 15;
  v5[9] = swift_task_alloc();
  v10 = *(*(sub_1DF63327C() - 8) + 64) + 15;
  v5[10] = swift_task_alloc();
  v11 = *(a3 - 8);
  v5[11] = v11;
  v12 = *(v11 + 64) + 15;
  v5[12] = swift_task_alloc();
  v13 = swift_getAssociatedTypeWitness();
  v5[13] = v13;
  v14 = *(v13 - 8);
  v5[14] = v14;
  v15 = *(v14 + 64) + 15;
  v5[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF5CB438, 0, 0);
}

uint64_t sub_1DF5CB438()
{
  v1 = v0[15];
  v2 = v0[5];
  (*(v0[11] + 16))(v0[12], v0[6], v0[4]);
  sub_1DF632C1C();
  v3 = v0[15];
  v4 = v0[13];
  v5 = v0[10];
  v6 = v0[7];
  v7 = v0[8];
  v9 = v0[4];
  v8 = v0[5];
  swift_getAssociatedConformanceWitness();
  sub_1DF63329C();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    v10 = v0[12];
    v12 = v0[9];
    v11 = v0[10];
    (*(v0[14] + 8))(v0[15], v0[13]);

    v13 = v0[1];

    return v13();
  }

  else
  {
    v15 = v0[2];
    (*(v0[8] + 32))(v0[9], v0[10], v0[7]);
    v20 = (v15 + *v15);
    v16 = v15[1];
    v17 = swift_task_alloc();
    v0[16] = v17;
    *v17 = v0;
    v17[1] = sub_1DF5CB66C;
    v18 = v0[9];
    v19 = v0[3];

    return v20(v18);
  }
}

uint64_t sub_1DF5CB66C()
{
  v2 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_1DF5CB990;
  }

  else
  {
    v3 = sub_1DF5CB780;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DF5CB780()
{
  (*(v0[8] + 8))(v0[9], v0[7]);
  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[10];
  v4 = v0[7];
  v5 = v0[8];
  v7 = v0[4];
  v6 = v0[5];
  swift_getAssociatedConformanceWitness();
  sub_1DF63329C();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    v8 = v0[12];
    v10 = v0[9];
    v9 = v0[10];
    (*(v0[14] + 8))(v0[15], v0[13]);

    v11 = v0[1];

    return v11();
  }

  else
  {
    v13 = v0[2];
    (*(v0[8] + 32))(v0[9], v0[10], v0[7]);
    v18 = (v13 + *v13);
    v14 = v13[1];
    v15 = swift_task_alloc();
    v0[16] = v15;
    *v15 = v0;
    v15[1] = sub_1DF5CB66C;
    v16 = v0[9];
    v17 = v0[3];

    return v18(v16);
  }
}

uint64_t sub_1DF5CB990()
{
  v2 = v0[14];
  v1 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[10];
  (*(v0[8] + 8))(v0[9], v0[7]);
  (*(v2 + 8))(v1, v3);

  v6 = v0[1];
  v7 = v0[17];

  return v6();
}

uint64_t Sequence.asyncFilter(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[8] = AssociatedTypeWitness;
  v8 = *(AssociatedTypeWitness - 8);
  v5[9] = v8;
  v9 = *(v8 + 64) + 15;
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  v10 = *(*(sub_1DF63327C() - 8) + 64) + 15;
  v5[12] = swift_task_alloc();
  v11 = *(a3 - 8);
  v5[13] = v11;
  v12 = *(v11 + 64) + 15;
  v5[14] = swift_task_alloc();
  v13 = swift_getAssociatedTypeWitness();
  v5[15] = v13;
  v14 = *(v13 - 8);
  v5[16] = v14;
  v15 = *(v14 + 64) + 15;
  v5[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF5CBC58, 0, 0);
}

uint64_t sub_1DF5CBC58()
{
  v1 = v0[17];
  v3 = v0[13];
  v2 = v0[14];
  v5 = v0[7];
  v4 = v0[8];
  v7 = v0[5];
  v6 = v0[6];
  v0[2] = sub_1DF6327EC();
  (*(v3 + 16))(v2, v5, v7);
  sub_1DF632C1C();
  v8 = v0[17];
  v9 = v0[15];
  v10 = v0[12];
  v11 = v0[9];
  v12 = v0[8];
  v14 = v0[5];
  v13 = v0[6];
  swift_getAssociatedConformanceWitness();
  sub_1DF63329C();
  if ((*(v11 + 48))(v10, 1, v12) == 1)
  {
    v15 = v0[14];
    v17 = v0[11];
    v16 = v0[12];
    v18 = v0[10];
    (*(v0[16] + 8))(v0[17], v0[15]);
    v19 = v0[2];

    v20 = v0[1];

    return v20(v19);
  }

  else
  {
    v22 = v0[3];
    (*(v0[9] + 32))(v0[11], v0[12], v0[8]);
    v27 = (v22 + *v22);
    v23 = v22[1];
    v24 = swift_task_alloc();
    v0[18] = v24;
    *v24 = v0;
    v24[1] = sub_1DF5CBEC0;
    v25 = v0[11];
    v26 = v0[4];

    return v27(v25);
  }
}

uint64_t sub_1DF5CBEC0(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 144);
  v6 = *v2;
  *(*v2 + 152) = v1;

  if (v1)
  {
    v7 = *(v4 + 16);

    v8 = sub_1DF5CC264;
  }

  else
  {
    *(v4 + 160) = a1 & 1;
    v8 = sub_1DF5CBFF4;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1DF5CBFF4()
{
  if (*(v0 + 160))
  {
    (*(*(v0 + 72) + 16))(*(v0 + 80), *(v0 + 88), *(v0 + 64));
    sub_1DF632DEC();
    sub_1DF632DBC();
  }

  (*(*(v0 + 72) + 8))(*(v0 + 88), *(v0 + 64));
  v1 = *(v0 + 136);
  v2 = *(v0 + 120);
  v3 = *(v0 + 96);
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  v7 = *(v0 + 40);
  v6 = *(v0 + 48);
  swift_getAssociatedConformanceWitness();
  sub_1DF63329C();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    v8 = *(v0 + 112);
    v10 = *(v0 + 88);
    v9 = *(v0 + 96);
    v11 = *(v0 + 80);
    (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));
    v12 = *(v0 + 16);

    v13 = *(v0 + 8);

    return v13(v12);
  }

  else
  {
    v15 = *(v0 + 24);
    (*(*(v0 + 72) + 32))(*(v0 + 88), *(v0 + 96), *(v0 + 64));
    v20 = (v15 + *v15);
    v16 = v15[1];
    v17 = swift_task_alloc();
    *(v0 + 144) = v17;
    *v17 = v0;
    v17[1] = sub_1DF5CBEC0;
    v18 = *(v0 + 88);
    v19 = *(v0 + 32);

    return v20(v18);
  }
}

uint64_t sub_1DF5CC264()
{
  v2 = v0[16];
  v1 = v0[17];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[12];
  v6 = v0[10];
  (*(v0[9] + 8))(v0[11], v0[8]);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];
  v8 = v0[19];

  return v7();
}

uint64_t Sequence.asyncFirstIndex(where:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[7] = AssociatedTypeWitness;
  v8 = *(AssociatedTypeWitness - 8);
  v5[8] = v8;
  v9 = *(v8 + 64) + 15;
  v5[9] = swift_task_alloc();
  v10 = *(*(sub_1DF63327C() - 8) + 64) + 15;
  v5[10] = swift_task_alloc();
  v11 = *(a3 - 8);
  v5[11] = v11;
  v12 = *(v11 + 64) + 15;
  v5[12] = swift_task_alloc();
  v13 = swift_getAssociatedTypeWitness();
  v5[13] = v13;
  v14 = *(v13 - 8);
  v5[14] = v14;
  v15 = *(v14 + 64) + 15;
  v5[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF5CC52C, 0, 0);
}

uint64_t sub_1DF5CC52C()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 40);
  (*(*(v0 + 88) + 16))(*(v0 + 96), *(v0 + 48), *(v0 + 32));
  sub_1DF632C1C();
  *(v0 + 128) = 0;
  v3 = *(v0 + 120);
  v4 = *(v0 + 104);
  v5 = *(v0 + 80);
  v6 = *(v0 + 56);
  v7 = *(v0 + 64);
  v9 = *(v0 + 32);
  v8 = *(v0 + 40);
  swift_getAssociatedConformanceWitness();
  sub_1DF63329C();
  v10 = (*(v7 + 48))(v5, 1, v6);
  *(v0 + 152) = v10;
  if (v10 == 1)
  {
    v11 = *(v0 + 96);
    v13 = *(v0 + 72);
    v12 = *(v0 + 80);
    (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));

    v14 = *(v0 + 8);

    return v14(0, 1);
  }

  else
  {
    v16 = *(v0 + 16);
    (*(*(v0 + 64) + 32))(*(v0 + 72), *(v0 + 80), *(v0 + 56));
    v21 = (v16 + *v16);
    v17 = v16[1];
    v18 = swift_task_alloc();
    *(v0 + 136) = v18;
    *v18 = v0;
    v18[1] = sub_1DF5CC770;
    v19 = *(v0 + 72);
    v20 = *(v0 + 24);

    return v21(v19);
  }
}

uint64_t sub_1DF5CC770(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 136);
  v6 = *v2;
  *(*v2 + 144) = v1;

  if (v1)
  {
    v7 = sub_1DF5CCAF4;
  }

  else
  {
    *(v4 + 156) = a1 & 1;
    v7 = sub_1DF5CC89C;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1DF5CC89C()
{
  v1 = *(v0 + 156);
  result = (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
  v3 = *(v0 + 128);
  if (v1)
  {
    v4 = *(v0 + 152) == 1;
LABEL_6:
    v13 = *(v0 + 96);
    v15 = *(v0 + 72);
    v14 = *(v0 + 80);
    (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));

    v16 = *(v0 + 8);

    return v16(v3, v4);
  }

  if (__OFADD__(v3, 1))
  {
    __break(1u);
    return result;
  }

  *(v0 + 128) = v3 + 1;
  v5 = *(v0 + 120);
  v6 = *(v0 + 104);
  v7 = *(v0 + 80);
  v8 = *(v0 + 56);
  v9 = *(v0 + 64);
  v11 = *(v0 + 32);
  v10 = *(v0 + 40);
  swift_getAssociatedConformanceWitness();
  sub_1DF63329C();
  v4 = 1;
  v12 = (*(v9 + 48))(v7, 1, v8);
  *(v0 + 152) = v12;
  if (v12 == 1)
  {
    v3 = 0;
    goto LABEL_6;
  }

  v17 = *(v0 + 16);
  (*(*(v0 + 64) + 32))(*(v0 + 72), *(v0 + 80), *(v0 + 56));
  v22 = (v17 + *v17);
  v18 = v17[1];
  v19 = swift_task_alloc();
  *(v0 + 136) = v19;
  *v19 = v0;
  v19[1] = sub_1DF5CC770;
  v20 = *(v0 + 72);
  v21 = *(v0 + 24);

  return v22(v20);
}

uint64_t sub_1DF5CCAF4()
{
  v2 = v0[14];
  v1 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[10];
  (*(v0[8] + 8))(v0[9], v0[7]);
  (*(v2 + 8))(v1, v3);

  v6 = v0[1];
  v7 = v0[18];

  return v6();
}

uint64_t BinaryEncoder.encode<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for BinaryDataEncoderStorage();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1DF6385D0;
  v7 = v6 + 16;
  v10[3] = &type metadata for _BinaryEncoder;
  v10[4] = &off_1F5A94368;
  v10[0] = v6;
  v8 = *(a3 + 8);

  v8(v10, a2, a3);
  if (v3)
  {

    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v10);
    swift_beginAccess();
    v7 = *(v6 + 16);
    sub_1DF5A3A94(v7, *(v6 + 24));
  }

  return v7;
}

uint64_t sub_1DF5CCD04()
{
  sub_1DF5B33C0(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_1DF5CCD4C@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  a1[3] = &type metadata for BinaryEncodingContainer;
  a1[4] = &off_1F5A943A0;
  *a1 = v2;
}

uint64_t sub_1DF5CCD7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = FixedWidthInteger.bytes.getter(a3, a4);
  swift_beginAccess();
  if (*(v4 + 16))
  {
    sub_1DF63236C();
  }

  swift_endAccess();
}

uint64_t sub_1DF5CCE04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8[0] = a2;
  v8[3] = &type metadata for _BinaryEncoder;
  v8[4] = &off_1F5A94368;
  v6 = *(a4 + 8);

  v6(v8, a3, a4);
  return __swift_destroy_boxed_opaque_existential_1(v8);
}

uint64_t sub_1DF5CCE94()
{
  v0 = sub_1DF63299C();
  if (v1 >> 60 == 15)
  {
    sub_1DF5CD0A8();
    swift_allocError();
    return swift_willThrow();
  }

  else
  {
    v3 = v0;
    v4 = v1;
    swift_beginAccess();
    v8[3] = MEMORY[0x1E6969080];
    v8[4] = MEMORY[0x1E6969078];
    v8[0] = v3;
    v8[1] = v4;
    v5 = __swift_project_boxed_opaque_existential_1(v8, MEMORY[0x1E6969080]);
    v6 = *v5;
    v7 = v5[1];
    sub_1DF5A3A94(v3, v4);
    sub_1DF5CD0FC(v6, v7);
    __swift_destroy_boxed_opaque_existential_1(v8);
    swift_endAccess();
    return sub_1DF5C3890(v3, v4);
  }
}

uint64_t sub_1DF5CCFA4()
{
  swift_beginAccess();
  sub_1DF6323FC();
  return swift_endAccess();
}

unint64_t sub_1DF5CD0A8()
{
  result = qword_1ECE42A78;
  if (!qword_1ECE42A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE42A78);
  }

  return result;
}

uint64_t sub_1DF5CD0FC(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_8:
      result = sub_1DF63236C();
      goto LABEL_9;
    }

    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_8;
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = sub_1DF5CD234(v3, v4);
LABEL_9:
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1DF5CD234(uint64_t a1, uint64_t a2)
{
  result = sub_1DF63211C();
  if (!result || (result = sub_1DF63214C(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_1DF63213C();
      return sub_1DF63236C();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t SynchronousCache.__allocating_init()()
{
  v0 = swift_allocObject();
  SynchronousCache.init()();
  return v0;
}

uint64_t *SynchronousCache.init()()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42A80, qword_1DF638E00);
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  v0[2] = v2;
  v3 = *(v1 + 80);
  v4 = *(v1 + 88);
  v0[3] = sub_1DF6327DC();
  return v0;
}

uint64_t sub_1DF5CD388@<X0>(void *a1@<X0>, void (*a2)(void, void, void)@<X1>, void (*a3)(char *, char *, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v82 = a5;
  v80 = a3;
  v8 = *a1;
  v9 = *(*a1 + 80);
  v84 = *(v9 - 8);
  v10 = *(v84 + 64);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v81 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v78 = &v66 - v13;
  v76 = sub_1DF63327C();
  v74 = *(v76 - 8);
  v14 = v74[8];
  v15 = MEMORY[0x1EEE9AC00](v76);
  v17 = &v66 - v16;
  v18 = *(a4 - 8);
  v19 = v18[8];
  v20 = MEMORY[0x1EEE9AC00](v15);
  v77 = &v66 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v79 = &v66 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v75 = &v66 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v66 - v26;
  swift_beginAccess();
  v28 = a1[3];
  v29 = *(v8 + 88);
  sub_1DF63289C();
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE436C0, &qword_1DF6393D0);
  v30 = swift_dynamicCast();
  v31 = v18[7];
  if (v30)
  {
    v72 = a2;
    v76 = v9;
    v32 = v84;
    v31(v17, 0, 1, a4);
    v73 = v18[4];
    v74 = v18 + 4;
    v73(v27, v17, a4);
    v33 = v27;
    if (qword_1ED8E5958 != -1)
    {
      swift_once();
    }

    v34 = sub_1DF6326AC();
    __swift_project_value_buffer(v34, qword_1ED8E69A0);
    v35 = v18[2];
    v36 = v75;
    v35(v75, v33, a4);
    v37 = v72;
    v72 = *(v32 + 16);
    v72(v81, v37, v76);
    v38 = v80;
    v80 = v35;
    v35(v79, v38, a4);
    v39 = sub_1DF63268C();
    v40 = sub_1DF63314C();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v71 = v33;
      v42 = v41;
      v70 = swift_slowAlloc();
      v83[0] = v70;
      *v42 = 141559043;
      *(v42 + 4) = 1752392040;
      *(v42 + 12) = 2081;
      v80(v77, v36, a4);
      v43 = sub_1DF632A3C();
      v68 = v40;
      v44 = v43;
      v69 = v39;
      v45 = v76;
      v47 = v46;
      v67 = v18[1];
      v67(v36, a4);
      v48 = sub_1DF59EEC8(v44, v47, v83);

      *(v42 + 14) = v48;
      *(v42 + 22) = 2082;
      v49 = v81;
      v72(v78, v81, v45);
      v50 = sub_1DF632A3C();
      v52 = v51;
      (*(v84 + 8))(v49, v45);
      v53 = sub_1DF59EEC8(v50, v52, v83);

      *(v42 + 24) = v53;
      *(v42 + 32) = 2160;
      *(v42 + 34) = 1752392040;
      *(v42 + 42) = 2081;
      v54 = v79;
      v80(v77, v79, a4);
      v55 = sub_1DF632A3C();
      v57 = v56;
      v67(v54, a4);
      v58 = sub_1DF59EEC8(v55, v57, v83);
      v33 = v71;

      *(v42 + 44) = v58;
      v59 = v69;
      _os_log_impl(&dword_1DF59A000, v69, v68, "Some other thread already stored value %{private,mask.hash}s for '%{public}s' -- ignoring computed value: %{private,mask.hash}s", v42, 0x34u);
      v60 = v70;
      swift_arrayDestroy();
      MEMORY[0x1E12D9D80](v60, -1, -1);
      MEMORY[0x1E12D9D80](v42, -1, -1);
    }

    else
    {

      v65 = v18[1];
      v65(v79, a4);
      (*(v32 + 8))(v81, v76);
      v65(v36, a4);
    }

    return (v73)(v82, v33, a4);
  }

  else
  {
    v31(v17, 1, 1, a4);
    (v74[1])(v17, v76);
    (*(v84 + 16))(v78, a2, v9);
    v83[3] = a4;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v83);
    v62 = v18[2];
    v63 = v80;
    v62(boxed_opaque_existential_1, v80, a4);
    swift_beginAccess();
    sub_1DF63288C();
    sub_1DF6328AC();
    swift_endAccess();
    return (v62)(v82, v63, a4);
  }
}

void SynchronousCache.clear(key:)()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 4);
  sub_1DF5CDEAC();
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_1DF5CDBBC(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*(*(*a1 + 80) - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  (*(v4 + 16))(&v7[-v3]);
  memset(&v7[32], 0, 32);
  swift_beginAccess();
  v5 = *(v1 + 88);
  sub_1DF63288C();
  sub_1DF6328AC();
  return swift_endAccess();
}

Swift::Void __swiftcall SynchronousCache.clear()()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 4);
  sub_1DF5CDF1C();
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_1DF5CDD74(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  v2 = *(v1 + 80);
  v3 = *(v1 + 88);
  sub_1DF63288C();
  sub_1DF63287C();
  return swift_endAccess();
}

uint64_t SynchronousCache.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t SynchronousCache.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1DF5CDEAC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t URL.isDirectory.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42A88, &qword_1DF638E50);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v11 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42A90, &qword_1DF638E58);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DF638990;
  v5 = *MEMORY[0x1E695DB78];
  *(inited + 32) = *MEMORY[0x1E695DB78];
  v6 = v5;
  sub_1DF5EC5D4(inited);
  swift_setDeallocating();
  sub_1DF5CE614(inited + 32);
  sub_1DF6322AC();

  v7 = sub_1DF63226C();
  v8 = *(v7 - 8);
  (*(v8 + 56))(v3, 0, 1, v7);
  v9 = sub_1DF63223C();
  (*(v8 + 8))(v3, v7);
  return v9 & 1;
}

uint64_t sub_1DF5CE178(const char *a1, uint64_t a2, unint64_t a3)
{
  value[2] = *MEMORY[0x1E69E9840];
  v5 = a3 >> 62;
  if ((a3 >> 62) <= 1)
  {
    if (!v5)
    {
      value[0] = a2;
      LOWORD(value[1]) = a3;
      BYTE2(value[1]) = BYTE2(a3);
      BYTE3(value[1]) = BYTE3(a3);
      BYTE4(value[1]) = BYTE4(a3);
      v6 = BYTE6(a3);
      BYTE5(value[1]) = BYTE5(a3);
      v7 = (sub_1DF632A7C() + 32);
      v8 = value;
      v9 = a1;
LABEL_18:
      v16 = v6;
      goto LABEL_20;
    }

    goto LABEL_11;
  }

  if (v5 == 2)
  {
    v10 = *(a2 + 16);
    v11 = sub_1DF63211C();
    if (v11)
    {
      v12 = sub_1DF63214C();
      if (__OFSUB__(v10, v12))
      {
        goto LABEL_25;
      }

      v11 += v10 - v12;
    }

    sub_1DF63213C();
    v14 = *(a2 + 16);
    v13 = *(a2 + 24);
    v6 = v13 - v14;
    if (!__OFSUB__(v13, v14))
    {
      goto LABEL_17;
    }

    __break(1u);
LABEL_11:
    if (a2 > a2 >> 32)
    {
      __break(1u);
    }

    else
    {
      v11 = sub_1DF63211C();
      if (v11)
      {
        v15 = sub_1DF63214C();
        if (__OFSUB__(a2, v15))
        {
          goto LABEL_26;
        }

        v11 += a2 - v15;
      }

      sub_1DF63213C();
      if (!__OFSUB__(HIDWORD(a2), a2))
      {
        v6 = HIDWORD(a2) - a2;
LABEL_17:
        v7 = (sub_1DF632A7C() + 32);
        v9 = a1;
        v8 = v11;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  memset(value, 0, 14);
  v7 = (sub_1DF632A7C() + 32);
  v8 = value;
  v9 = a1;
  v16 = 0;
LABEL_20:
  v17 = setxattr(v9, v7, v8, v16, 0, 0);

  if (v17 < 0)
  {
    sub_1DF5CE7A4();
    swift_allocError();
    *v19 = v17;
    result = swift_willThrow();
  }

  v20 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t URL.extendedAttribute(name:)()
{
  result = sub_1DF6322DC();
  if (!v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1DF5CE430@<X0>(const char *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1DF632A7C();
  v6 = getxattr(a1, (v5 + 32), 0, 0, 0, 0);

  if (v6 < 0)
  {
    sub_1DF5CE7A4();
    swift_allocError();
    *v9 = v6;
    return swift_willThrow();
  }

  else
  {
    v10 = sub_1DF5C2FC8(v6);
    v11 = v7;
    MEMORY[0x1EEE9AC00](v10);
    sub_1DF5C1DFC(sub_1DF5CE780);
    result = v10;
    if (v2)
    {
      return sub_1DF5B33C0(v10, v11);
    }

    else
    {
      *a2 = v10;
      a2[1] = v11;
    }
  }

  return result;
}

uint64_t sub_1DF5CE56C(void *a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, size_t a6)
{
  v9 = sub_1DF632A7C();
  v10 = getxattr(a3, (v9 + 32), a1, a6, 0, 0);

  if (v10 < 0)
  {
    sub_1DF5CE7A4();
    swift_allocError();
    *v12 = v10;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1DF5CE614(uint64_t a1)
{
  type metadata accessor for URLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DF5CE670(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42A88, &qword_1DF638E50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DF5CE6D8(const char *a1)
{
  v2 = v1[4];
  v3 = v1[5];
  v4 = v1[6];
  return sub_1DF5CE178(a1, v1[2], v1[3]);
}

uint64_t sub_1DF5CE6FC@<X0>(const char *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  return sub_1DF5CE430(a1, a2);
}

uint64_t _s22ExtendedAttributeErrorOwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s22ExtendedAttributeErrorOwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

unint64_t sub_1DF5CE7A4()
{
  result = qword_1ECE42A98;
  if (!qword_1ECE42A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE42A98);
  }

  return result;
}

uint64_t sub_1DF5CE7F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42C10, &qword_1DF63B260);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - v11;
  sub_1DF59CC98(a3, v27 - v11, &qword_1ECE42C10, &qword_1DF63B260);
  v13 = sub_1DF632E9C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1DF59CB50(v12, &qword_1ECE42C10, &qword_1DF63B260);
  }

  else
  {
    sub_1DF632E8C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1DF632E1C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1DF632A7C() + 32;
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

      sub_1DF59CB50(a3, &qword_1ECE42C10, &qword_1DF63B260);

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

  sub_1DF59CB50(a3, &qword_1ECE42C10, &qword_1DF63B260);
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

uint64_t sub_1DF5CEAF8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42B30, &qword_1DF639310);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1DF633C4C();
  qword_1ED8E6A80 = result;
  return result;
}

uint64_t WorkItemQueue.name.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name);
  v2 = *(v0 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name + 8);

  return v1;
}

uint64_t static WorkItemQueue.called(on:)(uint64_t a1)
{
  v2 = sub_1DF6325AC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v27 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AA0, &qword_1DF638F10);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AA8, &qword_1DF638F18);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v26 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v26 - v18;
  (*(v3 + 16))(&v26 - v18, a1 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_id, v2);
  (*(v3 + 56))(v19, 0, 1, v2);
  if (qword_1ED8E6078 != -1)
  {
    swift_once();
  }

  sub_1DF633C5C();
  v20 = *(v6 + 48);
  sub_1DF59CC98(v19, v9, &qword_1ECE42AA8, &qword_1DF638F18);
  sub_1DF59CC98(v17, &v9[v20], &qword_1ECE42AA8, &qword_1DF638F18);
  v21 = *(v3 + 48);
  if (v21(v9, 1, v2) != 1)
  {
    sub_1DF59CC98(v9, v14, &qword_1ECE42AA8, &qword_1DF638F18);
    if (v21(&v9[v20], 1, v2) != 1)
    {
      v23 = v27;
      (*(v3 + 32))(v27, &v9[v20], v2);
      sub_1DF59CD00(&qword_1ED8E4BF0, MEMORY[0x1E69695A8]);
      v22 = sub_1DF63292C();
      v24 = *(v3 + 8);
      v24(v23, v2);
      sub_1DF59CB50(v17, &qword_1ECE42AA8, &qword_1DF638F18);
      sub_1DF59CB50(v19, &qword_1ECE42AA8, &qword_1DF638F18);
      v24(v14, v2);
      sub_1DF59CB50(v9, &qword_1ECE42AA8, &qword_1DF638F18);
      return v22 & 1;
    }

    sub_1DF59CB50(v17, &qword_1ECE42AA8, &qword_1DF638F18);
    sub_1DF59CB50(v19, &qword_1ECE42AA8, &qword_1DF638F18);
    (*(v3 + 8))(v14, v2);
    goto LABEL_8;
  }

  sub_1DF59CB50(v17, &qword_1ECE42AA8, &qword_1DF638F18);
  sub_1DF59CB50(v19, &qword_1ECE42AA8, &qword_1DF638F18);
  if (v21(&v9[v20], 1, v2) != 1)
  {
LABEL_8:
    sub_1DF59CB50(v9, &qword_1ECE42AA0, &qword_1DF638F10);
    v22 = 0;
    return v22 & 1;
  }

  sub_1DF59CB50(v9, &qword_1ECE42AA8, &qword_1DF638F18);
  v22 = 1;
  return v22 & 1;
}

uint64_t WorkItemQueue.__allocating_init(name:identifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DF6325AC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a3, v6);
  v16 = 2;
  v11 = type metadata accessor for WorkItemQueue(0);
  v17 = 0u;
  v18 = 0u;
  v19 = 0;
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  v14 = swift_allocObject();
  WorkItemQueue.init(name:identifier:warningOptions:)(a1, a2, v10, &v16);
  (*(v7 + 8))(a3, v6);
  return v14;
}

uint64_t WorkItemQueue.__allocating_init(name:identifier:warningOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  WorkItemQueue.init(name:identifier:warningOptions:)(a1, a2, a3, a4);
  return v11;
}

char *WorkItemQueue.init(name:identifier:warningOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = v4;
  v93 = a3;
  v84 = a2;
  v88 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42C10, &qword_1DF63B260);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v91 = &v74 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AB0, &qword_1DF638F20);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v85 = &v74 - v12;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AB8, &qword_1DF638F28);
  v82 = *(v87 - 8);
  v13 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v87);
  v15 = &v74 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AC0, &qword_1DF638F30);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v81 = &v74 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AC8, &qword_1DF638F38);
  v92 = *(v20 - 8);
  v21 = v92;
  v22 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v74 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AD0, &qword_1DF638F40);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v28 = &v74 - v27;
  v78 = *a4;
  v75 = v78;
  v77 = *(a4 + 3);
  v76 = *(a4 + 1);
  v79 = a4[5];
  swift_defaultActor_initialize();
  v80 = *(v21 + 56);
  v80(&v5[OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_stream], 1, 1, v20);
  v29 = OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_continuation;
  v89 = v17;
  v90 = v16;
  (*(v17 + 56))(v28, 1, 1, v16);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AD8, &qword_1DF638F48);
  v31 = *(v30 + 52);
  v32 = (*(v30 + 48) + 3) & 0x1FFFFFFFCLL;
  v33 = swift_allocObject();
  *(v33 + ((*(*v33 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_1DF5CFBF8(v28, v33 + *(*v33 + *MEMORY[0x1E69E6B68] + 16));
  *&v5[v29] = v33;
  *&v5[OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_processTask] = 0;
  v5[OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_flushing] = 0;
  v5[OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_terminating] = 0;
  *&v5[OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_currentWorkItem] = 0;
  v34 = OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_queueDepth;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AE0, &qword_1DF638F50);
  v35 = swift_allocObject();
  *(v35 + 32) = 0;
  *(v35 + 16) = 0;
  *(v35 + 24) = 0;
  *&v5[v34] = v35;
  v36 = OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_id;
  v37 = sub_1DF6325AC();
  v86 = *(v37 - 8);
  v38 = *(v86 + 16);
  v83 = v37;
  v39 = v38(&v5[v36], v93);
  v40 = &v5[OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name];
  v41 = v84;
  *v40 = v88;
  v40[1] = v41;
  v39.i64[0] = 2;
  v42.i64[0] = v75;
  v43 = vdupq_lane_s64(vceqq_s64(v42, v39).i64[0], 0);
  v44 = vbslq_s8(v43, xmmword_1DF638ED0, v76);
  v45 = vbslq_s8(v43, xmmword_1DF638EE0, v77);
  v46 = v75 == 2;
  v47 = v81;
  v48 = &v5[OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_warningOptions];
  *v48 = (v75 != 2) & v78;
  *(v48 + 24) = v45;
  v49 = v79;
  if (v46)
  {
    v49 = 0x6F05B59D3B1FFFFLL;
  }

  *(v48 + 8) = v44;
  *(v48 + 5) = v49;
  type metadata accessor for WorkItemQueue.WorkItem();
  v50 = v82;
  v51 = v87;
  (*(v82 + 104))(v15, *MEMORY[0x1E69E8650], v87);

  sub_1DF632EAC();
  (*(v50 + 8))(v15, v51);
  v52 = *(v92 + 16);
  v53 = v85;
  v87 = v24;
  v52(v85, v24, v20);
  v88 = v20;
  v80(v53, 0, 1, v20);
  v54 = OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_stream;
  swift_beginAccess();
  sub_1DF59C800(v53, &v5[v54], &qword_1ECE42AB0, &qword_1DF638F20);
  swift_endAccess();
  v55 = *&v5[OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_continuation];
  v56 = v47;
  v94 = v47;
  v57 = *(*v55 + *MEMORY[0x1E69E6B68] + 16);
  v58 = (*(*v55 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v55 + v58));
  sub_1DF5CFD4C(v55 + v57);
  os_unfair_lock_unlock((v55 + v58));

  if (qword_1ED8E5E40 != -1)
  {
    swift_once();
  }

  v59 = sub_1DF6326AC();
  __swift_project_value_buffer(v59, qword_1ED8E6A30);

  v60 = sub_1DF63268C();
  v61 = sub_1DF63315C();

  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    *v62 = 136446466;
    v97 = 91;
    v98 = 0xE100000000000000;
    v95 = *v5;
    v96[0] = v63;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AE8, &unk_1DF638F68);
    v64 = sub_1DF632A3C();
    MEMORY[0x1E12D82E0](v64);

    MEMORY[0x1E12D82E0](32, 0xE100000000000000);
    MEMORY[0x1E12D82E0](*&v5[OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name], *&v5[OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name + 8]);
    MEMORY[0x1E12D82E0](93, 0xE100000000000000);
    v65 = sub_1DF59EEC8(v97, v98, v96);

    *(v62 + 4) = v65;
    *(v62 + 12) = 2082;

    v66 = WorkItemQueue.description.getter();
    v68 = v67;

    v69 = sub_1DF59EEC8(v66, v68, v96);

    *(v62 + 14) = v69;
    _os_log_impl(&dword_1DF59A000, v60, v61, "%{public}s init %{public}s", v62, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12D9D80](v63, -1, -1);
    MEMORY[0x1E12D9D80](v62, -1, -1);
  }

  v70 = sub_1DF632E9C();
  v71 = v91;
  (*(*(v70 - 8) + 56))(v91, 1, 1, v70);
  v72 = swift_allocObject();
  v72[2] = 0;
  v72[3] = 0;
  v72[4] = v5;

  sub_1DF5D0208(0, 0, v71, &unk_1DF638F60, v72);

  (*(v86 + 8))(v93, v83);
  sub_1DF59CB50(v71, &qword_1ECE42C10, &qword_1DF63B260);
  (*(v92 + 8))(v87, v88);
  (*(v89 + 8))(v56, v90);
  return v5;
}

uint64_t sub_1DF5CFBF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AD0, &qword_1DF638F40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t WorkItemQueue.WarningOptions.init(verbose:queueDepthWarningLevel:queueTimeWarningLevel:runTimeWarningLevel:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  return result;
}

uint64_t sub_1DF5CFC7C(uint64_t a1, uint64_t a2)
{
  sub_1DF59CB50(a1, &qword_1ECE42AD0, &qword_1DF638F40);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AC0, &qword_1DF638F30);
  v5 = *(v4 - 8);
  (*(v5 + 16))(a1, a2, v4);
  return (*(v5 + 56))(a1, 0, 1, v4);
}

uint64_t sub_1DF5CFD68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42C10, &qword_1DF63B260) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AB0, &qword_1DF638F20) - 8) + 64) + 15;
  v4[7] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AC8, &qword_1DF638F38);
  v4[8] = v8;
  v9 = *(v8 - 8);
  v4[9] = v9;
  v4[10] = *(v9 + 64);
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF5CFEBC, a4, 0);
}

uint64_t sub_1DF5CFEBC()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];
  v4 = v0[5];
  v5 = OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_stream;
  swift_beginAccess();
  sub_1DF59CC98(v4 + v5, v3, &qword_1ECE42AB0, &qword_1DF638F20);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1DF59CB50(v0[7], &qword_1ECE42AB0, &qword_1DF638F20);
  }

  else
  {
    v7 = v0[11];
    v6 = v0[12];
    v8 = v0[9];
    v9 = v0[8];
    v10 = v0[5];
    v11 = v0[6];
    v12 = *(v8 + 32);
    v26 = v11;
    v12(v6, v0[7], v9);
    v13 = sub_1DF632E9C();
    (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
    v14 = v7;
    (*(v8 + 16))(v7, v6, v9);
    v15 = sub_1DF59CD00(&qword_1ED8E5E20, type metadata accessor for WorkItemQueue);
    v16 = (*(v8 + 80) + 40) & ~*(v8 + 80);
    v17 = swift_allocObject();
    *(v17 + 2) = v10;
    *(v17 + 3) = v15;
    *(v17 + 4) = v10;
    v12(&v17[v16], v14, v9);
    swift_retain_n();
    v18 = sub_1DF5CE7F8(0, 0, v26, &unk_1DF639330, v17);
    (*(v8 + 8))(v6, v9);
    v19 = *(v10 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_processTask);
    *(v10 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_processTask) = v18;
  }

  v21 = v0[11];
  v20 = v0[12];
  v23 = v0[6];
  v22 = v0[7];

  v24 = v0[1];

  return v24();
}

uint64_t sub_1DF5D0154(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DF59D2C4;

  return sub_1DF5CFD68(a1, v4, v5, v6);
}

uint64_t sub_1DF5D0208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42C10, &qword_1DF63B260);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - v11;
  sub_1DF59CC98(a3, v27 - v11, &qword_1ECE42C10, &qword_1DF63B260);
  v13 = sub_1DF632E9C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1DF59CB50(v12, &qword_1ECE42C10, &qword_1DF63B260);
  }

  else
  {
    sub_1DF632E8C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1DF632E1C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1DF632A7C() + 32;
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

BOOL static WorkItemQueue.inWorkItemQueueContext.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AA8, &qword_1DF638F18);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v7 - v2;
  if (qword_1ED8E6078 != -1)
  {
    swift_once();
  }

  sub_1DF633C5C();
  v4 = sub_1DF6325AC();
  v5 = (*(*(v4 - 8) + 48))(v3, 1, v4) != 1;
  sub_1DF59CB50(v3, &qword_1ECE42AA8, &qword_1DF638F18);
  return v5;
}

uint64_t WorkItemQueue.__allocating_init(identifier:enqueueArtificialDelay:)(uint64_t a1)
{
  v2 = sub_1DF6325AC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DF63255C();
  v9 = v8;
  (*(v3 + 16))(v6, a1, v2);
  v15 = 2;
  v10 = type metadata accessor for WorkItemQueue(0);
  v16 = 0u;
  v17 = 0u;
  v18 = 0;
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  v13 = swift_allocObject();
  WorkItemQueue.init(name:identifier:warningOptions:)(v7, v9, v6, &v15);
  (*(v3 + 8))(a1, v2);
  return v13;
}

uint64_t sub_1DF5D0720()
{
  v1[9] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AB0, &qword_1DF638F20) - 8) + 64) + 15;
  v1[10] = swift_task_alloc();
  v3 = sub_1DF6325AC();
  v1[11] = v3;
  v4 = *(v3 - 8);
  v1[12] = v4;
  v5 = *(v4 + 64) + 15;
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AD0, &qword_1DF638F40) - 8) + 64) + 15;
  v1[15] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AC0, &qword_1DF638F30);
  v1[16] = v7;
  v8 = *(v7 - 8);
  v1[17] = v8;
  v9 = *(v8 + 64) + 15;
  v1[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF5D08C4, v0, 0);
}

uint64_t sub_1DF5D08C4()
{
  v60 = v0;
  v1 = v0[9];
  v0[5] = *v1;
  v58 = 91;
  v59 = 0xE100000000000000;
  v0[19] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AE8, &unk_1DF638F68);
  v2 = sub_1DF632A3C();
  MEMORY[0x1E12D82E0](v2);

  MEMORY[0x1E12D82E0](32, 0xE100000000000000);
  v3 = v1 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name;
  v4 = *(v1 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name);
  v0[20] = v4;
  v5 = *(v3 + 1);
  v0[21] = v5;
  MEMORY[0x1E12D82E0](v4, v5);
  MEMORY[0x1E12D82E0](93, 0xE100000000000000);
  v6 = v59;
  v56 = v58;
  v0[22] = v58;
  v0[23] = v6;
  if (qword_1ED8E5E40 != -1)
  {
    swift_once();
  }

  v7 = sub_1DF6326AC();
  v0[24] = __swift_project_value_buffer(v7, qword_1ED8E6A30);

  v8 = sub_1DF63268C();
  v9 = sub_1DF63318C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v58 = v11;
    *v10 = 136446466;
    *(v10 + 4) = sub_1DF59EEC8(v56, v6, &v58);
    *(v10 + 12) = 2082;
    *(v10 + 14) = sub_1DF59EEC8(0x6164696C61766E69, 0xEC00000029286574, &v58);
    _os_log_impl(&dword_1DF59A000, v8, v9, "%{public}s %{public}s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12D9D80](v11, -1, -1);
    MEMORY[0x1E12D9D80](v10, -1, -1);
  }

  if (sub_1DF5D88A8())
  {
    v12 = v0[9];

    v13 = sub_1DF63268C();
    v14 = sub_1DF63317C();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = v0[9];
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 136446466;
      v57 = v17;
      v58 = 91;
      v59 = 0xE100000000000000;
      v0[8] = *v15;
      v18 = sub_1DF632A3C();
      MEMORY[0x1E12D82E0](v18);

      MEMORY[0x1E12D82E0](32, 0xE100000000000000);
      MEMORY[0x1E12D82E0](v4, v5);
      MEMORY[0x1E12D82E0](93, 0xE100000000000000);
      v19 = sub_1DF59EEC8(v58, v59, &v57);

      *(v16 + 4) = v19;
      *(v16 + 12) = 2080;
      *(v16 + 14) = sub_1DF59EEC8(0x6164696C61766E69, 0xEC00000029286574, &v57);
      _os_log_impl(&dword_1DF59A000, v13, v14, "%{public}s: %s Will deadlock when called from a WorkItemQueue context!", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12D9D80](v17, -1, -1);
      MEMORY[0x1E12D9D80](v16, -1, -1);
    }

    v20 = *(v0[9] + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_currentWorkItem);
    v0[30] = v20;
    if (v20)
    {

      v21 = swift_task_alloc();
      v0[31] = v21;
      *v21 = v0;
      v22 = sub_1DF5D18FC;
LABEL_19:
      v21[1] = v22;

      return sub_1DF60B24C();
    }

    goto LABEL_12;
  }

  v23 = v0[16];
  v24 = v0[17];
  v25 = v0[15];
  v26 = *(v0[9] + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_continuation);
  v27 = *(*v26 + *MEMORY[0x1E69E6B68] + 16);
  v28 = (*(*v26 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v26 + v28));
  sub_1DF59CC98(v26 + v27, v25, &qword_1ECE42AD0, &qword_1DF638F40);
  os_unfair_lock_unlock((v26 + v28));
  if ((*(v24 + 48))(v25, 1, v23) == 1)
  {
    v29 = v0[15];

    sub_1DF59CB50(v29, &qword_1ECE42AD0, &qword_1DF638F40);
LABEL_12:
    v30 = v0[18];
    v31 = v0[14];
    v32 = v0[15];
    v33 = v0[13];
    v34 = v0[10];

    v35 = v0[1];

    return v35();
  }

  (*(v0[17] + 32))(v0[18], v0[15], v0[16]);

  v37 = sub_1DF63268C();
  v38 = sub_1DF63315C();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v58 = v40;
    *v39 = 136446210;
    *(v39 + 4) = sub_1DF59EEC8(v56, v6, &v58);
    _os_log_impl(&dword_1DF59A000, v37, v38, "%{public}s Removing continuation", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v40);
    MEMORY[0x1E12D9D80](v40, -1, -1);
    MEMORY[0x1E12D9D80](v39, -1, -1);
  }

  v41 = v0[16];
  v42 = v0[17];
  v43 = v0[9];
  os_unfair_lock_lock((v26 + v28));
  sub_1DF59CB50(v26 + v27, &qword_1ECE42AD0, &qword_1DF638F40);
  (*(v42 + 56))(v26 + v27, 1, 1, v41);
  os_unfair_lock_unlock((v26 + v28));
  *(v43 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_flushing) = 1;
  v44 = *(v43 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_currentWorkItem);
  v0[25] = v44;
  if (v44)
  {

    v21 = swift_task_alloc();
    v0[26] = v21;
    *v21 = v0;
    v22 = sub_1DF5D1168;
    goto LABEL_19;
  }

  v45 = v0[18];
  v46 = v0[13];
  v47 = v0[14];
  v48 = v0[11];
  v49 = v0[12];
  v50 = v0[9];
  sub_1DF63259C();
  (*(v49 + 16))(v46, v47, v48);
  v51 = type metadata accessor for WorkItemQueue.WorkItem();
  v52 = *(v51 + 48);
  v53 = *(v51 + 52);
  swift_allocObject();
  v54 = sub_1DF60D5E8(3, v46, &unk_1DF63B798, 0, 0, 0);
  v0[27] = v54;
  (*(v49 + 8))(v47, v48);
  sub_1DF5A9F2C(v54, v45);
  v55 = swift_task_alloc();
  v0[28] = v55;
  *v55 = v0;
  v55[1] = sub_1DF5D13EC;

  return sub_1DF60B830();
}

uint64_t sub_1DF5D1168()
{
  v1 = *(*v0 + 208);
  v2 = *(*v0 + 200);
  v3 = *(*v0 + 72);
  v5 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DF5D1294, v3, 0);
}

uint64_t sub_1DF5D1294()
{
  v1 = v0[18];
  v2 = v0[13];
  v3 = v0[14];
  v4 = v0[11];
  v5 = v0[12];
  v6 = v0[9];
  sub_1DF63259C();
  (*(v5 + 16))(v2, v3, v4);
  v7 = type metadata accessor for WorkItemQueue.WorkItem();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  v10 = sub_1DF60D5E8(3, v2, &unk_1DF63B798, 0, 0, 0);
  v0[27] = v10;
  (*(v5 + 8))(v3, v4);
  sub_1DF5A9F2C(v10, v1);
  v11 = swift_task_alloc();
  v0[28] = v11;
  *v11 = v0;
  v11[1] = sub_1DF5D13EC;

  return sub_1DF60B830();
}

uint64_t sub_1DF5D13EC()
{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v9 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v4 = *(v2 + 184);
    v5 = *(v2 + 72);

    v6 = sub_1DF5D1AA8;
    v7 = v5;
  }

  else
  {
    v7 = *(v2 + 72);
    v6 = sub_1DF5D1514;
  }

  return MEMORY[0x1EEE6DFA0](v6, v7, 0);
}

uint64_t sub_1DF5D1514()
{
  v45 = v0;
  v1 = v0[24];
  v2 = v0[9];

  v3 = sub_1DF63268C();
  v4 = sub_1DF63318C();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[20];
    v5 = v0[21];
    v7 = v0[19];
    v8 = v0[9];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v43 = 91;
    v44 = 0xE100000000000000;
    v42 = v10;
    *v9 = 136446210;
    v0[7] = *v8;
    v11 = sub_1DF632A3C();
    MEMORY[0x1E12D82E0](v11);

    MEMORY[0x1E12D82E0](32, 0xE100000000000000);
    MEMORY[0x1E12D82E0](v6, v5);
    MEMORY[0x1E12D82E0](93, 0xE100000000000000);
    v12 = sub_1DF59EEC8(v43, v44, &v42);

    *(v9 + 4) = v12;
    _os_log_impl(&dword_1DF59A000, v3, v4, "%{public}s Invalidation completed", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1E12D9D80](v10, -1, -1);
    MEMORY[0x1E12D9D80](v9, -1, -1);
  }

  v13 = v0[23];
  v14 = v0[24];

  v15 = sub_1DF63268C();
  v16 = sub_1DF63315C();

  v17 = os_log_type_enabled(v15, v16);
  v18 = v0[27];
  v19 = v0[23];
  if (v17)
  {
    v20 = v0[22];
    v21 = v0[17];
    v41 = v0[18];
    v22 = v0[16];
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v43 = v24;
    *v23 = 136446210;
    v25 = sub_1DF59EEC8(v20, v19, &v43);

    *(v23 + 4) = v25;
    _os_log_impl(&dword_1DF59A000, v15, v16, "%{public}s Removing stream", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    MEMORY[0x1E12D9D80](v24, -1, -1);
    MEMORY[0x1E12D9D80](v23, -1, -1);

    (*(v21 + 8))(v41, v22);
  }

  else
  {
    v27 = v0[17];
    v26 = v0[18];
    v28 = v0[16];
    v29 = v0[23];

    (*(v27 + 8))(v26, v28);
  }

  v30 = v0[9];
  v31 = v0[10];
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AC8, &qword_1DF638F38);
  (*(*(v32 - 8) + 56))(v31, 1, 1, v32);
  v33 = OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_stream;
  swift_beginAccess();
  sub_1DF59C800(v31, v30 + v33, &qword_1ECE42AB0, &qword_1DF638F20);
  swift_endAccess();
  v34 = v0[18];
  v35 = v0[14];
  v36 = v0[15];
  v37 = v0[13];
  v38 = v0[10];

  v39 = v0[1];

  return v39();
}

uint64_t sub_1DF5D18FC()
{
  v1 = *v0;
  v2 = *(*v0 + 248);
  v3 = *(*v0 + 240);
  v11 = *v0;

  v4 = v1[18];
  v5 = v1[15];
  v6 = v1[14];
  v7 = v1[13];
  v8 = v1[10];

  v9 = *(v11 + 8);

  return v9();
}

uint64_t sub_1DF5D1AA8()
{
  v38 = v0;
  v1 = v0[29];
  v2 = v0[24];
  v3 = v0[9];

  v4 = v1;
  v5 = sub_1DF63268C();
  v6 = sub_1DF63317C();

  if (os_log_type_enabled(v5, v6))
  {
    v30 = v0[29];
    v31 = v0[27];
    v8 = v0[20];
    v7 = v0[21];
    v9 = v0[19];
    v32 = v0[17];
    v33 = v0[16];
    v34 = v0[18];
    v10 = v0[9];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v36 = 91;
    v37 = 0xE100000000000000;
    v35 = v13;
    *v11 = 136446722;
    v0[6] = *v10;
    v14 = sub_1DF632A3C();
    MEMORY[0x1E12D82E0](v14);

    MEMORY[0x1E12D82E0](32, 0xE100000000000000);
    MEMORY[0x1E12D82E0](v8, v7);
    MEMORY[0x1E12D82E0](93, 0xE100000000000000);
    v15 = sub_1DF59EEC8(v36, v37, &v35);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_1DF59EEC8(0x6164696C61766E69, 0xEC00000029286574, &v35);
    *(v11 + 22) = 2112;
    v16 = v30;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 24) = v17;
    *v12 = v17;
    _os_log_impl(&dword_1DF59A000, v5, v6, "%{public}s Error in %s: %@", v11, 0x20u);
    sub_1DF59CB50(v12, &qword_1ECE42AF0, &qword_1DF63ABC0);
    MEMORY[0x1E12D9D80](v12, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x1E12D9D80](v13, -1, -1);
    MEMORY[0x1E12D9D80](v11, -1, -1);

    (*(v32 + 8))(v34, v33);
  }

  else
  {
    v18 = v0[29];
    v19 = v0[27];
    v21 = v0[17];
    v20 = v0[18];
    v22 = v0[16];

    (*(v21 + 8))(v20, v22);
  }

  v23 = v0[18];
  v24 = v0[14];
  v25 = v0[15];
  v26 = v0[13];
  v27 = v0[10];

  v28 = v0[1];

  return v28();
}

void *WorkItemQueue.deinit()
{
  v1 = v0;
  if (qword_1ED8E5E40 != -1)
  {
    swift_once();
  }

  v2 = sub_1DF6326AC();
  __swift_project_value_buffer(v2, qword_1ED8E6A30);

  v3 = sub_1DF63268C();
  v4 = sub_1DF63315C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 136446466;
    v21 = v6;
    v20 = *v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AE8, &unk_1DF638F68);
    v7 = sub_1DF632A3C();
    MEMORY[0x1E12D82E0](v7);

    MEMORY[0x1E12D82E0](32, 0xE100000000000000);
    MEMORY[0x1E12D82E0](*(v0 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name), *(v0 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name + 8));
    MEMORY[0x1E12D82E0](93, 0xE100000000000000);
    v8 = sub_1DF59EEC8(91, 0xE100000000000000, &v21);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2082;
    v9 = WorkItemQueue.description.getter();
    v11 = sub_1DF59EEC8(v9, v10, &v21);

    *(v5 + 14) = v11;
    _os_log_impl(&dword_1DF59A000, v3, v4, "%{public}s deinit %{public}s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12D9D80](v6, -1, -1);
    MEMORY[0x1E12D9D80](v5, -1, -1);
  }

  v12 = OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_id;
  v13 = sub_1DF6325AC();
  (*(*(v13 - 8) + 8))(v1 + v12, v13);
  v14 = *(v1 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name + 8);

  sub_1DF59CB50(v1 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_stream, &qword_1ECE42AB0, &qword_1DF638F20);
  v15 = *(v1 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_continuation);

  v16 = *(v1 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_processTask);

  v17 = *(v1 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_currentWorkItem);

  v18 = *(v1 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_queueDepth);

  swift_defaultActor_destroy();
  return v1;
}

uint64_t WorkItemQueue.__deallocating_deinit()
{
  WorkItemQueue.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1DF5D2100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 64) = a4;
  *(v5 + 72) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1DF5D2120, 0, 0);
}

uint64_t sub_1DF5D2120()
{
  v1 = *(v0 + 72);
  sub_1DF632E5C();
  sub_1DF59CD00(&qword_1ED8E56F0, MEMORY[0x1E69E8550]);
  v2 = swift_allocError();
  *(v0 + 80) = v2;
  sub_1DF6327FC();
  v3 = *(v1 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name);
  v4 = *(v1 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name + 8);
  v5 = *(v1 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_warningOptions + 40);
  v6 = *(v1 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_warningOptions + 8);
  v7 = *(v1 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_warningOptions + 24);
  *(v0 + 16) = *(v1 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_warningOptions);
  *(v0 + 24) = v6;
  *(v0 + 40) = v7;
  *(v0 + 56) = v5;
  v8 = swift_task_alloc();
  *(v0 + 88) = v8;
  *v8 = v0;
  v8[1] = sub_1DF5D227C;
  v9 = *(v0 + 64);

  return sub_1DF6070F4(v2, 1, v3, v4, v0 + 16);
}

uint64_t sub_1DF5D227C()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1DF5D238C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DF6325AC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v17 - v10;
  sub_1DF63259C();
  (*(v5 + 16))(v9, v11, v4);
  v12 = type metadata accessor for WorkItemQueue.WorkItem();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();

  v15 = sub_1DF60D5E8(0, v9, a1, a2, 0, 0);

  (*(v5 + 8))(v11, v4);
  sub_1DF5A9620(v15);
  return v15;
}

uint64_t sub_1DF5D2504(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DF5D2528, v2, 0);
}

uint64_t sub_1DF5D2528()
{
  v1 = *(v0 + 32);
  v2 = sub_1DF59CD00(&qword_1ED8E5E20, type metadata accessor for WorkItemQueue);
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *(v3 + 16) = *(v0 + 16);
  *(v3 + 32) = v1;
  v4 = *(MEMORY[0x1E69E8920] + 4);
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v5[1] = sub_1DF5D265C;
  v6 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v5, v1, v2, 0xD000000000000019, 0x80000001DF634CE0, sub_1DF5D8BA0, v3, v6);
}

uint64_t sub_1DF5D265C()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v9 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = *(v2 + 32);
    v5 = sub_1DF5DA2B4;
  }

  else
  {
    v7 = *(v2 + 32);
    v6 = *(v2 + 40);

    v5 = sub_1DF5DA2B0;
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1DF5D2780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32[1] = a4;
  v34 = a1;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42B10, &qword_1DF639268);
  v6 = *(v33 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v32[0] = v32 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42C10, &qword_1DF63B260);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v32 - v11;
  v13 = sub_1DF6325AC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = v32 - v19;
  sub_1DF63259C();
  (*(v14 + 16))(v18, v20, v13);
  v21 = swift_allocObject();
  *(v21 + 16) = a2;
  *(v21 + 24) = a3;
  v22 = type metadata accessor for WorkItemQueue.WorkItem();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();

  v25 = sub_1DF60D5E8(0, v18, &unk_1DF6392C0, v21, 0, 0);

  (*(v14 + 8))(v20, v13);
  sub_1DF5A9620(v25);
  v26 = sub_1DF632E9C();
  (*(*(v26 - 8) + 56))(v12, 1, 1, v26);
  v27 = v32[0];
  v28 = v33;
  (*(v6 + 16))(v32[0], v34, v33);
  v29 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v30 = swift_allocObject();
  *(v30 + 2) = 0;
  *(v30 + 3) = 0;
  *(v30 + 4) = v25;
  (*(v6 + 32))(&v30[v29], v27, v28);

  sub_1DF5CE7F8(0, 0, v12, &unk_1DF6392D0, v30);
}

uint64_t sub_1DF5D2AF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a5;
  v6 = swift_task_alloc();
  *(v5 + 32) = v6;
  *v6 = v5;
  v6[1] = sub_1DF5D2B88;

  return sub_1DF60B830();
}

uint64_t sub_1DF5D2B88()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_1DF5DA2AC;
  }

  else
  {
    v3 = sub_1DF5DA2A8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DF5D2C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[9] = a4;
  v5[10] = v4;
  v5[7] = a2;
  v5[8] = a3;
  v5[6] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DF5D2CC4, v4, 0);
}

uint64_t sub_1DF5D2CC4()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AF8, &qword_1DF638FA0);
  v11 = *(v0 + 56);
  inited = swift_initStackObject();
  *(v0 + 88) = inited;
  *(inited + 24) = 0;
  *(inited + 16) = 0;
  v4 = swift_task_alloc();
  *(v0 + 96) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = inited;
  *(v4 + 32) = v11;
  *(v4 + 48) = v1;
  v5 = sub_1DF59CD00(&qword_1ED8E5E20, type metadata accessor for WorkItemQueue);
  v6 = *(MEMORY[0x1E69E88F0] + 4);
  v7 = swift_task_alloc();
  *(v0 + 104) = v7;
  *v7 = v0;
  v7[1] = sub_1DF5D2E38;
  v8 = *(v0 + 72);
  v9 = *(v0 + 48);

  return MEMORY[0x1EEE6DE18](v9, &unk_1DF638FB0, v4, sub_1DF5D8C74, inited, v1, v5, v8);
}

uint64_t sub_1DF5D2E38()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v9 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = *(v2 + 80);
    v5 = sub_1DF5D2FD0;
  }

  else
  {
    v6 = *(v2 + 96);
    v7 = *(v2 + 80);

    v5 = sub_1DF5D2F60;
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1DF5D2F60()
{
  v1 = *(v0 + 88);
  swift_setDeallocating();
  v2 = *(v1 + 16);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1DF5D2FD0()
{
  v1 = v0[11];
  v2 = v0[12];
  swift_setDeallocating();
  v3 = *(v1 + 16);

  v4 = v0[1];
  v5 = v0[14];

  return v4();
}

uint64_t sub_1DF5D3048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DF5D3070, a5, 0);
}

uint64_t sub_1DF5D3070()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = sub_1DF59CD00(&qword_1ED8E5E20, type metadata accessor for WorkItemQueue);
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  v6 = *(v0 + 24);
  *(v5 + 16) = v2;
  *(v5 + 24) = v6;
  *(v5 + 40) = v3;
  *(v5 + 48) = v1;
  v7 = *(MEMORY[0x1E69E8920] + 4);
  v8 = swift_task_alloc();
  *(v0 + 72) = v8;
  *v8 = v0;
  v8[1] = sub_1DF5D31B4;
  v9 = *(v0 + 56);
  v10 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v10, v1, v4, 0xD000000000000019, 0x80000001DF634CE0, sub_1DF5D9C74, v5, v9);
}

uint64_t sub_1DF5D31B4()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {
    v4 = v3[6];

    return MEMORY[0x1EEE6DFA0](sub_1DF5D32F0, v4, 0);
  }

  else
  {
    v5 = v3[8];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_1DF5D32F0()
{
  v1 = v0[8];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

void sub_1DF5D3354(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a2 + 24));
  sub_1DF5D9C84((a2 + 16));
  os_unfair_lock_unlock((a2 + 24));
}

uint64_t sub_1DF5D33B0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v38 = a1;
  v39 = a5;
  v35 = a3;
  v36 = a4;
  v37 = sub_1DF6325AC();
  v9 = *(v37 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v37);
  v34 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v34 - v13;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE42B18, &qword_1DF63B240);
  v15 = sub_1DF632E4C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v34 - v18;
  v20 = *a1;

  (*(v16 + 16))(v19, a2, v15);
  v21 = (*(v16 + 80) + 24) & ~*(v16 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = a6;
  (*(v16 + 32))(v22 + v21, v19, v15);
  v23 = (v22 + ((v17 + v21 + 7) & 0xFFFFFFFFFFFFFFF8));
  v24 = v36;
  *v23 = v35;
  v23[1] = v24;

  sub_1DF63259C();
  v25 = v34;
  v26 = v37;
  (*(v9 + 16))(v34, v14, v37);
  v27 = swift_allocObject();
  *(v27 + 16) = &unk_1DF6392B0;
  *(v27 + 24) = v22;
  v28 = type metadata accessor for WorkItemQueue.WorkItem();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  v31 = sub_1DF60D5E8(0, v25, &unk_1DF6392B8, v27, 0, 0);

  (*(v9 + 8))(v14, v26);
  *v38 = v31;

  sub_1DF5A9620(v32);
}

uint64_t sub_1DF5D36B8(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a1;
  v4[4] = a4;
  v6 = *(*(a4 - 8) + 64) + 15;
  v7 = swift_task_alloc();
  v4[5] = v7;
  v11 = (a2 + *a2);
  v8 = a2[1];
  v9 = swift_task_alloc();
  v4[6] = v9;
  *v9 = v4;
  v9[1] = sub_1DF5D37E0;

  return v11(v7);
}

uint64_t sub_1DF5D37E0()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_1DF5D39A0;
  }

  else
  {
    v3 = sub_1DF5D38F4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DF5D38F4()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE42B18, &qword_1DF63B240);
  sub_1DF632E4C();
  sub_1DF632E3C();
  v4 = v0[5];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1DF5D39A0()
{
  v2 = v0[3];
  v1 = v0[4];
  v0[2] = v0[7];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE42B18, &qword_1DF63B240);
  sub_1DF632E4C();
  sub_1DF632E2C();
  v3 = v0[5];

  v4 = v0[1];

  return v4();
}

void sub_1DF5D3A54(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42C10, &qword_1DF63B260);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v9 - v4;
  os_unfair_lock_lock((a1 + 24));
  v6 = *(a1 + 16);

  os_unfair_lock_unlock((a1 + 24));
  if (v6)
  {
    v7 = sub_1DF632E9C();
    (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
    v8 = swift_allocObject();
    v8[2] = 0;
    v8[3] = 0;
    v8[4] = v6;
    sub_1DF5CE7F8(0, 0, v5, &unk_1DF6392A0, v8);
  }
}

uint64_t sub_1DF5D3B74()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DF59D2C8;

  return sub_1DF60B24C();
}

uint64_t sub_1DF5D3C04(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DF5D3C28, v2, 0);
}

uint64_t sub_1DF5D3C28()
{
  v1 = *(v0 + 32);
  v2 = sub_1DF59CD00(&qword_1ED8E5E20, type metadata accessor for WorkItemQueue);
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *(v3 + 16) = *(v0 + 16);
  *(v3 + 32) = v1;
  v4 = *(MEMORY[0x1E69E8920] + 4);
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v5[1] = sub_1DF5D3D5C;
  v6 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v5, v1, v2, 0xD000000000000019, 0x80000001DF634CE0, sub_1DF5D8C7C, v3, v6);
}

uint64_t sub_1DF5D3D5C()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v9 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = *(v2 + 32);
    v5 = sub_1DF5D3E80;
  }

  else
  {
    v7 = *(v2 + 32);
    v6 = *(v2 + 40);

    v5 = sub_1DF5DA2B0;
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1DF5D3E80()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t sub_1DF5D3EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30[0] = a2;
  v30[1] = a4;
  v32 = a1;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42B10, &qword_1DF639268);
  v5 = *(v31 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v8 = v30 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42C10, &qword_1DF63B260);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v30 - v11;
  v13 = sub_1DF6325AC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = v30 - v19;
  sub_1DF63259C();
  (*(v14 + 16))(v18, v20, v13);
  v21 = type metadata accessor for WorkItemQueue.WorkItem();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();

  v24 = sub_1DF60D5E8(0, v18, v30[0], a3, 0, 0);

  (*(v14 + 8))(v20, v13);
  sub_1DF5A9620(v24);
  v25 = sub_1DF632E9C();
  (*(*(v25 - 8) + 56))(v12, 1, 1, v25);
  v26 = v31;
  (*(v5 + 16))(v8, v32, v31);
  v27 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v28 = swift_allocObject();
  *(v28 + 2) = 0;
  *(v28 + 3) = 0;
  *(v28 + 4) = v24;
  (*(v5 + 32))(&v28[v27], v8, v26);

  sub_1DF5CE7F8(0, 0, v12, &unk_1DF639290, v28);
}

uint64_t sub_1DF5D421C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DF5D4244, v4, 0);
}

uint64_t sub_1DF5D4244()
{
  v1 = *(v0 + 48);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = sub_1DF59CD00(&qword_1ED8E5E20, type metadata accessor for WorkItemQueue);
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *(v5 + 16) = *(v0 + 32);
  *(v5 + 32) = v1;
  *(v5 + 40) = v3;
  *(v5 + 48) = v2;
  v6 = *(MEMORY[0x1E69E8920] + 4);
  v7 = swift_task_alloc();
  *(v0 + 64) = v7;
  *v7 = v0;
  v7[1] = sub_1DF5D4388;
  v8 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v7, v1, v4, 0xD000000000000025, 0x80000001DF634D00, sub_1DF5D8C88, v5, v8);
}

uint64_t sub_1DF5D4388()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v9 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = *(v2 + 48);
    v5 = sub_1DF5D44C4;
  }

  else
  {
    v7 = *(v2 + 48);
    v6 = *(v2 + 56);

    v5 = sub_1DF5D44AC;
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1DF5D44C4()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_1DF5D4528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v39 = a5;
  v40 = a6;
  v36[1] = a4;
  v38 = a1;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42B10, &qword_1DF639268);
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v36[0] = v36 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42C10, &qword_1DF63B260);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v36 - v13;
  v15 = sub_1DF6325AC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = v36 - v21;
  sub_1DF63259C();
  (*(v16 + 16))(v20, v22, v15);
  v23 = swift_allocObject();
  *(v23 + 16) = a2;
  *(v23 + 24) = a3;
  v24 = type metadata accessor for WorkItemQueue.WorkItem();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();

  v27 = sub_1DF60D5E8(0, v20, &unk_1DF639270, v23, 0, 0);

  (*(v16 + 8))(v22, v15);
  sub_1DF5A9620(v27);
  v28 = sub_1DF632E9C();
  (*(*(v28 - 8) + 56))(v14, 1, 1, v28);
  v29 = v36[0];
  v30 = v37;
  (*(v8 + 16))(v36[0], v38, v37);
  v31 = (*(v8 + 80) + 56) & ~*(v8 + 80);
  v32 = swift_allocObject();
  *(v32 + 2) = 0;
  *(v32 + 3) = 0;
  v34 = v39;
  v33 = v40;
  *(v32 + 4) = v27;
  *(v32 + 5) = v34;
  *(v32 + 6) = v33;
  (*(v8 + 32))(&v32[v31], v29, v30);

  sub_1DF5CE7F8(0, 0, v14, &unk_1DF639280, v32);
}

uint64_t sub_1DF5D48A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 24) = a7;
  v10 = swift_task_alloc();
  *(v7 + 32) = v10;
  *v10 = v7;
  v10[1] = sub_1DF5D4958;

  return sub_1DF60C79C(a5, a6);
}

uint64_t sub_1DF5D4958()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_1DF5D4AE4;
  }

  else
  {
    v3 = sub_1DF5D4A6C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DF5D4A6C()
{
  v1 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42B10, &qword_1DF639268);
  sub_1DF632E3C();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1DF5D4AE4()
{
  v1 = v0[3];
  v0[2] = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42B10, &qword_1DF639268);
  sub_1DF632E2C();
  v2 = v0[1];

  return v2();
}

uint64_t sub_1DF5D4B6C()
{
  v1[6] = v0;
  v2 = sub_1DF6325AC();
  v1[7] = v2;
  v3 = *(v2 - 8);
  v1[8] = v3;
  v4 = *(v3 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF5D4C38, v0, 0);
}

uint64_t sub_1DF5D4C38()
{
  v41 = v0;
  if (qword_1ED8E5E40 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = sub_1DF6326AC();
  v0[11] = __swift_project_value_buffer(v2, qword_1ED8E6A30);

  v3 = sub_1DF63268C();
  v4 = sub_1DF63318C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[6];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 136446466;
    v38 = v7;
    v39 = 91;
    v40 = 0xE100000000000000;
    v0[5] = *v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AE8, &unk_1DF638F68);
    v8 = sub_1DF632A3C();
    MEMORY[0x1E12D82E0](v8);

    MEMORY[0x1E12D82E0](32, 0xE100000000000000);
    MEMORY[0x1E12D82E0](*(v5 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name), *(v5 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name + 8));
    MEMORY[0x1E12D82E0](93, 0xE100000000000000);
    v9 = sub_1DF59EEC8(v39, v40, &v38);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_1DF59EEC8(0x6575516873756C66, 0xEC00000029286575, &v38);
    _os_log_impl(&dword_1DF59A000, v3, v4, "%{public}s %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12D9D80](v7, -1, -1);
    MEMORY[0x1E12D9D80](v6, -1, -1);
  }

  v10 = sub_1DF5D88A8();
  v11 = v0[6];
  if (v10)
  {
    v12 = v0[6];

    v13 = sub_1DF63268C();
    v14 = sub_1DF63317C();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = v0[6];
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 136446466;
      v38 = v17;
      v39 = 91;
      v40 = 0xE100000000000000;
      v0[4] = *v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AE8, &unk_1DF638F68);
      v18 = sub_1DF632A3C();
      MEMORY[0x1E12D82E0](v18);

      MEMORY[0x1E12D82E0](32, 0xE100000000000000);
      MEMORY[0x1E12D82E0](*(v15 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name), *(v15 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name + 8));
      MEMORY[0x1E12D82E0](93, 0xE100000000000000);
      v19 = sub_1DF59EEC8(v39, v40, &v38);

      *(v16 + 4) = v19;
      *(v16 + 12) = 2080;
      *(v16 + 14) = sub_1DF59EEC8(0x6575516873756C66, 0xEC00000029286575, &v38);
      _os_log_impl(&dword_1DF59A000, v13, v14, "%{public}s: %s Will deadlock when called from a WorkItemQueue context!", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12D9D80](v17, -1, -1);
      MEMORY[0x1E12D9D80](v16, -1, -1);
    }

    v20 = *(v0[6] + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_currentWorkItem);
    v0[17] = v20;
    if (v20)
    {

      v21 = swift_task_alloc();
      v0[18] = v21;
      *v21 = v0;
      v22 = sub_1DF5D5878;
LABEL_12:
      v21[1] = v22;

      return sub_1DF60B24C();
    }

    v26 = v0[9];
    v25 = v0[10];

    v27 = v0[1];

    return v27();
  }

  else
  {
    *(v11 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_flushing) = 1;
    v23 = *(v11 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_currentWorkItem);
    v0[12] = v23;
    if (v23)
    {

      v21 = swift_task_alloc();
      v0[13] = v21;
      *v21 = v0;
      v22 = sub_1DF5D52B4;
      goto LABEL_12;
    }

    v29 = v0[9];
    v28 = v0[10];
    v30 = v0[7];
    v31 = v0[8];
    v32 = v0[6];
    sub_1DF63259C();
    (*(v31 + 16))(v29, v28, v30);
    v33 = type metadata accessor for WorkItemQueue.WorkItem();
    v34 = *(v33 + 48);
    v35 = *(v33 + 52);
    swift_allocObject();
    v36 = sub_1DF60D5E8(2, v29, &unk_1DF63B798, 0, 0, 0);
    v0[14] = v36;
    (*(v31 + 8))(v28, v30);
    sub_1DF5A9620(v36);
    v37 = swift_task_alloc();
    v0[15] = v37;
    *v37 = v0;
    v37[1] = sub_1DF5D5528;

    return sub_1DF60B830();
  }
}

uint64_t sub_1DF5D52B4()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 48);
  v5 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DF5D53E0, v3, 0);
}

uint64_t sub_1DF5D53E0()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[6];
  sub_1DF63259C();
  (*(v4 + 16))(v2, v1, v3);
  v6 = type metadata accessor for WorkItemQueue.WorkItem();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v9 = sub_1DF60D5E8(2, v2, &unk_1DF63B798, 0, 0, 0);
  v0[14] = v9;
  (*(v4 + 8))(v1, v3);
  sub_1DF5A9620(v9);
  v10 = swift_task_alloc();
  v0[15] = v10;
  *v10 = v0;
  v10[1] = sub_1DF5D5528;

  return sub_1DF60B830();
}

uint64_t sub_1DF5D5528()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *v1;
  *(*v1 + 128) = v0;

  v5 = *(v2 + 48);
  if (v0)
  {
    v6 = sub_1DF5D59C8;
  }

  else
  {
    v6 = sub_1DF5D5654;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1DF5D5654()
{
  v19 = v0;
  v1 = v0[11];
  v2 = v0[6];

  v3 = sub_1DF63268C();
  v4 = sub_1DF63318C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[14];
    v6 = v0[6];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 136446210;
    v16 = v8;
    v17 = 91;
    v18 = 0xE100000000000000;
    v0[3] = *v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AE8, &unk_1DF638F68);
    v9 = sub_1DF632A3C();
    MEMORY[0x1E12D82E0](v9);

    MEMORY[0x1E12D82E0](32, 0xE100000000000000);
    MEMORY[0x1E12D82E0](*(v6 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name), *(v6 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name + 8));
    MEMORY[0x1E12D82E0](93, 0xE100000000000000);
    v10 = sub_1DF59EEC8(v17, v18, &v16);

    *(v7 + 4) = v10;
    _os_log_impl(&dword_1DF59A000, v3, v4, "%{public}s Flush barrier completion", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1E12D9D80](v8, -1, -1);
    MEMORY[0x1E12D9D80](v7, -1, -1);
  }

  else
  {
    v11 = v0[14];
  }

  v13 = v0[9];
  v12 = v0[10];

  v14 = v0[1];

  return v14();
}

uint64_t sub_1DF5D5878()
{
  v1 = *v0;
  v2 = *(*v0 + 144);
  v3 = *(*v0 + 136);
  v8 = *v0;

  v4 = *(v1 + 80);
  v5 = *(v1 + 72);

  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_1DF5D59C8()
{
  v26 = v0;
  v1 = v0[16];
  v2 = v0[11];
  v3 = v0[6];

  v4 = v1;
  v5 = sub_1DF63268C();
  v6 = sub_1DF63317C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[16];
    v22 = v0[14];
    v8 = v0[6];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v9 = 136446722;
    v23 = v11;
    v24 = 91;
    v25 = 0xE100000000000000;
    v0[2] = *v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AE8, &unk_1DF638F68);
    v12 = sub_1DF632A3C();
    MEMORY[0x1E12D82E0](v12);

    MEMORY[0x1E12D82E0](32, 0xE100000000000000);
    MEMORY[0x1E12D82E0](*(v8 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name), *(v8 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name + 8));
    MEMORY[0x1E12D82E0](93, 0xE100000000000000);
    v13 = sub_1DF59EEC8(v24, v25, &v23);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_1DF59EEC8(0x6575516873756C66, 0xEC00000029286575, &v23);
    *(v9 + 22) = 2112;
    v14 = v7;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 24) = v15;
    *v10 = v15;
    _os_log_impl(&dword_1DF59A000, v5, v6, "%{public}s Error in %s: %@", v9, 0x20u);
    sub_1DF59CB50(v10, &qword_1ECE42AF0, &qword_1DF63ABC0);
    MEMORY[0x1E12D9D80](v10, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x1E12D9D80](v11, -1, -1);
    MEMORY[0x1E12D9D80](v9, -1, -1);
  }

  else
  {
    v16 = v0[16];
    v17 = v0[14];
  }

  v19 = v0[9];
  v18 = v0[10];

  v20 = v0[1];

  return v20();
}

uint64_t sub_1DF5D5CB8()
{
  v1[6] = v0;
  v2 = sub_1DF6325AC();
  v1[7] = v2;
  v3 = *(v2 - 8);
  v1[8] = v3;
  v4 = *(v3 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF5D5D84, v0, 0);
}

uint64_t sub_1DF5D5D84()
{
  v37 = v0;
  if (qword_1ED8E5E40 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = sub_1DF6326AC();
  v0[11] = __swift_project_value_buffer(v2, qword_1ED8E6A30);

  v3 = sub_1DF63268C();
  v4 = sub_1DF63318C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[6];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 136446466;
    v34 = v7;
    v35 = 91;
    v36 = 0xE100000000000000;
    v0[5] = *v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AE8, &unk_1DF638F68);
    v8 = sub_1DF632A3C();
    MEMORY[0x1E12D82E0](v8);

    MEMORY[0x1E12D82E0](32, 0xE100000000000000);
    MEMORY[0x1E12D82E0](*(v5 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name), *(v5 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name + 8));
    MEMORY[0x1E12D82E0](93, 0xE100000000000000);
    v9 = sub_1DF59EEC8(v35, v36, &v34);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_1DF59EEC8(0x706D457469617761, 0xEC00000029287974, &v34);
    _os_log_impl(&dword_1DF59A000, v3, v4, "%{public}s %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12D9D80](v7, -1, -1);
    MEMORY[0x1E12D9D80](v6, -1, -1);
  }

  if (sub_1DF5D88A8())
  {
    v10 = v0[6];

    v11 = sub_1DF63268C();
    v12 = sub_1DF63317C();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = v0[6];
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 136446466;
      v34 = v15;
      v35 = 91;
      v36 = 0xE100000000000000;
      v0[4] = *v13;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AE8, &unk_1DF638F68);
      v16 = sub_1DF632A3C();
      MEMORY[0x1E12D82E0](v16);

      MEMORY[0x1E12D82E0](32, 0xE100000000000000);
      MEMORY[0x1E12D82E0](*(v13 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name), *(v13 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name + 8));
      MEMORY[0x1E12D82E0](93, 0xE100000000000000);
      v17 = sub_1DF59EEC8(v35, v36, &v34);

      *(v14 + 4) = v17;
      *(v14 + 12) = 2080;
      *(v14 + 14) = sub_1DF59EEC8(0x706D457469617761, 0xEC00000029287974, &v34);
      _os_log_impl(&dword_1DF59A000, v11, v12, "%{public}s: %s Will deadlock when called from a WorkItemQueue context!", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12D9D80](v15, -1, -1);
      MEMORY[0x1E12D9D80](v14, -1, -1);
    }

    v18 = *(v0[6] + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_currentWorkItem);
    v0[15] = v18;
    if (v18)
    {

      v19 = swift_task_alloc();
      v0[16] = v19;
      *v19 = v0;
      v19[1] = sub_1DF5D66E0;

      return sub_1DF60B24C();
    }

    else
    {
      v32 = v0[9];
      v31 = v0[10];

      v33 = v0[1];

      return v33();
    }
  }

  else
  {
    v22 = v0[9];
    v21 = v0[10];
    v23 = v0[7];
    v24 = v0[8];
    v25 = v0[6];
    sub_1DF63259C();
    (*(v24 + 16))(v22, v21, v23);
    v26 = type metadata accessor for WorkItemQueue.WorkItem();
    v27 = *(v26 + 48);
    v28 = *(v26 + 52);
    swift_allocObject();
    v29 = sub_1DF60D5E8(1, v22, &unk_1DF63B798, 0, 0, 0);
    v0[12] = v29;
    (*(v24 + 8))(v21, v23);
    sub_1DF5A9620(v29);
    v30 = swift_task_alloc();
    v0[13] = v30;
    *v30 = v0;
    v30[1] = sub_1DF5D6390;

    return sub_1DF60B830();
  }
}

uint64_t sub_1DF5D6390()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *v1;
  *(*v1 + 112) = v0;

  v5 = *(v2 + 48);
  if (v0)
  {
    v6 = sub_1DF5D6830;
  }

  else
  {
    v6 = sub_1DF5D64BC;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1DF5D64BC()
{
  v19 = v0;
  v1 = v0[11];
  v2 = v0[6];

  v3 = sub_1DF63268C();
  v4 = sub_1DF63318C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[12];
    v6 = v0[6];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 136446210;
    v16 = v8;
    v17 = 91;
    v18 = 0xE100000000000000;
    v0[3] = *v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AE8, &unk_1DF638F68);
    v9 = sub_1DF632A3C();
    MEMORY[0x1E12D82E0](v9);

    MEMORY[0x1E12D82E0](32, 0xE100000000000000);
    MEMORY[0x1E12D82E0](*(v6 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name), *(v6 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name + 8));
    MEMORY[0x1E12D82E0](93, 0xE100000000000000);
    v10 = sub_1DF59EEC8(v17, v18, &v16);

    *(v7 + 4) = v10;
    _os_log_impl(&dword_1DF59A000, v3, v4, "%{public}s Flush barrier completion", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1E12D9D80](v8, -1, -1);
    MEMORY[0x1E12D9D80](v7, -1, -1);
  }

  else
  {
    v11 = v0[12];
  }

  v13 = v0[9];
  v12 = v0[10];

  v14 = v0[1];

  return v14();
}

uint64_t sub_1DF5D66E0()
{
  v1 = *v0;
  v2 = *(*v0 + 128);
  v3 = *(*v0 + 120);
  v8 = *v0;

  v4 = *(v1 + 80);
  v5 = *(v1 + 72);

  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_1DF5D6830()
{
  v26 = v0;
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[6];

  v4 = v1;
  v5 = sub_1DF63268C();
  v6 = sub_1DF63317C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[14];
    v22 = v0[12];
    v8 = v0[6];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v9 = 136446722;
    v23 = v11;
    v24 = 91;
    v25 = 0xE100000000000000;
    v0[2] = *v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AE8, &unk_1DF638F68);
    v12 = sub_1DF632A3C();
    MEMORY[0x1E12D82E0](v12);

    MEMORY[0x1E12D82E0](32, 0xE100000000000000);
    MEMORY[0x1E12D82E0](*(v8 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name), *(v8 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name + 8));
    MEMORY[0x1E12D82E0](93, 0xE100000000000000);
    v13 = sub_1DF59EEC8(v24, v25, &v23);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_1DF59EEC8(0x706D457469617761, 0xEC00000029287974, &v23);
    *(v9 + 22) = 2112;
    v14 = v7;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 24) = v15;
    *v10 = v15;
    _os_log_impl(&dword_1DF59A000, v5, v6, "%{public}s Error in %s: %@", v9, 0x20u);
    sub_1DF59CB50(v10, &qword_1ECE42AF0, &qword_1DF63ABC0);
    MEMORY[0x1E12D9D80](v10, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x1E12D9D80](v11, -1, -1);
    MEMORY[0x1E12D9D80](v9, -1, -1);
  }

  else
  {
    v16 = v0[14];
    v17 = v0[12];
  }

  v19 = v0[9];
  v18 = v0[10];

  v20 = v0[1];

  return v20();
}

uint64_t sub_1DF5D6B2C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_id;
  v5 = sub_1DF6325AC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t WorkItemQueue.WarningOptions.queueTimeWarningLevel.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t WorkItemQueue.WarningOptions.runTimeWarningLevel.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

uint64_t sub_1DF5D6BC8(uint64_t a1)
{
  v1[9] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42B10, &qword_1DF639268);
  v1[10] = v3;
  v4 = *(v3 - 8);
  v1[11] = v4;
  v5 = *(v4 + 64) + 15;
  v1[12] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42B28, &qword_1DF639308) - 8) + 64) + 15;
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF5D6CDC, a1, 0);
}

uint64_t sub_1DF5D6CDC()
{
  v1 = v0[14];
  v2 = v0[10];
  v3 = v0[11];
  v4 = v0[9];
  v5 = OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_cancelContinuation;
  swift_beginAccess();
  sub_1DF59CC98(v4 + v5, v1, &qword_1ECE42B28, &qword_1DF639308);
  if ((*(v3 + 48))(v1, 1, v2))
  {
    sub_1DF59CB50(v0[14], &qword_1ECE42B28, &qword_1DF639308);
  }

  else
  {
    v6 = v0[14];
    v8 = v0[11];
    v7 = v0[12];
    v9 = v0[10];
    (*(v8 + 16))(v7, v6, v9);
    sub_1DF59CB50(v6, &qword_1ECE42B28, &qword_1DF639308);
    sub_1DF632E5C();
    sub_1DF59CD00(&qword_1ED8E56F0, MEMORY[0x1E69E8550]);
    v10 = swift_allocError();
    sub_1DF6327FC();
    v0[8] = v10;
    sub_1DF632E2C();
    (*(v8 + 8))(v7, v9);
  }

  v11 = v0[13];
  v12 = v0[12];
  (*(v0[11] + 56))(v11, 1, 1, v0[10]);
  swift_beginAccess();
  sub_1DF59C800(v11, v4 + v5, &qword_1ECE42B28, &qword_1DF639308);
  swift_endAccess();

  v13 = v0[1];

  return v13();
}

void sub_1DF5D6F08()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = v2[5];
    v6 = v2[6];
    v7 = v2[3];
    sub_1DF59CB50(v5, &qword_1ECE42AA8, &qword_1DF638F18);

    MEMORY[0x1EEE6DFA0](sub_1DF5D7060, v7, 0);
  }
}

uint64_t sub_1DF5D7060()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1DF5D70C0()
{
  v1 = *(*v0 + 568);
  v2 = *(*v0 + 368);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DF5AE8C4, v2, 0);
}

uint64_t sub_1DF5D71D0()
{
  v1 = *(*v0 + 576);
  v2 = *(*v0 + 368);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DF5DA288, v2, 0);
}

uint64_t sub_1DF5D72E0()
{
  v1 = *(*v0 + 584);
  v2 = *(*v0 + 368);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DF5D73F0, v2, 0);
}

uint64_t sub_1DF5D73F0()
{
  v1 = v0[64];
  v3 = v0[54];
  v2 = v0[55];
  v4 = v0[53];
  v5 = v0[46];

  *(v5 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_terminating) = 1;
  (*(v3 + 8))(v2, v4);
  v6 = v0[55];
  v7 = v0[49];
  (*(v0[51] + 8))(v0[52], v0[50]);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1DF5D74C8()
{
  v1 = *(*v0 + 600);
  v2 = *(*v0 + 592);
  v3 = *(*v0 + 368);
  v5 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DF5DA288, v3, 0);
}

uint64_t sub_1DF5D75F4(uint64_t a1, uint64_t a2)
{
  sub_1DF59CB50(a1, &qword_1ECE42A20, &qword_1DF638C58);
  v4 = sub_1DF6335AC();
  v5 = *(v4 - 8);
  (*(v5 + 16))(a1, a2, v4);
  return (*(v5 + 56))(a1, 0, 1, v4);
}

uint64_t sub_1DF5D76B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_1DF5D7754;

  return sub_1DF5AF094(a3);
}

uint64_t sub_1DF5D7754()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1DF5D784C()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1DF5D795C()
{
  v1 = **(v0 + 80);
  *(v0 + 144) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42B18, &qword_1DF63B240);
  sub_1DF632FAC();
  v2 = swift_task_alloc();
  *(v0 + 152) = v2;
  *v2 = v0;
  v2[1] = sub_1DF5D7A2C;
  v3 = *(v0 + 88);

  return sub_1DF5B0868();
}

uint64_t sub_1DF5D7A2C()
{
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 96);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DF5D7B3C, v2, 0);
}

uint64_t sub_1DF5D7B3C()
{
  v38 = v0;
  if (qword_1ED8E5E40 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 136);
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);
  v4 = sub_1DF6326AC();
  __swift_project_value_buffer(v4, qword_1ED8E6A30);

  v5 = v1;
  v6 = sub_1DF63268C();
  v7 = sub_1DF63315C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 136);
    v9 = *(v0 + 96);
    v33 = *(v0 + 144);
    v34 = *(v0 + 88);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 136446722;
    v35 = v11;
    v36 = 91;
    v37 = 0xE100000000000000;
    *(v0 + 64) = *v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AE8, &unk_1DF638F68);
    v12 = sub_1DF632A3C();
    MEMORY[0x1E12D82E0](v12);

    MEMORY[0x1E12D82E0](32, 0xE100000000000000);
    MEMORY[0x1E12D82E0](*(v9 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name), *(v9 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name + 8));
    MEMORY[0x1E12D82E0](93, 0xE100000000000000);
    v13 = sub_1DF59EEC8(v36, v37, &v35);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2080;
    *(v0 + 72) = v8;
    v14 = v8;
    v15 = sub_1DF632A3C();
    v17 = sub_1DF59EEC8(v15, v16, &v35);

    *(v10 + 14) = v17;
    *(v10 + 22) = 2082;
    sub_1DF6325AC();
    sub_1DF59CD00(&unk_1ED8E4A10, MEMORY[0x1E69695A8]);
    v18 = sub_1DF6338DC();
    v20 = sub_1DF59EEC8(v18, v19, &v35);

    *(v10 + 24) = v20;
    _os_log_impl(&dword_1DF59A000, v6, v7, "%{public}s Completing workItem (.failure [%s]): %{public}s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12D9D80](v11, -1, -1);
    MEMORY[0x1E12D9D80](v10, -1, -1);
  }

  v21 = *(v0 + 136);
  v22 = *(v0 + 96);
  v23 = *(v22 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name);
  v24 = *(v22 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name + 8);
  v25 = v22 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_warningOptions;
  v26 = *(v25 + 40);
  v27 = *(v25 + 8);
  v28 = *(v25 + 24);
  *(v0 + 16) = *v25;
  *(v0 + 24) = v27;
  *(v0 + 40) = v28;
  *(v0 + 56) = v26;
  v29 = v21;
  v30 = swift_task_alloc();
  *(v0 + 160) = v30;
  *v30 = v0;
  v30[1] = sub_1DF5D7F10;
  v31 = *(v0 + 88);

  return sub_1DF6070F4(v21, 1, v23, v24, v0 + 16);
}

uint64_t sub_1DF5D7F10()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 136);
  v3 = *(*v0 + 96);
  v5 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DF5D803C, v3, 0);
}

uint64_t sub_1DF5D803C()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1DF5D80C4()
{
  v32 = v0;
  v1 = *(v0 + 112);
  *(v0 + 40) = v1;
  v2 = *(v0 + 96);
  v3 = *(v0 + 80);
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42B18, &qword_1DF63B240);
  if (swift_dynamicCast())
  {
    v6 = *(v0 + 88);
    v5 = *(v0 + 96);
    v7 = *(v0 + 80);

    sub_1DF59CD00(&qword_1ED8E56F0, MEMORY[0x1E69E8550]);
    swift_allocError();
    sub_1DF6327FC();
    swift_willThrow();
    (*(v6 + 8))(v5, v7);
    v8 = *(v0 + 40);
  }

  else
  {

    if (qword_1ED8E5E40 != -1)
    {
      swift_once();
    }

    v9 = *(v0 + 112);
    v10 = *(v0 + 72);
    v11 = sub_1DF6326AC();
    __swift_project_value_buffer(v11, qword_1ED8E6A30);

    v12 = v9;
    v13 = sub_1DF63268C();
    v14 = sub_1DF63316C();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = *(v0 + 112);
      v16 = *(v0 + 72);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v17 = 136446466;
      v29 = v19;
      v30 = 91;
      v31 = 0xE100000000000000;
      *(v0 + 48) = *v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AE8, &unk_1DF638F68);
      v20 = sub_1DF632A3C();
      MEMORY[0x1E12D82E0](v20);

      MEMORY[0x1E12D82E0](32, 0xE100000000000000);
      MEMORY[0x1E12D82E0](*(v16 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name), *(v16 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name + 8));
      MEMORY[0x1E12D82E0](93, 0xE100000000000000);
      v21 = sub_1DF59EEC8(v30, v31, &v29);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2112;
      v22 = v15;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 14) = v23;
      *v18 = v23;
      _os_log_impl(&dword_1DF59A000, v13, v14, "%{public}s Unexpected error: %@", v17, 0x16u);
      sub_1DF59CB50(v18, &qword_1ECE42AF0, &qword_1DF63ABC0);
      MEMORY[0x1E12D9D80](v18, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x1E12D9D80](v19, -1, -1);
      MEMORY[0x1E12D9D80](v17, -1, -1);
    }

    v24 = *(v0 + 112);
    v25 = *(v0 + 80);
    sub_1DF59CD00(&qword_1ED8E56F0, MEMORY[0x1E69E8550]);
    swift_allocError();
    sub_1DF6327FC();
    swift_willThrow();
    v8 = v24;
  }

  v26 = *(v0 + 96);

  v27 = *(v0 + 8);

  return v27();
}

uint64_t WorkItemQueue.description.getter()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AE8, &unk_1DF638F68);
  v2 = sub_1DF632A3C();
  MEMORY[0x1E12D82E0](v2);

  MEMORY[0x1E12D82E0](32, 0xE100000000000000);
  sub_1DF5B9E58();
  v3 = sub_1DF632BDC();
  MEMORY[0x1E12D82E0](v3);

  MEMORY[0x1E12D82E0](30768, 0xE200000000000000);

  MEMORY[0x1E12D82E0](8250, 0xE200000000000000);
  sub_1DF6325AC();
  sub_1DF59CD00(&unk_1ED8E4A10, MEMORY[0x1E69695A8]);
  v4 = sub_1DF6338DC();
  MEMORY[0x1E12D82E0](v4);

  MEMORY[0x1E12D82E0](62, 0xE100000000000000);
  return 60;
}

Swift::Void __swiftcall requireWorkItemQueueContext(functionName:)(Swift::String functionName)
{
  object = functionName._object;
  countAndFlagsBits = functionName._countAndFlagsBits;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AA8, &qword_1DF638F18);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v14 - v5;
  if (qword_1ED8E6078 != -1)
  {
    swift_once();
  }

  sub_1DF633C5C();
  v7 = sub_1DF6325AC();
  v8 = (*(*(v7 - 8) + 48))(v6, 1, v7);
  sub_1DF59CB50(v6, &qword_1ECE42AA8, &qword_1DF638F18);
  if (v8 == 1)
  {
    if (qword_1ED8E5CD8 != -1)
    {
      swift_once();
    }

    v9 = sub_1DF6326AC();
    __swift_project_value_buffer(v9, qword_1ED8E69F0);

    v10 = sub_1DF63268C();
    v11 = sub_1DF63317C();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v15 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_1DF59EEC8(countAndFlagsBits, object, &v15);
      _os_log_impl(&dword_1DF59A000, v10, v11, "%s is required to be called from a WorkItemQueue context!", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x1E12D9D80](v13, -1, -1);
      MEMORY[0x1E12D9D80](v12, -1, -1);
    }
  }
}

uint64_t sub_1DF5D88A8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AA8, &qword_1DF638F18);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v11 - v2;
  v4 = sub_1DF6325AC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED8E6078 != -1)
  {
    swift_once();
  }

  sub_1DF633C5C();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1DF59CB50(v3, &qword_1ECE42AA8, &qword_1DF638F18);
LABEL_10:
    v9 = 0;
    return v9 & 1;
  }

  (*(v5 + 32))(v8, v3, v4);
  if (qword_1ED8E6080 != -1)
  {
    swift_once();
  }

  sub_1DF633C5C();
  if (!v12)
  {
    (*(v5 + 8))(v8, v4);
    goto LABEL_10;
  }

  v9 = sub_1DF5AC248(v8, v12);

  (*(v5 + 8))(v8, v4);
  return v9 & 1;
}

uint64_t sub_1DF5D8AE0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DF59D2C4;

  return sub_1DF5D2100(a1, v4, v5, v7, v6);
}

uint64_t sub_1DF5D8BAC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1DF59D2C4;

  return sub_1DF5D3048(a1, v5, v6, v7, v8, v4);
}

uint64_t dispatch thunk of WorkItemQueue.invalidate()()
{
  v2 = *(*v0 + 312);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1DF59D2C4;

  return v6();
}

uint64_t dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 344);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1DF59D2C4;

  return v10(a1, a2);
}

{
  v6 = *(*v2 + 360);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1DF59D2C4;

  return v10(a1, a2);
}

uint64_t dispatch thunk of WorkItemQueue.enqueueAndAwaitResult<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 352);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_1DF59D2C4;

  return v14(a1, a2, a3, a4);
}

uint64_t dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(cancelAfter:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 368);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_1DF59D2C4;

  return v14(a1, a2, a3, a4);
}

uint64_t dispatch thunk of WorkItemQueue.flushQueue()()
{
  v2 = *(*v0 + 376);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1DF59D2C8;

  return v6();
}

uint64_t dispatch thunk of WorkItemQueue.awaitEmpty()()
{
  v2 = *(*v0 + 384);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1DF59D2C4;

  return v6();
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1DF5D95BC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[48])
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

uint64_t sub_1DF5D9610(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1DF5D96B8()
{
  sub_1DF5D9710();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_1DF5D9710()
{
  if (!qword_1ECE42348)
  {
    v0 = sub_1DF6325AC();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECE42348);
    }
  }
}

uint64_t _s8ItemTypeOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s8ItemTypeOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WorkItemQueue.QueueDepthState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[16])
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

uint64_t storeEnumTagSinglePayload for WorkItemQueue.QueueDepthState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1DF5D9950()
{
  result = qword_1ECE42B08;
  if (!qword_1ECE42B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE42B08);
  }

  return result;
}

uint64_t sub_1DF5D99A4(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42B10, &qword_1DF639268) - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1DF59D2C4;

  return sub_1DF5D48A8(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t sub_1DF5D9ABC(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42B10, &qword_1DF639268) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1DF59D2C4;

  return sub_1DF5D2AF4(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1DF5D9BC0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1DF59D2C4;

  return sub_1DF5D3B74();
}

void sub_1DF5D9C74(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  sub_1DF5D3354(a1, v1[3]);
}

uint64_t sub_1DF5D9CA8()
{
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE42B18, &qword_1DF63B240);
  v3 = *(sub_1DF632E4C() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = v0 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_1DF59D2C4;

  return sub_1DF5D36B8(v0 + v4, v6, v7, v2);
}

uint64_t sub_1DF5D9DE8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1DF59D2C8;

  return sub_1DF5B8670(a1, v5);
}

uint64_t sub_1DF5D9E90(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42B10, &qword_1DF639268) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1DF59D2C4;

  return sub_1DF5D2AF4(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1DF5D9F94()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1DF59D2C4;

  return sub_1DF5D6BC8(v0);
}

uint64_t sub_1DF5DA040@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 8);
  v4 = v3 + 1;
  if (__OFADD__(v3, 1))
  {
    __break(1u);
  }

  else
  {
    *(result + 8) = v4;
    if (*(v2 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_warningOptions + 8) >= v3)
    {
      v5 = *result;
    }

    else
    {
      v5 = 1;
      *result = 1;
    }

    *a2 = v5;
    *(a2 + 8) = v4;
  }

  return result;
}

uint64_t objectdestroy_77Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 40) & ~v5;
  v7 = *(v4 + 64);
  v8 = *(v2 + 16);
  swift_unknownObjectRelease();
  v9 = *(v2 + 32);

  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x1EEE6BDD0](v2, v6 + v7, v5 | 7);
}

uint64_t sub_1DF5DA150@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = *(result + 8);
  v4 = __OFSUB__(v3, 1);
  v5 = v3 - 1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    *(result + 8) = v5;
    if (v5 < *(v2 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_warningOptions + 8))
    {
      *result = 0;
    }

    *a2 = v5;
  }

  return result;
}

uint64_t sub_1DF5DA188(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1DF59D2C4;

  return sub_1DF5D76B8(a1, v5, v4);
}

uint64_t objectdestroy_6Tm(uint64_t a1)
{
  v3 = v1[2];
  swift_unknownObjectRelease();
  v4 = v1[4];

  v5 = v1[5];

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t sub_1DF5DA2EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t *, uint64_t))
{
  DynamicType = swift_getDynamicType();
  MetatypeMetadata = swift_getMetatypeMetadata();
  return a3(&DynamicType, MetatypeMetadata);
}

uint64_t _ss23CustomStringConvertibleP10FindMyBaseRlzCrlE18addressDescriptionSSvg_0()
{
  sub_1DF5B9E58();
  v0 = sub_1DF632BDC();
  MEMORY[0x1E12D82E0](v0);

  return 30768;
}

uint64_t FixedWidthInteger.bytes.getter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_getDynamicType();
  v26 = a1;
  v6 = sub_1DF63368C();
  v7 = v6;
  if (v6 >= 1)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v11 = __OFADD__(v9, 8);
      v9 += 8;
      if (v11)
      {
        v9 = 0x7FFFFFFFFFFFFFFFLL;
      }

      ++v8;
      if (v9 >= v6)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_34;
  }

  v10 = 0;
LABEL_9:
  v30 = MEMORY[0x1E69E7CC0];
  sub_1DF5DB198(0, v10 & ~(v10 >> 63), 0);
  if (v10 < 0)
  {
    goto LABEL_35;
  }

  v12 = v30;
  if (v10)
  {
    v13 = 0;
    while (v13 < v7)
    {
      if (__OFADD__(v13, 8))
      {
        v14 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v13 + 8;
      }

      v27 = v13;
      v28 = 0;
      sub_1DF5DA5E0(&v27, v3, v26, a2, &v29);
      v15 = v29;
      v30 = v12;
      v17 = *(v12 + 16);
      v16 = *(v12 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_1DF5DB198((v16 > 1), v17 + 1, 1);
        v12 = v30;
      }

      *(v12 + 16) = v17 + 1;
      *(v12 + v17 + 32) = v15;
      v13 = v14;
      if (!--v10)
      {
        goto LABEL_21;
      }
    }

LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);

    __break(1u);
    return result;
  }

  v14 = 0;
LABEL_21:
  if (v14 < v7)
  {
    v25 = a2;
    do
    {
      v18 = __OFADD__(v14, 8);
      v27 = v14;
      v19 = v3;
      sub_1DF5DA5E0(&v27, v3, v26, v25, &v29);
      v20 = v29;
      v30 = v12;
      v22 = *(v12 + 16);
      v21 = *(v12 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_1DF5DB198((v21 > 1), v22 + 1, 1);
        v12 = v30;
      }

      *(v12 + 16) = v22 + 1;
      *(v12 + v22 + 32) = v20;
      v23 = v14 + 8 >= v7 || v18;
      v14 += 8;
      v3 = v19;
    }

    while ((v23 & 1) == 0);
  }

  return v12;
}

uint64_t sub_1DF5DA5E0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v39 = a2;
  v38 = a5;
  v7 = *(a4 + 8);
  v8 = *(*(v7 + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(*(AssociatedTypeWitness - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v40 = *(a3 - 8);
  v12 = *(v40 + 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v35 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v35 - v19;
  v42 = *a1;
  sub_1DF5B9E58();
  sub_1DF63331C();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_1DF63399C();
  v39 = v8;
  sub_1DF63392C();
  sub_1DF6332FC();
  v21 = *(v40 + 1);
  v21(v15, a3);
  v21(v18, a3);
  if (sub_1DF63337C() & 1) == 0 || (sub_1DF63399C(), sub_1DF63392C(), v22 = *(*(v7 + 32) + 8), v23 = sub_1DF63290C(), result = (v21)(v18, a3), (v23))
  {
    if (sub_1DF63336C() <= 7)
    {
      goto LABEL_13;
    }

    v40 = v21;
    v41 = -1;
    v25 = sub_1DF63337C();
    v35 = v7;
    v36 = v20;
    v26 = sub_1DF63336C();
    if (v25)
    {
      if (v26 <= 8)
      {
LABEL_11:
        sub_1DF63399C();
        sub_1DF63392C();
        v20 = v36;
        v32 = *(*(v35 + 32) + 8);
        v33 = sub_1DF6328EC();
        v21 = v40;
        v40(v18, a3);
        if (v33)
        {
          goto LABEL_12;
        }

LABEL_13:
        v34 = sub_1DF63335C();
        result = (v21)(v20, a3);
        *v38 = v34;
        return result;
      }

      sub_1DF5DB28C();
      v27 = v35;
      sub_1DF6332EC();
      v28 = *(*(v27 + 32) + 8);
      v20 = v36;
      v29 = sub_1DF6328FC();
      v21 = v40;
      v40(v18, a3);
    }

    else
    {
      v21 = v40;
      v30 = v35;
      v20 = v36;
      if (v26 < 9)
      {
LABEL_12:
        sub_1DF63335C();
        goto LABEL_13;
      }

      sub_1DF5DB28C();
      sub_1DF6332EC();
      v31 = *(*(v30 + 32) + 8);
      v29 = sub_1DF6328FC();
      v21(v18, a3);
    }

    if ((v29 & 1) == 0)
    {
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t FixedWidthInteger.convert(to:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (!*a1)
  {
    return (*(*(a2 - 8) + 16))(a4, v4, a2);
  }

  if (*a1 == 1)
  {
    return MEMORY[0x1EEE6A7F0](a2, a3);
  }

  return MEMORY[0x1EEE6A848](a2, a3);
}

uint64_t FixedWidthInteger.init(data:ofEndianness:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v32 = a2;
  v33 = *MEMORY[0x1E69E9840];
  v10 = *(*(*(a5 + 8) + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(*(AssociatedTypeWitness - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = *(a4 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = *a3;
  if (*a3)
  {
    v31 = a6;
    if (v16 == 1)
    {
      v17 = v32;
      sub_1DF5A3A94(a1, v32);
      v18 = a1;
    }

    else
    {
      sub_1DF5A3A94(a1, v32);
      v18 = sub_1DF5BE950(a1, v32);
      v17 = v20;
    }

    swift_getAssociatedConformanceWitness();
    sub_1DF63399C();
    v21 = sub_1DF63392C();
    v22 = v17 >> 62;
    if ((v17 >> 62) > 1)
    {
      if (v22 != 2)
      {
        if (!v15)
        {
          goto LABEL_17;
        }

        goto LABEL_19;
      }

      v24 = *(v18 + 16);
      v23 = *(v18 + 24);
      v25 = __OFSUB__(v23, v24);
      v26 = v23 - v24;
      if (!v25)
      {
LABEL_16:
        if (v26 == v15)
        {
LABEL_17:
          MEMORY[0x1EEE9AC00](v21);
          *(&v30 - 2) = v18;
          *(&v30 - 1) = v17;
          sub_1DF5C0858(&v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), sub_1DF5DB218, (&v30 - 4), a4, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v27);
          sub_1DF5B33C0(v18, v17);
          sub_1DF5B33C0(a1, v32);
          a6 = v31;
          (*(v14 + 32))(v31, &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a4);
          v19 = 0;
          goto LABEL_20;
        }

LABEL_19:
        (*(v14 + 8))(&v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a4);
        sub_1DF5B33C0(v18, v17);
        sub_1DF5B33C0(a1, v32);
        v19 = 1;
        a6 = v31;
        goto LABEL_20;
      }

      __break(1u);
    }

    else if (!v22)
    {
      if (BYTE6(v17) != v15)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    }

    LODWORD(v26) = HIDWORD(v18) - v18;
    if (__OFSUB__(HIDWORD(v18), v18))
    {
      __break(1u);
    }

    v26 = v26;
    goto LABEL_16;
  }

  sub_1DF5B33C0(a1, v32);
  v19 = 1;
LABEL_20:
  result = (*(v14 + 56))(a6, v19, 1, a4);
  v29 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t FixedWidthInteger.init(bits:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v36 = *(a2 - 8);
  v6 = *(v36 + 64);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v29 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v35 = &v29 - v13;
  v15 = *(*(*(v14 + 8) + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  swift_getAssociatedConformanceWitness();
  sub_1DF63399C();
  v34 = a3;
  sub_1DF63392C();
  v30 = a1;
  v18 = *(a1 + 16);
  if (v18)
  {
    v33 = v30 + 32;
    v19 = sub_1DF5DB28C();
    v20 = 0;
    v21 = (v36 + 8);
    v31 = (v36 + 32);
    v32 = v19;
    do
    {
      v22 = *(v33 + v20);
      v36 = v20 + 1;
      v38 = v22;
      sub_1DF63348C();
      v37 = v20;
      sub_1DF5B9E58();
      sub_1DF63332C();
      v23 = *v21;
      (*v21)(v9, a2);
      v24 = v35;
      v25 = v9;
      v26 = v34;
      sub_1DF63330C();
      v23(v12, a2);
      v23(v26, a2);
      v27 = v26;
      v9 = v25;
      (*v31)(v27, v24, a2);
      v20 = v36;
    }

    while (v18 != v36);
  }
}

void *sub_1DF5DB158(void *a1, int64_t a2, char a3)
{
  result = sub_1DF5EF7BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1DF5DB178(char *a1, int64_t a2, char a3)
{
  result = sub_1DF5EF904(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1DF5DB198(char *a1, int64_t a2, char a3)
{
  result = sub_1DF5EFA10(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1DF5DB1B8(size_t a1, int64_t a2, char a3)
{
  result = sub_1DF5EFB04(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1DF5DB1D8(char *a1, int64_t a2, char a3)
{
  result = sub_1DF5EFCDC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1DF5DB1F8(size_t a1, int64_t a2, char a3)
{
  result = sub_1DF5EFDE8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1DF5DB218@<X0>(uint64_t *a1@<X8>)
{
  v4 = *(v1 + 16);
  sub_1DF5C37D4();
  result = sub_1DF6320BC();
  *a1 = result;
  return result;
}

unint64_t sub_1DF5DB28C()
{
  result = qword_1ECE42B50;
  if (!qword_1ECE42B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE42B50);
  }

  return result;
}

id PrefixedDefaults.init(prefix:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = [objc_opt_self() standardUserDefaults];
  *a3 = result;
  a3[1] = a1;
  a3[2] = a2;
  return result;
}

Swift::Void __swiftcall PrefixedDefaults.removeValue(for:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = *v1;
  v6 = *(v1 + 8);
  v7 = *(v1 + 16);

  MEMORY[0x1E12D82E0](14906, 0xE200000000000000);
  MEMORY[0x1E12D82E0](countAndFlagsBits, object);
  v5 = sub_1DF63295C();

  [v4 removeObjectForKey_];
}

uint64_t PrefixedDefaults.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *v4;
  v10 = *(v4 + 16);
  *&v16[0] = *(v4 + 8);
  *(&v16[0] + 1) = v10;

  MEMORY[0x1E12D82E0](14906, 0xE200000000000000);
  MEMORY[0x1E12D82E0](a1, a2);
  v11 = sub_1DF63295C();

  v12 = [v9 objectForKey_];

  if (v12)
  {
    sub_1DF63339C();
    swift_unknownObjectRelease();
    sub_1DF5A27C4(&v15, v16);
  }

  else
  {
    memset(v16, 0, sizeof(v16));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE436C0, &qword_1DF6393D0);
  v13 = swift_dynamicCast();
  return (*(*(a3 - 8) + 56))(a4, v13 ^ 1u, 1, a3);
}

uint64_t PrefixedDefaults.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1DF5DC7BC(a1, a2, a3, a4);
  v5 = sub_1DF63327C();
  v6 = *(*(v5 - 8) + 8);

  return v6(a1, v5);
}

void (*PrefixedDefaults.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t **a1, char a2)
{
  v11 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(0x48uLL);
  }

  v13 = v12;
  *a1 = v12;
  v12[3] = a5;
  v12[4] = v5;
  v12[1] = a3;
  v12[2] = a4;
  *v12 = a2;
  v14 = sub_1DF63327C();
  v13[5] = v14;
  v15 = *(v14 - 8);
  v13[6] = v15;
  v16 = *(v15 + 64);
  if (v11)
  {
    v13[7] = swift_coroFrameAlloc();
    v17 = swift_coroFrameAlloc();
  }

  else
  {
    v13[7] = malloc(*(v15 + 64));
    v17 = malloc(v16);
  }

  v13[8] = v17;
  v19 = *v5;
  v20 = *(v5 + 2);
  PrefixedDefaults.subscript.getter(a2, a3, a4, v17);
  return sub_1DF5DB6EC;
}

void sub_1DF5DB6EC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[7];
  v4 = (*a1)[8];
  v5 = (*a1)[5];
  v6 = (*a1)[6];
  v8 = (*a1)[3];
  v7 = (*a1)[4];
  v10 = (*a1)[1];
  v9 = (*a1)[2];
  v11 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[7], v4, v5);

    sub_1DF5DC7BC(v3, v11, v10, v9);
    v12 = *(v6 + 8);
    v12(v3, v5);
    v12(v4, v5);
  }

  else
  {
    v13 = (*a1)[1];

    sub_1DF5DC7BC(v4, v11, v10, v9);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

unint64_t PrefixedDefaults.subscript.getter(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v14 = *(v2 + 8);
  v15 = *(v2 + 16);

  MEMORY[0x1E12D82E0](14906, 0xE200000000000000);
  MEMORY[0x1E12D82E0](a1, a2);
  v6 = sub_1DF63295C();

  v7 = [v5 stringForKey_];

  if (v7)
  {
    v8 = sub_1DF63298C();
    v10 = v9;

    v11 = sub_1DF5DC230(v8, v10);

    v12 = !v11;
  }

  else
  {
    v12 = 1;
  }

  return (v12 & 1) << 32;
}

void sub_1DF5DB918(unsigned int *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = *a1;
  v6 = *(a1 + 4);

  PrefixedDefaults.subscript.setter(v5 | (v6 << 32), v3, v4);
}

void PrefixedDefaults.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  if ((a1 & 0x100000000) != 0)
  {
    v7 = 0;
  }

  else
  {
    v7 = sub_1DF63306C();
  }

  v9 = *(v3 + 8);
  v10 = *(v3 + 16);

  MEMORY[0x1E12D82E0](14906, 0xE200000000000000);
  MEMORY[0x1E12D82E0](a2, a3);

  v8 = sub_1DF63295C();

  [v6 setObject:v7 forKey:v8];
  swift_unknownObjectRelease();
}

void (*PrefixedDefaults.subscript.modify(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  *(a1 + 8) = a3;
  *(a1 + 16) = v3;
  *a1 = a2;
  v7 = *v3;
  v8 = *(v3 + 2);
  v5 = PrefixedDefaults.subscript.getter(a2, a3);
  *(a1 + 24) = v5;
  *(a1 + 28) = BYTE4(v5) & 1;
  return sub_1DF5DBACC;
}

void sub_1DF5DBACC(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 8);
  v4 = *(a1 + 28);

  v5 = *(a1 + 16);
  PrefixedDefaults.subscript.setter(v2 | (v4 << 32), *a1, v3);
}

unint64_t PrefixedDefaults.description.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  result = sub_1DF632ADC();
  v52 = result + 2;
  if (__OFADD__(result, 2))
  {
LABEL_32:
    __break(1u);
    return result;
  }

  v5 = [v2 dictionaryRepresentation];
  v6 = sub_1DF63283C();

  v7 = v2;

  v8 = sub_1DF5DC4E8(v6, v7, v1, v3);

  v9 = *(v8 + 16);
  if (v9)
  {
    v59 = MEMORY[0x1E69E7CC0];
    sub_1DF5DB158(0, v9, 0);
    v10 = v59;
    v11 = v8 + 64;
    v12 = -1 << *(v8 + 32);
    result = sub_1DF6333DC();
    v13 = result;
    v14 = 0;
    v15 = *(v8 + 36);
    v47 = v8 + 72;
    v48 = v9;
    v50 = v8 + 64;
    v51 = v8;
    v49 = v15;
    while ((v13 & 0x8000000000000000) == 0 && v13 < 1 << *(v8 + 32))
    {
      v17 = v13 >> 6;
      if ((*(v11 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
      {
        goto LABEL_26;
      }

      if (v15 != *(v8 + 36))
      {
        goto LABEL_27;
      }

      v53 = v14;
      v18 = (*(v8 + 48) + 16 * v13);
      v20 = *v18;
      v19 = v18[1];
      sub_1DF5A0B98(*(v8 + 56) + 32 * v13, v56);
      v54[0] = v20;
      v54[1] = v19;
      sub_1DF5A27C4(v56, v55);
      swift_bridgeObjectRetain_n();
      v21 = sub_1DF632ADC();
      v22 = __OFSUB__(v21, v52);
      result = v21 - v52;
      if (v22)
      {
        goto LABEL_28;
      }

      v23 = sub_1DF5DC700(result, v20, v19);
      v25 = v24;
      v27 = v26;
      v29 = v28;

      v30 = MEMORY[0x1E12D8260](v23, v25, v27, v29);
      v32 = v31;

      sub_1DF5A0B98(v55, v58);
      *&v57 = v30;
      *(&v57 + 1) = v32;
      result = sub_1DF5DC984(v54);
      v59 = v10;
      v34 = *(v10 + 16);
      v33 = *(v10 + 24);
      if (v34 >= v33 >> 1)
      {
        result = sub_1DF5DB158((v33 > 1), v34 + 1, 1);
        v10 = v59;
      }

      *(v10 + 16) = v34 + 1;
      v35 = (v10 + 48 * v34);
      v36 = v57;
      v37 = v58[1];
      v35[3] = v58[0];
      v35[4] = v37;
      v35[2] = v36;
      v11 = v50;
      v8 = v51;
      v16 = 1 << *(v51 + 32);
      if (v13 >= v16)
      {
        goto LABEL_29;
      }

      v38 = *(v50 + 8 * v17);
      if ((v38 & (1 << v13)) == 0)
      {
        goto LABEL_30;
      }

      v15 = v49;
      if (v49 != *(v51 + 36))
      {
        goto LABEL_31;
      }

      v39 = v38 & (-2 << (v13 & 0x3F));
      if (v39)
      {
        v16 = __clz(__rbit64(v39)) | v13 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v40 = v17 << 6;
        v41 = v17 + 1;
        v42 = (v47 + 8 * v17);
        while (v41 < (v16 + 63) >> 6)
        {
          v44 = *v42++;
          v43 = v44;
          v40 += 64;
          ++v41;
          if (v44)
          {
            result = sub_1DF5DC9EC(v13, v49, 0);
            v16 = __clz(__rbit64(v43)) + v40;
            goto LABEL_5;
          }
        }

        result = sub_1DF5DC9EC(v13, v49, 0);
      }

LABEL_5:
      v14 = v53 + 1;
      v13 = v16;
      if (v53 + 1 == v48)
      {

        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v10 = MEMORY[0x1E69E7CC0];
LABEL_24:
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42B60, &qword_1DF6393E0);
  v46 = MEMORY[0x1E12D8510](v10, v45);

  return v46;
}

void *sub_1DF5DBF1C(void *result, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v11 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v12 = a4;

    v13 = sub_1DF5DC328(v11, a2, a3, v12, a5, a6);
    swift_bridgeObjectRelease_n();

    return v13;
  }

  return result;
}

uint64_t sub_1DF5DBFE0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42B68, &qword_1DF639578);
  result = sub_1DF63373C();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    sub_1DF5A0B98(v17 + 32 * v16, v34);
    sub_1DF5A27C4(v34, v33);
    v21 = *(v9 + 40);
    sub_1DF633A6C();

    sub_1DF632ACC();
    result = sub_1DF633AAC();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v9 + 48) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    result = sub_1DF5A27C4(v33, *(v9 + 56) + 32 * v25);
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v32;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

BOOL sub_1DF5DC230(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 >= 0x21 || ((0x100003E01uLL >> v3) & 1) == 0)
      {
LABEL_10:
        v5 = _swift_stdlib_strtof_clocale();
        return v5 && *v5 == 0;
      }

      return 0;
    }
  }

  sub_1DF63344C();
  if (!v2)
  {
    return v7;
  }

  return v4;
}

uint64_t sub_1DF5DC328(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26[5] = a6;
  v23 = 0;
  v22 = result;
  v7 = 0;
  v8 = a3 + 64;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 64);
  v12 = (v9 + 63) >> 6;
  while (v11)
  {
    v13 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_11:
    v16 = v13 | (v7 << 6);
    v17 = (*(a3 + 48) + 16 * v16);
    v19 = *v17;
    v18 = v17[1];
    sub_1DF5A0B98(*(a3 + 56) + 32 * v16, v26);
    v24[0] = v19;
    v24[1] = v18;
    sub_1DF5A0B98(v26, &v25);
    swift_bridgeObjectRetain_n();

    MEMORY[0x1E12D82E0](14906, 0xE200000000000000);
    LOBYTE(v19) = sub_1DF632BAC();

    sub_1DF5DC984(v24);
    __swift_destroy_boxed_opaque_existential_1(v26);

    if (v19)
    {
      *(v22 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      if (__OFADD__(v23++, 1))
      {
        __break(1u);
        return sub_1DF5DBFE0(v22, a2, v23, a3);
      }
    }
  }

  v14 = v7;
  while (1)
  {
    v7 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v7 >= v12)
    {
      return sub_1DF5DBFE0(v22, a2, v23, a3);
    }

    v15 = *(v8 + 8 * v7);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v11 = (v15 - 1) & v15;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DF5DC4E8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = a2;
  swift_bridgeObjectRetain_n();
  v12 = v11;
  v13 = v12;
  if (v9 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v19 = swift_slowAlloc();
      v20 = v13;

      v16 = sub_1DF5DBF1C(v19, v10, a1, v20, a3, a4);
      MEMORY[0x1E12D9D80](v19, -1, -1);
      swift_bridgeObjectRelease_n();

      goto LABEL_6;
    }
  }

  MEMORY[0x1EEE9AC00](v12);
  v14 = v21 - ((8 * v10 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v14, 8 * v10);
  v15 = v13;

  v16 = sub_1DF5DC328(v14, v10, a1, v15, a3, a4);

  if (v4)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();

LABEL_6:
  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

unint64_t sub_1DF5DC700(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  result = sub_1DF632AFC();
  if (v4)
  {
    result = 15;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_12;
  }

  return sub_1DF632C0C();
}

void sub_1DF5DC7BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_1DF63327C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v19 - v11;
  v13 = *v4;
  (*(v14 + 16))(v19 - v11, a1);
  v15 = *(a4 - 8);
  v16 = 0;
  if ((*(v15 + 48))(v12, 1, a4) != 1)
  {
    v16 = sub_1DF63393C();
    (*(v15 + 8))(v12, a4);
  }

  v17 = *(v4 + 16);
  v19[0] = *(v4 + 8);
  v19[1] = v17;

  MEMORY[0x1E12D82E0](14906, 0xE200000000000000);
  MEMORY[0x1E12D82E0](a2, a3);

  v18 = sub_1DF63295C();

  [v13 setObject:v16 forKey:v18];
  swift_unknownObjectRelease();
}

uint64_t sub_1DF5DC984(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42B58, &qword_1DF6393D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DF5DC9EC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1DF5DC9F8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1DF5DCA40(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *sub_1DF5DCA90@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  if (v4 || v5 == 0)
  {
    v8 = *(v2 + 16);
    result = _swift_stdlib_strtof_clocale();
    if (result)
    {
      v9 = *result == 0;
    }

    else
    {
      v9 = 0;
    }

    *a2 = v9;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t Dictionary<>.dataRepresentation.getter()
{
  v0 = sub_1DF63206C();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_1DF63205C();
  sub_1DF63288C();
  swift_getWitnessTable();
  v3 = sub_1DF63204C();

  return v3;
}

uint64_t Dictionary<>.init(dataRepresentation:)(uint64_t a1, unint64_t a2)
{
  v4 = sub_1DF5DF31C();
  sub_1DF5B33C0(a1, a2);
  return v4;
}

uint64_t sub_1DF5DCD54(void *a1, uint64_t a2)
{
  v3 = *(a2 - 16);
  v4 = *(a2 - 32);
  v5 = *v2;
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  return Dictionary<>.dataRepresentation.getter();
}

uint64_t sub_1DF5DCD70@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = *(a4 - 16);
  v9 = *(a4 - 8);
  v12 = *(a4 - 32);
  v11 = *(a4 - 24);
  v14 = a3[2];
  v13 = a3[3];
  v15 = a3[4];
  v16 = sub_1DF5DF31C();
  result = sub_1DF5B33C0(a1, a2);
  if (!v5)
  {
    *a5 = v16;
  }

  return result;
}

uint64_t Dictionary<>.stringRepresentation.getter(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v85 = a4;
  v86 = a6;
  v6 = a3;
  v79 = *(a3 - 8);
  v9 = *(v79 + 64);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = v77 - v14;
  v78 = *(v16 - 8);
  v17 = *(v78 + 64);
  v18 = MEMORY[0x1EEE9AC00](v13);
  v20 = v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v95 = v77 - v21;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v92 = sub_1DF63327C();
  v22 = *(v92 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x1EEE9AC00](v92);
  v93 = v77 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v91 = v77 - v26;
  v80 = v15;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v27 = sub_1DF6336CC();
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = v27 | 0x8000000000000000;
  }

  else
  {
    v32 = -1 << *(a1 + 32);
    v29 = ~v32;
    v28 = a1 + 64;
    v33 = -v32;
    if (v33 < 64)
    {
      v34 = ~(-1 << v33);
    }

    else
    {
      v34 = -1;
    }

    v30 = v34 & *(a1 + 64);
    v31 = a1;
  }

  v99 = (v78 + 32);
  v98 = (v79 + 32);
  v90 = TupleTypeMetadata2 - 8;
  v77[0] = v29;
  v94 = (v29 + 64) >> 6;
  v77[2] = v78 + 16;
  v77[1] = v79 + 16;
  v89 = (v22 + 32);
  v82 = (v79 + 8);
  v81 = (v78 + 8);

  v35 = 0;
  v36 = MEMORY[0x1E69E7CC8];
  v87 = v28;
  v88 = v31;
  v83 = v20;
  v84 = v12;
  while (1)
  {
    v102 = v36;
    v97 = v30;
    if ((v31 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (sub_1DF6336DC())
    {
      sub_1DF63391C();
      swift_unknownObjectRelease();
      v45 = v80;
      sub_1DF63391C();
      swift_unknownObjectRelease();
      v40 = v35;
      v101 = v97;
      goto LABEL_21;
    }

    v49 = 1;
    v100 = v35;
    v101 = v97;
LABEL_24:
    v46 = TupleTypeMetadata2;
    v48 = v93;
LABEL_25:
    v50 = *(v46 - 8);
    (*(v50 + 56))(v48, v49, 1, v46);
    v51 = v91;
    (*v89)(v91, v48, v92);
    if ((*(v50 + 48))(v51, 1, v46) == 1)
    {
      sub_1DF5DF418();
      return v102;
    }

    v52 = *(v46 + 48);
    (*v99)(v20, v51, a2);
    (*v98)(v12, &v51[v52], v6);
    v53 = a2;
    v54 = sub_1DF6338DC();
    v56 = v55;
    v57 = v6;
    v58 = sub_1DF6338DC();
    v60 = v59;
    v61 = v102;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v103 = v61;
    v64 = sub_1DF59F184(v54, v56);
    v65 = v61[2];
    v66 = (v63 & 1) == 0;
    v67 = v65 + v66;
    if (__OFADD__(v65, v66))
    {
      goto LABEL_37;
    }

    v68 = v63;
    if (v61[3] >= v67)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1DF5DEA98();
      }
    }

    else
    {
      sub_1DF5DD94C(v67, isUniquelyReferenced_nonNull_native);
      v69 = sub_1DF59F184(v54, v56);
      if ((v68 & 1) != (v70 & 1))
      {
        goto LABEL_39;
      }

      v64 = v69;
    }

    v6 = v57;
    a2 = v53;
    if (v68)
    {

      v36 = v103;
      v37 = (v103[7] + 16 * v64);
      v38 = v37[1];
      *v37 = v58;
      v37[1] = v60;

      v12 = v84;
      (*v82)(v84, v6);
      v20 = v83;
      (*v81)(v83, v53);
      v35 = v100;
      v30 = v101;
      v28 = v87;
      v31 = v88;
    }

    else
    {
      v36 = v103;
      v103[(v64 >> 6) + 8] |= 1 << v64;
      v71 = (v36[6] + 16 * v64);
      *v71 = v54;
      v71[1] = v56;
      v72 = (v36[7] + 16 * v64);
      *v72 = v58;
      v72[1] = v60;
      v12 = v84;
      (*v82)(v84, v6);
      v20 = v83;
      (*v81)(v83, v53);
      v73 = v36[2];
      v74 = __OFADD__(v73, 1);
      v75 = v73 + 1;
      v31 = v88;
      if (v74)
      {
        goto LABEL_38;
      }

      v36[2] = v75;
      v35 = v100;
      v30 = v101;
      v28 = v87;
    }
  }

  v39 = v30;
  v40 = v35;
  if (v30)
  {
LABEL_18:
    v101 = (v39 - 1) & v39;
    v44 = __clz(__rbit64(v39)) | (v40 << 6);
    (*(v78 + 16))(v95, *(v31 + 48) + *(v78 + 72) * v44, a2);
    v45 = v80;
    (*(v79 + 16))(v80, *(v31 + 56) + *(v79 + 72) * v44, v6);
LABEL_21:
    v46 = TupleTypeMetadata2;
    v47 = *(TupleTypeMetadata2 + 48);
    v48 = v93;
    (*v99)();
    (*v98)(&v48[v47], v45, v6);
    v49 = 0;
    v100 = v40;
    goto LABEL_25;
  }

  if (v94 <= v35 + 1)
  {
    v41 = v35 + 1;
  }

  else
  {
    v41 = v94;
  }

  v42 = v41 - 1;
  v43 = v35;
  while (1)
  {
    v40 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      break;
    }

    if (v40 >= v94)
    {
      v100 = v42;
      v101 = 0;
      v49 = 1;
      goto LABEL_24;
    }

    v39 = *(v28 + 8 * v40);
    ++v43;
    if (v39)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  result = sub_1DF6339EC();
  __break(1u);
  return result;
}

uint64_t sub_1DF5DD5CC(uint64_t a1, int a2)
{
  v3 = v2;
  v49 = sub_1DF6335AC();
  v6 = *(v49 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v48 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42A30, &qword_1DF638C68);
  v46 = a2;
  result = sub_1DF63372C();
  v12 = result;
  if (*(v9 + 16))
  {
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
    v42 = v2;
    v43 = (v6 + 16);
    v44 = v9;
    v45 = v6;
    v47 = (v6 + 32);
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v29 = *v27;
      v28 = v27[1];
      v30 = *(v45 + 72);
      v31 = v26 + v30 * v25;
      if (v46)
      {
        (*v47)(v48, v31, v49);
      }

      else
      {
        (*v43)(v48, v31, v49);
      }

      v32 = *(v12 + 40);
      sub_1DF633A6C();
      sub_1DF632ACC();
      result = sub_1DF633AAC();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v29;
      v21[1] = v28;
      result = (*v47)(*(v12 + 56) + v30 * v20, v48, v49);
      ++*(v12 + 16);
      v9 = v44;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v42;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_1DF5DD94C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42A18, &qword_1DF638C50);
  v40 = a2;
  result = sub_1DF63372C();
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
      sub_1DF633A6C();
      sub_1DF632ACC();
      result = sub_1DF633AAC();
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

uint64_t sub_1DF5DDC0C(uint64_t a1, int a2)
{
  v3 = v2;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42A00, &qword_1DF638C30);
  v6 = *(v57 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v57);
  v56 = &v45 - v8;
  v9 = sub_1DF6325AC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v58 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42B78, &qword_1DF6395D8);
  v52 = a2;
  result = sub_1DF63372C();
  v16 = result;
  if (*(v13 + 16))
  {
    v17 = 0;
    v18 = v10;
    v19 = (v13 + 64);
    v20 = 1 << *(v13 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & *(v13 + 64);
    v23 = (v20 + 63) >> 6;
    v48 = (v18 + 16);
    v49 = v18;
    v46 = v3;
    v47 = v6 + 16;
    v50 = v13;
    v51 = v6;
    v53 = (v6 + 32);
    v54 = (v18 + 32);
    v24 = result + 64;
    v25 = v18;
    while (v22)
    {
      v27 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_17:
      v30 = v27 | (v17 << 6);
      v31 = *(v13 + 48);
      v55 = *(v25 + 72);
      v32 = v31 + v55 * v30;
      if (v52)
      {
        (*v54)(v58, v32, v9);
        v33 = *(v13 + 56);
        v34 = *(v51 + 72);
        (*(v51 + 32))(v56, v33 + v34 * v30, v57);
      }

      else
      {
        (*v48)(v58, v32, v9);
        v35 = *(v13 + 56);
        v34 = *(v51 + 72);
        (*(v51 + 16))(v56, v35 + v34 * v30, v57);
      }

      v36 = *(v16 + 40);
      sub_1DF5A2A60(&qword_1ED8E6150, MEMORY[0x1E69695A8]);
      result = sub_1DF6328BC();
      v37 = -1 << *(v16 + 32);
      v38 = result & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v24 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v24 + 8 * v39);
          if (v43 != -1)
          {
            v26 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v38) & ~*(v24 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v24 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      (*v54)((*(v16 + 48) + v55 * v26), v58, v9);
      result = (*v53)(*(v16 + 56) + v34 * v26, v56, v57);
      ++*(v16 + 16);
      v25 = v49;
      v13 = v50;
    }

    v28 = v17;
    while (1)
    {
      v17 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v17 >= v23)
      {
        break;
      }

      v29 = v19[v17];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v22 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v52 & 1) == 0)
    {

      v3 = v46;
      goto LABEL_36;
    }

    v44 = 1 << *(v13 + 32);
    v3 = v46;
    if (v44 >= 64)
    {
      bzero(v19, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v19 = -1 << v44;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v16;
  return result;
}

uint64_t sub_1DF5DE0E4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42B70, &qword_1DF6395D0);
  v47 = a2;
  result = sub_1DF63372C();
  v8 = result;
  if (*(v5 + 16))
  {
    v46 = v3;
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
      v24 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v27 = v24 | (v9 << 6);
      v28 = (*(v5 + 48) + 16 * v27);
      v29 = *v28;
      v30 = v28[1];
      v31 = (*(v5 + 56) + 112 * v27);
      if (v47)
      {
        v32 = *v31;
        v33 = v31[2];
        v49 = v31[1];
        v50 = v33;
        v48 = v32;
        v34 = v31[3];
        v35 = v31[4];
        v36 = v31[6];
        v53 = v31[5];
        v54 = v36;
        v52 = v35;
        v51 = v34;
      }

      else
      {
        sub_1DF5A7C1C(v31, &v48);
      }

      v37 = *(v8 + 40);
      sub_1DF633A6C();
      sub_1DF632ACC();
      result = sub_1DF633AAC();
      v38 = -1 << *(v8 + 32);
      v39 = result & ~v38;
      v40 = v39 >> 6;
      if (((-1 << v39) & ~*(v15 + 8 * (v39 >> 6))) == 0)
      {
        v41 = 0;
        v42 = (63 - v38) >> 6;
        while (++v40 != v42 || (v41 & 1) == 0)
        {
          v43 = v40 == v42;
          if (v40 == v42)
          {
            v40 = 0;
          }

          v41 |= v43;
          v44 = *(v15 + 8 * v40);
          if (v44 != -1)
          {
            v16 = __clz(__rbit64(~v44)) + (v40 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v39) & ~*(v15 + 8 * (v39 >> 6)))) | v39 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v29;
      v17[1] = v30;
      v18 = (*(v8 + 56) + 112 * v16);
      v19 = v48;
      v20 = v50;
      v18[1] = v49;
      v18[2] = v20;
      *v18 = v19;
      v21 = v51;
      v22 = v52;
      v23 = v54;
      v18[5] = v53;
      v18[6] = v23;
      v18[3] = v21;
      v18[4] = v22;
      ++*(v8 + 16);
    }

    v25 = v9;
    while (1)
    {
      v9 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v26 = v10[v9];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v13 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v46;
      goto LABEL_36;
    }

    v45 = 1 << *(v5 + 32);
    v3 = v46;
    if (v45 >= 64)
    {
      bzero((v5 + 64), ((v45 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v45;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

void *sub_1DF5DE42C(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v47 = *(v45 - 8);
  v8 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v44 = &v39 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v10 = *v4;
  v11 = sub_1DF63371C();
  v12 = v11;
  if (*(v10 + 16))
  {
    v40 = v7;
    result = (v11 + 64);
    v14 = v10 + 64;
    v15 = ((1 << *(v12 + 32)) + 63) >> 6;
    if (v12 != v10 || result >= v10 + 64 + 8 * v15)
    {
      result = memmove(result, (v10 + 64), 8 * v15);
    }

    v17 = 0;
    v18 = *(v10 + 16);
    v46 = v12;
    *(v12 + 16) = v18;
    v19 = 1 << *(v10 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v10 + 64);
    v22 = (v19 + 63) >> 6;
    v41 = v47 + 32;
    v42 = v47 + 16;
    v43 = v10;
    if (v21)
    {
      do
      {
        v23 = __clz(__rbit64(v21));
        v48 = (v21 - 1) & v21;
LABEL_17:
        v26 = v23 | (v17 << 6);
        v27 = 16 * v26;
        v28 = *(v10 + 56);
        v29 = (*(v10 + 48) + 16 * v26);
        v30 = *v29;
        v31 = v29[1];
        v32 = v47;
        v33 = *(v47 + 72) * v26;
        v34 = v44;
        v35 = v45;
        (*(v47 + 16))(v44, v28 + v33, v45);
        v36 = v46;
        v37 = (*(v46 + 48) + v27);
        *v37 = v30;
        v37[1] = v31;
        v38 = *(v36 + 56) + v33;
        v10 = v43;
        (*(v32 + 32))(v38, v34, v35);

        v21 = v48;
      }

      while (v48);
    }

    v24 = v17;
    while (1)
    {
      v17 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v17 >= v22)
      {

        v7 = v40;
        v12 = v46;
        goto LABEL_21;
      }

      v25 = *(v14 + 8 * v17);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v48 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v7 = v12;
  }

  return result;
}

void *sub_1DF5DE6A8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42A50, &qword_1DF638CC8);
  v2 = *v0;
  v3 = sub_1DF63371C();
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
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

char *sub_1DF5DE818()
{
  v1 = v0;
  v36 = sub_1DF6335AC();
  v38 = *(v36 - 8);
  v2 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42A30, &qword_1DF638C68);
  v4 = *v0;
  v5 = sub_1DF63371C();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v37 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v39 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 16 * v19;
        v21 = (*(v4 + 48) + 16 * v19);
        v22 = *v21;
        v23 = v21[1];
        v24 = v38;
        v25 = *(v38 + 72) * v19;
        v26 = v35;
        v27 = v36;
        (*(v38 + 16))(v35, *(v4 + 56) + v25, v36);
        v28 = v37;
        v29 = (*(v37 + 48) + v20);
        *v29 = v22;
        v29[1] = v23;
        (*(v24 + 32))(*(v28 + 56) + v25, v26, v27);

        v14 = v39;
      }

      while (v39);
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

        v1 = v31;
        v6 = v37;
        goto LABEL_18;
      }

      v18 = *(v32 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
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

void *sub_1DF5DEA98()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42A18, &qword_1DF638C50);
  v2 = *v0;
  v3 = sub_1DF63371C();
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

char *sub_1DF5DEC10()
{
  v1 = v0;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42A00, &qword_1DF638C30);
  v46 = *(v43 - 8);
  v2 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v42 = &v32 - v3;
  v41 = sub_1DF6325AC();
  v45 = *(v41 - 8);
  v4 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42B78, &qword_1DF6395D8);
  v6 = *v0;
  v7 = sub_1DF63371C();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = (v6 + 64);
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    v32 = v1;
    v33 = v6 + 64;
    if (v8 != v6 || result >= &v10[8 * v11])
    {
      result = memmove(result, v10, 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v44 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = v45 + 16;
    v38 = v17;
    v35 = v45 + 32;
    v36 = v46 + 16;
    v34 = v46 + 32;
    v39 = v6;
    v19 = v40;
    v18 = v41;
    if (v16)
    {
      do
      {
        v20 = __clz(__rbit64(v16));
        v47 = (v16 - 1) & v16;
LABEL_14:
        v23 = v20 | (v12 << 6);
        v24 = v45;
        v25 = *(v45 + 72) * v23;
        (*(v45 + 16))(v19, *(v6 + 48) + v25, v18);
        v26 = v46;
        v27 = *(v46 + 72) * v23;
        v28 = v42;
        v29 = v43;
        (*(v46 + 16))(v42, *(v6 + 56) + v27, v43);
        v30 = v44;
        (*(v24 + 32))(*(v44 + 48) + v25, v19, v18);
        v31 = *(v30 + 56);
        v6 = v39;
        result = (*(v26 + 32))(v31 + v27, v28, v29);
        v17 = v38;
        v16 = v47;
      }

      while (v47);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v32;
        v8 = v44;
        goto LABEL_18;
      }

      v22 = *(v33 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v47 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}