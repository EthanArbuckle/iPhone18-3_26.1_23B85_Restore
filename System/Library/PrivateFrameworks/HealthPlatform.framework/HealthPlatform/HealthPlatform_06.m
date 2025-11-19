void sub_228466408(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

double sub_22846646C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_228466408(0, &qword_27D83F320, sub_228419298, MEMORY[0x277D11C80]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = v13 - v8;
  v10 = *(*a1 + 16);
  v11 = OBJC_IVAR____TtC14HealthPlatform24MockSharableModelStorage__fetchHandler;
  swift_beginAccess();
  (*(v6 + 16))(v9, v10 + v11, v5);
  sub_22855C94C();
  (*(v6 + 8))(v9, v5);
  result = v13[0];
  *a2 = *v13;
  return result;
}

uint64_t sub_2284665C0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *(*a2 + 16);
  v7 = swift_allocObject();
  *(v7 + 16) = sub_22841C100;
  *(v7 + 24) = v5;
  swift_beginAccess();
  sub_228466408(0, &qword_27D83F320, sub_228419298, MEMORY[0x277D11C80]);

  sub_22855C95C();
  swift_endAccess();
}

uint64_t MockSharableModelReadableStorage.fetchHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  swift_beginAccess();
  sub_228466408(0, &qword_27D83F320, sub_228419298, MEMORY[0x277D11C80]);

  sub_22855C95C();
  swift_endAccess();
}

void (*MockSharableModelReadableStorage.fetchHandler.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0xA8uLL);
  }

  v5 = v4;
  *a1 = v4;
  sub_228466408(0, &qword_27D83F320, sub_228419298, MEMORY[0x277D11C80]);
  v7 = v6;
  *(v5 + 136) = v6;
  v8 = *(v6 - 8);
  if (v3)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(*(v8 + 64));
  }

  *(v5 + 144) = v9;
  v10 = *(v1 + 16);
  v11 = OBJC_IVAR____TtC14HealthPlatform24MockSharableModelStorage__fetchHandler;
  *(v5 + 152) = v10;
  *(v5 + 160) = v11;
  v12 = v9;
  swift_beginAccess();
  (*(v8 + 16))(v12, v10 + v11, v7);
  sub_22855C94C();
  (*(v8 + 8))(v12, v7);
  v13 = swift_allocObject();
  *(v13 + 16) = *(v5 + 88);
  *(v5 + 72) = sub_22841C100;
  *(v5 + 80) = v13;
  return sub_228466984;
}

void sub_228466984(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 80);
  v6 = *(*a1 + 152);
  v5 = *(*a1 + 160);
  v8 = *(*a1 + 136);
  v7 = *(*a1 + 144);
  if (a2)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v3;
    *(v9 + 24) = v4;
    v2[13] = sub_228466DFC;
    v2[14] = v9;
    swift_beginAccess();
    swift_retain_n();
    sub_22855C95C();
    swift_endAccess();

    v10 = v2[10];
  }

  else
  {
    v11 = swift_allocObject();
    *(v11 + 16) = v3;
    *(v11 + 24) = v4;
    v2[15] = sub_228466DFC;
    v2[16] = v11;
    swift_beginAccess();

    sub_22855C95C();
    swift_endAccess();
  }

  free(v7);

  free(v2);
}

uint64_t MockSharableModelReadableStorage.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = type metadata accessor for MockSharableModelStorage();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  *(v0 + 16) = MockSharableModelStorage.init()();
  return v0;
}

uint64_t MockSharableModelReadableStorage.init()()
{
  v1 = type metadata accessor for MockSharableModelStorage();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  *(v0 + 16) = MockSharableModelStorage.init()();
  return v0;
}

uint64_t MockSharableModelReadableStorage.fetch(matching:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_228466408(0, &qword_27D83F320, sub_228419298, MEMORY[0x277D11C80]);
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  v12 = &v19[-1] - v11;
  v13 = *(v3 + 16);
  v14 = OBJC_IVAR____TtC14HealthPlatform24MockSharableModelStorage__fetchHandler;
  swift_beginAccess();
  (*(v9 + 16))(v12, v13 + v14, v8);
  sub_22855C94C();
  (*(v9 + 8))(v12, v8);
  v15 = v19[0];
  v18 = a1;
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  v19[0] = sub_228466D28;
  v19[1] = v16;
  v15(&v18, v19);
}

uint64_t MockSharableModelReadableStorage.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t MockSharableModelReadableStorage.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t static StorageLocations.feedItemPluginsDirectory.getter()
{
  v0 = sub_22855BF5C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22855C06C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static StorageLocations.rootDirectory.getter();
  v11[0] = 0xD000000000000026;
  v11[1] = 0x800000022856F190;
  (*(v1 + 104))(v4, *MEMORY[0x277CC91C0], v0);
  sub_2283F79A4();
  sub_22855C05C();
  (*(v1 + 8))(v4, v0);
  return (*(v6 + 8))(v9, v5);
}

id sub_228466FD0()
{
  result = [objc_opt_self() defaultManager];
  qword_280DEBDE8 = result;
  return result;
}

id static StorageLocations.fileManager.getter()
{
  if (qword_280DEBDE0 != -1)
  {
    swift_once();
  }

  v1 = qword_280DEBDE8;

  return v1;
}

uint64_t static StorageLocations.mobileLibraryHealthDirectory.getter()
{
  v0 = sub_22855C06C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static StorageLocations.homeMobileDirectory.getter();
  sub_22855BFCC();
  return (*(v1 + 8))(v4, v0);
}

uint64_t static StorageLocations.clientDirectory.getter()
{
  v0 = sub_22855C06C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  static StorageLocations.homeMobileDirectory.getter();
  sub_22855BFCC();
  v8 = *(v1 + 8);
  v8(v5, v0);
  sub_22855BFCC();
  return (v8)(v7, v0);
}

uint64_t sub_22846758C()
{
  v0 = sub_22855CABC();
  __swift_allocate_value_buffer(v0, qword_280DEE808);
  __swift_project_value_buffer(v0, qword_280DEE808);
  return sub_22855CA9C();
}

HealthPlatform::LogCategory_optional __swiftcall LogCategory.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22855E17C();

  v5 = 0;
  v6 = 7;
  switch(v3)
  {
    case 0:
      goto LABEL_19;
    case 1:
      v5 = 1;
      goto LABEL_19;
    case 2:
      v5 = 2;
      goto LABEL_19;
    case 3:
      v5 = 3;
      goto LABEL_19;
    case 4:
      v5 = 4;
      goto LABEL_19;
    case 5:
      v5 = 5;
      goto LABEL_19;
    case 6:
      v5 = 6;
LABEL_19:
      v6 = v5;
      break;
    case 7:
      break;
    case 8:
      v6 = 8;
      break;
    case 9:
      v6 = 9;
      break;
    case 10:
      v6 = 10;
      break;
    case 11:
      v6 = 11;
      break;
    case 12:
      v6 = 12;
      break;
    case 13:
      v6 = 13;
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    default:
      v6 = 25;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_228467810(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = LogCategory.rawValue.getter();
  v4 = v3;
  if (v2 == LogCategory.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_22855E15C();
  }

  return v7 & 1;
}

uint64_t sub_2284678AC()
{
  v1 = *v0;
  sub_22855E22C();
  LogCategory.rawValue.getter();
  sub_22855D20C();

  return sub_22855E27C();
}

uint64_t sub_228467914()
{
  v2 = *v0;
  LogCategory.rawValue.getter();
  sub_22855D20C();
}

uint64_t sub_228467978()
{
  v1 = *v0;
  sub_22855E22C();
  LogCategory.rawValue.getter();
  sub_22855D20C();

  return sub_22855E27C();
}

unint64_t sub_2284679E8@<X0>(unint64_t *a1@<X8>)
{
  result = LogCategory.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t Array<A>.singleLineDescription()()
{
  sub_2283F788C(0, &qword_280DEE7C8);
  sub_228467D44(&qword_280DEE7C0, &qword_280DEE7C8);
  return sub_22855D15C();
}

uint64_t Optional.logDescription.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](a1);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v16 - v8;
  v10 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12);
  if ((*(v2 + 48))(v12, 1, v1) == 1)
  {
    return 7104878;
  }

  (*(v2 + 32))(v9, v12, v1);
  (*(v2 + 16))(v6, v9, v1);
  v15 = sub_22855D1BC();
  (*(v2 + 8))(v9, v1);
  return v15;
}

unint64_t sub_228467CAC()
{
  result = qword_280DEEC38;
  if (!qword_280DEEC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEEC38);
  }

  return result;
}

uint64_t sub_228467D44(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_2283F788C(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_228467DF8(uint64_t a1, void *a2, uint64_t a3, void (*a4)(void))
{
  v7 = sub_22855C85C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a2 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v7, a3);
  (*(v8 + 16))(v11, v12, v7);
  a4(0);
  return sub_22855C61C();
}

uint64_t sub_228467F54()
{
  v0 = sub_22855C85C();
  __swift_allocate_value_buffer(v0, qword_280DE9EA8);
  __swift_project_value_buffer(v0, qword_280DE9EA8);
  return sub_22855C84C();
}

void sub_228467FB8()
{
  if (!qword_280DEAB00)
  {
    type metadata accessor for HKWheelchairUse(255);
    sub_22846B99C(&qword_280DE9468, type metadata accessor for HKWheelchairUse);
    sub_22846B99C(&qword_280DE9480, type metadata accessor for HKWheelchairUse);
    sub_22846B99C(&qword_280DE9478, type metadata accessor for HKWheelchairUse);
    v0 = type metadata accessor for UserCharacteristicInputSignal();
    if (!v1)
    {
      atomic_store(v0, &qword_280DEAB00);
    }
  }
}

uint64_t sub_2284680F8()
{
  v0 = sub_22855C85C();
  __swift_allocate_value_buffer(v0, qword_280DE9EF0);
  __swift_project_value_buffer(v0, qword_280DE9EF0);
  return sub_22855C84C();
}

void sub_22846815C()
{
  if (!qword_280DEAB10[0])
  {
    sub_22855BEEC();
    v0 = MEMORY[0x277CC8990];
    sub_22846B99C(&qword_280DECDB0, MEMORY[0x277CC8990]);
    sub_22846B99C(&qword_280DECDC0, v0);
    sub_22846B99C(&qword_280DECDB8, v0);
    v1 = type metadata accessor for UserCharacteristicInputSignal();
    if (!v2)
    {
      atomic_store(v1, qword_280DEAB10);
    }
  }
}

uint64_t sub_228468284()
{
  v0 = sub_22855C85C();
  __swift_allocate_value_buffer(v0, qword_280DE9EC8);
  __swift_project_value_buffer(v0, qword_280DE9EC8);
  return sub_22855C84C();
}

void sub_2284682E8()
{
  if (!qword_280DEAB08)
  {
    type metadata accessor for HKBiologicalSex(255);
    sub_22846B99C(&qword_280DE94A0, type metadata accessor for HKBiologicalSex);
    sub_22846B99C(&qword_280DE94B8, type metadata accessor for HKBiologicalSex);
    sub_22846B99C(&qword_280DE94B0, type metadata accessor for HKBiologicalSex);
    v0 = type metadata accessor for UserCharacteristicInputSignal();
    if (!v1)
    {
      atomic_store(v0, &qword_280DEAB08);
    }
  }
}

uint64_t sub_228468410@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_22855C85C();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t static UserCharacteristicInputSignal<>.wheelchairUse(context:observer:healthStore:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v23 = a2;
  v24 = a4;
  v8 = sub_22855C85C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v23 - v14;
  if (qword_280DE9EA0 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v8, qword_280DE9EA8);
  v17 = *(v9 + 16);
  v17(v15, v16, v8);
  v18 = swift_allocObject();
  *(v18 + 16) = a5;
  v17(v13, v15, v8);
  v19 = swift_allocObject();
  *(v19 + 16) = sub_2284686C8;
  *(v19 + 24) = v18;
  v20 = a5;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v21 = sub_2284693C0(a1, v23, a3, v24, v13, sub_22846BC9C, v19, sub_228467FB8);
  (*(v9 + 8))(v15, v8);
  return v21;
}

uint64_t UserCharacteristicInputSignal.__allocating_init(context:observer:identifier:provider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  return sub_228468B44(a1, a2, a3, a4, a5, a6, a7, &unk_283B82498, sub_22846A884);
}

{
  return sub_228468B44(a1, a2, a3, a4, a5, a6, a7, &unk_283B82510, sub_22846A944);
}

{
  v15 = *(v7 + 48);
  v16 = *(v7 + 52);
  v17 = swift_allocObject();
  UserCharacteristicInputSignal.init(context:observer:identifier:provider:)(a1, a2, a3, a4, a5, a6, a7);
  return v17;
}

uint64_t static UserCharacteristicInputSignal<>.dateOfBirth(context:observer:healthStore:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v23 = a2;
  v24 = a4;
  v8 = sub_22855C85C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v23 - v14;
  if (qword_280DE9EE8 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v8, qword_280DE9EF0);
  v17 = *(v9 + 16);
  v17(v15, v16, v8);
  v18 = swift_allocObject();
  *(v18 + 16) = a5;
  v17(v13, v15, v8);
  v19 = swift_allocObject();
  *(v19 + 16) = &unk_2285628D8;
  *(v19 + 24) = v18;
  v20 = a5;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v21 = sub_2284693C0(a1, v23, a3, v24, v13, sub_22846A93C, v19, sub_22846815C);
  (*(v9 + 8))(v15, v8);
  return v21;
}

uint64_t sub_228468974(uint64_t a1)
{
  v3 = *(MEMORY[0x277CCB6F8] + 4);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_228468A14;

  return MEMORY[0x282120600](a1);
}

uint64_t sub_228468A14()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_228468B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v29 = a3;
  v30 = a4;
  v28 = a9;
  v16 = sub_22855C85C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v20, a5, v16);
  v21 = swift_allocObject();
  v22 = *(v10 + 96);
  *(v21 + 16) = *(v10 + 80);
  *(v21 + 32) = v22;
  *(v21 + 48) = a6;
  *(v21 + 56) = a7;
  v23 = *(v10 + 48);
  v24 = *(v10 + 52);
  v25 = swift_allocObject();
  UserCharacteristicInputSignal.init(context:observer:identifier:provider:)(a1, a2, v29, v30, v20, v28, v21);
  (*(v17 + 8))(a5, v16);
  return v25;
}

uint64_t static UserCharacteristicInputSignal<>.biologicalSex(context:observer:healthStore:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v23 = a2;
  v24 = a4;
  v8 = sub_22855C85C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v23 - v14;
  if (qword_280DE9EC0 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v8, qword_280DE9EC8);
  v17 = *(v9 + 16);
  v17(v15, v16, v8);
  v18 = swift_allocObject();
  *(v18 + 16) = a5;
  v17(v13, v15, v8);
  v19 = swift_allocObject();
  *(v19 + 16) = sub_22846A974;
  *(v19 + 24) = v18;
  v20 = a5;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v21 = sub_2284693C0(a1, v23, a3, v24, v13, sub_22846A9A0, v19, sub_2284682E8);
  (*(v9 + 8))(v15, v8);
  return v21;
}

void sub_228468EF8(void *a1@<X0>, SEL *a2@<X1>, SEL *a3@<X2>, uint64_t a4@<X8>)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v12[0] = 0;
  v6 = [a1 *a2];
  if (v6)
  {
    v7 = v6;
    v8 = v12[0];
    v9 = [v7 *a3];

    *a4 = v9;
    *(a4 + 8) = 0;
  }

  else
  {
    v10 = v12[0];
    sub_22855BF3C();

    swift_willThrow();
  }

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t sub_228468FF4(void *a1, uint64_t a2)
{
  v4 = sub_22855C85C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, a2);
  (*(v5 + 16))(v8, v9, v4);
  return sub_22855C82C();
}

uint64_t UserCharacteristicInputSignal.context.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return swift_unknownObjectRetain();
}

uint64_t UserCharacteristicInputSignal.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_280DF6A40;
  v4 = sub_22855C85C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t UserCharacteristicInputSignal.provider.getter()
{
  v1 = *(v0 + qword_280DF6A20);
  v2 = *(v0 + qword_280DF6A20 + 8);

  return v1;
}

uint64_t sub_22846923C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_228469294();
  }

  return result;
}

uint64_t sub_228469294()
{
  v1 = *v0;
  v2 = *v0;
  v4 = *(v0 + qword_280DF6A20);
  v3 = *(v0 + qword_280DF6A20 + 8);
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = *(v1 + 80);
  *(v6 + 24) = *(v2 + 88);
  *(v6 + 40) = *(v1 + 104);
  *(v6 + 48) = v5;

  v4(sub_22846B9FC, v6);
}

uint64_t sub_2284693C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(void))
{
  v46 = a6;
  v47 = a7;
  v44 = a4;
  v45 = a5;
  v42 = a2;
  v43 = a3;
  v41 = a1;
  v40 = sub_22855D81C();
  v9 = *(v40 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v40);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22855D7BC();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v15 = sub_22855CFEC();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = a8(0);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  v20 = swift_allocObject();
  v39 = qword_280DF6A38;
  sub_2283EF310(0, &qword_280DED120, 0x277D85C78);
  sub_22855CFDC();
  v48 = MEMORY[0x277D84F90];
  sub_22846B99C(&unk_280DED140, MEMORY[0x277D85230]);
  sub_2283FA33C(0, &qword_280DED250, MEMORY[0x277D85230], MEMORY[0x277D83940]);
  sub_22846B7E8();
  sub_22855DA9C();
  (*(v9 + 104))(v12, *MEMORY[0x277D85260], v40);
  v21 = sub_22855D84C();
  *(v20 + v39) = v21;
  v22 = v42;
  *(v20 + 16) = v41;
  *(v20 + 24) = v22;
  v23 = (v20 + qword_280DF6A28);
  v24 = v44;
  *v23 = v43;
  v23[1] = v24;
  v25 = qword_280DF6A40;
  v26 = sub_22855C85C();
  v27 = *(v26 - 8);
  v28 = v20 + v25;
  v29 = v45;
  (*(v27 + 16))(v28, v45, v26);
  v30 = (v20 + qword_280DF6A20);
  v31 = v47;
  *v30 = v46;
  v30[1] = v31;
  v32 = *MEMORY[0x277CCE580];
  v33 = sub_22855C4AC();
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  swift_allocObject();
  v36 = v21;
  v37 = sub_22855C48C();
  (*(v27 + 8))(v29, v26);
  *(v20 + qword_280DF6A30) = v37;
  return v20;
}

uint64_t UserCharacteristicInputSignal.init(context:observer:identifier:provider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v42 = a6;
  v43 = a7;
  v40 = a4;
  v41 = a5;
  v38 = a2;
  v39 = a3;
  v37 = a1;
  v36 = sub_22855D81C();
  v9 = *(v36 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v36);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22855D7BC();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v15 = sub_22855CFEC();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v35 = qword_280DF6A38;
  sub_2283EF310(0, &qword_280DED120, 0x277D85C78);
  sub_22855CFDC();
  v44 = MEMORY[0x277D84F90];
  sub_22846B99C(&unk_280DED140, MEMORY[0x277D85230]);
  sub_2283FA33C(0, &qword_280DED250, MEMORY[0x277D85230], MEMORY[0x277D83940]);
  sub_22846B7E8();
  sub_22855DA9C();
  (*(v9 + 104))(v12, *MEMORY[0x277D85260], v36);
  v17 = sub_22855D84C();
  *(v8 + v35) = v17;
  v18 = v38;
  *(v8 + 16) = v37;
  *(v8 + 24) = v18;
  v19 = (v8 + qword_280DF6A28);
  v20 = v40;
  *v19 = v39;
  v19[1] = v20;
  v21 = qword_280DF6A40;
  v22 = sub_22855C85C();
  v23 = *(v22 - 8);
  v24 = v8 + v21;
  v25 = v41;
  (*(v23 + 16))(v24, v41, v22);
  v26 = (v8 + qword_280DF6A20);
  v27 = v43;
  *v26 = v42;
  v26[1] = v27;
  v28 = *MEMORY[0x277CCE580];
  v29 = sub_22855C4AC();
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  v32 = v17;
  v33 = sub_22855C48C();
  (*(v23 + 8))(v25, v22);
  *(v8 + qword_280DF6A30) = v33;
  return v8;
}

uint64_t sub_228469B6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2283FA33C(0, &qword_280DE9558, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v15 - v10;
  v12 = sub_22855D4EC();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = a3;
  v13[5] = a4;
  v13[6] = a1;
  v13[7] = a2;

  sub_22846FCD4(0, 0, v11, &unk_228562AA0, v13);
}

uint64_t sub_228469CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_2283FA33C(0, &qword_280DE9558, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v23 - v18;
  v20 = sub_22855D4EC();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = a5;
  v21[5] = a6;
  v21[6] = a7;
  v21[7] = a8;
  v21[8] = a3;
  v21[9] = a4;
  v21[10] = a1;
  v21[11] = a2;

  sub_22846FCD4(0, 0, v19, &unk_228562A90, v21);
}

uint64_t sub_228469E34(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a6;
  v7[3] = a7;
  sub_2283FA33C(0, &qword_280DECDA8, MEMORY[0x277CC8990], MEMORY[0x277D83D88]);
  v10 = *(*(v9 - 8) + 64) + 15;
  v7[4] = swift_task_alloc();
  v11 = swift_task_alloc();
  v7[5] = v11;
  v15 = (a4 + *a4);
  v12 = a4[1];
  v13 = swift_task_alloc();
  v7[6] = v13;
  *v13 = v7;
  v13[1] = sub_228469FA0;

  return v15(v11);
}

