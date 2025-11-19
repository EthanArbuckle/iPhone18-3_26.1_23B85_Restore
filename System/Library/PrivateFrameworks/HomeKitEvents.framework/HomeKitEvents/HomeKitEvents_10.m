uint64_t GarageDoorEvent.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25424D8B8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t GarageDoorEvent.category.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for EventBase(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t GarageDoorEvent.roomName.getter()
{
  v1 = (v0 + *(type metadata accessor for AccessoryEventBase(0) + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t GarageDoorEvent.accessoryIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AccessoryEventBase(0) + 28);
  v4 = sub_25424D948();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t GarageDoorEvent.accessoryName.getter()
{
  v1 = (v0 + *(type metadata accessor for AccessoryEventBase(0) + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t GarageDoorEvent.userIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AccessoryEventBase(0) + 36);

  return sub_254149770(v3, a1);
}

BOOL static GarageDoorEvent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (!_s13HomeKitEvents9FakeEventV2eeoiySbAC_ACtFZ_0(a1, a2))
  {
    return 0;
  }

  v4 = type metadata accessor for GarageDoorEvent();
  return *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20));
}

uint64_t GarageDoorEvent.hash(into:)()
{
  v1 = v0;
  v2 = sub_25424D948();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8E50, &qword_254254390);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v24 - v9;
  sub_25424D8B8();
  sub_254207204(&qword_27F5B89C0, MEMORY[0x277CC9578]);
  sub_25424DC28();
  v11 = type metadata accessor for EventBase(0);
  v12 = *(v11 + 20);
  sub_254207204(&qword_27F5B89A8, MEMORY[0x277CC95F0]);
  sub_25424DC28();
  MEMORY[0x259C06AA0](qword_254260C10[*(v1 + *(v11 + 24))]);
  v13 = type metadata accessor for AccessoryEventBase(0);
  v14 = v1 + v13[5];
  sub_25424DC28();
  v15 = (v1 + v13[6]);
  v16 = *v15;
  v17 = v15[1];
  sub_25424DD88();
  v18 = v1 + v13[7];
  sub_25424DC28();
  v19 = (v1 + v13[8]);
  v20 = *v19;
  v21 = v19[1];
  sub_25424DD88();
  sub_254149770(v1 + v13[9], v10);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    sub_25424EBF8();
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    sub_25424EBF8();
    sub_25424DC28();
    (*(v3 + 8))(v6, v2);
  }

  v22 = type metadata accessor for GarageDoorEvent();
  return MEMORY[0x259C06AA0](*(v1 + *(v22 + 20)));
}

uint64_t GarageDoorEvent.hashValue.getter()
{
  sub_25424EBD8();
  GarageDoorEvent.hash(into:)();
  return sub_25424EC28();
}

uint64_t sub_25420697C()
{
  sub_25424EBD8();
  GarageDoorEvent.hash(into:)();
  return sub_25424EC28();
}

uint64_t sub_2542069C0()
{
  sub_25424EBD8();
  GarageDoorEvent.hash(into:)();
  return sub_25424EC28();
}

uint64_t GarageDoorEvent.init(date:homeIdentifier:roomIdentifier:roomName:accessoryIdentifier:accessoryName:state:userIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char *a10, uint64_t a11)
{
  v30 = *a10;
  v17 = sub_25424D8B8();
  (*(*(v17 - 8) + 32))(a9, a1, v17);
  v18 = type metadata accessor for EventBase(0);
  v19 = v18[5];
  v20 = sub_25424D948();
  v21 = *(*(v20 - 8) + 32);
  v21(a9 + v19, a2, v20);
  *(a9 + v18[6]) = 1;
  v22 = (a9 + v18[7]);
  *v22 = 15;
  v23 = type metadata accessor for AccessoryEventBase(0);
  v22[1] = 0;
  v22[2] = 0;
  v21(a9 + v23[5], a3, v20);
  v24 = (a9 + v23[6]);
  *v24 = a4;
  v24[1] = a5;
  v21(a9 + v23[7], a6, v20);
  v25 = (a9 + v23[8]);
  *v25 = a7;
  v25[1] = a8;
  sub_25414A348(a11, a9 + v23[9]);
  result = type metadata accessor for GarageDoorEvent();
  *(a9 + *(result + 20)) = v30;
  return result;
}

uint64_t GarageDoorEvent.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for AccessoryEventBaseLegacy(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_254140708(a1, v12);
  sub_254231924(v12, v8);
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_2541491A4(a1, v12);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v10 = v12[0];
  sub_25414A414(v8, a2);
  result = type metadata accessor for GarageDoorEvent();
  *(a2 + *(result + 20)) = v10;
  return result;
}

uint64_t GarageDoorEvent.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8E60, &qword_254254A10);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11[-v7];
  result = sub_254231F94(a1);
  if (!v2)
  {
    v11[15] = *(v1 + *(type metadata accessor for GarageDoorEvent() + 20));
    v10 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_25412F1C4();
    sub_25424EC78();
    v11[14] = 1;
    sub_254206EF8();
    sub_25424EA18();
    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

unint64_t sub_254206EF8()
{
  result = qword_27F5BBBB0;
  if (!qword_27F5BBBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BBBB0);
  }

  return result;
}

unint64_t sub_254206F50()
{
  result = qword_27F5BBBB8;
  if (!qword_27F5BBBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BBBB8);
  }

  return result;
}

unint64_t sub_254206FA8()
{
  result = qword_27F5BBBC0;
  if (!qword_27F5BBBC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5BBBC8, &qword_254260998);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BBBC0);
  }

  return result;
}

unint64_t sub_254207010()
{
  result = qword_27F5BBBD0;
  if (!qword_27F5BBBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BBBD0);
  }

  return result;
}

uint64_t sub_254207064(void *a1)
{
  a1[1] = sub_254207204(qword_27F5BB2D8, type metadata accessor for GarageDoorEvent);
  a1[2] = sub_254207204(&qword_27F5BBBE0, type metadata accessor for GarageDoorEvent);
  result = sub_254207204(&qword_27F5BBBE8, type metadata accessor for GarageDoorEvent);
  a1[3] = result;
  return result;
}

uint64_t sub_254207158(void *a1)
{
  a1[1] = sub_254207204(&qword_27F5BBBF8, type metadata accessor for GarageDoorEvent);
  a1[2] = sub_254207204(&qword_27F5BBC00, type metadata accessor for GarageDoorEvent);
  result = sub_254207204(&qword_27F5BBC08, type metadata accessor for GarageDoorEvent);
  a1[3] = result;
  return result;
}

uint64_t sub_254207204(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_254207294(void *a1)
{
  a1[1] = sub_25414AC80();
  a1[2] = sub_254206EF8();
  result = sub_2542072CC();
  a1[3] = result;
  return result;
}

unint64_t sub_2542072CC()
{
  result = qword_27F5BBC10;
  if (!qword_27F5BBC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BBC10);
  }

  return result;
}

unint64_t sub_254207320(uint64_t a1)
{
  result = sub_254207348();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_254207348()
{
  result = qword_27F5BBC18;
  if (!qword_27F5BBC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BBC18);
  }

  return result;
}

unint64_t sub_25420739C(uint64_t a1)
{
  result = sub_254207010();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2542073EC()
{
  result = type metadata accessor for AccessoryEventBaseLegacy(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_254207470()
{
  result = qword_27F5BBC30[0];
  if (!qword_27F5BBC30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F5BBC30);
  }

  return result;
}

uint64_t (*TypedAsyncSequence.init<A>(source:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))@<X0>(uint64_t *a1@<X8>)
{
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  v10 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v8 + 32))(&v11[v10], a1, a3);
  return sub_254207768;
}

uint64_t sub_2542075E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v15 = &v18 - v14;
  (*(v8 + 16))(v11, a1, a3);
  sub_25424E208();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return sub_2542077A8(v15, a2, AssociatedTypeWitness, AssociatedConformanceWitness, a4);
}

uint64_t sub_2542077A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  v10 = swift_allocBox();
  (*(*(a3 - 8) + 32))(v11, a1, a3);
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = a4;
  v12[5] = v10;
  v13 = a5[1];
  result = sub_25412DC98(*a5);
  *a5 = &unk_254260DD8;
  a5[1] = v12;
  return result;
}

uint64_t TypedAsyncSequence.AsyncIterator.nextClosure.getter()
{
  v0 = sub_25420838C();
  sub_25412DCB8(v0);
  return v0;
}

uint64_t TypedAsyncSequence.AsyncIterator.nextClosure.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];
  result = sub_25412DC98(*v2);
  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_25420791C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  v5[8] = swift_projectBox();

  return MEMORY[0x2822009F8](sub_254207990, 0, 0);
}

uint64_t sub_254207990()
{
  v1 = v0[8];
  swift_beginAccess();
  v2 = *(MEMORY[0x277D856D0] + 4);
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_254207A40;
  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[5];
  v7 = v0[6];

  return MEMORY[0x282200308](v6, v7, v4);
}

uint64_t sub_254207A40()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  *(v3 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_254207B7C, 0, 0);
  }

  else
  {
    swift_endAccess();
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_254207B7C()
{
  swift_endAccess();
  v1 = *(v0 + 8);
  v2 = *(v0 + 80);

  return v1();
}

uint64_t TypedAsyncSequence.AsyncIterator.next()(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = v2;
  v3[4] = *(a2 + 16);
  v4 = sub_25424E598();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_254207CA8, 0, 0);
}

uint64_t sub_254207CA8()
{
  if ((sub_25424E1C8() & 1) == 0)
  {
    v1 = v0[3];
    v2 = *v1;
    v0[8] = *v1;
    v0[9] = v1[1];
    if (v2)
    {
      sub_25412DCB8(v2);
      v13 = (v2 + *v2);
      v3 = v2[1];
      v4 = swift_task_alloc();
      v0[10] = v4;
      *v4 = v0;
      v4[1] = sub_254207EA4;
      v5 = v0[7];

      return v13(v5);
    }

    (*(*(v0[4] - 8) + 56))(v0[7], 1, 1);
    (*(v0[6] + 8))(v0[7], v0[5]);
  }

  v8 = v0[3];
  v7 = v0[4];
  v9 = v0[2];
  v10 = v8[1];
  sub_25412DC98(*v8);
  *v8 = 0;
  v8[1] = 0;
  (*(*(v7 - 8) + 56))(v9, 1, 1, v7);
  v11 = v0[7];

  v12 = v0[1];

  return v12();
}

uint64_t sub_254207EA4()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_254208138;
  }

  else
  {
    v3 = sub_254207FB8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_254207FB8()
{
  v1 = v0[9];
  v2 = v0[7];
  v3 = v0[4];
  sub_25412DC98(v0[8]);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 48))(v2, 1, v3);
  v6 = v0[7];
  if (v5 == 1)
  {
    (*(v0[6] + 8))(v0[7], v0[5]);
    v8 = v0[3];
    v7 = v0[4];
    v9 = v0[2];
    v10 = v8[1];
    sub_25412DC98(*v8);
    *v8 = 0;
    v8[1] = 0;
    (*(*(v7 - 8) + 56))(v9, 1, 1, v7);
  }

  else
  {
    v11 = v0[4];
    v12 = v0[2];
    (*(v4 + 32))(v12, v0[7], v11);
    (*(v4 + 56))(v12, 0, 1, v11);
  }

  v13 = v0[7];

  v14 = v0[1];

  return v14();
}

uint64_t sub_254208138()
{
  v1 = v0[9];
  v2 = v0[7];
  sub_25412DC98(v0[8]);

  v3 = v0[1];
  v4 = v0[11];

  return v3();
}

uint64_t sub_2542081A8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25412F724;

  return TypedAsyncSequence.AsyncIterator.next()(a1, a2);
}

uint64_t sub_254208250()
{
  v1 = *(v0 + 8);
  TypedAsyncSequence.makeAsyncIterator()(*v0);
}

uint64_t (*AsyncSequence.typeErased.getter(uint64_t a1, uint64_t a2))@<X0>(uint64_t *a1@<X8>)
{
  v5 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, v2, a1);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TypedAsyncSequence.init<A>(source:)(v7, AssociatedTypeWitness, a1, a2);
  return sub_254207768;
}

uint64_t sub_25420838C()
{
  result = *v0;
  v2 = v0[1];
  return result;
}

uint64_t sub_2542083B0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2542083F8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_254208440(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_254208494()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_xSgs5Error_pRi_zRi0_zlyxIsegHrzo_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2542084E8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_254208544(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
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
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_2542085AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_25412F724;

  return sub_25420791C(a1, v6, v4, v5, v7);
}

HomeKitEvents::DoorEvent::State_optional __swiftcall DoorEvent.State.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t DoorEvent.state.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for DoorEvent();
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t type metadata accessor for DoorEvent()
{
  result = qword_27F5BBDA8;
  if (!qword_27F5BBDA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DoorEvent.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25424D8B8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t DoorEvent.category.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for EventBase(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t DoorEvent.roomName.getter()
{
  v1 = (v0 + *(type metadata accessor for AccessoryEventBase(0) + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t DoorEvent.accessoryIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AccessoryEventBase(0) + 28);
  v4 = sub_25424D948();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DoorEvent.accessoryName.getter()
{
  v1 = (v0 + *(type metadata accessor for AccessoryEventBase(0) + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t DoorEvent.userIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AccessoryEventBase(0) + 36);

  return sub_254149770(v3, a1);
}

BOOL static DoorEvent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (!_s13HomeKitEvents9FakeEventV2eeoiySbAC_ACtFZ_0(a1, a2))
  {
    return 0;
  }

  v4 = type metadata accessor for DoorEvent();
  return *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20));
}

uint64_t DoorEvent.hash(into:)()
{
  v1 = v0;
  v2 = sub_25424D948();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8E50, &qword_254254390);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v24 - v9;
  sub_25424D8B8();
  sub_254209540(&qword_27F5B89C0, MEMORY[0x277CC9578]);
  sub_25424DC28();
  v11 = type metadata accessor for EventBase(0);
  v12 = *(v11 + 20);
  sub_254209540(&qword_27F5B89A8, MEMORY[0x277CC95F0]);
  sub_25424DC28();
  MEMORY[0x259C06AA0](qword_2542610F0[*(v1 + *(v11 + 24))]);
  v13 = type metadata accessor for AccessoryEventBase(0);
  v14 = v1 + v13[5];
  sub_25424DC28();
  v15 = (v1 + v13[6]);
  v16 = *v15;
  v17 = v15[1];
  sub_25424DD88();
  v18 = v1 + v13[7];
  sub_25424DC28();
  v19 = (v1 + v13[8]);
  v20 = *v19;
  v21 = v19[1];
  sub_25424DD88();
  sub_254149770(v1 + v13[9], v10);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    sub_25424EBF8();
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    sub_25424EBF8();
    sub_25424DC28();
    (*(v3 + 8))(v6, v2);
  }

  v22 = type metadata accessor for DoorEvent();
  return MEMORY[0x259C06AA0](*(v1 + *(v22 + 20)));
}

uint64_t DoorEvent.hashValue.getter()
{
  sub_25424EBD8();
  DoorEvent.hash(into:)();
  return sub_25424EC28();
}

uint64_t sub_254208CB8()
{
  sub_25424EBD8();
  DoorEvent.hash(into:)();
  return sub_25424EC28();
}

uint64_t sub_254208CFC()
{
  sub_25424EBD8();
  DoorEvent.hash(into:)();
  return sub_25424EC28();
}

uint64_t DoorEvent.init(date:homeIdentifier:roomIdentifier:roomName:accessoryIdentifier:accessoryName:state:userIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char *a10, uint64_t a11)
{
  v30 = *a10;
  v17 = sub_25424D8B8();
  (*(*(v17 - 8) + 32))(a9, a1, v17);
  v18 = type metadata accessor for EventBase(0);
  v19 = v18[5];
  v20 = sub_25424D948();
  v21 = *(*(v20 - 8) + 32);
  v21(a9 + v19, a2, v20);
  *(a9 + v18[6]) = 1;
  v22 = (a9 + v18[7]);
  *v22 = 15;
  v23 = type metadata accessor for AccessoryEventBase(0);
  v22[1] = 0;
  v22[2] = 0;
  v21(a9 + v23[5], a3, v20);
  v24 = (a9 + v23[6]);
  *v24 = a4;
  v24[1] = a5;
  v21(a9 + v23[7], a6, v20);
  v25 = (a9 + v23[8]);
  *v25 = a7;
  v25[1] = a8;
  sub_25414A348(a11, a9 + v23[9]);
  result = type metadata accessor for DoorEvent();
  *(a9 + *(result + 20)) = v30;
  return result;
}

uint64_t DoorEvent.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for AccessoryEventBaseLegacy(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_254140708(a1, v12);
  sub_254231924(v12, v8);
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_2541491D8(a1, v12);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v10 = v12[0];
  sub_25414A414(v8, a2);
  result = type metadata accessor for DoorEvent();
  *(a2 + *(result + 20)) = v10;
  return result;
}

uint64_t DoorEvent.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8E60, &qword_254254A10);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11[-v7];
  result = sub_254231F94(a1);
  if (!v2)
  {
    v11[15] = *(v1 + *(type metadata accessor for DoorEvent() + 20));
    v10 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_25412F1C4();
    sub_25424EC78();
    v11[14] = 1;
    sub_254209234();
    sub_25424EA18();
    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

unint64_t sub_254209234()
{
  result = qword_27F5BBD38;
  if (!qword_27F5BBD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BBD38);
  }

  return result;
}

unint64_t sub_25420928C()
{
  result = qword_27F5BBD40;
  if (!qword_27F5BBD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BBD40);
  }

  return result;
}

unint64_t sub_2542092E4()
{
  result = qword_27F5BBD48;
  if (!qword_27F5BBD48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5BBD50, &qword_254260E80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BBD48);
  }

  return result;
}

unint64_t sub_25420934C()
{
  result = qword_27F5BBD58;
  if (!qword_27F5BBD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BBD58);
  }

  return result;
}

uint64_t sub_2542093A0(void *a1)
{
  a1[1] = sub_254209540(&qword_27F5BB2D0, type metadata accessor for DoorEvent);
  a1[2] = sub_254209540(&qword_27F5BBD68, type metadata accessor for DoorEvent);
  result = sub_254209540(&qword_27F5BBD70, type metadata accessor for DoorEvent);
  a1[3] = result;
  return result;
}

uint64_t sub_254209494(void *a1)
{
  a1[1] = sub_254209540(&qword_27F5BBD80, type metadata accessor for DoorEvent);
  a1[2] = sub_254209540(&qword_27F5BBD88, type metadata accessor for DoorEvent);
  result = sub_254209540(&qword_27F5BBD90, type metadata accessor for DoorEvent);
  a1[3] = result;
  return result;
}

uint64_t sub_254209540(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2542095D0(void *a1)
{
  a1[1] = sub_25414AC2C();
  a1[2] = sub_254209234();
  result = sub_254209608();
  a1[3] = result;
  return result;
}

unint64_t sub_254209608()
{
  result = qword_27F5BBD98;
  if (!qword_27F5BBD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BBD98);
  }

  return result;
}

unint64_t sub_25420965C(uint64_t a1)
{
  result = sub_254209684();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_254209684()
{
  result = qword_27F5BBDA0;
  if (!qword_27F5BBDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BBDA0);
  }

  return result;
}

unint64_t sub_2542096D8(uint64_t a1)
{
  result = sub_25420934C();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_254209728()
{
  result = type metadata accessor for AccessoryEventBaseLegacy(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_2542097AC()
{
  result = qword_27F5BBDB8;
  if (!qword_27F5BBDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BBDB8);
  }

  return result;
}

uint64_t sub_254209864(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v7 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8E50, &qword_254254390);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - v10;
  v28 = 0;
  v29 = 0xE000000000000000;
  sub_25424E688();
  v12 = a1(0);
  v27 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v13 = sub_25424DD08();
  MEMORY[0x259C05CA0](v13);

  MEMORY[0x259C05CA0](0x74617473207B203ALL, 0xEB00000000203A65);
  LOBYTE(v27) = *(v3 + *(v12 + 20));
  sub_25424E7D8();
  MEMORY[0x259C05CA0](0x6F6765746163202CLL, 0xEC000000203A7972);
  v14 = type metadata accessor for EventBase(0);
  LOBYTE(v27) = *(v3 + *(v14 + 24));
  v15 = sub_25424DD08();
  MEMORY[0x259C05CA0](v15);

  MEMORY[0x259C05CA0](0x203A65746164202CLL, 0xE800000000000000);
  sub_25424D8B8();
  sub_25420B5EC(&qword_27F5B9208, MEMORY[0x277CC9578]);
  v16 = sub_25424EA58();
  MEMORY[0x259C05CA0](v16);

  MEMORY[0x259C05CA0](0x203A656D6F68202CLL, 0xE800000000000000);
  v17 = *(v14 + 20);
  sub_25424D948();
  sub_25420B5EC(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
  v18 = sub_25424EA58();
  MEMORY[0x259C05CA0](v18);

  MEMORY[0x259C05CA0](0x203A6D6F6F72202CLL, 0xE800000000000000);
  v19 = type metadata accessor for AccessoryEventBase(0);
  v20 = v7 + v19[5];
  v21 = sub_25424EA58();
  MEMORY[0x259C05CA0](v21);

  MEMORY[0x259C05CA0](0x737365636361202CLL, 0xED0000203A79726FLL);
  v22 = v7 + v19[7];
  v23 = sub_25424EA58();
  MEMORY[0x259C05CA0](v23);

  MEMORY[0x259C05CA0](0x203A72657375202CLL, 0xE800000000000000);
  sub_254149770(v7 + v19[9], v11);
  v24 = sub_25424DD08();
  MEMORY[0x259C05CA0](v24);

  MEMORY[0x259C05CA0](32032, 0xE200000000000000);
  return v28;
}

uint64_t sub_254209C2C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8E50, &qword_254254390);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - v4;
  v22 = 0;
  v23 = 0xE000000000000000;
  sub_25424E688();
  v6 = type metadata accessor for ThermostatAutomationFailureEvent();
  v21 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBE70, &qword_254261460);
  v7 = sub_25424DD08();
  MEMORY[0x259C05CA0](v7);

  MEMORY[0x259C05CA0](0x74617473207B203ALL, 0xEB00000000203A65);
  LOBYTE(v21) = *(v0 + *(v6 + 20));
  sub_25424E7D8();
  MEMORY[0x259C05CA0](0x6F6765746163202CLL, 0xEC000000203A7972);
  v8 = type metadata accessor for EventBase(0);
  LOBYTE(v21) = *(v0 + *(v8 + 24));
  v9 = sub_25424DD08();
  MEMORY[0x259C05CA0](v9);

  MEMORY[0x259C05CA0](0x203A65746164202CLL, 0xE800000000000000);
  sub_25424D8B8();
  sub_25420B5EC(&qword_27F5B9208, MEMORY[0x277CC9578]);
  v10 = sub_25424EA58();
  MEMORY[0x259C05CA0](v10);

  MEMORY[0x259C05CA0](0x203A656D6F68202CLL, 0xE800000000000000);
  v11 = *(v8 + 20);
  sub_25424D948();
  sub_25420B5EC(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
  v12 = sub_25424EA58();
  MEMORY[0x259C05CA0](v12);

  MEMORY[0x259C05CA0](0x203A6D6F6F72202CLL, 0xE800000000000000);
  v13 = type metadata accessor for AccessoryEventBase(0);
  v14 = v1 + v13[5];
  v15 = sub_25424EA58();
  MEMORY[0x259C05CA0](v15);

  MEMORY[0x259C05CA0](0x737365636361202CLL, 0xED0000203A79726FLL);
  v16 = v1 + v13[7];
  v17 = sub_25424EA58();
  MEMORY[0x259C05CA0](v17);

  MEMORY[0x259C05CA0](0x203A72657375202CLL, 0xE800000000000000);
  sub_254149770(v1 + v13[9], v5);
  v18 = sub_25424DD08();
  MEMORY[0x259C05CA0](v18);

  MEMORY[0x259C05CA0](32032, 0xE200000000000000);
  return v22;
}

uint64_t sub_254209FEC(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v9 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8E50, &qword_254254390);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v29 - v12;
  v31 = 0;
  v32 = 0xE000000000000000;
  sub_25424E688();
  v14 = a1(0);
  v30 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v15 = sub_25424DD08();
  MEMORY[0x259C05CA0](v15);

  MEMORY[0x259C05CA0](0x74617473207B203ALL, 0xEB00000000203A65);
  v16 = *(v14 + 20);
  a4(0);
  sub_25424E7D8();
  MEMORY[0x259C05CA0](0x6F6765746163202CLL, 0xEC000000203A7972);
  v17 = type metadata accessor for EventBase(0);
  LOBYTE(v30) = *(v9 + *(v17 + 24));
  v18 = sub_25424DD08();
  MEMORY[0x259C05CA0](v18);

  MEMORY[0x259C05CA0](0x203A65746164202CLL, 0xE800000000000000);
  sub_25424D8B8();
  sub_25420B5EC(&qword_27F5B9208, MEMORY[0x277CC9578]);
  v19 = sub_25424EA58();
  MEMORY[0x259C05CA0](v19);

  MEMORY[0x259C05CA0](0x203A656D6F68202CLL, 0xE800000000000000);
  v20 = *(v17 + 20);
  sub_25424D948();
  sub_25420B5EC(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
  v21 = sub_25424EA58();
  MEMORY[0x259C05CA0](v21);

  MEMORY[0x259C05CA0](0x203A6D6F6F72202CLL, 0xE800000000000000);
  v22 = type metadata accessor for AccessoryEventBase(0);
  v23 = v9 + v22[5];
  v24 = sub_25424EA58();
  MEMORY[0x259C05CA0](v24);

  MEMORY[0x259C05CA0](0x737365636361202CLL, 0xED0000203A79726FLL);
  v25 = v9 + v22[7];
  v26 = sub_25424EA58();
  MEMORY[0x259C05CA0](v26);

  MEMORY[0x259C05CA0](0x203A72657375202CLL, 0xE800000000000000);
  sub_254149770(v9 + v22[9], v13);
  v27 = sub_25424DD08();
  MEMORY[0x259C05CA0](v27);

  MEMORY[0x259C05CA0](32032, 0xE200000000000000);
  return v31;
}

