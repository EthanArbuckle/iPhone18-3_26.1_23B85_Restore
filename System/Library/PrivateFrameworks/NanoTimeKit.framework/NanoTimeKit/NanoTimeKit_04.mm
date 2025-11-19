uint64_t sub_22DC73670()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t static GallerySnapshotListener.client.getter()
{
  if (qword_27DA2CB70 != -1)
  {
    swift_once();
  }

  v0 = qword_27DA2D400;
  v1 = type metadata accessor for ClientService();
  v14[3] = v1;
  v14[4] = &off_28410FBB8;
  v14[0] = v0;
  type metadata accessor for GallerySnapshotListener();
  v2 = swift_allocObject();
  v3 = __swift_mutable_project_boxed_opaque_existential_1(v14, v1);
  v5 = MEMORY[0x28223BE20](v3, v3, v4);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v7, v5);
  v9 = *v7;
  v12 = v1;
  v13 = &off_28410FBB8;
  *&v11 = v9;

  swift_defaultActor_initialize();
  sub_22DC72E80(&v11, v2 + 112);
  __swift_destroy_boxed_opaque_existential_1(v14);
  return v2;
}

uint64_t GallerySnapshotListener.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 112);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t GallerySnapshotListener.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 112);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t dispatch thunk of GallerySnapshotListener.sendGalleryUpdateMessageToSource()()
{
  v4 = (*(*v0 + 104) + **(*v0 + 104));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_22D9CB0D8;

  return v4();
}

uint64_t sub_22DC73AAC()
{
  v0 = sub_22DCB5FDC();
  __swift_allocate_value_buffer(v0, qword_27DA376A8);
  __swift_project_value_buffer(v0, qword_27DA376A8);
  return sub_22DCB5FCC();
}

void sub_22DC73B30()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[5];
  if (v3)
  {
    [v3 invalidate];
  }

  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = v1;
  v9[4] = sub_22DC74C4C;
  v9[5] = v5;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_22DC73D4C;
  v9[3] = &block_descriptor_0;
  v6 = _Block_copy(v9);

  v7 = [v4 scheduledTimerWithTimeInterval:0 repeats:v6 block:1.0];
  _Block_release(v6);
  v8 = v0[5];
  v0[5] = v7;
}

uint64_t sub_22DC73C58(uint64_t a1, uint64_t (*a2)(void))
{
  if (qword_27DA2CB50 != -1)
  {
    swift_once();
  }

  v3 = sub_22DCB5FDC();
  __swift_project_value_buffer(v3, qword_27DA376A8);
  v4 = sub_22DCB5FBC();
  v5 = sub_22DCB63DC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_22D9C5000, v4, v5, "Debouncer fired.", v6, 2u);
    MEMORY[0x2318DAAC0](v6, -1, -1);
  }

  return a2();
}

void sub_22DC73D4C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_22DC73DB4()
{

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_22DC73E54(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA2D440);
  MEMORY[0x28223BE20](v7 - 8, v8, v9);
  v11 = &v20 - v10;
  if (qword_27DA2CB50 != -1)
  {
    swift_once();
  }

  v12 = sub_22DCB5FDC();
  __swift_project_value_buffer(v12, qword_27DA376A8);

  v13 = sub_22DCB5FBC();
  v14 = sub_22DCB63DC();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v21 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_22DC87280(a2, a3, &v21);
    _os_log_impl(&dword_22D9C5000, v13, v14, "Change in %s observed.", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x2318DAAC0](v16, -1, -1);
    MEMORY[0x2318DAAC0](v15, -1, -1);
  }

  v17 = sub_22DCB62BC();
  (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = a4;

  sub_22DC741A8(0, 0, v11, &unk_22DCEAE40, v18);

  return sub_22DC74ABC(v11);
}

uint64_t sub_22DC740B0()
{
  sub_22DCB629C();
  *(v0 + 24) = sub_22DCB628C();
  v2 = sub_22DCB625C();

  return MEMORY[0x2822009F8](sub_22DC74144, v2, v1);
}

uint64_t sub_22DC74144()
{

  sub_22DC73B30();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22DC741A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA2D440);
  MEMORY[0x28223BE20](v9 - 8, v10, v11);
  v13 = v27 - v12;
  sub_22DC74B24(a3, v27 - v12);
  v14 = sub_22DCB62BC();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v13, 1, v14);

  if (v16 == 1)
  {
    sub_22DC74ABC(v13);
  }

  else
  {
    sub_22DCB62AC();
    (*(v15 + 8))(v13, v14);
  }

  v17 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_22DCB625C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_22DCB617C() + 32;
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

void __swiftcall NTKDirectoryMonitor.init()(NTKDirectoryMonitor *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

id sub_22DC74618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = *MEMORY[0x277D85DE8];
  v30 = sub_22DCB5FFC();
  v9 = *(v30 - 8);
  MEMORY[0x28223BE20](v30, v10, v11);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v4;
  v14 = &v4[OBJC_IVAR___NTKDirectoryMonitor__path];
  *v14 = a1;
  *(v14 + 1) = a2;
  type metadata accessor for Debouncer();
  v15 = swift_allocObject();
  v15[4] = 0x3FF0000000000000;
  v15[5] = 0;
  v15[2] = a3;
  v15[3] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2CF18);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_22DCEAE00;
  *(v16 + 32) = a1;
  *(v16 + 40) = a2;
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a2;
  v17[4] = v15;
  type metadata accessor for FileEventStream();
  v18 = swift_allocObject();
  *(v18 + 72) = v17;
  *(v18 + 80) = 0;
  *(v18 + 16) = v16;
  *(v18 + 24) = -1;
  *(v18 + 32) = 0x3FE0000000000000;
  *(v18 + 40) = 17;
  *(v18 + 48) = 0;
  *(v18 + 56) = 0;
  *(v18 + 64) = sub_22DC749FC;
  context.info = v18;
  memset(&context.retain, 0, 24);
  context.version = 0;
  v19 = *MEMORY[0x277CBECE8];
  swift_bridgeObjectRetain_n();

  v20 = sub_22DCB61EC();

  v21 = FSEventStreamCreate(v19, sub_22DC8B4B0, &context, v20, 0xFFFFFFFFFFFFFFFFLL, 0.5, 0x11u);

  if (v21)
  {
    *(v18 + 80) = v21;
    sub_22DC6600C(0, &qword_280C106D0);
    v22 = v30;
    (*(v9 + 104))(v13, *MEMORY[0x277D851D0], v30);
    v23 = sub_22DCB640C();
    (*(v9 + 8))(v13, v22);
    FSEventStreamSetDispatchQueue(v21, v23);

    FSEventStreamStart(v21);
  }

  else
  {
    if (qword_27DA2CB78 != -1)
    {
      swift_once();
    }

    v24 = sub_22DCB5FDC();
    __swift_project_value_buffer(v24, qword_27DA376F0);
    v25 = sub_22DCB5FBC();
    v26 = sub_22DCB63DC();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_22D9C5000, v25, v26, "Could not create FSEventStream", v27, 2u);
      MEMORY[0x2318DAAC0](v27, -1, -1);
    }
  }

  v28 = v31;
  *&v31[OBJC_IVAR___NTKDirectoryMonitor_stream] = v18;
  v32.receiver = v28;
  v32.super_class = NTKDirectoryMonitor;
  return objc_msgSendSuper2(&v32, sel_init);
}

uint64_t sub_22DC74A08(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22D9CB0D8;

  return sub_22DC74090(a1, v4, v5, v6);
}

uint64_t sub_22DC74ABC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA2D440);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22DC74B24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA2D440);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22DC74B94(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22D9CB0D8;

  return sub_22D9CA330(a1, v4);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t LibrarySnapshot.name.getter()
{
  v1 = *(v0 + *(type metadata accessor for LibrarySnapshot() + 20));

  return v1;
}

uint64_t type metadata accessor for LibrarySnapshot()
{
  result = qword_27DA2D148;
  if (!qword_27DA2D148)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LibrarySnapshot.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for LibrarySnapshot() + 20));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_22DC74EA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

BOOL static LibrarySnapshot.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_22DCB680C() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for LibraryReplicatorIdentifier();
  if ((sub_22DCB5B0C() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for LibrarySnapshot();
  v6 = *(v5 + 20);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v7 == *v9 && v8 == v9[1];
  if (!v10 && (sub_22DCB680C() & 1) == 0)
  {
    return 0;
  }

  v11 = *(v5 + 24);

  return _s11NanoTimeKit12FaceSnapshotV2eeoiySbAC_ACtFZ_0((a1 + v11), (a2 + v11));
}

uint64_t sub_22DC75028(uint64_t a1)
{
  v2 = sub_22DC75C6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22DC75064(uint64_t a1)
{
  v2 = sub_22DC75C6C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LibrarySnapshot.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D110);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5, v6);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22DC75C6C();
  sub_22DCB690C();
  v10[15] = 0;
  type metadata accessor for LibraryReplicatorIdentifier();
  sub_22DC75E80(&qword_27DA2D120, type metadata accessor for LibraryReplicatorIdentifier);
  sub_22DCB67BC();
  if (!v1)
  {
    type metadata accessor for LibrarySnapshot();
    v10[14] = 1;
    sub_22DCB679C();
    v10[13] = 2;
    type metadata accessor for FaceSnapshot(0);
    sub_22DC75E80(&qword_27DA2CBA0, type metadata accessor for FaceSnapshot);
    sub_22DCB67BC();
  }

  return (*(v4 + 8))(v8, v3);
}

uint64_t LibrarySnapshot.hash(into:)()
{
  sub_22DCB618C();
  type metadata accessor for LibraryReplicatorIdentifier();
  sub_22DCB5B3C();
  sub_22DC75E80(&qword_27DA2D128, MEMORY[0x277CC95F0]);
  sub_22DCB60EC();
  type metadata accessor for LibrarySnapshot();
  sub_22DCB618C();
  return FaceSnapshot.hash(into:)();
}

uint64_t LibrarySnapshot.hashValue.getter()
{
  sub_22DCB68AC();
  sub_22DCB618C();
  type metadata accessor for LibraryReplicatorIdentifier();
  sub_22DCB5B3C();
  sub_22DC75E80(&qword_27DA2D128, MEMORY[0x277CC95F0]);
  sub_22DCB60EC();
  type metadata accessor for LibrarySnapshot();
  sub_22DCB618C();
  FaceSnapshot.hash(into:)();
  return sub_22DCB68EC();
}

uint64_t LibrarySnapshot.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v34 = type metadata accessor for FaceSnapshot(0);
  MEMORY[0x28223BE20](v34, v4, v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for LibraryReplicatorIdentifier();
  MEMORY[0x28223BE20](v8, v9, v10);
  v36 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D130);
  v35 = *(v37 - 8);
  MEMORY[0x28223BE20](v37, v12, v13);
  v15 = &v31 - v14;
  v16 = type metadata accessor for LibrarySnapshot();
  MEMORY[0x28223BE20](v16, v17, v18);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1[3];
  v38 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_22DC75C6C();
  sub_22DCB68FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v38);
  }

  v22 = v35;
  v32 = v16;
  v23 = v20;
  v41 = 0;
  sub_22DC75E80(&qword_27DA2D138, type metadata accessor for LibraryReplicatorIdentifier);
  v25 = v36;
  v24 = v37;
  sub_22DCB673C();
  sub_22DC75CC0(v25, v23, type metadata accessor for LibraryReplicatorIdentifier);
  v40 = 1;
  v26 = sub_22DCB671C();
  v27 = v32;
  v28 = (v23 + *(v32 + 20));
  *v28 = v26;
  v28[1] = v29;
  v39 = 2;
  sub_22DC75E80(&qword_27DA2CBB8, type metadata accessor for FaceSnapshot);
  sub_22DCB673C();
  (*(v22 + 8))(v15, v24);
  sub_22DC75CC0(v7, v23 + *(v27 + 24), type metadata accessor for FaceSnapshot);
  sub_22DC75D28(v23, v33, type metadata accessor for LibrarySnapshot);
  __swift_destroy_boxed_opaque_existential_1(v38);
  return sub_22DC75D90(v23, type metadata accessor for LibrarySnapshot);
}

uint64_t sub_22DC758CC()
{
  sub_22DCB68AC();
  sub_22DCB618C();
  type metadata accessor for LibraryReplicatorIdentifier();
  sub_22DCB5B3C();
  sub_22DC75E80(&qword_27DA2D128, MEMORY[0x277CC95F0]);
  sub_22DCB60EC();
  sub_22DCB618C();
  FaceSnapshot.hash(into:)();
  return sub_22DCB68EC();
}

uint64_t sub_22DC759A4()
{
  sub_22DCB618C();
  type metadata accessor for LibraryReplicatorIdentifier();
  sub_22DCB5B3C();
  sub_22DC75E80(&qword_27DA2D128, MEMORY[0x277CC95F0]);
  sub_22DCB60EC();
  sub_22DCB618C();
  return FaceSnapshot.hash(into:)();
}

uint64_t sub_22DC75A68()
{
  sub_22DCB68AC();
  sub_22DCB618C();
  type metadata accessor for LibraryReplicatorIdentifier();
  sub_22DCB5B3C();
  sub_22DC75E80(&qword_27DA2D128, MEMORY[0x277CC95F0]);
  sub_22DCB60EC();
  sub_22DCB618C();
  FaceSnapshot.hash(into:)();
  return sub_22DCB68EC();
}

BOOL sub_22DC75BA0(void *a1, void *a2, uint64_t a3)
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_22DCB680C() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for LibraryReplicatorIdentifier();
  if ((sub_22DCB5B0C() & 1) == 0)
  {
    return 0;
  }

  v7 = *(a3 + 20);
  v8 = *(a1 + v7);
  v9 = *(a1 + v7 + 8);
  v10 = (a2 + v7);
  v11 = v8 == *v10 && v9 == v10[1];
  if (!v11 && (sub_22DCB680C() & 1) == 0)
  {
    return 0;
  }

  v12 = *(a3 + 24);

  return static FaceSnapshot.== infix(_:_:)((a1 + v12), (a2 + v12));
}

unint64_t sub_22DC75C6C()
{
  result = qword_27DA2D118;
  if (!qword_27DA2D118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA2D118);
  }

  return result;
}

uint64_t sub_22DC75CC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22DC75D28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22DC75D90(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22DC75E80(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22DC75EF0()
{
  result = type metadata accessor for LibraryReplicatorIdentifier();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for FaceSnapshot(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_22DC75F90()
{
  result = qword_27DA2D158;
  if (!qword_27DA2D158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA2D158);
  }

  return result;
}

unint64_t sub_22DC75FE8()
{
  result = qword_27DA2D160;
  if (!qword_27DA2D160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA2D160);
  }

  return result;
}

unint64_t sub_22DC76040()
{
  result = qword_27DA2D168;
  if (!qword_27DA2D168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA2D168);
  }

  return result;
}

id sub_22DC76094()
{
  result = [objc_allocWithZone(type metadata accessor for WidgetComplicationDeviceProvider()) init];
  qword_27DA2D170 = result;
  return result;
}

id static WidgetComplicationDeviceProvider.shared.getter()
{
  if (qword_27DA2CB58 != -1)
  {
    swift_once();
  }

  v1 = qword_27DA2D170;

  return v1;
}

uint64_t WidgetComplicationDeviceProvider.activeDeviceID.getter()
{
  v1 = v0 + OBJC_IVAR___NTKWidgetComplicationDeviceProvider_activeDeviceIDLock;
  os_unfair_lock_lock((v0 + OBJC_IVAR___NTKWidgetComplicationDeviceProvider_activeDeviceIDLock));
  v2 = *(v1 + 8);

  os_unfair_lock_unlock(v1);
  return v2;
}

char *sub_22DC76260()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA2D440);
  MEMORY[0x28223BE20](v3 - 8, v4, v5);
  v7 = &v22[-v6];
  v8 = &v0[OBJC_IVAR___NTKWidgetComplicationDeviceProvider_activeDeviceIDLock];
  *v8 = 0;
  *(v8 + 1) = 0;
  *(v8 + 2) = 0;
  v9 = &v0[OBJC_IVAR___NTKWidgetComplicationDeviceProvider_observersLock];
  v10 = [objc_opt_self() weakObjectsHashTable];
  *v9 = 0;
  *(v9 + 1) = v10;
  v11 = &v1[OBJC_IVAR___NTKWidgetComplicationDeviceProvider_taskLock];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = OBJC_IVAR___NTKWidgetComplicationDeviceProvider_replicatorClient;
  sub_22DCB5DDC();
  swift_allocObject();
  *&v1[v12] = sub_22DCB5DCC();
  v24.receiver = v1;
  v24.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v24, sel_init);
  v14 = *&v13[OBJC_IVAR___NTKWidgetComplicationDeviceProvider_replicatorClient];
  swift_unknownObjectWeakInit();
  v15 = &v13[OBJC_IVAR___NTKWidgetComplicationDeviceProvider_taskLock];
  v16 = v13;

  os_unfair_lock_lock(v15);

  v17 = sub_22DCB62BC();
  (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
  v18 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = v14;
  v20[5] = v18;

  *&v15[2]._os_unfair_lock_opaque = sub_22DC95460(0, 0, v7, &unk_22DCEB120, v20);
  os_unfair_lock_unlock(v15);
  MEMORY[0x2318DAB60](v23);
  sub_22DC76944();

  return v16;
}

uint64_t sub_22DC764D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D1C0);
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D1C8);
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22DC76604, 0, 0);
}

uint64_t sub_22DC76604()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  sub_22DCB5DBC();
  sub_22DCB631C();
  (*(v2 + 8))(v1, v3);
  swift_beginAccess();
  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = sub_22DC76710;
  v5 = v0[11];

  return MEMORY[0x2822003E8](v0 + 5, 0, 0, v5);
}

uint64_t sub_22DC76710()
{

  return MEMORY[0x2822009F8](sub_22DC7680C, 0, 0);
}

uint64_t sub_22DC7680C()
{
  if (v0[5] && (, (sub_22DCB635C() & 1) == 0))
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      sub_22DC76944();
    }

    v5 = swift_task_alloc();
    v0[14] = v5;
    *v5 = v0;
    v5[1] = sub_22DC76710;
    v6 = v0[11];

    return MEMORY[0x2822003E8](v0 + 5, 0, 0, v6);
  }

  else
  {
    (*(v0[12] + 8))(v0[13], v0[11]);

    v1 = v0[1];

    return v1();
  }
}

void sub_22DC76944()
{
  v1 = sub_22DC77058();
  v3 = v2;
  v4 = v0 + OBJC_IVAR___NTKWidgetComplicationDeviceProvider_activeDeviceIDLock;
  os_unfair_lock_lock((v0 + OBJC_IVAR___NTKWidgetComplicationDeviceProvider_activeDeviceIDLock));
  v5 = *(v4 + 16);
  if (v3)
  {
    if (!v5)
    {
      goto LABEL_11;
    }

    v6 = v1 == *(v4 + 8) && v3 == v5;
    if (v6 || (sub_22DCB680C() & 1) != 0)
    {
      goto LABEL_8;
    }

LABEL_10:

LABEL_11:
    *(v4 + 8) = v1;
    *(v4 + 16) = v3;

    os_unfair_lock_unlock(v4);
    v7 = v0 + OBJC_IVAR___NTKWidgetComplicationDeviceProvider_observersLock;
    os_unfair_lock_lock((v0 + OBJC_IVAR___NTKWidgetComplicationDeviceProvider_observersLock));
    v8 = [*(v7 + 8) allObjects];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D190);
    v9 = sub_22DCB621C();

    os_unfair_lock_unlock(v7);
    if (v9 >> 62)
    {
      v10 = sub_22DCB662C();
      if (v10)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v10)
      {
LABEL_13:
        if (v10 < 1)
        {
          __break(1u);
          return;
        }

        v11 = 0;
        do
        {
          if ((v9 & 0xC000000000000001) != 0)
          {
            v13 = MEMORY[0x2318D7920](v11, v9);
            if (!v3)
            {
              goto LABEL_21;
            }
          }

          else
          {
            v13 = *(v9 + 8 * v11 + 32);
            swift_unknownObjectRetain();
            if (!v3)
            {
LABEL_21:
              v12 = 0;
              goto LABEL_16;
            }
          }

          v12 = sub_22DCB611C();

LABEL_16:
          ++v11;
          [v13 widgetComplicationDeviceProvider:v0 activeDeviceChanged:v12];
          swift_unknownObjectRelease();
        }

        while (v10 != v11);
      }
    }

    goto LABEL_24;
  }

  if (v5)
  {
    goto LABEL_10;
  }

LABEL_8:
  os_unfair_lock_unlock(v4);
LABEL_24:
}

id WidgetComplicationDeviceProvider.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR___NTKWidgetComplicationDeviceProvider_taskLock];
  os_unfair_lock_lock(&v0[OBJC_IVAR___NTKWidgetComplicationDeviceProvider_taskLock]);
  if (*(v2 + 1))
  {
    sub_22DCB634C();
  }

  os_unfair_lock_unlock(v2);
  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t WidgetComplicationDeviceProvider.addObserver(_:)(uint64_t a1)
{
  sub_22DC76DF4(a1, v5);
  if (!v6)
  {
    return sub_22D9CA164(v5, &qword_27DA2D188);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D190);
  result = swift_dynamicCast();
  if (result)
  {
    v3 = v1 + OBJC_IVAR___NTKWidgetComplicationDeviceProvider_observersLock;
    os_unfair_lock_lock(v3);
    [*(v3 + 8) addObject_];
    os_unfair_lock_unlock(v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_22DC76DF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D188);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22DC76F98(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22D9CB0D8;

  return sub_22DC764D0(a1, v4, v5, v7, v6);
}

uint64_t sub_22DC77058()
{
  v0 = sub_22DCB5B3C();
  v29 = *(v0 - 8);
  v30 = v0;
  MEMORY[0x28223BE20](v0, v1, v2);
  v28 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22DCB5EAC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6, v7);
  v37 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10, v11);
  v36 = &v27 - v12;
  v13 = sub_22DCB5EEC();
  v38 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v14, v15);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_22DCB5DAC();
  v35 = *(result + 16);
  if (v35)
  {
    v19 = 0;
    v33 = v38 + 16;
    v32 = *MEMORY[0x277D46728];
    v31 = (v5 + 104);
    v20 = (v5 + 8);
    v34 = (v38 + 8);
    v21 = v36;
    while (v19 < *(result + 16))
    {
      v22 = result;
      (*(v38 + 16))(v17, result + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v19, v13);
      sub_22DCB5EBC();
      v23 = v37;
      (*v31)(v37, v32, v4);
      sub_22DC77408();
      sub_22DCB61CC();
      sub_22DCB61CC();
      v24 = *v20;
      (*v20)(v23, v4);
      v24(v21, v4);
      if (v40 == v39)
      {

        v25 = v28;
        sub_22DCB5ECC();
        v26 = sub_22DCB5AEC();
        (*(v29 + 8))(v25, v30);
        (*v34)(v17, v13);
        return v26;
      }

      ++v19;
      (*v34)(v17, v13);
      result = v22;
      if (v35 == v19)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    return 0;
  }

  return result;
}