uint64_t sub_228469FA0()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_22846A13C;
  }

  else
  {
    v3 = sub_22846A0B4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22846A0B4()
{
  v1 = *(v0 + 24);
  (*(v0 + 16))(*(v0 + 40), 0);
  v2 = *(v0 + 32);
  sub_22846BC10(*(v0 + 40));

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_22846A13C()
{
  v1 = v0[7];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];
  v5 = sub_22855BEEC();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  v6 = v1;
  v4(v3, v1);

  v7 = v0[5];
  sub_22846BC10(v0[4]);

  v8 = v0[1];

  return v8();
}

uint64_t sub_22846A22C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[3] = a7;
  v8[4] = a8;
  v8[2] = a6;
  v10 = sub_22855DA2C();
  v8[5] = v10;
  v11 = *(v10 - 8);
  v8[6] = v11;
  v12 = *(v11 + 64) + 15;
  v8[7] = swift_task_alloc();
  v13 = swift_task_alloc();
  v8[8] = v13;
  v17 = (a4 + *a4);
  v14 = a4[1];
  v15 = swift_task_alloc();
  v8[9] = v15;
  *v15 = v8;
  v15[1] = sub_22846A3A4;

  return v17(v13);
}

uint64_t sub_22846A3A4()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_22846A550;
  }

  else
  {
    v3 = sub_22846A4B8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22846A4B8()
{
  v1 = *(v0 + 24);
  (*(v0 + 16))(*(v0 + 64), 0);
  v2 = *(v0 + 56);
  (*(*(v0 + 48) + 8))(*(v0 + 64), *(v0 + 40));

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_22846A550()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[3];
  v4 = v0[2];
  (*(*(v0[4] - 8) + 56))(v2, 1, 1);
  v5 = v1;
  v4(v2, v1);

  v6 = v0[8];
  (*(v0[6] + 8))(v0[7], v0[5]);

  v7 = v0[1];

  return v7();
}

uint64_t sub_22846A6E4(void (*a1)(char *, void), uint64_t a2, void (*a3)(uint64_t))
{
  v5 = sub_22855DA2C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v13 - v10;
  a3(v9);
  a1(v11, 0);
  return (*(v6 + 8))(v11, v5);
}

uint64_t sub_22846A89C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_228468A14;

  return sub_228468974(a1);
}

uint64_t sub_22846A9BC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v67 = a2;
  v59 = a1;
  v11 = sub_22855CABC();
  ObjectType = *(v11 - 8);
  v62 = v11;
  v12 = *(ObjectType + 64);
  MEMORY[0x28223BE20](v11);
  v60 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22855DA2C();
  v58 = *(v14 - 8);
  v15 = *(v58 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v58 - v16;
  v18 = sub_22855C85C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = a4;
  v64 = a5;
  v69 = a4;
  v70 = a5;
  v65 = a6;
  v66 = a7;
  v71 = a6;
  v72 = a7;
  v23 = sub_22855C7AC();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v58 - v26;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v29 = result;
    v30 = v67;
    if (v67)
    {
      v32 = *(result + 16);
      v31 = *(result + 24);
      swift_getObjectType();
      v33 = v30;
      v34 = v60;
      sub_22855C59C();
      v35 = v30;

      v36 = sub_22855CA8C();
      v37 = sub_22855D68C();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v69 = v40;
        *v38 = 136446466;
        v41 = UserCharacteristicInputSignal.description.getter();
        v43 = v42;

        v44 = sub_2283F8938(v41, v43, &v69);

        *(v38 + 4) = v44;
        *(v38 + 12) = 2112;
        v45 = v30;
        v46 = _swift_stdlib_bridgeErrorToNSError();
        *(v38 + 14) = v46;
        *v39 = v46;
        _os_log_impl(&dword_2283ED000, v36, v37, "%{public}s: Failed to fetch updated characteristic value: %@", v38, 0x16u);
        sub_22841DC98(v39);
        MEMORY[0x22AABAD40](v39, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v40);
        MEMORY[0x22AABAD40](v40, -1, -1);
        MEMORY[0x22AABAD40](v38, -1, -1);
      }

      else
      {
      }

      (*(ObjectType + 8))(v34, v62);
      v52 = sub_22855BF2C();
      v53 = [v52 hk_isDatabaseAccessibilityError];

      if (v53)
      {
        if (qword_27D83F018 != -1)
        {
          swift_once();
        }

        v54 = swift_allocObject();
        swift_weakInit();
        v55 = swift_allocObject();
        v56 = v64;
        v55[2] = v63;
        v55[3] = v56;
        v57 = v66;
        v55[4] = v65;
        v55[5] = v57;
        v55[6] = v54;

        sub_228506C84(sub_22846BA0C, v55);
      }

      else
      {
      }
    }

    else
    {
      v47 = *(result + qword_280DF6A28 + 8);
      v62 = *(result + qword_280DF6A28);
      v67 = v47;
      ObjectType = swift_getObjectType();
      (*(v19 + 16))(v22, v29 + qword_280DF6A40, v18);
      (*(v58 + 16))(v17, v59, v14);
      v49 = v63;
      v48 = v64;
      v51 = v65;
      v50 = v66;
      sub_22855C79C();
      v68 = v29;
      v69 = v49;
      v70 = v48;
      v71 = v51;
      v72 = v50;
      type metadata accessor for UserCharacteristicInputSignal();
      swift_getWitnessTable();
      sub_22855C78C();
      (*(v24 + 8))(v27, v23);
    }
  }

  return result;
}

uint64_t sub_22846AFBC()
{
  v0 = sub_22855CABC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = *(result + 16);
    v7 = *(result + 24);
    swift_getObjectType();
    sub_22855C59C();

    v8 = sub_22855CA8C();
    v9 = sub_22855D6AC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v17 = v11;
      *v10 = 136446210;

      v12 = UserCharacteristicInputSignal.description.getter();
      v14 = v13;

      v15 = sub_2283F8938(v12, v14, &v17);

      *(v10 + 4) = v15;
      _os_log_impl(&dword_2283ED000, v8, v9, "%{public}s: Device unlocked, retrying fetch characteristic", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x22AABAD40](v11, -1, -1);
      MEMORY[0x22AABAD40](v10, -1, -1);
    }

    else
    {
    }

    v16 = (*(v1 + 8))(v4, v0);
    sub_228469294(v16);
  }

  return result;
}

uint64_t UserCharacteristicInputSignal.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = qword_280DF6A40;
  v3 = sub_22855C85C();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v0 + qword_280DF6A28);
  swift_unknownObjectRelease();
  v5 = *(v0 + qword_280DF6A20 + 8);

  v6 = *(v0 + qword_280DF6A30);

  return v0;
}

uint64_t UserCharacteristicInputSignal.__deallocating_deinit()
{
  UserCharacteristicInputSignal.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_22846B308()
{
  v1 = *v0;
  sub_22846B6A8();
  return swift_unknownObjectRetain();
}

uint64_t UserCharacteristicInputSignal.description.getter()
{
  v1 = *v0;
  v4 = sub_22855E34C();
  MEMORY[0x22AAB92A0](95, 0xE100000000000000);
  sub_22855C85C();
  sub_22846B99C(&qword_280DE9E98, MEMORY[0x277D11C40]);
  v2 = sub_22855E11C();
  MEMORY[0x22AAB92A0](v2);

  return v4;
}

uint64_t sub_22846B6A8()
{
  result = *(v0 + qword_280DF6A28);
  v2 = *(v0 + qword_280DF6A28 + 8);
  return result;
}

uint64_t _s14HealthPlatform29UserCharacteristicInputSignalC16beginObservation4from14configurationsy0A13Orchestration19OptionalValueAnchorVyxGSg_SayAG21IdentityConfigurationVGtF_0()
{
  v1 = v0;
  v2 = *v0;
  v3 = *v0;
  v4 = *(v0 + qword_280DF6A30);
  sub_22855C49C();
  v5 = *(v1 + qword_280DF6A30);
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = *(v2 + 80);
  *(v7 + 24) = *(v3 + 88);
  *(v7 + 40) = *(v2 + 104);
  *(v7 + 48) = v6;

  sub_22855C46C();

  return sub_228469294();
}

unint64_t sub_22846B7E8()
{
  result = qword_280DED240;
  if (!qword_280DED240)
  {
    sub_2283FA33C(255, &qword_280DED250, MEMORY[0x277D85230], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DED240);
  }

  return result;
}

uint64_t sub_22846B8A8()
{
  result = sub_22855C85C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_22846B99C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22846BA3C(uint64_t a1)
{
  v5 = *(v1 + 24);
  v4 = *(v1 + 32);
  v14 = *(v1 + 40);
  v6 = *(v1 + 16);
  v8 = *(v1 + 56);
  v7 = *(v1 + 64);
  v9 = *(v1 + 72);
  v10 = *(v1 + 80);
  v11 = *(v1 + 88);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_22846BCA0;

  return sub_22846A22C(a1, v6, v5, v7, v9, v10, v11, v4);
}

uint64_t sub_22846BB3C(uint64_t a1)
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
  v10[1] = sub_228468A14;

  return sub_228469E34(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_22846BC10(uint64_t a1)
{
  sub_2283FA33C(0, &qword_280DECDA8, MEMORY[0x277CC8990], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

HealthPlatform::PluginPinnedContentDomain_optional __swiftcall PluginPinnedContentDomain.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22855DFBC();

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

uint64_t sub_22846BD58(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = ".pinnedContent.summary";
  }

  else
  {
    v2 = "espiratory";
  }

  v3 = v2 | 0x8000000000000000;
  if (*a2)
  {
    v4 = ".pinnedContent.summary";
  }

  else
  {
    v4 = "espiratory";
  }

  if (v3 == (v4 | 0x8000000000000000))
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_22855E15C();
  }

  return v5 & 1;
}

uint64_t sub_22846BDFC()
{
  v1 = *v0;
  sub_22855E22C();
  sub_22855D20C();

  return sub_22855E27C();
}

uint64_t sub_22846BE74()
{
  *v0;
  sub_22855D20C();
}

uint64_t sub_22846BED8()
{
  v1 = *v0;
  sub_22855E22C();
  sub_22855D20C();

  return sub_22855E27C();
}

uint64_t sub_22846BF4C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_22855DFBC();

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

void sub_22846BFAC(void *a1@<X8>)
{
  if (*v1)
  {
    v2 = ".pinnedContent.summary";
  }

  else
  {
    v2 = "espiratory";
  }

  *a1 = 0xD000000000000026;
  a1[1] = v2 | 0x8000000000000000;
}

uint64_t PinnedContentIdentifier.identifier.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t PinnedContentIdentifier.identifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t static PinnedContentIdentifier.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if (*a1)
  {
    v6 = ".pinnedContent.summary";
  }

  else
  {
    v6 = "espiratory";
  }

  v7 = v6 | 0x8000000000000000;
  if (*a2)
  {
    v8 = ".pinnedContent.summary";
  }

  else
  {
    v8 = "espiratory";
  }

  if (v7 == (v8 | 0x8000000000000000))
  {
  }

  else
  {
    v9 = sub_22855E15C();

    result = 0;
    if ((v9 & 1) == 0)
    {
      return result;
    }
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return sub_22855E15C();
}

uint64_t PinnedContentIdentifier.hash(into:)()
{
  v1 = *v0;
  v3 = *(v0 + 1);
  v2 = *(v0 + 2);
  sub_22855D20C();

  return sub_22855D20C();
}

uint64_t PinnedContentIdentifier.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  sub_22855E22C();
  sub_22855D20C();

  sub_22855D20C();
  return sub_22855E27C();
}

uint64_t sub_22846C2E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if (*a1)
  {
    v6 = ".pinnedContent.summary";
  }

  else
  {
    v6 = "espiratory";
  }

  v7 = v6 | 0x8000000000000000;
  if (*a2)
  {
    v8 = ".pinnedContent.summary";
  }

  else
  {
    v8 = "espiratory";
  }

  if (v7 == (v8 | 0x8000000000000000))
  {
  }

  else
  {
    v9 = sub_22855E15C();

    result = 0;
    if ((v9 & 1) == 0)
    {
      return result;
    }
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return sub_22855E15C();
}

uint64_t sub_22846C408()
{
  v1 = *v0;
  v3 = *(v0 + 1);
  v2 = *(v0 + 2);
  sub_22855D20C();

  return sub_22855D20C();
}

uint64_t sub_22846C48C()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  sub_22855E22C();
  sub_22855D20C();

  sub_22855D20C();
  return sub_22855E27C();
}

unint64_t sub_22846C520()
{
  result = qword_27D83F870;
  if (!qword_27D83F870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83F870);
  }

  return result;
}

unint64_t sub_22846C578()
{
  result = qword_27D83F878;
  if (!qword_27D83F878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83F878);
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

uint64_t sub_22846C5F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_22846C638(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

id HKHealthStore.sourceProfile.getter()
{
  v1 = [v0 profileIdentifier];

  return v1;
}

uint64_t sub_22846C6C0@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_22855BD9C();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  sub_22855BD8C();
  sub_22846D800(0, &qword_280DEE688, sub_22845D654, sub_22845D6A8);
  v8 = [a1 data];
  v9 = sub_22855C09C();
  v11 = v10;

  sub_22846D650();
  sub_22855BD7C();
  sub_22842B38C(v9, v11);

  if (v2)
  {
    sub_22846D1CC();
    swift_allocError();
    *v13 = v2;
    return swift_willThrow();
  }

  else
  {
    *a2 = v14;
  }

  return result;
}

uint64_t sub_22846C810@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_22855BD9C();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  sub_22855BD8C();
  sub_22846D800(0, &qword_280DEE9A0, sub_22845DE28, sub_22845DE7C);
  v8 = [a1 data];
  v9 = sub_22855C09C();
  v11 = v10;

  sub_22846D6E0();
  sub_22855BD7C();
  sub_22842B38C(v9, v11);

  if (v2)
  {
    sub_22846D1CC();
    swift_allocError();
    *v13 = v2;
    return swift_willThrow();
  }

  else
  {
    *a2 = v14;
  }

  return result;
}

uint64_t sub_22846C960@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_22855BD9C();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  sub_22855BD8C();
  sub_22846D800(0, &qword_280DEE678, sub_22845D9E4, sub_22845DA38);
  v8 = [a1 data];
  v9 = sub_22855C09C();
  v11 = v10;

  sub_22846D87C();
  sub_22855BD7C();
  sub_22842B38C(v9, v11);

  if (v2)
  {
    sub_22846D1CC();
    swift_allocError();
    *v13 = v2;
    return swift_willThrow();
  }

  else
  {
    *a2 = v14;
  }

  return result;
}

uint64_t static RelevanceFeatureTagDecodable<>.makeFromFeedItemTag(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v18[0] = a4;
  v7 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v18 - v14;
  v16 = v18[1];
  result = (*(a3 + 24))(a1, a2, a3);
  if (!v16)
  {
    (*(v9 + 16))(v13, v15, AssociatedTypeWitness);
    (*(v7 + 32))(v13, a2, v7);
    return (*(v9 + 8))(v15, AssociatedTypeWitness);
  }

  return result;
}

uint64_t sub_22846CC40(void *a1)
{
  v3 = sub_22855BD9C();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_22855BD8C();
  sub_22846D90C(0, &qword_280DEE668);
  v6 = [a1 data];
  v7 = sub_22855C09C();
  v9 = v8;

  sub_22846D5D8();
  sub_22855BD7C();
  sub_22842B38C(v7, v9);

  if (!v1)
  {
    return v12;
  }

  sub_22846D1CC();
  swift_allocError();
  *v10 = v1;
  return swift_willThrow();
}

uint64_t sub_22846CD70(void *a1)
{
  v3 = sub_22855BD9C();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_22855BD8C();
  sub_22846D800(0, &qword_27D83F790, sub_22845D8AC, sub_22845D900);
  v6 = [a1 data];
  v7 = sub_22855C09C();
  v9 = v8;

  sub_22846D770();
  sub_22855BD7C();
  sub_22842B38C(v7, v9);

  if (!v1)
  {
    return v12;
  }

  sub_22846D1CC();
  swift_allocError();
  *v10 = v1;
  return swift_willThrow();
}

uint64_t sub_22846CEB8(void *a1)
{
  v3 = sub_22855BD9C();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_22855BD8C();
  sub_22846D90C(0, &qword_280DEE658);
  v6 = [a1 data];
  v7 = sub_22855C09C();
  v9 = v8;

  sub_22846D960();
  sub_22855BD7C();
  sub_22842B38C(v7, v9);

  if (v1)
  {
    sub_22846D1CC();
    swift_allocError();
    *v11 = v1;
    return swift_willThrow();
  }

  return result;
}

uint64_t static RelevanceFeatureTagDecodable<>.value(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for ValueJSONWrapper();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - v10;
  v12 = sub_22855BD9C();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  sub_22855BD8C();
  v15 = [a1 data];
  v16 = sub_22855C09C();
  v18 = v17;

  swift_getWitnessTable();
  sub_22855BD7C();
  sub_22842B38C(v16, v18);

  if (!v3)
  {
    return (*(*(AssociatedTypeWitness - 8) + 32))(a3, v11, AssociatedTypeWitness);
  }

  sub_22846D1CC();
  swift_allocError();
  *v19 = v3;
  return swift_willThrow();
}

unint64_t sub_22846D1CC()
{
  result = qword_27D83F880;
  if (!qword_27D83F880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83F880);
  }

  return result;
}

uint64_t FeedItem.get<A>(featureTag:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v23 = a4;
  v7 = *(a3 + 8);
  v21 = a1;
  v22 = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v21 - v14;
  v16 = *(a3 + 16);
  v17 = v4;
  v16(a2, a3);
  v25 = v17;
  v18 = swift_readAtKeyPath();
  v19 = *(v9 + 16);
  v19(v15);
  v18(v24, 0);

  (v19)(v13, v15, AssociatedTypeWitness);
  (*(v22 + 32))(v13, a2);
  return (*(v9 + 8))(v15, AssociatedTypeWitness);
}

unint64_t sub_22846D470(uint64_t a1)
{
  v1 = 0xD00000000000002ELL;
  if (a1)
  {
    sub_22855DC6C();
    MEMORY[0x22AAB92A0](0xD000000000000063, 0x800000022856FE40);
    sub_228418D44();
    sub_22855DDDC();
    return 0;
  }

  return v1;
}

uint64_t sub_22846D54C@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22846CD70(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_22846D5AC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_22846CC40(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

unint64_t sub_22846D5D8()
{
  result = qword_280DEBDA0;
  if (!qword_280DEBDA0)
  {
    sub_22846D90C(255, &qword_280DEE668);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEBDA0);
  }

  return result;
}

unint64_t sub_22846D650()
{
  result = qword_280DEBDB8;
  if (!qword_280DEBDB8)
  {
    sub_22846D800(255, &qword_280DEE688, sub_22845D654, sub_22845D6A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEBDB8);
  }

  return result;
}

unint64_t sub_22846D6E0()
{
  result = qword_280DEBDB0;
  if (!qword_280DEBDB0)
  {
    sub_22846D800(255, &qword_280DEE9A0, sub_22845DE28, sub_22845DE7C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEBDB0);
  }

  return result;
}

unint64_t sub_22846D770()
{
  result = qword_27D83F888;
  if (!qword_27D83F888)
  {
    sub_22846D800(255, &qword_27D83F790, sub_22845D8AC, sub_22845D900);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83F888);
  }

  return result;
}

void sub_22846D800(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  if (!*a2)
  {
    a3();
    a4();
    v6 = type metadata accessor for ValueJSONWrapper();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_22846D87C()
{
  result = qword_280DEBDA8;
  if (!qword_280DEBDA8)
  {
    sub_22846D800(255, &qword_280DEE678, sub_22845D9E4, sub_22845DA38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEBDA8);
  }

  return result;
}

void sub_22846D90C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for ValueJSONWrapper();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_22846D960()
{
  result = qword_280DEBD98;
  if (!qword_280DEBD98)
  {
    sub_22846D90C(255, &qword_280DEE658);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEBD98);
  }

  return result;
}

uint64_t static InputSignalSet.LookupKey.summarySharing.getter()
{
  v0 = sub_22855C85C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  sub_22855C84C();
  type metadata accessor for SummarySharingInputSignal();
  return sub_22855C61C();
}

uint64_t type metadata accessor for SummarySharingInputSignal()
{
  result = qword_280DEB298;
  if (!qword_280DEB298)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22846DAF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = [objc_allocWithZone(MEMORY[0x277CCDA78]) initWithHealthStore_];
  [v5 addObserver_];
  result = sub_2283EF310(0, &qword_280DE9268, 0x277CCDA78);
  a3[3] = result;
  a3[4] = &protocol witness table for HKSummarySharingEntryStore;
  *a3 = v5;
  return result;
}

void *SummarySharingInputSignal.__allocating_init(context:observer:sourceFactory:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(v6 + 48);
  v14 = *(v6 + 52);
  v15 = swift_allocObject();
  ObjectType = swift_getObjectType();

  return sub_22846EF58(a1, a3, a4, a5, a6, v15, ObjectType, a2);
}

void *SummarySharingInputSignal.init(context:observer:sourceFactory:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();

  return sub_22846EF58(a1, a3, a4, a5, a6, v6, ObjectType, a2);
}

uint64_t static SummarySharingInputSignal.identityConfiguration.getter()
{
  v0 = sub_22855C85C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  sub_22855C84C();
  return sub_22855C82C();
}

uint64_t SummarySharingInputSignal.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14HealthPlatform25SummarySharingInputSignal_identifier;
  v4 = sub_22855C85C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SummarySharingInputSignal.observer.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14HealthPlatform25SummarySharingInputSignal_observer);
  v2 = *(v0 + OBJC_IVAR____TtC14HealthPlatform25SummarySharingInputSignal_observer + 8);
  return swift_unknownObjectRetain();
}