HomeKitEvents::ContactSensorEvent::State_optional __swiftcall ContactSensorEvent.State.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t ContactSensorEvent.state.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ContactSensorEvent();
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t type metadata accessor for ContactSensorEvent()
{
  result = qword_27F5BBE30;
  if (!qword_27F5BBE30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ContactSensorEvent.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25424D8B8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ContactSensorEvent.category.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for EventBase(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t ContactSensorEvent.roomName.getter()
{
  v1 = (v0 + *(type metadata accessor for AccessoryEventBase(0) + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ContactSensorEvent.accessoryIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AccessoryEventBase(0) + 28);
  v4 = sub_25424D948();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ContactSensorEvent.accessoryName.getter()
{
  v1 = (v0 + *(type metadata accessor for AccessoryEventBase(0) + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ContactSensorEvent.userIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AccessoryEventBase(0) + 36);

  return sub_254149770(v3, a1);
}

BOOL static ContactSensorEvent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (!_s13HomeKitEvents9FakeEventV2eeoiySbAC_ACtFZ_0(a1, a2))
  {
    return 0;
  }

  v4 = type metadata accessor for ContactSensorEvent();
  return *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20));
}

uint64_t ContactSensorEvent.hash(into:)()
{
  v1 = v0;
  v2 = sub_25424D948();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8E50, &qword_254254390);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v24 - v9;
  sub_25424D8B8();
  sub_25420B5EC(&qword_27F5B89C0, MEMORY[0x277CC9578]);
  sub_25424DC28();
  v11 = type metadata accessor for EventBase(0);
  v12 = *(v11 + 20);
  sub_25420B5EC(&qword_27F5B89A8, MEMORY[0x277CC95F0]);
  sub_25424DC28();
  MEMORY[0x259C06AA0](qword_254261490[*(v1 + *(v11 + 24))]);
  v13 = type metadata accessor for AccessoryEventBase(0);
  v14 = v1 + v13[5];
  sub_25424DC28();
  v15 = (v1 + v13[6]);
  v16 = *v15;
  v17 = v15[1];
  sub_25424DD88();
  v18 = v1 + v13[7];
  sub_25424DC28();
  v19 = (v1 + v13[8]);
  v20 = *v19;
  v21 = v19[1];
  sub_25424DD88();
  sub_254149770(v1 + v13[9], v10);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    sub_25424EBF8();
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    sub_25424EBF8();
    sub_25424DC28();
    (*(v3 + 8))(v6, v2);
  }

  v22 = type metadata accessor for ContactSensorEvent();
  return MEMORY[0x259C06AA0](*(v1 + *(v22 + 20)));
}

uint64_t ContactSensorEvent.hashValue.getter()
{
  sub_25424EBD8();
  ContactSensorEvent.hash(into:)();
  return sub_25424EC28();
}

uint64_t sub_25420AA8C()
{
  sub_25424EBD8();
  ContactSensorEvent.hash(into:)();
  return sub_25424EC28();
}

uint64_t sub_25420AAD0()
{
  sub_25424EBD8();
  ContactSensorEvent.hash(into:)();
  return sub_25424EC28();
}

uint64_t ContactSensorEvent.init(date:homeIdentifier:roomIdentifier:roomName:accessoryIdentifier:accessoryName:state:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char *a10)
{
  v28 = *a10;
  v16 = type metadata accessor for AccessoryEventBase(0);
  v17 = v16[9];
  v18 = sub_25424D948();
  v19 = *(v18 - 8);
  (*(v19 + 56))(a9 + v17, 1, 1, v18);
  v20 = sub_25424D8B8();
  (*(*(v20 - 8) + 32))(a9, a1, v20);
  v21 = type metadata accessor for EventBase(0);
  v22 = *(v19 + 32);
  v22(a9 + v21[5], a2, v18);
  *(a9 + v21[6]) = 1;
  v23 = (a9 + v21[7]);
  v23[1] = 0;
  v23[2] = 0;
  *v23 = 15;
  v22(a9 + v16[5], a3, v18);
  v24 = (a9 + v16[6]);
  *v24 = a4;
  v24[1] = a5;
  v22(a9 + v16[7], a6, v18);
  v25 = (a9 + v16[8]);
  *v25 = a7;
  v25[1] = a8;
  result = type metadata accessor for ContactSensorEvent();
  *(a9 + *(result + 20)) = v28;
  return result;
}

uint64_t ContactSensorEvent.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for AccessoryEventBaseLegacy(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_254140708(a1, v12);
  sub_254231924(v12, v8);
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_25414920C(a1, v12);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v10 = v12[0];
  sub_25414A414(v8, a2);
  result = type metadata accessor for ContactSensorEvent();
  *(a2 + *(result + 20)) = v10;
  return result;
}

uint64_t ContactSensorEvent.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8E60, &qword_254254A10);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11[-v7];
  result = sub_254231F94(a1);
  if (!v2)
  {
    v11[15] = *(v1 + *(type metadata accessor for ContactSensorEvent() + 20));
    v10 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_25412F1C4();
    sub_25424EC78();
    v11[14] = 1;
    sub_25420B068();
    sub_25424EA18();
    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

unint64_t sub_25420B068()
{
  result = qword_27F5BBDC0;
  if (!qword_27F5BBDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BBDC0);
  }

  return result;
}

unint64_t sub_25420B0C0()
{
  result = qword_27F5BBDC8;
  if (!qword_27F5BBDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BBDC8);
  }

  return result;
}

unint64_t sub_25420B118()
{
  result = qword_27F5BBDD0;
  if (!qword_27F5BBDD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5BBDD8, &qword_2542611D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BBDD0);
  }

  return result;
}

unint64_t sub_25420B180()
{
  result = qword_27F5BBDE0;
  if (!qword_27F5BBDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BBDE0);
  }

  return result;
}

uint64_t sub_25420B1D4(void *a1)
{
  a1[1] = sub_25420B5EC(&qword_27F5BB2C8, type metadata accessor for ContactSensorEvent);
  a1[2] = sub_25420B5EC(&qword_27F5BBDF0, type metadata accessor for ContactSensorEvent);
  result = sub_25420B5EC(&qword_27F5BBDF8, type metadata accessor for ContactSensorEvent);
  a1[3] = result;
  return result;
}

uint64_t sub_25420B2C8(void *a1)
{
  a1[1] = sub_25420B5EC(&qword_27F5BBE08, type metadata accessor for ContactSensorEvent);
  a1[2] = sub_25420B5EC(&qword_27F5BBE10, type metadata accessor for ContactSensorEvent);
  result = sub_25420B5EC(&qword_27F5BBE18, type metadata accessor for ContactSensorEvent);
  a1[3] = result;
  return result;
}

unint64_t sub_25420B3BC(void *a1)
{
  a1[1] = sub_25414ABD8();
  a1[2] = sub_25420B068();
  result = sub_25420B3F4();
  a1[3] = result;
  return result;
}

unint64_t sub_25420B3F4()
{
  result = qword_27F5BBE20;
  if (!qword_27F5BBE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BBE20);
  }

  return result;
}

unint64_t sub_25420B448(uint64_t a1)
{
  result = sub_25420B470();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25420B470()
{
  result = qword_27F5BBE28;
  if (!qword_27F5BBE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BBE28);
  }

  return result;
}

unint64_t sub_25420B4C4(uint64_t a1)
{
  result = sub_25420B180();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25420B514()
{
  result = type metadata accessor for AccessoryEventBaseLegacy(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_25420B598()
{
  result = qword_27F5BBE40;
  if (!qword_27F5BBE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BBE40);
  }

  return result;
}

uint64_t sub_25420B5EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25420B638@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v60 = a3;
  v69 = *MEMORY[0x277D85DE8];
  v7 = sub_25424DB08();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_25424D948();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v59 = v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_25424DB38();
  v16 = *(*(v61 - 8) + 64);
  result = MEMORY[0x28223BE20](v61);
  v20 = v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    v22 = BYTE6(a2);
    if (v21)
    {
      v22 = a1 >> 32;
      v23 = a1;
    }

    else
    {
      v23 = 0;
    }

    if (v23 == v22)
    {
      goto LABEL_41;
    }

    goto LABEL_9;
  }

  if (v21 == 2 && *(a1 + 16) != *(a1 + 24))
  {
LABEL_9:
    v58 = v13;
    v24 = v60;
    v25 = *(v60 + 16);
    if (!v25)
    {
      goto LABEL_39;
    }

    v50 = v12;
    v51 = v11;
    v52 = v8;
    v53 = v7;
    v54 = v18;
    v55 = a4;
    sub_25424DB28();
    sub_254140660(a1, a2);
    sub_25420BCC0(a1, a2);
    v49[1] = 0;
    v56 = a1;
    v57 = a2;
    sub_254134D04(a1, a2);
    v26 = 0;
    v27 = (v24 + 40);
    v28 = v24;
    while (1)
    {
      if (v26 >= *(v28 + 16))
      {
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
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
      }

      v30 = *(v27 - 1);
      v29 = *v27;
      v31 = *v27 >> 62;
      if (v31 > 1)
      {
        if (v31 != 2)
        {
          goto LABEL_40;
        }

        v32 = *(v30 + 16);
        v33 = *(v30 + 24);
        if (v32 == v33)
        {
          goto LABEL_33;
        }

        sub_254140660(*(v27 - 1), *v27);
        if (sub_25424D268() && __OFSUB__(v32, sub_25424D298()))
        {
          goto LABEL_37;
        }

        if (__OFSUB__(v33, v32))
        {
          goto LABEL_36;
        }
      }

      else
      {
        if (!v31)
        {
          if (!BYTE6(v29))
          {
            goto LABEL_32;
          }

          v64 = *(v27 - 1);
          v65 = v29;
          v66 = WORD2(v29);
          sub_25420BF80(&qword_281407068, MEMORY[0x277CC5540]);
          sub_25424DAF8();
          sub_254134D04(v30, v29);
          goto LABEL_13;
        }

        if (v30 >> 32 == v30)
        {
          goto LABEL_34;
        }

        if (v30 >> 32 < v30)
        {
          goto LABEL_35;
        }

        sub_254140660(*(v27 - 1), *v27);
        if (sub_25424D268() && __OFSUB__(v30, sub_25424D298()))
        {
          goto LABEL_38;
        }
      }

      sub_25424D288();
      sub_25420BF80(&qword_281407068, MEMORY[0x277CC5540]);
      sub_25424DAF8();
      sub_254134D04(v30, v29);
      v28 = v60;
LABEL_13:
      ++v26;
      v27 += 2;
      if (v25 == v26)
      {

        v34 = v59;
        sub_25424D938();
        sub_25424D928();
        (*(v58 + 8))(v34, v50);
        v35 = v51;
        v49[0] = v20;
        sub_25424DB18();
        v36 = v53;
        v67 = v53;
        v68 = sub_25420BF80(&unk_281407070, MEMORY[0x277CC5290]);
        v37 = __swift_allocate_boxed_opaque_existential_1(&v64);
        v38 = v52;
        (*(v52 + 16))(v37, v35, v36);
        __swift_project_boxed_opaque_existential_1(&v64, v67);
        sub_25424D308();
        (*(v38 + 8))(v35, v36);
        v39 = v62;
        v40 = v63;
        __swift_destroy_boxed_opaque_existential_1(&v64);
        sub_254140660(v39, v40);
        v41 = sub_25412C128(v39, v40);
        v42 = *(v41 + 38);
        v43 = *(v41 + 40);
        LODWORD(v53) = *(v41 + 41);
        LOWORD(v38) = *(v41 + 45);
        LOBYTE(v36) = *(v41 + 47);
        LODWORD(v60) = *(v41 + 39);
        LODWORD(v59) = *(v41 + 37);
        LODWORD(v58) = *(v41 + 36);
        v44 = *(v41 + 35);
        v45 = *(v41 + 34);
        v46 = *(v41 + 33);
        v47 = *(v41 + 32);

        sub_25424D918();
        sub_254134D04(v39, v40);
        sub_254134D04(v56, v57);
        result = (*(v54 + 8))(v49[0], v61);
        v48 = *MEMORY[0x277D85DE8];
        return result;
      }
    }
  }

LABEL_41:
  __break(1u);
  return result;
}

uint64_t sub_25420BCC0(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_8:
      sub_25424DB38();
      sub_25420BF80(&qword_281407068, MEMORY[0x277CC5540]);
      result = sub_25424DAF8();
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

  result = sub_25420BEA0(v3, v4);
LABEL_9:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_25420BEA0(uint64_t a1, uint64_t a2)
{
  result = sub_25424D268();
  if (!result || (result = sub_25424D298(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_25424D288();
      sub_25424DB38();
      sub_25420BF80(&qword_281407068, MEMORY[0x277CC5540]);
      return sub_25424DAF8();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_25420BF80(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static LoggedObject.logger.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v37 = a2;
  v40 = a3;
  v4 = sub_25424DAA8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  (MEMORY[0x28223BE20])();
  v35 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBE98, &unk_2542614D0) - 8) + 64);
  v9 = (MEMORY[0x28223BE20])();
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v39 = &v34 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v34 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v34 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v34 - v20;
  type metadata accessor for LoggedObjectPropertyKey();
  inited = swift_initStaticObject();
  *&v42 = a1;
  MetatypeMetadata = swift_getMetatypeMetadata();
  v23 = sub_25424EAA8();
  v38 = inited;
  v24 = objc_getAssociatedObject(v23, inited);
  swift_unknownObjectRelease();
  if (v24)
  {
    sub_25424E5D8();
    swift_unknownObjectRelease();
  }

  else
  {
    v42 = 0u;
    v43 = 0u;
  }

  v41 = v11;
  v44[0] = v42;
  v44[1] = v43;
  if (*(&v43 + 1))
  {
    v25 = swift_dynamicCast();
    v26 = *(v5 + 56);
    v26(v21, v25 ^ 1u, 1, v4);
  }

  else
  {
    sub_254132E5C(v44, &qword_27F5BA568, &qword_254259B88);
    v26 = *(v5 + 56);
    v26(v21, 1, 1, v4);
  }

  sub_25420C4E0(v21, v19);
  v27 = *(v5 + 48);
  v28 = v27(v19, 1, v4);
  sub_254132E5C(v19, &qword_27F5BBE98, &unk_2542614D0);
  if (v28 == 1)
  {
    (*(v37 + 16))(a1);
    sub_25424DA98();
    v26(v16, 0, 1, v4);
    sub_25420C5F0(v16, v21);
    *&v44[0] = a1;
    v29 = sub_25424EAA8();
    v30 = v39;
    sub_25420C4E0(v21, v39);
    if (v27(v30, 1, v4) == 1)
    {
      v31 = 0;
    }

    else
    {
      (*(v5 + 16))(v35, v30, v4);
      v31 = sub_25424EB18();
      (*(v5 + 8))(v30, v4);
    }

    objc_setAssociatedObject(v29, v38, v31, 0x301);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  v32 = v41;
  sub_25420C4E0(v21, v41);
  result = v27(v32, 1, v4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v5 + 32))(v40, v32, v4);
    return sub_254132E5C(v21, &qword_27F5BBE98, &unk_2542614D0);
  }

  return result;
}

uint64_t sub_25420C4E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBE98, &unk_2542614D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static Log.logger(category:)()
{

  return sub_25424DA98();
}

uint64_t sub_25420C5F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBE98, &unk_2542614D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t static LoggedObject<>.logger.getter()
{
  swift_getMetatypeMetadata();
  sub_25424DD08();
  return sub_25424DA98();
}

uint64_t sub_25420C7A4(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 16);
  if (v3 == 1)
  {
    return result;
  }

  v5 = result;
  v7 = *v2;
  v6 = *(v2 + 8);
  if (result == 91 && a2 == 0xE100000000000000 || (sub_25424EAB8() & 1) != 0)
  {
    if (v3)
    {
      v8 = 2;

      return sub_25420D484(v8);
    }

    result = swift_beginAccess();
    v9 = *(v7 + 16);
    v10 = *(v9 + 16);
    if (v10)
    {
      v11 = *(v9 + v10 + 31);
      if ((v11 - 2) < 2)
      {
        v8 = 2;
        return sub_25420D484(v8);
      }

      goto LABEL_32;
    }

    goto LABEL_186;
  }

  if (v5 == 93 && a2 == 0xE100000000000000 || (sub_25424EAB8() & 1) != 0)
  {
    if (v3)
    {
      v12 = v2;
      sub_25424E688();

      goto LABEL_18;
    }

    result = swift_beginAccess();
    v16 = *(v7 + 16);
    v17 = *(v16 + 16);
    if (!v17)
    {
      goto LABEL_186;
    }

    v18 = v2;
    v19 = *(v16 + v17 + 31);
    switch(v19)
    {
      case 4:

        sub_25420D918();
        swift_beginAccess();
        v26 = *(v7 + 16);
        v27 = *(v26 + 16);
        if (v27)
        {
          if (*(v26 + v27 + 31) == 2)
          {

            sub_25420D918();
            sub_254183380(v7, v6, 0);
LABEL_41:
            swift_beginAccess();
            v28 = *(*(v7 + 16) + 16);
            result = sub_254183380(v7, v6, 0);
            if (!v28)
            {
              result = sub_254183380(v7, v6, 0);
              *v18 = 0;
              *(v18 + 8) = 0;
              *(v18 + 16) = 2;
            }

            return result;
          }

          v35 = 0;
          v36 = v7;
          v37 = v6;
        }

        else
        {
          sub_254183380(v7, v6, 0);
          *v2 = 0;
          *(v2 + 8) = 0;
          *(v2 + 16) = 2;
          v33 = *(v7 + 16);
          v34 = *(v33 + 16);
          if (!v34)
          {
            goto LABEL_186;
          }

          if (*(v33 + v34 + 31) == 2)
          {
            result = sub_254183380(v7, v6, 0);
            *v2 = xmmword_254261570;
LABEL_66:
            *(v2 + 16) = 1;
            return result;
          }

          v36 = 0;
          v37 = 0;
          v35 = 2;
        }

        v41 = sub_25420DB04(v36, v37, v35);
        MEMORY[0x259C05CA0](v41);

        sub_254183380(v7, v6, 0);
        result = sub_254183380(v36, v37, v35);
        break;
      case 3:
        sub_25420E078(v7, v6, 0);
        v25 = sub_25420DB04(v7, v6, 0);
        MEMORY[0x259C05CA0](v25);

        sub_254183380(v7, v6, 0);
        result = sub_254183380(v7, v6, 0);
        break;
      case 2:

        sub_25420D918();
        goto LABEL_41;
      default:
        return result;
    }

    *v2 = 0xD000000000000014;
    *(v2 + 8) = 0x8000000254251940;
    goto LABEL_66;
  }

  if (v5 == 123 && a2 == 0xE100000000000000 || (sub_25424EAB8() & 1) != 0)
  {
    if (!v3)
    {
      result = swift_beginAccess();
      v21 = *(v7 + 16);
      v22 = *(v21 + 16);
      if (v22)
      {
        v11 = *(v21 + v22 + 31);
        if ((v11 - 2) < 2)
        {
          v8 = 3;
          return sub_25420D484(v8);
        }

LABEL_32:
        if (v11 != 4)
        {
          return result;
        }

        goto LABEL_33;
      }

LABEL_186:
      result = sub_25424E858();
      __break(1u);
      return result;
    }

LABEL_28:
    v20 = sub_25420DB04(v7, v6, v3);
    MEMORY[0x259C05CA0](v20);

    *v2 = 0xD000000000000018;
    *(v2 + 8) = 0x80000002542518C0;
    *(v2 + 16) = 1;
    return result;
  }

  if ((v5 != 125 || a2 != 0xE100000000000000) && (sub_25424EAB8() & 1) == 0)
  {
    if (v5 == 92 && a2 == 0xE100000000000000 || (sub_25424EAB8() & 1) != 0)
    {
      if (v3)
      {
        goto LABEL_28;
      }

      swift_beginAccess();
      v38 = *(v7 + 16);
      v39 = *(v38 + 16);
      if (!v39)
      {
        goto LABEL_186;
      }

      v40 = *(v38 + v39 + 31);
      if ((v40 - 2) < 2)
      {
        v23 = "Expected string, not ";
        goto LABEL_34;
      }

      if (v40 == 4)
      {
LABEL_33:
        v23 = "Expected number, not ";
LABEL_34:
        v87 = (v23 - 32) | 0x8000000000000000;
        sub_25420E078(v7, v6, 0);
        v24 = sub_25420DB04(v7, v6, 0);
        v12 = v2;
LABEL_35:
        MEMORY[0x259C05CA0](v24);

        sub_254183380(v7, v6, 0);
        result = sub_254183380(v7, v6, 0);
        v14 = 0xD000000000000015;
        v15 = v87;
        goto LABEL_36;
      }

      sub_25420E078(v7, v6, 0);
      v46 = (v40 & 1) == 0;
LABEL_79:
      sub_25420DA10(v46);
      return sub_254183380(v7, v6, 0);
    }

    if (v5 == 34 && a2 == 0xE100000000000000 || (sub_25424EAB8() & 1) != 0)
    {
      if (v3)
      {
        goto LABEL_28;
      }

      swift_beginAccess();
      v43 = *(v7 + 16);
      v44 = *(v43 + 16);
      if (!v44)
      {
        goto LABEL_186;
      }

      v45 = *(v43 + v44 + 31);
      if ((v45 - 2) < 2)
      {
        v8 = 0;
        return sub_25420D484(v8);
      }

      v12 = v2;
      if (v45 == 4)
      {
LABEL_87:
        v32 = "Expected number, not ";
LABEL_88:
        v87 = (v32 - 32) | 0x8000000000000000;
        sub_25420E078(v7, v6, 0);
        v24 = sub_25420DB04(v7, v6, 0);
        goto LABEL_35;
      }

      sub_25420E078(v7, v6, 0);
      if ((v45 & 1) == 0)
      {
        goto LABEL_68;
      }

      goto LABEL_171;
    }

    if (v5 == 48 && a2 == 0xE100000000000000)
    {
      goto LABEL_82;
    }

    v49 = sub_25424EAB8();
    v50 = v5 == 49 && a2 == 0xE100000000000000;
    v51 = v50;
    if ((v49 & 1) != 0 || v51)
    {
      goto LABEL_82;
    }

    v52 = sub_25424EAB8();
    v53 = v5 == 50 && a2 == 0xE100000000000000;
    v54 = v53;
    if ((v52 & 1) != 0 || v54)
    {
      goto LABEL_82;
    }

    v55 = sub_25424EAB8();
    v56 = v5 == 51 && a2 == 0xE100000000000000;
    v57 = v56;
    if ((v55 & 1) != 0 || v57)
    {
      goto LABEL_82;
    }

    v58 = sub_25424EAB8();
    v59 = v5 == 52 && a2 == 0xE100000000000000;
    v60 = v59;
    if ((v58 & 1) != 0 || v60)
    {
      goto LABEL_82;
    }

    v61 = sub_25424EAB8();
    v62 = v5 == 53 && a2 == 0xE100000000000000;
    v63 = v62;
    if ((v61 & 1) != 0 || v63)
    {
      goto LABEL_82;
    }

    v64 = sub_25424EAB8();
    v65 = v5 == 54 && a2 == 0xE100000000000000;
    v66 = v65;
    if ((v64 & 1) != 0 || v66)
    {
      goto LABEL_82;
    }

    v67 = sub_25424EAB8();
    v68 = v5 == 55 && a2 == 0xE100000000000000;
    v69 = v68;
    if (v67 & 1) != 0 || v69 || ((v70 = sub_25424EAB8(), v5 == 56) ? (v71 = a2 == 0xE100000000000000) : (v71 = 0), !v71 ? (v72 = 0) : (v72 = 1), (v70 & 1) != 0 || (v72 & 1) != 0 || ((v73 = sub_25424EAB8(), v5 == 57) ? (v74 = a2 == 0xE100000000000000) : (v74 = 0), !v74 ? (v75 = 0) : (v75 = 1), (v73 & 1) != 0 || (v75 & 1) != 0 || (sub_25424EAB8())))
    {
LABEL_82:
      v12 = v2;
      if (!v3)
      {
        result = swift_beginAccess();
        v47 = *(v7 + 16);
        v48 = *(v47 + 16);
        if (v48)
        {
          if (*(v47 + v48 + 31) != 2)
          {
            return result;
          }

          v8 = 4;
          return sub_25420D484(v8);
        }

        goto LABEL_186;
      }

LABEL_18:
      v13 = sub_25420DB04(v7, v6, v3);
      MEMORY[0x259C05CA0](v13);

      v14 = 0xD000000000000018;
      v15 = 0x80000002542518C0;
LABEL_36:
      *v12 = v14;
      *(v12 + 8) = v15;
      *(v12 + 16) = 1;
      return result;
    }

    v76 = v2;
    if (v5 == 44 && a2 == 0xE100000000000000 || (sub_25424EAB8() & 1) != 0)
    {
      if (v3)
      {
        v88 = 0xD000000000000018;
        v89 = 0x80000002542518C0;
        v77 = sub_25420DB04(v7, v6, v3);
        MEMORY[0x259C05CA0](v77);

        goto LABEL_167;
      }
    }

    else
    {
      result = sub_25424DC38();
      if ((result & 1) == 0)
      {
        if (!v3)
        {
          result = swift_beginAccess();
          v84 = *(v7 + 16);
          v85 = *(v84 + 16);
          if (!v85)
          {
            goto LABEL_186;
          }

          v86 = *(v84 + v85 + 31);
          if ((v86 - 2) < 2)
          {
            return result;
          }

          if (v86 != 4)
          {
            if ((v86 & 1) == 0)
            {
              return result;
            }

            sub_25420E078(v7, v6, 0);
LABEL_171:
            v46 = 0;
            goto LABEL_79;
          }

          sub_25420E078(v7, v6, 0);
          sub_25424E688();
          MEMORY[0x259C05CA0](0xD000000000000016, 0x8000000254251850);
          sub_25424DC48();
          MEMORY[0x259C05CA0](39, 0xE100000000000000);
          sub_254183380(v7, v6, 0);
          result = sub_254183380(v7, v6, 0);
          v78 = 0;
          v79 = 0xE000000000000000;
          goto LABEL_168;
        }

        v88 = 0;
        v89 = 0xE000000000000000;
        sub_25424E688();
        MEMORY[0x259C05CA0](0xD00000000000002FLL, 0x8000000254251890);
        sub_25424DC48();
        result = MEMORY[0x259C05CA0](39, 0xE100000000000000);
LABEL_167:
        v78 = v88;
        v79 = v89;
LABEL_168:
        *v2 = v78;
        *(v2 + 8) = v79;
        v80 = 1;
        goto LABEL_169;
      }

      if (v3)
      {
        return result;
      }
    }

    result = swift_beginAccess();
    v81 = *(v7 + 16);
    v82 = *(v81 + 16);
    if (!v82)
    {
      goto LABEL_186;
    }

    if (*(v81 + v82 + 31) != 4)
    {
      return result;
    }

    sub_25420E078(v7, v6, 0);
    sub_25420D918();
    swift_beginAccess();
    v83 = *(*(v7 + 16) + 16);
    result = sub_254183380(v7, v6, 0);
    if (v83)
    {
      return result;
    }

    result = sub_254183380(v7, v6, 0);
    *v76 = 0;
    *(v76 + 8) = 0;
    v80 = 2;
LABEL_169:
    *(v76 + 16) = v80;
    return result;
  }

  if (v3)
  {
    goto LABEL_28;
  }

  result = swift_beginAccess();
  v29 = *(v7 + 16);
  v30 = *(v29 + 16);
  if (!v30)
  {
    goto LABEL_186;
  }

  v12 = v2;
  v31 = *(v29 + v30 + 31);
  if (v31 == 4)
  {
    goto LABEL_87;
  }

  if (v31 != 3)
  {
    if (v31 != 2)
    {
      return result;
    }

    v32 = "Expected object, not ";
    goto LABEL_88;
  }

  sub_25420E078(v7, v6, 0);
LABEL_68:
  sub_25420D918();
  swift_beginAccess();
  v42 = *(*(v7 + 16) + 16);
  result = sub_254183380(v7, v6, 0);
  if (!v42)
  {
    result = sub_254183380(v7, v6, 0);
    *v12 = 0;
    *(v12 + 8) = 0;
    *(v12 + 16) = 2;
  }

  return result;
}

uint64_t sub_25420D484(uint64_t result)
{
  v2 = result;
  if (*(v1 + 16))
  {
    if (*(v1 + 16) != 1)
    {
      type metadata accessor for JSONArrayScanner.InternalState.Stack();
      v3 = swift_allocObject();
      v4 = MEMORY[0x277D84F90];
      *(v3 + 16) = MEMORY[0x277D84F90];
      swift_beginAccess();
      *(v3 + 16) = v4;
      v5 = sub_2541B0AEC(0, 1, 1, v4);
      *(v3 + 16) = v5;
      v7 = *(v5 + 2);
      v6 = *(v5 + 3);
      if (v7 >= v6 >> 1)
      {
        v5 = sub_2541B0AEC((v6 > 1), v7 + 1, 1, v5);
      }

      *(v5 + 2) = v7 + 1;
      v5[v7 + 32] = v2;
      *(v3 + 16) = v5;
      result = swift_endAccess();
      *v1 = v3;
      *(v1 + 8) = 0;
      *(v1 + 16) = 0;
    }
  }

  else
  {
    v9 = *v1;
    v8 = *(v1 + 8);
    swift_beginAccess();
    v10 = *(v9 + 16);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v9 + 16) = v10;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = sub_2541B0AEC(0, *(v10 + 2) + 1, 1, v10);
      *(v9 + 16) = v10;
    }

    v13 = *(v10 + 2);
    v12 = *(v10 + 3);
    if (v13 >= v12 >> 1)
    {
      v10 = sub_2541B0AEC((v12 > 1), v13 + 1, 1, v10);
    }

    *(v10 + 2) = v13 + 1;
    v10[v13 + 32] = v2;
    *(v9 + 16) = v10;
    swift_endAccess();
    return sub_254183380(v9, v8, 0);
  }

  return result;
}

uint64_t sub_25420D628(char a1)
{
  switch(a1)
  {
    case 2:
      return 0x7961727261;
    case 3:
      return 0x7463656A626FLL;
    case 4:
      return 0x7265626D756ELL;
  }

  if (a1)
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (a1)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x259C05CA0](v2, v3);

  MEMORY[0x259C05CA0](v2, v3);

  MEMORY[0x259C05CA0](41, 0xE100000000000000);
  return 0x2820676E69727473;
}

BOOL sub_25420D73C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  switch(v2)
  {
    case 2:
      return v3 == 2;
    case 3:
      return v3 == 3;
    case 4:
      return v3 == 4;
  }

  if ((v3 - 2) < 3)
  {
    return 0;
  }

  return (v3 ^ v2 ^ 1) & 1;
}