unint64_t sub_22DC77408()
{
  result = qword_27DA2CED0;
  if (!qword_27DA2CED0)
  {
    sub_22DCB5EAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA2CED0);
  }

  return result;
}

uint64_t sub_22DC77460()
{
  v0 = sub_22DCB5FDC();
  __swift_allocate_value_buffer(v0, qword_27DA376C0);
  __swift_project_value_buffer(v0, qword_27DA376C0);
  return sub_22DCB5FCC();
}

uint64_t sub_22DC774E0()
{
  v0 = sub_22DCB5FDC();
  __swift_allocate_value_buffer(v0, qword_27DA376D8);
  __swift_project_value_buffer(v0, qword_27DA376D8);
  return sub_22DCB5FCC();
}

uint64_t IdentifiableFaceCollection.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t IdentifiableFaceCollection.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t IdentifiableFaceCollection.caption.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t IdentifiableFaceCollection.caption.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t IdentifiableFaceCollection.priorities.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t IdentifiableFaceCollection.faces.setter(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

uint64_t IdentifiableFaceCollection.init(name:caption:priorities:expectedIndex:faces:initiallyLoaded:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  return result;
}

uint64_t IdentifiableFaceCollection.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v5 = v2[3];
  v4 = v2[4];
  v7 = v2[5];
  v6 = v2[6];
  if (v2[1])
  {
    sub_22DCB68CC();
    sub_22DCB618C();
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_22DCB68CC();
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_7:
    sub_22DCB68CC();
    goto LABEL_8;
  }

  sub_22DCB68CC();
  if (!v5)
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_22DCB68CC();
  sub_22DCB618C();
  if (!v4)
  {
    goto LABEL_7;
  }

LABEL_4:
  sub_22DCB68CC();
  sub_22DC77DC4(a1, v4);
LABEL_8:
  MEMORY[0x2318D7C70](v7);
  sub_22DC77CC8(a1, v6);
  return sub_22DCB68CC();
}

uint64_t IdentifiableFaceCollection.hashValue.getter()
{
  sub_22DCB68AC();
  IdentifiableFaceCollection.hash(into:)(v1);
  return sub_22DCB68EC();
}

uint64_t sub_22DC778C4()
{
  sub_22DCB68AC();
  IdentifiableFaceCollection.hash(into:)(v1);
  return sub_22DCB68EC();
}

uint64_t sub_22DC77908()
{
  sub_22DCB68AC();
  IdentifiableFaceCollection.hash(into:)(v1);
  return sub_22DCB68EC();
}

void sub_22DC77948(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v3 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 < 0)
    {
      v4 = a1;
    }

    if (v3)
    {
      if (a2 < 0)
      {
        a1 = a2;
      }

      else
      {
        a1 = a2 & 0xFFFFFFFFFFFFFF8;
      }

      a2 = v4;

LABEL_39:
      MEMORY[0x2821FD6E8](a1, a2);
      return;
    }

    v5 = v4;
    goto LABEL_17;
  }

  if (v3)
  {
    if (a2 < 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = a2 & 0xFFFFFFFFFFFFFF8;
    }

    a2 = v2;
LABEL_17:

    sub_22DC77B4C(v5, a2);
    return;
  }

  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v6 = a2;
    v7 = 0;
    v8 = 1 << *(a1 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(a1 + 64);
    v11 = (v8 + 63) >> 6;
    while (v10)
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_32:
      v15 = v12 | (v7 << 6);
      v16 = *(*(v2 + 56) + 8 * v15);
      v17 = *(*(v2 + 48) + 8 * v15);
      v18 = v16;
      v19 = sub_22DC9DDD8(v17);
      v21 = v20;

      if ((v21 & 1) == 0)
      {

        return;
      }

      sub_22DC782AC();
      v22 = *(*(v6 + 56) + 8 * v19);
      v23 = sub_22DCB648C();

      if ((v23 & 1) == 0)
      {
        return;
      }
    }

    v13 = v7;
    while (1)
    {
      v7 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        return;
      }

      v14 = *(v2 + 64 + 8 * v7);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_32;
      }
    }

    __break(1u);
    goto LABEL_39;
  }
}

void sub_22DC77B4C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == sub_22DCB662C())
  {
    v4 = 0;
    v5 = 1 << *(a2 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a2 + 64);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_12:
      v12 = v9 | (v4 << 6);
      v13 = *(*(a2 + 56) + 8 * v12);
      v14 = *(*(a2 + 48) + 8 * v12);
      v15 = v13;
      v16 = sub_22DCB663C();

      if (!v16)
      {

        return;
      }

      sub_22DC782AC();
      swift_dynamicCast();
      v17 = sub_22DCB648C();

      if ((v17 & 1) == 0)
      {
        return;
      }
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a2 + 64 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

void sub_22DC77CC8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  MEMORY[0x2318D7C70](v3);
  if (v3)
  {
    v4 = (a2 + 72);
    do
    {
      v5 = *(v4 - 5);
      v6 = *(v4 - 1);
      v7 = *v4;

      v8 = v5;

      sub_22DCB649C();
      sub_22DCB618C();
      sub_22DCB68CC();
      if (v6)
      {
        sub_22DCB618C();
      }

      MEMORY[0x2318D7C70](v7);

      v4 += 6;
      --v3;
    }

    while (v3);
  }
}

uint64_t sub_22DC77DC4(__int128 *a1, unint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = sub_22DCB661C();
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = v3 | 0x8000000000000000;
  }

  else
  {
    v8 = -1 << *(a2 + 32);
    v5 = ~v8;
    v4 = a2 + 64;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v6 = v10 & *(a2 + 64);
    v7 = a2;
  }

  v11 = (v5 + 64) >> 6;

  v13 = 0;
  v14 = 0;
  v25 = v7;
  if ((v7 & 0x8000000000000000) != 0)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v15 = v6;
    v16 = v14;
    if (!v6)
    {
      break;
    }

LABEL_14:
    v18 = (v15 - 1) & v15;
    v19 = (v16 << 9) | (8 * __clz(__rbit64(v15)));
    v20 = *(*(v7 + 48) + v19);
    v21 = *(*(v7 + 56) + v19);
    v22 = v20;
    v23 = v21;
    if (!v22)
    {
LABEL_20:
      sub_22DC7345C();
      return MEMORY[0x2318D7C70](v13);
    }

    while (1)
    {
      v27 = *a1;
      sub_22DCB649C();

      sub_22DCB649C();
      result = sub_22DCB68EC();
      v13 ^= result;
      v14 = v16;
      v6 = v18;
      v7 = v25;
      if ((v25 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_16:
      v24 = sub_22DCB665C();
      if (v24)
      {
        v26 = v24;
        sub_22DC782AC();
        swift_dynamicCast();
        swift_dynamicCast();
        v23 = v26;
        v22 = v27;
        v16 = v14;
        v18 = v6;
        if (v27)
        {
          continue;
        }
      }

      goto LABEL_20;
    }
  }

  v17 = v14;
  while (1)
  {
    v16 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v16 >= v11)
    {
      goto LABEL_20;
    }

    v15 = *(v4 + 8 * v16);
    ++v17;
    if (v15)
    {
      v7 = v25;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s11NanoTimeKit26IdentifiableFaceCollectionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(a2 + 8);
  v11 = *(a2 + 16);
  v13 = *(a2 + 24);
  v12 = *(a2 + 32);
  v14 = *(a2 + 40);
  v15 = *(a2 + 48);
  v16 = *(a2 + 56);
  if (v3)
  {
    if (!v10)
    {
      return 0;
    }

    if (*a1 != *a2 || v3 != v10)
    {
      v33 = *(a2 + 40);
      v34 = *(a2 + 32);
      v17 = *(a1 + 40);
      v18 = *(a2 + 48);
      v19 = *(a2 + 56);
      v20 = *(a1 + 48);
      v21 = *(a1 + 56);
      v22 = *(a1 + 32);
      v23 = sub_22DCB680C();
      v5 = v22;
      v9 = v21;
      v8 = v20;
      v16 = v19;
      v15 = v18;
      v7 = v17;
      v14 = v33;
      v12 = v34;
      if ((v23 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v10)
  {
    return 0;
  }

  if (v6)
  {
    if (!v13)
    {
      return 0;
    }

    if (v4 != v11 || v6 != v13)
    {
      v24 = v9;
      v25 = v5;
      v26 = sub_22DCB680C();
      v5 = v25;
      v9 = v24;
      if ((v26 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v13)
  {
    return 0;
  }

  if (v5)
  {
    if (v12)
    {
      v27 = v14;
      v28 = v9;
      v29 = v5;

      sub_22DC77948(v29, v12);
      LOBYTE(v29) = v30;

      result = 0;
      if ((v29 & 1) == 0 || v7 != v27)
      {
        return result;
      }

LABEL_24:
      sub_22DC9ABC8(v8, v15);
      if (v32)
      {
        return v28 ^ v16 ^ 1u;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  result = 0;
  if (!v12)
  {
    v28 = v9;
    if (v7 == v14)
    {
      goto LABEL_24;
    }
  }

  return result;
}

unint64_t sub_22DC78194()
{
  result = qword_27DA2D1E0;
  if (!qword_27DA2D1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA2D1E0);
  }

  return result;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_22DC78204(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22DC7824C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_22DC782AC()
{
  result = qword_27DA2CE68;
  if (!qword_27DA2CE68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DA2CE68);
  }

  return result;
}

uint64_t sub_22DC78324(uint64_t a1)
{
  v2 = sub_22DC7C9C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22DC78360(uint64_t a1)
{
  v2 = sub_22DC7C9C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22DC7839C()
{
  if (*v0)
  {
    return 0x70616D7469427063;
  }

  else
  {
    return 1668576097;
  }
}

uint64_t sub_22DC783D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1668576097 && a2 == 0xE400000000000000;
  if (v5 || (sub_22DCB680C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x70616D7469427063 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22DCB680C();

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

uint64_t sub_22DC784AC(uint64_t a1)
{
  v2 = sub_22DC7C91C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22DC784E8(uint64_t a1)
{
  v2 = sub_22DC7C91C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22DC78524(uint64_t a1)
{
  v2 = sub_22DC7C970();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22DC78560(uint64_t a1)
{
  v2 = sub_22DC7C970();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FaceSnapshot.CachedFile.Format.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D1E8);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x28223BE20](v3, v4, v5);
  v24 = &v22 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D1F0);
  v22 = *(v7 - 8);
  v23 = v7;
  MEMORY[0x28223BE20](v7, v8, v9);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D1F8);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14, v15);
  v17 = &v22 - v16;
  v18 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22DC7C91C();
  sub_22DCB690C();
  v19 = (v13 + 8);
  if (v18)
  {
    v28 = 1;
    sub_22DC7C970();
    v20 = v24;
    sub_22DCB675C();
    (*(v25 + 8))(v20, v26);
  }

  else
  {
    v27 = 0;
    sub_22DC7C9C4();
    sub_22DCB675C();
    (*(v22 + 8))(v11, v23);
  }

  return (*v19)(v17, v12);
}

uint64_t FaceSnapshot.CachedFile.Format.hashValue.getter()
{
  v1 = *v0;
  sub_22DCB68AC();
  MEMORY[0x2318D7C70](v1);
  return sub_22DCB68EC();
}

uint64_t FaceSnapshot.CachedFile.Format.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D218);
  v4 = *(v3 - 8);
  v33 = v3;
  v34 = v4;
  MEMORY[0x28223BE20](v3, v5, v6);
  v8 = &v30 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D220);
  v32 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v10, v11);
  v13 = &v30 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D228);
  v35 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v15, v16);
  v18 = &v30 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22DC7C91C();
  v19 = v37;
  sub_22DCB68FC();
  if (v19)
  {
    goto LABEL_7;
  }

  v31 = v9;
  v37 = a1;
  v21 = v35;
  v20 = v36;
  v22 = v18;
  v23 = sub_22DCB674C();
  if (*(v23 + 16) != 1)
  {
    v25 = sub_22DCB658C();
    swift_allocError();
    v27 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D230);
    *v27 = &type metadata for FaceSnapshot.CachedFile.Format;
    sub_22DCB66DC();
    sub_22DCB657C();
    (*(*(v25 - 8) + 104))(v27, *MEMORY[0x277D84160], v25);
    swift_willThrow();
    (*(v21 + 8))(v22, v14);
    swift_unknownObjectRelease();
    a1 = v37;
LABEL_7:
    v28 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v28);
  }

  v30 = v23;
  v24 = *(v23 + 32);
  if (v24)
  {
    v39 = 1;
    sub_22DC7C970();
    sub_22DCB66CC();
    (*(v34 + 8))(v8, v33);
  }

  else
  {
    v38 = 0;
    sub_22DC7C9C4();
    sub_22DCB66CC();
    (*(v32 + 8))(v13, v31);
  }

  (*(v21 + 8))(v22, v14);
  swift_unknownObjectRelease();
  *v20 = v24;
  v28 = v37;
  return __swift_destroy_boxed_opaque_existential_1(v28);
}

uint64_t static FaceSnapshot.CachedFile.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  type metadata accessor for FaceSnapshot.CachedFile(0);

  return sub_22DCB5A6C();
}

uint64_t sub_22DC78E7C()
{
  if (*v0)
  {
    return 7107189;
  }

  else
  {
    return 0x74616D726F66;
  }
}

uint64_t sub_22DC78EAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x74616D726F66 && a2 == 0xE600000000000000;
  if (v6 || (sub_22DCB680C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22DCB680C();

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

uint64_t sub_22DC78F84(uint64_t a1)
{
  v2 = sub_22DC7CA38();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22DC78FC0(uint64_t a1)
{
  v2 = sub_22DC7CA38();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FaceSnapshot.CachedFile.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D238);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7, v8);
  v10 = &v12[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22DC7CA38();
  sub_22DCB690C();
  v12[15] = *v3;
  v12[14] = 0;
  sub_22DC7CA8C();
  sub_22DCB67BC();
  if (!v2)
  {
    type metadata accessor for FaceSnapshot.CachedFile(0);
    v12[13] = 1;
    sub_22DCB5A8C();
    sub_22DC7CAE0(&qword_27DA2D250, MEMORY[0x277CC9260]);
    sub_22DCB67BC();
  }

  return (*(v6 + 8))(v10, v5);
}

uint64_t FaceSnapshot.CachedFile.hash(into:)()
{
  MEMORY[0x2318D7C70](*v0);
  type metadata accessor for FaceSnapshot.CachedFile(0);
  sub_22DCB5A8C();
  sub_22DC7CAE0(&qword_27DA2D258, MEMORY[0x277CC9260]);
  return sub_22DCB60EC();
}

uint64_t FaceSnapshot.CachedFile.hashValue.getter()
{
  sub_22DCB68AC();
  MEMORY[0x2318D7C70](*v0);
  type metadata accessor for FaceSnapshot.CachedFile(0);
  sub_22DCB5A8C();
  sub_22DC7CAE0(&qword_27DA2D258, MEMORY[0x277CC9260]);
  sub_22DCB60EC();
  return sub_22DCB68EC();
}

uint64_t FaceSnapshot.CachedFile.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v29 = sub_22DCB5A8C();
  v26 = *(v29 - 8);
  MEMORY[0x28223BE20](v29, v4, v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D260);
  v28 = *(v30 - 8);
  MEMORY[0x28223BE20](v30, v8, v9);
  v11 = &v23 - v10;
  v12 = type metadata accessor for FaceSnapshot.CachedFile(0);
  MEMORY[0x28223BE20](v12, v13, v14);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22DC7CA38();
  sub_22DCB68FC();
  if (!v2)
  {
    v25 = v12;
    v17 = v16;
    v19 = v28;
    v18 = v29;
    v32 = 0;
    sub_22DC7CB28();
    v20 = v30;
    sub_22DCB673C();
    v24 = v17;
    *v17 = v33;
    v31 = 1;
    sub_22DC7CAE0(&qword_27DA2D270, MEMORY[0x277CC9260]);
    sub_22DCB673C();
    (*(v19 + 8))(v11, v20);
    v21 = v24;
    (*(v26 + 32))(&v24[*(v25 + 20)], v7, v18);
    sub_22DC7CE14(v21, v27, type metadata accessor for FaceSnapshot.CachedFile);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_22DC79630()
{
  sub_22DCB68AC();
  MEMORY[0x2318D7C70](*v0);
  sub_22DCB5A8C();
  sub_22DC7CAE0(&qword_27DA2D258, MEMORY[0x277CC9260]);
  sub_22DCB60EC();
  return sub_22DCB68EC();
}

uint64_t sub_22DC796DC()
{
  MEMORY[0x2318D7C70](*v0);
  sub_22DCB5A8C();
  sub_22DC7CAE0(&qword_27DA2D258, MEMORY[0x277CC9260]);
  return sub_22DCB60EC();
}

uint64_t sub_22DC79770()
{
  sub_22DCB68AC();
  MEMORY[0x2318D7C70](*v0);
  sub_22DCB5A8C();
  sub_22DC7CAE0(&qword_27DA2D258, MEMORY[0x277CC9260]);
  sub_22DCB60EC();
  return sub_22DCB68EC();
}

uint64_t sub_22DC79848(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    return sub_22DCB5A6C();
  }

  else
  {
    return 0;
  }
}

uint64_t FaceSnapshot.Context.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22DCB5ADC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t FaceSnapshot.Context.date.setter(uint64_t a1)
{
  v3 = sub_22DCB5ADC();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_22DC7998C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t sub_22DC79A44(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v6 = *(a2(0) + 20);
  v7 = a3(0);
  v8 = *(*(v7 - 8) + 40);

  return v8(v3 + v6, a1, v7);
}

uint64_t FaceSnapshot.Context.monogram.getter()
{
  v1 = *(v0 + *(type metadata accessor for FaceSnapshot.Context(0) + 24));

  return v1;
}

uint64_t FaceSnapshot.Context.monogram.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for FaceSnapshot.Context(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t FaceSnapshot.Context.locale.getter()
{
  v1 = *(v0 + *(type metadata accessor for FaceSnapshot.Context(0) + 28));

  return v1;
}

uint64_t FaceSnapshot.Context.locale.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for FaceSnapshot.Context(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t FaceSnapshot.Context.uses24hTime.setter(char a1)
{
  result = type metadata accessor for FaceSnapshot.Context(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t FaceSnapshot.Context.buildVersion.getter()
{
  v1 = *(v0 + *(type metadata accessor for FaceSnapshot.Context(0) + 36));

  return v1;
}

uint64_t FaceSnapshot.Context.buildVersion.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for FaceSnapshot.Context(0) + 36));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t FaceSnapshot.Context.tzVersion.getter()
{
  v1 = *(v0 + *(type metadata accessor for FaceSnapshot.Context(0) + 40));

  return v1;
}

uint64_t FaceSnapshot.Context.tzVersion.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for FaceSnapshot.Context(0) + 40));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t FaceSnapshot.Context.enhanceTextLegibilityEnabled.setter(char a1)
{
  result = type metadata accessor for FaceSnapshot.Context(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t FaceSnapshot.Context.lunarCalendarLocaleID.getter()
{
  v1 = *(v0 + *(type metadata accessor for FaceSnapshot.Context(0) + 48));

  return v1;
}

uint64_t FaceSnapshot.Context.lunarCalendarLocaleID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for FaceSnapshot.Context(0) + 48));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_22DC7A060(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 1702125924;
    v6 = 0x6D6172676F6E6F6DLL;
    if (a1 != 2)
    {
      v6 = 0x656C61636F6CLL;
    }

    if (a1)
    {
      v5 = 0x7261646E656C6163;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x6F69737265567A74;
    v2 = 0xD00000000000001CLL;
    if (a1 != 7)
    {
      v2 = 0xD000000000000015;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x5468343273657375;
    if (a1 != 4)
    {
      v3 = 0x726556646C697562;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_22DC7A198@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22DC7DBBC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22DC7A1CC(uint64_t a1)
{
  v2 = sub_22DC7CB9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22DC7A208(uint64_t a1)
{
  v2 = sub_22DC7CB9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FaceSnapshot.Context.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D278);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5, v6);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22DC7CB9C();
  sub_22DCB690C();
  v10[15] = 0;
  sub_22DCB5ADC();
  sub_22DC7CAE0(&qword_27DA2D288, MEMORY[0x277CC9578]);
  sub_22DCB67BC();
  if (!v1)
  {
    type metadata accessor for FaceSnapshot.Context(0);
    v10[14] = 1;
    sub_22DCB5B5C();
    sub_22DC7CAE0(&qword_27DA2D290, MEMORY[0x277CC99E8]);
    sub_22DCB67BC();
    v10[13] = 2;
    sub_22DCB676C();
    v10[12] = 3;
    sub_22DCB679C();
    v10[11] = 4;
    sub_22DCB67AC();
    v10[10] = 5;
    sub_22DCB679C();
    v10[9] = 6;
    sub_22DCB679C();
    v10[8] = 7;
    sub_22DCB67AC();
    v10[7] = 8;
    sub_22DCB676C();
  }

  return (*(v4 + 8))(v8, v3);
}

uint64_t FaceSnapshot.Context.hash(into:)()
{
  sub_22DCB5ADC();
  sub_22DC7CAE0(&qword_27DA2D298, MEMORY[0x277CC9578]);
  sub_22DCB60EC();
  v1 = type metadata accessor for FaceSnapshot.Context(0);
  sub_22DCB5B5C();
  sub_22DC7CAE0(&qword_27DA2D2A0, MEMORY[0x277CC99E8]);
  sub_22DCB60EC();
  if (*(v0 + *(v1 + 24) + 8))
  {
    sub_22DCB68CC();
    sub_22DCB618C();
  }

  else
  {
    sub_22DCB68CC();
  }

  sub_22DCB618C();
  sub_22DCB68CC();
  sub_22DCB618C();
  sub_22DCB618C();
  sub_22DCB68CC();
  if (!*(v0 + *(v1 + 48) + 8))
  {
    return sub_22DCB68CC();
  }

  sub_22DCB68CC();

  return sub_22DCB618C();
}

uint64_t FaceSnapshot.Context.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = sub_22DCB5B5C();
  v49 = *(v3 - 8);
  v50 = v3;
  MEMORY[0x28223BE20](v3, v4, v5);
  v7 = v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22DCB5ADC();
  v47 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9, v10);
  v51 = v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D2A8);
  v48 = *(v53 - 8);
  MEMORY[0x28223BE20](v53, v12, v13);
  v15 = v45 - v14;
  v16 = type metadata accessor for FaceSnapshot.Context(0);
  MEMORY[0x28223BE20](v16, v17, v18);
  v20 = v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22DC7CB9C();
  v52 = v15;
  v21 = v54;
  sub_22DCB68FC();
  if (v21)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v22 = v7;
    v54 = v16;
    v23 = v48;
    v24 = v49;
    v25 = v50;
    v63 = 0;
    sub_22DC7CAE0(&qword_27DA2D2B0, MEMORY[0x277CC9578]);
    sub_22DCB673C();
    (*(v47 + 32))(v20, v51, v8);
    v62 = 1;
    sub_22DC7CAE0(&qword_27DA2D2B8, MEMORY[0x277CC99E8]);
    sub_22DCB673C();
    v45[1] = v8;
    (*(v24 + 32))(&v20[v54[5]], v22, v25);
    v61 = 2;
    v45[0] = 0;
    v26 = sub_22DCB66EC();
    v27 = v20;
    v28 = v54;
    v29 = (v27 + v54[6]);
    *v29 = v26;
    v29[1] = v30;
    v51 = v30;
    v60 = 3;
    v31 = sub_22DCB671C();
    v32 = (v27 + v28[7]);
    *v32 = v31;
    v32[1] = v33;
    v59 = 4;
    *(v27 + v28[8]) = sub_22DCB672C() & 1;
    v58 = 5;
    v34 = sub_22DCB671C();
    v35 = (v27 + v28[9]);
    *v35 = v34;
    v35[1] = v36;
    v57 = 6;
    v37 = sub_22DCB671C();
    v38 = (v27 + v28[10]);
    *v38 = v37;
    v38[1] = v39;
    v56 = 7;
    *(v27 + v28[11]) = sub_22DCB672C() & 1;
    v55 = 8;
    v40 = sub_22DCB66EC();
    v42 = v41;
    v43 = (v27 + v54[12]);
    (*(v23 + 8))(v52, v53);
    *v43 = v40;
    v43[1] = v42;
    sub_22DC7CCF0(v27, v46, type metadata accessor for FaceSnapshot.Context);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_22DC7CE7C(v27, type metadata accessor for FaceSnapshot.Context);
  }
}

uint64_t FaceSnapshot.snapshotKey.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FaceSnapshot.snapshotKey.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t FaceSnapshot.rawSnapshotKey.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FaceSnapshot.rawSnapshotKey.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t FaceSnapshot.blankComplications.setter(char a1)
{
  result = type metadata accessor for FaceSnapshot(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t FaceSnapshot.lastComplicationRegistrationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FaceSnapshot(0) + 32);

  return sub_22DC7CC10(v3, a1);
}

uint64_t FaceSnapshot.lastComplicationRegistrationDate.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for FaceSnapshot(0) + 32);

  return sub_22DC7CC80(a1, v3);
}

uint64_t FaceSnapshot.versionOverride.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for FaceSnapshot(0);
  v6 = v2 + *(result + 36);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t sub_22DC7B3E8()
{
  v1 = *v0;
  v2 = 0x746F687370616E73;
  v3 = 0x4F6E6F6973726576;
  if (v1 != 5)
  {
    v3 = 0x6946646568636163;
  }

  v4 = 0xD000000000000012;
  if (v1 != 3)
  {
    v4 = 0xD000000000000020;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x7370616E53776172;
  if (v1 != 1)
  {
    v5 = 0x747865746E6F63;
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

uint64_t sub_22DC7B4EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22DC7DEB4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22DC7B520(uint64_t a1)
{
  v2 = sub_22DC7CDC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22DC7B55C(uint64_t a1)
{
  v2 = sub_22DC7CDC0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FaceSnapshot.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D2C8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5, v6);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22DC7CDC0();
  sub_22DCB690C();
  v10[15] = 0;
  sub_22DCB679C();
  if (!v1)
  {
    v10[14] = 1;
    sub_22DCB679C();
    type metadata accessor for FaceSnapshot(0);
    v10[13] = 2;
    type metadata accessor for FaceSnapshot.Context(0);
    sub_22DC7CAE0(&qword_27DA2D2D8, type metadata accessor for FaceSnapshot.Context);
    sub_22DCB67BC();
    v10[12] = 3;
    sub_22DCB67AC();
    v10[11] = 4;
    sub_22DCB5ADC();
    sub_22DC7CAE0(&qword_27DA2D288, MEMORY[0x277CC9578]);
    sub_22DCB678C();
    v10[10] = 5;
    sub_22DCB677C();
    v10[9] = 6;
    type metadata accessor for FaceSnapshot.CachedFile(0);
    sub_22DC7CAE0(&qword_27DA2D2E0, type metadata accessor for FaceSnapshot.CachedFile);
    sub_22DCB67BC();
  }

  return (*(v4 + 8))(v8, v3);
}

uint64_t FaceSnapshot.hash(into:)()
{
  v1 = sub_22DCB5ADC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3, v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D2C0);
  MEMORY[0x28223BE20](v7 - 8, v8, v9);
  v11 = &v16 - v10;
  sub_22DCB618C();
  sub_22DCB618C();
  v12 = type metadata accessor for FaceSnapshot(0);
  FaceSnapshot.Context.hash(into:)();
  sub_22DCB68CC();
  sub_22DC7CC10(v0 + v12[8], v11);
  if ((*(v2 + 48))(v11, 1, v1) == 1)
  {
    sub_22DCB68CC();
  }

  else
  {
    (*(v2 + 32))(v6, v11, v1);
    sub_22DCB68CC();
    sub_22DC7CAE0(&qword_27DA2D298, MEMORY[0x277CC9578]);
    sub_22DCB60EC();
    (*(v2 + 8))(v6, v1);
  }

  v13 = (v0 + v12[9]);
  if (*(v13 + 8) == 1)
  {
    sub_22DCB68CC();
  }

  else
  {
    v14 = *v13;
    sub_22DCB68CC();
    MEMORY[0x2318D7C70](v14);
  }

  MEMORY[0x2318D7C70](*(v0 + v12[10]));
  type metadata accessor for FaceSnapshot.CachedFile(0);
  sub_22DCB5A8C();
  sub_22DC7CAE0(&qword_27DA2D258, MEMORY[0x277CC9260]);
  return sub_22DCB60EC();
}

uint64_t sub_22DC7BBD4(void (*a1)(_BYTE *))
{
  sub_22DCB68AC();
  a1(v3);
  return sub_22DCB68EC();
}

uint64_t FaceSnapshot.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v50 = type metadata accessor for FaceSnapshot.CachedFile(0);
  MEMORY[0x28223BE20](v50, v3, v4);
  v49 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D2C0);
  MEMORY[0x28223BE20](v6 - 8, v7, v8);
  v51 = &v47 - v9;
  v53 = type metadata accessor for FaceSnapshot.Context(0);
  MEMORY[0x28223BE20](v53, v10, v11);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D2E8);
  v52 = *(v54 - 8);
  MEMORY[0x28223BE20](v54, v14, v15);
  v17 = &v47 - v16;
  v18 = type metadata accessor for FaceSnapshot(0);
  MEMORY[0x28223BE20](v18, v19, v20);
  v22 = (&v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = *(v23 + 32);
  v25 = sub_22DCB5ADC();
  v26 = *(*(v25 - 8) + 56);
  v57 = v24;
  v27 = v22;
  v26(v22 + v24, 1, 1, v25);
  v28 = a1[3];
  v56 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v28);
  sub_22DC7CDC0();
  v55 = v17;
  v29 = v58;
  sub_22DCB68FC();
  if (v29)
  {
    v58 = v29;
    __swift_destroy_boxed_opaque_existential_1(v56);
    v33 = v57;
    return sub_22D9CA164(v27 + v33, &qword_27DA2D2C0);
  }

  v30 = v52;
  v47 = v25;
  v31 = v13;
  v65 = 0;
  v32 = v54;
  *v22 = sub_22DCB671C();
  v22[1] = v35;
  v64 = 1;
  v22[2] = sub_22DCB671C();
  v22[3] = v36;
  v63 = 2;
  sub_22DC7CAE0(&qword_27DA2D2F0, type metadata accessor for FaceSnapshot.Context);
  sub_22DCB673C();
  v58 = 0;
  sub_22DC7CE14(v31, v22 + v18[6], type metadata accessor for FaceSnapshot.Context);
  v62 = 3;
  v37 = v58;
  v38 = sub_22DCB672C();
  v58 = v37;
  if (v37 || (*(v22 + v18[7]) = v38 & 1, v61 = 4, sub_22DC7CAE0(&qword_27DA2D2B0, MEMORY[0x277CC9578]), v39 = v51, v40 = v58, sub_22DCB670C(), (v58 = v40) != 0))
  {
    (*(v30 + 8))(v55, v32);
    v33 = v57;
LABEL_8:
    __swift_destroy_boxed_opaque_existential_1(v56);

    sub_22DC7CE7C(v27 + v18[6], type metadata accessor for FaceSnapshot.Context);
    return sub_22D9CA164(v27 + v33, &qword_27DA2D2C0);
  }

  v33 = v57;
  sub_22DC7CC80(v39, v27 + v57);
  v60 = 5;
  v41 = v58;
  v42 = sub_22DCB66FC();
  v58 = v41;
  if (v41)
  {
    (*(v30 + 8))(v55, v32);
    goto LABEL_8;
  }

  v44 = v27 + v18[9];
  *v44 = v42;
  *(v44 + 8) = v43 & 1;
  v59 = 6;
  sub_22DC7CAE0(&qword_27DA2D2F8, type metadata accessor for FaceSnapshot.CachedFile);
  v45 = v49;
  v46 = v58;
  sub_22DCB673C();
  v58 = v46;
  if (v46)
  {
    (*(v30 + 8))(v55, v54);
    goto LABEL_8;
  }

  (*(v30 + 8))(v55, v54);
  sub_22DC7CE14(v45, v27 + v18[10], type metadata accessor for FaceSnapshot.CachedFile);
  sub_22DC7CCF0(v27, v48, type metadata accessor for FaceSnapshot);
  __swift_destroy_boxed_opaque_existential_1(v56);
  return sub_22DC7CE7C(v27, type metadata accessor for FaceSnapshot);
}

uint64_t sub_22DC7C2B0(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  sub_22DCB68AC();
  a3(v5);
  return sub_22DCB68EC();
}

uint64_t sub_22DC7C314(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_22DCB68AC();
  a4(v6);
  return sub_22DCB68EC();
}

BOOL _s11NanoTimeKit12FaceSnapshotV7ContextV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_22DCB5ACC() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for FaceSnapshot.Context(0);
  if ((MEMORY[0x2318D6F00](a1 + v4[5], a2 + v4[5]) & 1) == 0)
  {
    return 0;
  }

  v5 = v4[6];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    v10 = *v6 == *v8 && v7 == v9;
    if (!v10 && (sub_22DCB680C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v11 = v4[7];
  v12 = *(a1 + v11);
  v13 = *(a1 + v11 + 8);
  v14 = (a2 + v11);
  v15 = v12 == *v14 && v13 == v14[1];
  if (!v15 && (sub_22DCB680C() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + v4[8]) != *(a2 + v4[8]))
  {
    return 0;
  }

  v16 = v4[9];
  v17 = *(a1 + v16);
  v18 = *(a1 + v16 + 8);
  v19 = (a2 + v16);
  v20 = v17 == *v19 && v18 == v19[1];
  if (!v20 && (sub_22DCB680C() & 1) == 0)
  {
    return 0;
  }

  v21 = v4[10];
  v22 = *(a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  if ((v22 != *v24 || v23 != v24[1]) && (sub_22DCB680C() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + v4[11]) != *(a2 + v4[11]))
  {
    return 0;
  }

  v26 = v4[12];
  v27 = (a1 + v26);
  v28 = *(a1 + v26 + 8);
  v29 = (a2 + v26);
  v30 = v29[1];
  if (v28)
  {
    return v30 && (*v27 == *v29 && v28 == v30 || (sub_22DCB680C() & 1) != 0);
  }

  return !v30;
}

BOOL _s11NanoTimeKit12FaceSnapshotV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_22DCB5ADC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6, v7);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D2C0);
  MEMORY[0x28223BE20](v10 - 8, v11, v12);
  v14 = &v33 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D3E8);
  MEMORY[0x28223BE20](v15, v16, v17);
  v19 = &v33 - v18;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_22DCB680C() & 1) == 0)
  {
    return 0;
  }

  if ((a1[2] != a2[2] || a1[3] != a2[3]) && (sub_22DCB680C() & 1) == 0)
  {
    return 0;
  }

  v20 = type metadata accessor for FaceSnapshot(0);
  if (!_s11NanoTimeKit12FaceSnapshotV7ContextV2eeoiySbAE_AEtFZ_0(a1 + v20[6], a2 + v20[6]) || *(a1 + v20[7]) != *(a2 + v20[7]))
  {
    return 0;
  }

  v21 = v20[8];
  v22 = *(v15 + 48);
  sub_22DC7CC10(a1 + v21, v19);
  sub_22DC7CC10(a2 + v21, &v19[v22]);
  v34 = v5;
  v23 = *(v5 + 48);
  if (v23(v19, 1, v4) == 1)
  {
    if (v23(&v19[v22], 1, v4) == 1)
    {
      sub_22D9CA164(v19, &qword_27DA2D2C0);
      goto LABEL_17;
    }

LABEL_14:
    sub_22D9CA164(v19, &qword_27DA2D3E8);
    return 0;
  }

  sub_22DC7CC10(v19, v14);
  if (v23(&v19[v22], 1, v4) == 1)
  {
    (*(v34 + 8))(v14, v4);
    goto LABEL_14;
  }

  v25 = v34;
  (*(v34 + 32))(v9, &v19[v22], v4);
  sub_22DC7CAE0(&unk_27DA2D3F0, MEMORY[0x277CC9578]);
  v26 = sub_22DCB610C();
  v27 = *(v25 + 8);
  v27(v9, v4);
  v27(v14, v4);
  sub_22D9CA164(v19, &qword_27DA2D2C0);
  if ((v26 & 1) == 0)
  {
    return 0;
  }