uint64_t SummarySharingInputSignal.beginObservation(from:configurations:)(uint64_t a1, uint64_t a2)
{
  sub_22846F028();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = *(v2 + 48);
  os_unfair_lock_lock((v8 + 72));
  sub_22846F2A4((v8 + 16));
  os_unfair_lock_unlock((v8 + 72));
  os_unfair_lock_lock((v8 + 72));
  sub_22846F2C0(v8 + 16, v15);
  os_unfair_lock_unlock((v8 + 72));
  v9 = v16;
  v10 = v17;
  __swift_project_boxed_opaque_existential_1(v15, v16);
  sub_22846F2DC(a1, v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v2;
  sub_22846F340(v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  *(v12 + ((v7 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  v13 = *(v10 + 16);

  v13(sub_22846F3A4, v12, v9, v10);

  return __swift_destroy_boxed_opaque_existential_0(v15);
}

Swift::Void __swiftcall SummarySharingInputSignal.stopObservation()()
{
  v1 = *(v0 + 48);
  os_unfair_lock_lock((v1 + 72));
  sub_22846FA44((v1 + 16));

  os_unfair_lock_unlock((v1 + 72));
}

uint64_t sub_22846DFE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 24);
  (*(a2 + 16))(a2);
  sub_22846F528(a1);
  sub_2283F9B10(a3, a1);
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = *(a1 + 48);

  *(a1 + 40) = sub_22846F9DC;
  *(a1 + 48) = v6;
  return result;
}

uint64_t sub_22846E088()
{
  v0 = sub_22855C85C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22846F080();
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = *(result + OBJC_IVAR____TtC14HealthPlatform25SummarySharingInputSignal_observer);
    v16[1] = *(result + OBJC_IVAR____TtC14HealthPlatform25SummarySharingInputSignal_observer + 8);
    v13 = result;
    swift_getObjectType();
    (*(v1 + 16))(v4, v13 + OBJC_IVAR____TtC14HealthPlatform25SummarySharingInputSignal_identifier, v0);

    v15 = sub_228429C0C(v14);

    v17 = v15;
    sub_22846F178();
    sub_22846F208(&qword_280DE9538, sub_22846F178);
    sub_22846F208(&qword_280DE9530, sub_22846F178);
    sub_22846F250(&qword_280DE9328);
    sub_22855C8DC();
    v17 = v13;
    type metadata accessor for SummarySharingInputSignal();
    sub_22846F208(&qword_280DEB2B0, type metadata accessor for SummarySharingInputSignal);
    sub_22855C78C();
    (*(v7 + 8))(v10, v6);
  }

  return result;
}

uint64_t sub_22846E37C(char a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_22846F028();
  v50 = *(v10 - 8);
  v11 = *(v50 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v51 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22855CABC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v46 - v18;
  if (a1)
  {
    v21 = *(a3 + 32);
    v20 = *(a3 + 40);
    swift_getObjectType();
    sub_22855C59C();
    v22 = sub_22855CA8C();
    v23 = sub_22855D6AC();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_2283ED000, v22, v23, "Started observing summary sharing entry store.", v24, 2u);
      MEMORY[0x22AABAD40](v24, -1, -1);
    }

    return (*(v13 + 8))(v19, v12);
  }

  else
  {
    v49 = a4;
    if (!a2 || (v53 = a2, v26 = a2, sub_2283F9B94(0, &qword_280DECFE0), sub_2283EF310(0, &qword_280DED0B0, 0x277CCA9B8), (swift_dynamicCast() & 1) == 0) || (v27 = v52, v28 = [v52 hk_isDatabaseAccessibilityError], v27, (v28 & 1) == 0))
    {
      v30 = *(a3 + 32);
      v29 = *(a3 + 40);
      swift_getObjectType();
      sub_22855C59C();
      v31 = a2;
      v32 = sub_22855CA8C();
      v33 = sub_22855D68C();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v48 = a5;
        v35 = v34;
        v36 = swift_slowAlloc();
        v52 = a2;
        v53 = v36;
        *v35 = 136315138;
        v37 = a2;
        sub_22846F4D0(0, &qword_280DE8EC0, &qword_280DECFE0);
        v38 = sub_22855D1BC();
        v40 = sub_2283F8938(v38, v39, &v53);
        v47 = v12;
        v41 = v40;

        *(v35 + 4) = v41;
        _os_log_impl(&dword_2283ED000, v32, v33, "Failed to perform initial fetch of sharing entries (%s); retrying.", v35, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v36);
        MEMORY[0x22AABAD40](v36, -1, -1);
        v42 = v35;
        a5 = v48;
        MEMORY[0x22AABAD40](v42, -1, -1);

        (*(v13 + 8))(v17, v47);
      }

      else
      {

        (*(v13 + 8))(v17, v12);
      }
    }

    if (qword_27D83F018 != -1)
    {
      swift_once();
    }

    v43 = v51;
    sub_22846F2DC(v49, v51);
    v44 = (*(v50 + 80) + 24) & ~*(v50 + 80);
    v45 = swift_allocObject();
    *(v45 + 16) = a3;
    sub_22846F340(v43, v45 + v44);
    *(v45 + ((v11 + v44 + 7) & 0xFFFFFFFFFFFFFFF8)) = a5;

    sub_228506C84(sub_22846F94C, v45);
  }
}

uint64_t sub_22846E824(void *a1, uint64_t a2)
{
  if (a1[3])
  {
    sub_2283F9B10(a1, v8);
    v4 = v9;
    v5 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    (*(v5 + 24))(a2, v4, v5);
    __swift_destroy_boxed_opaque_existential_0(v8);
  }

  v6 = a1[6];

  a1[5] = nullsub_1;
  a1[6] = 0;
  return result;
}

Swift::Void __swiftcall SummarySharingInputSignal.sharingEntryStoreDidUpdate()()
{
  v1 = *(v0 + 48);
  os_unfair_lock_lock((v1 + 72));
  sub_22846F454(v1 + 16, &v7);
  if (v8)
  {
    sub_2283FAB3C(&v7, v9);
    v3 = *(v1 + 56);
    v2 = *(v1 + 64);
    sub_2283FAB3C(v9, &v7);
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    *(v4 + 24) = v2;
    sub_2283FAB3C(&v7, v4 + 32);

    v5 = sub_22846F59C;
  }

  else
  {
    sub_22846F528(&v7);
    v5 = nullsub_1;
  }

  v6 = v5;
  os_unfair_lock_unlock((v1 + 72));
  v6();
}

uint64_t sub_22846E9BC(void (*a1)(void), uint64_t a2, void *a3)
{
  v4 = a3[3];
  v5 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v4);
  (*(v5 + 8))(v4, v5);
  a1();
}

char *SummarySharingInputSignal.deinit()
{
  v1 = *(v0 + 3);

  v2 = *(v0 + 4);
  swift_unknownObjectRelease();
  v3 = *(v0 + 6);

  v4 = OBJC_IVAR____TtC14HealthPlatform25SummarySharingInputSignal_identifier;
  v5 = sub_22855C85C();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  v6 = *&v0[OBJC_IVAR____TtC14HealthPlatform25SummarySharingInputSignal_observer];
  swift_unknownObjectRelease();
  return v0;
}

uint64_t SummarySharingInputSignal.__deallocating_deinit()
{
  v1 = *(v0 + 3);

  v2 = *(v0 + 4);
  swift_unknownObjectRelease();
  v3 = *(v0 + 6);

  v4 = OBJC_IVAR____TtC14HealthPlatform25SummarySharingInputSignal_identifier;
  v5 = sub_22855C85C();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  v6 = *&v0[OBJC_IVAR____TtC14HealthPlatform25SummarySharingInputSignal_observer];
  swift_unknownObjectRelease();
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_22846EBCC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC14HealthPlatform25SummarySharingInputSignal_identifier;
  v5 = sub_22855C85C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_22846EC48()
{
  v1 = (*v0 + OBJC_IVAR____TtC14HealthPlatform25SummarySharingInputSignal_observer);
  v2 = *v1;
  v3 = v1[1];
  return swift_unknownObjectRetain();
}

void sub_22846ECA4()
{
  v1 = *(*v0 + 48);
  os_unfair_lock_lock((v1 + 72));
  sub_22846FA44((v1 + 16));

  os_unfair_lock_unlock((v1 + 72));
}

uint64_t sub_22846ED00(uint64_t a1)
{
  v2 = sub_22846F208(&qword_280DEB2B0, type metadata accessor for SummarySharingInputSignal);

  return MEMORY[0x28216B080](a1, v2);
}

uint64_t sub_22846ED6C()
{
  v1 = [*v0 sharingEntries];
  sub_2283EF310(0, &qword_280DE9320, 0x277CCDA70);
  v2 = sub_22855D3AC();

  return v2;
}

uint64_t sub_22846EDD4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v6[4] = a1;
  v6[5] = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_2284A72DC;
  v6[3] = &block_descriptor_6;
  v4 = _Block_copy(v6);

  [v3 fetchSharingEntriesWithCompletion_];
  _Block_release(v4);
}

void *sub_22846EE9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  *(v14 + 16) = a4;
  v15 = *(a5 + 48);
  v16 = *(a5 + 52);
  v17 = swift_allocObject();

  return sub_22846EF58(a1, a2, a3, sub_22846F81C, v14, v17, a6, a7);
}

void *sub_22846EF58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  sub_22846F9E4();
  v15 = swift_allocObject();
  *(v15 + 72) = 0;
  *(v15 + 16) = 0u;
  *(v15 + 32) = 0u;
  *(v15 + 48) = 0;
  *(v15 + 56) = nullsub_1;
  *(v15 + 64) = 0;
  a6[6] = v15;
  sub_22855C84C();
  a6[2] = a4;
  a6[3] = a5;
  a6[4] = a1;
  a6[5] = a8;
  v16 = (a6 + OBJC_IVAR____TtC14HealthPlatform25SummarySharingInputSignal_observer);
  *v16 = a2;
  v16[1] = a3;
  return a6;
}

void sub_22846F028()
{
  if (!qword_280DE9E60)
  {
    sub_22846F080();
    v0 = sub_22855DA2C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE9E60);
    }
  }
}

void sub_22846F080()
{
  if (!qword_280DE9E68)
  {
    sub_22846F178();
    sub_22846F208(&qword_280DE9538, sub_22846F178);
    sub_22846F208(&qword_280DE9530, sub_22846F178);
    sub_22846F250(&qword_280DE9328);
    v0 = sub_22855C8FC();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE9E68);
    }
  }
}

void sub_22846F178()
{
  if (!qword_280DE9540)
  {
    sub_2283EF310(255, &qword_280DE9320, 0x277CCDA70);
    sub_22846F250(&qword_280DE9318);
    v0 = sub_22855D57C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE9540);
    }
  }
}