uint64_t sub_25420D7AC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t get_enum_tag_for_layout_string_13HomeKitEvents16JSONArrayScannerV13InternalState33_16E2CA6E7C5E738EB4F331A231BC499FLLO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t getEnumTagSinglePayload for JSONArrayScanner.Container(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_19;
  }

  v2 = a2 + 4;
  if (a2 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_19;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_19;
      }
    }

    return (*a1 | (v5 << 8)) - 4;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 4;
    }
  }

LABEL_19:
  v7 = *a1;
  if (v7 < 2)
  {
    return 0;
  }

  v8 = (v7 + 2147483646) & 0x7FFFFFFF;
  result = v8 - 2;
  if (v8 <= 2)
  {
    return 0;
  }

  return result;
}

uint64_t sub_25420D8D4(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_25420D8F0(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t sub_25420D918()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  if (*(v1 + 2))
  {
    swift_beginAccess();
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v2 = *(v1 + 2);
      if (v2)
      {
LABEL_4:
        v3 = v2 - 1;
        *(v1 + 2) = v3;
        v4 = v1[v3 + 32];
        *(v0 + 16) = v1;
        swift_endAccess();
        return v4;
      }
    }

    else
    {
      v1 = sub_2541EADBC(v1);
      v2 = *(v1 + 2);
      if (v2)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  result = sub_25424E858();
  __break(1u);
  return result;
}

uint64_t sub_25420DA10(char a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  v4 = *(v3 + 2);
  if (v4)
  {
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + 16) = v3;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v3 = sub_2541EADBC(v3);
    }

    if (v4 <= *(v3 + 2))
    {
      v3[v4 + 31] = a1;
      *(v1 + 16) = v3;
      return swift_endAccess();
    }

    __break(1u);
  }

  result = sub_25424E858();
  __break(1u);
  return result;
}

uint64_t sub_25420DB04(uint64_t a1, uint64_t a2, char a3)
{
  result = 1819047278;
  if (a3)
  {
    if (a3 == 1)
    {
      MEMORY[0x259C05CA0](a1);
      return 0x203A726F727265;
    }
  }

  else
  {
    swift_beginAccess();
    v5 = *(a1 + 16);
    v6 = *(v5 + 16);
    if (v6)
    {
      if (v6 == 1)
      {
        v7 = 1953460082;
      }

      else
      {
        v7 = 0x64657473656ELL;
      }

      if (v6 == 1)
      {
        v8 = 0xE400000000000000;
      }

      else
      {
        v8 = 0xE600000000000000;
      }

      if (*(v5 + v6 + 31) == 2)
      {
        sub_25424E688();

        v9 = 0xD000000000000012;
      }

      else
      {
        sub_25424E688();

        v9 = 0xD000000000000013;
      }

      MEMORY[0x259C05CA0](v7, v8);

      MEMORY[0x259C05CA0](41, 0xE100000000000000);
      return v9;
    }

    else
    {
      return 1819047278;
    }
  }

  return result;
}

uint64_t sub_25420DD10(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v6 = *v3++;
      v5 = v6;
      v7 = *v4;
      if (v6 == 2)
      {
        if (v7 != 2)
        {
          return 0;
        }
      }

      else if (v5 == 3)
      {
        if (v7 != 3)
        {
          return 0;
        }
      }

      else if (v5 == 4)
      {
        if (v7 != 4)
        {
          return 0;
        }
      }

      else if (v7 - 2) < 3 || ((v7 ^ v5))
      {
        return 0;
      }

      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_25420DDB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  for (i = 0; ; i += 368)
  {
    v7 = *(a1 + i + 32);
    v6 = *(a1 + i + 40);
    v8 = *(a1 + i + 48);
    v9 = *(a1 + i + 104);
    v57[2] = *(a1 + i + 88);
    v57[3] = v9;
    v58[0] = *(a1 + i + 120);
    *(v58 + 9) = *(a1 + i + 129);
    v10 = *(a1 + i + 72);
    v57[0] = *(a1 + i + 56);
    v57[1] = v10;
    v11 = *(a1 + i + 168);
    v53[0] = *(a1 + i + 152);
    v53[1] = v11;
    v12 = *(a1 + i + 184);
    v13 = *(a1 + i + 200);
    v14 = *(a1 + i + 216);
    *(v54 + 9) = *(a1 + i + 225);
    v53[3] = v13;
    v54[0] = v14;
    v53[2] = v12;
    v15 = *(a1 + i + 248);
    v16 = *(a1 + i + 264);
    v17 = *(a1 + i + 280);
    *(v50 + 9) = *(a1 + i + 289);
    v49[1] = v16;
    v50[0] = v17;
    v49[0] = v15;
    v18 = *(a1 + i + 312);
    v19 = *(a1 + i + 328);
    v20 = *(a1 + i + 344);
    *&v46[9] = *(a1 + i + 353);
    v45[1] = v19;
    *v46 = v20;
    v45[0] = v18;
    result = 0;
    v23 = *(a1 + i + 376);
    v22 = *(a1 + i + 384);
    v24 = *(a1 + i + 392);
    v25 = a2 + i;
    v27 = *(a2 + i + 32);
    v26 = *(a2 + i + 40);
    v28 = *(a2 + i + 104);
    v59[2] = *(a2 + i + 88);
    v59[3] = v28;
    v60[0] = *(a2 + i + 120);
    *(v60 + 9) = *(a2 + i + 129);
    v29 = *(a2 + i + 72);
    v59[0] = *(a2 + i + 56);
    v59[1] = v29;
    v30 = *(a2 + i + 168);
    v55[0] = *(a2 + i + 152);
    v55[1] = v30;
    v31 = *(a2 + i + 184);
    v32 = *(a2 + i + 200);
    v33 = *(a2 + i + 216);
    *(v56 + 9) = *(a2 + i + 225);
    v55[3] = v32;
    v56[0] = v33;
    v55[2] = v31;
    v34 = *(a2 + i + 248);
    v35 = *(a2 + i + 264);
    v36 = *(a2 + i + 280);
    *(v52 + 9) = *(a2 + i + 289);
    v51[1] = v35;
    v52[0] = v36;
    v51[0] = v34;
    v37 = *(a2 + i + 312);
    v38 = *(a2 + i + 328);
    v39 = *(a2 + i + 344);
    v40 = *(a2 + i + 48);
    *&v48[9] = *(a2 + i + 353);
    v47[1] = v38;
    *v48 = v39;
    v47[0] = v37;
    if (v7 != v27 || v6 != v26 || v8 != v40)
    {
      break;
    }

    v42 = *(v25 + 376);
    v41 = *(v25 + 384);
    v43 = *(v25 + 392);
    if ((sub_254226694(v57, v59) & 1) == 0 || (sub_254226694(v53, v55) & 1) == 0 || (sub_2542265D0(v49, v51) & 1) == 0)
    {
      return 0;
    }

    v44 = sub_2542265D0(v45, v47);
    result = 0;
    if (v44 & 1) == 0 || v23 != v42 || v22 != v41 || ((v24 ^ v43))
    {
      return result;
    }

    if (!--v2)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_25420E000(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 == *a2)
  {
    v5 = 1;
  }

  else
  {
    swift_beginAccess();
    v4 = *(v2 + 16);
    swift_beginAccess();
    v5 = sub_25420DD10(v4, *(v3 + 16));
  }

  return v5 & 1;
}

uint64_t sub_25420E078(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  if (!a3)
  {
  }

  return result;
}

uint64_t sub_25420E098(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (!a3)
  {
    if (!a6)
    {
      if (a1 != a4)
      {
        swift_beginAccess();
        v10 = *(a1 + 16);
        swift_beginAccess();
        return sub_25420DD10(v10, *(a4 + 16)) & 1;
      }

      return 1;
    }

    return 0;
  }

  if (a3 != 1)
  {
    return a6 == 2 && !(a5 | a4);
  }

  if (a6 != 1)
  {
    return 0;
  }

  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  return sub_25424EAB8();
}

uint64_t sub_25420E228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = a1;
  v33 = a3;
  v31 = a2;
  v3 = sub_25424D8B8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v28 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BBEC0, &unk_2542617F0);
  v6 = *(v30 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v30);
  v9 = &v26 - v8;
  v27 = &v26 - v8;
  v10 = type metadata accessor for CKQueryAsyncSequence();
  v29 = *(v10 - 8);
  v11 = *(v29 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B90C0, &qword_254253F20);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v26 - v15;
  v17 = sub_25424E128();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  sub_25420F954(v31, v12);
  v18 = v9;
  v19 = v30;
  (*(v6 + 16))(v18, v32, v30);
  v20 = v3;
  (*(v4 + 16))(&v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v33, v3);
  v21 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v22 = (v11 + *(v6 + 80) + v21) & ~*(v6 + 80);
  v23 = (v7 + *(v4 + 80) + v22) & ~*(v4 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  sub_25420F9B8(v12, v24 + v21);
  (*(v6 + 32))(v24 + v22, v27, v19);
  (*(v4 + 32))(v24 + v23, v28, v20);
  sub_25419CC1C(0, 0, v16, &unk_254261808, v24);
}

uint64_t sub_25420E58C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[11] = a4;
  v7 = sub_25424E0A8();
  v6[14] = v7;
  v8 = *(v7 - 8);
  v6[15] = v8;
  v9 = *(v8 + 64) + 15;
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  v10 = sub_25424D8B8();
  v6[18] = v10;
  v11 = *(v10 - 8);
  v6[19] = v11;
  v12 = *(v11 + 64) + 15;
  v6[20] = swift_task_alloc();
  v13 = type metadata accessor for CKQueryAsyncSequence();
  v6[21] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  v15 = sub_25424DAA8();
  v6[29] = v15;
  v16 = *(v15 - 8);
  v6[30] = v16;
  v17 = *(v16 + 64) + 15;
  v6[31] = swift_task_alloc();
  v6[32] = swift_task_alloc();
  v6[33] = swift_task_alloc();
  v6[34] = swift_task_alloc();
  v6[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25420E7BC, 0, 0);
}