LABEL_17:
  v28 = v20[9];
  v29 = (a1 + v28);
  v30 = *(a1 + v28 + 8);
  v31 = (a2 + v28);
  v32 = *(a2 + v28 + 8);
  if (v30)
  {
    if (v32)
    {
      goto LABEL_23;
    }

    return 0;
  }

  if (*v29 != *v31)
  {
    LOBYTE(v32) = 1;
  }

  if (v32)
  {
    return 0;
  }

LABEL_23:
  if (*(a1 + v20[10]) != *(a2 + v20[10]))
  {
    return 0;
  }

  type metadata accessor for FaceSnapshot.CachedFile(0);
  return (sub_22DCB5A6C() & 1) != 0;
}

unint64_t sub_22DC7C91C()
{
  result = qword_27DA2D200;
  if (!qword_27DA2D200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA2D200);
  }

  return result;
}

unint64_t sub_22DC7C970()
{
  result = qword_27DA2D208;
  if (!qword_27DA2D208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA2D208);
  }

  return result;
}

unint64_t sub_22DC7C9C4()
{
  result = qword_27DA2D210;
  if (!qword_27DA2D210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA2D210);
  }

  return result;
}

unint64_t sub_22DC7CA38()
{
  result = qword_27DA2D240;
  if (!qword_27DA2D240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA2D240);
  }

  return result;
}

unint64_t sub_22DC7CA8C()
{
  result = qword_27DA2D248;
  if (!qword_27DA2D248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA2D248);
  }

  return result;
}

uint64_t sub_22DC7CAE0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_22DC7CB28()
{
  result = qword_27DA2D268;
  if (!qword_27DA2D268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA2D268);
  }

  return result;
}

unint64_t sub_22DC7CB9C()
{
  result = qword_27DA2D280;
  if (!qword_27DA2D280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA2D280);
  }

  return result;
}

uint64_t sub_22DC7CC10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D2C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22DC7CC80(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D2C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22DC7CCF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22DC7CD58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

unint64_t sub_22DC7CDC0()
{
  result = qword_27DA2D2D0;
  if (!qword_27DA2D2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA2D2D0);
  }

  return result;
}

uint64_t sub_22DC7CE14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22DC7CE7C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_22DC7CEE0()
{
  result = qword_27DA2D300;
  if (!qword_27DA2D300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA2D300);
  }

  return result;
}

void sub_22DC7D034()
{
  type metadata accessor for FaceSnapshot.Context(319);
  if (v0 <= 0x3F)
  {
    sub_22DC7D110();
    if (v1 <= 0x3F)
    {
      sub_22DC7D310(319, &qword_27DA2D338);
      if (v2 <= 0x3F)
      {
        type metadata accessor for FaceSnapshot.CachedFile(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_22DC7D110()
{
  if (!qword_27DA2D330)
  {
    sub_22DCB5ADC();
    v0 = sub_22DCB64AC();
    if (!v1)
    {
      atomic_store(v0, &qword_27DA2D330);
    }
  }
}

uint64_t sub_22DC7D190()
{
  result = sub_22DCB5A8C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_22DC7D244()
{
  sub_22DCB5ADC();
  if (v0 <= 0x3F)
  {
    sub_22DCB5B5C();
    if (v1 <= 0x3F)
    {
      sub_22DC7D310(319, &qword_27DA2D360);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22DC7D310(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_22DCB64AC();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for FaceSnapshot.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FaceSnapshot.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FaceSnapshot.Context.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FaceSnapshot.Context.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22DC7D640()
{
  result = qword_27DA2D368;
  if (!qword_27DA2D368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA2D368);
  }

  return result;
}

unint64_t sub_22DC7D698()
{
  result = qword_27DA2D370;
  if (!qword_27DA2D370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA2D370);
  }

  return result;
}

unint64_t sub_22DC7D6F0()
{
  result = qword_27DA2D378;
  if (!qword_27DA2D378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA2D378);
  }

  return result;
}

unint64_t sub_22DC7D748()
{
  result = qword_27DA2D380;
  if (!qword_27DA2D380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA2D380);
  }

  return result;
}

unint64_t sub_22DC7D7A0()
{
  result = qword_27DA2D388;
  if (!qword_27DA2D388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA2D388);
  }

  return result;
}

unint64_t sub_22DC7D7F8()
{
  result = qword_27DA2D390;
  if (!qword_27DA2D390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA2D390);
  }

  return result;
}

unint64_t sub_22DC7D850()
{
  result = qword_27DA2D398;
  if (!qword_27DA2D398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA2D398);
  }

  return result;
}

unint64_t sub_22DC7D8A8()
{
  result = qword_27DA2D3A0;
  if (!qword_27DA2D3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA2D3A0);
  }

  return result;
}

unint64_t sub_22DC7D900()
{
  result = qword_27DA2D3A8;
  if (!qword_27DA2D3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA2D3A8);
  }

  return result;
}

unint64_t sub_22DC7D958()
{
  result = qword_27DA2D3B0;
  if (!qword_27DA2D3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA2D3B0);
  }

  return result;
}

unint64_t sub_22DC7D9B0()
{
  result = qword_27DA2D3B8;
  if (!qword_27DA2D3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA2D3B8);
  }

  return result;
}

unint64_t sub_22DC7DA08()
{
  result = qword_27DA2D3C0;
  if (!qword_27DA2D3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA2D3C0);
  }

  return result;
}

unint64_t sub_22DC7DA60()
{
  result = qword_27DA2D3C8;
  if (!qword_27DA2D3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA2D3C8);
  }

  return result;
}

unint64_t sub_22DC7DAB8()
{
  result = qword_27DA2D3D0;
  if (!qword_27DA2D3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA2D3D0);
  }

  return result;
}

unint64_t sub_22DC7DB10()
{
  result = qword_27DA2D3D8;
  if (!qword_27DA2D3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA2D3D8);
  }

  return result;
}

unint64_t sub_22DC7DB68()
{
  result = qword_27DA2D3E0;
  if (!qword_27DA2D3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA2D3E0);
  }

  return result;
}