uint64_t sub_22846F208(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22846F250(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_2283EF310(255, &qword_280DE9320, 0x277CCDA70);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22846F2DC(uint64_t a1, uint64_t a2)
{
  sub_22846F028();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22846F340(uint64_t a1, uint64_t a2)
{
  sub_22846F028();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22846F3A4(char a1, void *a2)
{
  sub_22846F028();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v8 = *(v2 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *(v2 + 16);

  return sub_22846E37C(a1, a2, v9, v2 + v7, v8);
}

uint64_t sub_22846F454(uint64_t a1, uint64_t a2)
{
  sub_22846F4D0(0, &qword_280DEB2B8, &qword_280DEB2C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_22846F4D0(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_2283F9B94(255, a3);
    v4 = sub_22855DA2C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_22846F528(uint64_t a1)
{
  sub_22846F4D0(0, &qword_280DEB2B8, &qword_280DEB2C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22846F67C()
{
  result = sub_22855C85C();
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

uint64_t get_enum_tag_for_layout_string_14HealthPlatform25SummarySharingEntrySource_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_22846F778(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22846F7C0(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

uint64_t objectdestroyTm_1()
{
  sub_22846F028();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = *(v0 + 16);

  sub_22846F080();
  v7 = v6;
  v8 = *(v6 - 8);
  if (!(*(v8 + 48))(v0 + v3, 1, v6))
  {
    (*(v8 + 8))(v0 + v3, v7);
  }

  v9 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v0 + v9);

  return MEMORY[0x2821FE8E8](v0, v9 + 8, v2 | 7);
}

uint64_t sub_22846F94C()
{
  sub_22846F028();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  return SummarySharingInputSignal.beginObservation(from:configurations:)(v0 + v3, *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_22846F9E4()
{
  if (!qword_280DE9158)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_22855DCFC();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE9158);
    }
  }
}

void sub_22846FA5C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_228476B98(0, &qword_280DEE7D0);
  v5 = sub_22855DA1C();
  v6 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];

  swift_unknownObjectRelease();
  if (v5 == v6)
  {

    v11 = v3[1];
    v12 = v3[2];
    v13 = *v3;
    v10 = sub_22855D17C();
    [v12 setURL:0 forKey:v10];
  }

  else
  {
    v7 = v3[2];
    if (a2)
    {
      a2 = sub_22855E19C();
    }

    v8 = *v3;
    v9 = v3[1];
    v10 = sub_22855D17C();
    [v7 setObject:a2 forKey:v10];
    swift_unknownObjectRelease();
  }
}

void sub_22846FB78(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_228476CA8(0, &qword_27D83F8A8, &qword_280DEE7D0, MEMORY[0x277D837D0], sub_228476B98);
  v6 = sub_22855DA1C();
  v7 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];

  swift_unknownObjectRelease();
  if (v6 == v7)
  {
    sub_228476D04(a1, a2);
    v10 = v3[1];
    v11 = v3[2];
    v12 = *v3;
    v13 = sub_22855D17C();
    [v11 setURL:0 forKey:v13];
  }

  else
  {
    v8 = v3[2];
    if (a2 == 1)
    {
      v9 = 0;
    }

    else
    {
      sub_228476B98(0, &qword_280DEE7D0);
      v9 = sub_22855E19C();
    }

    v14 = *v3;
    v15 = v3[1];
    v13 = sub_22855D17C();
    [v8 setObject:v9 forKey:v13];
    swift_unknownObjectRelease();
  }
}

uint64_t sub_22846FCD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_2283FA3A0(0, &qword_280DE9558, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_228476E70(a3, v27 - v11);
  v13 = sub_22855D4EC();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_228476F04(v12);
  }

  else
  {
    sub_22855D4DC();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_22855D49C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_22855D1DC() + 32;
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

      sub_228476F04(a3);

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

  sub_228476F04(a3);
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

uint64_t OpenTransactionBuilderManager.MakeTransactionError.hashValue.getter()
{
  sub_22855E22C();
  MEMORY[0x22AABA2B0](0);
  return sub_22855E27C();
}

uint64_t sub_228470048()
{
  if (qword_280DED1C0 != -1)
  {
    swift_once();
  }

  v0 = qword_280DED1C8;
  type metadata accessor for OpenTransactionBuilderManager();
  v1 = swift_allocObject();
  result = OpenTransactionBuilderManager.init(userDefaults:)(v0);
  qword_280DEAE60 = v1;
  return result;
}

uint64_t OpenTransactionBuilderManager.__allocating_init(userDefaults:)(uint64_t a1)
{
  v2 = swift_allocObject();
  OpenTransactionBuilderManager.init(userDefaults:)(a1);
  return v2;
}

uint64_t static OpenTransactionBuilderManager.shared.getter()
{
  if (qword_280DEAE58 != -1)
  {
    swift_once();
  }
}

unint64_t sub_22847015C(uint64_t a1, char a2)
{
  v4 = sub_22855C1DC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v16 = 0x2864657461657263;
    v17 = 0xE800000000000000;
    v9 = [*(a1 + 16) transactionUUID];
    sub_22855C1BC();

    v10 = sub_22855C17C();
    v12 = v11;
    (*(v5 + 8))(v8, v4);
    MEMORY[0x22AAB92A0](v10, v12);
  }

  else
  {
    v16 = 0;
    v17 = 0xE000000000000000;
    sub_22855DC6C();

    v16 = 0xD00000000000001CLL;
    v17 = 0x8000000228570040;
    v15[1] = *(a1 + 16);
    v13 = sub_22855E11C();
    MEMORY[0x22AAB92A0](v13);
  }

  MEMORY[0x22AAB92A0](41, 0xE100000000000000);
  return v16;
}

uint64_t OpenTransactionBuilderManager.init(userDefaults:)(uint64_t a1)
{
  v17 = a1;
  v16 = sub_22855D81C();
  v2 = *(v16 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v16);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22855D7BC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v8 = sub_22855CFEC();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  sub_2284705FC();
  v10 = swift_allocObject();
  *(v10 + 24) = 0;
  *(v10 + 16) = MEMORY[0x277D84F98];
  *(v1 + 16) = v10;
  v11 = sub_2283EF310(0, &qword_280DED120, 0x277D85C78);
  v15[1] = "riesNeededDefaultsKey";
  v15[2] = v11;
  sub_22855CFDC();
  v18 = MEMORY[0x277D84F90];
  sub_2283FA0B8(&unk_280DED140, MEMORY[0x277D85230]);
  v12 = MEMORY[0x277D85230];
  sub_2283FA3A0(0, &qword_280DED250, MEMORY[0x277D85230], MEMORY[0x277D83940]);
  sub_2283F466C(&qword_280DED240, &qword_280DED250, v12);
  sub_22855DA9C();
  (*(v2 + 104))(v5, *MEMORY[0x277D85260], v16);
  *(v1 + 24) = sub_22855D84C();
  *(v1 + 32) = 0xD000000000000045;
  v13 = v17;
  *(v1 + 40) = 0x800000022856FF30;
  *(v1 + 48) = v13;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0xE000000000000000;
  *(v1 + 72) = 0;
  return v1;
}

void sub_2284705FC()
{
  if (!qword_280DE9130)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_22855DCFC();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE9130);
    }
  }
}

void sub_22847065C(void *a1, void (*a2)(void *, uint64_t), uint64_t a3)
{
  v4 = v3;
  v59 = *v3;
  sub_2283FA3A0(0, &qword_280DE9558, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v53 - v10;
  v12 = sub_22855CFBC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22855CFEC();
  v57 = *(v17 - 8);
  v58 = v17;
  v18 = *(v57 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = [a1 profileIdentifier];
  v21 = [v60 type];
  if (v21 == 1 || (v21 = [v60 type], v21 == 3))
  {
    v54 = v13;
    v55 = v11;
    v56 = a1;
    v22 = v3[2];
    MEMORY[0x28223BE20](v21);
    v23 = v59;
    *(&v53 - 4) = v60;
    *(&v53 - 3) = a2;
    *(&v53 - 2) = a3;
    *(&v53 - 1) = v23;
    os_unfair_lock_lock((v22 + 24));
    sub_2284762D8((v22 + 16), &aBlock);
    os_unfair_lock_unlock((v22 + 24));
    v24 = v63;
    if (v63 == 255)
    {
      if (qword_280DEEC90 != -1)
      {
        swift_once();
      }

      v29 = sub_22855CABC();
      __swift_project_value_buffer(v29, qword_280DEEC98);
      v30 = sub_22855CA8C();
      v31 = sub_22855D6AC();
      v32 = os_log_type_enabled(v30, v31);
      v33 = v55;
      if (v32)
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        aBlock = v35;
        *v34 = 136446210;
        v36 = sub_22855E34C();
        v38 = sub_2283F8938(v36, v37, &aBlock);

        *(v34 + 4) = v38;
        _os_log_impl(&dword_2283ED000, v30, v31, "[%{public}s] No in-memory transaction builder found, creating it", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v35);
        MEMORY[0x22AABAD40](v35, -1, -1);
        MEMORY[0x22AABAD40](v34, -1, -1);
      }

      v39 = v56;
      v40 = sub_22855D4EC();
      (*(*(v40 - 8) + 56))(v33, 1, 1, v40);
      v41 = swift_allocObject();
      v41[2] = 0;
      v41[3] = 0;
      v41[4] = v4;
      v41[5] = v39;

      v42 = v39;
      sub_22846FCD4(0, 0, v33, &unk_228562FB8, v41);
    }

    else
    {
      v25 = aBlock;
      if (v63)
      {
        v59 = v3[3];
        v26 = swift_allocObject();
        v26[2] = a2;
        v26[3] = a3;
        v26[4] = v25;
        v66 = sub_2284765FC;
        v67 = v26;
        aBlock = MEMORY[0x277D85DD0];
        v63 = 1107296256;
        v64 = sub_228401F54;
        v65 = &block_descriptor_7;
        v27 = _Block_copy(&aBlock);

        sub_228476630(v25, v24);
        sub_22855CFDC();
        v61 = MEMORY[0x277D84F90];
        sub_2283FA0B8(&qword_280DED2D0, MEMORY[0x277D85198]);
        v28 = MEMORY[0x277D85198];
        sub_2283FA3A0(0, &qword_280DED270, MEMORY[0x277D85198], MEMORY[0x277D83940]);
        sub_2283F466C(&qword_280DED260, &qword_280DED270, v28);
        sub_22855DA9C();
        MEMORY[0x22AAB98B0](0, v20, v16, v27);

        _Block_release(v27);
        sub_2284765A8(v25, v24);
        (*(v54 + 8))(v16, v12);
        (*(v57 + 8))(v20, v58);
      }

      else
      {
        if (qword_280DEEC90 != -1)
        {
          swift_once();
        }

        v45 = sub_22855CABC();
        __swift_project_value_buffer(v45, qword_280DEEC98);
        v46 = sub_22855CA8C();
        v47 = sub_22855D6AC();
        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          aBlock = v49;
          *v48 = 136446210;
          v50 = sub_22855E34C();
          v52 = sub_2283F8938(v50, v51, &aBlock);

          *(v48 + 4) = v52;
          _os_log_impl(&dword_2283ED000, v46, v47, "[%{public}s] Waiting for in-memory transaction builder creation, completion enqueued", v48, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v49);
          MEMORY[0x22AABAD40](v49, -1, -1);
          MEMORY[0x22AABAD40](v48, -1, -1);
        }

        sub_2284765A8(v25, v24);
      }
    }
  }

  else
  {
    sub_228476284();
    v43 = swift_allocError();
    a2(v43, 1);

    v44 = v60;
  }
}

void sub_228470E0C(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = *a1;
  if (*(*a1 + 16) && (v13 = sub_2283FB154(a2), (v14 & 1) != 0))
  {
    v15 = *(v12 + 56) + 16 * v13;
    v16 = *v15;
    if (*(v15 + 8))
    {
      *a6 = v16;
      *(a6 + 8) = 1;
    }

    else
    {
      v23 = swift_allocObject();
      v23[2] = a3;
      v23[3] = a4;
      v23[4] = a5;
      sub_2283FA3A0(0, &qword_280DE8ED0, sub_22842BA6C, MEMORY[0x277D84560]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_228560580;
      v25 = swift_allocObject();
      *(v25 + 16) = sub_228477298;
      *(v25 + 24) = v23;
      *(inited + 32) = sub_22841C0FC;
      *(inited + 40) = v25;
      sub_22844B978(v16, 0);

      sub_2284A7914(inited);
      swift_bridgeObjectRetain_n();
      v26 = a2;
      v27 = *a1;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v30 = *a1;
      sub_22845B074(v16, 0, v26, isUniquelyReferenced_nonNull_native);

      *a1 = v30;
      *a6 = v16;
      *(a6 + 8) = 0;
    }
  }

  else
  {
    v17 = swift_allocObject();
    v17[2] = a3;
    v17[3] = a4;
    v17[4] = a5;
    sub_2283FA3A0(0, &qword_280DE8ED0, sub_22842BA6C, MEMORY[0x277D84560]);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_228560580;
    v19 = swift_allocObject();
    *(v19 + 16) = sub_228477100;
    *(v19 + 24) = v17;
    *(v18 + 32) = sub_22841B3C0;
    *(v18 + 40) = v19;

    v20 = a2;
    v21 = *a1;
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v29 = *a1;
    sub_22845B074(v18, 0, v20, v22);

    *a1 = v29;
    *a6 = 0;
    *(a6 + 8) = -1;
  }
}

uint64_t sub_2284710F4(void *a1, char a2, uint64_t (*a3)(void, void))
{
  if (qword_280DEEC90 != -1)
  {
    swift_once();
  }

  v6 = sub_22855CABC();
  __swift_project_value_buffer(v6, qword_280DEEC98);
  sub_228476E50(a1, a2 & 1);
  v7 = sub_22855CA8C();
  v8 = sub_22855D6AC();
  sub_228476E5C(a1, a2 & 1, MEMORY[0x277D85008], MEMORY[0x277D84FF0]);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136446466;
    v11 = sub_22855E34C();
    v13 = a3;
    v14 = sub_2283F8938(v11, v12, &v19);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2082;
    sub_228476E50(a1, a2 & 1);
    sub_228477124(0, &qword_280DE8E98, MEMORY[0x277D84C48]);
    v15 = sub_22855D1BC();
    v17 = sub_2283F8938(v15, v16, &v19);
    a3 = v13;

    *(v9 + 14) = v17;
    _os_log_impl(&dword_2283ED000, v7, v8, "[%{public}s] Enqueued completion notified of result %{public}s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AABAD40](v10, -1, -1);
    MEMORY[0x22AABAD40](v9, -1, -1);
  }

  return a3(a1, a2 & 1);
}

uint64_t sub_228471344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_228468A14;

  return sub_2284713E0(a5);
}

uint64_t sub_2284713E0(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v2[11] = *v1;
  v3 = sub_22855C1DC();
  v2[12] = v3;
  v4 = *(v3 - 8);
  v2[13] = v4;
  v5 = *(v4 + 64) + 15;
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2284714C8, 0, 0);
}

uint64_t sub_2284714C8()
{
  v1 = v0[9];
  v2 = type metadata accessor for HealthStoreHKSharedSummaryTransactionSource();
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  v0[5] = v2;
  v0[6] = &protocol witness table for HealthStoreHKSharedSummaryTransactionSource;
  v0[2] = v3;
  v4 = v1;
  v5 = swift_task_alloc();
  v0[15] = v5;
  *v5 = v0;
  v5[1] = sub_2284715A4;

  return _s14HealthPlatform41DefaultHKSharedSummaryTransactionProviderV09fetchOpenF0So0deF0CSgyYaAA0iF10FetchErrorOYKF((v0 + 7));
}

uint64_t sub_2284715A4(uint64_t a1)
{
  v3 = *(*v2 + 120);
  v6 = *v2;
  *(*v2 + 128) = a1;

  if (v1)
  {
    v4 = sub_228471B50;
  }

  else
  {
    v4 = sub_2284716B8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2284716B8()
{
  v49 = v0;
  v1 = *(v0 + 128);
  if (v1)
  {
    v2 = *(v0 + 104);
    v3 = *(v0 + 112);
    v4 = *(v0 + 96);
    v5 = &unk_2785F7000;
    v6 = [*(v0 + 128) UUID];
    sub_22855C1BC();

    v7 = sub_22855C17C();
    v9 = v8;
    v10 = *(v2 + 8);
    v10(v3, v4);
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v11 = sub_22855CABC();
    __swift_project_value_buffer(v11, qword_280DEEC98);

    v12 = sub_22855CA8C();
    v13 = sub_22855D6AC();

    if (os_log_type_enabled(v12, v13))
    {
      v47 = v1;
      v14 = *(v0 + 88);
      v15 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v48 = v46;
      *v15 = 136446466;
      v16 = sub_22855E34C();
      v18 = v7;
      v19 = v10;
      v20 = sub_2283F8938(v16, v17, &v48);
      v1 = v47;

      *(v15 + 4) = v20;
      v10 = v19;
      *(v15 + 12) = 2082;
      v21 = sub_2283F8938(v18, v9, &v48);

      *(v15 + 14) = v21;
      _os_log_impl(&dword_2283ED000, v12, v13, "[%{public}s] Found only one healthappd managed open transaction, using %{public}s", v15, 0x16u);
      swift_arrayDestroy();
      v5 = &unk_2785F7000;
      MEMORY[0x22AABAD40](v46, -1, -1);
      MEMORY[0x22AABAD40](v15, -1, -1);
    }

    else
    {
    }

    v32 = *(v0 + 112);
    v33 = *(v0 + 96);
    v35 = *(v0 + 72);
    v34 = *(v0 + 80);
    v36 = [v1 v5[506]];
    sub_22855C1BC();

    v37 = objc_allocWithZone(MEMORY[0x277CCD948]);
    v38 = sub_22855C19C();
    v10(v32, v33);
    v39 = [v37 initWithHealthStore:v35 transactionUUID:v38];

    type metadata accessor for CachingSharedSummaryTransactionBuilder();
    swift_allocObject();
    v40 = v39;
    v41 = sub_228434304(v40, sub_228471EF8, 0);

    v42 = [v35 profileIdentifier];
    sub_228471F00(v42, v41);
  }

  else
  {
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v22 = sub_22855CABC();
    __swift_project_value_buffer(v22, qword_280DEEC98);
    v23 = sub_22855CA8C();
    v24 = sub_22855D6AC();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = *(v0 + 88);
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v48 = v27;
      *v26 = 136446210;
      v28 = sub_22855E34C();
      v30 = sub_2283F8938(v28, v29, &v48);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_2283ED000, v23, v24, "[%{public}s] No healthappd managed open transactions, creating fresh transaction", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x22AABAD40](v27, -1, -1);
      MEMORY[0x22AABAD40](v26, -1, -1);
    }

    v31 = *(v0 + 80);
    sub_2284728B0(*(v0 + 72));
  }

  v43 = *(v0 + 112);
  sub_228476C54(v0 + 16);

  v44 = *(v0 + 8);

  return v44();
}

uint64_t sub_228471B50()
{
  v32 = v0;
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  if (v2)
  {
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v3 = sub_22855CABC();
    __swift_project_value_buffer(v3, qword_280DEEC98);
    v4 = v1;
    v5 = sub_22855CA8C();
    v6 = sub_22855D68C();
    sub_228476E5C(v1, 1, MEMORY[0x277D84FB8], MEMORY[0x277D84FF0]);
    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(v0 + 88);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v31 = v10;
      *v8 = 136446466;
      v11 = sub_22855E34C();
      v13 = sub_2283F8938(v11, v12, &v31);

      *(v8 + 4) = v13;
      *(v8 + 12) = 2114;
      v14 = v1;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 14) = v15;
      *v9 = v15;
      _os_log_impl(&dword_2283ED000, v5, v6, "[%{public}s] Failed to fetch open transaction: %{public}@", v8, 0x16u);
      sub_22841DC98(v9);
      MEMORY[0x22AABAD40](v9, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x22AABAD40](v10, -1, -1);
      MEMORY[0x22AABAD40](v8, -1, -1);
    }

    v16 = *(v0 + 80);
    v17 = [*(v0 + 72) profileIdentifier];
    sub_22847224C(v17, v1);
  }

  else
  {
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v18 = sub_22855CABC();
    __swift_project_value_buffer(v18, qword_280DEEC98);
    v19 = sub_22855CA8C();
    v20 = sub_22855D68C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = *(v0 + 88);
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v31 = v23;
      *v22 = 136446210;
      v24 = sub_22855E34C();
      v26 = sub_2283F8938(v24, v25, &v31);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_2283ED000, v19, v20, "[%{public}s] More than one healthappd managed open transaction detected, discarding all open transactions and creating a fresh transaction", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x22AABAD40](v23, -1, -1);
      MEMORY[0x22AABAD40](v22, -1, -1);
    }

    v27 = *(v0 + 80);
    sub_228472EF8(*(v0 + 72), v1, 0);
  }

  sub_228476E5C(v1, v2, MEMORY[0x277D84FB8], MEMORY[0x277D84FF0]);
  v28 = *(v0 + 112);
  sub_228476C54(v0 + 16);

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_228471F00(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v3;
  v7 = sub_22855CFBC();
  v23 = *(v7 - 8);
  v8 = *(v23 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_22855CFEC();
  v11 = *(v22 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v22);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v3[2];
  v24 = a1;
  v25 = a2;
  v26 = 1;
  v27 = v6;
  os_unfair_lock_lock((v15 + 24));
  sub_228477268((v15 + 16), aBlock);
  os_unfair_lock_unlock((v15 + 24));
  v16 = aBlock[0];
  v17 = v3[3];
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  *(v18 + 24) = a2;
  aBlock[4] = sub_228476C34;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_228401F54;
  aBlock[3] = &block_descriptor_72_0;
  v19 = _Block_copy(aBlock);

  sub_22855CFDC();
  v28 = MEMORY[0x277D84F90];
  sub_2283FA0B8(&qword_280DED2D0, MEMORY[0x277D85198]);
  v20 = MEMORY[0x277D85198];
  sub_2283FA3A0(0, &qword_280DED270, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_2283F466C(&qword_280DED260, &qword_280DED270, v20);
  sub_22855DA9C();
  MEMORY[0x22AAB98B0](0, v14, v10, v19);
  _Block_release(v19);
  (*(v23 + 8))(v10, v7);
  (*(v11 + 8))(v14, v22);
}

uint64_t sub_22847224C(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = *v3;
  v7 = sub_22855CFBC();
  v24 = *(v7 - 8);
  v8 = *(v24 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_22855CFEC();
  v11 = *(v23 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v23);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v3[2];
  v25 = a1;
  v26 = 0;
  v27 = -1;
  v28 = v6;
  os_unfair_lock_lock((v15 + 24));
  sub_228476B54((v15 + 16), aBlock);
  os_unfair_lock_unlock((v15 + 24));
  v16 = aBlock[0];
  v17 = v3[3];
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  *(v18 + 24) = a2;
  aBlock[4] = sub_228476B78;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_228401F54;
  aBlock[3] = &block_descriptor_65;
  v19 = _Block_copy(aBlock);
  v20 = a2;
  sub_22855CFDC();
  v29 = MEMORY[0x277D84F90];
  sub_2283FA0B8(&qword_280DED2D0, MEMORY[0x277D85198]);
  v21 = MEMORY[0x277D85198];
  sub_2283FA3A0(0, &qword_280DED270, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_2283F466C(&qword_280DED260, &qword_280DED270, v21);
  sub_22855DA9C();
  MEMORY[0x22AAB98B0](0, v14, v10, v19);
  _Block_release(v19);
  (*(v24 + 8))(v10, v7);
  (*(v11 + 8))(v14, v23);
}

uint64_t sub_228472598(uint64_t result, uint64_t a2, char a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    v5 = (result + 40);
    v6 = a3 & 1;
    do
    {
      v8 = *(v5 - 1);
      v7 = *v5;
      v9 = a2;
      v10 = v6;

      v8(&v9);

      v5 += 2;
      --v3;
    }

    while (v3);
  }

  return result;
}

void sub_228472614(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t *a5@<X8>)
{
  v6 = *a1;
  if (*(*a1 + 16) && (v10 = sub_2283FB154(a2), (v11 & 1) != 0))
  {
    v12 = *(v6 + 56) + 16 * v10;
    v13 = *v12;
    if ((*(v12 + 8) & 1) == 0)
    {
      sub_22844B978(v13, 0);
      v26 = a2;
      sub_228476630(a3, a4);
      sub_2284D1F1C(a3, a4, v26);
      goto LABEL_11;
    }

    v14 = 1;
  }

  else
  {
    v13 = 0;
    v14 = -1;
  }

  if (qword_280DEEC90 != -1)
  {
    swift_once();
  }

  v15 = sub_22855CABC();
  __swift_project_value_buffer(v15, qword_280DEEC98);
  sub_228476630(v13, v14);
  v16 = sub_22855CA8C();
  v17 = sub_22855D69C();
  sub_2284765A8(v13, v14);
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v27 = v19;
    *v18 = 136446466;
    v20 = sub_22855E34C();
    v22 = sub_2283F8938(v20, v21, &v27);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2082;
    sub_228476630(v13, v14);
    sub_228476B98(0, &qword_27D83F8A0);
    v23 = sub_22855D1BC();
    v25 = sub_2283F8938(v23, v24, &v27);

    *(v18 + 14) = v25;
    _os_log_impl(&dword_2283ED000, v16, v17, "[%{public}s] Expected current state to be in progress, but is %{public}s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AABAD40](v19, -1, -1);
    MEMORY[0x22AABAD40](v18, -1, -1);
  }

  sub_2284765A8(v13, v14);
  v13 = MEMORY[0x277D84F90];
LABEL_11:
  *a5 = v13;
}

void sub_2284728B0(void *a1)
{
  sub_228472C20();
  v3 = [objc_allocWithZone(MEMORY[0x277CCD948]) initWithHealthStore_];
  sub_2283FA3A0(0, &qword_280DED018, sub_22842D160, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_228560580;
  *(inited + 32) = 0xD000000000000048;
  *(inited + 40) = 0x800000022856FA50;
  if (qword_280DE9298 != -1)
  {
    swift_once();
  }

  v5 = xmmword_280DE92A0;
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v5;

  sub_22847C614(inited);
  swift_setDeallocating();
  sub_228476A44(inited + 32);
  v6 = sub_22855D0DC();

  v7 = swift_allocObject();
  v7[2] = v1;
  v7[3] = a1;
  v7[4] = v3;
  v11[4] = sub_228476B48;
  v11[5] = v7;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_2284A72DC;
  v11[3] = &block_descriptor_59;
  v8 = _Block_copy(v11);

  v9 = a1;
  v10 = v3;

  [v10 addMetadata:v6 completion:v8];
  _Block_release(v8);
}

void sub_228472AEC(int a1, id a2, uint64_t a3, void *a4, void *a5)
{
  if (a2)
  {
    v7 = a2;
    v8 = [a4 profileIdentifier];
    sub_22847224C(v8, a2);

    v9 = a2;
  }

  else
  {
    type metadata accessor for CachingSharedSummaryTransactionBuilder();
    swift_allocObject();
    v11 = a5;
    v12 = sub_228434304(v11, sub_228471EF8, 0);

    v13 = [a4 profileIdentifier];
    sub_228471F00(v13, v12);

    v9 = v13;
  }
}

uint64_t sub_228472C20()
{
  v1 = *v0;
  v2 = sub_22855C16C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280DEEC90 != -1)
  {
    swift_once();
  }

  v7 = sub_22855CABC();
  __swift_project_value_buffer(v7, qword_280DEEC98);
  v8 = sub_22855CA8C();
  v9 = sub_22855D6AC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20 = v11;
    *v10 = 136446210;
    v12 = sub_22855E34C();
    v14 = sub_2283F8938(v12, v13, &v20);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_2283ED000, v8, v9, "[%{public}s] Setting user defaults flag to indicate all summaries need to be regenerated", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x22AABAD40](v11, -1, -1);
    MEMORY[0x22AABAD40](v10, -1, -1);
  }

  v20 = 0;
  v21 = 0xE000000000000000;
  sub_22855DC6C();

  v20 = 0xD00000000000001DLL;
  v21 = 0x8000000228570020;
  sub_22855C15C();
  sub_2283FA0B8(&qword_280DECD88, MEMORY[0x277CC9578]);
  v15 = sub_22855E11C();
  MEMORY[0x22AAB92A0](v15);

  (*(v3 + 8))(v6, v2);
  v16 = v20;
  v17 = v21;
  swift_beginAccess();
  sub_22846FA5C(v16, v17);
  return swift_endAccess();
}

void sub_228472EF8(void *a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v58 = sub_22855C1DC();
  v9 = *(v58 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v58);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >> 62)
  {
    v13 = sub_22855DB4C();
  }

  else
  {
    v13 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v55 = v8;
  if (v13 > a3)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v14 = a1;
      v15 = MEMORY[0x22AAB9D20](a3, a2);
      goto LABEL_8;
    }

    if (a3 < 0)
    {
      __break(1u);
    }

    else if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) > a3)
    {
      v14 = a1;
      v15 = *(a2 + 8 * a3 + 32);
LABEL_8:
      v16 = v15;
      v17 = a2;
      v18 = [v15 UUID];
      sub_22855C1BC();

      v19 = objc_allocWithZone(MEMORY[0x277CCD948]);
      v20 = sub_22855C19C();
      (*(v9 + 8))(v12, v58);
      v21 = [v19 initWithHealthStore:v14 transactionUUID:v20];

      v22 = swift_allocObject();
      v22[2] = v16;
      v22[3] = v4;
      v22[4] = v14;
      v22[5] = v17;
      v23 = v55;
      v22[6] = a3;
      v22[7] = v23;
      aBlock[4] = sub_228476AC4;
      aBlock[5] = v22;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2284A72DC;
      aBlock[3] = &block_descriptor_53;
      v24 = _Block_copy(aBlock);
      v25 = v16;

      v26 = v14;

      [v21 discardWithCompletion_];
      _Block_release(v24);

      return;
    }

    __break(1u);
    goto LABEL_29;
  }

  v27 = MEMORY[0x277D84F90];
  v54 = v3;
  if (v13)
  {
    aBlock[0] = MEMORY[0x277D84F90];
    sub_2284272C0(0, v13 & ~(v13 >> 63), 0);
    if (v13 < 0)
    {
LABEL_29:
      __break(1u);
      return;
    }

    v53 = a1;
    v28 = 0;
    v27 = aBlock[0];
    v29 = a2;
    v56 = a2 & 0xC000000000000001;
    v57 = v13;
    v30 = (v9 + 8);
    v31 = a2;
    do
    {
      if (v56)
      {
        v32 = MEMORY[0x22AAB9D20](v28, v29);
      }

      else
      {
        v32 = *(v29 + 8 * v28 + 32);
      }

      v33 = v32;
      v34 = [v32 UUID];
      sub_22855C1BC();

      v35 = sub_22855C17C();
      v37 = v36;

      (*v30)(v12, v58);
      aBlock[0] = v27;
      v39 = *(v27 + 16);
      v38 = *(v27 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_2284272C0((v38 > 1), v39 + 1, 1);
        v27 = aBlock[0];
      }

      ++v28;
      *(v27 + 16) = v39 + 1;
      v40 = v27 + 16 * v39;
      *(v40 + 32) = v35;
      *(v40 + 40) = v37;
      v29 = v31;
    }

    while (v57 != v28);
    a1 = v53;
  }

  if (qword_280DEEC90 != -1)
  {
    swift_once();
  }

  v41 = sub_22855CABC();
  __swift_project_value_buffer(v41, qword_280DEEC98);

  v42 = sub_22855CA8C();
  v43 = sub_22855D6AC();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    aBlock[0] = v45;
    *v44 = 136446466;
    v46 = sub_22855E34C();
    v48 = sub_2283F8938(v46, v47, aBlock);

    *(v44 + 4) = v48;
    *(v44 + 12) = 2082;
    v49 = MEMORY[0x22AAB9430](v27, MEMORY[0x277D837D0]);
    v51 = v50;

    v52 = sub_2283F8938(v49, v51, aBlock);

    *(v44 + 14) = v52;
    _os_log_impl(&dword_2283ED000, v42, v43, "[%{public}s] Creating new transaction after successfully discarding all transactions: %{public}s", v44, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AABAD40](v45, -1, -1);
    MEMORY[0x22AABAD40](v44, -1, -1);
  }

  else
  {
  }

  sub_2284728B0(a1);
}