uint64_t sub_25420E7BC()
{
  v37 = v0;
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[11];
  sub_25421BB60(v0[35]);
  sub_25420F954(v3, v1);
  sub_25420F954(v3, v2);
  v4 = sub_25424DA88();
  v5 = sub_25424E408();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[35];
  v8 = v0[29];
  v9 = v0[30];
  v11 = v0[27];
  v10 = v0[28];
  if (v6)
  {
    v32 = v0[26];
    v12 = v0[21];
    v35 = v0[29];
    v13 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v36 = v33;
    *v13 = 136446466;
    v14 = *(v12 + 32);
    sub_25424D948();
    v34 = v7;
    sub_254148E24(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
    v15 = sub_25424EA58();
    v17 = v16;
    sub_254213C94(v10);
    v18 = sub_2542203C4(v15, v17, &v36);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2080;
    sub_25420F954(v11, v32);
    v19 = sub_25424DD08();
    v21 = v20;
    sub_254213C94(v11);
    v22 = sub_2542203C4(v19, v21, &v36);

    *(v13 + 14) = v22;
    _os_log_impl(&dword_254124000, v4, v5, "[%{public}s] Beginning query: %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C07330](v33, -1, -1);
    MEMORY[0x259C07330](v13, -1, -1);

    v23 = *(v9 + 8);
    v23(v34, v35);
  }

  else
  {

    sub_254213C94(v11);
    sub_254213C94(v10);
    v23 = *(v9 + 8);
    v23(v7, v8);
  }

  v0[36] = v23;
  v24 = swift_task_alloc();
  v25 = *(v0 + 11);
  v26 = v0[11];
  v27 = *v26;
  v28 = v26[1];
  v29 = v26[2];
  v0[37] = v24;
  *(v24 + 16) = v25;
  v30 = swift_task_alloc();
  v0[38] = v30;
  *v30 = v0;
  v30[1] = sub_25420EAD8;

  return sub_25414CFC8(sub_25414CFC8, &unk_254261818, v24, v27, v28, v29);
}

uint64_t sub_25420EAD8()
{
  v2 = *(*v1 + 304);
  v3 = *(*v1 + 296);
  v6 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {
    v4 = sub_25420F030;
  }

  else
  {
    v4 = sub_25420EC08;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25420EC08()
{
  v58 = v0;
  v1 = v0[25];
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[18];
  v5 = v0[13];
  v6 = v0[11];
  sub_25421BB60(v0[34]);
  sub_25420F954(v6, v1);
  (*(v3 + 16))(v2, v5, v4);
  v7 = sub_25424DA88();
  v8 = sub_25424E408();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[25];
    v11 = v0[20];
    v10 = v0[21];
    v12 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v57 = v55;
    *v12 = 136446466;
    v13 = *(v10 + 32);
    sub_25424D948();
    sub_254148E24(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
    v14 = sub_25424EA58();
    v16 = v15;
    sub_254213C94(v9);
    v17 = sub_2542203C4(v14, v16, &v57);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2082;
    sub_25424D868();
    v18 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
    [v18 setMaximumFractionDigits_];
    v19 = sub_25424E288();
    v20 = [v18 stringForObjectValue_];

    if (v20)
    {
      v21 = sub_25424DCB8();
      v23 = v22;
    }

    else
    {
      v21 = sub_25424E298();
      v23 = v32;
    }

    v33 = v0[36];
    v34 = v0[34];
    v36 = v0[29];
    v35 = v0[30];
    (*(v0[19] + 8))(v0[20], v0[18]);
    v37 = sub_2542203C4(v21, v23, &v57);

    *(v12 + 14) = v37;
    _os_log_impl(&dword_254124000, v7, v8, "[%{public}s] Finished in %{public}s seconds", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C07330](v55, -1, -1);
    MEMORY[0x259C07330](v12, -1, -1);

    v33(v34, v36);
  }

  else
  {
    v24 = v0[36];
    v25 = v0[34];
    v26 = v0[29];
    v27 = v0[30];
    v28 = v0[25];
    v30 = v0[19];
    v29 = v0[20];
    v31 = v0[18];

    (*(v30 + 8))(v29, v31);
    sub_254213C94(v28);
    v24(v25, v26);
  }

  v38 = v0[12];
  v0[10] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BBEC0, &unk_2542617F0);
  sub_25424E238();
  v40 = v0[34];
  v39 = v0[35];
  v42 = v0[32];
  v41 = v0[33];
  v43 = v0[31];
  v45 = v0[27];
  v44 = v0[28];
  v47 = v0[25];
  v46 = v0[26];
  v48 = v0[24];
  v51 = v0[23];
  v52 = v0[22];
  v53 = v0[20];
  v54 = v0[17];
  v56 = v0[16];

  v49 = v0[1];

  return v49();
}

uint64_t sub_25420F030()
{
  v113 = v0;
  v1 = *(v0 + 312);
  *(v0 + 16) = v1;
  v2 = *(v0 + 136);
  v3 = *(v0 + 112);
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BAF10, &qword_254253F40);
  v5 = swift_dynamicCast();
  v6 = *(v0 + 312);
  if ((v5 & 1) == 0)
  {

    *(v0 + 24) = v6;
    v30 = v6;
    type metadata accessor for CKError(0);
    if (swift_dynamicCast())
    {
      v31 = *(v0 + 32);
      *(v0 + 48) = v31;
      sub_254148E24(&unk_27F5B8E40, type metadata accessor for CKError);
      sub_25424D358();
      if (*(v0 + 56) == 20)
      {
        v32 = *(v0 + 256);
        v33 = *(v0 + 184);
        v34 = *(v0 + 88);

        sub_25421BB60(v32);
        sub_25420F954(v34, v33);
        v35 = sub_25424DA88();
        v36 = sub_25424E408();
        v37 = os_log_type_enabled(v35, v36);
        v38 = *(v0 + 288);
        v39 = *(v0 + 256);
        v40 = *(v0 + 232);
        v41 = *(v0 + 240);
        v42 = *(v0 + 184);
        if (v37)
        {
          v109 = *(v0 + 288);
          v43 = *(v0 + 168);
          v105 = *(v0 + 232);
          v44 = swift_slowAlloc();
          v45 = swift_slowAlloc();
          v112 = v45;
          *v44 = 136446210;
          v46 = *(v43 + 32);
          sub_25424D948();
          v98 = v39;
          sub_254148E24(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
          v47 = sub_25424EA58();
          v49 = v48;
          sub_254213C94(v42);
          v50 = sub_2542203C4(v47, v49, &v112);

          *(v44 + 4) = v50;
          _os_log_impl(&dword_254124000, v35, v36, "[%{public}s] Canceled", v44, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v45);
          MEMORY[0x259C07330](v45, -1, -1);
          MEMORY[0x259C07330](v44, -1, -1);

          v109(v98, v105);
        }

        else
        {

          sub_254213C94(v42);
          v38(v39, v40);
        }

        v95 = *(v0 + 96);
        *(v0 + 64) = v31;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BBEC0, &unk_2542617F0);
        sub_25424E238();
        v57 = *(v0 + 24);
        goto LABEL_10;
      }
    }

    v58 = *(v0 + 312);
    v59 = *(v0 + 248);
    v60 = *(v0 + 176);
    v61 = *(v0 + 88);

    sub_25421BB60(v59);
    sub_25420F954(v61, v60);
    v62 = v58;
    v63 = sub_25424DA88();
    v64 = sub_25424E428();

    if (os_log_type_enabled(v63, v64))
    {
      v106 = *(v0 + 248);
      v110 = *(v0 + 288);
      v96 = *(v0 + 312);
      v99 = *(v0 + 240);
      v102 = *(v0 + 232);
      v65 = *(v0 + 168);
      v66 = *(v0 + 176);
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v112 = v69;
      *v67 = 136446466;
      v70 = *(v65 + 32);
      sub_25424D948();
      sub_254148E24(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
      v71 = sub_25424EA58();
      v73 = v72;
      sub_254213C94(v66);
      v74 = sub_2542203C4(v71, v73, &v112);

      *(v67 + 4) = v74;
      *(v67 + 12) = 2114;
      v75 = v96;
      v76 = _swift_stdlib_bridgeErrorToNSError();
      *(v67 + 14) = v76;
      *v68 = v76;
      _os_log_impl(&dword_254124000, v63, v64, "[%{public}s] Failed: %{public}@", v67, 0x16u);
      sub_2541A4278(v68);
      MEMORY[0x259C07330](v68, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v69);
      MEMORY[0x259C07330](v69, -1, -1);
      MEMORY[0x259C07330](v67, -1, -1);

      v110(v106, v102);
    }

    else
    {
      v77 = *(v0 + 288);
      v79 = *(v0 + 240);
      v78 = *(v0 + 248);
      v80 = *(v0 + 232);
      v81 = *(v0 + 176);

      sub_254213C94(v81);
      v77(v78, v80);
    }

    v82 = *(v0 + 96);
    *(v0 + 40) = *(v0 + 312);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BBEC0, &unk_2542617F0);
    sub_25424E238();
    goto LABEL_16;
  }

  v7 = *(v0 + 264);
  v8 = *(v0 + 192);
  v10 = *(v0 + 128);
  v9 = *(v0 + 136);
  v11 = *(v0 + 112);
  v12 = *(v0 + 120);
  v13 = *(v0 + 88);

  (*(v12 + 32))(v10, v9, v11);
  sub_25421BB60(v7);
  sub_25420F954(v13, v8);
  v14 = sub_25424DA88();
  v15 = sub_25424E408();
  v16 = os_log_type_enabled(v14, v15);
  v17 = *(v0 + 288);
  v18 = *(v0 + 264);
  v20 = *(v0 + 232);
  v19 = *(v0 + 240);
  v21 = *(v0 + 192);
  if (v16)
  {
    v108 = *(v0 + 288);
    v22 = *(v0 + 168);
    v104 = *(v0 + 232);
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v112 = v24;
    *v23 = 136446210;
    v25 = *(v22 + 32);
    sub_25424D948();
    v101 = v18;
    sub_254148E24(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
    v26 = sub_25424EA58();
    v28 = v27;
    sub_254213C94(v21);
    v29 = sub_2542203C4(v26, v28, &v112);

    *(v23 + 4) = v29;
    _os_log_impl(&dword_254124000, v14, v15, "[%{public}s] Canceled", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    MEMORY[0x259C07330](v24, -1, -1);
    MEMORY[0x259C07330](v23, -1, -1);

    v108(v101, v104);
  }

  else
  {

    sub_254213C94(v21);
    v17(v18, v20);
  }

  v52 = *(v0 + 120);
  v51 = *(v0 + 128);
  v53 = *(v0 + 112);
  v54 = *(v0 + 96);
  sub_254148E24(&qword_27F5B90E0, MEMORY[0x277D85678]);
  v55 = swift_allocError();
  (*(v52 + 16))(v56, v51, v53);
  *(v0 + 72) = v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BBEC0, &unk_2542617F0);
  sub_25424E238();
  (*(v52 + 8))(v51, v53);
  v57 = *(v0 + 16);
LABEL_10:

LABEL_16:
  v84 = *(v0 + 272);
  v83 = *(v0 + 280);
  v86 = *(v0 + 256);
  v85 = *(v0 + 264);
  v87 = *(v0 + 248);
  v89 = *(v0 + 216);
  v88 = *(v0 + 224);
  v91 = *(v0 + 200);
  v90 = *(v0 + 208);
  v92 = *(v0 + 192);
  v97 = *(v0 + 184);
  v100 = *(v0 + 176);
  v103 = *(v0 + 160);
  v107 = *(v0 + 136);
  v111 = *(v0 + 128);

  v93 = *(v0 + 8);

  return v93();
}

uint64_t type metadata accessor for CKQueryAsyncSequence()
{
  result = qword_27F5BBEF0;
  if (!qword_27F5BBEF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25420F954(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CKQueryAsyncSequence();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25420F9B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CKQueryAsyncSequence();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25420FA1C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for CKQueryAsyncSequence() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BBEC0, &unk_2542617F0) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_25424D8B8() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v1 + 16);
  v14 = *(v1 + 24);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_25412F724;

  return sub_25420E58C(a1, v13, v14, v1 + v6, v1 + v9, v1 + v12);
}

uint64_t sub_25420FBDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  return MEMORY[0x2822009F8](sub_25420FC00, 0, 0);
}

uint64_t sub_25420FC00()
{
  v1 = v0[2].i64[0];
  v2 = swift_task_alloc();
  v0[2].i64[1] = v2;
  v2[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2[2].i64[0] = v1;
  v3 = *(MEMORY[0x277D85A40] + 4);
  v4 = swift_task_alloc();
  v0[3].i64[0] = v4;
  *v4 = v0;
  v4[1] = sub_25414C1D4;
  v5 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v4, 0, 0, 0xD000000000000023, 0x80000002542519E0, sub_254213DA4, v2, v5);
}

void sub_25420FD00(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v95 = a4;
  v89 = a3;
  v85 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8848, &qword_254261820);
  v87 = *(v5 - 8);
  v88 = v5;
  v86 = *(v87 + 64);
  MEMORY[0x28223BE20](v5);
  v96 = v77 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BBEC0, &unk_2542617F0);
  v98 = *(v7 - 8);
  v99 = v7;
  v94 = *(v98 + 64);
  MEMORY[0x28223BE20](v7);
  v97 = v77 - v8;
  v9 = type metadata accessor for CKQueryAsyncSequence();
  v83 = *(v9 - 1);
  v10 = *(v83 + 8);
  v11 = MEMORY[0x28223BE20](v9);
  v84 = v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = v12;
  MEMORY[0x28223BE20](v11);
  v14 = v77 - v13;
  v15 = sub_25424DAA8();
  v92 = *(v15 - 8);
  v16 = *(v92 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_25424D948();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = v77 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(a2 + v9[12]);
  v90 = a2;
  if (v24)
  {
    v25 = v9[7];
    v91 = v14;
    v82 = v15;
    v26 = v9;
    v27 = v18;
    v28 = *(v20 + 16);
    v28(v23, a2 + v25, v19);
    LogEvent = type metadata accessor for CloudKitQueryLogEvent();
    v30 = objc_allocWithZone(LogEvent);
    v28(&v30[OBJC_IVAR____TtC13HomeKitEvents21CloudKitQueryLogEvent_queryIdentifier], v23, v19);
    v18 = v27;
    v9 = v26;
    v15 = v82;
    v14 = v91;
    v30[OBJC_IVAR____TtC13HomeKitEvents21CloudKitQueryLogEvent_state] = 0;
    *&v30[OBJC_IVAR____TtC13HomeKitEvents21CloudKitQueryLogEvent_numFetchedRecords] = 0;
    *&v30[OBJC_IVAR____TtC13HomeKitEvents21CloudKitQueryLogEvent_totalRecordSize] = 0;
    v100.receiver = v30;
    v100.super_class = LogEvent;
    v31 = objc_msgSendSuper2(&v100, sel_init);
    (*(v20 + 8))(v23, v19);
    [v24 submitLogEvent_];

    a2 = v90;
  }

  sub_25421BB60(v18);
  sub_25420F954(a2, v14);
  v32 = sub_25424DA88();
  v33 = sub_25424E408();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v91 = v18;
    v35 = a2;
    v36 = v34;
    v37 = swift_slowAlloc();
    v101 = v37;
    *v36 = 136446210;
    v38 = v9[8];
    sub_254148E24(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
    v39 = sub_25424EA58();
    v40 = v14;
    v42 = v41;
    sub_254213C94(v40);
    v43 = sub_2542203C4(v39, v42, &v101);

    *(v36 + 4) = v43;
    _os_log_impl(&dword_254124000, v32, v33, "[%{public}s] Query starting", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x259C07330](v37, -1, -1);
    v44 = v36;
    a2 = v35;
    MEMORY[0x259C07330](v44, -1, -1);

    (*(v92 + 8))(v91, v15);
  }

  else
  {

    sub_254213C94(v14);
    (*(v92 + 8))(v18, v15);
  }

  v45 = [objc_allocWithZone(MEMORY[0x277CBC590]) initWithQuery_];
  v46 = *(a2 + 24);
  v47 = v45;
  [v47 setZoneID_];
  v48 = *(a2 + v9[9]);

  sub_25424E478();

  v49 = a2 + v9[11];
  if ((*(v49 + 8) & 1) == 0)
  {
    [v47 setQualityOfService_];
  }

  v50 = a2 + v9[10];
  if ((*(v50 + 8) & 1) == 0)
  {
    [v47 setResultsLimit_];
  }

  v92 = swift_allocObject();
  *(v92 + 16) = 0;
  v91 = swift_allocObject();
  *(v91 + 16) = 0;
  v51 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v52 = v84;
  sub_25420F954(a2, v84);
  v53 = v98;
  v54 = *(v98 + 16);
  v79 = v98 + 16;
  v80 = v54;
  v54(v97, v95, v99);
  v55 = *(v83 + 80);
  v56 = (v55 + 16) & ~v55;
  v78 = v93 + 7;
  v57 = &v93[v56 + 7] & 0xFFFFFFFFFFFFFFF8;
  v81 = *(v53 + 80);
  v82 = v81 + 8;
  v93 = v47;
  v58 = (v81 + 8 + v57) & ~v81;
  v77[1] = v55 | v81 | 7;
  v59 = (v94 + v58 + 7) & 0xFFFFFFFFFFFFFFF8;
  v60 = swift_allocObject();
  sub_25420F9B8(v52, v60 + v56);
  *(v60 + v57) = v91;
  v61 = *(v53 + 32);
  v98 = v53 + 32;
  v83 = v61;
  v62 = v60 + v58;
  v63 = v97;
  v64 = v99;
  v61(v62, v97, v99);
  *(v60 + v59) = v92;
  *(v60 + ((v59 + 15) & 0xFFFFFFFFFFFFFFF8)) = v51;

  sub_25424E498();

  sub_25420F954(v90, v52);
  v66 = v87;
  v65 = v88;
  (*(v87 + 16))(v96, v85, v88);
  v80(v63, v95, v64);
  v67 = (v55 + 32) & ~v55;
  v68 = &v78[v67] & 0xFFFFFFFFFFFFFFF8;
  v69 = (v68 + *(v66 + 80) + 8) & ~*(v66 + 80);
  v70 = (v86 + v69 + 7) & 0xFFFFFFFFFFFFFFF8;
  v71 = (v82 + v70) & ~v81;
  v72 = swift_allocObject();
  v73 = v92;
  *(v72 + 16) = 0;
  *(v72 + 24) = v73;
  sub_25420F9B8(v52, v72 + v67);
  *(v72 + v68) = v91;
  (*(v66 + 32))(v72 + v69, v96, v65);
  v74 = v89;
  *(v72 + v70) = v89;
  v83(v72 + v71, v97, v99);

  v75 = v74;
  v76 = v93;
  sub_25424E488();
  [v75 addOperation_];
}

void sub_254210630(void *a1, void *a2, char a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v227 = a8;
  v225 = a7;
  v228 = a6;
  v230 = a1;
  v234 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BBEE0, &qword_254261828);
  v238 = *(v234 - 8);
  v12 = *(v238 + 64);
  v13 = MEMORY[0x28223BE20](v234);
  v220 = &v217 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v223 = &v217 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v233 = (&v217 - v18);
  MEMORY[0x28223BE20](v17);
  v237 = (&v217 - v19);
  v239 = sub_25424D948();
  v232 = *(v239 - 8);
  v20 = *(v232 + 64);
  MEMORY[0x28223BE20](v239);
  v231 = &v217 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v240 = type metadata accessor for CKQueryAsyncSequence();
  v22 = *(*(v240 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v240);
  v226 = &v217 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v222 = &v217 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v221 = &v217 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v217 - v30;
  v32 = MEMORY[0x28223BE20](v29);
  v34 = &v217 - v33;
  MEMORY[0x28223BE20](v32);
  v36 = &v217 - v35;
  v236 = sub_25424DAA8();
  v235 = *(v236 - 8);
  v37 = *(v235 + 64);
  v38 = MEMORY[0x28223BE20](v236);
  v39 = MEMORY[0x28223BE20](v38);
  v40 = MEMORY[0x28223BE20](v39);
  v42 = &v217 - v41;
  v43 = MEMORY[0x28223BE20](v40);
  v44 = MEMORY[0x28223BE20](v43);
  v46 = &v217 - v45;
  MEMORY[0x28223BE20](v44);
  v51 = &v217 - v47;
  v229 = a2;
  if (a3)
  {
    sub_25421BB60(&v217 - v47);
    sub_25420F954(a4, v36);
    v52 = v230;
    sub_25412C5A0(a2);
    v53 = sub_25424DA88();
    v54 = sub_25424E428();

    sub_25412C594(a2);
    v55 = a4;
    if (os_log_type_enabled(v53, v54))
    {
      v56 = swift_slowAlloc();
      v237 = swift_slowAlloc();
      v238 = swift_slowAlloc();
      v248 = v238;
      *v56 = 136446722;
      v57 = v240;
      LODWORD(v234) = v54;
      v58 = *(v240 + 32);
      sub_254148E24(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
      v59 = sub_25424EA58();
      v60 = v55;
      v62 = v61;
      sub_254213C94(v36);
      v63 = sub_2542203C4(v59, v62, &v248);
      v55 = v60;

      *(v56 + 4) = v63;
      *(v56 + 12) = 2082;
      v64 = [v52 recordName];
      v65 = sub_25424DCB8();
      v67 = v66;

      v68 = sub_2542203C4(v65, v67, &v248);

      *(v56 + 14) = v68;
      *(v56 + 22) = 2114;
      v69 = a2;
      v70 = _swift_stdlib_bridgeErrorToNSError();
      *(v56 + 24) = v70;
      v71 = v237;
      *v237 = v70;
      _os_log_impl(&dword_254124000, v53, v234, "[%{public}s] Failed to fetch %{public}s: %{public}@", v56, 0x20u);
      sub_2541A4278(v71);
      MEMORY[0x259C07330](v71, -1, -1);
      v72 = v238;
      swift_arrayDestroy();
      MEMORY[0x259C07330](v72, -1, -1);
      MEMORY[0x259C07330](v56, -1, -1);

      (*(v235 + 8))(v51, v236);
    }

    else
    {

      sub_254213C94(v36);
      (*(v235 + 8))(v51, v236);
      v57 = v240;
    }

    v95 = *(v55 + *(v57 + 48));
    if (v95)
    {
      v96 = v232;
      v97 = *(v232 + 16);
      v98 = v55 + *(v57 + 28);
      v99 = v231;
      v100 = v239;
      v97(v231, v98, v239);
      LogEvent = type metadata accessor for CloudKitQueryLogEvent();
      v102 = objc_allocWithZone(LogEvent);
      v97(&v102[OBJC_IVAR____TtC13HomeKitEvents21CloudKitQueryLogEvent_queryIdentifier], v99, v100);
      v102[OBJC_IVAR____TtC13HomeKitEvents21CloudKitQueryLogEvent_state] = 8;
      *&v102[OBJC_IVAR____TtC13HomeKitEvents21CloudKitQueryLogEvent_numFetchedRecords] = 0;
      *&v102[OBJC_IVAR____TtC13HomeKitEvents21CloudKitQueryLogEvent_totalRecordSize] = 0;
      v241.receiver = v102;
      v241.super_class = LogEvent;
      v103 = objc_msgSendSuper2(&v241, sel_init);
      (*(v96 + 8))(v99, v100);
      v104 = sub_25424D398();
      [v95 submitLogEvent:v103 error:v104];
    }

    return;
  }

  v219 = v50;
  v218 = v49;
  v230 = v48;
  v224 = a4;
  v73 = [a2 size];
  swift_beginAccess();
  v74 = *(a5 + 16);
  v75 = __OFADD__(v74, v73);
  v76 = &v73[v74];
  if (v75)
  {
    __break(1u);
LABEL_46:
    __break(1u);
    return;
  }

  *(a5 + 16) = v76;
  v247 = a2;
  v77 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BBEC0, &unk_2542617F0);
  v78 = v237;
  sub_25424E228();
  v79 = v238;
  v80 = *(v238 + 16);
  v81 = v233;
  v82 = v78;
  v83 = v234;
  v80(v233, v82, v234);
  v84 = (*(v79 + 88))(v81, v83);
  if (v84 == *MEMORY[0x277D85888])
  {
    (*(v79 + 96))(v81, v83);
    v85 = *v81;
    if (*v81 > 99)
    {
      (*(v79 + 8))(v237, v83);
    }

    else
    {
      sub_25421BB60(v46);
      sub_25420F954(v224, v34);
      v86 = sub_25424DA88();
      v87 = sub_25424E408();
      if (os_log_type_enabled(v86, v87))
      {
        v88 = swift_slowAlloc();
        v89 = swift_slowAlloc();
        v247 = v89;
        *v88 = 136446466;
        v90 = *(v240 + 32);
        sub_254148E24(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
        v91 = sub_25424EA58();
        v93 = v92;
        sub_254213C94(v34);
        v94 = sub_2542203C4(v91, v93, &v247);

        *(v88 + 4) = v94;
        *(v88 + 12) = 2048;
        *(v88 + 14) = v85;
        _os_log_impl(&dword_254124000, v86, v87, "[%{public}s] Running out of queue space, %ld slots left", v88, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v89);
        MEMORY[0x259C07330](v89, -1, -1);
        MEMORY[0x259C07330](v88, -1, -1);
      }

      else
      {

        sub_254213C94(v34);
      }

      (*(v235 + 8))(v46, v236);
      (*(v238 + 8))(v237, v234);
    }

    v139 = v225;
    swift_beginAccess();
    v140 = *(v139 + 16);
    v75 = __OFADD__(v140, 1);
    v141 = v140 + 1;
    if (!v75)
    {
      *(v139 + 16) = v141;
      return;
    }

    goto LABEL_46;
  }

  if (v84 == *MEMORY[0x277D85880])
  {
    v105 = *(v79 + 8);
    v106 = v233;
    v238 = v79 + 8;
    v233 = v105;
    (v105)(v106, v83);
    v107 = v219;
    sub_25421BB60(v219);
    v108 = v224;
    sub_25420F954(v224, v31);
    v109 = v77;
    v110 = sub_25424DA88();
    v111 = sub_25424E428();
    sub_25412C594(v229);
    if (os_log_type_enabled(v110, v111))
    {
      v112 = swift_slowAlloc();
      v228 = v109;
      v113 = v112;
      v114 = swift_slowAlloc();
      v115 = swift_slowAlloc();
      v247 = v115;
      *v113 = 136446466;
      v116 = v240;
      v117 = *(v240 + 32);
      sub_254148E24(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
      v118 = sub_25424EA58();
      v120 = v119;
      sub_254213C94(v31);
      v121 = sub_2542203C4(v118, v120, &v247);
      v122 = v224;

      *(v113 + 4) = v121;
      *(v113 + 12) = 2112;
      v123 = v228;
      *(v113 + 14) = v228;
      *v114 = v229;
      v124 = v123;
      _os_log_impl(&dword_254124000, v110, v111, "[%{public}s] Yield dropped record: %@", v113, 0x16u);
      sub_2541A4278(v114);
      v125 = v114;
      v108 = v122;
      MEMORY[0x259C07330](v125, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v115);
      MEMORY[0x259C07330](v115, -1, -1);
      MEMORY[0x259C07330](v113, -1, -1);

      v126 = *(v235 + 8);
      v126(v107, v236);
    }

    else
    {

      sub_254213C94(v31);
      v126 = *(v235 + 8);
      v126(v107, v236);
      v116 = v240;
    }

    v142 = *(v108 + v116[12]);
    v131 = v116;
    if (v142)
    {
      v143 = v232;
      v144 = *(v232 + 16);
      v145 = v231;
      v146 = v239;
      v144(v231, v108 + v116[7], v239);
      v147 = type metadata accessor for CloudKitQueryLogEvent();
      v148 = objc_allocWithZone(v147);
      v144(&v148[OBJC_IVAR____TtC13HomeKitEvents21CloudKitQueryLogEvent_queryIdentifier], v145, v146);
      v148[OBJC_IVAR____TtC13HomeKitEvents21CloudKitQueryLogEvent_state] = 5;
      *&v148[OBJC_IVAR____TtC13HomeKitEvents21CloudKitQueryLogEvent_numFetchedRecords] = 0;
      *&v148[OBJC_IVAR____TtC13HomeKitEvents21CloudKitQueryLogEvent_totalRecordSize] = 0;
      v242.receiver = v148;
      v242.super_class = v147;
      v149 = objc_msgSendSuper2(&v242, sel_init);
      v150 = v145;
      v131 = v240;
      (*(v143 + 8))(v150, v146);
      [v142 submitLogEvent_];
    }

    (v233)(v237, v234);
  }

  else if (v84 == *MEMORY[0x277D85878])
  {
    sub_25421BB60(v42);
    v108 = v224;
    v127 = v221;
    sub_25420F954(v224, v221);
    v128 = sub_25424DA88();
    v129 = sub_25424E408();
    v130 = os_log_type_enabled(v128, v129);
    v131 = v240;
    if (v130)
    {
      v132 = swift_slowAlloc();
      v133 = swift_slowAlloc();
      v247 = v133;
      *v132 = 136446210;
      v134 = v131[8];
      sub_254148E24(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
      v135 = sub_25424EA58();
      v137 = v136;
      sub_254213C94(v127);
      v138 = sub_2542203C4(v135, v137, &v247);
      v131 = v240;

      *(v132 + 4) = v138;
      _os_log_impl(&dword_254124000, v128, v129, "[%{public}s] Yield indicated that the stream is terminated", v132, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v133);
      MEMORY[0x259C07330](v133, -1, -1);
      MEMORY[0x259C07330](v132, -1, -1);
    }

    else
    {

      sub_254213C94(v127);
    }

    v126 = *(v235 + 8);
    v126(v42, v236);
    v142 = *(v108 + v131[12]);
    if (v142)
    {
      v173 = v232;
      v174 = *(v232 + 16);
      v175 = v108 + v131[7];
      v176 = v231;
      v177 = v239;
      v174(v231, v175, v239);
      v178 = type metadata accessor for CloudKitQueryLogEvent();
      v179 = objc_allocWithZone(v178);
      v174(&v179[OBJC_IVAR____TtC13HomeKitEvents21CloudKitQueryLogEvent_queryIdentifier], v176, v177);
      v179[OBJC_IVAR____TtC13HomeKitEvents21CloudKitQueryLogEvent_state] = 6;
      *&v179[OBJC_IVAR____TtC13HomeKitEvents21CloudKitQueryLogEvent_numFetchedRecords] = 0;
      *&v179[OBJC_IVAR____TtC13HomeKitEvents21CloudKitQueryLogEvent_totalRecordSize] = 0;
      v243.receiver = v179;
      v243.super_class = v178;
      v180 = objc_msgSendSuper2(&v243, sel_init);
      v181 = v176;
      v131 = v240;
      (*(v173 + 8))(v181, v177);
      [v142 submitLogEvent_];
    }

    (*(v238 + 8))(v237, v234);
  }

  else
  {
    v151 = v218;
    sub_25421BB60(v218);
    v152 = v222;
    sub_25420F954(v224, v222);
    v153 = v223;
    v80(v223, v237, v83);
    v154 = sub_25424DA88();
    v155 = sub_25424E438();
    v156 = os_log_type_enabled(v154, v155);
    v131 = v240;
    if (v156)
    {
      v157 = v153;
      v158 = v83;
      v159 = swift_slowAlloc();
      v229 = swift_slowAlloc();
      v247 = v229;
      *v159 = 136446466;
      LODWORD(v228) = v155;
      v160 = v131[8];
      sub_254148E24(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
      v161 = sub_25424EA58();
      v162 = v152;
      v164 = v163;
      sub_254213C94(v162);
      v165 = sub_2542203C4(v161, v164, &v247);

      *(v159 + 4) = v165;
      *(v159 + 12) = 2082;
      v80(v220, v157, v158);
      v166 = sub_25424DD08();
      v168 = v167;
      v169 = v157;
      v170 = *(v238 + 8);
      v170(v169, v158);
      v171 = sub_2542203C4(v166, v168, &v247);

      *(v159 + 14) = v171;
      _os_log_impl(&dword_254124000, v154, v228, "[%{public}s] Yield result not handled: %{public}s", v159, 0x16u);
      v172 = v229;
      swift_arrayDestroy();
      MEMORY[0x259C07330](v172, -1, -1);
      MEMORY[0x259C07330](v159, -1, -1);
    }

    else
    {

      v170 = *(v238 + 8);
      v170(v153, v83);
      sub_254213C94(v152);
    }

    v126 = *(v235 + 8);
    v126(v151, v236);
    v182 = v233;
    v108 = v224;
    v142 = *(v224 + v131[12]);
    if (v142)
    {
      v183 = v131[7];
      v184 = v232;
      v185 = *(v232 + 16);
      v186 = v126;
      v187 = v231;
      v188 = v239;
      v185(v231, v224 + v183, v239);
      v189 = type metadata accessor for CloudKitQueryLogEvent();
      v190 = objc_allocWithZone(v189);
      v185(&v190[OBJC_IVAR____TtC13HomeKitEvents21CloudKitQueryLogEvent_queryIdentifier], v187, v188);
      v182 = v233;
      v190[OBJC_IVAR____TtC13HomeKitEvents21CloudKitQueryLogEvent_state] = 7;
      *&v190[OBJC_IVAR____TtC13HomeKitEvents21CloudKitQueryLogEvent_numFetchedRecords] = 0;
      *&v190[OBJC_IVAR____TtC13HomeKitEvents21CloudKitQueryLogEvent_totalRecordSize] = 0;
      v244.receiver = v190;
      v244.super_class = v189;
      v191 = objc_msgSendSuper2(&v244, sel_init);
      v192 = v184;
      v131 = v240;
      v193 = v187;
      v126 = v186;
      v108 = v224;
      (*(v192 + 8))(v193, v188);
      [v142 submitLogEvent_];
    }

    v194 = v234;
    v170(v237, v234);
    v170(v182, v194);
  }

  v195 = v226;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v197 = Strong;
    v238 = v126;
    v198 = v230;
    sub_25421BB60(v230);
    sub_25420F954(v108, v195);
    v199 = sub_25424DA88();
    v200 = sub_25424E408();
    if (os_log_type_enabled(v199, v200))
    {
      v201 = swift_slowAlloc();
      v202 = swift_slowAlloc();
      v245 = v202;
      *v201 = 136446210;
      v203 = v131[8];
      sub_254148E24(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
      v204 = sub_25424EA58();
      v206 = v205;
      sub_254213C94(v195);
      v207 = sub_2542203C4(v204, v206, &v245);

      *(v201 + 4) = v207;
      _os_log_impl(&dword_254124000, v199, v200, "[%{public}s] Canceling operation", v201, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v202);
      v208 = v202;
      v108 = v224;
      MEMORY[0x259C07330](v208, -1, -1);
      MEMORY[0x259C07330](v201, -1, -1);
    }

    else
    {

      sub_254213C94(v195);
    }

    (v238)(v198, v236);
    if (v142)
    {
      v209 = v239;
      v210 = v232;
      v211 = *(v232 + 16);
      v212 = v108 + *(v240 + 28);
      v213 = v231;
      v211(v231, v212, v239);
      v214 = type metadata accessor for CloudKitQueryLogEvent();
      v215 = objc_allocWithZone(v214);
      v211(&v215[OBJC_IVAR____TtC13HomeKitEvents21CloudKitQueryLogEvent_queryIdentifier], v213, v209);
      v215[OBJC_IVAR____TtC13HomeKitEvents21CloudKitQueryLogEvent_state] = 3;
      *&v215[OBJC_IVAR____TtC13HomeKitEvents21CloudKitQueryLogEvent_numFetchedRecords] = 0;
      *&v215[OBJC_IVAR____TtC13HomeKitEvents21CloudKitQueryLogEvent_totalRecordSize] = 0;
      v246.receiver = v215;
      v246.super_class = v214;
      v216 = objc_msgSendSuper2(&v246, sel_init);
      (*(v210 + 8))(v213, v209);
      [v142 submitLogEvent_];
    }

    [v197 cancel];
  }
}

void sub_254211DA4(uint64_t *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9)
{
  v274 = a8;
  v305 = a5;
  LODWORD(v300) = a2;
  v302 = a1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8848, &qword_254261820);
  v273 = *(v13 - 8);
  v272 = *(v273 + 64);
  MEMORY[0x28223BE20](v13);
  v284 = &v268 - v14;
  v288 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BBEC0, &unk_2542617F0);
  v287 = *(v288 - 8);
  v283 = *(v287 + 64);
  MEMORY[0x28223BE20](v288);
  v286 = &v268 - v15;
  v16 = type metadata accessor for CKQueryAsyncSequence();
  v270 = *(v16 - 8);
  v17 = *(v270 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v291 = &v268 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v268 = &v268 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v281 = &v268 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v271 = &v268 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v276 = &v268 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v293 = &v268 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v275 = &v268 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v278 = &v268 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v290 = &v268 - v35;
  v269 = v36;
  MEMORY[0x28223BE20](v34);
  v292 = &v268 - v37;
  v301 = sub_25424DAA8();
  v303 = *(v301 - 8);
  v38 = *(v303 + 8);
  v39 = MEMORY[0x28223BE20](v301);
  v295 = &v268 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x28223BE20](v39);
  v277 = &v268 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v285 = &v268 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v280 = &v268 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v294 = (&v268 - v48);
  v49 = MEMORY[0x28223BE20](v47);
  v279 = &v268 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v282 = &v268 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v289 = &v268 - v54;
  MEMORY[0x28223BE20](v53);
  v296 = &v268 - v55;
  v56 = sub_25424D948();
  v57 = *(v56 - 8);
  v58 = v57[8];
  MEMORY[0x28223BE20](v56);
  v60 = &v268 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v61 = a4;
  v62 = *(a4 + 16);
  v63 = (a3 + v62);
  if (__OFADD__(a3, v62))
  {
    __break(1u);
    goto LABEL_73;
  }

  v298 = a7;
  v299 = v13;
  v304 = v16;
  v64 = *(v16 + 28);
  v65 = v57[2];
  v65(v60, v305 + v64, v56);
  swift_beginAccess();
  v66 = *(a6 + 16);
  LogEvent = type metadata accessor for CloudKitQueryLogEvent();
  v68 = objc_allocWithZone(LogEvent);
  v65(&v68[OBJC_IVAR____TtC13HomeKitEvents21CloudKitQueryLogEvent_queryIdentifier], v60, v56);
  v68[OBJC_IVAR____TtC13HomeKitEvents21CloudKitQueryLogEvent_state] = 2;
  *&v68[OBJC_IVAR____TtC13HomeKitEvents21CloudKitQueryLogEvent_numFetchedRecords] = v63;
  *&v68[OBJC_IVAR____TtC13HomeKitEvents21CloudKitQueryLogEvent_totalRecordSize] = v66;
  v309.receiver = v68;
  v309.super_class = LogEvent;
  v69 = objc_msgSendSuper2(&v309, sel_init);
  v70 = v57[1];
  v297 = v56;
  v70(v60, v56);
  if (v300)
  {
    v71 = v302;
    v306 = v302;
    v72 = v302;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BAF10, &qword_254253F40);
    type metadata accessor for CKError(0);
    if (swift_dynamicCast())
    {
      v73 = v308;
      v306 = v308;
      sub_254148E24(&unk_27F5B8E40, type metadata accessor for CKError);
      sub_25424D358();
      v74 = v305;
      v75 = v295;
      if (v308 == 20)
      {
        v193 = v277;
        sub_25421BB60(v277);
        v194 = v268;
        sub_25420F954(v74, v268);
        v195 = v73;
        v196 = sub_25424DA88();
        v197 = sub_25424E408();

        if (os_log_type_enabled(v196, v197))
        {
          v198 = swift_slowAlloc();
          v302 = v195;
          v199 = v194;
          v200 = v198;
          v201 = swift_slowAlloc();
          v202 = swift_slowAlloc();
          v307 = v202;
          *v200 = 136446466;
          v203 = v304;
          v204 = v304[8];
          sub_254148E24(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
          v205 = sub_25424EA58();
          v207 = v206;
          v208 = v199;
          v195 = v302;
          sub_254213C94(v208);
          v209 = sub_2542203C4(v205, v207, &v307);

          *(v200 + 4) = v209;
          *(v200 + 12) = 2112;
          v210 = v195;
          v211 = _swift_stdlib_bridgeErrorToNSError();
          *(v200 + 14) = v211;
          *v201 = v211;
          _os_log_impl(&dword_254124000, v196, v197, "[%{public}s] Query cancelled: %@", v200, 0x16u);
          sub_2541A4278(v201);
          MEMORY[0x259C07330](v201, -1, -1);
          __swift_destroy_boxed_opaque_existential_1(v202);
          MEMORY[0x259C07330](v202, -1, -1);
          MEMORY[0x259C07330](v200, -1, -1);

          (*(v303 + 1))(v277, v301);
        }

        else
        {

          sub_254213C94(v194);
          (*(v303 + 1))(v193, v301);
          v203 = v304;
        }

        v69[OBJC_IVAR____TtC13HomeKitEvents21CloudKitQueryLogEvent_state] = 3;
        v267 = *(v305 + v203[12]);
        if (v267)
        {
          [v267 submitLogEvent_];
        }

        sub_25424E088();

        goto LABEL_71;
      }

      v76 = v291;
      if (v308 == 28 || v308 == 26)
      {
        v77 = v285;
        sub_25421BB60(v285);
        v78 = v281;
        sub_25420F954(v74, v281);
        v79 = sub_25424DA88();
        v80 = sub_25424E408();
        if (os_log_type_enabled(v79, v80))
        {
          v81 = swift_slowAlloc();
          v82 = swift_slowAlloc();
          v306 = v82;
          *v81 = 136446210;
          v83 = v304;
          v84 = v304[8];
          sub_254148E24(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
          v85 = sub_25424EA58();
          v86 = v78;
          v88 = v87;
          sub_254213C94(v86);
          v89 = sub_2542203C4(v85, v88, &v306);

          *(v81 + 4) = v89;
          _os_log_impl(&dword_254124000, v79, v80, "[%{public}s] Query completed: Zone not found or deleted", v81, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v82);
          MEMORY[0x259C07330](v82, -1, -1);
          MEMORY[0x259C07330](v81, -1, -1);

          (*(v303 + 1))(v285, v301);
        }

        else
        {

          sub_254213C94(v78);
          (*(v303 + 1))(v77, v301);
          v83 = v304;
        }

        v192 = *(v305 + v83[12]);
        if (v192)
        {
          [v192 submitLogEvent_];
        }

        sub_25424E088();

LABEL_71:
        return;
      }
    }

    else
    {
      v74 = v305;
      v76 = v291;
      v75 = v295;
    }

    sub_25421BB60(v75);
    sub_25420F954(v74, v76);
    v112 = v71;
    v113 = sub_25424DA88();
    v114 = sub_25424E428();
    sub_25412C594(v71);
    if (os_log_type_enabled(v113, v114))
    {
      v115 = swift_slowAlloc();
      v300 = v69;
      v116 = v76;
      v117 = v115;
      v118 = swift_slowAlloc();
      v119 = swift_slowAlloc();
      v306 = v119;
      *v117 = 136446466;
      v120 = v304;
      v121 = v304[8];
      sub_254148E24(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
      v122 = sub_25424EA58();
      v124 = v123;
      v125 = v116;
      v69 = v300;
      sub_254213C94(v125);
      v126 = sub_2542203C4(v122, v124, &v306);

      *(v117 + 4) = v126;
      *(v117 + 12) = 2112;
      v127 = v71;
      v128 = _swift_stdlib_bridgeErrorToNSError();
      *(v117 + 14) = v128;
      *v118 = v128;
      _os_log_impl(&dword_254124000, v113, v114, "[%{public}s] Query failed: %@", v117, 0x16u);
      sub_2541A4278(v118);
      MEMORY[0x259C07330](v118, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v119);
      v129 = v119;
      v74 = v305;
      MEMORY[0x259C07330](v129, -1, -1);
      MEMORY[0x259C07330](v117, -1, -1);

      (*(v303 + 1))(v295, v301);
    }

    else
    {

      sub_254213C94(v76);
      (*(v303 + 1))(v75, v301);
      v120 = v304;
    }

    v69[OBJC_IVAR____TtC13HomeKitEvents21CloudKitQueryLogEvent_state] = 9;
    v164 = *(v74 + v120[12]);
    if (v164)
    {
      v165 = sub_25424D398();
      [v164 submitLogEvent:v69 error:v165];
    }

    v306 = v71;
    v166 = v71;
    sub_25424E078();
    goto LABEL_71;
  }

  v295 = v63;
  v300 = v69;
  v90 = v296;
  sub_25421BB60(v296);
  v91 = v305;
  v92 = v292;
  sub_25420F954(v305, v292);
  v93 = v61;
  swift_retain_n();
  v94 = v302;
  sub_25412C5A0(v302);
  v95 = sub_25424DA88();
  v96 = sub_25424E408();
  sub_25412C594(v94);
  if (os_log_type_enabled(v95, v96))
  {
    v97 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    v308 = v98;
    *v97 = 136446978;
    v99 = v304;
    v100 = v304[8];
    sub_254148E24(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
    v101 = sub_25424EA58();
    v102 = v92;
    v104 = v103;
    sub_254213C94(v102);
    v105 = sub_2542203C4(v101, v104, &v308);

    *(v97 + 4) = v105;
    *(v97 + 12) = 2048;
    swift_beginAccess();
    v106 = *(v93 + 16);

    *(v97 + 14) = v106;

    *(v97 + 22) = 2048;
    *(v97 + 24) = v295;
    *(v97 + 32) = 2082;
    if (v94)
    {
      v107 = 0;
    }

    else
    {
      v107 = 7302688;
    }

    if (v94)
    {
      v108 = 0xE000000000000000;
    }

    else
    {
      v108 = 0xE300000000000000;
    }

    v109 = sub_2542203C4(v107, v108, &v308);

    *(v97 + 34) = v109;
    v91 = v305;
    _os_log_impl(&dword_254124000, v95, v96, "[%{public}s] Query found %ld matching records on this iteration (%ld total),%{public}s cursor available", v97, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x259C07330](v98, -1, -1);
    MEMORY[0x259C07330](v97, -1, -1);

    v110 = *(v303 + 1);
    v111 = v301;
    (v110)(v296, v301);
  }

  else
  {

    sub_254213C94(v92);
    v110 = *(v303 + 1);
    v111 = v301;
    (v110)(v90, v301);
    v99 = v304;
  }

  v130 = v294;
  v131 = v91 + v99[10];
  v132 = *v131;
  v133 = *(v131 + 8);
  v134 = v293;
  if ((v133 & 1) == 0 && v295 >= v132)
  {
    v135 = v289;
    sub_25421BB60(v289);
    v136 = v290;
    sub_25420F954(v91, v290);
    v137 = sub_25424DA88();
    v138 = sub_25424E408();
    if (os_log_type_enabled(v137, v138))
    {
      v139 = swift_slowAlloc();
      v140 = swift_slowAlloc();
      v308 = v140;
      *v139 = 136446466;
      v302 = v110;
      v141 = v135;
      v142 = v304;
      v143 = v304[8];
      sub_254148E24(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
      v144 = sub_25424EA58();
      v145 = v136;
      v147 = v146;
      sub_254213C94(v145);
      v148 = sub_2542203C4(v144, v147, &v308);

      *(v139 + 4) = v148;
      *(v139 + 12) = 2048;
      *(v139 + 14) = v132;
      _os_log_impl(&dword_254124000, v137, v138, "[%{public}s] Reached result limit %ld, finishing early", v139, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v140);
      v149 = v140;
      v91 = v305;
      MEMORY[0x259C07330](v149, -1, -1);
      MEMORY[0x259C07330](v139, -1, -1);

      (v302)(v141, v111);
    }

    else
    {

      sub_254213C94(v136);
      (v110)(v135, v111);
      v142 = v304;
    }

    v167 = v300;
    v300[OBJC_IVAR____TtC13HomeKitEvents21CloudKitQueryLogEvent_state] = 4;
    v168 = *(v91 + v142[12]);
    if (!v168)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  if (!v302)
  {
    v169 = v282;
    sub_25421BB60(v282);
    v170 = v278;
    sub_25420F954(v91, v278);
    v171 = sub_25424DA88();
    v172 = sub_25424E408();
    if (os_log_type_enabled(v171, v172))
    {
      v173 = swift_slowAlloc();
      v174 = swift_slowAlloc();
      v308 = v174;
      *v173 = 136446210;
      v175 = v304;
      v176 = v304[8];
      sub_254148E24(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
      v177 = sub_25424EA58();
      v179 = v178;
      sub_254213C94(v170);
      v180 = sub_2542203C4(v177, v179, &v308);

      *(v173 + 4) = v180;
      _os_log_impl(&dword_254124000, v171, v172, "[%{public}s] Query completed", v173, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v174);
      v181 = v174;
      v91 = v305;
      MEMORY[0x259C07330](v181, -1, -1);
      MEMORY[0x259C07330](v173, -1, -1);

      (v110)(v282, v111);
    }

    else
    {

      sub_254213C94(v170);
      (v110)(v169, v111);
      v175 = v304;
    }

    v168 = *(v91 + v175[12]);
    v167 = v300;
    if (!v168)
    {
      goto LABEL_36;
    }

LABEL_35:
    [v168 submitLogEvent_];
LABEL_36:
    sub_25424E088();

    return;
  }

  v150 = v302;
  if ((sub_25424E1C8() & 1) == 0)
  {
    v296 = v150;
    sub_25421BB60(v130);
    sub_25420F954(v91, v134);
    v182 = sub_25424DA88();
    v183 = sub_25424E408();
    if (os_log_type_enabled(v182, v183))
    {
      v184 = swift_slowAlloc();
      v185 = swift_slowAlloc();
      v308 = v185;
      *v184 = 136446210;
      v186 = v304[8];
      sub_254148E24(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
      v187 = sub_25424EA58();
      v189 = v188;
      sub_254213C94(v134);
      v190 = sub_2542203C4(v187, v189, &v308);
      v111 = v301;

      *(v184 + 4) = v190;
      _os_log_impl(&dword_254124000, v182, v183, "[%{public}s] Running cursor query", v184, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v185);
      MEMORY[0x259C07330](v185, -1, -1);
      v191 = v184;
      v91 = v305;
      MEMORY[0x259C07330](v191, -1, -1);
    }

    else
    {

      sub_254213C94(v134);
    }

    (v110)(v294, v111);
    v216 = v304;
    v217 = v276;
    v218 = v280;
    v300[OBJC_IVAR____TtC13HomeKitEvents21CloudKitQueryLogEvent_state] = 1;
    v219 = *(v91 + v216[12]);
    v220 = v296;
    if (v219)
    {
      [v219 submitLogEvent_];
    }

    sub_25412C5A0(v302);
    v221 = v220;
    sub_25421BB60(v218);
    sub_25420F954(v91, v217);
    v222 = sub_25424DA88();
    v223 = sub_25424E408();
    if (os_log_type_enabled(v222, v223))
    {
      v224 = swift_slowAlloc();
      v294 = swift_slowAlloc();
      v308 = v294;
      *v224 = 136446210;
      v296 = v221;
      v225 = v304;
      v226 = v304[8];
      sub_254148E24(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
      v227 = sub_25424EA58();
      v229 = v228;
      sub_254213C94(v217);
      v230 = sub_2542203C4(v227, v229, &v308);

      *(v224 + 4) = v230;
      _os_log_impl(&dword_254124000, v222, v223, "[%{public}s] Cursor query starting", v224, 0xCu);
      v231 = v294;
      __swift_destroy_boxed_opaque_existential_1(v294);
      MEMORY[0x259C07330](v231, -1, -1);
      v232 = v224;
      v233 = v225;
      v221 = v296;
      MEMORY[0x259C07330](v232, -1, -1);

      (v110)(v280, v301);
    }

    else
    {

      sub_254213C94(v217);
      (v110)(v218, v111);
      v233 = v304;
    }

    v234 = [objc_allocWithZone(MEMORY[0x277CBC590]) initWithCursor_];
    sub_25412C594(v302);
    v235 = v305;
    v236 = *(v305 + 24);
    v237 = v234;
    [v237 setZoneID_];
    v238 = *(v235 + v233[9]);

    sub_25424E478();

    v239 = v235 + v233[11];
    if ((*(v239 + 8) & 1) == 0)
    {
      [v237 setQualityOfService_];
    }

    if (v133)
    {
      goto LABEL_66;
    }

    if (!__OFSUB__(v132, v295))
    {
      [v237 setResultsLimit_];
LABEL_66:
      v296 = a9;
      v290 = swift_allocObject();
      *(v290 + 16) = 0;
      v240 = swift_allocObject();
      *(v240 + 16) = 0;
      v241 = v240;
      v285 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v242 = v271;
      sub_25420F954(v235, v271);
      v243 = v287;
      v244 = *(v287 + 16);
      v293 = (v287 + 16);
      v294 = v244;
      (v244)(v286, a9, v288);
      v245 = *(v270 + 80);
      v246 = (v245 + 16) & ~v245;
      v292 = v269 + 7;
      v247 = (v269 + 7 + v246) & 0xFFFFFFFFFFFFFFF8;
      v297 = *(v243 + 80);
      v301 = v297 + 8;
      v304 = v237;
      v248 = (v297 + 8 + v247) & ~v297;
      v291 = (v245 | v297 | 7);
      v249 = (v283 + v248 + 7) & 0xFFFFFFFFFFFFFFF8;
      v250 = swift_allocObject();
      sub_25420F9B8(v242, v250 + v246);
      v289 = v241;
      *(v250 + v247) = v241;
      v251 = *(v243 + 32);
      v287 = v243 + 32;
      v303 = v251;
      v252 = v286;
      v253 = v288;
      v251(v250 + v248, v286, v288);
      v254 = v290;
      *(v250 + v249) = v290;
      *(v250 + ((v249 + 15) & 0xFFFFFFFFFFFFFFF8)) = v285;

      sub_25424E498();

      sub_25420F954(v305, v242);
      v255 = v273;
      v256 = v299;
      (*(v273 + 16))(v284, v298, v299);
      (v294)(v252, v296, v253);
      v257 = (v245 + 32) & ~v245;
      v258 = (v292 + v257) & 0xFFFFFFFFFFFFFFF8;
      v259 = (v258 + *(v255 + 80) + 8) & ~*(v255 + 80);
      v260 = (v272 + v259 + 7) & 0xFFFFFFFFFFFFFFF8;
      v261 = (v301 + v260) & ~v297;
      v262 = swift_allocObject();
      *(v262 + 16) = v295;
      *(v262 + 24) = v254;
      sub_25420F9B8(v242, v262 + v257);
      *(v262 + v258) = v289;
      (*(v255 + 32))(v262 + v259, v284, v256);
      v263 = v274;
      *(v262 + v260) = v274;
      v303(v262 + v261, v286, v288);

      v264 = v263;
      v265 = v304;
      sub_25424E488();
      [v264 addOperation_];

      v266 = v302;
      sub_25412C594(v302);
      sub_25412C594(v266);

      return;
    }

LABEL_73:
    __break(1u);
    return;
  }

  v151 = v279;
  sub_25421BB60(v279);
  v152 = v275;
  sub_25420F954(v91, v275);
  v153 = sub_25424DA88();
  v154 = sub_25424E408();
  if (os_log_type_enabled(v153, v154))
  {
    v155 = swift_slowAlloc();
    v156 = swift_slowAlloc();
    v308 = v156;
    *v155 = 136446210;
    v157 = v304;
    v158 = v304[8];
    sub_254148E24(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
    v159 = sub_25424EA58();
    v161 = v160;
    sub_254213C94(v152);
    v162 = sub_2542203C4(v159, v161, &v308);

    *(v155 + 4) = v162;
    _os_log_impl(&dword_254124000, v153, v154, "[%{public}s] Task was canceled", v155, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v156);
    v163 = v156;
    v91 = v305;
    MEMORY[0x259C07330](v163, -1, -1);
    MEMORY[0x259C07330](v155, -1, -1);

    (v110)(v279, v111);
  }

  else
  {

    sub_254213C94(v152);
    (v110)(v151, v111);
    v157 = v304;
  }

  v212 = v302;
  v213 = *(v91 + v157[12]);
  v214 = v300;
  if (v213)
  {
    [v213 submitLogEvent_];
  }

  sub_25424E0A8();
  sub_254148E24(&qword_27F5B90E0, MEMORY[0x277D85678]);
  v215 = swift_allocError();
  sub_25424DB58();
  v308 = v215;
  sub_25424E078();
  sub_25412C594(v212);
}

uint64_t sub_254213C94(uint64_t a1)
{
  v2 = type metadata accessor for CKQueryAsyncSequence();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_254213CF0(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_25412F724;

  return sub_25420FBDC(a1, a2, v7, v6);
}

uint64_t objectdestroy_14Tm()
{
  v1 = (type metadata accessor for CKQueryAsyncSequence() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v19 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BBEC0, &unk_2542617F0);
  v4 = *(v20 - 8);
  v5 = *(v4 + 80);
  v6 = (v19 + v5 + 8) & ~v5;
  v21 = v2 | v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v0 + v3;
  sub_254148B1C(*v8, *(v8 + 8), *(v8 + 16));

  v9 = v1[9];
  v10 = sub_25424D948();
  v11 = *(*(v10 - 8) + 8);
  v11(v8 + v9, v10);
  v11(v8 + v1[10], v10);
  v12 = *(v8 + v1[11]);

  v13 = *(v8 + v1[14]);
  swift_unknownObjectRelease();
  v14 = *(v0 + v19);

  (*(v4 + 8))(v0 + v6, v20);
  v15 = *(v0 + v7);

  v16 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v17 = *(v0 + v16);

  return MEMORY[0x2821FE8E8](v0, v16 + 8, v21 | 7);
}

void sub_254213FD8(void *a1, void *a2, char a3)
{
  v7 = *(type metadata accessor for CKQueryAsyncSequence() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BBEC0, &unk_2542617F0) - 8);
  v11 = (v9 + *(v10 + 80) + 8) & ~*(v10 + 80);
  v12 = (*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v3 + v9);
  v14 = *(v3 + v12);
  v15 = *(v3 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_254210630(a1, a2, a3 & 1, v3 + v8, v13, (v3 + v11), v14, v15);
}

uint64_t objectdestroy_17Tm()
{
  v1 = (type metadata accessor for CKQueryAsyncSequence() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v21 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8848, &qword_254261820);
  v4 = *(v24 - 8);
  v5 = *(v4 + 80);
  v22 = (v21 + v5 + 8) & ~v5;
  v18 = (*(v4 + 64) + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BBEC0, &unk_2542617F0);
  v6 = *(v23 - 8);
  v7 = *(v6 + 80);
  v8 = (v18 + v7 + 8) & ~v7;
  v20 = *(v6 + 64);
  v19 = v2 | v5 | v7;
  v9 = *(v0 + 24);

  v10 = v0 + v3;
  sub_254148B1C(*(v0 + v3), *(v0 + v3 + 8), *(v0 + v3 + 16));

  v11 = v1[9];
  v12 = sub_25424D948();
  v13 = *(*(v12 - 8) + 8);
  v13(v10 + v11, v12);
  v13(v10 + v1[10], v12);
  v14 = *(v10 + v1[11]);

  v15 = *(v10 + v1[14]);
  swift_unknownObjectRelease();
  v16 = *(v0 + v21);

  (*(v4 + 8))(v0 + v22, v24);

  (*(v6 + 8))(v0 + v8, v23);

  return MEMORY[0x2821FE8E8](v0, v8 + v20, v19 | 7);
}

void sub_2542143C4(uint64_t *a1, char a2)
{
  v5 = *(type metadata accessor for CKQueryAsyncSequence() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8848, &qword_254261820) - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BBEC0, &unk_2542617F0) - 8);
  sub_254211DA4(a1, a2 & 1, *(v2 + 16), *(v2 + 24), v2 + v6, *(v2 + v7), v2 + v9, *(v2 + v10), v2 + ((v10 + *(v11 + 80) + 8) & ~*(v11 + 80)));
}

void sub_254214570()
{
  sub_254148D7C(319, &qword_27F5BBF00, 0x277CBC5F8);
  if (v0 <= 0x3F)
  {
    sub_254148D7C(319, &unk_27F5B9010, 0x277CBC578);
    if (v1 <= 0x3F)
    {
      sub_25424D948();
      if (v2 <= 0x3F)
      {
        sub_2541E3EA0(319, &qword_27F5BBF10, &qword_27F5BBF18, "ؕ");
        if (v3 <= 0x3F)
        {
          sub_25414810C();
          if (v4 <= 0x3F)
          {
            sub_25414815C();
            if (v5 <= 0x3F)
            {
              sub_2541E3EA0(319, &qword_27F5BBF20, &qword_27F5BBF28, &qword_254261858);
              if (v6 <= 0x3F)
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

void sub_2542146D4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_25424D818();
  v9 = sub_25424D8E8();
  v11[4] = sub_2542149D8;
  v11[5] = a2;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_2541ED26C;
  v11[3] = &block_descriptor_19;
  v10 = _Block_copy(v11);

  [a1 createFakeEventsWithDate:v8 homeIdentifier:v9 count:a5 reply:v10];
  _Block_release(v10);
}

uint64_t sub_2542147E0(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B90C0, &qword_254253F20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - v6;
  if (a1)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    v9 = sub_25424E128();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = a2;
    v10[5] = sub_25412F60C;
    v10[6] = v8;

    v11 = a1;
    v12 = &unk_254252CB8;
    v13 = v7;
    v14 = v10;
  }

  else
  {
    v15 = sub_25424E128();
    (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = a2;
    v16[5] = sub_25412F540;
    v16[6] = 0;

    v12 = &unk_254252CB0;
    v13 = v7;
    v14 = v16;
  }

  sub_25419CC1C(0, 0, v13, v12, v14);
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_254214A58()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EventsAsyncSequenceLogEvent();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for EventsAsyncSequenceLogEvent()
{
  result = qword_27F5BBF30;
  if (!qword_27F5BBF30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_254214B50()
{
  result = sub_25424D948();
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

uint64_t getEnumTagSinglePayload for EventsAsyncSequenceLogEvent.EventsAsyncSequenceState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 17;
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

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for EventsAsyncSequenceLogEvent.EventsAsyncSequenceState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_254214D50()
{
  result = qword_27F5BBF40;
  if (!qword_27F5BBF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BBF40);
  }

  return result;
}

uint64_t AsyncFileOutputStream.__allocating_init(url:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  AsyncFileOutputStream.init(url:)(a1);
  return v5;
}

uint64_t AsyncFileOutputStream.writeAsync(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_254214E08, 0, 0);
}

uint64_t sub_254214E08()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = swift_task_alloc();
  v0[5] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  v0[6] = v6;
  *v6 = v0;
  v6[1] = sub_25414C1D4;
  v7 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v6, 0, 0, 0x7973416574697277, 0xEE00293A5F28636ELL, sub_2541BAD10, v4, v7);
}

uint64_t sub_254214F2C()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA410, &unk_2542592D0);
  sub_25424E158();
  v2 = *(v1 + OBJC_IVAR____TtC13HomeKitEvents21AsyncFileOutputStream_task);
  v3 = *(MEMORY[0x277D857E0] + 4);
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_254215000;

  return MEMORY[0x282200460]();
}

uint64_t sub_254215000()
{
  v1 = *(*v0 + 24);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_25419D434, 0, 0);
}

uint64_t AsyncFileOutputStream.init(url:)(uint64_t a1)
{
  v49 = a1;
  v42 = *v1;
  v47 = sub_25424D418();
  v2 = *(v47 - 8);
  v41 = *(v2 + 64);
  MEMORY[0x28223BE20](v47);
  v40 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B90C0, &qword_254253F20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v45 = &v36 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBF58, &qword_254261940);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v36 - v10;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA410, &unk_2542592D0);
  v44 = *(v46 - 8);
  v12 = *(v44 + 64);
  MEMORY[0x28223BE20](v46);
  v14 = &v36 - v13;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBF60, &qword_254261948);
  v15 = *(v39 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v39);
  v37 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v43 = &v36 - v18;
  type metadata accessor for AsyncFileOutputStream.InternalStreamElement(0);
  (*(v8 + 104))(v11, *MEMORY[0x277D85778], v7);
  v38 = v14;
  sub_25424E138();
  (*(v8 + 8))(v11, v7);
  v19 = *(v2 + 16);
  v20 = v48;
  v21 = v49;
  v22 = v47;
  v19(v48 + OBJC_IVAR____TtC13HomeKitEvents21AsyncFileOutputStream_url, v49, v47);
  (*(v44 + 16))(v20 + OBJC_IVAR____TtC13HomeKitEvents21AsyncFileOutputStream_pipe, v14, v46);
  v23 = sub_25424E128();
  (*(*(v23 - 8) + 56))(v45, 1, 1, v23);
  v24 = v40;
  v19(v40, v21, v22);
  v25 = v37;
  v26 = v39;
  (*(v15 + 16))(v37, v43, v39);
  v27 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v28 = (v41 + *(v15 + 80) + v27) & ~*(v15 + 80);
  v29 = (v16 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  *(v30 + 16) = 0;
  *(v30 + 24) = 0;
  v31 = v2;
  v32 = v30 + v27;
  v33 = v47;
  (*(v2 + 32))(v32, v24, v47);
  (*(v15 + 32))(v30 + v28, v25, v26);
  *(v30 + v29) = v42;
  v34 = sub_25419CC1C(0, 0, v45, &unk_254261958, v30);
  (*(v31 + 8))(v49, v33);
  (*(v44 + 8))(v38, v46);
  (*(v15 + 8))(v43, v26);
  result = v48;
  *(v48 + OBJC_IVAR____TtC13HomeKitEvents21AsyncFileOutputStream_task) = v34;
  return result;
}

uint64_t sub_254215650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_task_alloc();
  *(v5 + 16) = v8;
  *v8 = v5;
  v8[1] = sub_25412F724;

  return sub_2542156F8(a4, a5);
}

uint64_t sub_2542156F8(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8840, &qword_254252D18) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8848, &qword_254261820);
  v3[16] = v5;
  v6 = *(v5 - 8);
  v3[17] = v6;
  v7 = *(v6 + 64) + 15;
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v8 = sub_25424D418();
  v3[22] = v8;
  v9 = *(v8 - 8);
  v3[23] = v9;
  v10 = *(v9 + 64) + 15;
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v11 = sub_25424DAA8();
  v3[32] = v11;
  v12 = *(v11 - 8);
  v3[33] = v12;
  v13 = *(v12 + 64) + 15;
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v14 = type metadata accessor for AsyncFileOutputStream.InternalStreamElement(0);
  v3[41] = v14;
  v15 = *(v14 - 8);
  v3[42] = v15;
  v16 = *(v15 + 64) + 15;
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBFB8, &qword_254261AE0) - 8) + 64) + 15;
  v3[45] = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBFC0, &qword_254261AE8);
  v3[46] = v18;
  v19 = *(v18 - 8);
  v3[47] = v19;
  v20 = *(v19 + 64) + 15;
  v3[48] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_254215AA4, 0, 0);
}

uint64_t sub_254215AA4()
{
  v1 = v0[48];
  v2 = v0[10];
  v0[4] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBF60, &qword_254261948);
  sub_25424E178();
  v0[49] = 0;
  v0[50] = 0;
  v3 = *(MEMORY[0x277D85798] + 4);
  v4 = swift_task_alloc();
  v0[51] = v4;
  *v4 = v0;
  v4[1] = sub_254215B74;
  v5 = v0[48];
  v6 = v0[45];
  v7 = v0[46];

  return MEMORY[0x2822003E8](v6, 0, 0, v7);
}

uint64_t sub_254215B74()
{
  v1 = *(*v0 + 408);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_254215C70, 0, 0);
}

uint64_t sub_254215C70()
{
  v284 = v0;
  v1 = *(v0 + 360);
  if ((*(*(v0 + 336) + 48))(v1, 1, *(v0 + 328)) != 1)
  {
    v13 = *(v0 + 400);
    sub_254219494(v1, *(v0 + 352));
    if (!v13)
    {
      v34 = *(v0 + 248);
      v35 = *(v0 + 176);
      v36 = *(v0 + 184);
      v37 = *(v0 + 72);
      static LoggedObject.logger.getter(*(v0 + 88), &protocol witness table for AsyncFileOutputStream, *(v0 + 320));
      v14 = *(v36 + 16);
      v14(v34, v37, v35);
      v38 = sub_25424DA88();
      v282 = sub_25424E418();
      v39 = os_log_type_enabled(v38, v282);
      v40 = *(v0 + 320);
      v42 = *(v0 + 256);
      v41 = *(v0 + 264);
      v43 = *(v0 + 248);
      v45 = *(v0 + 176);
      v44 = *(v0 + 184);
      if (v39)
      {
        v272 = *(v0 + 256);
        v46 = swift_slowAlloc();
        v259 = swift_slowAlloc();
        v283[0] = v259;
        *v46 = 136315138;
        sub_25421943C();
        v47 = v14;
        v48 = sub_25424EA58();
        v264 = v40;
        v50 = v49;
        i = *(v44 + 8);
        i(v43, v45);
        v51 = v48;
        v14 = v47;
        v52 = sub_2542203C4(v51, v50, v283);

        *(v46 + 4) = v52;
        _os_log_impl(&dword_254124000, v38, v282, "Creating '%s'", v46, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v259);
        MEMORY[0x259C07330](v259, -1, -1);
        MEMORY[0x259C07330](v46, -1, -1);

        v53 = *(v41 + 8);
        v54 = v264;
        v55 = v272;
      }

      else
      {

        i = *(v44 + 8);
        i(v43, v45);
        v53 = *(v41 + 8);
        v54 = v40;
        v55 = v42;
      }

      v281 = v53;
      v53(v54, v55);
      v63 = *(v0 + 72);
      v64 = [objc_opt_self() defaultManager];
      sub_25424D408();
      v65 = sub_25424DCA8();

      LOBYTE(v63) = [v64 createFileAtPath:v65 contents:0 attributes:0];

      v66 = *(v0 + 176);
      v67 = *(v0 + 88);
      v68 = *(v0 + 72);
      if (v63)
      {
        v69 = *(v0 + 232);
        v70 = *(v0 + 88);
        static LoggedObject.logger.getter(v67, &protocol witness table for AsyncFileOutputStream, *(v0 + 304));
        v14(v69, v68, v66);
        v33 = sub_25424DA88();
        v71 = sub_25424E418();
        v72 = os_log_type_enabled(v33, v71);
        v21 = *(v0 + 304);
        v20 = *(v0 + 256);
        v73 = *(v0 + 264);
        v24 = *(v0 + 232);
        v19 = *(v0 + 176);
        v74 = *(v0 + 184);
        if (v72)
        {
          v75 = swift_slowAlloc();
          v266 = v20;
          v76 = swift_slowAlloc();
          v283[0] = v76;
          *v75 = 136315138;
          sub_25421943C();
          v260 = v21;
          v77 = v14;
          v78 = sub_25424EA58();
          v80 = v79;
          i(v24, v19);
          v81 = v78;
          v14 = v77;
          v82 = sub_2542203C4(v81, v80, v283);

          *(v75 + 4) = v82;
          _os_log_impl(&dword_254124000, v33, v71, "Opening '%s'", v75, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v76);
          MEMORY[0x259C07330](v76, -1, -1);
          MEMORY[0x259C07330](v75, -1, -1);

          v281(v260, v266);
          goto LABEL_26;
        }

        goto LABEL_25;
      }

      v83 = *(v0 + 240);
      v84 = *(v0 + 88);
      static LoggedObject.logger.getter(v67, &protocol witness table for AsyncFileOutputStream, *(v0 + 312));
      v14(v83, v68, v66);
      v85 = sub_25424DA88();
      v86 = sub_25424E428();
      v87 = os_log_type_enabled(v85, v86);
      v88 = *(v0 + 312);
      v90 = *(v0 + 256);
      v89 = *(v0 + 264);
      v91 = *(v0 + 240);
      v93 = *(v0 + 176);
      v92 = *(v0 + 184);
      if (v87)
      {
        v94 = swift_slowAlloc();
        v267 = v90;
        v95 = swift_slowAlloc();
        v283[0] = v95;
        *v94 = 136446210;
        sub_25421943C();
        v96 = sub_25424EA58();
        v98 = v97;
        i(v91, v93);
        v99 = sub_2542203C4(v96, v98, v283);

        *(v94 + 4) = v99;
        _os_log_impl(&dword_254124000, v85, v86, "Failed to create '%{public}s'", v94, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v95);
        MEMORY[0x259C07330](v95, -1, -1);
        MEMORY[0x259C07330](v94, -1, -1);

        v281(v88, v267);
      }

      else
      {

        i(v91, v93);
        v281(v88, v90);
      }

      v131 = *(v0 + 128);
      v132 = *(v0 + 136);
      v133 = *(v0 + 120);
      sub_2542194F8(*(v0 + 352) + *(*(v0 + 328) + 20), v133);
      v134 = (*(v132 + 48))(v133, 1, v131);
      v136 = *(v0 + 376);
      v135 = *(v0 + 384);
      v137 = *(v0 + 368);
      v138 = *(v0 + 352);
      if (v134 == 1)
      {
        v139 = *(v0 + 120);
        sub_2542182D4(*(v0 + 352));
        (*(v136 + 8))(v135, v137);
LABEL_57:
        sub_254132E5C(v139, &qword_27F5B8840, &qword_254252D18);
        v2 = 0;
      }

      else
      {
        v140 = *(v0 + 168);
        v141 = *(v0 + 128);
        v142 = *(v0 + 136);
        (*(v142 + 32))(v140, *(v0 + 120), v141);
        sub_254219568();
        v143 = swift_allocError();
        *v144 = 1;
        *(v0 + 40) = v143;
        sub_25424E078();
        (*(v142 + 8))(v140, v141);
        sub_2542182D4(v138);
        (*(v136 + 8))(v135, v137);
        v2 = 0;
      }

      goto LABEL_3;
    }

    v14 = *(v0 + 400);
    for (i = *(v0 + 392); ; i = 0)
    {
      v16 = *(v0 + 344);
      v15 = *(v0 + 352);
      v17 = *(v0 + 208);
      v19 = *(v0 + 176);
      v18 = *(v0 + 184);
      v20 = *(v0 + 72);
      static LoggedObject.logger.getter(*(v0 + 88), &protocol witness table for AsyncFileOutputStream, *(v0 + 288));
      sub_2542193D8(v15, v16);
      v271 = *(v18 + 16);
      v271(v17, v20, v19);
      v21 = sub_25424DA88();
      v22 = sub_25424E418();
      v23 = os_log_type_enabled(v21, v22);
      v24 = *(v0 + 344);
      v281 = v14;
      if (!v23)
      {
        v56 = *(v0 + 288);
        v57 = *(v0 + 256);
        v58 = *(v0 + 264);
        v59 = *(v0 + 208);
        v60 = *(v0 + 176);
        v61 = *(v0 + 184);
        sub_2542182D4(v24);

        v265 = *(v61 + 8);
        v265(v59, v60);
        v62 = *(v58 + 8);
        v26 = v62(v56, v57);
        goto LABEL_37;
      }

      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v258 = v26;
      *(v0 + 64) = v26;
      *v25 = 134218242;
      v30 = *v24;
      v31 = v24[1];
      v32 = v31 >> 62;
      if ((v31 >> 62) <= 1)
      {
        break;
      }

      if (v32 != 2)
      {
        v33 = 0;
LABEL_36:
        v147 = *(v0 + 264);
        v253 = *(v0 + 256);
        v255 = *(v0 + 288);
        v148 = *(v0 + 208);
        v150 = *(v0 + 176);
        v149 = *(v0 + 184);
        sub_2542182D4(*(v0 + 344));
        *(v25 + 4) = v33;
        *(v25 + 12) = 2080;
        sub_25421943C();
        v151 = sub_25424EA58();
        v153 = v152;
        v265 = *(v149 + 8);
        v265(v148, v150);
        v154 = sub_2542203C4(v151, v153, (v0 + 64));

        *(v25 + 14) = v154;
        _os_log_impl(&dword_254124000, v21, v22, "Writing %ld byte(s) to '%s'", v25, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v258);
        MEMORY[0x259C07330](v258, -1, -1);
        MEMORY[0x259C07330](v25, -1, -1);

        v155 = *(v147 + 8);
        v26 = v155(v255, v253);
        v62 = v155;
        v14 = v281;
LABEL_37:
        if (v14)
        {
          v156 = *(v0 + 352);
          v157 = *v156;
          v158 = v156[1];
          *(v0 + 16) = *v156;
          *(v0 + 24) = v158;
          sub_254140660(v157, v158);
          sub_254219608();
          v159 = i;
          sub_25424E3F8();
          if (i)
          {
            v160 = *(v0 + 272);
            v161 = *(v0 + 192);
            v162 = *(v0 + 176);
            v163 = *(v0 + 88);
            v164 = *(v0 + 72);
            sub_254134D04(*(v0 + 16), *(v0 + 24));
            static LoggedObject.logger.getter(v163, &protocol witness table for AsyncFileOutputStream, v160);
            v271(v161, v164, v162);
            v165 = i;
            v166 = sub_25424DA88();
            v167 = sub_25424E428();

            v168 = os_log_type_enabled(v166, v167);
            v169 = *(v0 + 264);
            v276 = *(v0 + 256);
            v279 = *(v0 + 272);
            v171 = *(v0 + 184);
            v170 = *(v0 + 192);
            v172 = *(v0 + 176);
            if (v168)
            {
              v262 = v62;
              v173 = swift_slowAlloc();
              v174 = swift_slowAlloc();
              v256 = swift_slowAlloc();
              v283[0] = v256;
              *v173 = 136446466;
              sub_25421943C();
              v175 = sub_25424EA58();
              v177 = v176;
              v265(v170, v172);
              v178 = sub_2542203C4(v175, v177, v283);

              *(v173 + 4) = v178;
              *(v173 + 12) = 2114;
              v179 = v159;
              v180 = _swift_stdlib_bridgeErrorToNSError();
              *(v173 + 14) = v180;
              *v174 = v180;
              _os_log_impl(&dword_254124000, v166, v167, "Failed to write to '%{public}s': %{public}@", v173, 0x16u);
              sub_254132E5C(v174, &unk_27F5BBED0, &qword_254253F80);
              MEMORY[0x259C07330](v174, -1, -1);
              __swift_destroy_boxed_opaque_existential_1(v256);
              MEMORY[0x259C07330](v256, -1, -1);
              MEMORY[0x259C07330](v173, -1, -1);

              v262(v279, v276);
            }

            else
            {

              v265(v170, v172);
              v62(v279, v276);
            }

            v189 = *(v0 + 128);
            v190 = *(v0 + 136);
            v191 = *(v0 + 96);
            sub_2542194F8(*(v0 + 352) + *(*(v0 + 328) + 20), v191);
            v192 = (*(v190 + 48))(v191, 1, v189);
            v194 = *(v0 + 376);
            v193 = *(v0 + 384);
            v195 = *(v0 + 368);
            v196 = *(v0 + 352);
            if (v192 == 1)
            {
              v197 = *(v0 + 96);

              sub_2542182D4(v196);
              (*(v194 + 8))(v193, v195);
              sub_254132E5C(v197, &qword_27F5B8840, &qword_254252D18);
            }

            else
            {
              v199 = *(v0 + 136);
              v198 = *(v0 + 144);
              v200 = *(v0 + 128);
              (*(v199 + 32))(v198, *(v0 + 96), v200);
              sub_254219568();
              v201 = swift_allocError();
              *v202 = 3;
              *(v0 + 56) = v201;
              sub_25424E078();

              (*(v199 + 8))(v198, v200);
              sub_2542182D4(v196);
              (*(v194 + 8))(v193, v195);
            }

            v2 = v281;
            goto LABEL_3;
          }

          v181 = *(v0 + 352);
          v182 = *(v0 + 328);
          v183 = *(v0 + 128);
          v184 = *(v0 + 136);
          v185 = *(v0 + 112);
          sub_254134D04(*(v0 + 16), *(v0 + 24));
          sub_2542194F8(v181 + *(v182 + 20), v185);
          v186 = (*(v184 + 48))(v185, 1, v183);
          v187 = *(v0 + 352);
          if (v186 == 1)
          {
            v188 = *(v0 + 112);
            sub_2542182D4(*(v0 + 352));
            sub_254132E5C(v188, &qword_27F5B8840, &qword_254252D18);
          }

          else
          {
            v203 = *(v0 + 160);
            v204 = *(v0 + 128);
            v205 = *(v0 + 136);
            (*(v205 + 32))(v203, *(v0 + 112), v204);
            sub_25424E088();
            (*(v205 + 8))(v203, v204);
            sub_2542182D4(v187);
          }

          *(v0 + 392) = 0;
          *(v0 + 400) = v14;
          v206 = *(MEMORY[0x277D85798] + 4);
          v207 = swift_task_alloc();
          *(v0 + 408) = v207;
          *v207 = v0;
          v207[1] = sub_254215B74;
          v208 = *(v0 + 384);
          v26 = *(v0 + 360);
          v29 = *(v0 + 368);
          v27 = 0;
          v28 = 0;

          return MEMORY[0x2822003E8](v26, v27, v28, v29);
        }

LABEL_62:
        __break(1u);
        return MEMORY[0x2822003E8](v26, v27, v28, v29);
      }

      v102 = v30 + 16;
      v100 = *(v30 + 16);
      v101 = *(v102 + 8);
      v33 = v101 - v100;
      if (!__OFSUB__(v101, v100))
      {
        goto LABEL_36;
      }

      __break(1u);
LABEL_25:

      i(v24, v19);
      v281(v21, v20);
LABEL_26:
      v103 = *(v0 + 392);
      v104 = *(v0 + 224);
      v105 = *(v0 + 176);
      v106 = *(v0 + 72);
      sub_2542195BC();
      v14(v104, v106, v105);
      v107 = v14;
      v14 = sub_254218CB4(v104);
      v108 = *(v0 + 176);
      v109 = *(v0 + 88);
      v110 = *(v0 + 72);
      if (v103)
      {
        v111 = *(v0 + 200);
        v112 = *(v0 + 88);
        static LoggedObject.logger.getter(v109, &protocol witness table for AsyncFileOutputStream, *(v0 + 280));
        v107(v111, v110, v108);
        v113 = v103;
        v114 = sub_25424DA88();
        v115 = sub_25424E428();

        v116 = os_log_type_enabled(v114, v115);
        v117 = *(v0 + 280);
        v119 = *(v0 + 256);
        v118 = *(v0 + 264);
        v120 = *(v0 + 200);
        v121 = *(v0 + 176);
        v122 = *(v0 + 184);
        if (v116)
        {
          v123 = swift_slowAlloc();
          v273 = v119;
          v124 = swift_slowAlloc();
          v261 = swift_slowAlloc();
          v283[0] = v261;
          *v123 = 136446466;
          sub_25421943C();
          v125 = sub_25424EA58();
          v268 = v117;
          v127 = v126;
          i(v120, v121);
          v128 = sub_2542203C4(v125, v127, v283);

          *(v123 + 4) = v128;
          *(v123 + 12) = 2114;
          v129 = v103;
          v130 = _swift_stdlib_bridgeErrorToNSError();
          *(v123 + 14) = v130;
          *v124 = v130;
          _os_log_impl(&dword_254124000, v114, v115, "Failed to open file handle for '%{public}s': %{public}@", v123, 0x16u);
          sub_254132E5C(v124, &unk_27F5BBED0, &qword_254253F80);
          MEMORY[0x259C07330](v124, -1, -1);
          __swift_destroy_boxed_opaque_existential_1(v261);
          MEMORY[0x259C07330](v261, -1, -1);
          MEMORY[0x259C07330](v123, -1, -1);

          v281(v268, v273);
        }

        else
        {

          i(v120, v121);
          v281(v117, v119);
        }

        v228 = *(v0 + 128);
        v229 = *(v0 + 136);
        v230 = *(v0 + 104);
        sub_2542194F8(*(v0 + 352) + *(*(v0 + 328) + 20), v230);
        v231 = (*(v229 + 48))(v230, 1, v228);
        v233 = *(v0 + 376);
        v232 = *(v0 + 384);
        v234 = *(v0 + 368);
        v235 = *(v0 + 352);
        if (v231 == 1)
        {
          v139 = *(v0 + 104);

          sub_2542182D4(v235);
          (*(v233 + 8))(v232, v234);
          goto LABEL_57;
        }

        v236 = *(v0 + 152);
        v237 = *(v0 + 128);
        v238 = *(v0 + 136);
        (*(v238 + 32))(v236, *(v0 + 104), v237);
        sub_254219568();
        v239 = swift_allocError();
        *v240 = 2;
        *(v0 + 48) = v239;
        sub_25424E078();

        (*(v238 + 8))(v236, v237);
        sub_2542182D4(v235);
        (*(v233 + 8))(v232, v234);
        v2 = 0;
        goto LABEL_3;
      }

      v209 = *(v0 + 296);
      v210 = *(v0 + 216);
      *(v0 + 32) = v14;
      static LoggedObject.logger.getter(v109, &protocol witness table for AsyncFileOutputStream, v209);
      v107(v210, v110, v108);
      v211 = sub_25424DA88();
      v212 = sub_25424E408();
      v213 = os_log_type_enabled(v211, v212);
      v214 = *(v0 + 296);
      v216 = *(v0 + 256);
      v215 = *(v0 + 264);
      v217 = *(v0 + 216);
      v219 = *(v0 + 176);
      v218 = *(v0 + 184);
      if (v213)
      {
        v220 = swift_slowAlloc();
        v274 = v216;
        v221 = swift_slowAlloc();
        v283[0] = v221;
        *v220 = 136446210;
        sub_25421943C();
        v269 = v214;
        v222 = v14;
        v223 = sub_25424EA58();
        v225 = v224;
        i(v217, v219);
        v226 = v223;
        v14 = v222;
        v227 = sub_2542203C4(v226, v225, v283);

        *(v220 + 4) = v227;
        _os_log_impl(&dword_254124000, v211, v212, "Created '%{public}s'", v220, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v221);
        MEMORY[0x259C07330](v221, -1, -1);
        MEMORY[0x259C07330](v220, -1, -1);

        v281(v269, v274);
      }

      else
      {

        i(v217, v219);
        v281(v214, v216);
      }
    }

    if (!v32)
    {
      v33 = BYTE6(v31);
      goto LABEL_36;
    }

    v145 = __OFSUB__(HIDWORD(v30), v30);
    v146 = HIDWORD(v30) - v30;
    if (!v145)
    {
      v33 = v146;
      goto LABEL_36;
    }

    __break(1u);
    goto LABEL_62;
  }

  (*(*(v0 + 376) + 8))(*(v0 + 384), *(v0 + 368));
  v2 = *(v0 + 400);
LABEL_3:
  v3 = *(v0 + 384);
  v5 = *(v0 + 352);
  v4 = *(v0 + 360);
  v6 = *(v0 + 344);
  v8 = *(v0 + 312);
  v7 = *(v0 + 320);
  v10 = *(v0 + 296);
  v9 = *(v0 + 304);
  v241 = *(v0 + 288);
  v242 = *(v0 + 280);
  v243 = *(v0 + 272);
  v244 = *(v0 + 248);
  v245 = *(v0 + 240);
  v246 = *(v0 + 232);
  v247 = *(v0 + 224);
  v248 = *(v0 + 216);
  v249 = *(v0 + 208);
  v250 = *(v0 + 200);
  v251 = *(v0 + 192);
  v252 = *(v0 + 168);
  v254 = *(v0 + 160);
  v257 = *(v0 + 152);
  v263 = *(v0 + 144);
  v270 = *(v0 + 120);
  v275 = *(v0 + 112);
  v277 = *(v0 + 104);
  v280 = *(v0 + 96);
  sub_254218330((v0 + 32), *(v0 + 72), *(v0 + 88));

  v11 = *(v0 + 8);

  return v11();
}

uint64_t AsyncFileOutputStream.deinit()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC13HomeKitEvents21AsyncFileOutputStream_pipe;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA410, &unk_2542592D0);
  sub_25424E158();
  v4 = OBJC_IVAR____TtC13HomeKitEvents21AsyncFileOutputStream_url;
  v5 = sub_25424D418();
  (*(*(v5 - 8) + 8))(v1 + v4, v5);
  (*(*(v3 - 8) + 8))(v1 + v2, v3);
  v6 = *(v1 + OBJC_IVAR____TtC13HomeKitEvents21AsyncFileOutputStream_task);

  return v1;
}