uint64_t sub_22DC7DBBC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v3 || (sub_22DCB680C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7261646E656C6163 && a2 == 0xE800000000000000 || (sub_22DCB680C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D6172676F6E6F6DLL && a2 == 0xE800000000000000 || (sub_22DCB680C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000 || (sub_22DCB680C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x5468343273657375 && a2 == 0xEB00000000656D69 || (sub_22DCB680C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x726556646C697562 && a2 == 0xEC0000006E6F6973 || (sub_22DCB680C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6F69737265567A74 && a2 == 0xE90000000000006ELL || (sub_22DCB680C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD00000000000001CLL && 0x800000022DD10260 == a2 || (sub_22DCB680C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000015 && 0x800000022DD10280 == a2)
  {

    return 8;
  }

  else
  {
    v6 = sub_22DCB680C();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_22DC7DEB4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746F687370616E73 && a2 == 0xEB0000000079654BLL;
  if (v4 || (sub_22DCB680C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7370616E53776172 && a2 == 0xEE0079654B746F68 || (sub_22DCB680C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x747865746E6F63 && a2 == 0xE700000000000000 || (sub_22DCB680C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x800000022DD102A0 == a2 || (sub_22DCB680C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000020 && 0x800000022DD102C0 == a2 || (sub_22DCB680C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x4F6E6F6973726576 && a2 == 0xEF65646972726576 || (sub_22DCB680C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6946646568636163 && a2 == 0xEA0000000000656CLL)
  {

    return 6;
  }

  else
  {
    v6 = sub_22DCB680C();

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

void __swiftcall NTKReplicatedSnapshotListenerService.init()(NTKReplicatedSnapshotListenerService *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

id NTKReplicatedSnapshotListenerService.init()()
{
  v1 = v0;
  v2 = OBJC_IVAR___NTKReplicatedSnapshotListenerService_service;
  type metadata accessor for ReplicationListenerService();
  v3 = swift_allocObject();
  sub_22DC7E344();
  *&v1[v2] = v3;
  v5.receiver = v1;
  v5.super_class = NTKReplicatedSnapshotListenerService;
  return objc_msgSendSuper2(&v5, sel_init);
}

id sub_22DC7E2A0()
{
  v1 = swift_allocObject();
  swift_defaultActor_initialize();
  type metadata accessor for SnapshotReplicationStore();
  v2 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D4B8);
  v3 = swift_allocObject();
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0;
  *(v2 + 16) = v3;
  v1[14] = v2;
  v5.receiver = v1;
  v5.super_class = v0;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_22DC7E344()
{
  v1 = v0;
  swift_defaultActor_initialize();
  v2 = type metadata accessor for ReplicationListenerService.ServerDelegate();
  v3 = swift_allocObject();
  swift_defaultActor_initialize();
  type metadata accessor for SnapshotReplicationStore();
  v4 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D4B8);
  v5 = swift_allocObject();
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0;
  *(v4 + 16) = v5;
  v3[14] = v4;
  v14.receiver = v3;
  v14.super_class = v2;
  *(v1 + 120) = objc_msgSendSuper2(&v14, sel_init);
  v6 = objc_allocWithZone(MEMORY[0x277CCAE98]);
  v7 = sub_22DCB611C();
  v8 = [v6 initWithMachServiceName_];

  *(v1 + 112) = v8;
  [v8 setDelegate_];
  [*(v1 + 112) resume];
  if (qword_280C106F0 != -1)
  {
    swift_once();
  }

  v9 = sub_22DCB5FDC();
  __swift_project_value_buffer(v9, qword_280C11198);
  v10 = sub_22DCB5FBC();
  v11 = sub_22DCB63CC();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_22D9C5000, v10, v11, "listener service started…", v12, 2u);
    MEMORY[0x2318DAAC0](v12, -1, -1);
  }

  return v1;
}

unint64_t type metadata accessor for NTKReplicatedSnapshotListenerService()
{
  result = qword_27DA2D418;
  if (!qword_27DA2D418)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DA2D418);
  }

  return result;
}

uint64_t sub_22DC7E578()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22DC7E5B8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_22DC7E5FC(uint64_t a1, const char *a2)
{
  v4 = sub_22DCB5B3C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6, v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280C106F0 != -1)
  {
    swift_once();
  }

  v10 = sub_22DCB5FDC();
  __swift_project_value_buffer(v10, qword_280C11198);
  (*(v5 + 16))(v9, a1, v4);
  v11 = sub_22DCB5FBC();
  v12 = sub_22DCB63CC();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v20 = v14;
    *v13 = 136315138;
    sub_22DC8ADAC(&unk_27DA2D490, MEMORY[0x277CC95F0]);
    v15 = sub_22DCB67DC();
    v17 = v16;
    (*(v5 + 8))(v9, v4);
    v18 = sub_22DC87280(v15, v17, &v20);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_22D9C5000, v11, v12, a2, v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x2318DAAC0](v14, -1, -1);
    MEMORY[0x2318DAAC0](v13, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v9, v4);
  }
}

uint64_t sub_22DC7E86C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA2D510);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_22DCEAE00;
  MEMORY[0x2318D7550](0x203A726F727265, 0xE700000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D820);
  sub_22DCB660C();
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  sub_22DCB688C();
}

void sub_22DC7E95C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_22DC7EA54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  return MEMORY[0x2822009F8](sub_22DC7EA78, 0, 0);
}

uint64_t sub_22DC7EA78()
{
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *(v2 + 16) = *(v0 + 24);
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *v3 = v0;
  v3[1] = sub_22DC7EB6C;
  v4 = *(v0 + 16);
  v5 = MEMORY[0x277D84F78] + 8;
  v6 = MEMORY[0x277D84F78] + 8;
  v7 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200600](v4, v5, v6, 0, 0, &unk_22DCEBE70, v2, v7);
}

uint64_t sub_22DC7EB6C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_22DC7EC7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[2] = a2;
  v5[3] = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D4C8);
  v5[6] = v6;
  v7 = *(v6 - 8);
  v5[7] = v7;
  v5[8] = *(v7 + 64);
  v5[9] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D4D8);
  v5[10] = v8;
  v9 = *(v8 - 8);
  v5[11] = v9;
  v5[12] = *(v9 + 64);
  v5[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA2D440);
  v5[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22DC7EDFC, 0, 0);
}

uint64_t sub_22DC7EDFC()
{
  if (qword_280C106F0 != -1)
  {
    swift_once();
  }

  v1 = sub_22DCB5FDC();
  __swift_project_value_buffer(v1, qword_280C11198);
  v2 = sub_22DCB5FBC();
  v3 = sub_22DCB63DC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_22D9C5000, v2, v3, "sending library snapshots to listener…", v4, 2u);
    MEMORY[0x2318DAAC0](v4, -1, -1);
  }

  v6 = v0[13];
  v5 = v0[14];
  v8 = v0[11];
  v7 = v0[12];
  v9 = v0[10];
  v11 = v0[3];
  v10 = v0[4];

  v12 = sub_22DCB62BC();
  v30 = *(*(v12 - 8) + 56);
  v31 = v12;
  v30(v5, 1, 1);
  (*(v8 + 16))(v6, v11, v9);
  v13 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  (*(v8 + 32))(v14 + v13, v6, v9);
  *(v14 + ((v7 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = v10;
  swift_unknownObjectRetain();
  sub_22DC7FD78(v5, &unk_22DCEBE80, v14);
  sub_22D9CA164(v5, &unk_27DA2D440);
  v15 = sub_22DCB5FBC();
  v16 = sub_22DCB63DC();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_22D9C5000, v15, v16, "sending gallery snapshots to listener…", v17, 2u);
    MEMORY[0x2318DAAC0](v17, -1, -1);
  }

  v18 = v0[14];
  v20 = v0[8];
  v19 = v0[9];
  v22 = v0[6];
  v21 = v0[7];
  v24 = v0[4];
  v23 = v0[5];

  (v30)(v18, 1, 1, v31);
  (*(v21 + 16))(v19, v23, v22);
  v25 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v26 = (v20 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  (*(v21 + 32))(v27 + v25, v19, v22);
  *(v27 + v26) = v24;
  swift_unknownObjectRetain();
  sub_22DC7FD78(v18, &unk_22DCEBE90, v27);
  sub_22D9CA164(v18, &unk_27DA2D440);

  v28 = v0[1];

  return v28();
}

uint64_t sub_22DC7F1B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for LibrarySnapshot();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2CFD0);
  v5[7] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA2D500);
  v5[8] = v7;
  v5[9] = *(v7 - 8);
  v5[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22DC7F310, 0, 0);
}

uint64_t sub_22DC7F310()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D4D8);
  sub_22DCB631C();
  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_22DC7F3D8;
  v2 = v0[7];
  v3 = v0[8];

  return MEMORY[0x2822003E8](v2, 0, 0, v3);
}

uint64_t sub_22DC7F3D8()
{

  return MEMORY[0x2822009F8](sub_22DC7F4D4, 0, 0);
}

uint64_t sub_22DC7F4D4()
{
  v1 = v0[7];
  if ((*(v0[5] + 48))(v1, 1, v0[4]) == 1)
  {
    (*(v0[9] + 8))(v0[10], v0[8]);

    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = v0[6];
    v5 = v0[3];
    sub_22DC89500(v1, v4, type metadata accessor for LibrarySnapshot);
    v6 = swift_task_alloc();
    v0[12] = v6;
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = swift_task_alloc();
    v0[13] = v7;
    *v7 = v0;
    v7[1] = sub_22DC7F680;

    return MEMORY[0x2822008A0]();
  }
}

uint64_t sub_22DC7F680()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_22DC7F85C;
  }

  else
  {

    v2 = sub_22DC7F79C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22DC7F79C()
{
  sub_22DC894A0(v0[6], type metadata accessor for LibrarySnapshot);
  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_22DC7F3D8;
  v2 = v0[7];
  v3 = v0[8];

  return MEMORY[0x2822003E8](v2, 0, 0, v3);
}

uint64_t sub_22DC7F85C()
{

  if (qword_280C106F0 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = sub_22DCB5FDC();
  __swift_project_value_buffer(v2, qword_280C11198);
  v3 = v1;
  v4 = sub_22DCB5FBC();
  v5 = sub_22DCB63CC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[14];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_22D9C5000, v4, v5, "listener continuation error: %@", v8, 0xCu);
    sub_22D9CA164(v9, &qword_27DA2D450);
    MEMORY[0x2318DAAC0](v9, -1, -1);
    MEMORY[0x2318DAAC0](v8, -1, -1);
  }

  else
  {
  }

  sub_22DC894A0(v0[6], type metadata accessor for LibrarySnapshot);
  v12 = swift_task_alloc();
  v0[11] = v12;
  *v12 = v0;
  v12[1] = sub_22DC7F3D8;
  v13 = v0[7];
  v14 = v0[8];

  return MEMORY[0x2822003E8](v13, 0, 0, v14);
}

void sub_22DC7FA70(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA2D4F0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7, v8);
  v10 = &v20 - v9;
  v11 = objc_autoreleasePoolPush();
  sub_22DCB599C();
  swift_allocObject();
  sub_22DCB598C();
  type metadata accessor for LibrarySnapshot();
  sub_22DC8ADAC(&qword_27DA2D070, type metadata accessor for LibrarySnapshot);
  v22 = sub_22DCB597C();
  v13 = v12;
  v14 = sub_22DCB5AAC();
  v21 = a3;
  v15 = v14;
  (*(v6 + 16))(v10, a1, v5);
  v16 = v11;
  v17 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v18 = swift_allocObject();
  (*(v6 + 32))(v18 + v17, v10, v5);
  aBlock[4] = sub_22DC8B428;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22DC7FD0C;
  aBlock[3] = &block_descriptor_72;
  v19 = _Block_copy(aBlock);

  [v21 receiveLibrarySnapshotWithData:v15 completion:v19];
  _Block_release(v19);

  sub_22DC86228(v22, v13);

  objc_autoreleasePoolPop(v16);
}

void sub_22DC7FD0C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_22DC7FD78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA2D440);
  MEMORY[0x28223BE20](v8 - 8, v9, v10);
  v12 = v22 - v11;
  sub_22DC74B24(a1, v22 - v11);
  v13 = sub_22DCB62BC();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_22D9CA164(v12, &unk_27DA2D440);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v15 = sub_22DCB625C();
      v17 = v16;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_22DCB62AC();
    (*(v14 + 8))(v12, v13);
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

uint64_t sub_22DC7FF80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for GallerySnapshot();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D460);
  v5[7] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D4E8);
  v5[8] = v7;
  v5[9] = *(v7 - 8);
  v5[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22DC800E0, 0, 0);
}

uint64_t sub_22DC800E0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D4C8);
  sub_22DCB631C();
  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_22DC801A8;
  v2 = v0[7];
  v3 = v0[8];

  return MEMORY[0x2822003E8](v2, 0, 0, v3);
}

uint64_t sub_22DC801A8()
{

  return MEMORY[0x2822009F8](sub_22DC802A4, 0, 0);
}

uint64_t sub_22DC802A4()
{
  v1 = v0[7];
  if ((*(v0[5] + 48))(v1, 1, v0[4]) == 1)
  {
    (*(v0[9] + 8))(v0[10], v0[8]);

    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = v0[6];
    v5 = v0[3];
    sub_22DC89500(v1, v4, type metadata accessor for GallerySnapshot);
    v6 = swift_task_alloc();
    v0[12] = v6;
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = swift_task_alloc();
    v0[13] = v7;
    *v7 = v0;
    v7[1] = sub_22DC80450;

    return MEMORY[0x2822008A0]();
  }
}

uint64_t sub_22DC80450()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_22DC8062C;
  }

  else
  {

    v2 = sub_22DC8056C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22DC8056C()
{
  sub_22DC894A0(v0[6], type metadata accessor for GallerySnapshot);
  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_22DC801A8;
  v2 = v0[7];
  v3 = v0[8];

  return MEMORY[0x2822003E8](v2, 0, 0, v3);
}

uint64_t sub_22DC8062C()
{

  if (qword_280C106F0 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = sub_22DCB5FDC();
  __swift_project_value_buffer(v2, qword_280C11198);
  v3 = v1;
  v4 = sub_22DCB5FBC();
  v5 = sub_22DCB63CC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[14];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_22D9C5000, v4, v5, "listener gallery continuation error: %@", v8, 0xCu);
    sub_22D9CA164(v9, &qword_27DA2D450);
    MEMORY[0x2318DAAC0](v9, -1, -1);
    MEMORY[0x2318DAAC0](v8, -1, -1);
  }

  else
  {
  }

  sub_22DC894A0(v0[6], type metadata accessor for GallerySnapshot);
  v12 = swift_task_alloc();
  v0[11] = v12;
  *v12 = v0;
  v12[1] = sub_22DC801A8;
  v13 = v0[7];
  v14 = v0[8];

  return MEMORY[0x2822003E8](v13, 0, 0, v14);
}

void sub_22DC80840(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA2D4F0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7, v8);
  v10 = &v20 - v9;
  v11 = objc_autoreleasePoolPush();
  sub_22DCB599C();
  swift_allocObject();
  sub_22DCB598C();
  type metadata accessor for GallerySnapshot();
  sub_22DC8ADAC(&qword_27DA2D098, type metadata accessor for GallerySnapshot);
  v22 = sub_22DCB597C();
  v13 = v12;
  v14 = sub_22DCB5AAC();
  v21 = a3;
  v15 = v14;
  (*(v6 + 16))(v10, a1, v5);
  v16 = v11;
  v17 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v18 = swift_allocObject();
  (*(v6 + 32))(v18 + v17, v10, v5);
  aBlock[4] = sub_22DC8AB74;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22DC7FD0C;
  aBlock[3] = &block_descriptor_59;
  v19 = _Block_copy(aBlock);

  [v21 receiveGallerySnapshotWithData:v15 completion:v19];
  _Block_release(v19);

  sub_22DC86228(v22, v13);

  objc_autoreleasePoolPop(v16);
}

uint64_t sub_22DC80ADC(void *a1)
{
  if (a1)
  {
    v2 = qword_280C106F0;
    v3 = a1;
    if (v2 != -1)
    {
      swift_once();
    }

    v4 = sub_22DCB5FDC();
    __swift_project_value_buffer(v4, qword_280C11198);
    v5 = v3;
    v6 = sub_22DCB5FBC();
    v7 = sub_22DCB63CC();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      *(v8 + 4) = v5;
      *v9 = a1;
      v10 = v5;
      _os_log_impl(&dword_22D9C5000, v6, v7, "listener receive error: %@", v8, 0xCu);
      sub_22D9CA164(v9, &qword_27DA2D450);
      MEMORY[0x2318DAAC0](v9, -1, -1);
      MEMORY[0x2318DAAC0](v8, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA2D4F0);
    return sub_22DCB626C();
  }

  else
  {
    if (qword_280C106F0 != -1)
    {
      swift_once();
    }

    v12 = sub_22DCB5FDC();
    __swift_project_value_buffer(v12, qword_280C11198);
    v13 = sub_22DCB5FBC();
    v14 = sub_22DCB63DC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_22D9C5000, v13, v14, "listener got snapshot!", v15, 2u);
      MEMORY[0x2318DAAC0](v15, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA2D4F0);
    return sub_22DCB627C();
  }
}

uint64_t sub_22DC80DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_22DC80DC4, 0, 0);
}

uint64_t sub_22DC80DC4()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_22DC80E58;

  return sub_22DC6FB74();
}

uint64_t sub_22DC80E58()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_22DC80FD4;
  }

  else
  {
    v2 = sub_22DC80F6C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22DC80F6C()
{
  (*(v0 + 24))(0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22DC80FD4()
{
  v1 = v0[6];
  v2 = v0[3];
  v3 = sub_22DCB5A0C();
  v2();

  v4 = v0[1];

  return v4();
}

uint64_t sub_22DC81248()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22DC812A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA2D440);
  MEMORY[0x28223BE20](v7 - 8, v8, v9);
  v11 = &v22 - v10;
  v12 = sub_22DCB5ABC();
  v14 = v13;
  if (qword_27DA2CB28 != -1)
  {
    swift_once();
  }

  v15 = sub_22DCB5FDC();
  __swift_project_value_buffer(v15, qword_27DA37660);
  v16 = sub_22DCB5FBC();
  v17 = sub_22DCB63DC();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_22D9C5000, v16, v17, "Client got snapshot data…", v18, 2u);
    MEMORY[0x2318DAAC0](v18, -1, -1);
  }

  v19 = sub_22DCB62BC();
  (*(*(v19 - 8) + 56))(v11, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = v12;
  v20[5] = v14;
  v20[6] = v4;
  v20[7] = a2;
  v20[8] = a3;

  sub_22DC95460(0, 0, v11, &unk_22DCEBDE8, v20);
}

uint64_t sub_22DC814A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v8[7] = type metadata accessor for LibrarySnapshot();
  v8[8] = swift_task_alloc();
  v8[9] = swift_task_alloc();
  v8[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22DC8155C, 0, 0);
}

uint64_t sub_22DC8155C()
{
  v22 = v0;
  sub_22DCB596C();
  swift_allocObject();
  v0[11] = sub_22DCB595C();
  sub_22DC8ADAC(&qword_27DA2D060, type metadata accessor for LibrarySnapshot);
  sub_22DCB594C();
  if (qword_27DA2CB28 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  v4 = sub_22DCB5FDC();
  __swift_project_value_buffer(v4, qword_27DA37660);
  sub_22DC89364(v2, v1, type metadata accessor for LibrarySnapshot);
  sub_22DC89364(v2, v3, type metadata accessor for LibrarySnapshot);
  v5 = sub_22DCB5FBC();
  v6 = sub_22DCB63DC();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[8];
  v9 = v0[9];
  if (v7)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21[0] = v11;
    *v10 = 136315394;
    type metadata accessor for LibraryReplicatorIdentifier();
    sub_22DCB5B3C();
    sub_22DC8ADAC(&unk_27DA2D490, MEMORY[0x277CC95F0]);
    v12 = sub_22DCB67DC();
    v14 = v13;
    sub_22DC894A0(v9, type metadata accessor for LibrarySnapshot);
    v15 = sub_22DC87280(v12, v14, v21);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2080;
    v16 = *v8;
    v17 = v8[1];

    sub_22DC894A0(v8, type metadata accessor for LibrarySnapshot);
    v18 = sub_22DC87280(v16, v17, v21);

    *(v10 + 14) = v18;
    _os_log_impl(&dword_22D9C5000, v5, v6, "Ingested snapshot %s on %s…", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2318DAAC0](v11, -1, -1);
    MEMORY[0x2318DAAC0](v10, -1, -1);
  }

  else
  {

    sub_22DC894A0(v8, type metadata accessor for LibrarySnapshot);
    sub_22DC894A0(v9, type metadata accessor for LibrarySnapshot);
  }

  v19 = v0[4];

  return MEMORY[0x2822009F8](sub_22DC81A5C, v19, 0);
}

uint64_t sub_22DC81A5C()
{
  sub_22DC81B7C(*(v0 + 80));

  return MEMORY[0x2822009F8](sub_22DC81AC8, 0, 0);
}

uint64_t sub_22DC81AC8()
{
  v1 = *(v0 + 80);
  (*(v0 + 40))(0);

  sub_22DC894A0(v1, type metadata accessor for LibrarySnapshot);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22DC81B7C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2CFD0);
  MEMORY[0x28223BE20](v4 - 8, v5, v6);
  v8 = &v18[-v7];
  v9 = type metadata accessor for LibraryReplicatorIdentifier();
  MEMORY[0x28223BE20](v9 - 8, v10, v11);
  v13 = &v18[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22DC89364(a1, v13, type metadata accessor for LibraryReplicatorIdentifier);
  sub_22DC89364(a1, v8, type metadata accessor for LibrarySnapshot);
  v14 = type metadata accessor for LibrarySnapshot();
  (*(*(v14 - 8) + 56))(v8, 0, 1, v14);
  swift_beginAccess();
  sub_22DC82D14(v8, v13);
  swift_endAccess();
  v15 = *(v2 + 128);
  v21 = *(v2 + 112);
  v16 = *(v15 + 16);
  v19 = &v21;
  v20 = v15;

  os_unfair_lock_lock(v16 + 8);
  sub_22DC893CC(&v16[4]);
  os_unfair_lock_unlock(v16 + 8);
}

uint64_t sub_22DC81D70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA2D440);
  MEMORY[0x28223BE20](v7 - 8, v8, v9);
  v11 = &v22 - v10;
  v12 = sub_22DCB5ABC();
  v14 = v13;
  if (qword_27DA2CB30 != -1)
  {
    swift_once();
  }

  v15 = sub_22DCB5FDC();
  __swift_project_value_buffer(v15, qword_27DA37678);
  v16 = sub_22DCB5FBC();
  v17 = sub_22DCB63DC();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_22D9C5000, v16, v17, "Client got snapshot data…", v18, 2u);
    MEMORY[0x2318DAAC0](v18, -1, -1);
  }

  v19 = sub_22DCB62BC();
  (*(*(v19 - 8) + 56))(v11, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = v12;
  v20[5] = v14;
  v20[6] = v4;
  v20[7] = a2;
  v20[8] = a3;

  sub_22DC95460(0, 0, v11, &unk_22DCEBDA8, v20);
}

uint64_t sub_22DC81F74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v8[7] = type metadata accessor for GallerySnapshot();
  v8[8] = swift_task_alloc();
  v8[9] = swift_task_alloc();
  v8[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22DC82028, 0, 0);
}

uint64_t sub_22DC82028()
{
  sub_22DCB596C();
  swift_allocObject();
  *(v0 + 88) = sub_22DCB595C();
  sub_22DC8ADAC(&qword_27DA2D088, type metadata accessor for GallerySnapshot);
  sub_22DCB594C();
  v1 = *(v0 + 32);

  return MEMORY[0x2822009F8](sub_22DC822C8, v1, 0);
}

uint64_t sub_22DC822C8()
{
  sub_22DC825FC(*(v0 + 80));

  return MEMORY[0x2822009F8](sub_22DC82334, 0, 0);
}

uint64_t sub_22DC82334()
{
  v22 = v0;
  if (qword_27DA2CB30 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = *(v0 + 64);
  v4 = sub_22DCB5FDC();
  __swift_project_value_buffer(v4, qword_27DA37678);
  sub_22DC89364(v2, v1, type metadata accessor for GallerySnapshot);
  sub_22DC89364(v2, v3, type metadata accessor for GallerySnapshot);
  v5 = sub_22DCB5FBC();
  v6 = sub_22DCB63DC();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 64);
  v9 = *(v0 + 72);
  if (v7)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v10 = 136315394;
    v12 = *(v9 + 16);
    v13 = *(v9 + 24);

    sub_22DC894A0(v9, type metadata accessor for GallerySnapshot);
    v14 = sub_22DC87280(v12, v13, &v21);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    v15 = *v8;
    v16 = v8[1];

    sub_22DC894A0(v8, type metadata accessor for GallerySnapshot);
    v17 = sub_22DC87280(v15, v16, &v21);

    *(v10 + 14) = v17;
    _os_log_impl(&dword_22D9C5000, v5, v6, "Ingested snapshot %s on %s…", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2318DAAC0](v11, -1, -1);
    MEMORY[0x2318DAAC0](v10, -1, -1);
  }

  else
  {

    sub_22DC894A0(v8, type metadata accessor for GallerySnapshot);
    sub_22DC894A0(v9, type metadata accessor for GallerySnapshot);
  }

  v18 = *(v0 + 80);
  (*(v0 + 40))(0);

  sub_22DC894A0(v18, type metadata accessor for GallerySnapshot);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_22DC825FC(uint64_t *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D460);
  MEMORY[0x28223BE20](v4 - 8, v5, v6);
  v8 = &v17[-v7];
  v9 = *a1;
  v10 = a1[1];
  v11 = a1[2];
  v12 = a1[3];
  sub_22DC89364(a1, &v17[-v7], type metadata accessor for GallerySnapshot);
  v13 = type metadata accessor for GallerySnapshot();
  (*(*(v13 - 8) + 56))(v8, 0, 1, v13);
  swift_beginAccess();

  sub_22DC82EFC(v8, v9, v10, v11, v12);
  swift_endAccess();
  v14 = *(v2 + 136);
  v20 = *(v2 + 120);
  v15 = *(v14 + 16);
  v18 = &v20;
  v19 = v14;

  os_unfair_lock_lock(v15 + 8);
  sub_22DC89064(&v15[4]);
  os_unfair_lock_unlock(v15 + 8);
}