void sub_228473470(char a1, void *a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v54 = a5;
  v13 = sub_22855C1DC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v53 = a4;
    v18 = a2;
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v19 = sub_22855CABC();
    __swift_project_value_buffer(v19, qword_280DEEC98);
    v20 = a2;
    v21 = a3;
    v22 = sub_22855CA8C();
    v23 = sub_22855D68C();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v56 = v52;
      *v24 = 136446722;
      v25 = sub_22855E34C();
      v27 = sub_2283F8938(v25, v26, &v56);

      *(v24 + 4) = v27;
      *(v24 + 12) = 2082;
      v28 = [v21 UUID];
      sub_22855C1BC();

      v29 = sub_22855C17C();
      v31 = v30;
      (*(v14 + 8))(v17, v13);
      v32 = sub_2283F8938(v29, v31, &v56);

      *(v24 + 14) = v32;
      *(v24 + 22) = 2082;
      v55 = a2;
      v33 = a2;
      sub_228418D44();
      v34 = sub_22855D1BC();
      v36 = sub_2283F8938(v34, v35, &v56);

      *(v24 + 24) = v36;
      _os_log_impl(&dword_2283ED000, v22, v23, "[%{public}s] Failed to discard transaction %{public}s: %{public}s", v24, 0x20u);
      v37 = v52;
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v37, -1, -1);
      MEMORY[0x22AABAD40](v24, -1, -1);
    }

    v38 = [v54 profileIdentifier];
    sub_22847224C(v38, a2);
  }

  else
  {
    v53 = a6;
    v39 = [a3 UUID];
    sub_22855C1BC();

    v52 = sub_22855C17C();
    v41 = v40;
    (*(v14 + 8))(v17, v13);
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v42 = sub_22855CABC();
    __swift_project_value_buffer(v42, qword_280DEEC98);

    v43 = sub_22855CA8C();
    v44 = sub_22855D6AC();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v56 = v46;
      *v45 = 136446722;
      v47 = sub_22855E34C();
      v49 = sub_2283F8938(v47, v48, &v56);

      *(v45 + 4) = v49;
      *(v45 + 12) = 2082;
      v50 = sub_2283F8938(v52, v41, &v56);

      *(v45 + 14) = v50;
      *(v45 + 22) = 1024;
      *(v45 + 24) = a1 & 1;
      _os_log_impl(&dword_2283ED000, v43, v44, "[%{public}s] Discard transaction %{public}s %{BOOL}d", v45, 0x1Cu);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v46, -1, -1);
      MEMORY[0x22AABAD40](v45, -1, -1);
    }

    else
    {
    }

    if (__OFADD__(a7, 1))
    {
      __break(1u);
    }

    else
    {
      sub_228472EF8(v54, v53, a7 + 1);
    }
  }
}

void sub_228473978(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v92 = a4;
  v90 = a3;
  v91 = a2;
  v95 = *v4;
  v7 = sub_22855C1DC();
  v93 = *(v7 - 8);
  v94 = v7;
  v8 = v93[8];
  MEMORY[0x28223BE20](v7);
  v10 = &v83[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_280DEEC90 != -1)
  {
    swift_once();
  }

  v11 = sub_22855CABC();
  __swift_project_value_buffer(v11, qword_280DEEC98);
  v12 = a1;
  v13 = sub_22855CA8C();
  v14 = sub_22855D6AC();

  v15 = &unk_2785F7000;
  if (os_log_type_enabled(v13, v14))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v96 = v17;
    *v16 = 136446466;
    v18 = sub_22855E34C();
    v20 = sub_2283F8938(v18, v19, &v96);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2082;
    v21 = [v12 profileIdentifier];
    v22 = [v21 identifier];

    sub_22855C1BC();
    v23 = sub_22855C17C();
    v25 = v24;
    (v93[1])(v10, v94);
    v26 = sub_2283F8938(v23, v25, &v96);

    *(v16 + 14) = v26;
    _os_log_impl(&dword_2283ED000, v13, v14, "[%{public}s] Getting current transaction for committing for %{public}s", v16, 0x16u);
    swift_arrayDestroy();
    v27 = v17;
    v15 = &unk_2785F7000;
    MEMORY[0x22AABAD40](v27, -1, -1);
    MEMORY[0x22AABAD40](v16, -1, -1);
  }

  v28 = [v12 v15[436]];
  v29 = v5[2];
  *&v83[-16] = MEMORY[0x28223BE20](v28);
  os_unfair_lock_lock((v29 + 24));
  sub_228476648((v29 + 16), &v96);
  os_unfair_lock_unlock((v29 + 24));
  v30 = v96;
  if (v96)
  {
    v88 = 0;
    v89 = v28;
    v31 = [v96[2] transactionUUID];
    sub_22855C1BC();

    v86 = sub_22855C17C();
    v33 = v32;
    v34 = v94;
    v87 = v93[1];
    v87(v10, v94);
    v35 = v12;

    v36 = sub_22855CA8C();
    v37 = sub_22855D6AC();
    v93 = v35;

    if (os_log_type_enabled(v36, v37))
    {
      v38 = v15;
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v85 = v5;
      v41 = v40;
      v96 = v40;
      *v39 = 136446722;
      v42 = sub_22855E34C();
      v84 = v37;
      v44 = sub_2283F8938(v42, v43, &v96);

      *(v39 + 4) = v44;
      *(v39 + 12) = 2082;
      v45 = sub_2283F8938(v86, v33, &v96);

      *(v39 + 14) = v45;
      *(v39 + 22) = 2082;
      v34 = v94;
      v46 = [v93 v38[436]];
      v47 = [v46 identifier];

      sub_22855C1BC();
      v48 = sub_22855C17C();
      v50 = v49;
      v51 = v87;
      v87(v10, v34);
      v52 = sub_2283F8938(v48, v50, &v96);

      *(v39 + 24) = v52;
      _os_log_impl(&dword_2283ED000, v36, v84, "[%{public}s] Committing current transaction %{public}s for %{public}s", v39, 0x20u);
      swift_arrayDestroy();
      v53 = v41;
      v5 = v85;
      MEMORY[0x22AABAD40](v53, -1, -1);
      v54 = v39;
      v55 = v95;
      MEMORY[0x22AABAD40](v54, -1, -1);
    }

    else
    {

      v55 = v95;
      v51 = v87;
    }

    sub_2283EF310(0, &qword_280DE9250, 0x277CCD948);
    v65 = sub_2285549F0();
    v66 = [v30[2] transactionUUID];
    sub_22855C1BC();

    v67 = sub_22855C17C();
    v69 = v68;
    v51(v10, v34);
    v70 = swift_allocObject();
    *(v70 + 16) = v67;
    *(v70 + 24) = v69;
    v71 = v30;
    v73 = v92;
    v72 = v93;
    *(v70 + 32) = v5;
    *(v70 + 40) = v72;
    *(v70 + 48) = v90;
    *(v70 + 56) = v73;
    *(v70 + 64) = v65;
    *(v70 + 72) = v71;
    *(v70 + 80) = v91 & 1;
    *(v70 + 88) = v55;
    v74 = swift_allocObject();
    v74[2] = v71;
    v74[3] = v65;
    v74[4] = sub_22847667C;
    v74[5] = v70;
    v75 = swift_allocObject();
    v95 = v83;
    *(v75 + 16) = sub_22847667C;
    *(v75 + 24) = v70;
    v76 = v71[5];
    v77 = MEMORY[0x28223BE20](v75);
    *&v83[-32] = sub_2284766C0;
    *&v83[-24] = v77;
    *&v83[-16] = sub_228434660;
    *&v83[-8] = v74;
    swift_retain_n();
    swift_retain_n();
    v78 = v72;

    os_unfair_lock_lock(v76 + 16);
    sub_228434624(&v76[4], &v96);
    os_unfair_lock_unlock(v76 + 16);
    v79 = v96;
    if (v96)
    {
      (v96)();
      sub_228416CF8(v79);
    }
  }

  else
  {
    v56 = sub_22855CA8C();
    v57 = sub_22855D6AC();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v96 = v59;
      *v58 = 136446210;
      v60 = v95;
      v61 = sub_22855E34C();
      v63 = v28;
      v64 = sub_2283F8938(v61, v62, &v96);

      *(v58 + 4) = v64;
      v28 = v63;
      _os_log_impl(&dword_2283ED000, v56, v57, "[%{public}s] No transaction found, fetching or creating a new one for committing", v58, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v59);
      MEMORY[0x22AABAD40](v59, -1, -1);
      MEMORY[0x22AABAD40](v58, -1, -1);
    }

    else
    {

      v60 = v95;
    }

    v80 = swift_allocObject();
    *(v80 + 16) = v5;
    *(v80 + 24) = v12;
    *(v80 + 32) = v91 & 1;
    v81 = v92;
    *(v80 + 40) = v90;
    *(v80 + 48) = v81;
    *(v80 + 56) = v60;
    v82 = v12;

    sub_22847065C(v82, sub_228476664, v80);
  }
}

void sub_228474258(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  if (*(*a1 + 16))
  {
    v7 = sub_2283FB154(a2);
    if ((v8 & 1) != 0 && (v9 = *(v4 + 56) + 16 * v7, *(v9 + 8) == 1))
    {
      v10 = *v9;
      sub_22844B978(*v9, 1);
      v11 = a2;
      v12 = *a1;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v14 = *a1;
      sub_22845B074(MEMORY[0x277D84F90], 0, v11, isUniquelyReferenced_nonNull_native);

      *a1 = v14;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  *a3 = v10;
}

uint64_t sub_228474330(void *a1, char a2, uint64_t a3, void *a4, char a5, uint64_t (*a6)(void *), uint64_t a7, uint64_t a8)
{
  v42 = a8;
  v14 = sub_22855C1DC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 1) == 0)
  {
    return sub_228473978(a4, a5 & 1, a6, a7);
  }

  v41 = a6;
  if (qword_280DEEC90 != -1)
  {
    swift_once();
  }

  v19 = sub_22855CABC();
  __swift_project_value_buffer(v19, qword_280DEEC98);
  v20 = a4;
  sub_228476E50(a1, 1);
  v21 = sub_22855CA8C();
  v22 = sub_22855D6AC();

  sub_228476E5C(a1, 1, MEMORY[0x277D85008], MEMORY[0x277D84FF0]);
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v40[1] = a7;
    v24 = v23;
    v40[0] = swift_slowAlloc();
    v44 = v40[0];
    *v24 = 136446722;
    v25 = sub_22855E34C();
    v27 = sub_2283F8938(v25, v26, &v44);

    *(v24 + 4) = v27;
    *(v24 + 12) = 2082;
    v28 = [v20 profileIdentifier];
    v29 = [v28 identifier];

    sub_22855C1BC();
    v30 = sub_22855C17C();
    v32 = v31;
    (*(v15 + 8))(v18, v14);
    v33 = sub_2283F8938(v30, v32, &v44);

    *(v24 + 14) = v33;
    *(v24 + 22) = 2082;
    v43 = a1;
    v34 = a1;
    sub_228418D44();
    v35 = sub_22855D1BC();
    v37 = sub_2283F8938(v35, v36, &v44);

    *(v24 + 24) = v37;
    _os_log_impl(&dword_2283ED000, v21, v22, "[%{public}s] Failed to get current transaction for %{public}s: %{public}s", v24, 0x20u);
    v38 = v40[0];
    swift_arrayDestroy();
    MEMORY[0x22AABAD40](v38, -1, -1);
    MEMORY[0x22AABAD40](v24, -1, -1);
  }

  return v41(a1);
}

void sub_228474690(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t *a5, void (*a6)(void *), uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t a11)
{
  v58 = a4;
  v59 = a7;
  if (a1)
  {
    v16 = a1;
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v17 = sub_22855CABC();
    __swift_project_value_buffer(v17, qword_280DEEC98);
    v18 = a1;

    v19 = sub_22855CA8C();
    v20 = sub_22855D68C();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v57 = a5;
      v22 = swift_slowAlloc();
      v61 = v22;
      *v21 = 136446722;
      v23 = sub_22855E34C();
      v25 = sub_2283F8938(v23, v24, &v61);

      *(v21 + 4) = v25;
      *(v21 + 12) = 2082;
      *(v21 + 14) = sub_2283F8938(a2, a3, &v61);
      *(v21 + 22) = 2082;
      v60 = a1;
      v26 = a1;
      sub_228418D44();
      v27 = sub_22855D1BC();
      v29 = sub_2283F8938(v27, v28, &v61);

      *(v21 + 24) = v29;
      _os_log_impl(&dword_2283ED000, v19, v20, "[%{public}s] Failed to add metadata %{public}s: %{public}s", v21, 0x20u);
      swift_arrayDestroy();
      v30 = v22;
      a5 = v57;
      MEMORY[0x22AABAD40](v30, -1, -1);
      MEMORY[0x22AABAD40](v21, -1, -1);
    }

    v31 = [a5 profileIdentifier];
    sub_22847224C(v31, a1);

    v32 = a1;
    a6(a1);
  }

  else
  {
    v56 = a9;
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v33 = a10;
    v34 = sub_22855CABC();
    __swift_project_value_buffer(v34, qword_280DEEC98);

    v35 = sub_22855CA8C();
    v36 = sub_22855D6AC();

    if (os_log_type_enabled(v35, v36))
    {
      v57 = a5;
      v37 = swift_slowAlloc();
      v55 = a6;
      v38 = swift_slowAlloc();
      v61 = v38;
      *v37 = 136446722;
      v39 = sub_22855E34C();
      HIDWORD(v54) = a10;
      v41 = sub_2283F8938(v39, v40, &v61);

      *(v37 + 4) = v41;
      *(v37 + 12) = 2082;
      *(v37 + 14) = sub_2283F8938(a2, a3, &v61);
      *(v37 + 22) = 2082;
      v42 = sub_22855D0FC();
      v44 = sub_2283F8938(v42, v43, &v61);
      v33 = BYTE4(v54);

      *(v37 + 24) = v44;
      _os_log_impl(&dword_2283ED000, v35, v36, "[%{public}s] Committing transaction %{public}s after adding metadata: %{public}s", v37, 0x20u);
      swift_arrayDestroy();
      v45 = v38;
      a6 = v55;
      MEMORY[0x22AABAD40](v45, -1, -1);
      v46 = v37;
      a5 = v57;
      MEMORY[0x22AABAD40](v46, -1, -1);
    }

    v47 = swift_allocObject();
    v47[2] = a2;
    v47[3] = a3;
    v47[4] = v58;
    v47[5] = a5;
    v47[6] = a6;
    v48 = v56;
    v47[7] = v59;
    v47[8] = v48;
    v47[9] = a11;
    v49 = swift_allocObject();
    *(v49 + 16) = v48;
    *(v49 + 24) = v33 & 1;
    *(v49 + 32) = sub_228476DF8;
    *(v49 + 40) = v47;
    v50 = swift_allocObject();
    v57 = &v54;
    *(v50 + 16) = sub_228476DF8;
    *(v50 + 24) = v47;
    v51 = *(v48 + 40);
    MEMORY[0x28223BE20](v50);
    swift_retain_n();
    swift_retain_n();

    v52 = a5;

    os_unfair_lock_lock(v51 + 16);
    sub_228435484(&v51[4], &v61);
    os_unfair_lock_unlock(v51 + 16);
    v53 = v61;
    if (v61)
    {
      v61();
      sub_228416CF8(v53);
    }
  }
}

uint64_t sub_228474C4C(void *a1, char a2, uint64_t a3, unint64_t a4, uint64_t a5, void *a6, uint64_t (*a7)(void *), uint64_t a8, uint64_t a9)
{
  if (a2)
  {
    v13 = a9;
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v14 = sub_22855CABC();
    __swift_project_value_buffer(v14, qword_280DEEC98);

    sub_228476E38(a1);
    v15 = sub_22855CA8C();
    v16 = sub_22855D68C();

    sub_228476E44(a1);
    if (os_log_type_enabled(v15, v16))
    {
      v41 = a6;
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v44 = v18;
      *v17 = 136446722;
      v19 = sub_22855E34C();
      v21 = sub_2283F8938(v19, v20, &v44);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2082;
      *(v17 + 14) = sub_2283F8938(a3, a4, &v44);
      *(v17 + 22) = 2082;
      v22 = a1;
      sub_228418D44();
      v23 = sub_22855D1BC();
      v25 = sub_2283F8938(v23, v24, &v44);

      *(v17 + 24) = v25;
      _os_log_impl(&dword_2283ED000, v15, v16, "[%{public}s] Using old transaction %{public}s as commit failed: %{public}s", v17, 0x20u);
      swift_arrayDestroy();
      v26 = v18;
      v13 = a9;
      MEMORY[0x22AABAD40](v26, -1, -1);
      v27 = v17;
      a6 = v41;
      MEMORY[0x22AABAD40](v27, -1, -1);
    }

    v28 = [a6 profileIdentifier];
    sub_228471F00(v28, v13);

    v29 = a1;
  }

  else
  {
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v30 = sub_22855CABC();
    __swift_project_value_buffer(v30, qword_280DEEC98);

    v31 = sub_22855CA8C();
    v32 = sub_22855D6AC();

    if (os_log_type_enabled(v31, v32))
    {
      v42 = a6;
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v44 = v34;
      *v33 = 136446466;
      v35 = sub_22855E34C();
      v37 = sub_2283F8938(v35, v36, &v44);

      *(v33 + 4) = v37;
      *(v33 + 12) = 2082;
      *(v33 + 14) = sub_2283F8938(a3, a4, &v44);
      _os_log_impl(&dword_2283ED000, v31, v32, "[%{public}s] Successfully committed transaction %{public}s", v33, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v34, -1, -1);
      v38 = v33;
      a6 = v42;
      MEMORY[0x22AABAD40](v38, -1, -1);
    }

    sub_228475020(a6);
    v29 = 0;
  }

  return a7(v29);
}

void sub_228475020(void *a1)
{
  v3 = *v1;
  v4 = [objc_allocWithZone(MEMORY[0x277CCD948]) initWithHealthStore_];
  sub_2283FA3A0(0, &qword_280DED018, sub_22842D160, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_228560580;
  *(inited + 32) = 0xD000000000000048;
  *(inited + 40) = 0x800000022856FA50;
  if (qword_280DE9298 != -1)
  {
    swift_once();
  }

  v6 = xmmword_280DE92A0;
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v6;

  sub_22847C614(inited);
  swift_setDeallocating();
  sub_228476A44(inited + 32);
  v7 = sub_22855D0DC();

  v8 = swift_allocObject();
  v8[2] = v1;
  v8[3] = a1;
  v8[4] = v4;
  v8[5] = v3;
  v12[4] = sub_228476AA0;
  v12[5] = v8;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_2284A72DC;
  v12[3] = &block_descriptor_41;
  v9 = _Block_copy(v12);

  v10 = a1;
  v11 = v4;

  [v11 addMetadata:v7 completion:v9];
  _Block_release(v9);
}

void sub_228475280(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  v11 = sub_22855C1DC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = aBlock - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v16 = a2;
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v17 = sub_22855CABC();
    __swift_project_value_buffer(v17, qword_280DEEC98);
    v18 = sub_22855CA8C();
    v19 = sub_22855D68C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      aBlock[0] = v21;
      *v20 = 136446210;
      v22 = sub_22855E34C();
      v24 = sub_2283F8938(v22, v23, aBlock);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_2283ED000, v18, v19, "[%{public}s] Failed to set healthappd managed transaction metadata to new transaction", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x22AABAD40](v21, -1, -1);
      MEMORY[0x22AABAD40](v20, -1, -1);
    }

    sub_228472C20();
    v25 = [a4 profileIdentifier];
    sub_22847224C(v25, a2);
  }

  else
  {
    v26 = [a5 transactionUUID];
    sub_22855C1BC();

    v27 = sub_22855C17C();
    v29 = v28;
    (*(v12 + 8))(v15, v11);
    v30 = swift_allocObject();
    v30[2] = v27;
    v30[3] = v29;
    v30[4] = a3;
    v30[5] = a5;
    v30[6] = a4;
    v30[7] = a6;
    aBlock[4] = sub_228476AAC;
    aBlock[5] = v30;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2284A72DC;
    aBlock[3] = &block_descriptor_47;
    v31 = _Block_copy(aBlock);

    v32 = a5;
    v33 = a4;

    [v32 reuseAllSummariesWithPackage:0 completion:v31];
    _Block_release(v31);
  }
}

void sub_2284755E0(char a1, id a2, uint64_t a3, unint64_t a4, uint64_t a5, void *a6, void *a7)
{
  v7 = a7;
  v8 = a6;
  if (a2)
  {
    v11 = a2;
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v12 = sub_22855CABC();
    __swift_project_value_buffer(v12, qword_280DEEC98);
    v13 = a2;

    v14 = sub_22855CA8C();
    v15 = sub_22855D68C();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v40 = v17;
      *v16 = 136446722;
      v18 = sub_22855E34C();
      v20 = sub_2283F8938(v18, v19, &v40);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2082;
      *(v16 + 14) = sub_2283F8938(a3, a4, &v40);
      *(v16 + 22) = 2082;
      v21 = a2;
      sub_228418D44();
      v22 = sub_22855D1BC();
      v24 = sub_2283F8938(v22, v23, &v40);

      *(v16 + 24) = v24;
      _os_log_impl(&dword_2283ED000, v14, v15, "[%{public}s] Setting flag to regenerate all summaries since unable to reuse all transactions for %{public}s: %{public}s", v16, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v17, -1, -1);
      MEMORY[0x22AABAD40](v16, -1, -1);
    }

    v7 = a7;
    sub_228472C20();

    v8 = a6;
  }

  if (qword_280DEEC90 != -1)
  {
    swift_once();
  }

  v25 = sub_22855CABC();
  __swift_project_value_buffer(v25, qword_280DEEC98);

  v26 = sub_22855CA8C();
  v27 = sub_22855D6AC();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v40 = v29;
    *v28 = 136446722;
    v30 = sub_22855E34C();
    v32 = sub_2283F8938(v30, v31, &v40);

    *(v28 + 4) = v32;
    *(v28 + 12) = 1024;
    *(v28 + 14) = a1 & 1;
    *(v28 + 18) = 2082;
    *(v28 + 20) = sub_2283F8938(a3, a4, &v40);
    _os_log_impl(&dword_2283ED000, v26, v27, "[%{public}s] Reuse all summaries success %{BOOL}d for new transaction %{public}s", v28, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x22AABAD40](v29, -1, -1);
    MEMORY[0x22AABAD40](v28, -1, -1);
  }

  type metadata accessor for CachingSharedSummaryTransactionBuilder();
  swift_allocObject();
  v33 = v8;
  v34 = sub_228434304(v33, sub_228471EF8, 0);

  v35 = [v7 profileIdentifier];
  sub_228471F00(v35, v34);
}