uint64_t AsyncFileOutputStream.__deallocating_deinit()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC13HomeKitEvents21AsyncFileOutputStream_pipe;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA410, &unk_2542592D0);
  sub_25424E158();
  v4 = OBJC_IVAR____TtC13HomeKitEvents21AsyncFileOutputStream_url;
  v5 = sub_25424D418();
  (*(*(v5 - 8) + 8))(v1 + v4, v5);
  (*(*(v3 - 8) + 8))(v1 + v2, v3);
  v6 = *(v1 + OBJC_IVAR____TtC13HomeKitEvents21AsyncFileOutputStream_task);

  v7 = *(*v1 + 48);
  v8 = *(*v1 + 52);

  return MEMORY[0x2821FE8D8](v1, v7, v8);
}

uint64_t AsyncFileOutputStream.WriteError.hashValue.getter()
{
  v1 = *v0;
  sub_25424EBD8();
  MEMORY[0x259C06AA0](v1);
  return sub_25424EC28();
}

BOOL AsyncFileOutputStream.write(_:)(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for AsyncFileOutputStream.InternalStreamElement(0);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBF70, &unk_254261960);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - v12;
  v14 = *(v5 + 28);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8848, &qword_254261820);
  (*(*(v15 - 8) + 56))(v8 + v14, 1, 1, v15);
  *v8 = a1;
  v8[1] = a2;
  sub_254140660(a1, a2);
  sub_25421766C(v8, v13);
  sub_2542182D4(v8);
  v16 = (*(v10 + 88))(v13, v9);
  v17 = *MEMORY[0x277D85758];
  if (v16 != *MEMORY[0x277D85758])
  {
    (*(v10 + 8))(v13, v9);
  }

  return v16 == v17;
}