uint64_t sub_22DC827B8(int a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(id, uint64_t, uint64_t))
{
  v10 = _Block_copy(aBlock);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v12 = a3;

  a7(v12, a6, v11);
}

uint64_t sub_22DC82864(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA2D560);
  MEMORY[0x28223BE20](v5 - 8, v6, v7);
  v9 = &v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D4A0);
  v11 = *(v10 - 8);
  v14 = MEMORY[0x28223BE20](v10, v12, v13);
  v16 = &v21 - v15;
  if ((*(v11 + 48))(a1, 1, v10, v14) == 1)
  {
    sub_22D9CA164(a1, &unk_27DA2D560);
    sub_22DC8782C(a2, &qword_27DA2D4A0, &unk_22DCEBDF8, sub_22DCA05EC, v9);
    v17 = sub_22DCB5B3C();
    (*(*(v17 - 8) + 8))(a2, v17);
    return sub_22D9CA164(v9, &unk_27DA2D560);
  }

  else
  {
    (*(v11 + 32))(v16, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v2;
    sub_22DC8DEB8(v16, a2, isUniquelyReferenced_nonNull_native);
    v20 = sub_22DCB5B3C();
    result = (*(*(v20 - 8) + 8))(a2, v20);
    *v2 = v22;
  }

  return result;
}

uint64_t sub_22DC82ABC(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D548);
  MEMORY[0x28223BE20](v5 - 8, v6, v7);
  v9 = &v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D468);
  v11 = *(v10 - 8);
  v14 = MEMORY[0x28223BE20](v10, v12, v13);
  v16 = &v21 - v15;
  if ((*(v11 + 48))(a1, 1, v10, v14) == 1)
  {
    sub_22D9CA164(a1, &qword_27DA2D548);
    sub_22DC8782C(a2, &qword_27DA2D468, &unk_22DCEBDC8, sub_22DCA0610, v9);
    v17 = sub_22DCB5B3C();
    (*(*(v17 - 8) + 8))(a2, v17);
    return sub_22D9CA164(v9, &qword_27DA2D548);
  }

  else
  {
    (*(v11 + 32))(v16, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v2;
    sub_22DC8DEF4(v16, a2, isUniquelyReferenced_nonNull_native);
    v20 = sub_22DCB5B3C();
    result = (*(*(v20 - 8) + 8))(a2, v20);
    *v2 = v22;
  }

  return result;
}

uint64_t sub_22DC82D14(uint64_t a1, uint64_t *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2CFD0);
  MEMORY[0x28223BE20](v5 - 8, v6, v7);
  v9 = &v18 - v8;
  v10 = type metadata accessor for LibrarySnapshot();
  v12 = MEMORY[0x28223BE20](v10, v11, v10);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v15 + 48))(a1, 1, v12) == 1)
  {
    sub_22D9CA164(a1, &qword_27DA2CFD0);
    sub_22DC879F8(a2, v9);
    sub_22DC894A0(a2, type metadata accessor for LibraryReplicatorIdentifier);
    return sub_22D9CA164(v9, &qword_27DA2CFD0);
  }

  else
  {
    sub_22DC89500(a1, v14, type metadata accessor for LibrarySnapshot);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v2;
    sub_22DC8E160(v14, a2, isUniquelyReferenced_nonNull_native);
    result = sub_22DC894A0(a2, type metadata accessor for LibraryReplicatorIdentifier);
    *v2 = v19;
  }

  return result;
}

uint64_t sub_22DC82EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D460);
  MEMORY[0x28223BE20](v11 - 8, v12, v13);
  v15 = &v24 - v14;
  v16 = type metadata accessor for GallerySnapshot();
  v18 = MEMORY[0x28223BE20](v16, v17, v16);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v21 + 48))(a1, 1, v18) == 1)
  {
    sub_22D9CA164(a1, &qword_27DA2D460);
    sub_22DC87B90(a2, a3, a4, a5, v15);

    return sub_22D9CA164(v15, &qword_27DA2D460);
  }

  else
  {
    sub_22DC89500(a1, v20, type metadata accessor for GallerySnapshot);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v5;
    sub_22DC8E2F8(v20, a2, a3, a4, a5, isUniquelyReferenced_nonNull_native);

    *v5 = v25;
  }

  return result;
}

uint64_t sub_22DC83100@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DA2CB28 != -1)
  {
    swift_once();
  }

  v2 = sub_22DCB5FDC();
  __swift_project_value_buffer(v2, qword_27DA37660);
  v3 = sub_22DCB5FBC();
  v4 = sub_22DCB63DC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_22D9C5000, v3, v4, "Asked for a stream of library snapshots…", v5, 2u);
    MEMORY[0x2318DAAC0](v5, -1, -1);
  }

  return sub_22DC831F4(a1);
}

uint64_t sub_22DC831F4@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D550);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3, v4);
  v6 = (&v40 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D4A0);
  v46 = *(v7 - 8);
  v47 = v7;
  v8 = *(v46 + 64);
  MEMORY[0x28223BE20](v7, v9, v10);
  v41 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12, v13);
  v15 = &v40 - v14;
  v45 = sub_22DCB5B3C();
  v16 = *(v45 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v45, v18, v19);
  v44 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v21, v22);
  v24 = &v40 - v23;
  v42 = &v40 - v23;
  sub_22DCB5B2C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D558);
  *v6 = 1;
  (*(v2 + 104))(v6, *MEMORY[0x277D85768], v1);
  v43 = v15;
  sub_22DCB62CC();
  (*(v2 + 8))(v6, v1);
  v25 = swift_allocObject();
  swift_weakInit();
  v26 = v46;
  v27 = v47;
  (*(v46 + 16))(&v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v15, v47);
  v28 = v44;
  v29 = v24;
  v30 = v45;
  (*(v16 + 16))(v44, v29, v45);
  v31 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v32 = (v8 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = (*(v16 + 80) + v32 + 8) & ~*(v16 + 80);
  v34 = swift_allocObject();
  (*(v26 + 32))(v34 + v31, v41, v27);
  *(v34 + v32) = v25;
  (*(v16 + 32))(v34 + v33, v28, v30);
  v35 = v27;
  v36 = v43;
  sub_22DCB62DC();
  v37 = *(v49 + 16);
  v38 = v42;
  v50 = v42;
  v51 = v36;
  os_unfair_lock_lock(v37 + 8);
  sub_22DC8B390(&v37[4]);
  os_unfair_lock_unlock(v37 + 8);
  (*(v26 + 8))(v36, v35);
  return (*(v16 + 8))(v38, v30);
}

uint64_t sub_22DC8360C@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D538);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3, v4);
  v6 = (&v40 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D468);
  v46 = *(v7 - 8);
  v47 = v7;
  v8 = *(v46 + 64);
  MEMORY[0x28223BE20](v7, v9, v10);
  v41 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12, v13);
  v15 = &v40 - v14;
  v45 = sub_22DCB5B3C();
  v16 = *(v45 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v45, v18, v19);
  v44 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v21, v22);
  v24 = &v40 - v23;
  v42 = &v40 - v23;
  sub_22DCB5B2C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D540);
  *v6 = 1;
  (*(v2 + 104))(v6, *MEMORY[0x277D85768], v1);
  v43 = v15;
  sub_22DCB62CC();
  (*(v2 + 8))(v6, v1);
  v25 = swift_allocObject();
  swift_weakInit();
  v26 = v46;
  v27 = v47;
  (*(v46 + 16))(&v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v15, v47);
  v28 = v44;
  v29 = v24;
  v30 = v45;
  (*(v16 + 16))(v44, v29, v45);
  v31 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v32 = (v8 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = (*(v16 + 80) + v32 + 8) & ~*(v16 + 80);
  v34 = swift_allocObject();
  (*(v26 + 32))(v34 + v31, v41, v27);
  *(v34 + v32) = v25;
  (*(v16 + 32))(v34 + v33, v28, v30);
  v35 = v27;
  v36 = v43;
  sub_22DCB62DC();
  v37 = *(v49 + 16);
  v38 = v42;
  v50 = v42;
  v51 = v36;
  os_unfair_lock_lock(v37 + 8);
  sub_22DC8AFE8(&v37[4]);
  os_unfair_lock_unlock(v37 + 8);
  (*(v26 + 8))(v36, v35);
  return (*(v16 + 8))(v38, v30);
}

uint64_t sub_22DC83A24@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DA2CB30 != -1)
  {
    swift_once();
  }

  v2 = sub_22DCB5FDC();
  __swift_project_value_buffer(v2, qword_27DA37678);
  v3 = sub_22DCB5FBC();
  v4 = sub_22DCB63DC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_22D9C5000, v3, v4, "Asked for a stream of gallery snapshots…", v5, 2u);
    MEMORY[0x2318DAAC0](v5, -1, -1);
  }

  return sub_22DC8360C(a1);
}

id sub_22DC83B4C()
{
  ObjectType = swift_getObjectType();
  swift_defaultActor_initialize();
  v2 = MEMORY[0x277D84F98];
  v0[14] = MEMORY[0x277D84F98];
  v0[15] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D420);
  v3 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D428);
  v4 = swift_allocObject();
  *(v4 + 32) = 0;
  *(v4 + 16) = v2;
  *(v4 + 24) = 0;
  *(v3 + 16) = v4;
  v0[16] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D430);
  v5 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D438);
  v6 = swift_allocObject();
  *(v6 + 32) = 0;
  *(v6 + 16) = v2;
  *(v6 + 24) = 0;
  *(v5 + 16) = v6;
  v0[17] = v5;
  v8.receiver = v0;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t sub_22DC83C78()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22DC83CC8()
{
  type metadata accessor for ClientService();
  swift_allocObject();
  result = sub_22DC83D08();
  qword_27DA2D400 = result;
  return result;
}

uint64_t sub_22DC83D08()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA2D440);
  MEMORY[0x28223BE20](v2 - 8, v3, v4);
  v6 = &v14 - v5;
  swift_defaultActor_initialize();
  type metadata accessor for ClientService.ClientDelegate();
  swift_allocObject();
  *(v0 + 112) = sub_22DC83B4C();
  *(v0 + 120) = 0;
  if (qword_27DA2CB28 != -1)
  {
    swift_once();
  }

  v7 = sub_22DCB5FDC();
  __swift_project_value_buffer(v7, qword_27DA37660);
  v8 = sub_22DCB5FBC();
  v9 = sub_22DCB63DC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_22D9C5000, v8, v9, "Making client service init", v10, 2u);
    MEMORY[0x2318DAAC0](v10, -1, -1);
  }

  v11 = sub_22DCB62BC();
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v1;

  sub_22DC95460(0, 0, v6, &unk_22DCEBF28, v12);

  return v1;
}

uint64_t sub_22DC83EFC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22D9CB0D8;

  return sub_22DC83F8C();
}

uint64_t sub_22DC83FAC()
{
  if (qword_27DA2CB28 != -1)
  {
    swift_once();
  }

  v1 = sub_22DCB5FDC();
  __swift_project_value_buffer(v1, qword_27DA37660);
  v2 = sub_22DCB5FBC();
  v3 = sub_22DCB63DC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_22D9C5000, v2, v3, "Making client service connection…", v4, 2u);
    MEMORY[0x2318DAAC0](v4, -1, -1);
  }

  v5 = v0[14];

  v6 = *(v5 + 120);
  if (v6 && ([v6 invalidate], (v7 = *(v5 + 120)) != 0))
  {
    [v7 setExportedObject_];
    v8 = *(v5 + 120);
  }

  else
  {
    v8 = 0;
  }

  v9 = v0[14];
  *(v5 + 120) = 0;

  v10 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v11 = sub_22DCB611C();
  v12 = [v10 initWithMachServiceName:v11 options:0];
  v0[15] = v12;

  v13 = objc_opt_self();
  v14 = [v13 interfaceWithProtocol_];
  [v12 setExportedInterface_];

  v15 = [v13 interfaceWithProtocol_];
  [v12 setRemoteObjectInterface_];

  [v12 setExportedObject_];
  v16 = swift_allocObject();
  swift_weakInit();
  v0[6] = sub_22DC8AE24;
  v0[7] = v16;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_22DC7E5B8;
  v0[5] = &block_descriptor_105;
  v17 = _Block_copy(v0 + 2);

  [v12 setInvalidationHandler_];
  _Block_release(v17);
  v0[12] = sub_22DC84B70;
  v0[13] = 0;
  v0[8] = MEMORY[0x277D85DD0];
  v0[9] = 1107296256;
  v0[10] = sub_22DC7E5B8;
  v0[11] = &block_descriptor_108;
  v18 = _Block_copy(v0 + 8);
  [v12 setInterruptionHandler_];
  _Block_release(v18);
  v19 = *(v5 + 120);
  *(v5 + 120) = v12;
  v20 = v12;

  [v20 resume];
  sub_22DC8ADAC(&qword_27DA2D528, type metadata accessor for ClientService);
  v21 = swift_task_alloc();
  v0[16] = v21;
  *(v21 + 16) = v20;
  v22 = swift_task_alloc();
  v0[17] = v22;
  *v22 = v0;
  v22[1] = sub_22DC8441C;

  return MEMORY[0x2822007B8]();
}

uint64_t sub_22DC8441C()
{
  v1 = *(*v0 + 112);

  return MEMORY[0x2822009F8](sub_22DC84548, v1, 0);
}

uint64_t sub_22DC84548()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22DC845A8()
{
  v1 = v0;
  if (qword_27DA2CB28 != -1)
  {
    swift_once();
  }

  v2 = sub_22DCB5FDC();
  __swift_project_value_buffer(v2, qword_27DA37660);
  v3 = sub_22DCB5FBC();
  v4 = sub_22DCB63DC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_22D9C5000, v3, v4, "Client service went away", v5, 2u);
    MEMORY[0x2318DAAC0](v5, -1, -1);
  }

  swift_defaultActor_destroy();
  return v1;
}

uint64_t sub_22DC846A0()
{
  v0 = sub_22DC845A8();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22DC84710()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA2D440);
  MEMORY[0x28223BE20](v0 - 8, v1, v2);
  v4 = &v13 - v3;
  if (qword_27DA2CB28 != -1)
  {
    swift_once();
  }

  v5 = sub_22DCB5FDC();
  __swift_project_value_buffer(v5, qword_27DA37660);
  v6 = sub_22DCB5FBC();
  v7 = sub_22DCB63CC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_22D9C5000, v6, v7, "client invalidated", v8, 2u);
    MEMORY[0x2318DAAC0](v8, -1, -1);
  }

  v9 = sub_22DCB62BC();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v10;
  sub_22DC95750(0, 0, v4, &unk_22DCEBF00, v11);
}

uint64_t sub_22DC8491C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x2822009F8](sub_22DC8493C, 0, 0);
}

uint64_t sub_22DC8493C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 64) = v2;
    *v2 = v0;
    v2[1] = sub_22DC84A30;

    return sub_22DC83F8C();
  }

  else
  {
    **(v0 + 40) = 1;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_22DC84A30()
{

  return MEMORY[0x2822009F8](sub_22DC84B48, 0, 0);
}

void sub_22DC84B70()
{
  if (qword_27DA2CB28 != -1)
  {
    swift_once();
  }

  v0 = sub_22DCB5FDC();
  __swift_project_value_buffer(v0, qword_27DA37660);
  oslog = sub_22DCB5FBC();
  v1 = sub_22DCB63CC();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_22D9C5000, oslog, v1, "client interrupted", v2, 2u);
    MEMORY[0x2318DAAC0](v2, -1, -1);
  }
}

uint64_t sub_22DC84C58(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D530);
  v5 = *(v4 - 8);
  v8 = MEMORY[0x28223BE20](v4, v6, v7);
  v10 = &v20 - v9;
  v21 = *(v5 + 16);
  v22 = a1;
  v21(&v20 - v9, a1, v4, v8);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  v13 = *(v5 + 32);
  v13(v12 + v11, v10, v4);
  v28 = sub_22DC8AE34;
  v29 = v12;
  aBlock = MEMORY[0x277D85DD0];
  v25 = 1107296256;
  v26 = sub_22DC7E95C;
  v27 = &block_descriptor_115;
  v14 = _Block_copy(&aBlock);

  v15 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v14);
  sub_22DCB64BC();
  swift_unknownObjectRelease();
  sub_22DC65774(v30, &aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D520);
  if (swift_dynamicCast())
  {
    v16 = v23;
    (v21)(v10, v22, v4);
    v17 = swift_allocObject();
    v13(v17 + v11, v10, v4);
    v28 = sub_22DC8AE5C;
    v29 = v17;
    aBlock = MEMORY[0x277D85DD0];
    v25 = 1107296256;
    v26 = sub_22DC7FD0C;
    v27 = &block_descriptor_121;
    v18 = _Block_copy(&aBlock);

    [v16 registerWithCompletion_];
    _Block_release(v18);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v30);
  }

  else
  {
    result = sub_22DCB666C();
    __break(1u);
  }

  return result;
}

uint64_t sub_22DC84FB8(void *a1)
{
  if (qword_27DA2CB28 != -1)
  {
    swift_once();
  }

  v2 = sub_22DCB5FDC();
  __swift_project_value_buffer(v2, qword_27DA37660);
  v3 = a1;
  v4 = sub_22DCB5FBC();
  v5 = sub_22DCB63CC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = a1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_22D9C5000, v4, v5, "client proxy failed %@", v6, 0xCu);
    sub_22D9CA164(v7, &qword_27DA2D450);
    MEMORY[0x2318DAAC0](v7, -1, -1);
    MEMORY[0x2318DAAC0](v6, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D530);
  return sub_22DCB627C();
}

uint64_t sub_22DC85128(void *a1)
{
  if (a1)
  {
    v2 = qword_27DA2CB28;
    v3 = a1;
    if (v2 != -1)
    {
      swift_once();
    }

    v4 = sub_22DCB5FDC();
    __swift_project_value_buffer(v4, qword_27DA37660);
    v5 = v3;
    v6 = sub_22DCB5FBC();
    v7 = sub_22DCB63CC();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      *(v8 + 4) = v5;
      *v9 = a1;
      v10 = v5;
      _os_log_impl(&dword_22D9C5000, v6, v7, "Registered proxy failed %@", v8, 0xCu);
      sub_22D9CA164(v9, &qword_27DA2D450);
      MEMORY[0x2318DAAC0](v9, -1, -1);
      MEMORY[0x2318DAAC0](v8, -1, -1);

      v6 = v10;
    }

    else
    {
    }
  }

  else
  {
    if (qword_27DA2CB28 != -1)
    {
      swift_once();
    }

    v11 = sub_22DCB5FDC();
    __swift_project_value_buffer(v11, qword_27DA37660);
    v6 = sub_22DCB5FBC();
    v12 = sub_22DCB63DC();
    if (os_log_type_enabled(v6, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_22D9C5000, v6, v12, "Registered proxy", v13, 2u);
      MEMORY[0x2318DAAC0](v13, -1, -1);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D530);
  return sub_22DCB627C();
}

uint64_t sub_22DC85388()
{
  v1 = [objc_opt_self() currentDevice];
  if (!v1)
  {
    __break(1u);
    return MEMORY[0x2822008A0]();
  }

  v2 = v1;
  v3 = [v1 isPaired];

  if (v3)
  {
    v4 = *(v0[17] + 120);
    if (v4)
    {
      v0[19] = v4;
      v0[6] = sub_22DC85E74;
      v0[7] = 0;
      v0[2] = MEMORY[0x277D85DD0];
      v0[3] = 1107296256;
      v0[4] = sub_22DC7E95C;
      v0[5] = &block_descriptor_91;
      v5 = _Block_copy(v0 + 2);
      v6 = [v4 remoteObjectProxyWithErrorHandler_];
      _Block_release(v5);
      sub_22DCB64BC();
      swift_unknownObjectRelease();
      sub_22DC65774((v0 + 8), (v0 + 12));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D520);
      if (!swift_dynamicCast())
      {
        return sub_22DCB666C();
      }

      v7 = v0[16];
      v0[20] = v7;
      sub_22DC8ADAC(&qword_27DA2D528, type metadata accessor for ClientService);
      v8 = swift_task_alloc();
      v0[21] = v8;
      *(v8 + 16) = v7;
      v9 = swift_task_alloc();
      v0[22] = v9;
      *v9 = v0;
      v9[1] = sub_22DC85C4C;

      return MEMORY[0x2822008A0]();
    }

    v16 = swift_task_alloc();
    v0[18] = v16;
    *v16 = v0;
    v16[1] = sub_22DC857BC;

    return sub_22DC83F8C();
  }

  else
  {
    if (qword_27DA2CB28 != -1)
    {
      swift_once();
    }

    v10 = sub_22DCB5FDC();
    __swift_project_value_buffer(v10, qword_27DA37660);
    v11 = sub_22DCB5FBC();
    v12 = sub_22DCB63DC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_22D9C5000, v11, v12, "Skipping gallery refresh message - device is unpaired.", v13, 2u);
      MEMORY[0x2318DAAC0](v13, -1, -1);
    }

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_22DC857BC()
{
  v1 = *(*v0 + 136);

  return MEMORY[0x2822009F8](sub_22DC858CC, v1, 0);
}

uint64_t sub_22DC858CC()
{
  v1 = *(v0[17] + 120);
  if (v1)
  {
    v0[19] = v1;
    v0[6] = sub_22DC85E74;
    v0[7] = 0;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_22DC7E95C;
    v0[5] = &block_descriptor_91;
    v2 = _Block_copy(v0 + 2);
    v3 = [v1 remoteObjectProxyWithErrorHandler_];
    _Block_release(v2);
    sub_22DCB64BC();
    swift_unknownObjectRelease();
    sub_22DC65774((v0 + 8), (v0 + 12));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D520);
    if (swift_dynamicCast())
    {
      v4 = v0[16];
      v0[20] = v4;
      sub_22DC8ADAC(&qword_27DA2D528, type metadata accessor for ClientService);
      v5 = swift_task_alloc();
      v0[21] = v5;
      *(v5 + 16) = v4;
      v6 = swift_task_alloc();
      v0[22] = v6;
      *v6 = v0;
      v6[1] = sub_22DC85C4C;

      return MEMORY[0x2822008A0]();
    }

    else
    {
      return sub_22DCB666C();
    }
  }

  else
  {
    if (qword_27DA2CB28 != -1)
    {
      swift_once();
    }

    v7 = sub_22DCB5FDC();
    __swift_project_value_buffer(v7, qword_27DA37660);
    v8 = sub_22DCB5FBC();
    v9 = sub_22DCB63CC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_22D9C5000, v8, v9, "client could not obtain connection", v10, 2u);
      MEMORY[0x2318DAAC0](v10, -1, -1);
    }

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_22DC85C4C()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  v3 = *(v2 + 136);
  if (v0)
  {
    v4 = sub_22DC85E04;
  }

  else
  {
    v4 = sub_22DC85D94;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22DC85D94()
{
  v1 = *(v0 + 152);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + 64);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22DC85E04()
{
  v1 = *(v0 + 152);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + 64);
  v2 = *(v0 + 8);

  return v2();
}