void sub_2284759E8()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  sub_2284766C8((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
}

void sub_228475A3C(uint64_t *a1, void *a2)
{
  v2 = *a1;
  if (*(*a1 + 16))
  {
    v4 = sub_2283FB154(a2);
    if ((v5 & 1) != 0 && *(*(v2 + 56) + 16 * v4 + 8) == 1)
    {
      sub_2284D1F1C(0, 255, a2);
    }
  }
}

void sub_228475AB4()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  sub_228475B0C((v1 + 16));

  os_unfair_lock_unlock((v1 + 24));
}

void sub_228475B0C(uint64_t *a1)
{
  v2 = *a1;
  v3 = *a1 + 64;
  v4 = 1 << *(*a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(*a1 + 64);
  v7 = (v4 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v8 = 0;
  v9 = v2;
  while (v6)
  {
    v10 = v6;
LABEL_11:
    v6 = (v10 - 1) & v10;
    if (v9[2])
    {
      v12 = *(v2[6] + ((v8 << 9) | (8 * __clz(__rbit64(v10)))));
      v13 = sub_2283FB154(v12);
      if (v14 & 1) != 0 && (*(v9[7] + 16 * v13 + 8) & 1) != 0 && (v15 = sub_2283FB154(v12), (v16))
      {
        v19 = v15;
        v17 = *a1;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v9 = *a1;
        v20 = *a1;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_228448780();
          v9 = v20;
        }

        sub_228476E5C(*(v9[7] + 16 * v19), *(v9[7] + 16 * v19 + 8), MEMORY[0x277D84FB8], MEMORY[0x277D85008]);
        sub_2284D2A38(v19, v9);

        *a1 = v9;
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return;
    }

    v10 = *(v3 + 8 * v11);
    ++v8;
    if (v10)
    {
      v8 = v11;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t OpenTransactionBuilderManager.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 64);

  return v0;
}

uint64_t OpenTransactionBuilderManager.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 64);

  return swift_deallocClassInstance();
}

uint64_t OpenTransactionBuilderManager.makeTransactionBuilderPublisher(for:)(void *a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = a1;
  sub_228477124(0, &qword_280DE97C8, MEMORY[0x277CBCEA8]);
  sub_2284766EC();

  v4 = a1;

  return sub_22855CE2C();
}

uint64_t sub_228475E48@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  sub_228477124(0, &qword_280DE97C8, MEMORY[0x277CBCEA8]);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();

  v10 = a2;
  result = sub_22855CE0C();
  *a3 = result;
  return result;
}

uint64_t sub_228475F00(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_228476DC0;
  *(v8 + 24) = v7;

  sub_22847065C(a4, sub_228476DCC, v8);
}

uint64_t OpenTransactionBuilderManager.commitTransactionPublisher(healthStore:asUrgent:)(void *a1, char a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = a1;
  *(v5 + 32) = a2;
  sub_22847676C();
  sub_2283FA0B8(&qword_280DE9788, sub_22847676C);

  v6 = a1;

  return sub_22855CE2C();
}

uint64_t sub_22847609C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  sub_22847676C();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();

  v12 = a2;
  result = sub_22855CE0C();
  *a4 = result;
  return result;
}

uint64_t sub_228476140(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, int a5)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_228476D24;
  *(v10 + 24) = v9;

  sub_228473978(a4, a5, sub_228476D64, v10);
}

void sub_22847620C(void *a1, void (*a2)(void *, uint64_t))
{
  if (a1)
  {
    v4 = a1;
    a2(a1, 1);
  }

  else
  {
    a2(0, 0);
  }
}

unint64_t sub_228476284()
{
  result = qword_27D83F890;
  if (!qword_27D83F890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83F890);
  }

  return result;
}

uint64_t sub_2284762F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_228468A14;

  return sub_228471344(a1, v4, v5, v7, v6);
}

uint64_t sub_2284763B8(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2284764B0;

  return v7(a1);
}

uint64_t sub_2284764B0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2284765A8(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return sub_228476E5C(result, a2 & 1, MEMORY[0x277D84FB8], MEMORY[0x277D85008]);
  }

  return result;
}

uint64_t sub_228476630(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return sub_22844B978(result, a2 & 1);
  }

  return result;
}

unint64_t sub_2284766EC()
{
  result = qword_280DE97D0;
  if (!qword_280DE97D0)
  {
    sub_228477124(255, &qword_280DE97C8, MEMORY[0x277CBCEA8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE97D0);
  }

  return result;
}

void sub_22847676C()
{
  if (!qword_280DE9780)
  {
    sub_228418D44();
    v0 = sub_22855CDFC();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE9780);
    }
  }
}

unint64_t sub_2284767DC()
{
  result = qword_27D83F898;
  if (!qword_27D83F898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83F898);
  }

  return result;
}

void sub_228476920()
{
  if (!qword_280DE9720)
  {
    sub_228477124(255, &qword_280DE97C8, MEMORY[0x277CBCEA8]);
    sub_2284766EC();
    v0 = sub_22855CE3C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE9720);
    }
  }
}

void sub_2284769A0()
{
  if (!qword_280DE9700)
  {
    sub_22847676C();
    sub_2283FA0B8(&qword_280DE9788, sub_22847676C);
    v0 = sub_22855CE3C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE9700);
    }
  }
}

uint64_t sub_228476A44(uint64_t a1)
{
  sub_22842D160();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_37Tm(uint64_t a1)
{
  v3 = *(v1 + 16);

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

void sub_228476B98(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_22855DA2C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t objectdestroy_61Tm(void (*a1)(void))
{
  v3 = *(v1 + 16);

  a1(*(v1 + 24));

  return MEMORY[0x2821FE8E8](v1, 32, 7);
}

void sub_228476CA8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_22855DA2C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_228476D04(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_228476D24(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = a1;
  v7 = a2 & 1;
  return v3(&v6);
}

uint64_t objectdestroy_18Tm(uint64_t a1)
{
  v3 = *(v1 + 16);

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_228476DCC(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(a1, a2 & 1);
}

id sub_228476E50(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

uint64_t sub_228476E5C(uint64_t a1, char a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  if (a2)
  {
    return a4();
  }

  else
  {
    return a3();
  }
}

uint64_t sub_228476E70(uint64_t a1, uint64_t a2)
{
  sub_2283FA3A0(0, &qword_280DE9558, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_228476F04(uint64_t a1)
{
  sub_2283FA3A0(0, &qword_280DE9558, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_228476F90(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22846BCA0;

  return sub_2284763B8(a1, v5);
}

uint64_t sub_228477048(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_228468A14;

  return sub_2284763B8(a1, v5);
}

uint64_t sub_228477100(void *a1, char a2)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  return sub_2284710F4(a1, a2 & 1, *(v2 + 16));
}

void sub_228477124(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    v6 = type metadata accessor for CachingSharedSummaryTransactionBuilder();
    v7 = sub_228418D44();
    v8 = a3(a1, v6, v7, MEMORY[0x277D84950]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_2284771A8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2284771F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t GeneratorDomain.init(sourceProfile:contentKinds:hkTypes:complexity:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a4;
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = v5;
  return result;
}

uint64_t GeneratorContext.environment.getter()
{
  v1 = (v0 + *(type metadata accessor for GeneratorContext() + 28));
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 16))(v2, v3) & 1;
}

uint64_t type metadata accessor for GeneratorContext()
{
  result = qword_280DEBE80;
  if (!qword_280DEBE80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static AnyPublisher<>.empty.getter()
{
  sub_2284773B4();

  return sub_22855CDDC();
}

{
  sub_2284C0BE0();

  return sub_22855CDDC();
}

void sub_2284773B4()
{
  if (!qword_280DEE3D8)
  {
    v0 = sub_22855D47C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DEE3D8);
    }
  }
}

id GeneratorContext.sourceProfile.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t GeneratorContext.country.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for GeneratorContext() + 20);

  return sub_2284774BC(v3, a1);
}

uint64_t sub_2284774BC(uint64_t a1, uint64_t a2)
{
  sub_228450F00();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t GeneratorContext.country.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for GeneratorContext() + 20);

  return sub_228477564(a1, v3);
}

uint64_t sub_228477564(uint64_t a1, uint64_t a2)
{
  sub_228450F00();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t GeneratorContext.isLaunchGeneration.setter(char a1)
{
  result = type metadata accessor for GeneratorContext();
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t GeneratorContext.healthStore.getter()
{
  v1 = (v0 + *(type metadata accessor for GeneratorContext() + 28));
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 8))(v2, v3);
}

uint64_t GeneratorContext.queue(for:)(uint64_t *a1)
{
  v3 = *a1;
  v4 = *(a1 + 24);
  v5 = (v1 + *(type metadata accessor for GeneratorContext() + 28));
  v6 = v5[3];
  v7 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v9 = v3;
  v10 = *(a1 + 1);
  v11 = v4;
  return (*(v7 + 64))(&v9, v6, v7);
}

uint64_t GeneratorContext.scheduler.getter()
{
  v1 = (v0 + *(type metadata accessor for GeneratorContext() + 28));
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 72))(v2, v3);
}

uint64_t GeneratorContext.feedItemContext.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for GeneratorContext() + 28);
  __swift_destroy_boxed_opaque_existential_0((v1 + v3));

  return sub_2283FAB3C(a1, v1 + v3);
}

uint64_t GeneratorContext.sharableModelContext.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for GeneratorContext() + 32);
  __swift_destroy_boxed_opaque_existential_0((v1 + v3));

  return sub_2283FAB3C(a1, v1 + v3);
}

uint64_t GeneratorContext.init(sourceProfile:country:feedItemContext:sharableModelContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, void *a5@<X8>)
{
  v10 = type metadata accessor for GeneratorContext();
  *(a5 + v10[6]) = 0;
  *a5 = a1;
  sub_228477A40(a2, a5 + v10[5]);
  sub_2283FAB3C(a3, a5 + v10[7]);
  v11 = a5 + v10[8];

  return sub_2283FAB3C(a4, v11);
}

uint64_t sub_228477A40(uint64_t a1, uint64_t a2)
{
  sub_228450F00();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id GeneratorDomain.sourceProfile.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t GeneratorDomain.contentKinds.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t GeneratorDomain.hkTypes.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t GeneratorDomain.init(sourceProfile:contentKinds:hkTypes:complexity:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a4;
  v9 = sub_228429B98(a2);

  v10 = sub_228428BF8(a3);

  *a5 = a1;
  *(a5 + 8) = v9;
  *(a5 + 16) = v10;
  *(a5 + 24) = v8;
  return result;
}

unint64_t GeneratorDomain.debugDescription.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  if ((v3 & 0xC000000000000001) == 0)
  {
    if (*(v3 + 16) > 1uLL)
    {
      goto LABEL_7;
    }

LABEL_8:
    sub_2283EF310(0, &qword_280DEE7B8, 0x277CCD720);
    sub_22845D238();
    v8 = sub_22855D52C();
    v7 = v9;
    goto LABEL_9;
  }

  if (v3 < 0)
  {
    v5 = *(v0 + 16);
  }

  if (sub_22855DB4C() <= 1)
  {
    goto LABEL_8;
  }

  sub_22855DB4C();
LABEL_7:
  v6 = sub_22855E11C();
  MEMORY[0x22AAB92A0](v6);

  MEMORY[0x22AAB92A0](0x29736570797420, 0xE700000000000000);
  v8 = 40;
  v7 = 0xE100000000000000;
LABEL_9:
  v10 = v2;
  v11 = sub_22845E064(v2);
  MEMORY[0x22AAB92A0](v11);

  MEMORY[0x22AAB92A0](95, 0xE100000000000000);
  sub_22842BA18();
  v12 = sub_22855D52C();
  MEMORY[0x22AAB92A0](v12);

  MEMORY[0x22AAB92A0](95, 0xE100000000000000);
  MEMORY[0x22AAB92A0](v8, v7);

  MEMORY[0x22AAB92A0](95, 0xE100000000000000);
  v13 = sub_22855D1BC();
  MEMORY[0x22AAB92A0](v13);

  return 0xD000000000000010;
}

uint64_t GeneratorDomain.hash(into:)(__int128 *a1)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  if (*v1)
  {
    MEMORY[0x22AABA2B0](1);
    sub_22855D9BC();
  }

  else
  {
    MEMORY[0x22AABA2B0](0);
  }

  sub_22844A2BC(a1, v3);
  sub_22844A080(a1, v4);
  return MEMORY[0x22AABA2B0](v5);
}

uint64_t GeneratorDomain.hashValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  sub_22855E22C();
  if (v2)
  {
    MEMORY[0x22AABA2B0](1);
    sub_22855D9BC();
  }

  else
  {
    MEMORY[0x22AABA2B0](0);
  }

  sub_22844A2BC(v6, v1);
  sub_22844A080(v6, v3);
  MEMORY[0x22AABA2B0](v4);
  return sub_22855E27C();
}

uint64_t sub_228477FB4(__int128 *a1)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  if (*v1)
  {
    MEMORY[0x22AABA2B0](1);
    sub_22855D9BC();
  }

  else
  {
    MEMORY[0x22AABA2B0](0);
  }

  sub_22844A2BC(a1, v3);
  sub_22844A080(a1, v4);
  return MEMORY[0x22AABA2B0](v5);
}

uint64_t sub_228478040()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  sub_22855E22C();
  if (v2)
  {
    MEMORY[0x22AABA2B0](1);
    sub_22855D9BC();
  }

  else
  {
    MEMORY[0x22AABA2B0](0);
  }

  sub_22844A2BC(v6, v1);
  sub_22844A080(v6, v3);
  MEMORY[0x22AABA2B0](v4);
  return sub_22855E27C();
}

uint64_t GeneratorDomain.Complexity.hashValue.getter()
{
  v1 = *v0;
  sub_22855E22C();
  MEMORY[0x22AABA2B0](v1);
  return sub_22855E27C();
}

uint64_t _s14HealthPlatform15GeneratorDomainV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *a2;
  v5 = a2[1];
  v7 = a2[2];
  v8 = *(a2 + 24);
  if (*a1)
  {
    if (!v6)
    {
      return 0;
    }

    sub_2283EF310(0, &qword_280DEEB30, 0x277D82BB8);
    if ((sub_22855D9AC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (sub_228441950(v2, v5))
  {
    return sub_2284424C4(v3, v7) & (v4 == v8);
  }

  return 0;
}

unint64_t sub_228478218()
{
  result = qword_27D83F8B0;
  if (!qword_27D83F8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83F8B0);
  }

  return result;
}

unint64_t sub_228478270()
{
  result = qword_27D83F8B8;
  if (!qword_27D83F8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83F8B8);
  }

  return result;
}