uint64_t sub_25421766C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v86 = *v2;
  v5 = sub_25424DAA8();
  v84 = *(v5 - 8);
  v85 = v5;
  v6 = *(v84 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v78 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v79 = (&v75 - v10);
  MEMORY[0x28223BE20](v9);
  v80 = &v75 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBF70, &unk_254261960);
  v13 = *(v12 - 8);
  v14 = v13[8];
  v15 = MEMORY[0x28223BE20](v12);
  v75 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v77 = &v75 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v75 - v19;
  v21 = type metadata accessor for AsyncFileOutputStream.InternalStreamElement(0);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v76 = &v75 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = (&v75 - v26);
  MEMORY[0x28223BE20](v25);
  v83 = a1;
  sub_2542193D8(a1, &v75 - v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA410, &unk_2542592D0);
  sub_25424E148();
  v29 = v13[2];
  v29(v20, a2, v12);
  v81 = v13;
  v82 = v20;
  v31 = v13[11];
  v30 = (v13 + 11);
  v87 = v12;
  result = v31(v20, v12);
  if (result != *MEMORY[0x277D85758])
  {
    if (result == *MEMORY[0x277D85750])
    {
      v30 = v80;
      static LoggedObject.logger.getter(v86, &protocol witness table for AsyncFileOutputStream, v80);
      sub_2542193D8(v83, v27);

      v33 = sub_25424DA88();
      LOBYTE(v34) = sub_25424E428();

      if (!os_log_type_enabled(v33, v34))
      {
        sub_2542182D4(v27);
LABEL_30:

        (*(v84 + 8))(v30, v85);
        return (v81[1])(v82, v87);
      }

      v35 = swift_slowAlloc();
      result = swift_slowAlloc();
      v36 = result;
      v88 = result;
      *v35 = 134218242;
      v37 = *v27;
      v38 = v27[1];
      v39 = v38 >> 62;
      if ((v38 >> 62) <= 1)
      {
        if (!v39)
        {
          v40 = BYTE6(v38);
LABEL_29:
          sub_2542182D4(v27);
          *(v35 + 4) = v40;
          *(v35 + 12) = 2080;
          sub_25424D418();
          sub_25421943C();
          v68 = sub_25424EA58();
          v70 = sub_2542203C4(v68, v69, &v88);

          *(v35 + 14) = v70;
          _os_log_impl(&dword_254124000, v33, v34, "Dropped %ld byte(s) for '%s'", v35, 0x16u);
          __swift_destroy_boxed_opaque_existential_1(v36);
          MEMORY[0x259C07330](v36, -1, -1);
          MEMORY[0x259C07330](v35, -1, -1);
          goto LABEL_30;
        }

        v63 = __OFSUB__(HIDWORD(v37), v37);
        v64 = HIDWORD(v37) - v37;
        if (!v63)
        {
          v40 = v64;
          goto LABEL_29;
        }

        __break(1u);
        goto LABEL_38;
      }

      if (v39 == 2)
      {
        v62 = v37 + 16;
        v60 = *(v37 + 16);
        v61 = *(v62 + 8);
        v40 = v61 - v60;
        if (!__OFSUB__(v61, v60))
        {
          goto LABEL_29;
        }

        __break(1u);
        goto LABEL_19;
      }

LABEL_28:
      v40 = 0;
      goto LABEL_29;
    }

    if (result == *MEMORY[0x277D85748])
    {
      v36 = v79;
      static LoggedObject.logger.getter(v86, &protocol witness table for AsyncFileOutputStream, v79);
      v35 = v76;
      sub_2542193D8(v83, v76);

      v33 = sub_25424DA88();
      v41 = sub_25424E428();

      if (!os_log_type_enabled(v33, v41))
      {
LABEL_19:
        sub_2542182D4(v35);
LABEL_35:

        return (*(v84 + 8))(v36, v85);
      }

      v34 = swift_slowAlloc();
      result = swift_slowAlloc();
      v27 = result;
      v88 = result;
      *v34 = 134218242;
      v42 = *v35;
      v43 = *(v35 + 8);
      v44 = v43 >> 62;
      if ((v43 >> 62) > 1)
      {
        if (v44 == 2)
        {
          v67 = v42 + 16;
          v65 = *(v42 + 16);
          v66 = *(v67 + 8);
          v45 = v66 - v65;
          if (__OFSUB__(v66, v65))
          {
            __break(1u);
            goto LABEL_28;
          }
        }

        else
        {
          v45 = 0;
        }
      }

      else if (v44)
      {
        v63 = __OFSUB__(HIDWORD(v42), v42);
        v71 = HIDWORD(v42) - v42;
        if (v63)
        {
LABEL_38:
          __break(1u);
          return result;
        }

        v45 = v71;
      }

      else
      {
        v45 = BYTE6(v43);
      }

      sub_2542182D4(v35);
      *(v34 + 4) = v45;
      *(v34 + 12) = 2080;
      sub_25424D418();
      sub_25421943C();
      v72 = sub_25424EA58();
      v74 = sub_2542203C4(v72, v73, &v88);

      *(v34 + 14) = v74;
      _os_log_impl(&dword_254124000, v33, v41, "Failed to write %ld byte(s) to '%s'", v34, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x259C07330](v27, -1, -1);
      MEMORY[0x259C07330](v34, -1, -1);
      goto LABEL_35;
    }

    v46 = v78;
    static LoggedObject.logger.getter(v86, &protocol witness table for AsyncFileOutputStream, v78);
    v47 = v77;
    v48 = v87;
    v29(v77, a2, v87);
    v49 = sub_25424DA88();
    v50 = sub_25424E438();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v88 = v86;
      *v51 = 136315138;
      v29(v75, v47, v87);
      v52 = sub_25424DD08();
      v54 = v53;
      v55 = v81[1];
      v55(v47, v87);
      v56 = sub_2542203C4(v52, v54, &v88);
      v57 = v46;
      v58 = v56;

      *(v51 + 4) = v58;
      _os_log_impl(&dword_254124000, v49, v50, "Unhandled stream result: %s", v51, 0xCu);
      v59 = v86;
      __swift_destroy_boxed_opaque_existential_1(v86);
      MEMORY[0x259C07330](v59, -1, -1);
      v48 = v87;
      MEMORY[0x259C07330](v51, -1, -1);

      (*(v84 + 8))(v57, v85);
    }

    else
    {

      v55 = v81[1];
      v55(v47, v48);
      (*(v84 + 8))(v46, v85);
    }

    return (v55)(v82, v48);
  }

  return result;
}

uint64_t sub_254217ED8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v24[2] = a2;
  v7 = type metadata accessor for AsyncFileOutputStream.InternalStreamElement(0);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v11 = (v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBF70, &unk_254261960);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v24 - v15;
  v17 = *(v8 + 28);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8848, &qword_254261820);
  v19 = *(v18 - 8);
  v20 = *(v19 + 16);
  v24[1] = a1;
  v20(v11 + v17, a1, v18);
  (*(v19 + 56))(v11 + v17, 0, 1, v18);
  *v11 = a3;
  v11[1] = a4;
  sub_254140660(a3, a4);
  sub_25421766C(v11, v16);
  sub_2542182D4(v11);
  result = (*(v13 + 88))(v16, v12);
  if (result != *MEMORY[0x277D85758])
  {
    sub_254219568();
    v22 = swift_allocError();
    *v23 = 0;
    v24[3] = v22;
    sub_25424E078();
    return (*(v13 + 8))(v16, v12);
  }

  return result;
}

uint64_t sub_254218140(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_25424D418() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBF60, &qword_254261948) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_25412F724;

  return sub_254215650(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_2542182D4(uint64_t a1)
{
  v2 = type metadata accessor for AsyncFileOutputStream.InternalStreamElement(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_254218330(void **a1, void (*a2)(char *, uint64_t), uint64_t a3)
{
  v111[1] = *MEMORY[0x277D85DE8];
  v6 = sub_25424D418();
  v110 = *(v6 - 8);
  v7 = v110[8];
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v98 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v108 = &v98 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v98 - v16;
  v109 = sub_25424DAA8();
  v18 = *(v109 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v109);
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v98 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  MEMORY[0x28223BE20](v24);
  v28 = &v98 - v27;
  v29 = *a1;
  if (*a1)
  {
    v98 = v26;
    v99 = v10;
    v100 = v25;
    v30 = v29;
    v104 = a3;
    static LoggedObject.logger.getter(a3, &protocol witness table for AsyncFileOutputStream, v28);
    v31 = v110[2];
    v105 = a2;
    v101 = v31;
    v102 = v110 + 2;
    v31(v17, a2, v6);
    v32 = sub_25424DA88();
    v33 = sub_25424E418();
    v34 = os_log_type_enabled(v32, v33);
    v106 = v30;
    v107 = v18;
    if (v34)
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v111[0] = v36;
      *v35 = 136446210;
      sub_25421943C();
      v37 = sub_25424EA58();
      v39 = v38;
      v103 = v110[1];
      v103(v17, v6);
      v40 = sub_2542203C4(v37, v39, v111);
      v41 = v107;

      *(v35 + 4) = v40;
      _os_log_impl(&dword_254124000, v32, v33, "Closing '%{public}s'", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v36);
      v42 = v36;
      v43 = v109;
      MEMORY[0x259C07330](v42, -1, -1);
      v44 = v35;
      v30 = v106;
      MEMORY[0x259C07330](v44, -1, -1);

      v45 = *(v41 + 8);
      v45(v28, v43);
    }

    else
    {

      v103 = v110[1];
      v103(v17, v6);
      v45 = *(v18 + 8);
      v43 = v109;
      v45(v28, v109);
    }

    v111[0] = 0;
    v59 = [v30 closeAndReturnError_];
    v61 = v104;
    v60 = v105;
    v62 = v108;
    if (v59)
    {
      v63 = v111[0];
      v64 = v98;
      static LoggedObject.logger.getter(v61, &protocol witness table for AsyncFileOutputStream, v98);
      v101(v62, v60, v6);
      v65 = v64;
      v66 = sub_25424DA88();
      v67 = sub_25424E408();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v105 = v45;
        v70 = v69;
        v111[0] = v69;
        *v68 = 136446210;
        sub_25421943C();
        v71 = sub_25424EA58();
        v72 = v62;
        v74 = v73;
        v103(v72, v6);
        v75 = sub_2542203C4(v71, v74, v111);

        *(v68 + 4) = v75;
        _os_log_impl(&dword_254124000, v66, v67, "Finished writing '%{public}s'", v68, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v70);
        MEMORY[0x259C07330](v70, -1, -1);
        MEMORY[0x259C07330](v68, -1, -1);

        v76 = v65;
        v77 = v43;
LABEL_12:
        result = (v105)(v76, v77);
        goto LABEL_17;
      }

      v103(v62, v6);
      v95 = v65;
      v96 = v43;
    }

    else
    {
      v78 = v111[0];
      v79 = sub_25424D3A8();

      swift_willThrow();
      v80 = v100;
      static LoggedObject.logger.getter(v61, &protocol witness table for AsyncFileOutputStream, v100);
      v81 = v99;
      v101(v99, v60, v6);
      v82 = v79;
      v83 = sub_25424DA88();
      v84 = sub_25424E428();

      if (os_log_type_enabled(v83, v84))
      {
        v85 = swift_slowAlloc();
        v86 = swift_slowAlloc();
        v105 = v45;
        v87 = v86;
        v88 = swift_slowAlloc();
        v111[0] = v88;
        *v85 = 136446466;
        sub_25421943C();
        v89 = sub_25424EA58();
        v91 = v90;
        v103(v81, v6);
        v92 = sub_2542203C4(v89, v91, v111);

        *(v85 + 4) = v92;
        *(v85 + 12) = 2114;
        v93 = v79;
        v94 = _swift_stdlib_bridgeErrorToNSError();
        *(v85 + 14) = v94;
        *v87 = v94;
        _os_log_impl(&dword_254124000, v83, v84, "Failed to close file handle for '%{public}s': %{public}@", v85, 0x16u);
        sub_254132E5C(v87, &unk_27F5BBED0, &qword_254253F80);
        MEMORY[0x259C07330](v87, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v88);
        MEMORY[0x259C07330](v88, -1, -1);
        MEMORY[0x259C07330](v85, -1, -1);

        v76 = v100;
        v77 = v109;
        goto LABEL_12;
      }

      v103(v81, v6);
      v95 = v80;
      v96 = v109;
    }

    result = (v45)(v95, v96);
    goto LABEL_17;
  }

  static LoggedObject.logger.getter(a3, &protocol witness table for AsyncFileOutputStream, v23);
  (v110[2])(v13, a2, v6);
  v46 = sub_25424DA88();
  v47 = sub_25424E418();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = v110;
    v50 = v18;
    v51 = v48;
    v52 = swift_slowAlloc();
    v111[0] = v52;
    *v51 = 136446210;
    sub_25421943C();
    v53 = sub_25424EA58();
    v54 = v6;
    v56 = v55;
    (v49[1])(v13, v54);
    v57 = sub_2542203C4(v53, v56, v111);

    *(v51 + 4) = v57;
    _os_log_impl(&dword_254124000, v46, v47, "Finished without ever opening '%{public}s'", v51, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v52);
    MEMORY[0x259C07330](v52, -1, -1);
    MEMORY[0x259C07330](v51, -1, -1);

    result = (*(v50 + 8))(v23, v109);
  }

  else
  {

    (v110[1])(v13, v6);
    result = (*(v18 + 8))(v23, v109);
  }

LABEL_17:
  v97 = *MEMORY[0x277D85DE8];
  return result;
}