void sub_22DC85EA0(void *a1, void *a2, uint64_t a3, const char *a4)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  v7 = sub_22DCB5FDC();
  __swift_project_value_buffer(v7, a3);
  v8 = a1;
  oslog = sub_22DCB5FBC();
  v9 = sub_22DCB63CC();

  if (os_log_type_enabled(oslog, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = a1;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_22D9C5000, oslog, v9, a4, v10, 0xCu);
    sub_22D9CA164(v11, &qword_27DA2D450);
    MEMORY[0x2318DAAC0](v11, -1, -1);
    MEMORY[0x2318DAAC0](v10, -1, -1);
  }
}

void sub_22DC85FF0(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA2D4F0);
  v5 = *(v4 - 8);
  v8 = MEMORY[0x28223BE20](v4, v6, v7);
  v10 = aBlock - v9;
  (*(v5 + 16))(aBlock - v9, a1, v4, v8);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  (*(v5 + 32))(v12 + v11, v10, v4);
  aBlock[4] = sub_22DC8ADFC;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22DC7FD0C;
  aBlock[3] = &block_descriptor_99;
  v13 = _Block_copy(aBlock);

  [a2 sendGalleryRefreshMessageWithCompletion_];
  _Block_release(v13);
}

uint64_t sub_22DC861A0(void *a1)
{
  if (a1)
  {
    v1 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA2D4F0);
    return sub_22DCB626C();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA2D4F0);
    return sub_22DCB627C();
  }
}

uint64_t sub_22DC86228(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_22DC8627C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_22D9CB0D8;

  return sub_22DC81F74(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_22DC86358()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D4A0);
  sub_22DCB62FC();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 16);

    MEMORY[0x28223BE20](v2, v3, v4);
    os_unfair_lock_lock(v1 + 8);
    sub_22DC8B3AC(&v1[4]);
    os_unfair_lock_unlock(v1 + 8);
  }

  return result;
}

uint64_t sub_22DC86438()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D468);
  sub_22DCB62FC();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 16);

    MEMORY[0x28223BE20](v2, v3, v4);
    os_unfair_lock_lock(v1 + 8);
    sub_22DC8B004(&v1[4]);
    os_unfair_lock_unlock(v1 + 8);
  }

  return result;
}

uint64_t sub_22DC86518(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA2D560);
  MEMORY[0x28223BE20](v3 - 8, v4, v5);
  v7 = v16 - v6;
  v8 = sub_22DCB5B3C();
  v10 = MEMORY[0x28223BE20](v8, v9, v8);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, a2, v10);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D4A0);
  (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
  return sub_22DC82864(v7, v12);
}

uint64_t sub_22DC8668C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D548);
  MEMORY[0x28223BE20](v3 - 8, v4, v5);
  v7 = v16 - v6;
  v8 = sub_22DCB5B3C();
  v10 = MEMORY[0x28223BE20](v8, v9, v8);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, a2, v10);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D468);
  (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
  return sub_22DC82ABC(v7, v12);
}

uint64_t sub_22DC86800(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v34 = a3;
  v33 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA2D560);
  MEMORY[0x28223BE20](v4 - 8, v5, v6);
  v8 = v31 - v7;
  v9 = sub_22DCB5B3C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11, v12);
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D4B0);
  v16 = *(v15 - 8);
  v19 = MEMORY[0x28223BE20](v15, v17, v18);
  v21 = v31 - v20;
  v22 = *(a1 + 8);
  if (v22)
  {
    v31[1] = a1;
    v32 = v9;
    v35 = v22;
    swift_bridgeObjectRetain_n();
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D4A0);
    sub_22DCB62EC();
    v31[0] = v16;
    v24 = (*(v16 + 88))(v21, v15);
    if (v24 == *MEMORY[0x277D85758])
    {
LABEL_5:
      (*(v10 + 16))(v14, v33, v32);
      v26 = *(v23 - 8);
      (*(v26 + 16))(v8, v34, v23);
      (*(v26 + 56))(v8, 0, 1, v23);
      sub_22DC82864(v8, v14);
    }

    v25 = v34;
    if (v24 == *MEMORY[0x277D85750])
    {
      (*(v31[0] + 8))(v21, v15);
      goto LABEL_5;
    }

    if (v24 == *MEMORY[0x277D85748])
    {
    }

    (*(v10 + 16))(v14, v33, v32);
    v30 = *(v23 - 8);
    (*(v30 + 16))(v8, v25, v23);
    (*(v30 + 56))(v8, 0, 1, v23);
    sub_22DC82864(v8, v14);

    return (*(v31[0] + 8))(v21, v15);
  }

  else
  {
    (*(v10 + 16))(v14, v33, v9, v19);
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D4A0);
    v29 = *(v28 - 8);
    (*(v29 + 16))(v8, v34, v28);
    (*(v29 + 56))(v8, 0, 1, v28);
    return sub_22DC82864(v8, v14);
  }
}

uint64_t sub_22DC86C58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v34 = a3;
  v33 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D548);
  MEMORY[0x28223BE20](v4 - 8, v5, v6);
  v8 = v31 - v7;
  v9 = sub_22DCB5B3C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11, v12);
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA2D480);
  v16 = *(v15 - 8);
  v19 = MEMORY[0x28223BE20](v15, v17, v18);
  v21 = v31 - v20;
  v22 = *(a1 + 8);
  if (v22)
  {
    v31[1] = a1;
    v32 = v9;
    v35 = v22;
    swift_bridgeObjectRetain_n();
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D468);
    sub_22DCB62EC();
    v31[0] = v16;
    v24 = (*(v16 + 88))(v21, v15);
    if (v24 == *MEMORY[0x277D85758])
    {
LABEL_5:
      (*(v10 + 16))(v14, v33, v32);
      v26 = *(v23 - 8);
      (*(v26 + 16))(v8, v34, v23);
      (*(v26 + 56))(v8, 0, 1, v23);
      sub_22DC82ABC(v8, v14);
    }

    v25 = v34;
    if (v24 == *MEMORY[0x277D85750])
    {
      (*(v31[0] + 8))(v21, v15);
      goto LABEL_5;
    }

    if (v24 == *MEMORY[0x277D85748])
    {
    }

    (*(v10 + 16))(v14, v33, v32);
    v30 = *(v23 - 8);
    (*(v30 + 16))(v8, v25, v23);
    (*(v30 + 56))(v8, 0, 1, v23);
    sub_22DC82ABC(v8, v14);

    return (*(v31[0] + 8))(v21, v15);
  }

  else
  {
    (*(v10 + 16))(v14, v33, v9, v19);
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D468);
    v29 = *(v28 - 8);
    (*(v29 + 16))(v8, v34, v28);
    (*(v29 + 56))(v8, 0, 1, v28);
    return sub_22DC82ABC(v8, v14);
  }
}

void sub_22DC870B0(uint64_t *a1)
{
  os_unfair_lock_assert_owner((*(v1 + 16) + 32));
  if (a1[1])
  {
    v10 = a1[1];
    v6 = *a1;
    MEMORY[0x28223BE20](v3, v4, v5);
    v9[2] = &v10;

    sub_22DC885BC(sub_22DC89460, v9, v6, &qword_27DA2D4A0, &unk_22DCEBDF8, &qword_27DA2D4A8, &unk_22DCEBE00);
    v8 = v7;

    *a1 = v8;
  }
}

void sub_22DC87198(uint64_t *a1)
{
  os_unfair_lock_assert_owner((*(v1 + 16) + 32));
  if (a1[1])
  {
    v10 = a1[1];
    v6 = *a1;
    MEMORY[0x28223BE20](v3, v4, v5);
    v9[2] = &v10;

    sub_22DC885BC(sub_22DC891F8, v9, v6, &qword_27DA2D468, &unk_22DCEBDC8, &unk_27DA2D470, &unk_22DCEBDD0);
    v8 = v7;

    *a1 = v8;
  }
}

unint64_t sub_22DC87280(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_22DC8734C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
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
    sub_22DC65774(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_22DC8734C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_22DC87458(a5, a6);
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
    result = sub_22DCB659C();
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

uint64_t sub_22DC87458(uint64_t a1, unint64_t a2)
{
  v3 = sub_22DC874A4(a1, a2);
  sub_22DC875D4(&unk_28410EB60);
  return v3;
}

uint64_t sub_22DC874A4(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  v6 = sub_22DC876C0(v5, 0);
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

  result = sub_22DCB659C();
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
        v10 = sub_22DCB61AC();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_22DC876C0(v10, 0);
        result = sub_22DCB654C();
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

uint64_t sub_22DC875D4(uint64_t result)
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

  result = sub_22DC87734(result, v11, 1, v3);
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

void *sub_22DC876C0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D458);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_22DC87734(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D458);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

uint64_t sub_22DC8782C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v9 = v5;
  v11 = sub_22DC9DE28(a1);
  if (v12)
  {
    v13 = v11;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v5;
    v28 = *v9;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a4();
      v15 = v28;
    }

    v16 = *(v15 + 48);
    v17 = sub_22DCB5B3C();
    v18 = v13;
    (*(*(v17 - 8) + 8))(v16 + *(*(v17 - 8) + 72) * v13, v17);
    v19 = *(v15 + 56);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v27 = *(v20 - 8);
    (*(v27 + 32))(a5, v19 + *(v27 + 72) * v18, v20);
    sub_22DC87D08(v18, v15, a2, a3);
    *v9 = v15;
    v21 = *(v27 + 56);
    v22 = a5;
    v23 = 0;
    v24 = v20;
  }

  else
  {
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v21 = *(*(v25 - 8) + 56);
    v24 = v25;
    v22 = a5;
    v23 = 1;
  }

  return v21(v22, v23, 1, v24);
}

uint64_t sub_22DC879F8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_22DC9DEC0(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_22DCA0980();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for LibraryReplicatorIdentifier();
    sub_22DC894A0(v10 + *(*(v11 - 8) + 72) * v7, type metadata accessor for LibraryReplicatorIdentifier);
    v12 = *(v9 + 56);
    v13 = type metadata accessor for LibrarySnapshot();
    v20 = *(v13 - 8);
    sub_22DC89500(v12 + *(v20 + 72) * v7, a2, type metadata accessor for LibrarySnapshot);
    sub_22DC8804C(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for LibrarySnapshot();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_22DC87B90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v8 = sub_22DC9DF8C(a1, a2, a3, a4);
  if (v9)
  {
    v10 = v8;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v5;
    v22 = *v6;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_22DCA0C74();
      v12 = v22;
    }

    v13 = *(v12 + 56);
    v14 = type metadata accessor for GallerySnapshot();
    v21 = *(v14 - 8);
    sub_22DC89500(v13 + *(v21 + 72) * v10, a5, type metadata accessor for GallerySnapshot);
    sub_22DC883A8(v10, v12);
    *v6 = v12;
    v15 = *(v21 + 56);
    v16 = a5;
    v17 = 0;
    v18 = v14;
  }

  else
  {
    v19 = type metadata accessor for GallerySnapshot();
    v15 = *(*(v19 - 8) + 56);
    v18 = v19;
    v16 = a5;
    v17 = 1;
  }

  return v15(v16, v17, 1, v18);
}

void sub_22DC87D08(int64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v40 = a3;
  v41 = a4;
  v6 = sub_22DCB5B3C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8, v9);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a2 + 64;
  v13 = -1 << *(a2 + 32);
  v14 = (a1 + 1) & ~v13;
  if ((*(a2 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v16 = sub_22DCB64EC();
    v17 = v15;
    v45 = (v16 + 1) & v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v43 = a2 + 64;
    v44 = v19;
    v20 = *(v18 + 56);
    v42 = (v18 - 8);
    v46 = v20;
    do
    {
      v21 = v20 * v14;
      v22 = v17;
      v23 = v18;
      v44(v11, *(a2 + 48) + v20 * v14, v6);
      sub_22DC8ADAC(&qword_27DA2D128, MEMORY[0x277CC95F0]);
      v24 = sub_22DCB60DC();
      (*v42)(v11, v6);
      v17 = v22;
      v25 = v24 & v22;
      if (a1 >= v45)
      {
        if (v25 >= v45 && a1 >= v25)
        {
LABEL_15:
          v18 = v23;
          if (v46 * a1 < v21 || *(a2 + 48) + v46 * a1 >= (*(a2 + 48) + v21 + v46))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v46 * a1 != v21)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v28 = *(a2 + 56);
          v29 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(v40) - 8) + 72);
          v30 = v29 * a1;
          v31 = v28 + v29 * a1;
          v32 = v29 * v14;
          v33 = v28 + v29 * v14 + v29;
          if (v30 < v32 || v31 >= v33)
          {
            swift_arrayInitWithTakeFrontToBack();
            a1 = v14;
            v12 = v43;
            v17 = v22;
          }

          else
          {
            a1 = v14;
            v35 = v30 == v32;
            v12 = v43;
            v17 = v22;
            if (!v35)
            {
              swift_arrayInitWithTakeBackToFront();
              v17 = v22;
              a1 = v14;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v25 >= v45 || a1 >= v25)
      {
        goto LABEL_15;
      }

      v18 = v23;
      v12 = v43;
LABEL_4:
      v14 = (v14 + 1) & v17;
      v20 = v46;
    }

    while (((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  *(v12 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v36 = *(a2 + 16);
  v37 = __OFSUB__(v36, 1);
  v38 = v36 - 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v38;
    ++*(a2 + 36);
  }
}

void sub_22DC8804C(uint64_t a1, uint64_t a2)
{
  v32 = type metadata accessor for LibraryReplicatorIdentifier();
  v4 = *(v32 - 8);
  MEMORY[0x28223BE20](a1, v5, v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v12 = (v11 + 1) & ~v10;
  v13 = *(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12;
  v33 = v11;
  if (v13)
  {
    v14 = ~v10;
    v15 = (sub_22DCB64EC() + 1) & ~v10;
    v16 = *(v4 + 72);
    v31 = a2 + 64;
    do
    {
      v17 = v16 * v12;
      sub_22DC89364(*(a2 + 48) + v16 * v12, v8, type metadata accessor for LibraryReplicatorIdentifier);
      sub_22DCB68AC();
      sub_22DCB618C();
      sub_22DCB5B3C();
      sub_22DC8ADAC(&qword_27DA2D128, MEMORY[0x277CC95F0]);
      sub_22DCB60EC();
      v18 = sub_22DCB68EC();
      sub_22DC894A0(v8, type metadata accessor for LibraryReplicatorIdentifier);
      v19 = v18 & v14;
      v20 = v33;
      if (v33 >= v15)
      {
        if (v19 < v15)
        {
          v9 = v31;
          goto LABEL_4;
        }

        if (v33 < v19)
        {
LABEL_3:
          v9 = v31;
          goto LABEL_4;
        }
      }

      else if (v19 < v15 && v33 < v19)
      {
        goto LABEL_3;
      }

      if (v16 * v33 < v17 || *(a2 + 48) + v16 * v33 >= (*(a2 + 48) + v17 + v16))
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v16 * v33 != v17)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v21 = *(a2 + 56);
      v22 = *(*(type metadata accessor for LibrarySnapshot() - 8) + 72);
      v23 = v22 * v20;
      v24 = v21 + v22 * v20;
      v25 = v22 * v12;
      v26 = v21 + v22 * v12 + v22;
      v27 = v23 < v25 || v24 >= v26;
      v9 = v31;
      if (v27)
      {
        swift_arrayInitWithTakeFrontToBack();
LABEL_24:
        v33 = v12;
        goto LABEL_4;
      }

      v33 = v12;
      if (v23 != v25)
      {
        swift_arrayInitWithTakeBackToFront();
        goto LABEL_24;
      }

LABEL_4:
      v12 = (v12 + 1) & v14;
    }

    while (((*(v9 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v9 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v33) - 1;
  v28 = *(a2 + 16);
  v29 = __OFSUB__(v28, 1);
  v30 = v28 - 1;
  if (v29)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v30;
    ++*(a2 + 36);
  }
}

unint64_t sub_22DC883A8(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22DCB64EC() + 1) & ~v5;
    while (1)
    {
      sub_22DCB68AC();

      sub_22DCB618C();
      sub_22DCB618C();
      v9 = sub_22DCB68EC();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 32 * v3);
      v13 = (v11 + 32 * v6);
      if (v3 != v6 || v12 >= v13 + 2)
      {
        v14 = v13[1];
        *v12 = *v13;
        v12[1] = v14;
      }

      v15 = *(a2 + 56);
      v16 = *(*(type metadata accessor for GallerySnapshot() - 8) + 72);
      v17 = v16 * v3;
      result = v15 + v16 * v3;
      v18 = v16 * v6;
      v19 = v15 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

void sub_22DC885BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t *a6, uint64_t a7)
{
  v22 = a6;
  v13 = a1;
  v23 = *MEMORY[0x277D85DE8];
  v14 = *(a3 + 32);
  v15 = ((1 << v14) + 63) >> 6;
  v16 = 8 * v15;
  if ((v14 & 0x3Fu) > 0xD)
  {
    v21 = (((1 << v14) + 63) >> 6);

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v17 = swift_slowAlloc();
      v18 = a3;
      v19 = v17;
      sub_22DC88AF4(v17, v21, v18, v13, a2, a4, a5, v22, a7);
      MEMORY[0x2318DAAC0](v19, -1, -1);
      return;
    }

    v15 = v21;
  }

  v20 = a5;
  v21 = &v20;
  MEMORY[0x28223BE20](a1, a2, a3);
  bzero(&v20 - ((v16 + 15) & 0x3FFFFFFFFFFFFFF0), v16);
  sub_22DC88784((&v20 - ((v16 + 15) & 0x3FFFFFFFFFFFFFF0)), v15, a3, v13, a2, a4, v20, v22, a7);
  if (v7)
  {
    swift_willThrow();
  }
}

void sub_22DC88784(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, char *), uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t *a8, uint64_t a9)
{
  v45 = a8;
  v46 = a1;
  v56 = a4;
  v41 = a2;
  v42 = a9;
  v43 = a6;
  v44 = a7;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(a6);
  v10 = *(v55 - 8);
  MEMORY[0x28223BE20](v55, v11, v12);
  v58 = &v40 - v13;
  v14 = sub_22DCB5B3C();
  v18.n128_f64[0] = MEMORY[0x28223BE20](v14, v15, v16);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = 0;
  v57 = a3;
  v22 = *(a3 + 64);
  v47 = 0;
  v48 = a3 + 64;
  v23 = 1 << *(a3 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & v22;
  v26 = (v23 + 63) >> 6;
  v51 = v10 + 16;
  v52 = v17 + 16;
  v53 = v17;
  v54 = v10;
  v49 = (v10 + 8);
  v50 = (v17 + 8);
  while (v25)
  {
    v59 = (v25 - 1) & v25;
    v27 = __clz(__rbit64(v25)) | (v21 << 6);
    v28 = v58;
LABEL_11:
    v31 = v57;
    (*(v53 + 16))(v20, v57[6] + *(v53 + 72) * v27, v14, v18);
    v32 = v27;
    v33 = v31[7] + *(v54 + 72) * v27;
    v34 = v14;
    v35 = v55;
    (*(v54 + 16))(v28, v33, v55);
    v36 = v60;
    v37 = v56(v20, v28);
    v60 = v36;
    if (v36)
    {
      (*v49)(v28, v35);
      (*v50)(v20, v34);
      return;
    }

    v38 = v37;
    (*v49)(v28, v35);
    (*v50)(v20, v34);
    v14 = v34;
    v25 = v59;
    if (v38)
    {
      *(v46 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
      if (__OFADD__(v47++, 1))
      {
        __break(1u);
LABEL_16:
        sub_22DC88BBC(v46, v41, v47, v57, v43, v44, v45);
        return;
      }
    }
  }

  v29 = v21;
  v28 = v58;
  while (1)
  {
    v21 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v21 >= v26)
    {
      goto LABEL_16;
    }

    v30 = *(v48 + 8 * v21);
    ++v29;
    if (v30)
    {
      v59 = (v30 - 1) & v30;
      v27 = __clz(__rbit64(v30)) | (v21 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *sub_22DC88AF4(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, char *), uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t *a8, uint64_t a9)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v10 = result;
      v18 = a2;
      v11 = a8;
      v12 = a7;
      v13 = a6;
      v14 = a5;
      v15 = a4;
      bzero(result, 8 * a2);
      result = v10;
      a2 = v18;
      a4 = v15;
      a5 = v14;
      a6 = v13;
      a7 = v12;
      a8 = v11;
    }

    sub_22DC88784(result, a2, a3, a4, a5, a6, a7, a8, a9);
    v17 = v16;

    return v17;
  }

  return result;
}

uint64_t sub_22DC88BBC(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v66 = *(v70 - 8);
  MEMORY[0x28223BE20](v70, v12, v13);
  v69 = v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16, v17);
  v60 = v56 - v18;
  v19 = sub_22DCB5B3C();
  v65 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v20, v21);
  v68 = v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v24, v25);
  v59 = v56 - v26;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a7);
  result = sub_22DCB66BC();
  v28 = result;
  if (a2 < 1)
  {
    v29 = 0;
  }

  else
  {
    v29 = *a1;
  }

  v30 = 0;
  v56[3] = v65 + 16;
  v57 = a2;
  v67 = v65 + 32;
  v31 = result + 64;
  v58 = a1;
  v56[0] = a4;
  v56[1] = v66 + 32;
  v56[2] = v66 + 16;
  while (v29)
  {
    v32 = __clz(__rbit64(v29));
    v61 = (v29 - 1) & v29;
LABEL_16:
    v35 = v32 | (v30 << 6);
    v36 = a4[6];
    v37 = v65;
    v64 = *(v65 + 72);
    v38 = v59;
    (*(v65 + 16))(v59, v36 + v64 * v35, v19);
    v39 = a4[7];
    v40 = v66;
    v63 = *(v66 + 72);
    v41 = v39 + v63 * v35;
    v42 = v19;
    v43 = v60;
    v44 = v70;
    (*(v66 + 16))(v60, v41, v70);
    v62 = *(v37 + 32);
    v62(v68, v38, v42);
    v45 = *(v40 + 32);
    v46 = v43;
    v19 = v42;
    v45(v69, v46, v44);
    sub_22DC8ADAC(&qword_27DA2D128, MEMORY[0x277CC95F0]);
    result = sub_22DCB60DC();
    v47 = -1 << *(v28 + 32);
    v48 = result & ~v47;
    v49 = v48 >> 6;
    if (((-1 << v48) & ~*(v31 + 8 * (v48 >> 6))) == 0)
    {
      v51 = 0;
      v52 = (63 - v47) >> 6;
      a2 = v57;
      a1 = v58;
      while (++v49 != v52 || (v51 & 1) == 0)
      {
        v53 = v49 == v52;
        if (v49 == v52)
        {
          v49 = 0;
        }

        v51 |= v53;
        v54 = *(v31 + 8 * v49);
        if (v54 != -1)
        {
          v50 = __clz(__rbit64(~v54)) + (v49 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v50 = __clz(__rbit64((-1 << v48) & ~*(v31 + 8 * (v48 >> 6)))) | v48 & 0x7FFFFFFFFFFFFFC0;
    a2 = v57;
    a1 = v58;
LABEL_26:
    *(v31 + ((v50 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v50;
    v62((*(v28 + 48) + v50 * v64), v68, v42);
    result = (v45)(*(v28 + 56) + v50 * v63, v69, v70);
    ++*(v28 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v56[0];
    v29 = v61;
    if (!a3)
    {
      return v28;
    }
  }

  v33 = v30;
  while (1)
  {
    v30 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    if (v30 >= a2)
    {
      return v28;
    }

    v34 = a1[v30];
    ++v33;
    if (v34)
    {
      v32 = __clz(__rbit64(v34));
      v61 = (v34 - 1) & v34;
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

uint64_t sub_22DC89090(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t *a6)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a4);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10, v11);
  v13 = v17 - v12;
  v17[1] = *a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(a6);
  sub_22DCB62EC();
  v14 = (*(v9 + 88))(v13, v8);
  if (v14 == *MEMORY[0x277D85758])
  {
    return 1;
  }

  if (v14 == *MEMORY[0x277D85750] || v14 != *MEMORY[0x277D85748])
  {
    (*(v9 + 8))(v13, v8);
    return 1;
  }

  return 0;
}

uint64_t objectdestroy_18Tm_0()
{
  swift_unknownObjectRelease();
  sub_22DC86228(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_22DC89288(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_22DC65BFC;

  return sub_22DC814A8(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_22DC89364(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22DC893F8(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = **(v2 + 16);

  *(a1 + 8) = v5;
  return a2(a1);
}

uint64_t sub_22DC894A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22DC89500(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22DC89568(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22DC65BFC;

  return sub_22DC80DA0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_22DC89630(void *a1)
{
  v46 = a1;
  v1 = sub_22DCB5B3C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3, v4);
  v45 = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7, v8);
  v10 = v44 - v9;
  v44[1] = v11;
  MEMORY[0x28223BE20](v12, v13, v14);
  v16 = v44 - v15;
  sub_22DCB5B2C();
  if (qword_280C106F0 != -1)
  {
    swift_once();
  }

  v17 = sub_22DCB5FDC();
  __swift_project_value_buffer(v17, qword_280C11198);
  v18 = *(v2 + 16);
  v48 = v2 + 16;
  v49 = v16;
  v47 = v18;
  v18(v10, v16, v1);
  v19 = sub_22DCB5FBC();
  v20 = sub_22DCB63DC();
  v21 = os_log_type_enabled(v19, v20);
  v50 = v2;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    aBlock = v23;
    *v22 = 136315138;
    sub_22DC8ADAC(&unk_27DA2D490, MEMORY[0x277CC95F0]);
    v24 = sub_22DCB67DC();
    v26 = v25;
    (*(v50 + 8))(v10, v1);
    v27 = sub_22DC87280(v24, v26, &aBlock);

    *(v22 + 4) = v27;
    _os_log_impl(&dword_22D9C5000, v19, v20, "listener incoming %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x2318DAAC0](v23, -1, -1);
    v28 = v22;
    v2 = v50;
    MEMORY[0x2318DAAC0](v28, -1, -1);
  }

  else
  {

    (*(v2 + 8))(v10, v1);
  }

  v29 = objc_opt_self();
  v30 = [v29 interfaceWithProtocol_];
  v31 = v46;
  [v46 setExportedInterface_];

  [v31 setExportedObject_];
  v32 = [v29 interfaceWithProtocol_];
  [v31 setRemoteObjectInterface_];

  [v31 resume];
  v33 = v45;
  v34 = v49;
  v47(v45, v49, v1);
  v35 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v36 = swift_allocObject();
  v37 = *(v2 + 32);
  v37(v36 + v35, v33, v1);
  v56 = sub_22DC8ACA8;
  v57 = v36;
  aBlock = MEMORY[0x277D85DD0];
  v53 = 1107296256;
  v44[0] = &v54;
  v54 = sub_22DC7E5B8;
  v55 = &block_descriptor_78;
  v38 = _Block_copy(&aBlock);

  [v31 setInterruptionHandler_];
  _Block_release(v38);
  v47(v33, v34, v1);
  v39 = swift_allocObject();
  v37(v39 + v35, v33, v1);
  v56 = sub_22DC8AD3C;
  v57 = v39;
  aBlock = MEMORY[0x277D85DD0];
  v53 = 1107296256;
  v54 = sub_22DC7E5B8;
  v55 = &block_descriptor_84;
  v40 = _Block_copy(&aBlock);

  [v31 setInvalidationHandler_];
  _Block_release(v40);
  v56 = sub_22DC7E86C;
  v57 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v53 = 1107296256;
  v54 = sub_22DC7E95C;
  v55 = &block_descriptor_87;
  v41 = _Block_copy(&aBlock);
  v42 = [v31 remoteObjectProxyWithErrorHandler_];
  _Block_release(v41);
  sub_22DCB64BC();
  swift_unknownObjectRelease();
  sub_22DC65774(&aBlock, v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D4E0);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(&aBlock);
    (*(v50 + 8))(v49, v1);
    swift_unknownObjectRelease();
    return 1;
  }

  else
  {
    result = sub_22DCB666C();
    __break(1u);
  }

  return result;
}

void sub_22DC89CD4(uint64_t a1, void (**a2)(void, void))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA2D440);
  MEMORY[0x28223BE20](v3 - 8, v4, v5);
  v78 = &v61 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D4C0);
  v71 = *(v7 - 8);
  v72 = v7;
  MEMORY[0x28223BE20](v7, v8, v9);
  v70 = &v61 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D4C8);
  v75 = *(v11 - 8);
  v76 = v11;
  MEMORY[0x28223BE20](v11, v12, v13);
  v73 = v14;
  v74 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16, v17);
  v77 = &v61 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D4D0);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v21, v22);
  v24 = &v61 - v23;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D4D8);
  v67 = *(v69 - 8);
  MEMORY[0x28223BE20](v69, v25, v26);
  v66 = &v61 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = v27;
  MEMORY[0x28223BE20](v28, v29, v30);
  v32 = &v61 - v31;
  if (qword_280C106F0 != -1)
  {
    swift_once();
  }

  v33 = sub_22DCB5FDC();
  __swift_project_value_buffer(v33, qword_280C11198);
  v34 = sub_22DCB5FBC();
  v35 = sub_22DCB63DC();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_22D9C5000, v34, v35, "Listener registered…", v36, 2u);
    MEMORY[0x2318DAAC0](v36, -1, -1);
  }

  v37 = [objc_opt_self() currentConnection];
  if (v37)
  {
    v38 = v37;
    v65 = a2;
    aBlock[4] = sub_22DC7EA28;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22DC7E95C;
    aBlock[3] = &block_descriptor_1;
    v39 = _Block_copy(aBlock);
    v64 = v38;
    v40 = [v38 remoteObjectProxyWithErrorHandler_];
    _Block_release(v39);
    sub_22DCB64BC();
    swift_unknownObjectRelease();
    sub_22DC65774(aBlock, v80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D4E0);
    if (swift_dynamicCast())
    {
      v63 = v79;
      type metadata accessor for LibrarySnapshot();
      v41 = *MEMORY[0x277D85778];
      (*(v20 + 104))(v24, v41, v19);
      v42 = v32;
      v62 = v32;
      sub_22DCB633C();
      type metadata accessor for GallerySnapshot();
      (*(v71 + 104))(v70, v41, v72);
      v43 = v77;
      sub_22DCB633C();
      v44 = sub_22DCB62BC();
      (*(*(v44 - 8) + 56))(v78, 1, 1, v44);
      v45 = v67;
      v46 = v66;
      v47 = v69;
      (*(v67 + 16))(v66, v42, v69);
      v49 = v74;
      v48 = v75;
      v50 = v76;
      (*(v75 + 16))(v74, v43, v76);
      v51 = (*(v45 + 80) + 32) & ~*(v45 + 80);
      v52 = (v68 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
      v53 = (*(v48 + 80) + v52 + 8) & ~*(v48 + 80);
      v54 = swift_allocObject();
      *(v54 + 16) = 0;
      *(v54 + 24) = 0;
      (*(v45 + 32))(v54 + v51, v46, v47);
      *(v54 + v52) = v63;
      (*(v48 + 32))(v54 + v53, v49, v50);
      swift_unknownObjectRetain();
      sub_22DC95460(0, 0, v78, &unk_22DCEBE60, v54);

      v65[2](v65, 0);
      swift_unknownObjectRelease();

      (*(v48 + 8))(v77, v50);
      (*(v45 + 8))(v62, v47);
      __swift_destroy_boxed_opaque_existential_1(aBlock);
    }

    else
    {
      _Block_release(v65);
      sub_22DCB666C();
      __break(1u);
    }
  }

  else
  {
    v55 = sub_22DCB5FBC();
    v56 = sub_22DCB63CC();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_22D9C5000, v55, v56, "Connection missing…", v57, 2u);
      MEMORY[0x2318DAAC0](v57, -1, -1);
    }

    v58 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v59 = sub_22DCB611C();
    v78 = [v58 initWithDomain:v59 code:100 userInfo:0];

    (a2)[2](a2, v78);
    v60 = v78;
  }
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22DC8A5F8(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D4D8) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D4C8) - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v7);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_22DC65BFC;

  return sub_22DC7EA54(a1, v10, v11, v1 + v6, v12, v1 + v9);
}

uint64_t sub_22DC8A77C(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_22DC65BFC;

  return sub_22DC7EC7C(a1, a2, v6, v7, v8);
}

uint64_t sub_22DC8A840(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D4D8) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22DC65BFC;

  return sub_22DC7F1B0(a1, v6, v7, v1 + v5, v8);
}

uint64_t objectdestroy_45Tm(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v3 + 8))(v1 + v5, v2);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v1, v6 + 8, v4 | 7);
}