void sub_22847833C()
{
  sub_228450F00();
  if (v0 <= 0x3F)
  {
    sub_2283F9B94(319, qword_280DEE698);
    if (v1 <= 0x3F)
    {
      sub_2283F9B94(319, &qword_280DEE538);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_228478424(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_22847846C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

HealthPlatform::DataVisualizationKind_optional __swiftcall DataVisualizationKind.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22855DFBC();

  v5 = 14;
  if (v3 < 0xE)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t DataVisualizationKind.rawValue.getter()
{
  result = 0x5265676172657661;
  switch(*v0)
  {
    case 1:
      result = 0x7274736944726162;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0x7562697274736964;
      break;
    case 5:
      result = 0x746F6C50746F64;
      break;
    case 6:
      result = 0x65764F746E657665;
      break;
    case 7:
      result = 0x437473656772616CLL;
      break;
    case 8:
      result = 0x72616843656E696CLL;
      break;
    case 9:
      result = 0x7472616843656970;
      break;
    case 0xA:
      result = 0x6574756F72;
      break;
    case 0xB:
      result = 0x6172676F6E6D6F73;
      break;
    case 0xC:
      result = 0xD000000000000010;
      break;
    case 0xD:
      result = 0x6C654465756C6176;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2284786F0()
{
  v1 = *v0;
  sub_22855E22C();
  DataVisualizationKind.rawValue.getter();
  sub_22855D20C();

  return sub_22855E27C();
}

uint64_t sub_228478758()
{
  v2 = *v0;
  DataVisualizationKind.rawValue.getter();
  sub_22855D20C();
}

uint64_t sub_2284787BC()
{
  v1 = *v0;
  sub_22855E22C();
  DataVisualizationKind.rawValue.getter();
  sub_22855D20C();

  return sub_22855E27C();
}

unint64_t sub_22847882C@<X0>(unint64_t *a1@<X8>)
{
  result = DataVisualizationKind.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_228478904(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = DataVisualizationKind.rawValue.getter();
  v4 = v3;
  if (v2 == DataVisualizationKind.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_22855E15C();
  }

  return v7 & 1;
}

unint64_t sub_2284789CC()
{
  result = qword_27D83F8C0;
  if (!qword_27D83F8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83F8C0);
  }

  return result;
}

unint64_t sub_228478A24()
{
  result = qword_27D83F8C8;
  if (!qword_27D83F8C8)
  {
    sub_228478A7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83F8C8);
  }

  return result;
}

void sub_228478A7C()
{
  if (!qword_27D83F8D0)
  {
    v0 = sub_22855D47C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D83F8D0);
    }
  }
}

uint64_t sub_228478ADC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_228478B6C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_228478C2C()
{
  result = qword_280DEE528;
  if (!qword_280DEE528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEE528);
  }

  return result;
}

Swift::Void __swiftcall PendingValuesInner.lock_sendPendingValuesIfNeeded()()
{
  v3 = v1;
  v4 = v0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v82 = v7;
  v81 = sub_22855CC8C();
  v80 = *(v81 - 8);
  v8 = *(v80 + 64);
  MEMORY[0x28223BE20](v81);
  v79 = &v78 - v9;
  v10 = sub_22855DA2C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v84 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v83 = &v78 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v85 = &v78 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v98 = &v78 - v20;
  MEMORY[0x28223BE20](v19);
  v106 = &v78 - v21;
  v87 = AssociatedConformanceWitness;
  v99 = AssociatedTypeWitness;
  v22 = swift_getAssociatedTypeWitness();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v78 - v25;
  v107 = *(v3 + 24);
  v108 = v3 + 24;
  v27 = v107(v4, v3);
  os_unfair_lock_assert_owner(*(v27 + 16));

  if ((*(v3 + 136))(v4, v3))
  {
    return;
  }

  v86 = v11;
  v96 = *(v3 + 64);
  v97 = v3 + 64;
  v96(v4, v3);
  v28 = sub_22855D44C();

  v102 = v2;
  if (v28 < 1)
  {
LABEL_30:
    v63 = (*(v3 + 112))(v4, v3);
    v64 = v86;
    if (v63)
    {
      v96(v4, v3);
      v65 = sub_22855D44C();

      if (!v65)
      {
        v66 = v85;
        (*(v3 + 32))(v4, v3);
        v67 = v10;
        v68 = v99;
        v69 = *(v99 - 8);
        v70 = v83;
        (*(v69 + 56))(v83, 1, 1, v99);
        (*(v3 + 40))(v70, v4, v3);
        v71 = v107(v4, v3);
        os_unfair_lock_unlock(*(v71 + 16));

        v72 = *(v3 + 56);
        v73 = *(v72(v4, v3) + 16);
        os_unfair_recursive_lock_lock_with_options();

        v74 = v84;
        (*(v64 + 16))(v84, v66, v67);
        if ((*(v69 + 48))(v74, 1, v68) == 1)
        {
          (*(v64 + 8))(v74, v67);
        }

        else
        {
          v75 = v79;
          (*(*(v82 - 8) + 56))(v79, 1, 1);
          sub_22855CC4C();
          (*(v80 + 8))(v75, v81);
          (*(v69 + 8))(v74, v68);
        }

        v76 = *(v72(v4, v3) + 16);
        os_unfair_recursive_lock_unlock();

        v77 = v107(v4, v3);
        os_unfair_lock_lock(*(v77 + 16));

        (*(v64 + 8))(v85, v67);
      }
    }

    return;
  }

  v29 = *(v3 + 88);
  v93 = v3 + 80;
  v94 = v29;
  v92 = v3 + 32;
  v95 = v3 + 88;
  v104 = v3 + 56;
  v105 = v3 + 104;
  v91 = (v86 + 16);
  v90 = v99 - 8;
  v100 = (v86 + 8);
  v88 = (v23 + 8);
  v89 = v26;
  v101 = v22;
  for (i = v29(v4, v3); ; i = v94(v4, v3))
  {
    v33 = i;
    sub_22855CCBC();
    if (sub_22855CC9C())
    {
      goto LABEL_11;
    }

    if (v33 < 0)
    {
      break;
    }

    if (!v33)
    {
      goto LABEL_30;
    }

LABEL_11:
    v34 = *(v3 + 104);
    v35 = v34(v109, v4, v3);
    v37 = v36;
    v38 = *v36;
    sub_22855CCBC();
    if ((sub_22855CC9C() & 1) == 0)
    {
      sub_22855CCBC();
      if (sub_22855CC9C())
      {
        v39 = sub_22855CCBC();
      }

      else
      {
        if (v38 < 0)
        {
          goto LABEL_38;
        }

        if (!v38)
        {
          goto LABEL_39;
        }

        v39 = v38 - 1;
      }

      *v37 = v39;
    }

    v103 = v34;
    v35(v109, 0);
    v40 = (*(v3 + 80))(v109, v4, v3);
    sub_22855D47C();
    swift_getWitnessTable();
    sub_22855D5EC();
    v40(v109, 0);
    v41 = v106;
    (*(v3 + 32))(v4, v3);
    v42 = v107(v4, v3);
    os_unfair_lock_unlock(*(v42 + 16));

    v43 = *(v3 + 56);
    v44 = *(v43(v4, v3) + 16);
    os_unfair_recursive_lock_lock_with_options();

    v45 = v98;
    (*v91)(v98, v41, v10);
    v46 = v99;
    v47 = v10;
    v48 = *(v99 - 8);
    if ((*(v48 + 48))(v45, 1, v99) == 1)
    {
      (*v100)(v45, v47);
      v49 = sub_22855CCAC();
    }

    else
    {
      v50 = sub_22855CC6C();
      v51 = v46;
      v49 = v50;
      (*(v48 + 8))(v45, v51);
    }

    v10 = v47;
    v52 = v103;
    v53 = *(v43(v4, v3) + 16);
    os_unfair_recursive_lock_unlock();

    v54 = v107(v4, v3);
    os_unfair_lock_lock(*(v54 + 16));

    v55 = v52(v109, v4, v3);
    v57 = v56;
    v58 = *v56;
    sub_22855CCBC();
    v59 = sub_22855CC9C();
    v31 = v101;
    if ((v59 & 1) == 0)
    {
      sub_22855CCBC();
      v60 = sub_22855CC9C();
      v61 = sub_22855CCBC();
      if (v60)
      {
        v10 = v47;
        v31 = v101;
      }

      else
      {
        v62 = sub_22855CC9C();
        v10 = v47;
        v31 = v101;
        if (v62)
        {
          goto LABEL_27;
        }

        if ((v58 | v49) < 0)
        {
          goto LABEL_40;
        }

        v61 = v58 + v49;
        if (__OFADD__(v58, v49))
        {
LABEL_27:
          v61 = sub_22855CCBC();
        }

        else if (v61 < 0)
        {
          __break(1u);
          goto LABEL_30;
        }
      }

      *v57 = v61;
    }

    v55(v109, 0);
    (*v100)(v106, v10);
    (*v88)(v89, v31);
    v96(v4, v3);
    v32 = sub_22855D44C();

    if (v32 <= 0)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
}

uint64_t PendingValuesInner.enqueue(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = &v16[-v9];
  v11 = *(a3 + 24);
  v12 = v11(a2, a3);
  os_unfair_lock_lock(*(v12 + 16));

  if (((*(a3 + 136))(a2, a3) & 1) == 0)
  {
    (*(v7 + 16))(v10, a1, AssociatedTypeWitness);
    v13 = (*(a3 + 80))(v16, a2, a3);
    sub_22855D47C();
    sub_22855D45C();
    v13(v16, 0);
  }

  PendingValuesInner.lock_sendPendingValuesIfNeeded()();
  v14 = v11(a2, a3);
  os_unfair_lock_unlock(*(v14 + 16));
}

uint64_t sub_228479BB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t *, uint64_t))
{
  sub_22855E14C();
  v6 = HKSensitiveLogItem();
  swift_unknownObjectRelease();
  sub_22855DA7C();
  swift_unknownObjectRelease();
  v7 = a3(&v9, MEMORY[0x277D84F70] + 8);
  (*(*(a2 - 8) + 8))(a1, a2);
  return v7;
}

void sub_228479C80(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC14HealthPlatform28MockUNUserNotificationCenter_customNotificationSettings;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *sub_228479CE0()
{
  v1 = OBJC_IVAR____TtC14HealthPlatform28MockUNUserNotificationCenter_customNotificationSettings;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_228479D2C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14HealthPlatform28MockUNUserNotificationCenter_customNotificationSettings;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id MockUNUserNotificationCenter.init()()
{
  *&v0[OBJC_IVAR____TtC14HealthPlatform28MockUNUserNotificationCenter_customNotificationSettings] = 0;
  v1 = OBJC_IVAR____TtC14HealthPlatform28MockUNUserNotificationCenter_mockNotificationState;
  v2 = MEMORY[0x277D84F90];
  v3 = sub_22847CC9C(MEMORY[0x277D84F90]);
  sub_22847CDCC();
  v4 = swift_allocObject();
  *(v4 + 40) = 0;
  *(v4 + 16) = v2;
  *(v4 + 24) = v2;
  *(v4 + 32) = v3;
  *&v0[v1] = v4;
  v5 = &v0[OBJC_IVAR____TtC14HealthPlatform28MockUNUserNotificationCenter_removePendingNotificationRequests];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = &v0[OBJC_IVAR____TtC14HealthPlatform28MockUNUserNotificationCenter_removeDeliveredNotifications];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = &v0[OBJC_IVAR____TtC14HealthPlatform28MockUNUserNotificationCenter_requestAuthorization];
  *v7 = sub_22847C0E0;
  v7[1] = 0;
  v8 = *MEMORY[0x277CCE3A8];
  v10.receiver = v0;
  v10.super_class = type metadata accessor for MockUNUserNotificationCenter();
  return objc_msgSendSuper2(&v10, sel_initWithBundleIdentifier_, v8);
}

id sub_228479EF0(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC14HealthPlatform28MockUNUserNotificationCenter_customNotificationSettings] = 0;
  v6 = OBJC_IVAR____TtC14HealthPlatform28MockUNUserNotificationCenter_mockNotificationState;
  v7 = MEMORY[0x277D84F90];
  v8 = sub_22847CC9C(MEMORY[0x277D84F90]);
  sub_22847CDCC();
  v9 = swift_allocObject();
  *(v9 + 40) = 0;
  *(v9 + 16) = v7;
  *(v9 + 24) = v7;
  *&v3[v6] = v9;
  *(v9 + 32) = v8;
  v10 = &v3[OBJC_IVAR____TtC14HealthPlatform28MockUNUserNotificationCenter_removePendingNotificationRequests];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = &v3[OBJC_IVAR____TtC14HealthPlatform28MockUNUserNotificationCenter_removeDeliveredNotifications];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = &v3[OBJC_IVAR____TtC14HealthPlatform28MockUNUserNotificationCenter_requestAuthorization];
  *v12 = sub_22847C0E0;
  v12[1] = 0;
  if (!a2)
  {
    v13 = *MEMORY[0x277CCE3A8];
    sub_22855D1AC();
  }

  v14 = sub_22855D17C();

  v17.receiver = v3;
  v17.super_class = type metadata accessor for MockUNUserNotificationCenter();
  v15 = objc_msgSendSuper2(&v17, sel_initWithBundleIdentifier_queue_, v14, a3);

  return v15;
}

void sub_22847A088(void *a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v8 = sub_22855C16C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v46 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = v46 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = v46 - v20;
  v22 = [a1 trigger];
  if (v22)
  {
    v47 = a2;
    v48 = v4;
    v49 = v22;
    objc_opt_self();
    v23 = swift_dynamicCastObjCClass();
    if (v23)
    {
      v24 = v23;
      v25 = *(v48 + OBJC_IVAR____TtC14HealthPlatform28MockUNUserNotificationCenter_mockNotificationState);
      MEMORY[0x28223BE20](v23);
      v46[-2] = a1;
      v26 = v49;
      os_unfair_lock_lock((v25 + 40));
      sub_22847FD7C((v25 + 16));
      os_unfair_lock_unlock((v25 + 40));
      [v24 timeInterval];
      sub_22847A794(a1, v27);
      if (v47)
      {
        v47(0);
      }
    }

    else
    {
      objc_opt_self();
      v35 = swift_dynamicCastObjCClass();
      if (v35)
      {
        v36 = v35;
        v46[0] = a3;
        v46[1] = v46;
        v37 = *(v48 + OBJC_IVAR____TtC14HealthPlatform28MockUNUserNotificationCenter_mockNotificationState);
        MEMORY[0x28223BE20](v35);
        v46[-2] = a1;
        os_unfair_lock_lock((v37 + 40));
        sub_22847DE5C((v37 + 16));
        os_unfair_lock_unlock((v37 + 40));
        sub_22855C15C();
        v38 = [v36 nextTriggerDate];
        if (v38)
        {
          v39 = v38;
          sub_22855C13C();

          (*(v9 + 32))(v19, v16, v8);
        }

        else
        {
          (*(v9 + 16))(v19, v21, v8);
        }

        v43 = v47;
        sub_22855C14C();
        sub_22847A794(a1, v44);
        if (v43)
        {
          v43(0);
        }

        v45 = *(v9 + 8);
        v45(v19, v8);
        v45(v21, v8);
      }

      else
      {
        v40 = v47;
        if (v47)
        {
          sub_22847DE08();
          v41 = swift_allocError();
          v40();

          v42 = v41;
        }

        else
        {
          v42 = v49;
        }
      }
    }
  }

  else
  {
    sub_22855C15C();
    v28 = a2;
    v29 = sub_22855C10C();
    v30 = sub_22855D17C();
    v31 = sub_22855D39C();
    v32 = [objc_opt_self() notificationWithRequest:a1 date:v29 sourceIdentifier:v30 intentIdentifiers:v31];

    v33 = (*(v9 + 8))(v13, v8);
    v34 = *(v4 + OBJC_IVAR____TtC14HealthPlatform28MockUNUserNotificationCenter_mockNotificationState);
    MEMORY[0x28223BE20](v33);
    v46[-2] = v32;
    os_unfair_lock_lock(v34 + 10);
    sub_22847DDEC(&v34[4]);
    os_unfair_lock_unlock(v34 + 10);
    if (v28)
    {
      v28(0);
    }
  }
}

uint64_t sub_22847A5B8(void *a1, void *a2)
{
  v3 = a2;
  MEMORY[0x22AAB9400]();
  if (*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v5 = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22855D3EC();
  }

  return sub_22855D43C();
}

uint64_t sub_22847A634(uint64_t a1, void *a2)
{
  v3 = a2;
  MEMORY[0x22AAB9400]();
  if (*((*(a1 + 8) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a1 + 8) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v5 = *((*(a1 + 8) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22855D3EC();
  }

  return sub_22855D43C();
}

void sub_22847A794(void *a1, double a2)
{
  ObjectType = swift_getObjectType();
  v4 = MEMORY[0x277D83D88];
  sub_22847FBC8(0, &qword_27D83F948, MEMORY[0x277CC9E70], MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v39 - v7;
  sub_22847FBC8(0, &qword_27D83F950, MEMORY[0x277CC9E78], v4);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v39 - v11;
  v13 = sub_22855D9EC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2283FFCB0();
  v19 = v18;
  v45 = *(v18 - 8);
  v20 = *(v45 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22847F9C4();
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23);
  v28 = &v39 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 == 0.0)
  {

    sub_22847AF48(a1);
  }

  else
  {
    v42 = v25;
    v43 = v26;
    sub_22855CDCC();
    sub_22855D9DC();
    (*(v14 + 56))(v12, 1, 1, v13);
    v40 = [objc_opt_self() mainRunLoop];
    v47 = v40;
    v29 = sub_22855D9CC();
    (*(*(v29 - 8) + 56))(v8, 1, 1, v29);
    sub_2283EF310(0, &qword_27D83F960, 0x277CBEB88);
    sub_22840A348(&qword_27D83F968, sub_2283FFCB0);
    v41 = a1;
    sub_22842B880(&qword_27D83F970, &qword_27D83F960, 0x277CBEB88);
    v30 = v46;
    sub_22855CECC();
    sub_22847FAC4(v8, &qword_27D83F948, MEMORY[0x277CC9E70]);

    sub_22847FAC4(v12, &qword_27D83F950, MEMORY[0x277CC9E78]);
    (*(v14 + 8))(v17, v13);
    (*(v45 + 8))(v22, v19);
    v31 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v32 = swift_allocObject();
    v33 = v41;
    v32[2] = v31;
    v32[3] = v33;
    v32[4] = ObjectType;
    sub_22840A348(&qword_27D83F978, sub_22847F9C4);
    v34 = v33;
    v35 = v42;
    v36 = sub_22855CF8C();

    v37 = (*(v43 + 8))(v28, v35);
    v38 = *(v30 + OBJC_IVAR____TtC14HealthPlatform28MockUNUserNotificationCenter_mockNotificationState);
    MEMORY[0x28223BE20](v37);
    *(&v39 - 2) = v34;
    *(&v39 - 1) = v36;
    os_unfair_lock_lock(v38 + 10);
    sub_22847FB40(&v38[4]);
    os_unfair_lock_unlock(v38 + 10);
  }
}

void sub_22847AD98(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_22847AF48(a3);
  }

  else
  {
    sub_22855DC6C();
    sub_22855E34C();

    MEMORY[0x22AAB92A0](0xD000000000000016, 0x80000002285702A0);
    sub_22855DEDC();
    __break(1u);
  }
}

uint64_t sub_22847AE94(uint64_t a1, id a2, uint64_t a3)
{
  v5 = [a2 identifier];
  v6 = sub_22855D1AC();
  v8 = v7;

  v9 = *(a1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(a1 + 16);
  sub_22845B1D0(a3, v6, v8, isUniquelyReferenced_nonNull_native);

  *(a1 + 16) = v12;
  return result;
}

void sub_22847AF48(void *a1)
{
  v2 = v1;
  v4 = *&v1[OBJC_IVAR____TtC14HealthPlatform28MockUNUserNotificationCenter_mockNotificationState];
  os_unfair_lock_lock((v4 + 40));
  sub_22847E358((v4 + 16));
  os_unfair_lock_unlock((v4 + 40));
  v5 = [a1 trigger];
  if (v5)
  {
    v6 = v5;
    if ([v5 repeats])
    {
      [v2 addNotificationRequest:a1 withCompletionHandler:0];
    }
  }
}

uint64_t sub_22847B000(unint64_t *a1, void *a2)
{
  v5 = sub_22855C16C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2;
  v11 = sub_22847E510(a1, v10);

  v12 = *a1;
  if (*a1 >> 62)
  {
    if (v12 < 0)
    {
      v34 = *a1;
    }

    v13 = sub_22855DB4C();
    if (v13 >= v11)
    {
LABEL_3:
      v35[1] = v2;
      sub_2284FD0E8(v11, v13);
      sub_22855C15C();
      v14 = sub_22855C10C();
      v15 = sub_22855D17C();
      v16 = sub_22855D39C();
      v17 = [objc_opt_self() notificationWithRequest:v10 date:v14 sourceIdentifier:v15 intentIdentifiers:v16];

      v18 = (*(v6 + 8))(v9, v5);
      MEMORY[0x22AAB9400](v18);
      if (*((a1[1] & 0xFFFFFFFFFFFFFF8) + 0x10) < *((a1[1] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13 >= v11)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_14:
  sub_22855D3EC();
LABEL_4:
  sub_22855D43C();
  v19 = [v10 identifier];
  v20 = sub_22855D1AC();
  v22 = v21;

  v23 = a1[2];
  if (*(v23 + 16))
  {
    v24 = sub_2283F6D18(v20, v22);
    v26 = v25;

    if (v26)
    {
      v27 = *(v23 + 56);
      if (*(v27 + 8 * v24))
      {
        v28 = *(v27 + 8 * v24);

        sub_22855CCFC();
      }
    }
  }

  else
  {
  }

  v29 = [v10 identifier];
  v30 = sub_22855D1AC();
  v32 = v31;

  return sub_2284D203C(1, v30, v32);
}

uint64_t sub_22847B3B0()
{
  v1 = *(v0 + OBJC_IVAR____TtC14HealthPlatform28MockUNUserNotificationCenter_mockNotificationState);
  os_unfair_lock_lock((v1 + 40));
  v2 = *(v1 + 16);

  os_unfair_lock_unlock((v1 + 40));
  return v2;
}

void sub_22847B548(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  sub_2283EF310(0, a3, a4);
  v5 = sub_22855D39C();
  (*(a2 + 16))(a2, v5);
}

uint64_t sub_22847B5C0()
{
  v1 = *(v0 + OBJC_IVAR____TtC14HealthPlatform28MockUNUserNotificationCenter_mockNotificationState);
  os_unfair_lock_lock((v1 + 40));
  v2 = *(v1 + 24);

  os_unfair_lock_unlock((v1 + 40));
  return v2;
}

uint64_t sub_22847B6A4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC14HealthPlatform28MockUNUserNotificationCenter_removePendingNotificationRequests);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_22847FDB0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_22840FE74(v4);
}

uint64_t sub_22847B744(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_22841C0E0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC14HealthPlatform28MockUNUserNotificationCenter_removePendingNotificationRequests);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_22840FE74(v3);
  return sub_228416CF8(v8);
}

void sub_22847B884(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC14HealthPlatform28MockUNUserNotificationCenter_removePendingNotificationRequests;
  v4 = swift_beginAccess();
  v5 = *v3;
  if (*v3)
  {
    v6 = *(v3 + 8);

    v5(a1);
    sub_228416CF8(v5);
  }

  else
  {
    v7 = *(v1 + OBJC_IVAR____TtC14HealthPlatform28MockUNUserNotificationCenter_mockNotificationState);
    MEMORY[0x28223BE20](v4);
    os_unfair_lock_lock((v7 + 40));
    sub_22847DEE0((v7 + 16));
    os_unfair_lock_unlock((v7 + 40));
  }
}

uint64_t sub_22847B95C(unint64_t *a1, uint64_t a2)
{

  v4 = sub_22847E9B4(a1, a2);

  v6 = *a1;
  if (*a1 >> 62)
  {
    if (v6 < 0)
    {
      v8 = *a1;
    }

    result = sub_22855DB4C();
    v7 = result;
    if (result >= v4)
    {
      return sub_2284FD0E8(v4, v7);
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7 >= v4)
    {
      return sub_2284FD0E8(v4, v7);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22847BA0C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC14HealthPlatform28MockUNUserNotificationCenter_removeDeliveredNotifications);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_22847F364;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_22840FE74(v4);
}

uint64_t sub_22847BAAC(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_22841C034;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC14HealthPlatform28MockUNUserNotificationCenter_removeDeliveredNotifications);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_22840FE74(v3);
  return sub_228416CF8(v8);
}

uint64_t sub_22847BB80(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];
  sub_22840FE74(v4);
  return v4;
}

uint64_t sub_22847BBE4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = a1;
  v6[1] = a2;
  return sub_228416CF8(v7);
}

void sub_22847BCA0(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC14HealthPlatform28MockUNUserNotificationCenter_removeDeliveredNotifications;
  v4 = swift_beginAccess();
  v5 = *v3;
  if (*v3)
  {
    v6 = *(v3 + 8);

    v5(a1);
    sub_228416CF8(v5);
  }

  else
  {
    v7 = *(v1 + OBJC_IVAR____TtC14HealthPlatform28MockUNUserNotificationCenter_mockNotificationState);
    MEMORY[0x28223BE20](v4);
    os_unfair_lock_lock(v7 + 10);
    sub_22847DEFC(&v7[4]);
    os_unfair_lock_unlock(v7 + 10);
  }
}

uint64_t sub_22847BD78(uint64_t a1, uint64_t a2)
{

  v4 = sub_22847EE38((a1 + 8), a2);

  v6 = *(a1 + 8);
  if (v6 >> 62)
  {
    if (v6 < 0)
    {
      v8 = *(a1 + 8);
    }

    result = sub_22855DB4C();
    v7 = result;
    if (result >= v4)
    {
      return sub_2284FD204(v4, v7);
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7 >= v4)
    {
      return sub_2284FD204(v4, v7);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22847BE2C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = sub_22855D3AC();
  v7 = a1;
  a4(v6);
}

void sub_22847BF78(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_22847C0EC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC14HealthPlatform28MockUNUserNotificationCenter_requestAuthorization);
  swift_beginAccess();
  v5 = *v3;
  v4 = v3[1];
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = sub_22847F328;
  a2[1] = v6;
}

uint64_t sub_22847C178(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = (*a2 + OBJC_IVAR____TtC14HealthPlatform28MockUNUserNotificationCenter_requestAuthorization);
  swift_beginAccess();
  v7 = v6[1];
  *v6 = sub_22847F2E4;
  v6[1] = v5;
}

uint64_t sub_22847C214()
{
  v1 = (v0 + OBJC_IVAR____TtC14HealthPlatform28MockUNUserNotificationCenter_requestAuthorization);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_22847C26C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC14HealthPlatform28MockUNUserNotificationCenter_requestAuthorization);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

id MockUNUserNotificationCenter.__allocating_init(bundleIdentifier:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = sub_22855D17C();

  v3 = [v1 initWithBundleIdentifier_];

  return v3;
}

id MockUNUserNotificationCenter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MockUNUserNotificationCenter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22847C5B0(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_22855DB4C();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_22855DCBC();
}

unint64_t sub_22847C614(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_22847F828(0, &qword_280DED050, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84460]);
    v3 = sub_22855DF6C();
    v4 = a1 + 32;

    while (1)
    {
      sub_22847F8F4(v4, &v13, &qword_280DED278);
      v5 = v13;
      v6 = v14;
      result = sub_2283F6D18(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_228400400(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22847C760(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_22844BA34();
    v3 = sub_22855DF6C();

    for (i = (a1 + 64); ; i += 5)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_228443C58(v5, v6, v7, v8);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v3[6] + 32 * result);
      *v13 = v5;
      v13[1] = v6;
      v13[2] = v7;
      v13[3] = v8;
      *(v3[7] + 8 * result) = v10;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22847C878(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_22844C4C8();
    v3 = sub_22855DF6C();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_22844C568(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22847C948(uint64_t a1)
{
  sub_22847FC2C(0, &qword_280DE9338, type metadata accessor for HKFeatureIdentifier, MEMORY[0x277D11290]);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v7 = &v22 - v6;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_22847FCA8(0, &qword_280DE9080, MEMORY[0x277D11290]);
    v9 = sub_22855DF6C();
    v10 = *(v3 + 48);
    v11 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);

    while (1)
    {
      sub_22847F6C4(v11, v7, &qword_280DE9338, type metadata accessor for HKFeatureIdentifier, MEMORY[0x277D11290]);
      v13 = *v7;
      result = sub_22844C56C(*v7);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v9[6] + 8 * result) = v13;
      v17 = v9[7];
      v18 = sub_22855C37C();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v16, &v7[v10], v18);
      v19 = v9[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v9[2] = v21;
      v11 += v12;
      if (!--v8)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22847CB84(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_22847FCA8(0, &qword_280DE9078, sub_22844C2D4);
    v3 = sub_22855DF6C();

    for (i = (a1 + 40); ; i = (i + 24))
    {
      v11 = *i;
      v5 = *(i - 1);
      swift_unknownObjectRetain();
      result = sub_22844C56C(v5);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 16 * result) = v11;
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22847CC9C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_22847FB5C(0, &qword_27D83F568, &qword_27D83F570, MEMORY[0x277CBCDA8], MEMORY[0x277D83D88]);
    v3 = sub_22855DF6C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_2283F6D18(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

void sub_22847CDCC()
{
  if (!qword_27D83F8E8)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_22855DCFC();
    if (!v1)
    {
      atomic_store(v0, &qword_27D83F8E8);
    }
  }
}

unint64_t sub_22847CE50(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_22840030C(0, &qword_280DE90A0, &qword_280DE9680, MEMORY[0x277D834F8], sub_22847F888);
    v3 = sub_22855DF6C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_2283F6D18(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22847CF80(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_22847F888(0, &qword_280DED048, MEMORY[0x277D84460]);
    v3 = sub_22855DF6C();
    v4 = a1 + 32;

    while (1)
    {
      sub_22847F8F4(v4, v13, &qword_280DE9230);
      result = sub_228443C14(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_228400400(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22847D0F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_22844C144();
    v3 = sub_22855DF6C();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_2283FB154(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22847D1E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_22847F828(0, &qword_280DE90B0, MEMORY[0x277D837D0], MEMORY[0x277D84460]);
    v3 = sub_22855DF6C();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_2283F6D18(v5, v6);
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22847D340(uint64_t a1, void (*a2)(void))
{
  v2 = *(a1 + 16);
  if (v2)
  {
    a2(0);
    v4 = sub_22855DF6C();

    for (i = (a1 + 48); ; i += 3)
    {
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      result = sub_2283F6D18(v6, v7);
      if (v10)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v4[6] + 16 * result);
      *v11 = v6;
      v11[1] = v7;
      *(v4[7] + 8 * result) = v8;
      v12 = v4[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v4[2] = v14;
      if (!--v2)
      {

        return v4;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22847D43C(uint64_t a1)
{
  sub_22847FC2C(0, &qword_27D83F928, MEMORY[0x277D11BA8], MEMORY[0x277D11C28]);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v7 = &v21 - v6;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_22844B638();
    v9 = sub_22855DF6C();
    v10 = *(v3 + 48);
    v11 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);

    while (1)
    {
      sub_22847F6C4(v11, v7, &qword_27D83F928, MEMORY[0x277D11BA8], MEMORY[0x277D11C28]);
      result = sub_228443DF4(v7);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = v9[6];
      v17 = sub_22855C5CC();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, v7, v17);
      *(v9[7] + 8 * v15) = *&v7[v10];
      v18 = v9[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v9[2] = v20;
      v11 += v12;
      if (!--v8)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22847D65C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_22844BDCC();
    v3 = sub_22855DF6C();

    for (i = (a1 + 33); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_228443AB4(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22847D768(uint64_t a1, void (*a2)(void), uint64_t (*a3)(id))
{
  v3 = *(a1 + 16);
  if (v3)
  {
    a2(0);
    v6 = sub_22855DF6C();

    for (i = (a1 + 40); ; i += 2)
    {
      v8 = *i;
      v9 = *(i - 1);
      v10 = v8;
      result = a3(v9);
      if (v12)
      {
        break;
      }

      *(v6 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v6[6] + 8 * result) = v9;
      *(v6[7] + 8 * result) = v10;
      v13 = v6[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v6[2] = v15;
      if (!--v3)
      {

        return v6;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22847D860(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_22847F46C();
    v3 = sub_22855DF6C();
    v4 = a1 + 32;

    while (1)
    {
      sub_22847F50C(v4, &v11, sub_22847F574);
      v5 = v11;
      result = sub_22844C56C(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_228400400(&v12, (v3[7] + 32 * result));
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22847D970(uint64_t a1)
{
  sub_22847F390();
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v7 = (&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_22847F3F8(0, &qword_280DEE3C8, type metadata accessor for PluginFeedItem, MEMORY[0x277D84460]);
    v9 = sub_22855DF6C();
    v10 = *(v3 + 48);
    v11 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);

    while (1)
    {
      sub_22847F50C(v11, v7, sub_22847F390);
      v13 = *v7;
      v14 = v7[1];
      result = sub_2283F6D18(*v7, v14);
      if (v16)
      {
        break;
      }

      v17 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = (v9[6] + 16 * result);
      *v18 = v13;
      v18[1] = v14;
      v19 = v9[7];
      v20 = type metadata accessor for PluginFeedItem();
      result = sub_22844BC28(v7 + v10, v19 + *(*(v20 - 8) + 72) * v17);
      v21 = v9[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_10;
      }

      v9[2] = v23;
      v11 += v12;
      if (!--v8)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22847DB64(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_22847FB5C(0, &qword_27D83F578, &qword_280DE9630, type metadata accessor for PluginFeedItem, MEMORY[0x277D83940]);
    v3 = sub_22855DF6C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_2283F6D18(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

id sub_22847DC94(uint64_t a1)
{
  v2 = sub_22855C16C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22855C15C();
  v7 = sub_22855C10C();
  v8 = sub_22855D17C();
  v9 = sub_22855D39C();
  v10 = [objc_opt_self() notificationWithRequest:a1 date:v7 sourceIdentifier:v8 intentIdentifiers:v9];

  (*(v3 + 8))(v6, v2);
  return v10;
}

unint64_t sub_22847DE08()
{
  result = qword_27D83F908;
  if (!qword_27D83F908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83F908);
  }

  return result;
}

uint64_t sub_22847DE78(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_22847DEAC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*(a1 + 8));
}

uint64_t sub_22847E268(uint64_t *a1, int a2)
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

uint64_t sub_22847E2B0(uint64_t result, int a2, int a3)
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

unint64_t sub_22847E304()
{
  result = qword_27D83F910;
  if (!qword_27D83F910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83F910);
  }

  return result;
}

unint64_t sub_22847E374(unint64_t a1, void *a2)
{
  if (a1 >> 62)
  {
LABEL_22:
    v18 = a1 & 0xFFFFFFFFFFFFFF8;
    v20 = sub_22855DB4C();
  }

  else
  {
    v18 = a1 & 0xFFFFFFFFFFFFFF8;
    v20 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = 0;
  while (1)
  {
    if (v20 == v3)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x22AAB9D20](v3, a1);
    }

    else
    {
      if (v3 >= *(v18 + 16))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v4 = *(a1 + 8 * v3 + 32);
    }

    v5 = v4;
    v6 = [v4 identifier];
    v7 = sub_22855D1AC();
    v9 = v8;

    v10 = [a2 identifier];
    v11 = sub_22855D1AC();
    v13 = v12;

    if (v7 == v11 && v9 == v13)
    {
      break;
    }

    v15 = sub_22855E15C();

    if (v15)
    {
      return v3;
    }

    if (__OFADD__(v3++, 1))
    {
      goto LABEL_21;
    }
  }

  return v3;
}

unint64_t sub_22847E510(unint64_t *a1, void *a2)
{
  v5 = a2;
  v7 = *a1;
  result = sub_22847E374(*a1, a2);
  if (v2)
  {
    return result;
  }

  if (v9)
  {
    if (v7 >> 62)
    {
      return sub_22855DB4C();
    }

    return *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v32 = a1;
  v33 = result;
  v10 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v7 >> 62)
    {
      if (v10 == sub_22855DB4C())
      {
        return v33;
      }
    }

    else if (v10 == *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v33;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x22AAB9D20](v10, v7);
      goto LABEL_17;
    }

    if ((v10 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v10 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_48;
    }

    v12 = *(v7 + 8 * v10 + 32);
LABEL_17:
    v4 = v12;
    v13 = [v12 identifier];
    v14 = sub_22855D1AC();
    v16 = v15;

    v3 = v5;
    v17 = [v5 identifier];
    v18 = sub_22855D1AC();
    v20 = v19;

    if (v14 == v18 && v16 == v20)
    {
LABEL_8:

LABEL_9:
      v5 = v3;
      goto LABEL_10;
    }

    v21 = sub_22855E15C();

    if (v21)
    {
      goto LABEL_9;
    }

    v5 = v3;
    if (v33 != v10)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x22AAB9D20](v33, v7);
        v23 = MEMORY[0x22AAB9D20](v10, v7);
      }

      else
      {
        if ((v33 & 0x8000000000000000) != 0)
        {
          goto LABEL_52;
        }

        v24 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v33 >= v24)
        {
          goto LABEL_53;
        }

        if (v10 >= v24)
        {
          goto LABEL_54;
        }

        v25 = *(v7 + 32 + 8 * v10);
        v22 = *(v7 + 32 + 8 * v33);
        v23 = v25;
      }

      v26 = v23;
      if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
      {
        v7 = sub_22847C5B0(v7);
        v27 = (v7 >> 62) & 1;
      }

      else
      {
        LODWORD(v27) = 0;
      }

      v28 = v7 & 0xFFFFFFFFFFFFFF8;
      v29 = *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v33 + 0x20);
      *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v33 + 0x20) = v26;

      if ((v7 & 0x8000000000000000) != 0 || v27)
      {
        v7 = sub_22847C5B0(v7);
        v28 = v7 & 0xFFFFFFFFFFFFFF8;
        if ((v10 & 0x8000000000000000) != 0)
        {
LABEL_44:
          __break(1u);
          return v33;
        }
      }

      else if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_44;
      }

      if (v10 >= *(v28 + 16))
      {
        goto LABEL_51;
      }

      v30 = v28 + 8 * v10;
      v31 = *(v30 + 32);
      *(v30 + 32) = v22;

      *v32 = v7;
    }

    v11 = __OFADD__(v33++, 1);
    if (v11)
    {
      goto LABEL_50;
    }

LABEL_10:
    v11 = __OFADD__(v10++, 1);
    if (v11)
    {
      goto LABEL_49;
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
  return sub_22855DB4C();
}

unint64_t sub_22847E820(unint64_t a1, uint64_t a2)
{
  v15 = a2;
  if (a1 >> 62)
  {
LABEL_17:
    v14 = a1 & 0xFFFFFFFFFFFFFF8;
    v17 = sub_22855DB4C();
  }

  else
  {
    v14 = a1 & 0xFFFFFFFFFFFFFF8;
    v17 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = 0;
  while (1)
  {
    if (v17 == v3)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x22AAB9D20](v3, a1);
    }

    else
    {
      if (v3 >= *(v14 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v4 = *(a1 + 8 * v3 + 32);
    }

    v5 = v4;
    v6 = [v4 identifier];
    v7 = sub_22855D1AC();
    v9 = v8;

    v16[0] = v7;
    v16[1] = v9;
    MEMORY[0x28223BE20](v10);
    v13[2] = v16;
    LOBYTE(v6) = sub_2284C6D9C(sub_228435468, v13, v15);

    if (v6)
    {
      return v3;
    }

    if (__OFADD__(v3++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_22847E9B4(unint64_t *a1, uint64_t a2)
{
  v6 = *a1;
  v7 = sub_22847E820(*a1, a2);
  v9 = v3;
  if (v3)
  {
    return v2;
  }

  if (v8)
  {
    if (v6 >> 62)
    {
      return sub_22855DB4C();
    }

    return *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v2 = v7;
  v32 = a1;
  v33 = a2;
  v11 = v7 + 1;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
    goto LABEL_9;
  }

  while (1)
  {
    if (v6 >> 62)
    {
      if (v11 == sub_22855DB4C())
      {
        return v2;
      }
    }

    else if (v11 == *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v2;
    }

    v35 = v6 & 0xC000000000000001;
    if ((v6 & 0xC000000000000001) != 0)
    {
      v13 = v9;
      v14 = MEMORY[0x22AAB9D20](v11, v6);
    }

    else
    {
      if ((v11 & 0x8000000000000000) != 0)
      {
        goto LABEL_40;
      }

      if (v11 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_41;
      }

      v13 = v9;
      v14 = *(v6 + 8 * v11 + 32);
    }

    v15 = v14;
    v16 = [v14 identifier];
    v17 = sub_22855D1AC();
    v19 = v18;

    v34[0] = v17;
    v34[1] = v19;
    MEMORY[0x28223BE20](v20);
    v31[2] = v34;
    LOBYTE(v16) = sub_2284C6D9C(sub_228435468, v31, v33);
    v9 = v13;

    if ((v16 & 1) == 0)
    {
      break;
    }

LABEL_10:
    v12 = __OFADD__(v11++, 1);
    if (v12)
    {
      goto LABEL_42;
    }
  }

  if (v2 == v11)
  {
LABEL_9:
    v12 = __OFADD__(v2++, 1);
    if (v12)
    {
      goto LABEL_43;
    }

    goto LABEL_10;
  }

  if (v35)
  {
    v21 = MEMORY[0x22AAB9D20](v2, v6);
    v22 = MEMORY[0x22AAB9D20](v11, v6);
  }

  else
  {
    if ((v2 & 0x8000000000000000) != 0)
    {
      goto LABEL_45;
    }

    v23 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2 >= v23)
    {
      goto LABEL_46;
    }

    if (v11 >= v23)
    {
      goto LABEL_47;
    }

    v24 = *(v6 + 32 + 8 * v11);
    v21 = *(v6 + 32 + 8 * v2);
    v22 = v24;
  }

  v25 = v22;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
  {
    v6 = sub_22847C5B0(v6);
    v26 = (v6 >> 62) & 1;
  }

  else
  {
    LODWORD(v26) = 0;
  }

  v27 = v6 & 0xFFFFFFFFFFFFFF8;
  v28 = *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v2 + 0x20);
  *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v2 + 0x20) = v25;

  if ((v6 & 0x8000000000000000) == 0 && !v26)
  {
    if ((v11 & 0x8000000000000000) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_33;
  }

  v6 = sub_22847C5B0(v6);
  v27 = v6 & 0xFFFFFFFFFFFFFF8;
  if ((v11 & 0x8000000000000000) == 0)
  {
LABEL_33:
    if (v11 >= *(v27 + 16))
    {
      goto LABEL_44;
    }

    v29 = v27 + 8 * v11;
    v30 = *(v29 + 32);
    *(v29 + 32) = v21;

    *v32 = v6;
    goto LABEL_9;
  }

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
  return sub_22855DB4C();
}

unint64_t sub_22847EC90(unint64_t a1, uint64_t a2)
{
  v18 = a2;
  if (a1 >> 62)
  {
LABEL_17:
    v16 = a1 & 0xFFFFFFFFFFFFFF8;
    v3 = sub_22855DB4C();
  }

  else
  {
    v16 = a1 & 0xFFFFFFFFFFFFFF8;
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  while (1)
  {
    if (v3 == v4)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x22AAB9D20](v4, a1);
    }

    else
    {
      if (v4 >= *(v16 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v5 = *(a1 + 8 * v4 + 32);
    }

    v6 = v5;
    v7 = [v5 request];
    v8 = [v7 identifier];

    v9 = sub_22855D1AC();
    v11 = v10;

    v17[0] = v9;
    v17[1] = v11;
    MEMORY[0x28223BE20](v12);
    v15[2] = v17;
    LOBYTE(v9) = sub_2284C6D9C(sub_228435468, v15, v18);

    if (v9)
    {
      return v4;
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_22847EE38(unint64_t *a1, uint64_t a2)
{
  v6 = *a1;
  v7 = sub_22847EC90(*a1, a2);
  if (v3)
  {
    return v2;
  }

  if (v8)
  {
    if (v6 >> 62)
    {
      return sub_22855DB4C();
    }

    return *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v2 = v7;
  v31 = a1;
  v33 = a2;
  v10 = v7 + 1;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
    goto LABEL_9;
  }

  while (1)
  {
    if (v6 >> 62)
    {
      if (v10 == sub_22855DB4C())
      {
        return v2;
      }
    }

    else if (v10 == *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v2;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x22AAB9D20](v10, v6);
    }

    else
    {
      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_40;
      }

      if (v10 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_41;
      }

      v12 = *(v6 + 8 * v10 + 32);
    }

    v13 = v12;
    v14 = [v12 request];
    v15 = [v14 identifier];

    v16 = sub_22855D1AC();
    v18 = v17;

    v32[0] = v16;
    v32[1] = v18;
    MEMORY[0x28223BE20](v19);
    v30[2] = v32;
    LOBYTE(v16) = sub_2284C6D9C(sub_228434EDC, v30, v33);

    if ((v16 & 1) == 0)
    {
      break;
    }

LABEL_10:
    v11 = __OFADD__(v10++, 1);
    if (v11)
    {
      goto LABEL_42;
    }
  }

  if (v2 == v10)
  {
LABEL_9:
    v11 = __OFADD__(v2++, 1);
    if (v11)
    {
      goto LABEL_43;
    }

    goto LABEL_10;
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
    v20 = MEMORY[0x22AAB9D20](v2, v6);
    v21 = MEMORY[0x22AAB9D20](v10, v6);
  }

  else
  {
    if ((v2 & 0x8000000000000000) != 0)
    {
      goto LABEL_45;
    }

    v22 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2 >= v22)
    {
      goto LABEL_46;
    }

    if (v10 >= v22)
    {
      goto LABEL_47;
    }

    v23 = *(v6 + 32 + 8 * v10);
    v20 = *(v6 + 32 + 8 * v2);
    v21 = v23;
  }

  v24 = v21;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
  {
    v6 = sub_22847C5B0(v6);
    v25 = (v6 >> 62) & 1;
  }

  else
  {
    LODWORD(v25) = 0;
  }

  v26 = v6 & 0xFFFFFFFFFFFFFF8;
  v27 = *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v2 + 0x20);
  *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v2 + 0x20) = v24;

  if ((v6 & 0x8000000000000000) == 0 && !v25)
  {
    if ((v10 & 0x8000000000000000) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_33;
  }

  v6 = sub_22847C5B0(v6);
  v26 = v6 & 0xFFFFFFFFFFFFFF8;
  if ((v10 & 0x8000000000000000) == 0)
  {
LABEL_33:
    if (v10 >= *(v26 + 16))
    {
      goto LABEL_44;
    }

    v28 = v26 + 8 * v10;
    v29 = *(v28 + 32);
    *(v28 + 32) = v20;

    *v31 = v6;
    goto LABEL_9;
  }

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
  return sub_22855DB4C();
}

uint64_t sub_22847F128(char *a1, void (**a2)(void, void))
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = OBJC_IVAR____TtC14HealthPlatform28MockUNUserNotificationCenter_customNotificationSettings;
  swift_beginAccess();
  v6 = *&a1[v5];
  if (v6)
  {
    _Block_copy(a2);
    a2[2](a2, v6);
  }

  else
  {
    aBlock[4] = sub_22847F270;
    aBlock[5] = v4;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22847BF78;
    aBlock[3] = &block_descriptor_15;
    v7 = _Block_copy(aBlock);
    _Block_copy(a2);

    v9.receiver = a1;
    v9.super_class = type metadata accessor for MockUNUserNotificationCenter();
    objc_msgSendSuper2(&v9, sel_getNotificationSettingsWithCompletionHandler_, v7);
    _Block_release(v7);
  }
}

uint64_t sub_22847F2E4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v6 = a1;
  v2(&v5, &v6);
  return v5;
}

uint64_t sub_22847F328@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  result = v4(*a1);
  *a2 = result & 1;
  *(a2 + 8) = v7;
  return result;
}

uint64_t sub_22847F364(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

void sub_22847F390()
{
  if (!qword_280DEE3E0)
  {
    type metadata accessor for PluginFeedItem();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280DEE3E0);
    }
  }
}

void sub_22847F3F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, void, uint64_t, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, MEMORY[0x277D837D0], v7, MEMORY[0x277D837E0]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_22847F46C()
{
  if (!qword_280DE9058)
  {
    type metadata accessor for ProgressUserInfoKey(255);
    sub_22840A348(&qword_280DE9310, type metadata accessor for ProgressUserInfoKey);
    v0 = sub_22855DF7C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE9058);
    }
  }
}

uint64_t sub_22847F50C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_22847F574()
{
  if (!qword_280DE92F0)
  {
    type metadata accessor for ProgressUserInfoKey(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280DE92F0);
    }
  }
}

uint64_t sub_22847F5E0(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4)
{
  sub_22847F654(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_22847F654(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_2283F9B94(255, a3);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}