id sub_254218CB4(uint64_t a1)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v2 = sub_25424D3E8();
  v12[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() fileHandleForWritingToURL:v2 error:v12];

  v4 = v12[0];
  if (v3)
  {
    v5 = sub_25424D418();
    v6 = *(*(v5 - 8) + 8);
    v7 = v4;
    v6(a1, v5);
  }

  else
  {
    v8 = v12[0];
    sub_25424D3A8();

    swift_willThrow();
    v9 = sub_25424D418();
    (*(*(v9 - 8) + 8))(a1, v9);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v3;
}

Swift::Void __swiftcall AsyncFileOutputStream.write(_:)(Swift::String a1)
{
  v1 = type metadata accessor for AsyncFileOutputStream.InternalStreamElement(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = (&v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBF70, &unk_254261960);
  v5 = *(v21 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v21);
  v8 = &v20 - v7;
  v9 = sub_25424DCF8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25424DCE8();
  v14 = sub_25424DCC8();
  v16 = v15;
  (*(v10 + 8))(v13, v9);
  if (v16 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v17 = *(v1 + 20);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8848, &qword_254261820);
    (*(*(v18 - 8) + 56))(v4 + v17, 1, 1, v18);
    *v4 = v14;
    v4[1] = v16;
    sub_254140660(v14, v16);
    sub_25421766C(v4, v8);
    sub_254134CF0(v14, v16);
    sub_2542182D4(v4);
    v19 = v21;
    if ((*(v5 + 88))(v8, v21) != *MEMORY[0x277D85758])
    {
      (*(v5 + 8))(v8, v19);
    }
  }
}

unint64_t sub_2542190B8()
{
  result = qword_27F5BBF78;
  if (!qword_27F5BBF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BBF78);
  }

  return result;
}

void sub_254219164()
{
  v0 = sub_25424D418();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_254219268();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_254219268()
{
  if (!qword_27F5BBF90)
  {
    type metadata accessor for AsyncFileOutputStream.InternalStreamElement(255);
    v0 = sub_25424E168();
    if (!v1)
    {
      atomic_store(v0, &qword_27F5BBF90);
    }
  }
}

void sub_2542192F8()
{
  sub_254219374();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_254219374()
{
  if (!qword_27F5BBFA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5B8848, &qword_254261820);
    v0 = sub_25424E598();
    if (!v1)
    {
      atomic_store(v0, &qword_27F5BBFA8);
    }
  }
}

uint64_t sub_2542193D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AsyncFileOutputStream.InternalStreamElement(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_25421943C()
{
  result = qword_27F5BBFB0;
  if (!qword_27F5BBFB0)
  {
    sub_25424D418();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BBFB0);
  }

  return result;
}

uint64_t sub_254219494(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AsyncFileOutputStream.InternalStreamElement(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2542194F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8840, &qword_254252D18);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_254219568()
{
  result = qword_27F5BBFC8;
  if (!qword_27F5BBFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BBFC8);
  }

  return result;
}

unint64_t sub_2542195BC()
{
  result = qword_27F5BBFD0;
  if (!qword_27F5BBFD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F5BBFD0);
  }

  return result;
}

unint64_t sub_254219608()
{
  result = qword_27F5BBFD8;
  if (!qword_27F5BBFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BBFD8);
  }

  return result;
}

uint64_t static HMVCommands.resetConfiguration()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_25419EEA0;

  return sub_25412FDA0(sub_25412FDA0, sub_254219714, 0);
}

void sub_254219714(void *a1, uint64_t a2)
{
  v4[4] = sub_2542199D4;
  v4[5] = a2;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 1107296256;
  v4[2] = sub_2541ED26C;
  v4[3] = &block_descriptor_20;
  v3 = _Block_copy(v4);

  [a1 hmvutilResetConfigurationWithReply_];
  _Block_release(v3);
}

uint64_t sub_2542197DC(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B90C0, &qword_254253F20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - v6;
  if (a1)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    v9 = sub_25424E128();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = a2;
    v10[5] = sub_25412F60C;
    v10[6] = v8;

    v11 = a1;
    v12 = &unk_254254328;
    v13 = v7;
    v14 = v10;
  }

  else
  {
    v15 = sub_25424E128();
    (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = a2;
    v16[5] = sub_25412F540;
    v16[6] = 0;

    v12 = &unk_254252CB0;
    v13 = v7;
    v14 = v16;
  }

  sub_25419CC1C(0, 0, v13, v12, v14);
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2542199F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_254219A18, 0, 0);
}

uint64_t sub_254219A18()
{
  type metadata accessor for XPCPublicClient();
  v1 = swift_allocObject();
  *(v0 + 40) = v1;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0;
  v8 = *(v0 + 24);
  sub_2541FACD0();
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *(v2 + 16) = v1;
  *(v2 + 24) = v8;
  v3 = *(MEMORY[0x277D85A40] + 4);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_2541A6B88;
  v5 = *(v0 + 16);
  v6 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v5, 0, 0, 0xD000000000000024, 0x8000000254251B10, sub_254224F24, v2, v6);
}

uint64_t sub_254219B4C(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return MEMORY[0x2822009F8](sub_254219B6C, 0, 0);
}

uint64_t sub_254219B6C()
{
  type metadata accessor for XPCPublicClient();
  v1 = swift_allocObject();
  *(v0 + 40) = v1;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0;
  v7 = *(v0 + 24);
  sub_2541FACD0();
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *(v2 + 16) = v1;
  *(v2 + 24) = v7;
  v3 = *(MEMORY[0x277D85A40] + 4);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC028, &qword_254261BC8);
  *v4 = v0;
  v4[1] = sub_254219CAC;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000024, 0x8000000254251B10, sub_254224E68, v2, v5);
}

uint64_t sub_254219CAC()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_2541A6D28;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_254219DC8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_254219DC8()
{
  v1 = v0[5];
  [*(v1 + 16) invalidate];
  v2 = *(v1 + 16);
  *(v1 + 16) = 0;

  v3 = v0[2];
  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_254219E50@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v1 = sub_25424DAA8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v33 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBE98, &unk_2542614D0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v39 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v32 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v35 = &v32 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v32 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v32 - v17;
  type metadata accessor for LoggedObjectPropertyKey();
  inited = swift_initStaticObject();
  *&v40 = &type metadata for HMVCommands;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBEB0, &unk_254261538);
  v20 = sub_25424EB18();
  v36 = inited;
  v21 = objc_getAssociatedObject(v20, inited);
  swift_unknownObjectRelease();
  if (v21)
  {
    sub_25424E5D8();
    swift_unknownObjectRelease();
  }

  else
  {
    v40 = 0u;
    v41 = 0u;
  }

  v42[0] = v40;
  v42[1] = v41;
  v37 = v11;
  if (*(&v41 + 1))
  {
    v22 = swift_dynamicCast();
    v23 = *(v2 + 56);
    v23(v18, v22 ^ 1u, 1, v1);
  }

  else
  {
    sub_254132E5C(v42, &qword_27F5BA568, &qword_254259B88);
    v23 = *(v2 + 56);
    v23(v18, 1, 1, v1);
  }

  sub_254132DF4(v18, v16, &qword_27F5BBE98, &unk_2542614D0);
  v24 = *(v2 + 48);
  v25 = v24(v16, 1, v1);
  sub_254132E5C(v16, &qword_27F5BBE98, &unk_2542614D0);
  if (v25 == 1)
  {
    off_28663AAD8(&type metadata for HMVCommands, &protocol witness table for HMVCommands);
    v26 = v35;
    sub_25424DA98();
    v23(v26, 0, 1, v1);
    sub_254132C3C(v26, v18, &qword_27F5BBE98, &unk_2542614D0);
    *&v42[0] = &type metadata for HMVCommands;
    v27 = sub_25424EB18();
    v28 = v37;
    sub_254132DF4(v18, v37, &qword_27F5BBE98, &unk_2542614D0);
    if (v24(v28, 1, v1) == 1)
    {
      v29 = 0;
    }

    else
    {
      (*(v2 + 16))(v33, v28, v1);
      v29 = sub_25424EB18();
      (*(v2 + 8))(v28, v1);
    }

    objc_setAssociatedObject(v27, v36, v29, 0x301);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  v30 = v39;
  sub_254132DF4(v18, v39, &qword_27F5BBE98, &unk_2542614D0);
  result = v24(v30, 1, v1);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v2 + 32))(v38, v30, v1);
    return sub_254132E5C(v18, &qword_27F5BBE98, &unk_2542614D0);
  }

  return result;
}

uint64_t sub_25421A334@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v1 = sub_25424DAA8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v33[0] = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBE98, &unk_2542614D0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v39 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v33 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v35 = v33 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = v33 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = v33 - v17;
  v19 = type metadata accessor for EncryptionKeyQuery();
  type metadata accessor for LoggedObjectPropertyKey();
  inited = swift_initStaticObject();
  v34 = v19;
  *&v40 = v19;
  v33[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8D60, &qword_254253E48);
  v21 = sub_25424EB18();
  v36 = inited;
  v22 = objc_getAssociatedObject(v21, inited);
  swift_unknownObjectRelease();
  if (v22)
  {
    sub_25424E5D8();
    swift_unknownObjectRelease();
  }

  else
  {
    v40 = 0u;
    v41 = 0u;
  }

  v37 = v11;
  v42[0] = v40;
  v42[1] = v41;
  if (*(&v41 + 1))
  {
    v23 = swift_dynamicCast();
    v24 = *(v2 + 56);
    v24(v18, v23 ^ 1u, 1, v1);
  }

  else
  {
    sub_254132E5C(v42, &qword_27F5BA568, &qword_254259B88);
    v24 = *(v2 + 56);
    v24(v18, 1, 1, v1);
  }

  sub_254132DF4(v18, v16, &qword_27F5BBE98, &unk_2542614D0);
  v25 = *(v2 + 48);
  v26 = v25(v16, 1, v1);
  sub_254132E5C(v16, &qword_27F5BBE98, &unk_2542614D0);
  if (v26 == 1)
  {
    v27 = v35;
    sub_25424DA98();
    v24(v27, 0, 1, v1);
    sub_254132C3C(v27, v18, &qword_27F5BBE98, &unk_2542614D0);
    *&v42[0] = v34;
    v28 = sub_25424EB18();
    v29 = v37;
    sub_254132DF4(v18, v37, &qword_27F5BBE98, &unk_2542614D0);
    if (v25(v29, 1, v1) == 1)
    {
      v30 = 0;
    }

    else
    {
      (*(v2 + 16))(v33[0], v29, v1);
      v30 = sub_25424EB18();
      (*(v2 + 8))(v29, v1);
    }

    objc_setAssociatedObject(v28, v36, v30, 0x301);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  v31 = v39;
  sub_254132DF4(v18, v39, &qword_27F5BBE98, &unk_2542614D0);
  result = v25(v31, 1, v1);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v2 + 32))(v38, v31, v1);
    return sub_254132E5C(v18, &qword_27F5BBE98, &unk_2542614D0);
  }

  return result;
}

uint64_t sub_25421A804@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v1 = sub_25424DAA8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v33 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBE98, &unk_2542614D0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v39 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v32 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v35 = &v32 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v32 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v32 - v17;
  type metadata accessor for LoggedObjectPropertyKey();
  inited = swift_initStaticObject();
  *&v40 = &type metadata for SharedZoneLookup;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBEB8, &qword_254261548);
  v20 = sub_25424EB18();
  v36 = inited;
  v21 = objc_getAssociatedObject(v20, inited);
  swift_unknownObjectRelease();
  if (v21)
  {
    sub_25424E5D8();
    swift_unknownObjectRelease();
  }

  else
  {
    v40 = 0u;
    v41 = 0u;
  }

  v42[0] = v40;
  v42[1] = v41;
  v37 = v11;
  if (*(&v41 + 1))
  {
    v22 = swift_dynamicCast();
    v23 = *(v2 + 56);
    v23(v18, v22 ^ 1u, 1, v1);
  }

  else
  {
    sub_254132E5C(v42, &qword_27F5BA568, &qword_254259B88);
    v23 = *(v2 + 56);
    v23(v18, 1, 1, v1);
  }

  sub_254132DF4(v18, v16, &qword_27F5BBE98, &unk_2542614D0);
  v24 = *(v2 + 48);
  v25 = v24(v16, 1, v1);
  sub_254132E5C(v16, &qword_27F5BBE98, &unk_2542614D0);
  if (v25 == 1)
  {
    off_286636BC8(&type metadata for SharedZoneLookup, &protocol witness table for SharedZoneLookup);
    v26 = v35;
    sub_25424DA98();
    v23(v26, 0, 1, v1);
    sub_254132C3C(v26, v18, &qword_27F5BBE98, &unk_2542614D0);
    *&v42[0] = &type metadata for SharedZoneLookup;
    v27 = sub_25424EB18();
    v28 = v37;
    sub_254132DF4(v18, v37, &qword_27F5BBE98, &unk_2542614D0);
    if (v24(v28, 1, v1) == 1)
    {
      v29 = 0;
    }

    else
    {
      (*(v2 + 16))(v33, v28, v1);
      v29 = sub_25424EB18();
      (*(v2 + 8))(v28, v1);
    }

    objc_setAssociatedObject(v27, v36, v29, 0x301);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  v30 = v39;
  sub_254132DF4(v18, v39, &qword_27F5BBE98, &unk_2542614D0);
  result = v24(v30, 1, v1);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v2 + 32))(v38, v30, v1);
    return sub_254132E5C(v18, &qword_27F5BBE98, &unk_2542614D0);
  }

  return result;
}

uint64_t sub_25421ACE8@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v1 = sub_25424DAA8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v33[0] = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBE98, &unk_2542614D0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v39 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v33 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v35 = v33 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = v33 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = v33 - v17;
  v19 = type metadata accessor for EventQuery(0);
  type metadata accessor for LoggedObjectPropertyKey();
  inited = swift_initStaticObject();
  v34 = v19;
  *&v40 = v19;
  v33[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B9290, &qword_2542545E8);
  v21 = sub_25424EB18();
  v36 = inited;
  v22 = objc_getAssociatedObject(v21, inited);
  swift_unknownObjectRelease();
  if (v22)
  {
    sub_25424E5D8();
    swift_unknownObjectRelease();
  }

  else
  {
    v40 = 0u;
    v41 = 0u;
  }

  v37 = v11;
  v42[0] = v40;
  v42[1] = v41;
  if (*(&v41 + 1))
  {
    v23 = swift_dynamicCast();
    v24 = *(v2 + 56);
    v24(v18, v23 ^ 1u, 1, v1);
  }

  else
  {
    sub_254132E5C(v42, &qword_27F5BA568, &qword_254259B88);
    v24 = *(v2 + 56);
    v24(v18, 1, 1, v1);
  }

  sub_254132DF4(v18, v16, &qword_27F5BBE98, &unk_2542614D0);
  v25 = *(v2 + 48);
  v26 = v25(v16, 1, v1);
  sub_254132E5C(v16, &qword_27F5BBE98, &unk_2542614D0);
  if (v26 == 1)
  {
    v27 = v35;
    sub_25424DA98();
    v24(v27, 0, 1, v1);
    sub_254132C3C(v27, v18, &qword_27F5BBE98, &unk_2542614D0);
    *&v42[0] = v34;
    v28 = sub_25424EB18();
    v29 = v37;
    sub_254132DF4(v18, v37, &qword_27F5BBE98, &unk_2542614D0);
    if (v25(v29, 1, v1) == 1)
    {
      v30 = 0;
    }

    else
    {
      (*(v2 + 16))(v33[0], v29, v1);
      v30 = sub_25424EB18();
      (*(v2 + 8))(v29, v1);
    }

    objc_setAssociatedObject(v28, v36, v30, 0x301);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  v31 = v39;
  sub_254132DF4(v18, v39, &qword_27F5BBE98, &unk_2542614D0);
  result = v25(v31, 1, v1);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v2 + 32))(v38, v31, v1);
    return sub_254132E5C(v18, &qword_27F5BBE98, &unk_2542614D0);
  }

  return result;
}

uint64_t sub_25421B1A8@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v1 = sub_25424DAA8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v33 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBE98, &unk_2542614D0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v39 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v32 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v35 = &v32 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v32 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v32 - v17;
  type metadata accessor for LoggedObjectPropertyKey();
  inited = swift_initStaticObject();
  *&v40 = &type metadata for EventManager;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBEA0, &qword_254261528);
  v20 = sub_25424EB18();
  v36 = inited;
  v21 = objc_getAssociatedObject(v20, inited);
  swift_unknownObjectRelease();
  if (v21)
  {
    sub_25424E5D8();
    swift_unknownObjectRelease();
  }

  else
  {
    v40 = 0u;
    v41 = 0u;
  }

  v42[0] = v40;
  v42[1] = v41;
  v37 = v11;
  if (*(&v41 + 1))
  {
    v22 = swift_dynamicCast();
    v23 = *(v2 + 56);
    v23(v18, v22 ^ 1u, 1, v1);
  }

  else
  {
    sub_254132E5C(v42, &qword_27F5BA568, &qword_254259B88);
    v23 = *(v2 + 56);
    v23(v18, 1, 1, v1);
  }

  sub_254132DF4(v18, v16, &qword_27F5BBE98, &unk_2542614D0);
  v24 = *(v2 + 48);
  v25 = v24(v16, 1, v1);
  sub_254132E5C(v16, &qword_27F5BBE98, &unk_2542614D0);
  if (v25 == 1)
  {
    sub_25420C72C(&type metadata for EventManager, &protocol witness table for EventManager);
    v26 = v35;
    sub_25424DA98();
    v23(v26, 0, 1, v1);
    sub_254132C3C(v26, v18, &qword_27F5BBE98, &unk_2542614D0);
    *&v42[0] = &type metadata for EventManager;
    v27 = sub_25424EB18();
    v28 = v37;
    sub_254132DF4(v18, v37, &qword_27F5BBE98, &unk_2542614D0);
    if (v24(v28, 1, v1) == 1)
    {
      v29 = 0;
    }

    else
    {
      (*(v2 + 16))(v33, v28, v1);
      v29 = sub_25424EB18();
      (*(v2 + 8))(v28, v1);
    }

    objc_setAssociatedObject(v27, v36, v29, 0x301);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  v30 = v39;
  sub_254132DF4(v18, v39, &qword_27F5BBE98, &unk_2542614D0);
  result = v24(v30, 1, v1);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v2 + 32))(v38, v30, v1);
    return sub_254132E5C(v18, &qword_27F5BBE98, &unk_2542614D0);
  }

  return result;
}

uint64_t sub_25421B67C@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v1 = sub_25424DAA8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v33 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBE98, &unk_2542614D0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v39 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v32 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v35 = &v32 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v32 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v32 - v17;
  type metadata accessor for LoggedObjectPropertyKey();
  inited = swift_initStaticObject();
  *&v40 = &type metadata for CloudKitExporter;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BAF98, &qword_25425CEE0);
  v20 = sub_25424EB18();
  v36 = inited;
  v21 = objc_getAssociatedObject(v20, inited);
  swift_unknownObjectRelease();
  if (v21)
  {
    sub_25424E5D8();
    swift_unknownObjectRelease();
  }

  else
  {
    v40 = 0u;
    v41 = 0u;
  }

  v42[0] = v40;
  v42[1] = v41;
  v37 = v11;
  if (*(&v41 + 1))
  {
    v22 = swift_dynamicCast();
    v23 = *(v2 + 56);
    v23(v18, v22 ^ 1u, 1, v1);
  }

  else
  {
    sub_254132E5C(v42, &qword_27F5BA568, &qword_254259B88);
    v23 = *(v2 + 56);
    v23(v18, 1, 1, v1);
  }

  sub_254132DF4(v18, v16, &qword_27F5BBE98, &unk_2542614D0);
  v24 = *(v2 + 48);
  v25 = v24(v16, 1, v1);
  sub_254132E5C(v16, &qword_27F5BBE98, &unk_2542614D0);
  if (v25 == 1)
  {
    off_286639070(&type metadata for CloudKitExporter, &protocol witness table for CloudKitExporter);
    v26 = v35;
    sub_25424DA98();
    v23(v26, 0, 1, v1);
    sub_254132C3C(v26, v18, &qword_27F5BBE98, &unk_2542614D0);
    *&v42[0] = &type metadata for CloudKitExporter;
    v27 = sub_25424EB18();
    v28 = v37;
    sub_254132DF4(v18, v37, &qword_27F5BBE98, &unk_2542614D0);
    if (v24(v28, 1, v1) == 1)
    {
      v29 = 0;
    }

    else
    {
      (*(v2 + 16))(v33, v28, v1);
      v29 = sub_25424EB18();
      (*(v2 + 8))(v28, v1);
    }

    objc_setAssociatedObject(v27, v36, v29, 0x301);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  v30 = v39;
  sub_254132DF4(v18, v39, &qword_27F5BBE98, &unk_2542614D0);
  result = v24(v30, 1, v1);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v2 + 32))(v38, v30, v1);
    return sub_254132E5C(v18, &qword_27F5BBE98, &unk_2542614D0);
  }

  return result;
}

uint64_t sub_25421BB60@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v1 = sub_25424DAA8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v33[0] = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBE98, &unk_2542614D0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v39 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v33 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v35 = v33 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = v33 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = v33 - v17;
  v19 = type metadata accessor for CKQueryAsyncSequence();
  type metadata accessor for LoggedObjectPropertyKey();
  inited = swift_initStaticObject();
  v34 = v19;
  *&v40 = v19;
  v33[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBFE8, &qword_254261B88);
  v21 = sub_25424EB18();
  v36 = inited;
  v22 = objc_getAssociatedObject(v21, inited);
  swift_unknownObjectRelease();
  if (v22)
  {
    sub_25424E5D8();
    swift_unknownObjectRelease();
  }

  else
  {
    v40 = 0u;
    v41 = 0u;
  }

  v37 = v11;
  v42[0] = v40;
  v42[1] = v41;
  if (*(&v41 + 1))
  {
    v23 = swift_dynamicCast();
    v24 = *(v2 + 56);
    v24(v18, v23 ^ 1u, 1, v1);
  }

  else
  {
    sub_254132E5C(v42, &qword_27F5BA568, &qword_254259B88);
    v24 = *(v2 + 56);
    v24(v18, 1, 1, v1);
  }

  sub_254132DF4(v18, v16, &qword_27F5BBE98, &unk_2542614D0);
  v25 = *(v2 + 48);
  v26 = v25(v16, 1, v1);
  sub_254132E5C(v16, &qword_27F5BBE98, &unk_2542614D0);
  if (v26 == 1)
  {
    v27 = v35;
    sub_25424DA98();
    v24(v27, 0, 1, v1);
    sub_254132C3C(v27, v18, &qword_27F5BBE98, &unk_2542614D0);
    *&v42[0] = v34;
    v28 = sub_25424EB18();
    v29 = v37;
    sub_254132DF4(v18, v37, &qword_27F5BBE98, &unk_2542614D0);
    if (v25(v29, 1, v1) == 1)
    {
      v30 = 0;
    }

    else
    {
      (*(v2 + 16))(v33[0], v29, v1);
      v30 = sub_25424EB18();
      (*(v2 + 8))(v29, v1);
    }

    objc_setAssociatedObject(v28, v36, v30, 0x301);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  v31 = v39;
  sub_254132DF4(v18, v39, &qword_27F5BBE98, &unk_2542614D0);
  result = v25(v31, 1, v1);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v2 + 32))(v38, v31, v1);
    return sub_254132E5C(v18, &qword_27F5BBE98, &unk_2542614D0);
  }

  return result;
}

uint64_t sub_25421C024@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v1 = sub_25424DAA8();
  v2 = *(v1 - 8);
  v3 = v2[8];
  MEMORY[0x28223BE20](v1);
  v34[0] = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBE98, &unk_2542614D0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v39 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v34 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v35 = v34 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = v34 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = v34 - v17;
  v19 = type metadata accessor for AsyncFileOutputStream(0);
  type metadata accessor for LoggedObjectPropertyKey();
  inited = swift_initStaticObject();
  *&v41 = v19;
  v34[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBEA8, &qword_254261530);
  v21 = sub_25424EB18();
  v36 = inited;
  v22 = objc_getAssociatedObject(v21, inited);
  swift_unknownObjectRelease();
  if (v22)
  {
    sub_25424E5D8();
    swift_unknownObjectRelease();
  }

  else
  {
    v41 = 0u;
    v42 = 0u;
  }

  v37 = v11;
  v43[0] = v41;
  v43[1] = v42;
  if (*(&v42 + 1))
  {
    v23 = swift_dynamicCast();
    v24 = v2[7];
    v24(v18, v23 ^ 1u, 1, v1);
  }

  else
  {
    sub_254132E5C(v43, &qword_27F5BA568, &qword_254259B88);
    v24 = v2[7];
    v24(v18, 1, 1, v1);
  }

  sub_254132DF4(v18, v16, &qword_27F5BBE98, &unk_2542614D0);
  v40 = v2;
  v25 = v2[6];
  v26 = v25(v16, 1, v1);
  sub_254132E5C(v16, &qword_27F5BBE98, &unk_2542614D0);
  if (v26 == 1)
  {
    off_28663BDC8(v19, &protocol witness table for AsyncFileOutputStream);
    v27 = v35;
    sub_25424DA98();
    v28 = v40;
    v24(v27, 0, 1, v1);
    sub_254132C3C(v27, v18, &qword_27F5BBE98, &unk_2542614D0);
    *&v43[0] = v19;
    v29 = sub_25424EB18();
    v30 = v37;
    sub_254132DF4(v18, v37, &qword_27F5BBE98, &unk_2542614D0);
    if (v25(v30, 1, v1) == 1)
    {
      v31 = 0;
    }

    else
    {
      (v28[2])(v34[0], v30, v1);
      v31 = sub_25424EB18();
      (v28[1])(v30, v1);
    }

    objc_setAssociatedObject(v29, v36, v31, 0x301);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  v32 = v39;
  sub_254132DF4(v18, v39, &qword_27F5BBE98, &unk_2542614D0);
  result = v25(v32, 1, v1);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (v40[4])(v38, v32, v1);
    return sub_254132E5C(v18, &qword_27F5BBE98, &unk_2542614D0);
  }

  return result;
}

uint64_t sub_25421C508@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v1 = sub_25424DAA8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v33[0] = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBE98, &unk_2542614D0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v39 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v33 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v35 = v33 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = v33 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = v33 - v17;
  v19 = type metadata accessor for EventDigestQuery(0);
  type metadata accessor for LoggedObjectPropertyKey();
  inited = swift_initStaticObject();
  v34 = v19;
  *&v40 = v19;
  v33[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC000, &qword_254261BA0);
  v21 = sub_25424EB18();
  v36 = inited;
  v22 = objc_getAssociatedObject(v21, inited);
  swift_unknownObjectRelease();
  if (v22)
  {
    sub_25424E5D8();
    swift_unknownObjectRelease();
  }

  else
  {
    v40 = 0u;
    v41 = 0u;
  }

  v37 = v11;
  v42[0] = v40;
  v42[1] = v41;
  if (*(&v41 + 1))
  {
    v23 = swift_dynamicCast();
    v24 = *(v2 + 56);
    v24(v18, v23 ^ 1u, 1, v1);
  }

  else
  {
    sub_254132E5C(v42, &qword_27F5BA568, &qword_254259B88);
    v24 = *(v2 + 56);
    v24(v18, 1, 1, v1);
  }

  sub_254132DF4(v18, v16, &qword_27F5BBE98, &unk_2542614D0);
  v25 = *(v2 + 48);
  v26 = v25(v16, 1, v1);
  sub_254132E5C(v16, &qword_27F5BBE98, &unk_2542614D0);
  if (v26 == 1)
  {
    v27 = v35;
    sub_25424DA98();
    v24(v27, 0, 1, v1);
    sub_254132C3C(v27, v18, &qword_27F5BBE98, &unk_2542614D0);
    *&v42[0] = v34;
    v28 = sub_25424EB18();
    v29 = v37;
    sub_254132DF4(v18, v37, &qword_27F5BBE98, &unk_2542614D0);
    if (v25(v29, 1, v1) == 1)
    {
      v30 = 0;
    }

    else
    {
      (*(v2 + 16))(v33[0], v29, v1);
      v30 = sub_25424EB18();
      (*(v2 + 8))(v29, v1);
    }

    objc_setAssociatedObject(v28, v36, v30, 0x301);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  v31 = v39;
  sub_254132DF4(v18, v39, &qword_27F5BBE98, &unk_2542614D0);
  result = v25(v31, 1, v1);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v2 + 32))(v38, v31, v1);
    return sub_254132E5C(v18, &qword_27F5BBE98, &unk_2542614D0);
  }

  return result;
}