uint64_t sub_22DC8AA40(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D4C8) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22DC65BFC;

  return sub_22DC7FF80(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_22DC8AB78(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22D9CB0D8;

  return sub_22D9CA330(a1, v4);
}

uint64_t objectdestroy_74Tm()
{
  v1 = sub_22DCB5B3C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22DC8ADAC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22DC8AE84(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2) - 8);
  v7 = v4 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a4(a1, v7);
}

uint64_t sub_22DC8AF0C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22DC65BFC;

  return sub_22DC8491C(a1, v4, v5, v6);
}

uint64_t objectdestroy_124Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22DC8B060()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22DC65BFC;

  return sub_22DC83EFC();
}

uint64_t objectdestroy_132Tm(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = sub_22DCB5B3C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = (v6 + v9 + 8) & ~v9;
  v11 = *(v8 + 64);
  v12 = v4 | v9;
  (*(v3 + 8))(v1 + v5, v2);

  (*(v8 + 8))(v1 + v10, v7);

  return MEMORY[0x2821FE8E8](v1, v10 + v11, v12 | 7);
}

uint64_t sub_22DC8B294(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t, unint64_t, uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(sub_22DCB5B3C() - 8);
  v10 = *(v4 + v8);
  v11 = v4 + ((v8 + *(v9 + 80) + 8) & ~*(v9 + 80));

  return a4(a1, v4 + v7, v10, v11);
}

uint64_t sub_22DC8B42C()
{
  v0 = sub_22DCB5FDC();
  __swift_allocate_value_buffer(v0, qword_27DA376F0);
  __swift_project_value_buffer(v0, qword_27DA376F0);
  return sub_22DCB5FCC();
}

uint64_t sub_22DC8B4C8()
{

  return MEMORY[0x2821FE8D8](v0, 88, 7);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_22DC8B540(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22DC8B590(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_22DC8B5E4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_22DC8B5FC(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

void sub_22DC8B62C(uint64_t a1, uint64_t a2, void *a3)
{
  if (qword_27DA2CB78 != -1)
  {
    swift_once();
  }

  v4 = sub_22DCB5FDC();
  __swift_project_value_buffer(v4, qword_27DA376F0);
  v5 = sub_22DCB5FBC();
  v6 = sub_22DCB63DC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_22D9C5000, v5, v6, "FSEventStreamCallback invoked", v7, 2u);
    MEMORY[0x2318DAAC0](v7, -1, -1);
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {

    v8 = a3;
    sub_22DCB620C();
  }
}

uint64_t NTKKeyedHashingEncoder.encodedData.getter()
{
  v57 = *MEMORY[0x277D85DE8];
  v1 = sub_22DCB607C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3, v4);
  v44 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_22DCB615C();
  v6 = *(v50 - 8);
  MEMORY[0x28223BE20](v50, v7, v8);
  v49 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22DCB60AC();
  v43 = *(v10 - 8);
  v13 = MEMORY[0x28223BE20](v10, v11, v12);
  v15 = v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v0 finishEncoding];
  v52 = v15;
  sub_22DCB609C();
  v16 = OBJC_IVAR___NTKKeyedHashingEncoder_keyValuePairs;
  swift_beginAccess();
  v17 = *&v0[v16];
  v18 = *(v17 + 16);
  v45 = v1;
  if (v18)
  {
    v19 = sub_22DC8DE34(v18, 0);
    v51 = sub_22DC8F544(v54, (v19 + 4), v18, v17);
    v48 = v56;
    swift_bridgeObjectRetain_n();
    sub_22DC7345C();
    if (v51 != v18)
    {
      goto LABEL_47;
    }
  }

  else
  {

    v19 = MEMORY[0x277D84F90];
  }

  v42 = v2;
  v54[0] = v19;
  sub_22DC8E8C4(v54);
  v41[1] = 0;

  v51 = v54[0];
  v48 = v54[0][2];
  if (v48)
  {
    v20 = 0;
    v46 = v10;
    v47 = (v6 + 8);
    v21 = v51 + 7;
    while (1)
    {
      if (v20 >= v51[2])
      {
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
      }

      v22 = *(v21 - 1);
      v23 = *v21;

      sub_22DC8F990(v22, v23);
      v24 = v49;
      sub_22DCB614C();
      v25 = sub_22DCB613C();
      v27 = v26;
      (*v47)(v24, v50);
      if (v27 >> 60 == 15)
      {
        goto LABEL_48;
      }

      v28 = v27 >> 62;
      if ((v27 >> 62) <= 1)
      {
        break;
      }

      if (v28 == 2)
      {
        v29 = *(v25 + 16);
        v30 = *(v25 + 24);

        if (sub_22DCB59BC() && __OFSUB__(v29, sub_22DCB59DC()))
        {
          goto LABEL_43;
        }

        if (__OFSUB__(v30, v29))
        {
          goto LABEL_40;
        }

LABEL_23:
        sub_22DCB59CC();
        sub_22DC8F9F8(&qword_27DA2D580, MEMORY[0x277CC5540]);
        v10 = v46;
        goto LABEL_25;
      }

      sub_22DC8F9F8(&qword_27DA2D580, MEMORY[0x277CC5540]);
      memset(v54, 0, 14);
LABEL_25:
      sub_22DCB604C();
      sub_22DC8F9E4(v25, v27);
      sub_22DC8F9E4(v25, v27);
      v31 = v23 >> 62;
      if ((v23 >> 62) > 1)
      {
        if (v31 != 2)
        {
          sub_22DC8F9F8(&qword_27DA2D580, MEMORY[0x277CC5540]);
          memset(v54, 0, 14);
          goto LABEL_8;
        }

        v32 = *(v22 + 16);
        v33 = *(v22 + 24);

        if (sub_22DCB59BC() && __OFSUB__(v32, sub_22DCB59DC()))
        {
          goto LABEL_44;
        }

        if (__OFSUB__(v33, v32))
        {
          goto LABEL_42;
        }

        goto LABEL_35;
      }

      if (v31)
      {
        if (v22 >> 32 < v22)
        {
          goto LABEL_41;
        }

        if (sub_22DCB59BC() && __OFSUB__(v22, sub_22DCB59DC()))
        {
          goto LABEL_46;
        }

LABEL_35:
        sub_22DCB59CC();
        sub_22DC8F9F8(&qword_27DA2D580, MEMORY[0x277CC5540]);
        goto LABEL_8;
      }

      v54[0] = v22;
      LOWORD(v54[1]) = v23;
      BYTE2(v54[1]) = BYTE2(v23);
      BYTE3(v54[1]) = BYTE3(v23);
      BYTE4(v54[1]) = BYTE4(v23);
      BYTE5(v54[1]) = BYTE5(v23);
      sub_22DC8F9F8(&qword_27DA2D580, MEMORY[0x277CC5540]);
LABEL_8:
      sub_22DCB604C();
      sub_22DC86228(v22, v23);
      sub_22DC86228(v22, v23);
      ++v20;
      v21 += 4;
      if (v48 == v20)
      {
        goto LABEL_37;
      }
    }

    if (!v28)
    {
      v54[0] = v25;
      LOWORD(v54[1]) = v27;
      BYTE2(v54[1]) = BYTE2(v27);
      BYTE3(v54[1]) = BYTE3(v27);
      BYTE4(v54[1]) = BYTE4(v27);
      BYTE5(v54[1]) = BYTE5(v27);
      sub_22DC8F9F8(&qword_27DA2D580, MEMORY[0x277CC5540]);
      goto LABEL_25;
    }

    if (v25 >> 32 < v25)
    {
      goto LABEL_39;
    }

    if (sub_22DCB59BC() && __OFSUB__(v25, sub_22DCB59DC()))
    {
      goto LABEL_45;
    }

    goto LABEL_23;
  }

LABEL_37:

  v34 = v44;
  v35 = v52;
  sub_22DCB608C();
  v36 = v45;
  v55 = v45;
  v56 = sub_22DC8F9F8(&qword_27DA2D588, MEMORY[0x277CC5290]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v54);
  v38 = v42;
  (*(v42 + 16))(boxed_opaque_existential_1, v34, v36);
  __swift_project_boxed_opaque_existential_1(v54, v55);
  sub_22DCB59FC();
  (*(v38 + 8))(v34, v36);
  v39 = v53;
  __swift_destroy_boxed_opaque_existential_1(v54);
  (*(v43 + 8))(v35, v10);
  return v39;
}

void NTKKeyedHashingEncoder.encodeValue(ofObjCType:at:)()
{
  v0 = *MEMORY[0x277CCA2A0];
  v1 = objc_allocWithZone(MEMORY[0x277CBEAD8]);
  v2 = sub_22DCB611C();
  v3 = [v1 initWithName:v0 reason:v2 userInfo:0];

  [v3 raise];
  abort();
}

void NTKKeyedHashingEncoder.encode(_:)()
{
  v0 = *MEMORY[0x277CCA2A0];
  v1 = objc_allocWithZone(MEMORY[0x277CBEAD8]);
  v2 = sub_22DCB611C();
  v3 = [v1 initWithName:v0 reason:v2 userInfo:0];

  [v3 raise];
  abort();
}

{
  v0 = *MEMORY[0x277CCA2A0];
  v1 = objc_allocWithZone(MEMORY[0x277CBEAD8]);
  v2 = sub_22DCB611C();
  v3 = [v1 initWithName:v0 reason:v2 userInfo:0];

  [v3 raise];
  abort();
}

void NTKKeyedHashingEncoder.encodeRootObject(_:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v2 = sub_22DCB67FC();
  v3 = sub_22DCB611C();
  [v1 encodeObject:v2 forKey:v3];
  swift_unknownObjectRelease();
}

uint64_t NTKKeyedHashingEncoder.encode(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(v3 + OBJC_IVAR___NTKKeyedHashingEncoder_state))
  {
    v22 = sub_22DCB611C();
    v23 = objc_allocWithZone(MEMORY[0x277CBEAD8]);
    goto LABEL_17;
  }

  sub_22DC76DF4(a1, &v27);
  if (!v28)
  {
    sub_22DC8FAA4(&v27);

    v9 = sub_22DC8FDE8(byte_28410EDD8, 16);
    v11 = v10;
    v12 = OBJC_IVAR___NTKKeyedHashingEncoder_keyValuePairs;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v27 = *(v3 + v12);
    *(v3 + v12) = 0x8000000000000000;
    sub_22DC8E498(v9, v11, a2, a3, isUniquelyReferenced_nonNull_native);

    *(v3 + v12) = v27;
    return swift_endAccess();
  }

  sub_22DC66054(&v27, v29);
  if ((a2 != 0x6E6F697461657263 || a3 != 0xEC00000065746144) && (sub_22DCB680C() & 1) == 0)
  {
    v6 = [objc_allocWithZone(NTKKeyedHashingEncoder) init];
    sub_22DC65774(v29, &v27);
    v7 = sub_22DC6600C(0, &qword_27DA2D0F0);
    if (swift_dynamicCast())
    {
      v8 = v26;
      if ([v26 replacementObjectForCoder_])
      {
        sub_22DCB64BC();
        swift_unknownObjectRelease();
        sub_22DC66054(&v26, &v27);
      }

      else
      {
        v28 = v7;
        *&v27 = v26;
        v15 = v26;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D590);
      if (swift_dynamicCast())
      {
        [v26 encodeWithCoder_];
        [v6 finishEncoding];

        v16 = [v6 encodedData];
        v17 = sub_22DCB5ABC();
        v19 = v18;

        v20 = OBJC_IVAR___NTKKeyedHashingEncoder_keyValuePairs;
        swift_beginAccess();
        v21 = swift_isUniquelyReferenced_nonNull_native();
        *&v26 = *(v3 + v20);
        *(v3 + v20) = 0x8000000000000000;
        sub_22DC8E498(v17, v19, a2, a3, v21);

        *(v3 + v20) = v26;
        swift_endAccess();

        swift_unknownObjectRelease();
        return __swift_destroy_boxed_opaque_existential_1(v29);
      }
    }

    v22 = sub_22DCB611C();
    v23 = objc_allocWithZone(MEMORY[0x277CBEAD8]);
LABEL_17:
    v24 = sub_22DCB611C();
    v25 = [v23 initWithName:v22 reason:v24 userInfo:0];

    [v25 raise];
    abort();
  }

  return __swift_destroy_boxed_opaque_existential_1(v29);
}

void __swiftcall NTKKeyedHashingEncoder.init()(NTKKeyedHashingEncoder *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

Swift::Void __swiftcall NTKKeyedHashingEncoder.encode(_:forKey:)(Swift::Bool _, Swift::String forKey)
{
  if (*(v2 + OBJC_IVAR___NTKKeyedHashingEncoder_state))
  {
    v8 = sub_22DCB611C();
    v9 = objc_allocWithZone(MEMORY[0x277CBEAD8]);
    v10 = sub_22DCB611C();
    v11 = [v9 initWithName:v8 reason:v10 userInfo:0];

    [v11 raise];
    abort();
  }

  object = forKey._object;
  countAndFlagsBits = forKey._countAndFlagsBits;
  v5 = OBJC_IVAR___NTKKeyedHashingEncoder_keyValuePairs;
  if (_)
  {
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v2 + v5);
    *(v2 + v5) = 0x8000000000000000;
    v7 = 1;
  }

  else
  {
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v2 + v5);
    *(v2 + v5) = 0x8000000000000000;
    v7 = 0;
  }

  sub_22DC8E498(v7, 0x1000000000000, countAndFlagsBits, object, isUniquelyReferenced_nonNull_native);

  *(v2 + v5) = v12;
  swift_endAccess();
}

uint64_t _sSo22NTKKeyedHashingEncoderC11NanoTimeKitE10encodeCInt_6forKeyys5Int32V_SStF_0(unsigned int a1, uint64_t a2, uint64_t a3)
{
  v20 = *MEMORY[0x277D85DE8];
  if (*(v3 + OBJC_IVAR___NTKKeyedHashingEncoder_state))
  {
    v13 = sub_22DCB611C();
    v14 = objc_allocWithZone(MEMORY[0x277CBEAD8]);
    v15 = sub_22DCB611C();
    v16 = [v14 initWithName:v13 reason:v15 userInfo:0];

    [v16 raise];
    abort();
  }

  v4 = v3;
  __src = bswap32(a1);
  v7 = sub_22DC8FD30(&__src, v19);
  v9 = v8;
  v10 = OBJC_IVAR___NTKKeyedHashingEncoder_keyValuePairs;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(v4 + v10);
  *(v4 + v10) = 0x8000000000000000;
  sub_22DC8E498(v7, v9 & 0xFFFFFFFFFFFFFFLL, a2, a3, isUniquelyReferenced_nonNull_native);

  *(v4 + v10) = v17;
  return swift_endAccess();
}

uint64_t sub_22DC8D0D4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = *MEMORY[0x277D85DE8];
  if (*(v3 + OBJC_IVAR___NTKKeyedHashingEncoder_state))
  {
    v13 = sub_22DCB611C();
    v14 = objc_allocWithZone(MEMORY[0x277CBEAD8]);
    v15 = sub_22DCB611C();
    v16 = [v14 initWithName:v13 reason:v15 userInfo:0];

    [v16 raise];
    abort();
  }

  v4 = v3;
  __src = bswap64(a1);
  v7 = sub_22DC8FD30(&__src, v19);
  v9 = v8;
  v10 = OBJC_IVAR___NTKKeyedHashingEncoder_keyValuePairs;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(v4 + v10);
  *(v4 + v10) = 0x8000000000000000;
  sub_22DC8E498(v7, v9 & 0xFFFFFFFFFFFFFFLL, a2, a3, isUniquelyReferenced_nonNull_native);

  *(v4 + v10) = v17;
  return swift_endAccess();
}

uint64_t sub_22DC8D290(void *a1, uint64_t a2, unsigned int a3)
{
  v5 = sub_22DCB612C();
  v7 = v6;
  v8 = a1;
  _sSo22NTKKeyedHashingEncoderC11NanoTimeKitE10encodeCInt_6forKeyys5Int32V_SStF_0(a3, v5, v7);
}

uint64_t sub_22DC8D2FC(void *a1, uint64_t a2, unint64_t a3)
{
  v5 = sub_22DCB612C();
  v7 = v6;
  v8 = a1;
  sub_22DC8D0D4(a3, v5, v7);
}

Swift::Void __swiftcall NTKKeyedHashingEncoder.encode(_:forKey:)(Swift::Float _, Swift::String forKey)
{
  v18 = *MEMORY[0x277D85DE8];
  if (*(v2 + OBJC_IVAR___NTKKeyedHashingEncoder_state))
  {
    v11 = sub_22DCB611C();
    v12 = objc_allocWithZone(MEMORY[0x277CBEAD8]);
    v13 = sub_22DCB611C();
    v14 = [v12 initWithName:v11 reason:v13 userInfo:0];

    [v14 raise];
    abort();
  }

  v3 = v2;
  object = forKey._object;
  countAndFlagsBits = forKey._countAndFlagsBits;
  __src = _;
  v6 = sub_22DC8FD30(&__src, v17);
  v8 = v7;
  v9 = OBJC_IVAR___NTKKeyedHashingEncoder_keyValuePairs;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v3 + v9);
  *(v3 + v9) = 0x8000000000000000;
  sub_22DC8E498(v6, v8 & 0xFFFFFFFFFFFFFFLL, countAndFlagsBits, object, isUniquelyReferenced_nonNull_native);

  *(v3 + v9) = v15;
  swift_endAccess();
}

Swift::Void __swiftcall NTKKeyedHashingEncoder.encode(_:forKey:)(Swift::Double _, Swift::String forKey)
{
  v18 = *MEMORY[0x277D85DE8];
  if (*(v2 + OBJC_IVAR___NTKKeyedHashingEncoder_state))
  {
    v11 = sub_22DCB611C();
    v12 = objc_allocWithZone(MEMORY[0x277CBEAD8]);
    v13 = sub_22DCB611C();
    v14 = [v12 initWithName:v11 reason:v13 userInfo:0];

    [v14 raise];
    abort();
  }

  v3 = v2;
  object = forKey._object;
  countAndFlagsBits = forKey._countAndFlagsBits;
  __src = _;
  v6 = sub_22DC8FD30(&__src, v17);
  v8 = v7;
  v9 = OBJC_IVAR___NTKKeyedHashingEncoder_keyValuePairs;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v3 + v9);
  *(v3 + v9) = 0x8000000000000000;
  sub_22DC8E498(v6, v8 & 0xFFFFFFFFFFFFFFLL, countAndFlagsBits, object, isUniquelyReferenced_nonNull_native);

  *(v3 + v9) = v15;
  swift_endAccess();
}

void NTKKeyedHashingEncoder.encodeBytes(_:length:forKey:)(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_22DCB60AC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12, v13);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22DCB607C();
  MEMORY[0x28223BE20](v16, v17, v18);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v5 + OBJC_IVAR___NTKKeyedHashingEncoder_state))
  {
    v32 = sub_22DCB611C();
    v33 = objc_allocWithZone(MEMORY[0x277CBEAD8]);
    v34 = sub_22DCB611C();
    v35 = [v33 initWithName:v32 reason:v34 userInfo:0];

    [v35 raise];
    abort();
  }

  if (a1)
  {
    v37 = v19;
    v22 = sub_22DC8FDE8(a1, a2);
    v39 = a3;
    v24 = v23;
    sub_22DC8F9F8(&qword_27DA2D580, MEMORY[0x277CC5540]);
    v36 = a4;
    sub_22DCB606C();
    sub_22DC8F990(v22, v24);
    v38 = v22;
    sub_22DC8F6D0(v22, v24);
    sub_22DC86228(v22, v24);
    sub_22DCB605C();
    (*(v11 + 8))(v15, v10);
    v43 = v16;
    v44 = sub_22DC8F9F8(&qword_27DA2D588, MEMORY[0x277CC5290]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v42);
    v26 = v37;
    (*(v37 + 16))(boxed_opaque_existential_1, v21, v16);
    __swift_project_boxed_opaque_existential_1(v42, v43);
    v27 = v36;

    sub_22DCB59FC();
    v28 = v40;
    v29 = v41;
    __swift_destroy_boxed_opaque_existential_1(v42);
    v30 = OBJC_IVAR___NTKKeyedHashingEncoder_keyValuePairs;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = *(v5 + v30);
    *(v5 + v30) = 0x8000000000000000;
    sub_22DC8E498(v28, v29, v39, v27, isUniquelyReferenced_nonNull_native);

    *(v5 + v30) = v40;
    swift_endAccess();
    sub_22DC86228(v38, v24);
    (*(v26 + 8))(v21, v16);
  }
}

void NTKKeyedHashingEncoder.encodeConditionalObject(_:forKey:)()
{
  v0 = *MEMORY[0x277CCA2A0];
  v1 = objc_allocWithZone(MEMORY[0x277CBEAD8]);
  v2 = sub_22DCB611C();
  v3 = [v1 initWithName:v0 reason:v2 userInfo:0];

  [v3 raise];
  abort();
}

id NTKKeyedHashingEncoder.init()()
{
  v0[OBJC_IVAR___NTKKeyedHashingEncoder_state] = 0;
  v1 = OBJC_IVAR___NTKKeyedHashingEncoder_keyValuePairs;
  *&v0[v1] = sub_22DC8FB20(MEMORY[0x277D84F90]);
  v3.receiver = v0;
  v3.super_class = NTKKeyedHashingEncoder;
  return objc_msgSendSuper2(&v3, sel_init);
}

void *sub_22DC8DE34(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D5C0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 1;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 5);
  return result;
}

uint64_t sub_22DC8DF30(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), void (*a5)(void), uint64_t *a6, uint64_t a7)
{
  v39 = a6;
  v40 = a7;
  v37 = a4;
  v38 = a5;
  v8 = v7;
  v12 = sub_22DCB5B3C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14, v15);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *v7;
  v20 = sub_22DC9DE28(a2);
  v21 = v18[2];
  v22 = (v19 & 1) == 0;
  v23 = v21 + v22;
  if (__OFADD__(v21, v22))
  {
    __break(1u);
    goto LABEL_15;
  }

  v24 = v19;
  v25 = v18[3];
  if (v25 < v23 || (a3 & 1) == 0)
  {
    if (v25 >= v23 && (a3 & 1) == 0)
    {
      v37();
      goto LABEL_9;
    }

    v38();
    v26 = sub_22DC9DE28(a2);
    if ((v24 & 1) == (v27 & 1))
    {
      v20 = v26;
      goto LABEL_9;
    }

LABEL_15:
    result = sub_22DCB683C();
    __break(1u);
    return result;
  }

LABEL_9:
  v28 = a1;
  v29 = *v8;
  if (v24)
  {
    v30 = v29[7];
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(v39);
    v32 = *(v31 - 8);
    v33 = *(v32 + 40);
    v34 = v31;
    v35 = v30 + *(v32 + 72) * v20;

    return v33(v35, v28, v34);
  }

  else
  {
    (*(v13 + 16))(v17, a2, v12);
    return sub_22DC8E620(v20, v17, v28, v29, v39);
  }
}

uint64_t sub_22DC8E160(uint64_t a1, uint64_t *a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for LibraryReplicatorIdentifier();
  MEMORY[0x28223BE20](v8, v9, v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_22DC9DEC0(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *v4;
    if (v19)
    {
LABEL_8:
      v22 = v21[7];
      v23 = type metadata accessor for LibrarySnapshot();
      return sub_22DC8FF10(a1, v22 + *(*(v23 - 8) + 72) * v15, type metadata accessor for LibrarySnapshot);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    sub_22DCA0980();
    goto LABEL_7;
  }

  sub_22DC9F86C(v18, a3 & 1);
  v25 = sub_22DC9DEC0(a2);
  if ((v19 & 1) != (v26 & 1))
  {
LABEL_14:
    result = sub_22DCB683C();
    __break(1u);
    return result;
  }

  v15 = v25;
  v21 = *v4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_22DC8FEAC(a2, v12);
  return sub_22DC8E728(v15, v12, a1, v21);
}

uint64_t sub_22DC8E2F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v16 = sub_22DC9DF8C(a2, a3, a4, a5);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 >= v19 && (a6 & 1) != 0)
  {
LABEL_7:
    v22 = *v7;
    if (v20)
    {
LABEL_8:
      v23 = v22[7];
      v24 = type metadata accessor for GallerySnapshot();
      return sub_22DC8FF10(a1, v23 + *(*(v24 - 8) + 72) * v16, type metadata accessor for GallerySnapshot);
    }

    goto LABEL_11;
  }

  if (v21 >= v19 && (a6 & 1) == 0)
  {
    sub_22DCA0C74();
    goto LABEL_7;
  }

  sub_22DC9FD1C(v19, a6 & 1);
  v26 = sub_22DC9DF8C(a2, a3, a4, a5);
  if ((v20 & 1) != (v27 & 1))
  {
LABEL_15:
    result = sub_22DCB683C();
    __break(1u);
    return result;
  }

  v16 = v26;
  v22 = *v7;
  if (v20)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_22DC8E814(v16, a2, a3, a4, a5, a1, v22);
}

uint64_t sub_22DC8E498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_22DC9E02C(a3, a4);
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
      sub_22DCA00C8(v18, a5 & 1);
      v13 = sub_22DC9E02C(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = sub_22DCB683C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_22DCA0EE4();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    v25 = *v24;
    v26 = v24[1];
    *v24 = a1;
    v24[1] = a2;

    return sub_22DC86228(v25, v26);
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v28 = (v23[6] + 16 * v13);
  *v28 = a3;
  v28[1] = a4;
  v29 = (v23[7] + 16 * v13);
  *v29 = a1;
  v29[1] = a2;
  v30 = v23[2];
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v31;
}

uint64_t sub_22DC8E620(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a4[6];
  v11 = sub_22DCB5B3C();
  (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v12 = a4[7];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  result = (*(*(v13 - 8) + 32))(v12 + *(*(v13 - 8) + 72) * a1, a3, v13);
  v15 = a4[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v17;
  }

  return result;
}

uint64_t sub_22DC8E728(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for LibraryReplicatorIdentifier();
  sub_22DC8FF78(a2, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for LibraryReplicatorIdentifier);
  v10 = a4[7];
  v11 = type metadata accessor for LibrarySnapshot();
  result = sub_22DC8FF78(a3, v10 + *(*(v11 - 8) + 72) * a1, type metadata accessor for LibrarySnapshot);
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

uint64_t sub_22DC8E814(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  a7[(a1 >> 6) + 8] |= 1 << a1;
  v10 = (a7[6] + 32 * a1);
  *v10 = a2;
  v10[1] = a3;
  v10[2] = a4;
  v10[3] = a5;
  v11 = a7[7];
  v12 = type metadata accessor for GallerySnapshot();
  result = sub_22DC8FF78(a6, v11 + *(*(v12 - 8) + 72) * a1, type metadata accessor for GallerySnapshot);
  v14 = a7[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v16;
  }

  return result;
}

uint64_t sub_22DC8E8C4(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_22DC8FB0C(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_22DC8E9C4(v5);
  *a1 = v2;
  return result;
}

_BYTE *sub_22DC8E930@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_22DC8FD30(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_22DC8FFE0(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_22DC9005C(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_22DC8E9C4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_22DCB67CC();
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D5B0);
        v5 = sub_22DCB623C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_22DC8EB9C(v7, v8, a1, v4);
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
    return sub_22DC8EACC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_22DC8EACC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 32 * a3 - 32;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 32 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *v12 && v10 == *(v12 + 8);
      if (v13 || (result = sub_22DCB680C(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 32;
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

      result = *(v12 + 32);
      v10 = *(v12 + 40);
      v14 = *(v12 + 48);
      v15 = *(v12 + 16);
      *(v12 + 32) = *v12;
      *(v12 + 48) = v15;
      *v12 = result;
      *(v12 + 8) = v10;
      *(v12 + 16) = v14;
      v12 -= 32;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22DC8EB9C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v98 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_105:
    v8 = *v98;
    if (!*v98)
    {
      goto LABEL_143;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_137:
      result = sub_22DC8F42C(v7);
      v7 = result;
    }

    v89 = v7 + 16;
    v90 = *(v7 + 2);
    if (v90 >= 2)
    {
      while (*a3)
      {
        v91 = &v7[16 * v90];
        v92 = *v91;
        v93 = &v89[2 * v90];
        v94 = v93[1];
        sub_22DC8F178((*a3 + 32 * *v91), (*a3 + 32 * *v93), (*a3 + 32 * v94), v8);
        if (v4)
        {
        }

        if (v94 < v92)
        {
          goto LABEL_129;
        }

        if (v90 - 2 >= *v89)
        {
          goto LABEL_130;
        }

        *v91 = v92;
        *(v91 + 1) = v94;
        v95 = *v89 - v90;
        if (*v89 < v90)
        {
          goto LABEL_131;
        }

        v90 = *v89 - 1;
        result = memmove(v93, v93 + 2, 16 * v95);
        *v89 = v90;
        if (v90 <= 1)
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
      v9 = (*a3 + 32 * v6);
      result = *v9;
      v10 = (*a3 + 32 * v8);
      if (*v9 == *v10 && v9[1] == v10[1])
      {
        v12 = 0;
      }

      else
      {
        result = sub_22DCB680C();
        v12 = result;
      }

      v6 = v8 + 2;
      if (v8 + 2 < v5)
      {
        v13 = v10 + 5;
        v14 = v10 + 5;
        do
        {
          result = v13[3];
          v16 = v14[4];
          v14 += 4;
          v15 = v16;
          if (result == *(v13 - 1) && v15 == *v13)
          {
            if (v12)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_22DCB680C();
            if ((v12 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v6;
          v13 = v14;
        }

        while (v5 != v6);
        v6 = v5;
      }

LABEL_23:
      if (v12)
      {
LABEL_24:
        if (v6 < v8)
        {
          goto LABEL_134;
        }

        if (v8 < v6)
        {
          v18 = 32 * v6 - 16;
          v19 = 32 * v8;
          v20 = v6;
          v21 = v8;
          do
          {
            if (v21 != --v20)
            {
              v28 = *a3;
              if (!*a3)
              {
                goto LABEL_140;
              }

              v22 = (v28 + v19);
              v23 = (v28 + v18);
              v24 = *v22;
              v25 = v22[1];
              v26 = *(v22 + 1);
              v27 = *v23;
              *v22 = *(v23 - 1);
              *(v22 + 1) = v27;
              *(v23 - 2) = v24;
              *(v23 - 1) = v25;
              *v23 = v26;
            }

            ++v21;
            v18 -= 32;
            v19 += 32;
          }

          while (v21 < v20);
        }
      }
    }

    v29 = a3[1];
    if (v6 < v29)
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

        if (v8 + a4 >= v29)
        {
          v30 = a3[1];
        }

        else
        {
          v30 = (v8 + a4);
        }

        if (v30 < v8)
        {
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (v6 != v30)
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
      result = sub_22DC8F440(0, *(v7 + 2) + 1, 1, v7);
      v7 = result;
    }

    v44 = *(v7 + 2);
    v43 = *(v7 + 3);
    v45 = v44 + 1;
    if (v44 >= v43 >> 1)
    {
      result = sub_22DC8F440((v43 > 1), v44 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 2) = v45;
    v46 = &v7[16 * v44];
    *(v46 + 4) = v8;
    *(v46 + 5) = v6;
    v47 = *v98;
    if (!*v98)
    {
      goto LABEL_142;
    }

    if (v44)
    {
      while (1)
      {
        v48 = v45 - 1;
        if (v45 >= 4)
        {
          break;
        }

        if (v45 == 3)
        {
          v49 = *(v7 + 4);
          v50 = *(v7 + 5);
          v59 = __OFSUB__(v50, v49);
          v51 = v50 - v49;
          v52 = v59;
LABEL_74:
          if (v52)
          {
            goto LABEL_120;
          }

          v65 = &v7[16 * v45];
          v67 = *v65;
          v66 = *(v65 + 1);
          v68 = __OFSUB__(v66, v67);
          v69 = v66 - v67;
          v70 = v68;
          if (v68)
          {
            goto LABEL_123;
          }

          v71 = &v7[16 * v48 + 32];
          v73 = *v71;
          v72 = *(v71 + 1);
          v59 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v59)
          {
            goto LABEL_126;
          }

          if (__OFADD__(v69, v74))
          {
            goto LABEL_127;
          }

          if (v69 + v74 >= v51)
          {
            if (v51 < v74)
            {
              v48 = v45 - 2;
            }

            goto LABEL_95;
          }

          goto LABEL_88;
        }

        v75 = &v7[16 * v45];
        v77 = *v75;
        v76 = *(v75 + 1);
        v59 = __OFSUB__(v76, v77);
        v69 = v76 - v77;
        v70 = v59;
LABEL_88:
        if (v70)
        {
          goto LABEL_122;
        }

        v78 = &v7[16 * v48];
        v80 = *(v78 + 4);
        v79 = *(v78 + 5);
        v59 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v59)
        {
          goto LABEL_125;
        }

        if (v81 < v69)
        {
          goto LABEL_3;
        }

LABEL_95:
        v8 = v48 - 1;
        if (v48 - 1 >= v45)
        {
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

        v86 = *&v7[16 * v8 + 32];
        v87 = *&v7[16 * v48 + 40];
        sub_22DC8F178((*a3 + 32 * v86), (*a3 + 32 * *&v7[16 * v48 + 32]), (*a3 + 32 * v87), v47);
        if (v4)
        {
        }

        if (v87 < v86)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_22DC8F42C(v7);
        }

        if (v8 >= *(v7 + 2))
        {
          goto LABEL_117;
        }

        v88 = &v7[16 * v8];
        *(v88 + 4) = v86;
        *(v88 + 5) = v87;
        result = sub_22DC8F3A0(v48);
        v45 = *(v7 + 2);
        if (v45 <= 1)
        {
          goto LABEL_3;
        }
      }

      v53 = &v7[16 * v45 + 32];
      v54 = *(v53 - 64);
      v55 = *(v53 - 56);
      v59 = __OFSUB__(v55, v54);
      v56 = v55 - v54;
      if (v59)
      {
        goto LABEL_118;
      }

      v58 = *(v53 - 48);
      v57 = *(v53 - 40);
      v59 = __OFSUB__(v57, v58);
      v51 = v57 - v58;
      v52 = v59;
      if (v59)
      {
        goto LABEL_119;
      }

      v60 = &v7[16 * v45];
      v62 = *v60;
      v61 = *(v60 + 1);
      v59 = __OFSUB__(v61, v62);
      v63 = v61 - v62;
      if (v59)
      {
        goto LABEL_121;
      }

      v59 = __OFADD__(v51, v63);
      v64 = v51 + v63;
      if (v59)
      {
        goto LABEL_124;
      }

      if (v64 >= v56)
      {
        v82 = &v7[16 * v48 + 32];
        v84 = *v82;
        v83 = *(v82 + 1);
        v59 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v59)
        {
          goto LABEL_128;
        }

        if (v51 < v85)
        {
          v48 = v45 - 2;
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

  v31 = *a3;
  v32 = *a3 + 32 * v6 - 32;
  v96 = v8;
  v33 = (v8 - v6);
LABEL_43:
  v34 = (v31 + 32 * v6);
  v35 = *v34;
  v36 = v34[1];
  v37 = v33;
  v38 = v32;
  while (1)
  {
    v39 = v35 == *v38 && v36 == *(v38 + 8);
    if (v39 || (result = sub_22DCB680C(), (result & 1) == 0))
    {
LABEL_42:
      ++v6;
      v32 += 32;
      --v33;
      if (v6 != v30)
      {
        goto LABEL_43;
      }

      v6 = v30;
      v8 = v96;
      goto LABEL_54;
    }

    if (!v31)
    {
      break;
    }

    v35 = *(v38 + 32);
    v36 = *(v38 + 40);
    v40 = *(v38 + 48);
    v41 = *(v38 + 16);
    *(v38 + 32) = *v38;
    *(v38 + 48) = v41;
    *v38 = v35;
    *(v38 + 8) = v36;
    *(v38 + 16) = v40;
    v38 -= 32;
    if (__CFADD__(v37++, 1))
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