uint64_t sub_25421C9C8(uint64_t a1, void *a2, void (*a3)(void), uint64_t a4)
{
  v26[1] = a4;
  v27 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8840, &qword_254252D18);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8848, &qword_254261820);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v26 - v13;
  (*(v11 + 16))(v26 - v13, a1, v10);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5B8888, &qword_254252D88);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  v18 = swift_allocObject();
  swift_defaultActor_initialize();
  v19 = *(*v18 + 112);
  v20 = *(v11 + 56);
  v20(v18 + v19, 1, 1, v10);
  (*(v11 + 32))(v9, v14, v10);
  v20(v9, 0, 1, v10);
  swift_beginAccess();
  sub_254132C3C(v9, v18 + v19, &qword_27F5B8840, &qword_254252D18);
  swift_endAccess();
  v21 = a2[5];
  v22 = a2[6];
  a2[5] = sub_254224F30;
  a2[6] = v18;

  sub_25412DC98(v21);
  v23 = a2[3];
  v24 = a2[4];
  a2[3] = sub_254224F84;
  a2[4] = v18;

  sub_25412DC98(v23);
  sub_2541FAFB4();
  v27();

  return swift_unknownObjectRelease();
}

uint64_t sub_25421CC54(uint64_t a1, void *a2, void (*a3)(void), uint64_t a4)
{
  v26[1] = a4;
  v27 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8850, &qword_254252D28);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8858, &qword_254252D30);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v26 - v13;
  (*(v11 + 16))(v26 - v13, a1, v10);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC030, &qword_254261BD0);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  v18 = swift_allocObject();
  swift_defaultActor_initialize();
  v19 = *(*v18 + 112);
  v20 = *(v11 + 56);
  v20(v18 + v19, 1, 1, v10);
  (*(v11 + 32))(v9, v14, v10);
  v20(v9, 0, 1, v10);
  swift_beginAccess();
  sub_254132C3C(v9, v18 + v19, &qword_27F5B8850, &qword_254252D28);
  swift_endAccess();
  v21 = a2[5];
  v22 = a2[6];
  a2[5] = sub_254224E74;
  a2[6] = v18;

  sub_25412DC98(v21);
  v23 = a2[3];
  v24 = a2[4];
  a2[3] = sub_254224EC8;
  a2[4] = v18;

  sub_25412DC98(v23);
  sub_2541FAFB4();
  v27();

  return swift_unknownObjectRelease();
}

void sub_25421CEE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B90C0, &qword_254253F20);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v18 - v10;
  sub_254132998();
  v12 = swift_allocError();
  *v13 = 0;
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  v15 = sub_25424E128();
  (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = a1;
  v16[5] = a4;
  v16[6] = v14;
  v17 = v12;

  sub_25419CC1C(0, 0, v11, a5, v16);
}

void sub_25421D048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B90C0, &qword_254253F20);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v18 - v10;
  sub_254132998();
  v12 = swift_allocError();
  *v13 = 1;
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  v15 = sub_25424E128();
  (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = a1;
  v16[5] = a4;
  v16[6] = v14;
  v17 = v12;

  sub_25419CC1C(0, 0, v11, a5, v16);
}

uint64_t static EventManager.writeEvents(_:scope:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25412F724;

  return (sub_254223BC0)(a1, a2);
}

uint64_t static EventManager.writeFakeEvents(date:homeIdentifier:count:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25412F818;

  return sub_254224488(a1, a2, a3);
}

uint64_t static EventManager.writeEvents(_:)(uint64_t a1)
{
  *(v1 + 32) = 0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2541A4A28;

  return (sub_254223BC0)(a1, v1 + 32);
}

uint64_t sub_25421D3E0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v89 = a2;
  v86 = a3;
  v92 = type metadata accessor for SomeEvent();
  v4 = *(*(v92 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v92);
  v87 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v84 - v7;
  v94 = sub_25424DAA8();
  v9 = *(v94 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v94);
  v90 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v88 = &v84 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v84 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v84 - v18;
  v95 = a1;
  sub_2541DA834(&v100);
  v20 = *(&v101 + 1);
  v21 = v102;
  v22 = __swift_project_boxed_opaque_existential_1(&v100, *(&v101 + 1));
  v104 = v20;
  v105 = *(v21 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v103);
  (*(*(v20 - 8) + 16))(boxed_opaque_existential_1, v22, v20);
  __swift_destroy_boxed_opaque_existential_1(&v100);
  __swift_project_boxed_opaque_existential_1(v103, v104);
  DynamicType = swift_getDynamicType();
  v25 = v105;
  __swift_destroy_boxed_opaque_existential_1(v103);
  *&v100 = DynamicType;
  *(&v100 + 1) = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9128, &qword_254254540);
  v26 = sub_25424DD08();
  v28 = v27;
  sub_25421B1A8(v19);

  v29 = sub_25424DA88();
  v30 = sub_25424E448();
  v97 = v28;

  v31 = os_log_type_enabled(v29, v30);
  v93 = v9;
  v85 = v26;
  if (v31)
  {
    v32 = v17;
    v33 = v8;
    v34 = v26;
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v103[0] = v36;
    *v35 = 136446210;
    v37 = v34;
    v8 = v33;
    v17 = v32;
    *(v35 + 4) = sub_2542203C4(v37, v97, v103);
    _os_log_impl(&dword_254124000, v29, v30, "Writing %{public}s event", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v36);
    v38 = v36;
    v9 = v93;
    MEMORY[0x259C07330](v38, -1, -1);
    MEMORY[0x259C07330](v35, -1, -1);
  }

  v39 = v94;
  v96 = *(v9 + 8);
  v96(v19, v94);
  sub_25421B1A8(v17);
  sub_254224FF0(v95, v8);
  v40 = sub_25424DA88();
  v41 = sub_25424E408();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v103[0] = v43;
    *v42 = 136315138;
    sub_254224FF0(v8, v87);
    v44 = sub_25424DD08();
    v46 = v45;
    sub_254225054(v8);
    v47 = sub_2542203C4(v44, v46, v103);

    *(v42 + 4) = v47;
    _os_log_impl(&dword_254124000, v40, v41, "%s", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v43);
    MEMORY[0x259C07330](v43, -1, -1);
    v48 = v42;
    v39 = v94;
    MEMORY[0x259C07330](v48, -1, -1);
  }

  else
  {

    sub_254225054(v8);
  }

  v96(v17, v39);
  v49 = sub_25424D1C8();
  v50 = *(v49 + 48);
  v51 = *(v49 + 52);
  swift_allocObject();
  sub_25424D1B8();
  sub_2542250B0(&qword_27F5BC040, type metadata accessor for SomeEvent);
  v52 = v91;
  v53 = sub_25424D1A8();
  if (!v52)
  {
    v68 = v53;
    v69 = v54;

    v70 = v88;
    sub_25421B1A8(v88);
    sub_254140660(v68, v69);
    v71 = sub_25424DA88();
    v72 = sub_25424E418();
    sub_254134D04(v68, v69);
    if (!os_log_type_enabled(v71, v72))
    {

      v80 = v70;
      v81 = v39;
LABEL_22:
      result = (v96)(v80, v81);
      v83 = v86;
      *v86 = v68;
      v83[1] = v69;
      return result;
    }

    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v106 = v74;
    *v73 = 136315138;
    sub_254140660(v68, v69);
    v75 = sub_2542239C0(v68, v69);
    if (!v76)
    {
      v98 = v68;
      v99 = v69;
      sub_254140660(v68, v69);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC048, &qword_254261BF0);
      if (swift_dynamicCast())
      {
        sub_25412DC4C(&v100, v103);
        v97 = v105;
        __swift_project_boxed_opaque_existential_1(v103, v104);
        if (sub_25424E8C8())
        {
          sub_254134D04(v68, v69);
          v97 = v105;
          __swift_project_boxed_opaque_existential_1(v103, v104);
          sub_25424E8B8();
          v77 = *(&v100 + 1);
          v78 = v100;
          __swift_destroy_boxed_opaque_existential_1(v103);
LABEL_21:
          v82 = sub_2542203C4(v78, v77, &v106);

          *(v73 + 4) = v82;
          _os_log_impl(&dword_254124000, v71, v72, "JSON: '%s'", v73, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v74);
          MEMORY[0x259C07330](v74, -1, -1);
          MEMORY[0x259C07330](v73, -1, -1);

          v81 = v94;
          v80 = v88;
          goto LABEL_22;
        }

        __swift_destroy_boxed_opaque_existential_1(v103);
      }

      else
      {
        v102 = 0;
        v100 = 0u;
        v101 = 0u;
        sub_254132E5C(&v100, &qword_27F5BC050, &qword_254261BF8);
      }

      v75 = sub_254223918(v68, v69);
    }

    v78 = v75;
    v77 = v76;
    sub_254134D04(v68, v69);
    goto LABEL_21;
  }

  v55 = v90;
  sub_25421B1A8(v90);

  v56 = v52;
  v57 = sub_25424DA88();
  v58 = sub_25424E438();

  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v103[0] = v61;
    *v59 = 136446466;
    v62 = v39;
    v63 = sub_2542203C4(v85, v97, v103);

    *(v59 + 4) = v63;
    *(v59 + 12) = 2112;
    v64 = v52;
    v65 = _swift_stdlib_bridgeErrorToNSError();
    *(v59 + 14) = v65;
    *v60 = v65;
    _os_log_impl(&dword_254124000, v57, v58, "Failed to encode %{public}s event: %@", v59, 0x16u);
    sub_254132E5C(v60, &unk_27F5BBED0, &qword_254253F80);
    MEMORY[0x259C07330](v60, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v61);
    MEMORY[0x259C07330](v61, -1, -1);
    MEMORY[0x259C07330](v59, -1, -1);

    v66 = v90;
    v67 = v62;
  }

  else
  {

    v66 = v55;
    v67 = v39;
  }

  v96(v66, v67);
  result = swift_willThrow();
  *v89 = v52;
  return result;
}

uint64_t static EventManager.clearEvents(homeIdentifier:deleteCloudZone:)(uint64_t a1, char a2)
{
  *(v2 + 168) = a2;
  *(v2 + 16) = a1;
  v3 = sub_25424D948();
  *(v2 + 24) = v3;
  v4 = *(v3 - 8);
  *(v2 + 32) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 40) = swift_task_alloc();
  *(v2 + 48) = swift_task_alloc();
  *(v2 + 56) = swift_task_alloc();
  v6 = sub_25424DAA8();
  *(v2 + 64) = v6;
  v7 = *(v6 - 8);
  *(v2 + 72) = v7;
  v8 = *(v7 + 64) + 15;
  *(v2 + 80) = swift_task_alloc();
  *(v2 + 88) = swift_task_alloc();
  *(v2 + 96) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25421DED8, 0, 0);
}

uint64_t sub_25421DED8()
{
  v40 = v0;
  v1 = *(v0 + 56);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 16);
  sub_25421B1A8(*(v0 + 96));
  v5 = *(v3 + 16);
  *(v0 + 104) = v5;
  *(v0 + 112) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_25424DA88();
  v38 = sub_25424E448();
  v7 = os_log_type_enabled(v6, v38);
  v8 = *(v0 + 96);
  v10 = *(v0 + 64);
  v9 = *(v0 + 72);
  v11 = *(v0 + 56);
  v13 = *(v0 + 24);
  v12 = *(v0 + 32);
  if (v7)
  {
    v36 = *(v0 + 168);
    v37 = *(v0 + 64);
    v14 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v39 = v35;
    *v14 = 136315394;
    sub_2542250B0(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
    v34 = v9;
    v15 = v5;
    v16 = sub_25424EA58();
    v18 = v17;
    log = v6;
    v19 = *(v12 + 8);
    v19(v11, v13);
    v20 = v16;
    v5 = v15;
    v21 = sub_2542203C4(v20, v18, &v39);

    *(v14 + 4) = v21;
    *(v14 + 12) = 1024;
    *(v14 + 14) = v36;
    _os_log_impl(&dword_254124000, log, v38, "Clearing events for home %s (delete cloud zone: %{BOOL}d)", v14, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x259C07330](v35, -1, -1);
    MEMORY[0x259C07330](v14, -1, -1);

    v22 = *(v34 + 8);
    v22(v8, v37);
  }

  else
  {

    v19 = *(v12 + 8);
    v19(v11, v13);
    v22 = *(v9 + 8);
    v22(v8, v10);
  }

  *(v0 + 120) = v22;
  *(v0 + 128) = v19;
  v23 = *(v0 + 24);
  v24 = *(v0 + 32);
  v25 = *(v0 + 168);
  v26 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBFE0, &qword_254261B38);
  v27 = *(v24 + 72);
  v28 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v29 = swift_allocObject();
  *(v0 + 136) = v29;
  *(v29 + 16) = xmmword_254254360;
  v5(v29 + v28, v26, v23);
  v30 = swift_task_alloc();
  *(v0 + 144) = v30;
  *(v30 + 16) = v29;
  *(v30 + 24) = v25;
  v31 = swift_task_alloc();
  *(v0 + 152) = v31;
  *v31 = v0;
  v31[1] = sub_25421E234;

  return sub_2542199F4(sub_2542199F4, sub_254224B0C, v30);
}

uint64_t sub_25421E234()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v8 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v4 = sub_25421E5D4;
  }

  else
  {
    v5 = *(v2 + 136);
    v6 = *(v2 + 144);

    v4 = sub_25421E358;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25421E358()
{
  v35 = v0;
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[6];
  v5 = v0[2];
  v4 = v0[3];
  sub_25421B1A8(v0[11]);
  v2(v3, v5, v4);
  v6 = sub_25424DA88();
  v7 = sub_25424E448();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[15];
  v33 = v0[16];
  v10 = v0[11];
  v11 = v0[8];
  v12 = v0[9];
  v13 = v0[6];
  v15 = v0[3];
  v14 = v0[4];
  if (v8)
  {
    v32 = v0[11];
    v16 = swift_slowAlloc();
    v31 = v11;
    v17 = swift_slowAlloc();
    v34 = v17;
    *v16 = 136315138;
    sub_2542250B0(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
    v30 = v9;
    v18 = sub_25424EA58();
    v20 = v19;
    v33(v13, v15);
    v21 = sub_2542203C4(v18, v20, &v34);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_254124000, v6, v7, "Successfully cleared events for home %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x259C07330](v17, -1, -1);
    MEMORY[0x259C07330](v16, -1, -1);

    v30(v32, v31);
  }

  else
  {

    v33(v13, v15);
    v9(v10, v11);
  }

  v23 = v0[11];
  v22 = v0[12];
  v24 = v0[10];
  v26 = v0[6];
  v25 = v0[7];
  v27 = v0[5];

  v28 = v0[1];

  return v28();
}

uint64_t sub_25421E5D4()
{
  v50 = v0;
  v1 = v0[20];
  v2 = v0[17];
  v3 = v0[18];
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[10];
  v7 = v0[5];
  v9 = v0[2];
  v8 = v0[3];

  sub_25421B1A8(v6);
  v5(v7, v9, v8);
  v10 = v1;
  v11 = sub_25424DA88();
  v12 = sub_25424E428();

  if (os_log_type_enabled(v11, v12))
  {
    v43 = v0[16];
    v44 = v0[20];
    v47 = v0[10];
    v48 = v0[15];
    v45 = v0[9];
    v46 = v0[8];
    v13 = v0[5];
    v42 = v0[4];
    v14 = v0[3];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v49 = v17;
    *v15 = 136315394;
    sub_2542250B0(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
    v18 = sub_25424EA58();
    v20 = v19;
    v43(v13, v14);
    v21 = sub_2542203C4(v18, v20, &v49);

    *(v15 + 4) = v21;
    *(v15 + 12) = 2112;
    v22 = v44;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 14) = v23;
    *v16 = v23;
    _os_log_impl(&dword_254124000, v11, v12, "Failed to clear events for home %s: %@", v15, 0x16u);
    sub_254132E5C(v16, &unk_27F5BBED0, &qword_254253F80);
    MEMORY[0x259C07330](v16, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x259C07330](v17, -1, -1);
    MEMORY[0x259C07330](v15, -1, -1);

    v48(v47, v46);
  }

  else
  {
    v25 = v0[15];
    v24 = v0[16];
    v27 = v0[9];
    v26 = v0[10];
    v28 = v0[8];
    v30 = v0[4];
    v29 = v0[5];
    v31 = v0[3];

    v24(v29, v31);
    v25(v26, v28);
  }

  v32 = v0[20];
  v33 = v0[11];
  v34 = v0[12];
  v35 = v0[10];
  v37 = v0[6];
  v36 = v0[7];
  v38 = v0[5];
  swift_willThrow();

  v39 = v0[1];
  v40 = v0[20];

  return v39();
}

uint64_t static EventManager.clearEnergyKitData(privateHomeIdentifiers:sharedHomeIdentifiers:deletePrivateCloudZones:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 160) = a3;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  v4 = sub_25424D948();
  *(v3 + 32) = v4;
  v5 = *(v4 - 8);
  *(v3 + 40) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 48) = swift_task_alloc();
  *(v3 + 56) = swift_task_alloc();
  *(v3 + 64) = swift_task_alloc();
  *(v3 + 72) = swift_task_alloc();
  v7 = sub_25424DAA8();
  *(v3 + 80) = v7;
  v8 = *(v7 - 8);
  *(v3 + 88) = v8;
  v9 = *(v8 + 64) + 15;
  *(v3 + 96) = swift_task_alloc();
  *(v3 + 104) = swift_task_alloc();
  *(v3 + 112) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25421EA50, 0, 0);
}

uint64_t sub_25421EA50()
{
  v35 = v0;
  if (*(*(v0 + 16) + 16) || *(*(v0 + 24) + 16))
  {
    sub_25421B1A8(*(v0 + 112));

    v1 = sub_25424DA88();
    v2 = sub_25424E448();

    v3 = os_log_type_enabled(v1, v2);
    v4 = *(v0 + 112);
    v6 = *(v0 + 80);
    v5 = *(v0 + 88);
    if (v3)
    {
      v7 = *(v0 + 32);
      v31 = *(v0 + 24);
      v8 = *(v0 + 16);
      v33 = *(v0 + 80);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v34 = v10;
      *v9 = 136315394;
      sub_2542250B0(&qword_27F5B89A8, MEMORY[0x277CC95F0]);
      v11 = sub_25424E2C8();
      v32 = v4;
      v13 = sub_2542203C4(v11, v12, &v34);

      *(v9 + 4) = v13;
      *(v9 + 12) = 2080;
      v14 = sub_25424E2C8();
      v16 = sub_2542203C4(v14, v15, &v34);

      *(v9 + 14) = v16;
      _os_log_impl(&dword_254124000, v1, v2, "Clearing EnergyKit data for private homes %s, shared homes %s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C07330](v10, -1, -1);
      MEMORY[0x259C07330](v9, -1, -1);

      v17 = *(v5 + 8);
      v17(v32, v33);
    }

    else
    {

      v17 = *(v5 + 8);
      v17(v4, v6);
    }

    *(v0 + 120) = v17;
    v18 = *(v0 + 160);
    v19 = swift_task_alloc();
    *(v0 + 128) = v19;
    *(v19 + 16) = *(v0 + 16);
    *(v19 + 32) = v18;
    v20 = swift_task_alloc();
    *(v0 + 136) = v20;
    *v20 = v0;
    v20[1] = sub_25421EDB0;

    return sub_254219B4C(sub_254224B18, v19);
  }

  else
  {
    v22 = sub_254224C58(MEMORY[0x277D84F90]);
    v24 = *(v0 + 104);
    v23 = *(v0 + 112);
    v25 = *(v0 + 96);
    v27 = *(v0 + 64);
    v26 = *(v0 + 72);
    v29 = *(v0 + 48);
    v28 = *(v0 + 56);

    v30 = *(v0 + 8);

    return v30(v22);
  }
}

uint64_t sub_25421EDB0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 136);
  v8 = *v2;
  v3[18] = a1;
  v3[19] = v1;

  if (v1)
  {
    v5 = sub_25421F130;
  }

  else
  {
    v6 = v3[16];

    v5 = sub_25421EECC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_25421EECC()
{
  v30 = v0;
  sub_25421B1A8(v0[13]);
  v1 = sub_25424DA88();
  v2 = sub_25424E448();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[18];
    v27 = v0[13];
    v28 = v0[15];
    v5 = v0[10];
    v4 = v0[11];
    v6 = v0[4];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v29 = v8;
    *v7 = 136315138;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBA10, &qword_25425FF00);
    sub_2542250B0(&qword_27F5B89A8, MEMORY[0x277CC95F0]);
    v9 = sub_25424DB88();
    v11 = v10;

    v12 = sub_2542203C4(v9, v11, &v29);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_254124000, v1, v2, "Successfully cleared EnergyKit data for homes: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x259C07330](v8, -1, -1);
    MEMORY[0x259C07330](v7, -1, -1);

    v28(v27, v5);
  }

  else
  {
    v13 = v0[15];
    v14 = v0[13];
    v15 = v0[10];
    v16 = v0[11];

    v13(v14, v15);
  }

  v17 = v0[18];
  v19 = v0[13];
  v18 = v0[14];
  v20 = v0[12];
  v22 = v0[8];
  v21 = v0[9];
  v24 = v0[6];
  v23 = v0[7];

  v25 = v0[1];

  return v25(v17);
}

unint64_t sub_25421F130()
{
  v1 = v0[19];
  v2 = v0[16];
  v3 = v0[12];

  sub_25421B1A8(v3);
  v4 = v1;
  v5 = sub_25424DA88();
  v6 = sub_25424E428();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[19];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_254124000, v5, v6, "Failed to clear EnergyKit data: %@", v8, 0xCu);
    sub_254132E5C(v9, &unk_27F5BBED0, &qword_254253F80);
    MEMORY[0x259C07330](v9, -1, -1);
    MEMORY[0x259C07330](v8, -1, -1);
  }

  v12 = v0[15];
  v14 = v0[11];
  v13 = v0[12];
  v15 = v0[10];
  v17 = v0[2];
  v16 = v0[3];

  result = v12(v13, v15);
  v19 = *(v17 + 16);
  v20 = *(v16 + 16);
  v21 = v19 + v20;
  if (!__OFADD__(v19, v20))
  {
    v113 = v0[19];
    v23 = v0[4];
    v22 = v0[5];
    v24 = v0[2];
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBA10, &qword_25425FF00);
    v26 = sub_2542250B0(&qword_27F5B89A8, MEMORY[0x277CC95F0]);
    v27 = MEMORY[0x259C05A50](v21, v23, v25, v26);
    v28 = v24 + 56;
    v29 = -1;
    v30 = -1 << *(v24 + 32);
    if (-v30 < 64)
    {
      v29 = ~(-1 << -v30);
    }

    v31 = v29 & *(v24 + 56);
    v32 = (63 - v30) >> 6;
    v115 = v22;
    v110 = v24;
    v112 = (v22 + 8);

    v33 = 0;
    v34 = v0;
    v114 = v0;
    v108 = v32;
    v109 = v24 + 56;
    v35 = v22;
    while (v31)
    {
      v39 = v33;
LABEL_14:
      v40 = v34[19];
      v42 = v34[8];
      v41 = v34[9];
      v43 = v34[4];
      v44 = *(v35 + 72);
      v45 = *(v35 + 16);
      v45(v41, *(v110 + 48) + v44 * (__clz(__rbit64(v31)) | (v39 << 6)), v43);
      (*(v35 + 32))(v42, v41, v43);
      v46 = v40;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      result = sub_2542209D4(v42);
      v49 = v27[2];
      v50 = (v48 & 1) == 0;
      v51 = __OFADD__(v49, v50);
      v52 = v49 + v50;
      if (v51)
      {
        goto LABEL_50;
      }

      v53 = v48;
      if (v27[3] >= v52)
      {
        v34 = v114;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v63 = result;
          sub_254223284();
          result = v63;
        }
      }

      else
      {
        v34 = v114;
        v54 = v114[8];
        sub_254221E34(v52, isUniquelyReferenced_nonNull_native);
        result = sub_2542209D4(v54);
        if ((v53 & 1) != (v55 & 1))
        {
LABEL_45:
          v107 = v34[4];

          return sub_25424EB38();
        }
      }

      v31 &= v31 - 1;
      v56 = v34[8];
      v57 = v34[4];
      if (v53)
      {
        v36 = v27[7] + 16 * result;
        v37 = *v36;
        v38 = *(v36 + 8);
        *v36 = v113;
        *(v36 + 8) = 1;
        sub_2541A1114(v37, v38);
        result = (*v112)(v56, v57);
      }

      else
      {
        v27[(result >> 6) + 8] |= 1 << result;
        v58 = v27[6] + result * v44;
        v59 = result;
        v45(v58, v56, v57);
        v60 = v27[7] + 16 * v59;
        *v60 = v113;
        *(v60 + 8) = 1;
        result = (*v112)(v56, v57);
        v61 = v27[2];
        v51 = __OFADD__(v61, 1);
        v62 = v61 + 1;
        if (v51)
        {
          goto LABEL_52;
        }

        v27[2] = v62;
      }

      v33 = v39;
      v32 = v108;
      v28 = v109;
    }

    while (1)
    {
      v39 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        __break(1u);
        goto LABEL_49;
      }

      if (v39 >= v32)
      {
        break;
      }

      v31 = *(v28 + 8 * v39);
      ++v33;
      if (v31)
      {
        goto LABEL_14;
      }
    }

    v64 = v34[2];
    v65 = v34[3];

    v66 = v65 + 56;
    v67 = -1;
    v68 = -1 << *(v65 + 32);
    if (-v68 < 64)
    {
      v67 = ~(-1 << -v68);
    }

    v69 = v67 & *(v65 + 56);
    v70 = (63 - v68) >> 6;

    v71 = 0;
    while (v69)
    {
      v75 = v71;
LABEL_33:
      v76 = v34[19];
      v78 = v34[6];
      v77 = v34[7];
      v79 = v34[4];
      v80 = *(v115 + 72);
      v111 = *(v115 + 16);
      v111(v77, *(v65 + 48) + v80 * (__clz(__rbit64(v69)) | (v75 << 6)), v79);
      (*(v115 + 32))(v78, v77, v79);
      v81 = v76;
      v82 = swift_isUniquelyReferenced_nonNull_native();
      result = sub_2542209D4(v78);
      v84 = v27[2];
      v85 = (v83 & 1) == 0;
      v51 = __OFADD__(v84, v85);
      v86 = v84 + v85;
      if (v51)
      {
        goto LABEL_51;
      }

      v87 = v83;
      if (v27[3] >= v86)
      {
        v34 = v114;
        if ((v82 & 1) == 0)
        {
          v96 = result;
          sub_254223284();
          result = v96;
        }
      }

      else
      {
        v34 = v114;
        v88 = v114[6];
        sub_254221E34(v86, v82);
        result = sub_2542209D4(v88);
        if ((v87 & 1) != (v89 & 1))
        {
          goto LABEL_45;
        }
      }

      v69 &= v69 - 1;
      v90 = v34[6];
      v91 = v34[4];
      if (v87)
      {
        v72 = v27[7] + 16 * result;
        v73 = *v72;
        v74 = *(v72 + 8);
        *v72 = v113;
        *(v72 + 8) = 1;
        sub_2541A1114(v73, v74);
        result = (*v112)(v90, v91);
      }

      else
      {
        v27[(result >> 6) + 8] |= 1 << result;
        v92 = result;
        v111(v27[6] + result * v80, v90, v91);
        v93 = v27[7] + 16 * v92;
        *v93 = v113;
        *(v93 + 8) = 1;
        result = (*v112)(v90, v91);
        v94 = v27[2];
        v51 = __OFADD__(v94, 1);
        v95 = v94 + 1;
        if (v51)
        {
          goto LABEL_53;
        }

        v27[2] = v95;
      }

      v71 = v75;
      v66 = v65 + 56;
    }

    while (1)
    {
      v75 = v71 + 1;
      if (__OFADD__(v71, 1))
      {
        break;
      }

      if (v75 >= v70)
      {
        v97 = v34[3];

        v99 = v34[13];
        v98 = v34[14];
        v100 = v34[12];
        v102 = v34[8];
        v101 = v34[9];
        v103 = v34;
        v104 = v34[7];
        v105 = v103[6];

        v106 = v103[1];

        return v106(v27);
      }

      v69 = *(v66 + 8 * v75);
      ++v71;
      if (v69)
      {
        goto LABEL_33;
      }
    }

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
  }

  __break(1u);
  return result;
}