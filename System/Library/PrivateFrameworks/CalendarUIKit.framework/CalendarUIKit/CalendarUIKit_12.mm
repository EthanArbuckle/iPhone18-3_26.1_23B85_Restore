uint64_t sub_1CACA8CB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DisplayPerson(0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = (&v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v10 = (&v23 - v9);
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_16:
    v19 = 0;
    return v19 & 1;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_1CACAD014(v13, v10, type metadata accessor for DisplayPerson);
      sub_1CACAD014(v14, v7, type metadata accessor for DisplayPerson);
      if ((_s13CalendarUIKit24EventAttendeeModelObjectV2eeoiySbAC_ACtFZ_0(v10, v7) & 1) == 0)
      {
        break;
      }

      sub_1CABD4070(0, &qword_1EC4667E0);
      if ((sub_1CAD4E494() & 1) == 0 || (sub_1CAD4D944() & 1) == 0)
      {
        break;
      }

      v16 = *(v4 + 28);
      v17 = *(v10 + v16);
      v18 = *(v7 + v16);
      v19 = v18 == 0;
      if (v17)
      {
        if (!v18)
        {
          break;
        }

        sub_1CABD4070(0, &qword_1EC4667E8);
        v20 = v18;
        v21 = v17;
        v19 = sub_1CAD4E494();
      }

      sub_1CACAD07C(v7, type metadata accessor for DisplayPerson);
      sub_1CACAD07C(v10, type metadata accessor for DisplayPerson);
      if (v19)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v19 & 1;
    }

    sub_1CACAD07C(v7, type metadata accessor for DisplayPerson);
    sub_1CACAD07C(v10, type metadata accessor for DisplayPerson);
    goto LABEL_16;
  }

  v19 = 1;
  return v19 & 1;
}

uint64_t sub_1CACA8F9C()
{
  v1 = OBJC_IVAR____TtC13CalendarUIKit34EventEditViewControllerManagerImpl____lazy_storage___viewModel;
  if (*(v0 + OBJC_IVAR____TtC13CalendarUIKit34EventEditViewControllerManagerImpl____lazy_storage___viewModel))
  {
    v2 = *(v0 + OBJC_IVAR____TtC13CalendarUIKit34EventEditViewControllerManagerImpl____lazy_storage___viewModel);
  }

  else
  {
    v2 = sub_1CACA9004(v0);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1CACA9004(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong eventForViewControllerManager];
    if ([v3 disregardInitialDateTimeOfEvent])
    {
      v5 = 2;
    }

    else
    {
      v5 = [v4 isNew];
    }

    v6 = *(a1 + OBJC_IVAR____TtC13CalendarUIKit34EventEditViewControllerManagerImpl_isEditing);
    v7 = *(a1 + OBJC_IVAR____TtC13CalendarUIKit34EventEditViewControllerManagerImpl_allowsEditing);
    v8 = *(a1 + OBJC_IVAR____TtC13CalendarUIKit34EventEditViewControllerManagerImpl_needsInlineEditButton);
    type metadata accessor for EventEditViewModel();
    swift_allocObject();
    v9 = v4;
    swift_unknownObjectRetain();
    v10 = sub_1CACFE768(v4, v5, v3, v6, v7, v8);

    v11 = *(a1 + OBJC_IVAR____TtC13CalendarUIKit34EventEditViewControllerManagerImpl_eventCreationMethod);
    v12 = OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__eventCreationMethod;
    if (*(v10 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__eventCreationMethod) == v11)
    {

      swift_unknownObjectRelease();
      *(v10 + v12) = v11;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1CACACFCC(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
      sub_1CAD4C414();

      swift_unknownObjectRelease();
    }

    *(a1 + OBJC_IVAR____TtC13CalendarUIKit34EventEditViewControllerManagerImpl_hasViewModel) = 1;
    return v10;
  }

  else
  {
    result = sub_1CAD4E794();
    __break(1u);
  }

  return result;
}

id EventEditViewControllerManagerImpl.__allocating_init(delegate:isEditing:allowsEditing:needsInlineEditButton:)(uint64_t a1, char a2, char a3, char a4)
{
  v8 = objc_allocWithZone(v4);
  swift_unknownObjectWeakInit();
  *&v8[OBJC_IVAR____TtC13CalendarUIKit34EventEditViewControllerManagerImpl_eventCreationMethod] = 0;
  v8[OBJC_IVAR____TtC13CalendarUIKit34EventEditViewControllerManagerImpl_hasViewModel] = 0;
  *&v8[OBJC_IVAR____TtC13CalendarUIKit34EventEditViewControllerManagerImpl____lazy_storage___viewModel] = 0;
  *&v8[OBJC_IVAR____TtC13CalendarUIKit34EventEditViewControllerManagerImpl____lazy_storage___viewController] = 0;
  swift_unknownObjectWeakAssign();
  v8[OBJC_IVAR____TtC13CalendarUIKit34EventEditViewControllerManagerImpl_isEditing] = a2;
  v8[OBJC_IVAR____TtC13CalendarUIKit34EventEditViewControllerManagerImpl_allowsEditing] = a3;
  v8[OBJC_IVAR____TtC13CalendarUIKit34EventEditViewControllerManagerImpl_needsInlineEditButton] = a4;
  v11.receiver = v8;
  v11.super_class = v4;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  swift_unknownObjectRelease();
  return v9;
}

id EventEditViewControllerManagerImpl.init(delegate:isEditing:allowsEditing:needsInlineEditButton:)(uint64_t a1, char a2, char a3, char a4)
{
  v4 = sub_1CACAC3E8(a1, a2, a3, a4);
  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_1CACA9424(void *a1, char a2)
{
  sub_1CACA8F9C();
  sub_1CACFB3A0(a1, a2);
}

uint64_t sub_1CACA94F4(char a1)
{
  *(v1 + OBJC_IVAR____TtC13CalendarUIKit34EventEditViewControllerManagerImpl_isEditing) = a1;
  sub_1CACA8F9C();
  sub_1CACEE8C4(a1);
}

uint64_t sub_1CACA9664(uint64_t result, void *a2, void *a3)
{
  *(v3 + *a2) = result;
  if (*(v3 + OBJC_IVAR____TtC13CalendarUIKit34EventEditViewControllerManagerImpl_hasViewModel) == 1)
  {
    v5 = result & 1;
    v6 = sub_1CACA8F9C();
    if (*(v6 + *a3) == v5)
    {
      *(v6 + *a3) = v5;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1CACACFCC(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
      sub_1CAD4C414();
    }
  }

  return result;
}

uint64_t sub_1CACA9820(uint64_t result)
{
  *(v1 + OBJC_IVAR____TtC13CalendarUIKit34EventEditViewControllerManagerImpl_eventCreationMethod) = result;
  if (*(v1 + OBJC_IVAR____TtC13CalendarUIKit34EventEditViewControllerManagerImpl_hasViewModel) == 1)
  {
    if (*(sub_1CACA8F9C() + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__eventCreationMethod) == result)
    {
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1CACACFCC(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
      sub_1CAD4C414();
    }
  }

  return result;
}

uint64_t sub_1CACA9A24(void (*a1)(void))
{
  sub_1CACA8F9C();
  a1();
}

void sub_1CACA9A80(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  sub_1CACA8F9C();
  a3();
}

void sub_1CACA9AE0(uint64_t a1, uint64_t a2)
{
  sub_1CACA8F9C();
  v4 = sub_1CACAA368();
  sub_1CACF79B8(v4, a1, a2);
}

uint64_t sub_1CACA9C2C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4679C0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v9 - v1;
  v3 = sub_1CACA8F9C();
  v4 = sub_1CAD4E304();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  sub_1CAD4E2C4();

  v5 = sub_1CAD4E2B4();
  v6 = swift_allocObject();
  v7 = MEMORY[0x1E69E85E0];
  v6[2] = v5;
  v6[3] = v7;
  v6[4] = v3;
  sub_1CACA6D34(0, 0, v2, &unk_1CAD64E40, v6);
}

uint64_t sub_1CACA9EA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4679C0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v15 - v7;
  v9 = sub_1CACA8F9C();
  v10 = sub_1CAD4E304();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  sub_1CAD4E2C4();

  sub_1CAB380F0(a2);
  v11 = sub_1CAD4E2B4();
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E85E0];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = v9;
  v12[5] = a1;
  v12[6] = a2;
  v12[7] = a3;
  sub_1CACA6D34(0, 0, v8, &unk_1CAD64E48, v12);
}

uint64_t sub_1CACAA1BC()
{
  v0 = sub_1CACA8F9C();
  [*(v0 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel_availabilityQueue) cancelAllOperations];
  swift_getKeyPath();
  sub_1CACACFCC(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
  sub_1CAD4C424();

  [*(v0 + 16) rollback];
  swift_getKeyPath();
  sub_1CAD4C424();

  [*(v0 + 16) forceLocationPredictionUpdate];
}

id sub_1CACAA368()
{
  v1 = OBJC_IVAR____TtC13CalendarUIKit34EventEditViewControllerManagerImpl____lazy_storage___viewController;
  v2 = *(v0 + OBJC_IVAR____TtC13CalendarUIKit34EventEditViewControllerManagerImpl____lazy_storage___viewController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC13CalendarUIKit34EventEditViewControllerManagerImpl____lazy_storage___viewController);
  }

  else
  {
    v4 = sub_1CACAA414();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_1CACAA414()
{
  v0 = type metadata accessor for EventEditView();
  v1 = (v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v16 - v5;
  sub_1CACA8F9C();
  v7 = &v6[v1[7]];
  *v7 = sub_1CAD4C654() & 1;
  *(v7 + 1) = v8;
  v7[16] = v9 & 1;
  v10 = v1[8];
  *&v6[v10] = sub_1CAD4C574();
  v11 = v1[9];
  *&v6[v11] = sub_1CAD4C574();
  v12 = v1[10];
  *&v6[v12] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463E80);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for EventEditViewModel();
  sub_1CACACFCC(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
  sub_1CAD4DC14();
  sub_1CACAD014(v6, v4, type metadata accessor for EventEditView);
  v13 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4667F8));
  v14 = sub_1CAD4CE04();
  sub_1CACAD07C(v6, type metadata accessor for EventEditView);
  return v14;
}

uint64_t sub_1CACAA628(uint64_t a1, uint64_t a2, char a3)
{
  sub_1CACA8F9C();
  sub_1CAC5A324(a1, a2, a3);
}

uint64_t sub_1CACAA70C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1CACA8F9C();
  sub_1CAC5A6F0(a1, a2, a3, a4);
}

uint64_t sub_1CACAA82C(void *a1)
{
  v2 = type metadata accessor for EventCalendarModelObject();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = a1;
  sub_1CACA8F9C();
  v9[3] = &type metadata for EKCalendarModelWrapper;
  v9[4] = sub_1CAC29840();
  v9[0] = v5;
  v6 = v5;
  EventCalendarModelObject.init(_:)(v9, v4);
  sub_1CAC446E4(v4);

  return sub_1CACAD07C(v4, type metadata accessor for EventCalendarModelObject);
}

uint64_t sub_1CACAA90C(void *a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for EventCalendarModelObject();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v13[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a3;
  v9 = a1;
  sub_1CACA8F9C();
  v13[3] = &type metadata for EKCalendarModelWrapper;
  v13[4] = sub_1CAC29840();
  v13[0] = v8;
  v10 = v8;
  EventCalendarModelObject.init(_:)(v13, v7);
  sub_1CAC446E4(v7);

  return sub_1CACAD07C(v7, type metadata accessor for EventCalendarModelObject);
}

uint64_t sub_1CACAAA08(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC13CalendarUIKit34EventEditViewControllerManagerImpl_hasViewModel) == 1)
  {
    v2 = result;
    sub_1CACA8F9C();
    sub_1CACFA104(v2);
  }

  return result;
}

uint64_t sub_1CACAAAF8()
{
  v0 = sub_1CAD4C0F4();
  v1 = MEMORY[0x1EEE9AC00](v0 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1CAD4BC94();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CACA8F9C();
  sub_1CAD4C0B4();
  sub_1CAD4C0B4();
  sub_1CAD4BC54();
  sub_1CACF1DA4(v5);

  return (*(v3 + 8))(v5, v2);
}

BOOL sub_1CACAAE14()
{
  v0 = type metadata accessor for EventModelObject();
  v1 = MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v10 - v4;
  v6 = sub_1CACA8F9C();
  swift_getKeyPath();
  v10[3] = v6;
  sub_1CACACFCC(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
  sub_1CAD4C424();

  v7 = OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__eventModelObject;
  swift_beginAccess();
  sub_1CACAD014(v6 + v7, v5, type metadata accessor for EventModelObject);
  swift_getKeyPath();
  v10[0] = v6;
  sub_1CAD4C424();

  v8 = OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__originalEventModelObject;
  swift_beginAccess();
  sub_1CACAD014(v6 + v8, v3, type metadata accessor for EventModelObject);
  LOBYTE(v8) = _s13CalendarUIKit16EventModelObjectV2eeoiySbAC_ACtFZ_0(v5);

  sub_1CACAD07C(v3, type metadata accessor for EventModelObject);
  sub_1CACAD07C(v5, type metadata accessor for EventModelObject);
  return (v8 & 1) == 0;
}

BOOL sub_1CACAB048()
{
  v0 = sub_1CACA8F9C();
  swift_getKeyPath();
  sub_1CACACFCC(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
  sub_1CAD4C424();

  v1 = v0 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__eventModelObject;
  swift_beginAccess();
  v2 = type metadata accessor for EventModelObject();
  v3 = *(v1 + *(v2 + 156));
  swift_getKeyPath();

  sub_1CAD4C424();

  v4 = v0 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__originalEventModelObject;
  swift_beginAccess();
  v5 = *(v4 + *(v2 + 156));

  v6 = sub_1CACA8870(v3, v5, type metadata accessor for EventAttachmentModelObject, type metadata accessor for EventAttachmentModelObject, static EventAttachmentModelObject.== infix(_:_:), type metadata accessor for EventAttachmentModelObject);

  return (v6 & 1) == 0;
}

uint64_t sub_1CACAB30C(void *a1)
{
  v2 = sub_1CACA8F9C();
  if (*(v2 + *a1) == 1)
  {
    *(v2 + *a1) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1CACACFCC(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
    sub_1CAD4C414();
  }
}

uint64_t sub_1CACAB518(uint64_t a1, void *a2)
{
  v3 = sub_1CACA8F9C();
  swift_getKeyPath();
  sub_1CACACFCC(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
  sub_1CAD4C424();

  v4 = *(v3 + *a2);

  return v4;
}

uint64_t sub_1CACAB5E4(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a1;
  v6 = sub_1CACA8F9C();
  swift_getKeyPath();
  sub_1CACACFCC(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
  sub_1CAD4C424();

  v7 = *(v6 + *a4);

  return v7;
}

uint64_t sub_1CACAB6DC(char a1)
{
  v1 = a1 & 1;
  v2 = sub_1CACA8F9C();
  if (*(v2 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__shouldRecordPrecommitEvent) == v1)
  {
    *(v2 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__shouldRecordPrecommitEvent) = v1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1CACACFCC(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
    sub_1CAD4C414();
  }
}

void *sub_1CACAB880()
{
  v0 = sub_1CACA8F9C();
  swift_getKeyPath();
  sub_1CACACFCC(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
  sub_1CAD4C424();

  v1 = *(v0 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__precommitSerializedEvent);
  v2 = v1;

  return v1;
}

id EventEditViewControllerManagerImpl.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id EventEditViewControllerManagerImpl.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EventEditViewControllerManagerImpl();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1CACABB40@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1CACACFCC(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
  sub_1CAD4C424();

  v4 = *(v3 + 16);
  *a2 = v4;

  return v4;
}

uint64_t sub_1CACABC38@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, uint64_t a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1CACACFCC(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
  sub_1CAD4C424();

  v6 = *a2;
  swift_beginAccess();
  return sub_1CACAD014(v5 + v6, a3, type metadata accessor for EventModelObject);
}

uint64_t sub_1CACABD30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v7 = type metadata accessor for EventModelObject();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CACAD014(a1, v9, type metadata accessor for EventModelObject);
  return a5(v9);
}

uint64_t sub_1CACABDEC@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1CACACFCC(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
  sub_1CAD4C424();

  *a3 = *(v5 + *a2);
  return result;
}

uint64_t sub_1CACABEC8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1CACACFCC(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
  sub_1CAD4C424();

  *a2 = *(v3 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__eventCreationMethod);
  return result;
}

id sub_1CACAC108@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1CACACFCC(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
  sub_1CAD4C424();

  v4 = *(v3 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__precommitSerializedEvent);
  *a2 = v4;

  return v4;
}

void sub_1CACAC1C8(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1CACF6A5C(v1);
}

uint64_t sub_1CACAC1F8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1CACAC2F0;

  return v6(a1);
}

uint64_t sub_1CACAC2F0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

id sub_1CACAC3E8(uint64_t a1, char a2, char a3, char a4)
{
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC13CalendarUIKit34EventEditViewControllerManagerImpl_eventCreationMethod] = 0;
  v4[OBJC_IVAR____TtC13CalendarUIKit34EventEditViewControllerManagerImpl_hasViewModel] = 0;
  *&v4[OBJC_IVAR____TtC13CalendarUIKit34EventEditViewControllerManagerImpl____lazy_storage___viewModel] = 0;
  *&v4[OBJC_IVAR____TtC13CalendarUIKit34EventEditViewControllerManagerImpl____lazy_storage___viewController] = 0;
  swift_unknownObjectWeakAssign();
  v4[OBJC_IVAR____TtC13CalendarUIKit34EventEditViewControllerManagerImpl_isEditing] = a2;
  v4[OBJC_IVAR____TtC13CalendarUIKit34EventEditViewControllerManagerImpl_allowsEditing] = a3;
  v4[OBJC_IVAR____TtC13CalendarUIKit34EventEditViewControllerManagerImpl_needsInlineEditButton] = a4;
  v9.receiver = v4;
  v9.super_class = type metadata accessor for EventEditViewControllerManagerImpl();
  return objc_msgSendSuper2(&v9, sel_init);
}

uint64_t sub_1CACAC514(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1CABCD46C;

  return sub_1CACF8640(a1, v4, v5, v6);
}

uint64_t sub_1CACAC5C8(uint64_t a1)
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
  v10[1] = sub_1CABCD46C;

  return sub_1CACF8280(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t objectdestroy_11Tm()
{
  swift_unknownObjectRelease();

  if (*(v0 + 48))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1CACACE5C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1CABCCCB0;

  return sub_1CACF8640(a1, v4, v5, v6);
}

uint64_t sub_1CACACFCC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CACAD014(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CACAD07C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1CACAD0DC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1CABCD46C;

  return sub_1CACAC1F8(a1, v4);
}

uint64_t sub_1CACAD194(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1CABCCCB0;

  return sub_1CACAC1F8(a1, v4);
}

uint64_t type metadata accessor for AttachmentEditor()
{
  result = qword_1EC466808;
  if (!qword_1EC466808)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1CACAD2E8()
{
  sub_1CACAD3E4();
  if (v0 <= 0x3F)
  {
    sub_1CACAD4A0(319, &qword_1EC463108, MEMORY[0x1E6981940]);
    if (v1 <= 0x3F)
    {
      sub_1CACAD43C();
      if (v2 <= 0x3F)
      {
        sub_1CACAD4A0(319, &qword_1EC463558, MEMORY[0x1E6981788]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1CACAD3E4()
{
  if (!qword_1EC466818)
  {
    type metadata accessor for AttachmentsViewModel(255);
    v0 = sub_1CAD4DC34();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC466818);
    }
  }
}

void sub_1CACAD43C()
{
  if (!qword_1EC466820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC466828);
    v0 = sub_1CAD4DB14();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC466820);
    }
  }
}

void sub_1CACAD4A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6370]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1CACAD510@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v135 = a1;
  v144 = type metadata accessor for AttachmentAlert(0);
  v127 = *(v144 - 8);
  v3 = MEMORY[0x1EEE9AC00](v144);
  v107 = &v106 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v108 = &v106 - v5;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466800);
  v121 = *(v145 - 8);
  MEMORY[0x1EEE9AC00](v145);
  v120 = &v106 - v6;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463938);
  v7 = MEMORY[0x1EEE9AC00](v123);
  v126 = &v106 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v143 = &v106 - v9;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466830);
  MEMORY[0x1EEE9AC00](v119);
  v118 = &v106 - v10;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466838);
  v122 = *(v141 - 8);
  MEMORY[0x1EEE9AC00](v141);
  v139 = &v106 - v11;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466840);
  v130 = *(v131 - 8);
  MEMORY[0x1EEE9AC00](v131);
  v142 = &v106 - v12;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466848);
  v133 = *(v134 - 8);
  v13 = MEMORY[0x1EEE9AC00](v134);
  v132 = &v106 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v129 = &v106 - v15;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466850);
  MEMORY[0x1EEE9AC00](v116);
  KeyPath = &v106 - v16;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466858);
  MEMORY[0x1EEE9AC00](v113);
  v114 = (&v106 - v17);
  v18 = type metadata accessor for AttachmentEditor();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v106 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466860);
  v111 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v23 = &v106 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466868);
  v25 = MEMORY[0x1EEE9AC00](v24 - 8);
  v128 = &v106 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v140 = &v106 - v27;
  v28 = v1 + *(v18 + 40);
  v29 = *v28;
  v30 = *(v28 + 8);
  LOBYTE(v150) = *v28;
  *&v151 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463610);
  sub_1CAD4D994();
  v125 = v18;
  v124 = v31;
  v138 = v1;
  v117 = v21;
  if ((v153 & 1) != 0 || (v32 = v1 + *(v18 + 24), v150 = *v32, v151 = *(v32 + 8), v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465458), MEMORY[0x1CCAA6D30](&v153, v33), v34 = *(v153 + 16), , v34 <= 3))
  {
    v35 = v2 + *(v18 + 24);
    v150 = *v35;
    v151 = *(v35 + 8);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465458);
    MEMORY[0x1CCAA6D30](&v153, v36);
    KeyPath = swift_getKeyPath();
    sub_1CACB324C(v2, &v106 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AttachmentEditor);
    v37 = *(v19 + 80);
    v38 = (v37 + 16) & ~v37;
    v137 = v38 + v20;
    v136 = v37 | 7;
    v39 = swift_allocObject();
    v115 = v38;
    sub_1CACB39A4(v21, v39 + v38, type metadata accessor for AttachmentEditor);
    v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466828);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466950);
    sub_1CAB23B0C(&qword_1EC466958, &qword_1EC466828);
    v40 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC466890);
    v41 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC463258);
    v42 = sub_1CAB23B0C(&qword_1EC466898, &qword_1EC466890);
    v43 = sub_1CAB23B0C(&qword_1EC463278, &qword_1EC463258);
    v150 = v40;
    *&v151 = v41;
    *(&v151 + 1) = v42;
    v152 = v43;
    swift_getOpaqueTypeConformance2();
    sub_1CAD4DB64();
    v44 = v111;
    v45 = v112;
    (*(v111 + 16))(v114, v23, v112);
    swift_storeEnumTagMultiPayload();
    sub_1CACB2830();
    sub_1CACB2984();
    sub_1CAD4CE24();
    (*(v44 + 8))(v23, v45);
  }

  else
  {
    sub_1CACB324C(v2, &v106 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AttachmentEditor);
    v46 = *(v19 + 80);
    v47 = (v46 + 16) & ~v46;
    v137 = v47 + v20;
    v136 = v46 | 7;
    v48 = swift_allocObject();
    v115 = v47;
    v49 = sub_1CACB39A4(v21, v48 + v47, type metadata accessor for AttachmentEditor);
    MEMORY[0x1EEE9AC00](v49);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466870);
    sub_1CAB23B0C(&qword_1EC466878, &qword_1EC466870);
    v50 = KeyPath;
    sub_1CAD4D9E4();
    v51 = sub_1CAD4CFE4();
    *(v50 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466880) + 36)) = v51;
    v52 = sub_1CAD4DCD4();
    LOBYTE(v150) = v29;
    *&v151 = v30;
    sub_1CAD4D994();
    v53 = v153;
    v54 = v50 + *(v116 + 36);
    *v54 = v52;
    *(v54 + 8) = v53;
    sub_1CAB23A9C(v50, v114, &qword_1EC466850);
    swift_storeEnumTagMultiPayload();
    sub_1CACB2830();
    sub_1CACB2984();
    sub_1CAD4CE24();
    sub_1CAB21B68(v50, &qword_1EC466850);
  }

  v55 = v118;
  v56 = v138;
  sub_1CACB05D0(v138, v118);
  v57 = v145;
  sub_1CAD4DBF4();
  v58 = v150;
  swift_getKeyPath();
  v150 = v58;
  v116 = sub_1CACB2FBC(&qword_1EC463930, type metadata accessor for AttachmentsViewModel);
  sub_1CAD4C424();

  v59 = OBJC_IVAR____TtC13CalendarUIKit20AttachmentsViewModel__attachmentAlert;
  swift_beginAccess();
  v60 = v143;
  sub_1CAB23A9C(v58 + v59, v143, &qword_1EC463938);

  v114 = type metadata accessor for AttachmentEditor;
  v61 = v117;
  sub_1CACB324C(v56, v117, type metadata accessor for AttachmentEditor);
  v62 = swift_allocObject();
  v113 = type metadata accessor for AttachmentEditor;
  v63 = v115;
  sub_1CACB39A4(v61, v62 + v115, type metadata accessor for AttachmentEditor);
  v112 = sub_1CACB2BA0();
  v111 = sub_1CACB2DE4();
  v64 = v119;
  v65 = v123;
  sub_1CAD4D754();

  sub_1CAB21B68(v60, &qword_1EC463938);
  sub_1CAB21B68(v55, &qword_1EC466830);
  v66 = v120;
  v67 = v138;
  sub_1CAD4DC04();
  swift_getKeyPath();
  sub_1CAD4DC24();

  (*(v121 + 8))(v66, v57);
  sub_1CACB324C(v67, v61, v114);
  v68 = swift_allocObject();
  sub_1CACB39A4(v61, v68 + v63, v113);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466908);
  v150 = v64;
  *&v151 = v65;
  *(&v151 + 1) = v112;
  v152 = v111;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v71 = sub_1CACB2F08();
  v136 = OpaqueTypeConformance2;
  v137 = v69;
  v72 = v141;
  v73 = v139;
  sub_1CAD4D6E4();

  (*(v122 + 8))(v73, v72);
  v74 = v67;
  sub_1CAD4DBF4();
  v75 = v150;
  swift_getKeyPath();
  v150 = v75;
  sub_1CAD4C424();

  v76 = OBJC_IVAR____TtC13CalendarUIKit20AttachmentsViewModel__attachmentAlert;
  swift_beginAccess();
  v77 = v126;
  sub_1CAB23A9C(v75 + v76, v126, &qword_1EC463938);

  if (!(*(v127 + 48))(v77, 1, v144))
  {
    v81 = v108;
    sub_1CACB324C(v77, v108, type metadata accessor for AttachmentAlert);
    sub_1CAB21B68(v77, &qword_1EC463938);
    v82 = v107;
    sub_1CACB324C(v81, v107, type metadata accessor for AttachmentAlert);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v80 = v125;
    if ((EnumCaseMultiPayload - 2) >= 3)
    {
      if (EnumCaseMultiPayload)
      {
        if (qword_1EC462E30 != -1)
        {
          swift_once();
        }

        v78 = qword_1EC47DE98;
        v79 = unk_1EC47DEA0;

        sub_1CABC6454(v81, type metadata accessor for AttachmentAlert);
        v85 = v82;
        goto LABEL_16;
      }

      sub_1CABC6454(v82, type metadata accessor for AttachmentAlert);
      if (qword_1EC462E48 != -1)
      {
        swift_once();
      }

      v84 = &qword_1EC47DEC8;
    }

    else
    {
      if (qword_1EC462E18 != -1)
      {
        swift_once();
      }

      v84 = &qword_1EC47DE68;
    }

    v78 = *v84;
    v79 = v84[1];

    v85 = v81;
LABEL_16:
    sub_1CABC6454(v85, type metadata accessor for AttachmentAlert);
    goto LABEL_17;
  }

  sub_1CAB21B68(v77, &qword_1EC463938);
  v78 = 0;
  v79 = 0xE000000000000000;
  v80 = v125;
LABEL_17:
  v139 = v79;
  v148 = v78;
  v149 = v79;
  v86 = v74 + *(v80 + 36);
  v87 = *v86;
  v88 = *(v86 + 8);
  v146 = v87;
  v147 = v88;
  sub_1CAD4D9B4();
  sub_1CAD4DBF4();
  v89 = v150;
  swift_getKeyPath();
  v150 = v89;
  sub_1CAD4C424();

  v90 = OBJC_IVAR____TtC13CalendarUIKit20AttachmentsViewModel__attachmentAlert;
  swift_beginAccess();
  v91 = v143;
  sub_1CAB23A9C(v89 + v90, v143, &qword_1EC463938);

  MEMORY[0x1EEE9AC00](v92);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466918);
  v150 = v141;
  *&v151 = v137;
  *(&v151 + 1) = v136;
  v152 = v71;
  swift_getOpaqueTypeConformance2();
  sub_1CABA6054();
  sub_1CACB3028();
  v93 = v131;
  v94 = v129;
  v95 = v142;
  sub_1CAD4D6D4();

  sub_1CAB21B68(v91, &qword_1EC463938);

  (*(v130 + 8))(v95, v93);
  v96 = v140;
  v97 = v128;
  sub_1CAB32F68(v140, v128);
  v98 = v133;
  v99 = *(v133 + 16);
  v100 = v132;
  v101 = v134;
  v99(v132, v94, v134);
  v102 = v135;
  sub_1CAB32F68(v97, v135);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466948);
  v99((v102 + *(v103 + 48)), v100, v101);
  v104 = *(v98 + 8);
  v104(v94, v101);
  sub_1CAB21B68(v96, &qword_1EC466868);
  v104(v100, v101);
  return sub_1CAB21B68(v97, &qword_1EC466868);
}

uint64_t sub_1CACAEABC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466890);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v9[-v5];
  *v6 = sub_1CAD4CC94();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466960);
  sub_1CACAEC64(a2, a1, &v6[*(v7 + 44)]);
  v10 = a2;
  v11 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463258);
  sub_1CAB23B0C(&qword_1EC466898, &qword_1EC466890);
  sub_1CAB23B0C(&qword_1EC463278, &qword_1EC463258);
  sub_1CAD4D554();
  return sub_1CAB21B68(v6, &qword_1EC466890);
}

uint64_t sub_1CACAEC64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v38 = a2;
  v39 = a1;
  v40 = a3;
  v4 = type metadata accessor for EventAttachmentModelObject();
  v37 = *(v4 - 8);
  v5 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AttachmentEditor();
  v8 = v7 - 8;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466968);
  v13 = v12 - 8;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v37 - v17;
  sub_1CACB324C(a1, v11, type metadata accessor for AttachmentEditor);
  v19 = v38;
  sub_1CACB324C(v38, v6, type metadata accessor for EventAttachmentModelObject);
  v20 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v21 = (v10 + *(v37 + 80) + v20) & ~*(v37 + 80);
  v22 = swift_allocObject();
  sub_1CACB39A4(v11, v22 + v20, type metadata accessor for AttachmentEditor);
  sub_1CACB39A4(v6, v22 + v21, type metadata accessor for EventAttachmentModelObject);
  v41 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466970);
  sub_1CAB23B0C(&qword_1EC466978, &qword_1EC466970);
  sub_1CAD4D9E4();
  LODWORD(v22) = sub_1CAD4CFC4();
  *&v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466980) + 36)] = v22;
  v23 = sub_1CAD4DCD4();
  v24 = v39;
  v25 = v39 + *(v8 + 48);
  v26 = *v25;
  v27 = *(v25 + 8);
  LOBYTE(v43) = v26;
  *&v44 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463610);
  sub_1CAD4D994();
  LOBYTE(v19) = v42;
  v28 = &v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466988) + 36)];
  *v28 = v23;
  v28[8] = v19;
  v29 = sub_1CAD4DCD4();
  v30 = (v24 + *(v8 + 32));
  v43 = *v30;
  v44 = *(v30 + 1);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465458);
  MEMORY[0x1CCAA6D30](&v42, v31);
  v32 = *(v42 + 16);

  v33 = &v18[*(v13 + 44)];
  *v33 = v29;
  v33[1] = v32;
  sub_1CAB23A9C(v18, v16, &qword_1EC466968);
  v34 = v40;
  sub_1CAB23A9C(v16, v40, &qword_1EC466968);
  v35 = v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466990) + 48);
  *v35 = 0;
  *(v35 + 8) = 1;
  sub_1CAB21B68(v18, &qword_1EC466968);
  return sub_1CAB21B68(v16, &qword_1EC466968);
}

uint64_t sub_1CACAF0C4(uint64_t a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466800);
  sub_1CAD4DBF4();
  v4 = v11;
  v6 = *a2;
  v5 = a2[1];
  v7 = a1 + *(type metadata accessor for AttachmentEditor() + 24);
  v11 = *v7;
  v12 = *(v7 + 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465458);
  MEMORY[0x1CCAA6D30](&v10, v8);
  sub_1CABC5244(v6, v5, v10);
}

uint64_t sub_1CACAF188@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_1CAD4CC94();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466998);
  return sub_1CACAF1E0(a1, a2 + *(v4 + 44));
}

uint64_t sub_1CACAF1E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4669A0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v37 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4669A8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v37 - v7;
  v9 = sub_1CAD4D904();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4669B0);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v38 = v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v40 = v37 - v16;
  v17 = (a1 + *(type metadata accessor for EventAttachmentModelObject() + 32));
  if (v17[1])
  {
    v37[1] = *v17;
    sub_1CAD4C6F4();
    sub_1CAD4DC94();
    sub_1CAD4C744();
    v18 = &v5[*(v3 + 36)];
    v19 = v58;
    *v18 = v57;
    *(v18 + 1) = v19;
    *(v18 + 2) = v59;
    sub_1CAB23A9C(v5, v8, &qword_1EC4669A0);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463500);
    sub_1CABB8A40();
    sub_1CACB3668();
    sub_1CAD4CE24();
    sub_1CAB21B68(v5, &qword_1EC4669A0);
    v20 = sub_1CAD4CDA4();
    LOBYTE(v60) = 1;
    sub_1CACAF8C8(&v47);
    *&v41[55] = v50;
    *&v41[39] = v49;
    *&v41[23] = v48;
    *&v41[7] = v47;
    *(&v53[1] + 1) = *&v41[16];
    *(&v53[2] + 1) = *&v41[32];
    *(&v53[3] + 1) = *&v41[48];
    LOBYTE(v42) = 0;
    v52 = v20;
    LOBYTE(v53[0]) = v60;
    *&v53[4] = *(&v50 + 1);
    *(v53 + 1) = *v41;
    BYTE8(v53[4]) = 0;
  }

  else
  {
    (*(v10 + 104))(v12, *MEMORY[0x1E6981638], v9);
    v21 = sub_1CAD4D954();
    (*(v10 + 8))(v12, v9);
    sub_1CAD4DC94();
    sub_1CAD4C744();
    *&v54[38] = v59;
    *&v54[22] = v58;
    *&v54[6] = v57;
    *v8 = v21;
    *(v8 + 1) = 0;
    *(v8 + 8) = 1;
    *(v8 + 18) = *v54;
    *(v8 + 34) = *&v54[16];
    *(v8 + 50) = *&v54[32];
    *(v8 + 8) = *&v54[46];
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463500);
    sub_1CABB8A40();
    sub_1CACB3668();
    sub_1CAD4CE24();
    v22 = *(a1 + 24);
    *&v60 = *(a1 + 16);
    *(&v60 + 1) = v22;
    sub_1CABA6054();

    v23 = sub_1CAD4D444();
    v56 = v24 & 1;
    v55 = 1;
    *&v52 = v23;
    *(&v52 + 1) = v25;
    LOBYTE(v53[0]) = v24 & 1;
    *(v53 + 1) = v42;
    DWORD1(v53[0]) = *(&v42 + 3);
    v53[1] = v47;
    v53[2] = v48;
    v53[3] = v49;
    *(&v53[0] + 1) = v26;
    *&v53[4] = v50;
    BYTE8(v53[4]) = 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4669C0);
  sub_1CAB23B0C(&qword_1EC4669C8, &qword_1EC4669C0);
  sub_1CAD4CE24();
  v27 = v40;
  v28 = v38;
  sub_1CAB23A9C(v40, v38, &qword_1EC4669B0);
  v44 = v62;
  v45 = v63;
  v46[0] = v64[0];
  *(v46 + 9) = *(v64 + 9);
  v42 = v60;
  v43 = v61;
  v29 = v39;
  sub_1CAB23A9C(v28, v39, &qword_1EC4669B0);
  v30 = (v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4669D0) + 48));
  v31 = v46[0];
  v51[0] = v46[0];
  v32 = *(v46 + 9);
  *(v51 + 9) = *(v46 + 9);
  v33 = v45;
  v49 = v44;
  v50 = v45;
  v34 = v42;
  v35 = v43;
  v47 = v42;
  v48 = v43;
  v30[2] = v44;
  v30[3] = v33;
  v30[4] = v31;
  *(v30 + 73) = v32;
  *v30 = v34;
  v30[1] = v35;
  sub_1CAB23A9C(&v47, &v52, &qword_1EC4669D8);
  sub_1CAB21B68(v27, &qword_1EC4669B0);
  v53[1] = v44;
  v53[2] = v45;
  v53[3] = v46[0];
  *(&v53[3] + 9) = *(v46 + 9);
  v52 = v42;
  v53[0] = v43;
  sub_1CAB21B68(&v52, &qword_1EC4669D8);
  return sub_1CAB21B68(v28, &qword_1EC4669B0);
}

uint64_t sub_1CACAF8C8@<X0>(uint64_t a1@<X8>)
{
  sub_1CABA6054();

  v2 = sub_1CAD4D444();
  v20 = v3;
  v21 = v2;
  v19 = v4;
  v22 = v5;

  v6 = sub_1CAD4D444();
  v8 = v7;
  v10 = v9;
  sub_1CAD4D324();
  v11 = sub_1CAD4D424();
  v13 = v12;
  v15 = v14;
  v17 = v16;

  sub_1CABA6128(v6, v8, v10 & 1);

  *a1 = v21;
  *(a1 + 8) = v20;
  *(a1 + 16) = v19 & 1;
  *(a1 + 24) = v22;
  *(a1 + 32) = v11;
  *(a1 + 40) = v13;
  *(a1 + 48) = v15 & 1;
  *(a1 + 56) = v17;
  sub_1CABA4F48(v21, v20, v19 & 1);

  sub_1CABA4F48(v11, v13, v15 & 1);

  sub_1CABA6128(v11, v13, v15 & 1);

  sub_1CABA6128(v21, v20, v19 & 1);
}

uint64_t sub_1CACAFA60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventAttachmentModelObject();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = type metadata accessor for AttachmentEditor();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463B10);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v18 - v11;
  if (qword_1EC462E70 != -1)
  {
    swift_once();
  }

  v18[0] = qword_1EC47DF18;
  v18[1] = unk_1EC47DF20;

  sub_1CAD4C5A4();
  v13 = sub_1CAD4C5C4();
  (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
  sub_1CACB324C(a1, v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AttachmentEditor);
  sub_1CACB324C(a2, v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for EventAttachmentModelObject);
  v14 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v15 = (v9 + *(v5 + 80) + v14) & ~*(v5 + 80);
  v16 = swift_allocObject();
  sub_1CACB39A4(v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v14, type metadata accessor for AttachmentEditor);
  sub_1CACB39A4(v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for EventAttachmentModelObject);
  sub_1CABA6054();
  return sub_1CAD4D9F4();
}

uint64_t sub_1CACAFD58(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for EventAttachmentModelObject();
  v43 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v39 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v41 = &v36 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v36 - v9);
  v45 = a2;
  v11 = (a1 + *(type metadata accessor for AttachmentEditor() + 24));
  v12 = *v11;
  v13 = v11[1];
  v14 = v11[2];
  v50 = *v11;
  v51 = v13;
  v52 = v14;

  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465458);
  MEMORY[0x1CCAA6D30](&v53);
  v15 = v53;
  result = sub_1CACE1280(sub_1CACB32F4, v44, v53);
  if ((v17 & 1) == 0)
  {
    v18 = result + 1;
    if (__OFADD__(result, 1))
    {
LABEL_41:
      __break(1u);
      return result;
    }

    v42 = result;
    v36 = v14;
    v37 = v13;
    v38 = v12;
    while (1)
    {
      v20 = v15[2];
      if (v18 == v20)
      {
        break;
      }

      if (v18 >= v20)
      {
        __break(1u);
        goto LABEL_34;
      }

      v21 = (*(v43 + 80) + 32) & ~*(v43 + 80);
      v22 = v15 + v21;
      v23 = *(v43 + 72);
      v24 = v23 * v18;
      sub_1CACB324C(v15 + v21 + v23 * v18, v10, type metadata accessor for EventAttachmentModelObject);
      if (*v10 == *a2 && v10[1] == a2[1])
      {
        result = sub_1CABC6454(v10, type metadata accessor for EventAttachmentModelObject);
        ++v18;
      }

      else
      {
        v26 = sub_1CAD4E9E4();
        result = sub_1CABC6454(v10, type metadata accessor for EventAttachmentModelObject);
        if ((v26 & 1) == 0)
        {
          v27 = v42;
          if (v18 != v42)
          {
            if (v42 < 0)
            {
              goto LABEL_37;
            }

            v28 = v15[2];
            if (v42 >= v28)
            {
              goto LABEL_38;
            }

            v29 = v23 * v42;
            result = sub_1CACB324C(&v22[v23 * v42], v41, type metadata accessor for EventAttachmentModelObject);
            if (v18 >= v28)
            {
              goto LABEL_39;
            }

            v30 = v39;
            sub_1CACB324C(&v22[v24], v39, type metadata accessor for EventAttachmentModelObject);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v15 = sub_1CABF1ADC(v15);
            }

            result = sub_1CACB334C(v30, v15 + v21 + v29);
            if (v18 >= v15[2])
            {
              goto LABEL_40;
            }

            result = sub_1CACB334C(v41, v15 + v21 + v24);
            v27 = v42;
          }

          v42 = v27 + 1;
        }

        ++v18;
      }
    }

    v19 = v42;
    if (v18 < v42)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v13 = v37;
    v12 = v38;
    v14 = v36;
    if ((v42 & 0x8000000000000000) == 0)
    {
      goto LABEL_25;
    }

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
    goto LABEL_41;
  }

  v18 = v15[2];
  v19 = v18;
LABEL_25:
  v31 = v19;
  v32 = v19 - v18;
  v33 = v18 + v32;
  if (__OFADD__(v18, v32))
  {
    goto LABEL_36;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v53 = v15;
  if (!isUniquelyReferenced_nonNull_native || v33 > v15[3] >> 1)
  {
    if (v18 <= v33)
    {
      v35 = v33;
    }

    else
    {
      v35 = v18;
    }

    v15 = sub_1CAD34AC0(isUniquelyReferenced_nonNull_native, v35, 1, v15);
    v53 = v15;
  }

  sub_1CABF2CF0(v31, v18, 0);
  v47 = v12;
  v48 = v13;
  v49 = v14;
  v46 = v15;
  sub_1CAD4DAC4();
}

uint64_t sub_1CACB0154()
{
  type metadata accessor for AttachmentEditor();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463610);
  return sub_1CAD4D9A4();
}

double sub_1CACB01C8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1CAD4CC94();
  v19 = 1;
  sub_1CACB0304(a1, &v11);
  v24 = v15;
  v25 = v16;
  v26 = v17;
  v20 = v11;
  v21 = v12;
  v22 = v13;
  v23 = v14;
  v27[0] = v11;
  v27[1] = v12;
  v27[2] = v13;
  v27[3] = v14;
  v27[4] = v15;
  v27[5] = v16;
  v28 = v17;
  sub_1CAB23A9C(&v20, &v10, &qword_1EC466A00);
  sub_1CAB21B68(v27, &qword_1EC466A00);
  *&v18[55] = v23;
  *&v18[71] = v24;
  *&v18[87] = v25;
  *&v18[103] = v26;
  *&v18[7] = v20;
  *&v18[23] = v21;
  *&v18[39] = v22;
  v5 = *&v18[32];
  *(a2 + 65) = *&v18[48];
  v6 = *&v18[80];
  *(a2 + 81) = *&v18[64];
  *(a2 + 97) = v6;
  *(a2 + 112) = *&v18[95];
  result = *v18;
  v8 = *&v18[16];
  *(a2 + 17) = *v18;
  *(a2 + 33) = v8;
  v9 = v19;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v9;
  *(a2 + 49) = v5;
  return result;
}

uint64_t sub_1CACB0304@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1CAD4CCF4();
  MEMORY[0x1EEE9AC00](v4 - 8);
  if (qword_1EC462E80 != -1)
  {
    swift_once();
  }

  v27 = qword_1EC47DF38;
  *&v28 = unk_1EC47DF40;
  sub_1CABA6054();

  v5 = sub_1CAD4D444();
  v7 = v6;
  v25 = v8;
  v10 = v9;
  sub_1CAD4CCE4();
  sub_1CAD4CCD4();
  v11 = a1 + *(type metadata accessor for AttachmentEditor() + 24);
  v27 = *v11;
  v28 = *(v11 + 8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465458);
  MEMORY[0x1CCAA6D30](&v26, v12);
  v13 = *(v26 + 16);

  v27 = v13;
  sub_1CAD4CCA4();
  sub_1CAD4CCD4();
  sub_1CAD4CD14();
  v14 = sub_1CAD4D434();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = sub_1CAD4D8F4();
  v22 = sub_1CAD4D264();
  KeyPath = swift_getKeyPath();
  LOBYTE(v27) = v25 & 1;
  LOBYTE(v26) = v25 & 1;
  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = v25 & 1;
  *(a2 + 24) = v10;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v14;
  *(a2 + 56) = v16;
  *(a2 + 64) = v18 & 1;
  *(a2 + 72) = v20;
  *(a2 + 80) = v21;
  *(a2 + 88) = KeyPath;
  *(a2 + 96) = v22;
  sub_1CABA4F48(v5, v7, v25 & 1);

  sub_1CABA4F48(v14, v16, v18 & 1);

  sub_1CABA6128(v14, v16, v18 & 1);

  sub_1CABA6128(v5, v7, v27);
}

uint64_t sub_1CACB05D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AttachmentEditor();
  v5 = *(v4 - 1);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4668D8);
  MEMORY[0x1EEE9AC00](v32);
  v8 = &v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4669F8);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - v11;
  if (*(a1 + v4[7]) == 1)
  {
    v31 = a2;
    v13 = a1 + v4[5];
    v14 = *v13;
    v15 = *(v13 + 8);
    LOBYTE(v13) = *(v13 + 16);
    v33[2] = v14;
    v33[3] = v15;
    v34 = v13;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4631E0);
    MEMORY[0x1CCAA6D30](v33, v16);
    if (LOBYTE(v33[0]) == 1)
    {
      v30 = type metadata accessor for AttachmentEditor;
      sub_1CACB324C(a1, &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AttachmentEditor);
      v29 = *(v5 + 80);
      v17 = (v29 + 16) & ~v29;
      v27 = v17;
      v18 = swift_allocObject();
      v28 = type metadata accessor for AttachmentEditor;
      sub_1CACB39A4(&v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for AttachmentEditor);
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466558);
      sub_1CAB23B0C(&qword_1EC466550, &qword_1EC466558);
      sub_1CAD4D9E4();
      *&v8[*(v32 + 36)] = sub_1CAD4CFE4();
      v19 = a1 + v4[8];
      v20 = *v19;
      v21 = *(v19 + 8);
      LOBYTE(v33[0]) = v20;
      v33[1] = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463610);
      sub_1CAD4D9B4();
      LODWORD(v26) = v34;
      sub_1CACB324C(a1, &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v30);
      v22 = v27;
      v23 = swift_allocObject();
      sub_1CACB39A4(&v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22, v28);
      sub_1CACB2D00();
      sub_1CAC3F0B4();
      sub_1CAD4D6E4();

      sub_1CAB21B68(v8, &qword_1EC4668D8);
      a2 = v31;
      (*(v10 + 32))(v31, v12, v9);
      v24 = 0;
    }

    else
    {
      v24 = 1;
      a2 = v31;
    }
  }

  else
  {
    v24 = 1;
  }

  return (*(v10 + 56))(a2, v24, 1, v9);
}

uint64_t sub_1CACB0A40()
{
  type metadata accessor for AttachmentEditor();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463610);
  return sub_1CAD4D9A4();
}

double sub_1CACB0AB4@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1CAD4CC94();
  v15 = 1;
  sub_1CACB0BD0(&v8);
  v18 = v10;
  v19 = v11;
  v20 = v12;
  v21 = v13;
  v16 = v8;
  v17 = v9;
  v23 = v13;
  v22[2] = v10;
  v22[3] = v11;
  v22[4] = v12;
  v22[0] = v8;
  v22[1] = v9;
  sub_1CAB23A9C(&v16, v7, &qword_1EC466568);
  sub_1CAB21B68(v22, &qword_1EC466568);
  *&v14[39] = v18;
  *&v14[55] = v19;
  *&v14[71] = v20;
  *&v14[87] = v21;
  *&v14[7] = v16;
  *&v14[23] = v17;
  v3 = *&v14[48];
  *(a1 + 49) = *&v14[32];
  *(a1 + 65) = v3;
  *(a1 + 81) = *&v14[64];
  *(a1 + 96) = *&v14[79];
  result = *&v14[16];
  v5 = *v14;
  *(a1 + 33) = *&v14[16];
  v6 = v15;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v6;
  *(a1 + 17) = v5;
  return result;
}

uint64_t sub_1CACB0BD0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1CAD4D8F4();
  sub_1CAD4DC94();
  sub_1CAD4C744();
  if (qword_1EC462E78 != -1)
  {
    swift_once();
  }

  sub_1CABA6054();

  v3 = sub_1CAD4D444();
  v5 = v4;
  v7 = v6 & 1;
  *a1 = v2;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11;
  *(a1 + 24) = v12;
  *(a1 + 32) = v13;
  *(a1 + 40) = v14;
  *(a1 + 48) = v15;
  *(a1 + 56) = v3;
  *(a1 + 64) = v4;
  *(a1 + 72) = v6 & 1;
  *(a1 + 80) = v8;

  sub_1CABA4F48(v3, v5, v7);

  sub_1CABA6128(v3, v5, v7);
}

__n128 sub_1CACB0D60@<Q0>(uint64_t a1@<X8>)
{
  type metadata accessor for AttachmentEditor();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465458);
  sub_1CAD4DAE4();
  result = v4;
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_1CACB0DE4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AttachmentAlert(0);
  (*(*(v3 - 8) + 48))(a2, 1, v3);
  type metadata accessor for AttachmentEditor();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463610);
  return sub_1CAD4D9A4();
}

void sub_1CACB0E9C(uint64_t a1@<X8>)
{
  v35 = a1;
  v1 = type metadata accessor for PreviewController();
  v33 = *(v1 - 8);
  v34 = v1;
  v2 = MEMORY[0x1EEE9AC00](v1);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v32 = &v31 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC463940);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v31 - v7;
  v9 = type metadata accessor for EventAttachmentModelObject();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v31 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466800);
  sub_1CAD4DBF4();
  v16 = v36;
  swift_getKeyPath();
  v36 = v16;
  sub_1CACB2FBC(&qword_1EC463930, type metadata accessor for AttachmentsViewModel);
  sub_1CAD4C424();

  v17 = OBJC_IVAR____TtC13CalendarUIKit20AttachmentsViewModel__attachmentItem;
  swift_beginAccess();
  sub_1CAB23A9C(v16 + v17, v8, &unk_1EC463940);

  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1CAB21B68(v8, &unk_1EC463940);
    v18 = 1;
    v20 = v34;
    v19 = v35;
LABEL_5:
    (*(v33 + 56))(v19, v18, 1, v20);
    return;
  }

  sub_1CACB39A4(v8, v15, type metadata accessor for EventAttachmentModelObject);
  sub_1CACB324C(v15, v13, type metadata accessor for EventAttachmentModelObject);
  v21 = *(v9 + 44);
  v22 = v15[*(v9 + 40)];
  v23 = *&v15[v21];
  v24 = objc_allocWithZone(MEMORY[0x1E6966960]);
  v25 = sub_1CAD4DF54();
  v26 = sub_1CAD4DF54();
  v27 = [v24 initWithUUID:v25 fileName:v26 autoArchived:v22 urlForPendingFileCopy:v23];

  if (v27)
  {
    v28 = [objc_allocWithZone(CUIKAttachmentPreviewController) initWithAttachment_];

    sub_1CABC6454(v15, type metadata accessor for EventAttachmentModelObject);
    sub_1CACB39A4(v13, v4, type metadata accessor for EventAttachmentModelObject);
    v20 = v34;
    *&v4[*(v34 + 20)] = v28;
    v29 = v32;
    sub_1CACB39A4(v4, v32, type metadata accessor for PreviewController);
    v30 = v29;
    v19 = v35;
    sub_1CACB39A4(v30, v35, type metadata accessor for PreviewController);
    v18 = 0;
    goto LABEL_5;
  }

  __break(1u);
}

uint64_t sub_1CACB12F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v90 = a2;
  v81 = a1;
  v2 = sub_1CAD4BFF4();
  v76 = *(v2 - 8);
  v77 = v2;
  v3 = *(v76 + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v72 - v6;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466940);
  MEMORY[0x1EEE9AC00](v89);
  v9 = &v72 - v8;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4669E0);
  MEMORY[0x1EEE9AC00](v86);
  v88 = &v72 - v10;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4669E8);
  MEMORY[0x1EEE9AC00](v78);
  v79 = (&v72 - v11);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466930);
  MEMORY[0x1EEE9AC00](v85);
  v80 = &v72 - v12;
  v13 = type metadata accessor for AttachmentEditor();
  v82 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v83 = v14;
  v15 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463258);
  v87 = *(v84 - 8);
  v16 = MEMORY[0x1EEE9AC00](v84);
  v18 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v72 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v72 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v92 = &v72 - v25;
  v26 = type metadata accessor for AttachmentAlert(0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v72 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CACB324C(v81, v28, type metadata accessor for AttachmentAlert);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 2) >= 3)
  {
    v73 = v18;
    v74 = v21;
    v75 = v24;
    v37 = v77;
    v81 = v9;
    if (EnumCaseMultiPayload)
    {
      v55 = v76;
      v79 = *(v76 + 32);
      v79(v7, v28, v77);
      if (qword_1EC462E40 != -1)
      {
        swift_once();
      }

      v93 = qword_1EC47DEB8;
      v94 = unk_1EC47DEC0;
      (*(v55 + 16))(v5, v7, v37);
      sub_1CACB324C(v91, v15, type metadata accessor for AttachmentEditor);
      v56 = *(v55 + 80);
      v80 = v7;
      v57 = (v56 + 16) & ~v56;
      v58 = *(v82 + 80);
      v82 = ~v58;
      v59 = swift_allocObject();
      v79((v59 + v57), v5, v37);
      sub_1CACB39A4(v15, v59 + ((v3 + v58 + v57) & ~v58), type metadata accessor for AttachmentEditor);
      sub_1CABA6054();

      v60 = v92;
      sub_1CAD4DA04();
      if (qword_1EC462DF8 != -1)
      {
        swift_once();
      }

      v93 = qword_1EC47DE28;
      v94 = unk_1EC47DE30;
      sub_1CACB324C(v91, v15, type metadata accessor for AttachmentEditor);
      v61 = (v58 + 16) & v82;
      v62 = swift_allocObject();
      sub_1CACB39A4(v15, v62 + v61, type metadata accessor for AttachmentEditor);

      v63 = v75;
      sub_1CAD4DA04();
      v64 = v87;
      v65 = *(v87 + 16);
      v66 = v74;
      v67 = v84;
      v65(v74, v60, v84);
      v68 = v73;
      v65(v73, v63, v67);
      v69 = v81;
      v65(v81, v66, v67);
      v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4669F0);
      v65((v69 + *(v70 + 48)), v68, v67);
      v71 = *(v64 + 8);
      v71(v68, v67);
      v71(v66, v67);
      sub_1CAB23A9C(v69, v88, &qword_1EC466940);
      swift_storeEnumTagMultiPayload();
      sub_1CACB30E0();
      sub_1CAB23B0C(&qword_1EC466938, &qword_1EC466940);
      sub_1CAD4CE24();
      sub_1CAB21B68(v69, &qword_1EC466940);
      v71(v63, v67);
      v71(v60, v67);
      return (*(v76 + 8))(v80, v77);
    }

    else
    {
      v38 = *(v28 + 2);
      v39 = *(v28 + 3);

      if (qword_1EC462DF8 != -1)
      {
        swift_once();
      }

      v93 = qword_1EC47DE28;
      v94 = unk_1EC47DE30;
      v40 = v91;
      sub_1CACB324C(v91, v15, type metadata accessor for AttachmentEditor);
      v41 = *(v82 + 80);
      v42 = swift_allocObject();
      sub_1CACB39A4(v15, v42 + ((v41 + 16) & ~v41), type metadata accessor for AttachmentEditor);
      sub_1CABA6054();

      v43 = v92;
      sub_1CAD4DA04();
      if (qword_1EC462E58 != -1)
      {
        swift_once();
      }

      v93 = qword_1EC47DEE8;
      v94 = unk_1EC47DEF0;
      sub_1CACB324C(v40, v15, type metadata accessor for AttachmentEditor);
      v44 = swift_allocObject();
      *(v44 + 16) = v38;
      *(v44 + 24) = v39;
      sub_1CACB39A4(v15, v44 + ((v41 + 32) & ~v41), type metadata accessor for AttachmentEditor);

      v45 = v75;
      sub_1CAD4DA04();
      v46 = v87;
      v47 = *(v87 + 16);
      v48 = v74;
      v91 = v39;
      v49 = v84;
      (v47)(v74, v43, v84);
      v50 = v73;
      (v47)(v73, v45, v49);
      v51 = v81;
      v47();
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4669F0);
      (v47)(v51 + *(v52 + 48), v50, v49);
      v53 = *(v46 + 8);
      v53(v50, v49);
      v53(v48, v49);
      sub_1CAB23A9C(v51, v79, &qword_1EC466940);
      swift_storeEnumTagMultiPayload();
      sub_1CAB23B0C(&qword_1EC463278, &qword_1EC463258);
      sub_1CAB23B0C(&qword_1EC466938, &qword_1EC466940);
      v54 = v80;
      sub_1CAD4CE24();
      sub_1CAB23A9C(v54, v88, &qword_1EC466930);
      swift_storeEnumTagMultiPayload();
      sub_1CACB30E0();
      sub_1CAD4CE24();

      sub_1CAB21B68(v54, &qword_1EC466930);
      sub_1CAB21B68(v51, &qword_1EC466940);
      v53(v75, v49);
      return (v53)(v92, v49);
    }
  }

  else
  {
    if (qword_1EC462E28 != -1)
    {
      swift_once();
    }

    v93 = qword_1EC47DE88;
    v94 = unk_1EC47DE90;
    sub_1CACB324C(v91, v15, type metadata accessor for AttachmentEditor);
    v30 = (*(v82 + 80) + 16) & ~*(v82 + 80);
    v31 = swift_allocObject();
    sub_1CACB39A4(v15, v31 + v30, type metadata accessor for AttachmentEditor);
    sub_1CABA6054();

    v32 = v92;
    sub_1CAD4DA04();
    v33 = v87;
    v34 = v84;
    (*(v87 + 16))(v79, v32, v84);
    swift_storeEnumTagMultiPayload();
    sub_1CAB23B0C(&qword_1EC463278, &qword_1EC463258);
    sub_1CAB23B0C(&qword_1EC466938, &qword_1EC466940);
    v35 = v80;
    sub_1CAD4CE24();
    sub_1CAB23A9C(v35, v88, &qword_1EC466930);
    swift_storeEnumTagMultiPayload();
    sub_1CACB30E0();
    sub_1CAD4CE24();
    sub_1CAB21B68(v35, &qword_1EC466930);
    return (*(v33 + 8))(v32, v34);
  }
}

uint64_t sub_1CACB217C@<X0>(uint64_t a1@<X8>)
{
  sub_1CABC5CB4();
  sub_1CABA6054();
  result = sub_1CAD4D444();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

void sub_1CACB21D8(void (*a1)(uint64_t))
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463938);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v8 - v4;
  a1(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466800);
  sub_1CAD4DBF4();
  v6 = v8[1];
  v7 = type metadata accessor for AttachmentAlert(0);
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  sub_1CABC3F6C(v5);
}

void sub_1CACB22D4(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463938);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = aBlock - v4;
  v6 = type metadata accessor for AttachmentEditor();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() defaultWorkspace];
  if (v10)
  {
    v11 = v10;
    v12 = sub_1CAD4BFB4();
    sub_1CACB324C(a2, aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AttachmentEditor);
    v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v14 = swift_allocObject();
    sub_1CACB39A4(v9, v14 + v13, type metadata accessor for AttachmentEditor);
    aBlock[4] = sub_1CACB390C;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1CACB2680;
    aBlock[3] = &block_descriptor_4;
    v15 = _Block_copy(aBlock);

    [v11 openURL:v12 configuration:0 completionHandler:v15];
    _Block_release(v15);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466800);
    sub_1CAD4DBF4();
    v16 = aBlock[0];
    v17 = type metadata accessor for AttachmentAlert(0);
    (*(*(v17 - 8) + 56))(v5, 1, 1, v17);
    sub_1CABC3F6C(v5);
  }

  else
  {
    __break(1u);
  }
}

void sub_1CACB2574(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463938);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v9 - v5;
  if (!a1 || a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466800);
    sub_1CAD4DBF4();
    v7 = v9[1];
    v8 = type metadata accessor for AttachmentAlert(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v8 - 8) + 56))(v6, 0, 1, v8);
    sub_1CABC3F6C(v6);
  }
}

uint64_t sub_1CACB2680(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_1CAD4DE94();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

void sub_1CACB272C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463938);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v5 - v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466800);
  sub_1CAD4DBF4();
  v3 = v5[1];
  v4 = type metadata accessor for AttachmentAlert(0);
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  sub_1CABC3F6C(v2);
}

unint64_t sub_1CACB2830()
{
  result = qword_1EC466888;
  if (!qword_1EC466888)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC466860);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC466890);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC463258);
    sub_1CAB23B0C(&qword_1EC466898, &qword_1EC466890);
    sub_1CAB23B0C(&qword_1EC463278, &qword_1EC463258);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC466888);
  }

  return result;
}

unint64_t sub_1CACB2984()
{
  result = qword_1EC4668A0;
  if (!qword_1EC4668A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC466850);
    sub_1CACB2A3C();
    sub_1CAB23B0C(&qword_1EC464920, &qword_1EC464928);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4668A0);
  }

  return result;
}

unint64_t sub_1CACB2A3C()
{
  result = qword_1EC4668A8;
  if (!qword_1EC4668A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC466880);
    sub_1CAB23B0C(&qword_1EC4668B0, &qword_1EC4668B8);
    sub_1CAB23B0C(&qword_1EC462050, &qword_1EC4631C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4668A8);
  }

  return result;
}

uint64_t sub_1CACB2B20(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AttachmentEditor();

  return sub_1CACB0DE4(a1, a2);
}

unint64_t sub_1CACB2BA0()
{
  result = qword_1EC4668C0;
  if (!qword_1EC4668C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC466830);
    sub_1CACB2C24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4668C0);
  }

  return result;
}

unint64_t sub_1CACB2C24()
{
  result = qword_1EC4668C8;
  if (!qword_1EC4668C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4668D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4668D8);
    sub_1CACB2D00();
    sub_1CAC3F0B4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4668C8);
  }

  return result;
}

unint64_t sub_1CACB2D00()
{
  result = qword_1EC4668E0;
  if (!qword_1EC4668E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4668D8);
    sub_1CAB23B0C(&qword_1EC4668E8, &qword_1EC4668F0);
    sub_1CAB23B0C(&qword_1EC462050, &qword_1EC4631C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4668E0);
  }

  return result;
}

unint64_t sub_1CACB2DE4()
{
  result = qword_1EC4668F8;
  if (!qword_1EC4668F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC463938);
    sub_1CACB2FBC(&qword_1EC466900, type metadata accessor for AttachmentAlert);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4668F8);
  }

  return result;
}

void sub_1CACB2E98(uint64_t a1@<X8>)
{
  type metadata accessor for AttachmentEditor();

  sub_1CACB0E9C(a1);
}

unint64_t sub_1CACB2F08()
{
  result = qword_1EC466910;
  if (!qword_1EC466910)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC466908);
    sub_1CACB2FBC(&qword_1EC465948, type metadata accessor for PreviewController);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC466910);
  }

  return result;
}

uint64_t sub_1CACB2FBC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1CACB3028()
{
  result = qword_1EC466920;
  if (!qword_1EC466920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC466918);
    sub_1CACB30E0();
    sub_1CAB23B0C(&qword_1EC466938, &qword_1EC466940);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC466920);
  }

  return result;
}

unint64_t sub_1CACB30E0()
{
  result = qword_1EC466928;
  if (!qword_1EC466928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC466930);
    sub_1CAB23B0C(&qword_1EC463278, &qword_1EC463258);
    sub_1CAB23B0C(&qword_1EC466938, &qword_1EC466940);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC466928);
  }

  return result;
}

uint64_t sub_1CACB31C4(uint64_t a1)
{
  v3 = *(type metadata accessor for AttachmentEditor() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1CACAEABC(a1, v4);
}

uint64_t sub_1CACB324C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CACB32F4(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1CAD4E9E4() & 1;
  }
}

uint64_t sub_1CACB334C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventAttachmentModelObject();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_22Tm()
{
  v1 = *(type metadata accessor for AttachmentEditor() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for EventAttachmentModelObject();
  v6 = *(*(v5 - 8) + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v8 = *(*(v5 - 8) + 64);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466800);
  (*(*(v9 - 8) + 8))(v0 + v3, v9);

  v10 = v0 + v7;

  v11 = *(v5 + 28);
  v12 = sub_1CAD4BFF4();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v0 + v7 + v11, 1, v12))
  {
    (*(v13 + 8))(v10 + v11, v12);
  }

  return MEMORY[0x1EEE6BDD0](v0, v7 + v8, v2 | v6 | 7);
}

unint64_t sub_1CACB3668()
{
  result = qword_1EC4669B8;
  if (!qword_1EC4669B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4669A0);
    sub_1CAB23B0C(&qword_1EC463AA8, &qword_1EC463AB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4669B8);
  }

  return result;
}

uint64_t sub_1CACB3760(uint64_t (*a1)(void), uint64_t (*a2)(void), uint64_t (*a3)(unint64_t, uint64_t))
{
  v5 = *(a1(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(a2(0) - 8);
  v9 = v3 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return a3(v3 + v6, v9);
}

void sub_1CACB38A8()
{
  type metadata accessor for AttachmentEditor();
  v1 = *(v0 + 16);

  sub_1CACB21D8(v1);
}

void sub_1CACB390C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AttachmentEditor();

  sub_1CACB2574(a1, a2);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1CACB39A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CACB3A24(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for AttachmentEditor() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t objectdestroyTm_9()
{
  v1 = *(type metadata accessor for AttachmentEditor() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466800);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

double sub_1CACB3BF0@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for AttachmentEditor();

  *&result = sub_1CACB0D60(a1).n128_u64[0];
  return result;
}

id CUIKCreateFamilyCalendarFlowControllerManagerImpl.__allocating_init(delegate:)()
{
  v1 = objc_allocWithZone(v0);
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC13CalendarUIKit49CUIKCreateFamilyCalendarFlowControllerManagerImpl____lazy_storage___viewController] = 0;
  swift_unknownObjectWeakAssign();
  v4.receiver = v1;
  v4.super_class = v0;
  v2 = objc_msgSendSuper2(&v4, sel_init);
  swift_unknownObjectRelease();
  return v2;
}

id CUIKCreateFamilyCalendarFlowControllerManagerImpl.init(delegate:)()
{
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC13CalendarUIKit49CUIKCreateFamilyCalendarFlowControllerManagerImpl____lazy_storage___viewController] = 0;
  swift_unknownObjectWeakAssign();
  v3.receiver = v0;
  v3.super_class = type metadata accessor for CUIKCreateFamilyCalendarFlowControllerManagerImpl();
  v1 = objc_msgSendSuper2(&v3, sel_init);
  swift_unknownObjectRelease();
  return v1;
}

id sub_1CACB3E54()
{
  FamilyCalendarFlow = type metadata accessor for CreateFamilyCalendarFlow();
  MEMORY[0x1EEE9AC00](FamilyCalendarFlow - 8);
  v3 = (&v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = OBJC_IVAR____TtC13CalendarUIKit49CUIKCreateFamilyCalendarFlowControllerManagerImpl____lazy_storage___viewController;
  v5 = *&v0[OBJC_IVAR____TtC13CalendarUIKit49CUIKCreateFamilyCalendarFlowControllerManagerImpl____lazy_storage___viewController];
  if (v5)
  {
    v6 = *&v0[OBJC_IVAR____TtC13CalendarUIKit49CUIKCreateFamilyCalendarFlowControllerManagerImpl____lazy_storage___viewController];
  }

  else
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v0;
    v8 = v0;
    CreateFamilyCalendarFlow.init(completion:)(sub_1CACB4060, v7, v3);
    v9 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC466A30));
    v10 = v0;
    v11 = sub_1CAD4CE04();
    v12 = *&v0[v4];
    *&v10[v4] = v11;
    v6 = v11;

    v5 = 0;
  }

  v13 = v5;
  return v6;
}

void *sub_1CACB3FAC(uint64_t a1, char a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  v4 = result;
  if (a2)
  {
    if (!result)
    {
      return result;
    }

    v5 = sub_1CAD4BF44();
    [v4 onFlowCompleteWithIsCalendarCreated:0 error:v5];
  }

  else
  {
    if (!result)
    {
      return result;
    }

    [result onFlowCompleteWithIsCalendarCreated:1 error:0];
  }

  return swift_unknownObjectRelease();
}

id CUIKCreateFamilyCalendarFlowControllerManagerImpl.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CUIKCreateFamilyCalendarFlowControllerManagerImpl.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CUIKCreateFamilyCalendarFlowControllerManagerImpl();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for OrganizerInfoView()
{
  result = qword_1EC466AA0;
  if (!qword_1EC466AA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1CACB4254()
{
  sub_1CACB42C0();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1CACB42C0()
{
  if (!qword_1EC466AB0)
  {
    type metadata accessor for DisplayOrganizerPerson(255);
    v0 = sub_1CAD4DB14();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC466AB0);
    }
  }
}

uint64_t sub_1CACB4334@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for DisplayOrganizerPerson(0);
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4663D0);
  MEMORY[0x1CCAA6D30](v6);
  v7 = *&v5[*(v3 + 32)];

  sub_1CACB4B00(v5);
  v8 = sub_1CAD4CDA4();
  v21[0] = 1;
  sub_1CACB45BC(&v33);
  v27 = *&v34[48];
  v28 = *&v34[64];
  v23 = v33;
  v24 = *v34;
  v25 = *&v34[16];
  v26 = *&v34[32];
  v30[1] = *v34;
  v30[2] = *&v34[16];
  v29 = *&v34[80];
  v30[0] = v33;
  v30[3] = *&v34[32];
  v30[4] = *&v34[48];
  v30[5] = *&v34[64];
  v30[6] = *&v34[80];
  sub_1CAB23A9C(&v23, v31, &qword_1EC466AC0);
  sub_1CAB21B68(v30, &qword_1EC466AC0);
  *&v22[55] = v26;
  *&v22[71] = v27;
  *&v22[87] = v28;
  *&v22[103] = v29;
  *&v22[7] = v23;
  *&v22[23] = v24;
  *&v22[39] = v25;
  v9 = v21[0];
  v31[0] = v8;
  v31[1] = 0;
  v32[0] = v21[0];
  v10 = *&v22[16];
  v11 = *&v22[32];
  *&v32[49] = *&v22[48];
  *&v32[33] = *&v22[32];
  v12 = *v22;
  *&v32[17] = *&v22[16];
  *&v32[1] = *v22;
  *&v32[112] = *(&v29 + 1);
  v13 = *&v22[80];
  *&v32[97] = *&v22[96];
  v14 = *&v22[64];
  *&v32[81] = *&v22[80];
  v15 = *&v22[48];
  *&v32[65] = *&v22[64];
  v16 = *v32;
  *(a1 + 8) = v8;
  v17 = *&v32[64];
  *(a1 + 72) = *&v32[48];
  v18 = *&v32[16];
  *(a1 + 56) = *&v32[32];
  *(a1 + 40) = v18;
  *(a1 + 24) = v16;
  v19 = *&v32[80];
  *(a1 + 120) = *&v32[96];
  *(a1 + 104) = v19;
  *(a1 + 88) = v17;
  *&v34[65] = v14;
  *&v34[81] = v13;
  *v35 = *&v22[96];
  *a1 = v7;
  *(a1 + 136) = *&v32[112];
  v33 = v8;
  v34[0] = v9;
  *&v35[15] = *&v22[111];
  *&v34[1] = v12;
  *&v34[17] = v10;
  *&v34[33] = v11;
  *&v34[49] = v15;

  sub_1CAB23A9C(v31, v21, &qword_1EC466AC8);
  sub_1CAB21B68(&v33, &qword_1EC466AC8);
}

uint64_t sub_1CACB45BC@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for DisplayOrganizerPerson(0);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = (&v43 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4663D0);
  MEMORY[0x1CCAA6D30]();
  if (v7[1])
  {
    v9 = *v7;
    v10 = v7[1];
  }

  else
  {
    v10 = v7[3];
    if (v10)
    {
      v9 = v7[2];
    }

    else
    {
      if (qword_1EC462ED8 != -1)
      {
        swift_once();
      }

      v9 = qword_1EC47DFE8;
      v10 = unk_1EC47DFF0;
    }
  }

  sub_1CACB4B00(v7);
  v54 = v9;
  v55 = v10;
  sub_1CABA6054();
  v11 = sub_1CAD4D444();
  v13 = v12;
  v15 = v14;
  LODWORD(v54) = sub_1CAD4CFC4();
  v16 = sub_1CAD4D3E4();
  v47 = v17;
  v48 = v16;
  v45 = v18;
  v49 = v19;
  sub_1CABA6128(v11, v13, v15 & 1);

  KeyPath = swift_getKeyPath();
  v44 = sub_1CAD4CC94();
  MEMORY[0x1CCAA6D30](v8);
  if (qword_1EC462EE0 != -1)
  {
    swift_once();
  }

  v21 = qword_1EC47DFF8;
  v20 = unk_1EC47E000;

  sub_1CACB4B00(v5);
  v54 = v21;
  v55 = v20;
  v22 = sub_1CAD4D444();
  v24 = v23;
  v26 = v25;
  sub_1CAD4D304();
  v27 = sub_1CAD4D424();
  v29 = v28;
  v31 = v30;

  sub_1CABA6128(v22, v24, v26 & 1);

  LODWORD(v54) = sub_1CAD4CFE4();
  v32 = sub_1CAD4D3E4();
  v34 = v33;
  LOBYTE(v24) = v35;
  v37 = v36;
  sub_1CABA6128(v27, v29, v31 & 1);

  v38 = v45 & 1;
  LOBYTE(v54) = v45 & 1;
  v53 = v45 & 1;
  v52 = 0;
  v51 = 0;
  LOBYTE(v24) = v24 & 1;
  v50 = v24;
  v40 = v47;
  v39 = v48;
  *a1 = v48;
  *(a1 + 8) = v40;
  *(a1 + 16) = v38;
  v41 = KeyPath;
  *(a1 + 24) = v49;
  *(a1 + 32) = v41;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  *(a1 + 56) = v44;
  *(a1 + 64) = 0x4010000000000000;
  *(a1 + 72) = 0;
  *(a1 + 80) = v32;
  *(a1 + 88) = v34;
  *(a1 + 96) = v24;
  *(a1 + 104) = v37;
  sub_1CABA4F48(v39, v40, v38);

  sub_1CABA4F48(v32, v34, v24);

  sub_1CABA6128(v32, v34, v24);

  sub_1CABA6128(v39, v40, v54);
}

double sub_1CACB499C@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1CAD4CC94();
  v20 = 1;
  sub_1CACB4334(&v10);
  v27 = v16;
  v28 = v17;
  v29 = v18;
  v23 = v12;
  v24 = v13;
  v25 = v14;
  v26 = v15;
  v21 = v10;
  v22 = v11;
  v30[6] = v16;
  v30[7] = v17;
  v30[8] = v18;
  v30[2] = v12;
  v30[3] = v13;
  v30[4] = v14;
  v30[5] = v15;
  v30[0] = v10;
  v30[1] = v11;
  sub_1CAB23A9C(&v21, &v9, &qword_1EC466AB8);
  sub_1CAB21B68(v30, &qword_1EC466AB8);
  *&v19[103] = v27;
  *&v19[87] = v26;
  *&v19[39] = v23;
  *&v19[23] = v22;
  *&v19[119] = v28;
  *&v19[135] = v29;
  *&v19[55] = v24;
  *&v19[71] = v25;
  *&v19[7] = v21;
  v3 = *&v19[112];
  *(a1 + 113) = *&v19[96];
  *(a1 + 129) = v3;
  *(a1 + 145) = *&v19[128];
  v4 = *&v19[48];
  *(a1 + 49) = *&v19[32];
  *(a1 + 65) = v4;
  v5 = *&v19[80];
  *(a1 + 81) = *&v19[64];
  *(a1 + 97) = v5;
  result = *v19;
  v7 = *&v19[16];
  *(a1 + 17) = *v19;
  v8 = v20;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v8;
  *(a1 + 160) = *&v19[143];
  *(a1 + 33) = v7;
  return result;
}

uint64_t sub_1CACB4B00(uint64_t a1)
{
  v2 = type metadata accessor for DisplayOrganizerPerson(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1CACB4B5C()
{
  result = qword_1EC466AD0;
  if (!qword_1EC466AD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC466AD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC466AD0);
  }

  return result;
}

void sub_1CACB4BC0(void *a1)
{
  v2 = v1;
  sub_1CACB51F0();
  v4 = [a1 pasteboardResults];
  if (v4)
  {
    v5 = v4;
    sub_1CABD4070(0, &qword_1EC465288);
    v6 = sub_1CAD4E214();

    if (v6 >> 62)
    {
      v7 = sub_1CAD4E604();
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 = v7 > 0;
  }

  else
  {
    v8 = 0;
  }

  swift_getKeyPath();
  sub_1CACB64BC(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
  sub_1CAD4C424();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v10 = [Strong pasteboardItemProvider], swift_unknownObjectRelease(), v10))
  {
    v11 = [v10 calendarToPasteTo];
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0;
  }

  v12 = objc_opt_self();
  swift_getKeyPath();
  sub_1CAD4C424();

  [v12 modifyCurrentEvent:*(v2 + 16) withAutocompleteResult:a1 isPasteboardResult:v8 calendarToPasteTo:v11 outHasModifiedAttendeesFromSuggestion:0];
  v13 = [a1 attendees];
  if (v13)
  {
    sub_1CABD4070(0, &unk_1EC466B10);
    v14 = sub_1CAD4E214();

    if (v14 >> 62)
    {
      v13 = sub_1CAD4E604();
    }

    else
    {
      v13 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    LODWORD(v13) = v13 > 0;
    v15 = (v2 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__hasModifiedAttendeesFromSuggestion);
    if ((v13 ^ *(v2 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__hasModifiedAttendeesFromSuggestion)))
    {
      goto LABEL_14;
    }
  }

  else
  {
    v15 = (v2 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__hasModifiedAttendeesFromSuggestion);
    if (*(v2 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__hasModifiedAttendeesFromSuggestion))
    {
LABEL_14:
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1CAD4C414();

      goto LABEL_17;
    }
  }

  *v15 = v13;
LABEL_17:
  v17 = OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel___allowTitleChangesToKickoffAutocomplete;
  if ((*(v2 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel___allowTitleChangesToKickoffAutocomplete) & 1) == 0)
  {
    *(v2 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel___allowTitleChangesToKickoffAutocomplete) = 0;
    goto LABEL_21;
  }

  v18 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v18);
  sub_1CAD4C414();

  if (*(v2 + v17) != 1)
  {
LABEL_21:
    v19 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v19);
    sub_1CAD4C414();

    goto LABEL_22;
  }

  *(v2 + v17) = 1;
LABEL_22:
  sub_1CACF0AE0(MEMORY[0x1E69E7CC0]);
}

id sub_1CACB5048()
{
  v1 = v0;
  swift_getKeyPath();
  sub_1CACB64BC(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
  sub_1CAD4C424();

  result = [*(v0 + 16) isNew];
  if (result)
  {
    swift_getKeyPath();
    sub_1CAD4C424();

    v3 = *(v0 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____title);
    v4 = *(v1 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____title + 8);
    swift_bridgeObjectRetain_n();
    sub_1CACFAC38(v3, v4);
    swift_getKeyPath();
    sub_1CAD4C424();

    if (!*(v1 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel___autocompleteTimer))
    {
      v5 = [objc_opt_self() scheduledTimerWithTimeInterval:v1 target:sel_beginAutocompleteSearch selector:0 userInfo:0 repeats:0.35];
      sub_1CACFAFA8(v5);
    }
  }

  return result;
}

uint64_t sub_1CACB51F0()
{
  v1 = v0;
  swift_getKeyPath();
  sub_1CACB64BC(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
  sub_1CAD4C424();

  v2 = OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel___autocompleteTimer;
  v3 = *(v1 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel___autocompleteTimer);
  if (v3)
  {
    v4 = v3;
    [v4 invalidate];
    if (*(v1 + v2))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1CAD4C414();
    }

    else
    {
    }
  }

  swift_getKeyPath();
  sub_1CAD4C424();

  if (*(v1 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel___pendingSearch))
  {
    [swift_unknownObjectRetain() cancel];
    v7 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v7);
    sub_1CAD4C414();

    result = swift_unknownObjectRelease();
  }

  v8 = (v1 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel___autocompleteSearchString);
  if (*(v1 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel___autocompleteSearchString + 8))
  {
    v9 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v9);
    sub_1CAD4C414();
  }

  else
  {
    *v8 = 0;
    v8[1] = 0;
  }

  return result;
}

id sub_1CACB54C4()
{
  v1 = v0;
  swift_getKeyPath();
  aBlock[0] = v0;
  sub_1CACB64BC(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
  sub_1CAD4C424();

  v2 = *(v0 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel___autocompleteSearchString + 8);

  sub_1CACB51F0();
  swift_getKeyPath();
  sub_1CAD4C424();

  result = [*(v0 + 16) eventStore];
  if (result)
  {
    v4 = result;
    if (v2)
    {
      v5 = sub_1CAD4DF54();
    }

    else
    {
      v5 = 0;
    }

    swift_getKeyPath();
    aBlock[0] = v0;
    sub_1CAD4C424();

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = [Strong pasteboardItemProvider];
      swift_unknownObjectRelease();
    }

    else
    {
      v7 = 0;
    }

    v8 = objc_opt_self();
    aBlock[4] = sub_1CACB6478;
    aBlock[5] = v1;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1CACB6398;
    aBlock[3] = &block_descriptor_5;
    v9 = _Block_copy(aBlock);

    [v8 searchWithEventStore:v4 searchString:v5 maximumResultCount:3 ignoreScheduledEvents:0 initialEvent:0 pasteboardItemProvider:v7 completionHandler:v9];
    _Block_release(v9);

    swift_unknownObjectRelease();
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    aBlock[0] = v1;
    sub_1CAD4C414();

    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CACB57E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a3;
  v4 = sub_1CAD4DD94();
  v21 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1CAD4DDC4();
  v7 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CAD4DDA4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CABD4070(0, &qword_1EC466AF0);
  (*(v11 + 104))(v13, *MEMORY[0x1E69E7F88], v10);
  v14 = sub_1CAD4E444();
  (*(v11 + 8))(v13, v10);
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = a1;
  aBlock[4] = sub_1CACB64B4;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CAC69DD4;
  aBlock[3] = &block_descriptor_26;
  v17 = _Block_copy(aBlock);

  sub_1CAD4DDB4();
  v22 = MEMORY[0x1E69E7CC0];
  sub_1CACB64BC(&qword_1EC466AF8, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466B00);
  sub_1CACB6504();
  sub_1CAD4E5B4();
  MEMORY[0x1CCAA76B0](0, v9, v6, v17);
  _Block_release(v17);

  (*(v21 + 8))(v6, v4);
  (*(v7 + 8))(v9, v20);
}

id *sub_1CACB5BA0(uint64_t a1, uint64_t a2)
{
  v43 = a2;
  v2 = sub_1CAD4DD94();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1CAD4DDC4();
  v42 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v41 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1CAD4C0F4();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v34 - v13;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v16 = result;
    v38 = v5;
    v39 = v6;
    v40 = v3;
    swift_getKeyPath();
    aBlock[0] = v16;
    sub_1CACB64BC(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
    sub_1CAD4C424();

    if (*(v16 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel___pendingSearch))
    {
      v37 = v9;
      sub_1CABD4070(0, &qword_1EC465288);

      v36 = sub_1CAD4E1F4();

      swift_getKeyPath();
      aBlock[0] = v16;
      sub_1CAD4C424();

      v17 = v16[2];
      result = [v17 startDate];
      if (result)
      {
        v18 = result;
        v35 = v2;

        sub_1CAD4C0B4();
        v34 = sub_1CAD4C084();
        v19 = *(v37 + 8);
        v19(v14, v8);
        swift_getKeyPath();
        aBlock[0] = v16;
        sub_1CAD4C424();

        v20 = v16[2];
        result = [v20 endDateUnadjustedForLegacyClients];
        if (result)
        {
          v21 = result;

          v22 = objc_opt_self();
          sub_1CAD4C0B4();

          v23 = sub_1CAD4C084();
          v19(v12, v8);
          swift_getKeyPath();
          aBlock[0] = v16;
          sub_1CAD4C424();

          v24 = v36;
          v25 = v34;
          [v22 applyTimeToAutocompleteResults:v36 usingCurrentStartDate:v34 currentEndDate:v23 timeImplicitlySet:*(v16 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__dateIntervalImplicit)];

          sub_1CABD4070(0, &qword_1EC466AF0);
          v26 = sub_1CAD4E424();
          v27 = swift_allocObject();
          swift_weakInit();
          v28 = swift_allocObject();
          v29 = v43;
          *(v28 + 16) = v27;
          *(v28 + 24) = v29;
          aBlock[4] = sub_1CACB65A8;
          aBlock[5] = v28;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1CAC69DD4;
          aBlock[3] = &block_descriptor_37;
          v30 = _Block_copy(aBlock);

          v31 = v41;
          sub_1CAD4DDB4();
          aBlock[0] = MEMORY[0x1E69E7CC0];
          sub_1CACB64BC(&qword_1EC466AF8, MEMORY[0x1E69E7F60]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466B00);
          sub_1CACB6504();
          v32 = v38;
          v33 = v35;
          sub_1CAD4E5B4();
          MEMORY[0x1CCAA76B0](0, v31, v32, v30);
          _Block_release(v30);

          (*(v40 + 8))(v32, v33);
          return (*(v42 + 8))(v31, v39);
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1CACB6200(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    swift_getKeyPath();
    sub_1CACB64BC(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
    sub_1CAD4C424();

    if (*(v4 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel___pendingSearch))
    {
      if (a2)
      {
        v5 = a2;
      }

      else
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      sub_1CACF0AE0(v5);
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1CAD4C414();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1CACB6398(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_1CABD4070(0, &qword_1EC465288);
    v4 = sub_1CAD4E214();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1CACB64BC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1CACB6504()
{
  result = qword_1EC466B08;
  if (!qword_1EC466B08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC466B00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC466B08);
  }

  return result;
}

uint64_t objectdestroy_22Tm_0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

id sub_1CACB6638@<X0>(unint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = a1;
  if (a1)
  {
    v4 = &type metadata for EKParticipantModelWrapper;
    v7 = a1;
    a1 = sub_1CAC6A298();
    v2 = v7;
    v5 = v7;
  }

  else
  {
    v5 = 0;
    v4 = 0;
    a2[2] = 0;
    a2[3] = 0;
  }

  *a2 = v5;
  a2[1] = v5;
  a2[4] = v4;
  a2[5] = a1;

  return v2;
}

uint64_t EKParticipantModelWrapper.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [*v1 URL];
  sub_1CAD4BFC4();

  v4 = sub_1CAD4BFF4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, 0, 1, v4);
}

id EKParticipantModelWrapper.id.getter()
{
  result = [*v0 semanticIdentifier];
  if (result)
  {
    v2 = result;
    v3 = sub_1CAD4DF94();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1CACB6854()
{
  result = [*v0 semanticIdentifier];
  if (result)
  {
    v2 = result;
    v3 = sub_1CAD4DF94();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CACB68D8@<X0>(uint64_t a1@<X8>)
{
  v3 = [*v1 URL];
  sub_1CAD4BFC4();

  v4 = sub_1CAD4BFF4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, 0, 1, v4);
}

void sub_1CACB6990(uint64_t *a1@<X8>)
{
  v3 = [*v1 semanticIdentifier];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1CAD4DF94();
    v7 = v6;

    *a1 = v5;
    a1[1] = v7;
  }

  else
  {
    __break(1u);
  }
}

uint64_t EKAttendeeModelWrapper.comment.getter()
{
  v1 = [*v0 comment];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1CAD4DF94();

  return v3;
}

id EKAttendeeModelWrapper.init(_:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  a2[4] = &type metadata for EKParticipantModelWrapper;
  a2[5] = sub_1CAC6A298();
  a2[1] = a1;

  return a1;
}

uint64_t sub_1CACB6B84()
{
  v1 = [*v0 comment];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1CAD4DF94();

  return v3;
}

uint64_t _s13CalendarUIKit22EKAttendeeModelWrapperV4nameSSSgvg_0()
{
  v1 = v0[4];
  v2 = v0[5];
  __swift_project_boxed_opaque_existential_1(v0 + 1, v1);
  return (*(v2 + 24))(v1, v2);
}

uint64_t _s13CalendarUIKit22EKAttendeeModelWrapperV12emailAddressSSSgvg_0()
{
  v1 = v0[4];
  v2 = v0[5];
  __swift_project_boxed_opaque_existential_1(v0 + 1, v1);
  return (*(v2 + 32))(v1, v2);
}

uint64_t _s13CalendarUIKit22EKAttendeeModelWrapperV11phoneNumberSSSgvg_0()
{
  v1 = v0[4];
  v2 = v0[5];
  __swift_project_boxed_opaque_existential_1(v0 + 1, v1);
  return (*(v2 + 40))(v1, v2);
}

uint64_t _s13CalendarUIKit22EKAttendeeModelWrapperV3url10Foundation3URLVSgvg_0()
{
  v1 = v0[4];
  v2 = v0[5];
  __swift_project_boxed_opaque_existential_1(v0 + 1, v1);
  return (*(v2 + 48))(v1, v2);
}

uint64_t _s13CalendarUIKit22EKAttendeeModelWrapperV2idSSvg_0()
{
  v1 = v0[4];
  v2 = v0[5];
  __swift_project_boxed_opaque_existential_1(v0 + 1, v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t _s13CalendarUIKit22EKAttendeeModelWrapperV13isCurrentUserSbvg_0()
{
  v1 = v0[4];
  v2 = v0[5];
  __swift_project_boxed_opaque_existential_1(v0 + 1, v1);
  return (*(v2 + 56))(v1, v2) & 1;
}

uint64_t _s13CalendarUIKit22EKAttendeeModelWrapperV9contactIDSSSgvg_0()
{
  v1 = v0[4];
  v2 = v0[5];
  __swift_project_boxed_opaque_existential_1(v0 + 1, v1);
  return (*(v2 + 64))(v1, v2);
}

unint64_t sub_1CACB6E74(uint64_t a1)
{
  result = sub_1CACB6E9C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CACB6E9C()
{
  result = qword_1EDA5F718[0];
  if (!qword_1EDA5F718[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDA5F718);
  }

  return result;
}

unint64_t sub_1CACB6EF0(uint64_t a1)
{
  result = sub_1CACB6F18();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CACB6F18()
{
  result = qword_1EC4622D0;
  if (!qword_1EC4622D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4622D0);
  }

  return result;
}

unint64_t sub_1CACB6F6C(uint64_t a1)
{
  result = sub_1CACB6F94();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CACB6F94()
{
  result = qword_1EC4622E0;
  if (!qword_1EC4622E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4622E0);
  }

  return result;
}

unint64_t sub_1CACB6FF8(uint64_t a1)
{
  result = sub_1CACB7020();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CACB7020()
{
  result = qword_1EC462290;
  if (!qword_1EC462290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC462290);
  }

  return result;
}

unint64_t sub_1CACB7074(uint64_t a1)
{
  result = sub_1CACB709C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CACB709C()
{
  result = qword_1EC4622A8;
  if (!qword_1EC4622A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4622A8);
  }

  return result;
}

uint64_t sub_1CACB70F0@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[4];
  v4 = v1[5];
  __swift_project_boxed_opaque_existential_1(v1 + 1, v3);
  result = (*(v4 + 16))(v3, v4);
  *a1 = result;
  a1[1] = v6;
  return result;
}

uint64_t sub_1CACB716C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1CACB71B4(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t EventVirtualConferenceModelObject.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465450);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v73 = &v60 - v5;
  v6 = type metadata accessor for EventVirtualConferenceJoinMethodModelObject(0);
  v71 = *(v6 - 8);
  v72 = v6;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v70 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v60 - v9;
  v11 = type metadata accessor for EventVirtualConferenceModelObject(0);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v12 + 48);
  v16 = sub_1CAD4BFF4();
  v17 = *(v16 - 8);
  v18 = *(v17 + 56);
  v19 = v17 + 56;
  v64 = v15;
  v18(&v14[v15], 1, 1, v16);
  v65 = *(v12 + 52);
  v68 = v18;
  v69 = v16;
  v67 = v19;
  v18(&v14[v65], 1, 1, v16);
  v20 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v20);
  *v14 = (*(v21 + 24))(v20, v21);
  *(v14 + 1) = v22;
  v23 = a1[3];
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v23);
  if ((*(v24 + 32))(v23, v24))
  {
    swift_getAssociatedTypeWitness();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464C78);
    v25 = sub_1CAD4E784();

    v26 = *(v25 + 16);
    if (v26)
    {
      v61 = v14;
      v62 = a2;
      v63 = a1;
      v78 = MEMORY[0x1E69E7CC0];
      sub_1CACB9FD8(0, v26, 0);
      v27 = v78;
      v60 = v25;
      v28 = v25 + 32;
      v66 = v10;
      v29 = v70;
      do
      {
        sub_1CAB299C0(v28, v77);
        sub_1CAB299C0(v77, v74);
        v30 = v72;
        v31 = *(v72 + 20);
        v68(&v29[v31], 1, 1, v69);
        v32 = v75;
        v33 = v76;
        __swift_project_boxed_opaque_existential_1(v74, v75);
        *v29 = (*(v33 + 8))(v32, v33);
        *(v29 + 1) = v34;
        v35 = v75;
        v36 = v76;
        __swift_project_boxed_opaque_existential_1(v74, v75);
        v37 = v73;
        (*(v36 + 16))(v35, v36);
        sub_1CABD4E34(v37, &v29[v31]);
        v38 = v75;
        v39 = v76;
        __swift_project_boxed_opaque_existential_1(v74, v75);
        LOBYTE(v38) = (*(v39 + 24))(v38, v39);
        __swift_destroy_boxed_opaque_existential_1(v77);
        v40 = *(v30 + 24);
        v41 = v66;
        v29[v40] = v38 & 1;
        sub_1CACBA01C(v29, v41, type metadata accessor for EventVirtualConferenceJoinMethodModelObject);
        __swift_destroy_boxed_opaque_existential_1(v74);
        sub_1CACBA084(v29, type metadata accessor for EventVirtualConferenceJoinMethodModelObject);
        v78 = v27;
        v43 = *(v27 + 16);
        v42 = *(v27 + 24);
        if (v43 >= v42 >> 1)
        {
          sub_1CACB9FD8(v42 > 1, v43 + 1, 1);
          v27 = v78;
        }

        *(v27 + 16) = v43 + 1;
        sub_1CACBA0E4(v41, v27 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v43);
        v28 += 40;
        --v26;
      }

      while (v26);

      a1 = v63;
      a2 = v62;
      v14 = v61;
    }

    else
    {

      v27 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v27 = 0;
  }

  *(v14 + 2) = v27;
  v44 = a1[3];
  v45 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v44);
  *(v14 + 3) = (*(v45 + 40))(v44, v45);
  *(v14 + 4) = v46;
  v47 = a1[3];
  v48 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v47);
  *(v14 + 5) = (*(v48 + 48))(v47, v48);
  *(v14 + 6) = v49;
  v50 = a1[3];
  v51 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v50);
  v14[56] = (*(v51 + 56))(v50, v51) & 1;
  v52 = a1[3];
  v53 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v52);
  *(v14 + 8) = (*(v53 + 64))(v52, v53);
  v54 = a1[3];
  v55 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v54);
  v56 = v73;
  (*(v55 + 72))(v54, v55);
  sub_1CABD4E34(v56, &v14[v64]);
  v57 = a1[3];
  v58 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v57);
  (*(v58 + 80))(v57, v58);
  sub_1CABD4E34(v56, &v14[v65]);
  sub_1CACBA01C(v14, a2, type metadata accessor for EventVirtualConferenceModelObject);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1CACBA084(v14, type metadata accessor for EventVirtualConferenceModelObject);
}

uint64_t EventVirtualConferenceModelObject.init(title:joinMethods:conferenceDetails:serializationBlockTitle:isWritable:source:firstPhoneNumber:urlWithAllowedScheme:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v16 = type metadata accessor for EventVirtualConferenceModelObject(0);
  v17 = *(v16 + 40);
  v18 = sub_1CAD4BFF4();
  v19 = *(*(v18 - 8) + 56);
  v19(a9 + v17, 1, 1, v18);
  v20 = *(v16 + 44);
  v19(a9 + v20, 1, 1, v18);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  sub_1CABD4E34(a11, a9 + v17);

  return sub_1CABD4E34(a12, a9 + v20);
}

uint64_t EventVirtualConferenceJoinMethodModelObject.init(title:url:isBroadcast:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char *a5@<X8>)
{
  v10 = type metadata accessor for EventVirtualConferenceJoinMethodModelObject(0);
  v11 = *(v10 + 20);
  v12 = sub_1CAD4BFF4();
  (*(*(v12 - 8) + 56))(&a5[v11], 1, 1, v12);
  *a5 = a1;
  *(a5 + 1) = a2;
  result = sub_1CABD4E34(a3, &a5[v11]);
  a5[*(v10 + 24)] = a4;
  return result;
}

uint64_t EventVirtualConferenceModelObject.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t EventVirtualConferenceModelObject.title.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t EventVirtualConferenceModelObject.joinMethods.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t EventVirtualConferenceModelObject.conferenceDetails.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t EventVirtualConferenceModelObject.conferenceDetails.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t EventVirtualConferenceModelObject.serializationBlockTitle.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t EventVirtualConferenceModelObject.serializationBlockTitle.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t EventVirtualConferenceModelObject.firstPhoneNumber.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for EventVirtualConferenceModelObject(0) + 40);

  return sub_1CABD4DAC(v3, a1);
}

uint64_t EventVirtualConferenceModelObject.firstPhoneNumber.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for EventVirtualConferenceModelObject(0) + 40);

  return sub_1CABD4E34(a1, v3);
}

uint64_t EventVirtualConferenceModelObject.urlWithAllowedScheme.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for EventVirtualConferenceModelObject(0) + 44);

  return sub_1CABD4DAC(v3, a1);
}

uint64_t EventVirtualConferenceModelObject.urlWithAllowedScheme.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for EventVirtualConferenceModelObject(0) + 44);

  return sub_1CABD4E34(a1, v3);
}

uint64_t EventVirtualConferenceJoinMethodModelObject.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465450);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v21 - v5;
  v7 = type metadata accessor for EventVirtualConferenceJoinMethodModelObject(0);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v8 + 28);
  v12 = sub_1CAD4BFF4();
  (*(*(v12 - 8) + 56))(&v10[v11], 1, 1, v12);
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  *v10 = (*(v14 + 8))(v13, v14);
  *(v10 + 1) = v15;
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  (*(v17 + 16))(v16, v17);
  sub_1CABD4E34(v6, &v10[v11]);
  v18 = a1[3];
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v18);
  v10[*(v8 + 32)] = (*(v19 + 24))(v18, v19) & 1;
  sub_1CACBA01C(v10, a2, type metadata accessor for EventVirtualConferenceJoinMethodModelObject);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1CACBA084(v10, type metadata accessor for EventVirtualConferenceJoinMethodModelObject);
}

uint64_t EventVirtualConferenceModelObject.hash(into:)(uint64_t a1)
{
  v3 = sub_1CAD4BFF4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v22 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465450);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v21 - v10;
  if (v1[1])
  {
    sub_1CAD4EAA4();
    sub_1CAD4E054();
    v12 = v1[2];
    if (v12)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1CAD4EAA4();
    v12 = v1[2];
    if (v12)
    {
LABEL_3:
      sub_1CAD4EAA4();
      sub_1CACBBE9C(a1, v12);
      if (v1[4])
      {
        goto LABEL_4;
      }

LABEL_8:
      sub_1CAD4EAA4();
      if (v1[6])
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }
  }

  sub_1CAD4EAA4();
  if (!v1[4])
  {
    goto LABEL_8;
  }

LABEL_4:
  sub_1CAD4EAA4();
  sub_1CAD4E054();
  if (v1[6])
  {
LABEL_5:
    sub_1CAD4EAA4();
    sub_1CAD4E054();
    goto LABEL_10;
  }

LABEL_9:
  sub_1CAD4EAA4();
LABEL_10:
  sub_1CAD4EAA4();
  MEMORY[0x1CCAA7D10](v1[8]);
  v13 = type metadata accessor for EventVirtualConferenceModelObject(0);
  sub_1CABD4DAC(v1 + *(v13 + 40), v11);
  v14 = *(v4 + 48);
  if (v14(v11, 1, v3) == 1)
  {
    v15 = v4;
    sub_1CAD4EAA4();
  }

  else
  {
    v16 = *(v4 + 32);
    v21 = v9;
    v17 = v22;
    v16(v22, v11, v3);
    sub_1CAD4EAA4();
    sub_1CACBD204(&qword_1EC463C50, MEMORY[0x1E6968FB0]);
    sub_1CAD4DEB4();
    v15 = v4;
    v18 = v17;
    v9 = v21;
    (*(v4 + 8))(v18, v3);
  }

  sub_1CABD4DAC(v1 + *(v13 + 44), v9);
  if (v14(v9, 1, v3) == 1)
  {
    return sub_1CAD4EAA4();
  }

  v20 = v22;
  (*(v15 + 32))(v22, v9, v3);
  sub_1CAD4EAA4();
  sub_1CACBD204(&qword_1EC463C50, MEMORY[0x1E6968FB0]);
  sub_1CAD4DEB4();
  return (*(v15 + 8))(v20, v3);
}

uint64_t EventVirtualConferenceJoinMethodModelObject.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for EventVirtualConferenceJoinMethodModelObject(0) + 20);

  return sub_1CABD4DAC(v3, a1);
}

uint64_t EventVirtualConferenceJoinMethodModelObject.url.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for EventVirtualConferenceJoinMethodModelObject(0) + 20);

  return sub_1CABD4E34(a1, v3);
}

uint64_t EventVirtualConferenceJoinMethodModelObject.isBroadcast.setter(char a1)
{
  result = type metadata accessor for EventVirtualConferenceJoinMethodModelObject(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t EventVirtualConferenceJoinMethodModelObject.hash(into:)()
{
  v1 = sub_1CAD4BFF4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465450);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v10 - v6;
  if (*(v0 + 8))
  {
    sub_1CAD4EAA4();
    sub_1CAD4E054();
  }

  else
  {
    sub_1CAD4EAA4();
  }

  v8 = type metadata accessor for EventVirtualConferenceJoinMethodModelObject(0);
  sub_1CABD4DAC(v0 + *(v8 + 20), v7);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    sub_1CAD4EAA4();
  }

  else
  {
    (*(v2 + 32))(v4, v7, v1);
    sub_1CAD4EAA4();
    sub_1CACBD204(&qword_1EC463C50, MEMORY[0x1E6968FB0]);
    sub_1CAD4DEB4();
    (*(v2 + 8))(v4, v1);
  }

  return sub_1CAD4EAA4();
}

uint64_t sub_1CACB898C(void (*a1)(_BYTE *))
{
  sub_1CAD4EA84();
  a1(v3);
  return sub_1CAD4EAC4();
}

uint64_t sub_1CACB8A08(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  sub_1CAD4EA84();
  a3(v5);
  return sub_1CAD4EAC4();
}

uint64_t sub_1CACB8A6C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_1CAD4EA84();
  a4(v6);
  return sub_1CAD4EAC4();
}

unint64_t sub_1CACB8AB4()
{
  v1 = *v0;
  v2 = 0x656C746974;
  v3 = 0xD000000000000014;
  if (v1 == 6)
  {
    v3 = 0xD000000000000010;
  }

  v4 = 0x6261746972577369;
  if (v1 != 4)
  {
    v4 = 0x656372756F73;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000017;
  if (v1 == 2)
  {
    v5 = 0xD000000000000011;
  }

  if (*v0)
  {
    v2 = 0x6874654D6E696F6ALL;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1CACB8BB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CACBD80C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CACB8BE0(uint64_t a1)
{
  v2 = sub_1CACBD1B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CACB8C1C(uint64_t a1)
{
  v2 = sub_1CACBD1B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EventVirtualConferenceModelObject.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465450);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v39 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v36 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466B20);
  v40 = *(v8 - 8);
  v41 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v36 - v9;
  v11 = type metadata accessor for EventVirtualConferenceModelObject(0);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  v14 = v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v12 + 48);
  v16 = sub_1CAD4BFF4();
  v17 = *(*(v16 - 8) + 56);
  v44 = v15;
  v17(&v14[v15], 1, 1, v16);
  v42 = *(v12 + 52);
  v17(&v14[v42], 1, 1, v16);
  v18 = a1[3];
  v43 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_1CACBD1B0();
  v19 = v45;
  sub_1CAD4EAE4();
  if (v19)
  {
    v45 = v19;
LABEL_4:
    __swift_destroy_boxed_opaque_existential_1(v43);

    sub_1CAB21B68(&v14[v44], &qword_1EC465450);
    return sub_1CAB21B68(&v14[v42], &qword_1EC465450);
  }

  v36[2] = v16;
  v37 = v7;
  v20 = v40;
  v21 = v41;
  LOBYTE(v46) = 0;
  v22 = sub_1CAD4E824();
  v45 = 0;
  *v14 = v22;
  *(v14 + 1) = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466B30);
  v48 = 1;
  sub_1CACBD24C(&qword_1EC466B38, &qword_1EC466B40);
  v25 = v45;
  sub_1CAD4E874();
  if (v25)
  {
    v45 = v25;
    (*(v20 + 8))(v10, v21);
    goto LABEL_4;
  }

  *(v14 + 2) = v46;
  LOBYTE(v46) = 2;
  *(v14 + 3) = sub_1CAD4E824();
  *(v14 + 4) = v26;
  LOBYTE(v46) = 3;
  *(v14 + 5) = sub_1CAD4E824();
  *(v14 + 6) = v27;
  LOBYTE(v46) = 4;
  v28 = sub_1CAD4E834();
  v45 = 0;
  v14[56] = v28 & 1;
  type metadata accessor for EKVirtualConferenceSource(0);
  v48 = 5;
  sub_1CACBD204(&qword_1EC466B48, type metadata accessor for EKVirtualConferenceSource);
  v29 = v45;
  sub_1CAD4E874();
  v45 = v29;
  if (v29)
  {
    goto LABEL_11;
  }

  v30 = v46;
  if (v47)
  {
    v30 = 0;
  }

  *(v14 + 8) = v30;
  LOBYTE(v46) = 6;
  v31 = sub_1CACBD204(&qword_1EC463C68, MEMORY[0x1E6968FB0]);
  v32 = v37;
  v36[1] = v31;
  v33 = v45;
  sub_1CAD4E874();
  v45 = v33;
  if (v33)
  {
LABEL_11:
    (*(v20 + 8))(v10, v41);
    goto LABEL_4;
  }

  sub_1CABD4E34(v32, &v14[v44]);
  LOBYTE(v46) = 7;
  v34 = v41;
  v35 = v45;
  sub_1CAD4E874();
  (*(v20 + 8))(v10, v34);
  v45 = v35;
  if (v35)
  {
    goto LABEL_4;
  }

  sub_1CABD4E34(v39, &v14[v42]);
  sub_1CACBA01C(v14, v38, type metadata accessor for EventVirtualConferenceModelObject);
  __swift_destroy_boxed_opaque_existential_1(v43);
  return sub_1CACBA084(v14, type metadata accessor for EventVirtualConferenceModelObject);
}

uint64_t EventVirtualConferenceModelObject.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466B50);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CACBD1B0();
  sub_1CAD4EB04();
  LOBYTE(v12) = 0;
  sub_1CAD4E904();
  if (!v2)
  {
    v12 = *(v3 + 16);
    v11 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466B30);
    sub_1CACBD24C(&qword_1EC466B58, &qword_1EC466B60);
    sub_1CAD4E924();
    LOBYTE(v12) = 2;
    sub_1CAD4E904();
    LOBYTE(v12) = 3;
    sub_1CAD4E904();
    LOBYTE(v12) = 4;
    sub_1CAD4E944();
    v12 = *(v3 + 64);
    v11 = 5;
    type metadata accessor for EKVirtualConferenceSource(0);
    sub_1CACBD204(&qword_1EC466B68, type metadata accessor for EKVirtualConferenceSource);
    sub_1CAD4E984();
    type metadata accessor for EventVirtualConferenceModelObject(0);
    LOBYTE(v12) = 6;
    sub_1CAD4BFF4();
    sub_1CACBD204(&qword_1EC463C78, MEMORY[0x1E6968FB0]);
    sub_1CAD4E924();
    LOBYTE(v12) = 7;
    sub_1CAD4E924();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1CACB963C(uint64_t a1)
{
  v2 = sub_1CACBD2E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CACB9678(uint64_t a1)
{
  v2 = sub_1CACBD2E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EventVirtualConferenceJoinMethodModelObject.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465450);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466B70);
  v25 = *(v6 - 8);
  v26 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  v9 = type metadata accessor for EventVirtualConferenceJoinMethodModelObject(0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = (&v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v10 + 20);
  v14 = sub_1CAD4BFF4();
  v15 = *(*(v14 - 8) + 56);
  v29 = v13;
  v15(v12 + v13, 1, 1, v14);
  v16 = a1[3];
  v28 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1CACBD2E8();
  v17 = v27;
  sub_1CAD4EAE4();
  if (v17)
  {
    v20 = v29;
    __swift_destroy_boxed_opaque_existential_1(v28);

    return sub_1CAB21B68(v12 + v20, &qword_1EC465450);
  }

  else
  {
    v18 = v25;
    v32 = 0;
    *v12 = sub_1CAD4E824();
    v12[1] = v19;
    v31 = 1;
    sub_1CACBD204(&qword_1EC463C68, MEMORY[0x1E6968FB0]);
    sub_1CAD4E874();
    sub_1CABD4E34(v5, v12 + v29);
    v30 = 2;
    v21 = v26;
    v22 = sub_1CAD4E834();
    (*(v18 + 8))(v8, v21);
    *(v12 + *(v9 + 24)) = v22 & 1;
    sub_1CACBA01C(v12, v24, type metadata accessor for EventVirtualConferenceJoinMethodModelObject);
    __swift_destroy_boxed_opaque_existential_1(v28);
    return sub_1CACBA084(v12, type metadata accessor for EventVirtualConferenceJoinMethodModelObject);
  }
}

uint64_t EventVirtualConferenceJoinMethodModelObject.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466B80);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CACBD2E8();
  sub_1CAD4EB04();
  v8[15] = 0;
  sub_1CAD4E904();
  if (!v1)
  {
    type metadata accessor for EventVirtualConferenceJoinMethodModelObject(0);
    v8[14] = 1;
    sub_1CAD4BFF4();
    sub_1CACBD204(&qword_1EC463C78, MEMORY[0x1E6968FB0]);
    sub_1CAD4E924();
    v8[13] = 2;
    sub_1CAD4E944();
  }

  return (*(v4 + 8))(v6, v3);
}

char *sub_1CACB9D7C(char *a1, int64_t a2, char a3)
{
  result = sub_1CACBA3E0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1CACB9D9C(char *a1, int64_t a2, char a3)
{
  result = sub_1CACBB304(a1, a2, a3, *v3, &qword_1EC466C38);
  *v3 = result;
  return result;
}

void *sub_1CACB9DD4(void *a1, int64_t a2, char a3)
{
  result = sub_1CACBA4E4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1CACB9DF4(char *a1, int64_t a2, char a3)
{
  result = sub_1CACBA62C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1CACB9E14(size_t a1, int64_t a2, char a3)
{
  result = sub_1CACBA994(a1, a2, a3, *v3, &qword_1EC466C30, &unk_1CAD65D70, type metadata accessor for EventAttendeeModelObject);
  *v3 = result;
  return result;
}

char *sub_1CACB9E58(char *a1, int64_t a2, char a3)
{
  result = sub_1CACBA738(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1CACB9E78(void *a1, int64_t a2, char a3)
{
  result = sub_1CACBAB70(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1CACB9E98(size_t a1, int64_t a2, char a3)
{
  result = sub_1CACBA994(a1, a2, a3, *v3, &qword_1EC466C48, &unk_1CAD65D90, type metadata accessor for EventCalendarModelObject);
  *v3 = result;
  return result;
}

char *sub_1CACB9EDC(char *a1, int64_t a2, char a3)
{
  result = sub_1CACBACB8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1CACB9EFC(char *a1, int64_t a2, char a3)
{
  result = sub_1CACBADBC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1CACB9F1C(char *a1, int64_t a2, char a3)
{
  result = sub_1CACBAEC0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1CACB9F3C(char *a1, int64_t a2, char a3)
{
  result = sub_1CACBB304(a1, a2, a3, *v3, &qword_1EC466C10);
  *v3 = result;
  return result;
}

size_t sub_1CACB9F74(size_t a1, int64_t a2, char a3)
{
  result = sub_1CACBA994(a1, a2, a3, *v3, &qword_1EC466C18, &unk_1CAD65D50, type metadata accessor for EventAttachmentModelObject);
  *v3 = result;
  return result;
}

char *sub_1CACB9FB8(char *a1, int64_t a2, char a3)
{
  result = sub_1CACBAFCC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1CACB9FD8(size_t a1, int64_t a2, char a3)
{
  result = sub_1CACBA994(a1, a2, a3, *v3, &qword_1EC466C50, &unk_1CAD65DA0, type metadata accessor for EventVirtualConferenceJoinMethodModelObject);
  *v3 = result;
  return result;
}

uint64_t sub_1CACBA01C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CACBA084(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1CACBA0E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventVirtualConferenceJoinMethodModelObject(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

size_t sub_1CACBA148(size_t a1, int64_t a2, char a3)
{
  result = sub_1CACBA994(a1, a2, a3, *v3, &qword_1EC466BD8, &unk_1CAD65D08, type metadata accessor for UIAlarm);
  *v3 = result;
  return result;
}

size_t sub_1CACBA18C(size_t a1, int64_t a2, char a3)
{
  result = sub_1CACBB114(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1CACBA1AC(char *a1, int64_t a2, char a3)
{
  result = sub_1CACBB304(a1, a2, a3, *v3, &qword_1EC466C20);
  *v3 = result;
  return result;
}

size_t sub_1CACBA1E4(size_t a1, int64_t a2, char a3)
{
  result = sub_1CACBA994(a1, a2, a3, *v3, &qword_1EC465A30, &unk_1CAD65D30, MEMORY[0x1E6968130]);
  *v3 = result;
  return result;
}

size_t sub_1CACBA228(size_t a1, int64_t a2, char a3)
{
  result = sub_1CACBA994(a1, a2, a3, *v3, &qword_1EC466BF0, &unk_1CAD69D90, MEMORY[0x1E6969530]);
  *v3 = result;
  return result;
}

size_t sub_1CACBA26C(size_t a1, int64_t a2, char a3)
{
  result = sub_1CACBA994(a1, a2, a3, *v3, &qword_1EC4663A8, &unk_1CAD64368, type metadata accessor for DisplayPerson);
  *v3 = result;
  return result;
}

size_t sub_1CACBA2B0(size_t a1, int64_t a2, char a3)
{
  result = sub_1CACBA994(a1, a2, a3, *v3, &qword_1EC466C40, &unk_1CAD65D88, type metadata accessor for EventModelObject);
  *v3 = result;
  return result;
}

char *sub_1CACBA2F4(char *a1, int64_t a2, char a3)
{
  result = sub_1CACBA848(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1CACBA314(size_t a1, int64_t a2, char a3)
{
  result = sub_1CACBA994(a1, a2, a3, *v3, &qword_1EC466C28, &unk_1CAD65D60, type metadata accessor for EventAlarmModelObject);
  *v3 = result;
  return result;
}

size_t sub_1CACBA358(size_t a1, int64_t a2, char a3)
{
  result = sub_1CACBA994(a1, a2, a3, *v3, &qword_1EC465D50, &unk_1CAD61F10, type metadata accessor for EventRecurrenceRuleModelObject);
  *v3 = result;
  return result;
}

size_t sub_1CACBA39C(size_t a1, int64_t a2, char a3)
{
  result = sub_1CACBA994(a1, a2, a3, *v3, &qword_1EC466BC8, &unk_1CAD65CF8, type metadata accessor for LocationSearchResult);
  *v3 = result;
  return result;
}

char *sub_1CACBA3E0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465FE0);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1CACBA4E4(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466BE0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466BE8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1CACBA62C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466C00);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1CACBA738(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466BD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1CACBA848(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC464EC8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 144);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[144 * v8])
    {
      memmove(v12, v13, 144 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1CACBA994(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
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
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
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

void *sub_1CACBAB70(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466C58);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466C60);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1CACBACB8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465FF8);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1CACBADBC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465FE8);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1CACBAEC0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464728);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1CACBAFCC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466BF8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1CACBB114(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466C68);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465460) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465460) - 8);
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

char *sub_1CACBB304(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 25;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 3);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[8 * v9])
    {
      memmove(v14, v15, 8 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

uint64_t sub_1CACBB438(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1CCAA7D10](v3);
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      v7 = v5[1];
      v12 = *v5;
      v13 = v7;
      v8 = v5[3];
      v14 = v5[2];
      v15 = v8;
      v16 = v5[4];
      v9 = *(&v13 + 1);
      v10 = *(&v14 + 1);
      if (*(&v12 + 1))
      {
        sub_1CAD4EAA4();
        sub_1CABC2CD8(&v12, v11);

        sub_1CAD4E054();
        if (v9)
        {
          goto LABEL_7;
        }
      }

      else
      {
        sub_1CAD4EAA4();
        sub_1CABC2CD8(&v12, v11);

        if (v9)
        {
LABEL_7:
          sub_1CAD4EAA4();
          sub_1CAD4E054();
          if (!v10)
          {
            goto LABEL_11;
          }

          goto LABEL_3;
        }
      }

      sub_1CAD4EAA4();
      if (!v10)
      {
LABEL_11:
        sub_1CAD4EAA4();
        goto LABEL_4;
      }

LABEL_3:
      sub_1CAD4EAA4();
      sub_1CAD4E054();
LABEL_4:
      sub_1CAD4E054();

      sub_1CAD4EAA4();
      v6 = *(&v16 + 1);
      sub_1CAD4EAA4();
      MEMORY[0x1CCAA7D10](v6);
      result = sub_1CABC2D10(&v12);
      v5 += 5;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1CACBB5C0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1CCAA7D10](v3);
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      v6 = v5[7];
      v7 = v5[9];
      v57 = v5[8];
      v58 = v7;
      v8 = v5[9];
      v59 = v5[10];
      v9 = v5[3];
      v10 = v5[5];
      v53 = v5[4];
      v54 = v10;
      v11 = v5[5];
      v12 = v5[7];
      v55 = v5[6];
      v56 = v12;
      v13 = v5[1];
      v49 = *v5;
      v50 = v13;
      v14 = v5[3];
      v16 = *v5;
      v15 = v5[1];
      v51 = v5[2];
      v52 = v14;
      v60[8] = v57;
      v60[9] = v8;
      v60[10] = v5[10];
      v60[4] = v53;
      v60[5] = v11;
      v60[6] = v55;
      v60[7] = v6;
      v60[0] = v16;
      v60[1] = v15;
      v60[2] = v51;
      v60[3] = v9;
      v17 = sub_1CACACF10(v60);
      v18 = sub_1CAB32D60(v60);
      if (v17 == 1)
      {
        MEMORY[0x1CCAA7D10](1);
        v19 = *(v18 + 3);
        v20 = *(v18 + 5);
        if (*(v18 + 1))
        {
          sub_1CAD4EAA4();
          v46 = v57;
          v47 = v58;
          v48 = v59;
          v42 = v53;
          v43 = v54;
          v44 = v55;
          v45 = v56;
          v38 = v49;
          v39 = v50;
          v40 = v51;
          v41 = v52;
          v21 = sub_1CAB32D60(&v38);
          sub_1CABC2CD8(v21, v37);
          sub_1CAD4E054();
          if (v19)
          {
            goto LABEL_8;
          }

LABEL_14:
          sub_1CAD4EAA4();
          if (!v20)
          {
            goto LABEL_15;
          }

LABEL_9:
          sub_1CAD4EAA4();
          sub_1CAD4E054();
        }

        else
        {
          sub_1CAD4EAA4();
          v46 = v57;
          v47 = v58;
          v48 = v59;
          v42 = v53;
          v43 = v54;
          v44 = v55;
          v45 = v56;
          v38 = v49;
          v39 = v50;
          v40 = v51;
          v41 = v52;
          v25 = sub_1CAB32D60(&v38);
          sub_1CABC2CD8(v25, v37);
          if (!v19)
          {
            goto LABEL_14;
          }

LABEL_8:
          sub_1CAD4EAA4();
          sub_1CAD4E054();
          if (v20)
          {
            goto LABEL_9;
          }

LABEL_15:
          sub_1CAD4EAA4();
        }

        sub_1CAD4E054();
        sub_1CAD4EAA4();
        v26 = *(v18 + 9);
        sub_1CAD4EAA4();
        MEMORY[0x1CCAA7D10](v26);
        goto LABEL_4;
      }

      MEMORY[0x1CCAA7D10](0);
      if (*(v18 + 1))
      {
        sub_1CAD4EAA4();
        v46 = v57;
        v47 = v58;
        v48 = v59;
        v42 = v53;
        v43 = v54;
        v44 = v55;
        v45 = v56;
        v38 = v49;
        v39 = v50;
        v40 = v51;
        v41 = v52;
        v22 = sub_1CAB32D60(&v38);
        sub_1CABD3C1C(v22, v37);
        sub_1CAD4E054();
        v23 = *(v18 + 2);
        if (v23)
        {
          goto LABEL_12;
        }
      }

      else
      {
        sub_1CAD4EAA4();
        v46 = v57;
        v47 = v58;
        v48 = v59;
        v42 = v53;
        v43 = v54;
        v44 = v55;
        v45 = v56;
        v38 = v49;
        v39 = v50;
        v40 = v51;
        v41 = v52;
        v27 = sub_1CAB32D60(&v38);
        sub_1CABD3C1C(v27, v37);
        v23 = *(v18 + 2);
        if (v23)
        {
LABEL_12:
          sub_1CAD4EAA4();
          v24 = v23;
          sub_1CAD4E4A4();

          goto LABEL_19;
        }
      }

      sub_1CAD4EAA4();
LABEL_19:
      v28 = v18[3];
      if (v28 == 0.0)
      {
        v28 = 0.0;
      }

      v29 = *(v18 + 5);
      MEMORY[0x1CCAA7D30](*&v28);
      if (v29)
      {
        sub_1CAD4EAA4();
        sub_1CAD4E054();
        if (*(v18 + 7))
        {
          goto LABEL_23;
        }
      }

      else
      {
        sub_1CAD4EAA4();
        if (*(v18 + 7))
        {
LABEL_23:
          sub_1CAD4EAA4();
          sub_1CAD4E054();
          goto LABEL_26;
        }
      }

      sub_1CAD4EAA4();
LABEL_26:
      if (*(v18 + 9) >> 60 == 15)
      {
        sub_1CAD4EAA4();
      }

      else
      {
        sub_1CAD4EAA4();
        sub_1CAD4C034();
      }

      sub_1CAD4EAA4();
      v30 = *(v18 + 13);
      if (v30 != 1)
      {
        v31 = *(v18 + 11);
        v32 = *(v18 + 15);
        v33 = *(v18 + 17);
        v34 = *(v18 + 19);
        v35 = *(v18 + 21);
        v36 = v33;
        sub_1CAD4EAA4();
        MEMORY[0x1CCAA7D10](v31);
        if (v30)
        {
          sub_1CAD4EAA4();
          sub_1CAD4E054();
          if (v32)
          {
            goto LABEL_32;
          }

LABEL_37:
          sub_1CAD4EAA4();
          if (!v36)
          {
            goto LABEL_38;
          }

LABEL_33:
          sub_1CAD4EAA4();
          sub_1CAD4E054();
          if (!v34)
          {
            goto LABEL_39;
          }
        }

        else
        {
          sub_1CAD4EAA4();
          if (!v32)
          {
            goto LABEL_37;
          }

LABEL_32:
          sub_1CAD4EAA4();
          sub_1CAD4E054();
          if (v36)
          {
            goto LABEL_33;
          }

LABEL_38:
          sub_1CAD4EAA4();
          if (!v34)
          {
LABEL_39:
            sub_1CAD4EAA4();
            if (v35)
            {
LABEL_40:
              sub_1CAD4EAA4();
              sub_1CAD4E054();
              goto LABEL_4;
            }

            goto LABEL_3;
          }
        }

        sub_1CAD4EAA4();
        sub_1CAD4E054();
        if (v35)
        {
          goto LABEL_40;
        }
      }

LABEL_3:
      sub_1CAD4EAA4();
LABEL_4:
      result = sub_1CACACF78(&v49);
      v5 += 11;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1CACBBB48(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1CCAA7D10](v3);
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      v6 = v5[9];
      v30 = v5[8];
      v31 = v6;
      v32 = v5[10];
      v7 = v5[5];
      v26 = v5[4];
      v27 = v7;
      v8 = v5[7];
      v28 = v5[6];
      v29 = v8;
      v9 = v5[1];
      v22 = *v5;
      v23 = v9;
      v10 = v5[3];
      v24 = v5[2];
      v25 = v10;
      if (*(&v22 + 1))
      {
        sub_1CAD4EAA4();
        sub_1CABD3C1C(&v22, v21);
        sub_1CAD4E054();
        v11 = v23;
        if (v23)
        {
          goto LABEL_7;
        }
      }

      else
      {
        sub_1CAD4EAA4();
        sub_1CABD3C1C(&v22, v21);
        v11 = v23;
        if (v23)
        {
LABEL_7:
          sub_1CAD4EAA4();
          v12 = v11;
          sub_1CAD4E4A4();

          goto LABEL_10;
        }
      }

      sub_1CAD4EAA4();
LABEL_10:
      v13 = *(&v23 + 1);
      if (*(&v23 + 1) == 0.0)
      {
        v13 = 0.0;
      }

      v14 = *(&v24 + 1);
      MEMORY[0x1CCAA7D30](*&v13);
      if (v14)
      {
        sub_1CAD4EAA4();
        sub_1CAD4E054();
        if (*(&v25 + 1))
        {
          goto LABEL_14;
        }
      }

      else
      {
        sub_1CAD4EAA4();
        if (*(&v25 + 1))
        {
LABEL_14:
          sub_1CAD4EAA4();
          sub_1CAD4E054();
          goto LABEL_17;
        }
      }

      sub_1CAD4EAA4();
LABEL_17:
      if (*(&v26 + 1) >> 60 == 15)
      {
        sub_1CAD4EAA4();
      }

      else
      {
        sub_1CAD4EAA4();
        sub_1CAD4C034();
      }

      sub_1CAD4EAA4();
      v15 = *(&v28 + 1);
      if (*(&v28 + 1) == 1)
      {
        goto LABEL_3;
      }

      v16 = *(&v27 + 1);
      v17 = *(&v29 + 1);
      v18 = *(&v31 + 1);
      v19 = *(&v32 + 1);
      v20 = *(&v30 + 1);
      sub_1CAD4EAA4();
      MEMORY[0x1CCAA7D10](v16);
      if (v15)
      {
        sub_1CAD4EAA4();
        sub_1CAD4E054();
        if (v17)
        {
          goto LABEL_23;
        }
      }

      else
      {
        sub_1CAD4EAA4();
        if (v17)
        {
LABEL_23:
          sub_1CAD4EAA4();
          sub_1CAD4E054();
          if (v20)
          {
            goto LABEL_24;
          }

          goto LABEL_29;
        }
      }

      sub_1CAD4EAA4();
      if (v20)
      {
LABEL_24:
        sub_1CAD4EAA4();
        sub_1CAD4E054();
        if (v18)
        {
          goto LABEL_25;
        }

        goto LABEL_30;
      }

LABEL_29:
      sub_1CAD4EAA4();
      if (v18)
      {
LABEL_25:
        sub_1CAD4EAA4();
        sub_1CAD4E054();
        if (v19)
        {
          goto LABEL_31;
        }

        goto LABEL_3;
      }

LABEL_30:
      sub_1CAD4EAA4();
      if (v19)
      {
LABEL_31:
        sub_1CAD4EAA4();
        sub_1CAD4E054();
        goto LABEL_4;
      }

LABEL_3:
      sub_1CAD4EAA4();
LABEL_4:
      result = sub_1CABD3C78(&v22);
      v5 += 11;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1CACBBE9C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1CAD4BFF4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v21 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465450);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v19 - v7;
  v9 = type metadata accessor for EventVirtualConferenceJoinMethodModelObject(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a2 + 16);
  result = MEMORY[0x1CCAA7D10](v13);
  if (v13)
  {
    v15 = *(v9 + 20);
    v23 = *(v9 + 24);
    v24 = v15;
    v16 = a2 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v22 = *(v10 + 72);
    v17 = (v4 + 48);
    v19 = (v4 + 8);
    v20 = (v4 + 32);
    do
    {
      sub_1CACBA01C(v16, v12, type metadata accessor for EventVirtualConferenceJoinMethodModelObject);
      if (*(v12 + 1))
      {
        sub_1CAD4EAA4();
        sub_1CAD4E054();
      }

      else
      {
        sub_1CAD4EAA4();
      }

      sub_1CABD4DAC(&v12[v24], v8);
      if ((*v17)(v8, 1, v3) == 1)
      {
        sub_1CAD4EAA4();
      }

      else
      {
        v18 = v21;
        (*v20)(v21, v8, v3);
        sub_1CAD4EAA4();
        sub_1CACBD204(&qword_1EC463C50, MEMORY[0x1E6968FB0]);
        sub_1CAD4DEB4();
        (*v19)(v18, v3);
      }

      sub_1CAD4EAA4();
      result = sub_1CACBA084(v12, type metadata accessor for EventVirtualConferenceJoinMethodModelObject);
      v16 += v22;
      --v13;
    }

    while (v13);
  }

  return result;
}

uint64_t sub_1CACBC1D8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1CAD4BFF4();
  v19 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465450);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v19 - v7;
  v9 = type metadata accessor for EventAttachmentModelObject();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a2 + 16);
  result = MEMORY[0x1CCAA7D10](v13);
  if (v13)
  {
    v15 = *(v9 + 28);
    v16 = a2 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v21 = *(v10 + 72);
    v22 = v15;
    v17 = (v19 + 48);
    v20 = (v19 + 32);
    v18 = (v19 + 8);
    do
    {
      sub_1CACBA01C(v16, v12, type metadata accessor for EventAttachmentModelObject);
      sub_1CAD4E054();
      sub_1CAD4E054();
      sub_1CABD4DAC(&v12[v22], v8);
      if ((*v17)(v8, 1, v3) == 1)
      {
        sub_1CAD4EAA4();
      }

      else
      {
        (*v20)(v5, v8, v3);
        sub_1CAD4EAA4();
        sub_1CACBD204(&qword_1EC463C50, MEMORY[0x1E6968FB0]);
        sub_1CAD4DEB4();
        (*v18)(v5, v3);
      }

      result = sub_1CACBA084(v12, type metadata accessor for EventAttachmentModelObject);
      v16 += v21;
      --v13;
    }

    while (v13);
  }

  return result;
}

uint64_t sub_1CACBC4DC(uint64_t a1, uint64_t a2)
{
  v31 = sub_1CAD4C0F4();
  v3 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v30 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for EventAlarmTrigger();
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for EventAlarmModelObject();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 16);
  result = MEMORY[0x1CCAA7D10](v12);
  if (v12)
  {
    v14 = *(v8 + 20);
    v15 = a2 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v16 = *(v9 + 72);
    v27 = (v3 + 8);
    v28 = (v3 + 32);
    v29 = v7;
    do
    {
      sub_1CACBA01C(v15, v11, type metadata accessor for EventAlarmModelObject);
      sub_1CACBA01C(v11, v7, type metadata accessor for EventAlarmTrigger);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v17 = v30;
        v18 = v7;
        v19 = v16;
        v20 = v14;
        v21 = v5;
        v22 = v31;
        (*v28)(v30, v18, v31);
        MEMORY[0x1CCAA7D10](1);
        sub_1CACBD204(&qword_1EC4623F8, MEMORY[0x1E6969530]);
        sub_1CAD4DEB4();
        v23 = v22;
        v5 = v21;
        v14 = v20;
        v16 = v19;
        v7 = v29;
        (*v27)(v17, v23);
      }

      else
      {
        v24 = *v7;
        MEMORY[0x1CCAA7D10](0);
        if (v24 == 0.0)
        {
          v25 = 0.0;
        }

        else
        {
          v25 = v24;
        }

        MEMORY[0x1CCAA7D30](*&v25);
      }

      sub_1CAD4EAA4();
      result = sub_1CACBA084(v11, type metadata accessor for EventAlarmModelObject);
      v15 += v16;
      --v12;
    }

    while (v12);
  }

  return result;
}

uint64_t _s13CalendarUIKit43EventVirtualConferenceJoinMethodModelObjectV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_1CAD4BFF4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465450);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463DA0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23 - v12;
  v14 = a1[1];
  v15 = a2[1];
  if (v14)
  {
    if (!v15 || (*a1 != *a2 || v14 != v15) && (sub_1CAD4E9E4() & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if (v15)
  {
    goto LABEL_14;
  }

  v24 = type metadata accessor for EventVirtualConferenceJoinMethodModelObject(0);
  v16 = *(v24 + 20);
  v17 = *(v11 + 48);
  sub_1CABD4DAC(a1 + v16, v13);
  sub_1CABD4DAC(a2 + v16, &v13[v17]);
  v18 = *(v5 + 48);
  if (v18(v13, 1, v4) == 1)
  {
    if (v18(&v13[v17], 1, v4) == 1)
    {
      sub_1CAB21B68(v13, &qword_1EC465450);
LABEL_17:
      v19 = *(a1 + *(v24 + 24)) ^ *(a2 + *(v24 + 24)) ^ 1;
      return v19 & 1;
    }

    goto LABEL_13;
  }

  sub_1CABD4DAC(v13, v10);
  if (v18(&v13[v17], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_13:
    sub_1CAB21B68(v13, &qword_1EC463DA0);
    goto LABEL_14;
  }

  (*(v5 + 32))(v7, &v13[v17], v4);
  sub_1CACBD204(&qword_1EC463DA8, MEMORY[0x1E6968FB0]);
  v21 = sub_1CAD4DED4();
  v22 = *(v5 + 8);
  v22(v7, v4);
  v22(v10, v4);
  sub_1CAB21B68(v13, &qword_1EC465450);
  if (v21)
  {
    goto LABEL_17;
  }

LABEL_14:
  v19 = 0;
  return v19 & 1;
}

BOOL _s13CalendarUIKit33EventVirtualConferenceModelObjectV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CAD4BFF4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v45[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465450);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v45[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v45[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463DA0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v45[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v45[-v18];
  v20 = *(a1 + 8);
  v21 = *(a2 + 8);
  if (v20)
  {
    if (!v21 || (*a1 != *a2 || v20 != v21) && (sub_1CAD4E9E4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v21)
  {
    return 0;
  }

  v51 = v5;
  v52 = v4;
  v22 = *(a1 + 16);
  v23 = *(a2 + 16);
  if (v22)
  {
    if (!v23)
    {
      return 0;
    }

    v24 = sub_1CACA7C44(v22, v23);

    if ((v24 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v23)
  {
    return 0;
  }

  v25 = *(a1 + 32);
  v26 = *(a2 + 32);
  if (v25)
  {
    if (!v26 || (*(a1 + 24) != *(a2 + 24) || v25 != v26) && (sub_1CAD4E9E4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v26)
  {
    return 0;
  }

  v27 = *(a1 + 48);
  v28 = *(a2 + 48);
  if (v27)
  {
    if (!v28 || (*(a1 + 40) != *(a2 + 40) || v27 != v28) && (sub_1CAD4E9E4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v28)
  {
    return 0;
  }

  if (*(a1 + 56) != *(a2 + 56) || *(a1 + 64) != *(a2 + 64))
  {
    return 0;
  }

  v48 = type metadata accessor for EventVirtualConferenceModelObject(0);
  v29 = *(v48 + 40);
  v30 = *(v14 + 48);
  sub_1CABD4DAC(a1 + v29, v19);
  v50 = v30;
  sub_1CABD4DAC(a2 + v29, &v30[v19]);
  v32 = v51 + 48;
  v31 = *(v51 + 48);
  v33 = v31(v19, 1, v52);
  v49 = v31;
  if (v33 != 1)
  {
    sub_1CABD4DAC(v19, v13);
    v47 = v32;
    if (v31(&v50[v19], 1, v52) != 1)
    {
      v36 = v52;
      (*(v51 + 32))(v7, &v50[v19], v52);
      sub_1CACBD204(&qword_1EC463DA8, MEMORY[0x1E6968FB0]);
      v46 = sub_1CAD4DED4();
      v50 = *(v51 + 8);
      (v50)(v7, v36);
      v37 = v13;
      v34 = v36;
      (v50)(v37, v36);
      sub_1CAB21B68(v19, &qword_1EC465450);
      if ((v46 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_36;
    }

    (*(v51 + 8))(v13, v52);
LABEL_34:
    v35 = v19;
LABEL_42:
    sub_1CAB21B68(v35, &qword_1EC463DA0);
    return 0;
  }

  v34 = v52;
  if (v31(&v50[v19], 1, v52) != 1)
  {
    goto LABEL_34;
  }

  sub_1CAB21B68(v19, &qword_1EC465450);
LABEL_36:
  v38 = *(v48 + 44);
  v39 = *(v14 + 48);
  sub_1CABD4DAC(a1 + v38, v17);
  sub_1CABD4DAC(a2 + v38, &v17[v39]);
  v40 = v49;
  if (v49(v17, 1, v34) == 1)
  {
    if (v40(&v17[v39], 1, v34) == 1)
    {
      sub_1CAB21B68(v17, &qword_1EC465450);
      return 1;
    }

    goto LABEL_41;
  }

  sub_1CABD4DAC(v17, v11);
  if (v40(&v17[v39], 1, v34) == 1)
  {
    (*(v51 + 8))(v11, v34);
LABEL_41:
    v35 = v17;
    goto LABEL_42;
  }

  v42 = v51;
  (*(v51 + 32))(v7, &v17[v39], v34);
  sub_1CACBD204(&qword_1EC463DA8, MEMORY[0x1E6968FB0]);
  v43 = sub_1CAD4DED4();
  v44 = *(v42 + 8);
  v44(v7, v34);
  v44(v11, v34);
  sub_1CAB21B68(v17, &qword_1EC465450);
  return (v43 & 1) != 0;
}

unint64_t sub_1CACBD1B0()
{
  result = qword_1EC466B28;
  if (!qword_1EC466B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC466B28);
  }

  return result;
}

uint64_t sub_1CACBD204(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CACBD24C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC466B30);
    sub_1CACBD204(a2, type metadata accessor for EventVirtualConferenceJoinMethodModelObject);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1CACBD2E8()
{
  result = qword_1EC466B78;
  if (!qword_1EC466B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC466B78);
  }

  return result;
}

void sub_1CACBD400()
{
  sub_1CABDB2B0();
  if (v0 <= 0x3F)
  {
    sub_1CACBD4C4();
    if (v1 <= 0x3F)
    {
      type metadata accessor for EKVirtualConferenceSource(319);
      if (v2 <= 0x3F)
      {
        sub_1CABDB300();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1CACBD4C4()
{
  if (!qword_1EC461F50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC466B30);
    v0 = sub_1CAD4E4D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC461F50);
    }
  }
}

void sub_1CACBD550()
{
  sub_1CABDB2B0();
  if (v0 <= 0x3F)
  {
    sub_1CABDB300();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1CACBD600()
{
  result = qword_1EC466B98;
  if (!qword_1EC466B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC466B98);
  }

  return result;
}

unint64_t sub_1CACBD658()
{
  result = qword_1EC466BA0;
  if (!qword_1EC466BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC466BA0);
  }

  return result;
}

unint64_t sub_1CACBD6B0()
{
  result = qword_1EC466BA8;
  if (!qword_1EC466BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC466BA8);
  }

  return result;
}

unint64_t sub_1CACBD708()
{
  result = qword_1EC466BB0;
  if (!qword_1EC466BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC466BB0);
  }

  return result;
}

unint64_t sub_1CACBD760()
{
  result = qword_1EC466BB8;
  if (!qword_1EC466BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC466BB8);
  }

  return result;
}

unint64_t sub_1CACBD7B8()
{
  result = qword_1EC466BC0;
  if (!qword_1EC466BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC466BC0);
  }

  return result;
}

uint64_t sub_1CACBD80C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6874654D6E696F6ALL && a2 == 0xEB0000000073646FLL || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001CAD76DD0 == a2 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001CAD76600 == a2 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6261746972577369 && a2 == 0xEA0000000000656CLL || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656372756F73 && a2 == 0xE600000000000000 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001CAD76620 == a2 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001CAD76640 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_1CAD4E9E4();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t type metadata accessor for DateTimeView()
{
  result = qword_1EC466C70;
  if (!qword_1EC466C70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1CACBDB28()
{
  sub_1CACBDD94(319, &qword_1EC463548, type metadata accessor for DateTimeViewModel, MEMORY[0x1E6981A98]);
  if (v0 <= 0x3F)
  {
    sub_1CACBDD94(319, &qword_1EC463100, type metadata accessor for RepeatViewModel, MEMORY[0x1E6981A98]);
    if (v1 <= 0x3F)
    {
      sub_1CACBDD44(319, &qword_1EC463108, MEMORY[0x1E69E6370], MEMORY[0x1E6981940]);
      if (v2 <= 0x3F)
      {
        sub_1CACBDD44(319, &qword_1EC461F88, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1CACBDD44(319, &qword_1EC463E38, MEMORY[0x1E69E6370], MEMORY[0x1E697BD80]);
          if (v4 <= 0x3F)
          {
            sub_1CACBDD44(319, &qword_1EC463558, MEMORY[0x1E69E6370], MEMORY[0x1E6981788]);
            if (v5 <= 0x3F)
            {
              sub_1CACBDD94(319, &qword_1EC462238, MEMORY[0x1E6969AE8], MEMORY[0x1E697DCC8]);
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

void sub_1CACBDD44(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1CACBDD94(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1CACBDE14@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v94 = a1;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466C80);
  MEMORY[0x1EEE9AC00](v93);
  v4 = v78 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466C88);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v78 - v6;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466C90);
  MEMORY[0x1EEE9AC00](v92);
  v86 = v78 - v8;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466C98);
  v88 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v80 = v78 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466CA0);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v85 = v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v84 = v78 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v87 = v78 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v91 = v78 - v17;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466CA8);
  MEMORY[0x1EEE9AC00](v82);
  v19 = v78 - v18;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466CB0);
  MEMORY[0x1EEE9AC00](v81);
  v21 = v78 - v20;
  v22 = type metadata accessor for DateTimeEditor();
  MEMORY[0x1EEE9AC00](v22);
  v24 = v78 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466CB8);
  v26 = MEMORY[0x1EEE9AC00](v25 - 8);
  v83 = v78 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v95 = v78 - v28;
  v29 = type metadata accessor for DateTimeView();
  v30 = v1 + v29[6];
  v31 = *v30;
  v32 = *(v30 + 8);
  LOBYTE(v30) = *(v30 + 16);
  v98 = v31;
  v99 = v32;
  v100 = v30;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4631E0);
  MEMORY[0x1CCAA6D30](v96);
  if (LOBYTE(v96[0]) == 1)
  {
    v78[1] = v5;
    v79 = v7;
    v33 = v1 + v29[10];
    v34 = *v33;
    v35 = *(v33 + 8);
    LOBYTE(v98) = v34;
    v99 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463610);
    sub_1CAD4D994();
    if (LOBYTE(v96[0]) == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463530);
      sub_1CAD4DBF4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4630E0);
      sub_1CAD4DBF4();
      v78[0] = v98;
      v36 = v1 + v29[7];
      v37 = *v36;
      v38 = *(v36 + 8);
      LOBYTE(v36) = *(v36 + 16);
      v98 = v37;
      v99 = v38;
      v100 = v36;
      sub_1CAD4DAE4();
      v39 = v96[0];
      v40 = v96[1];
      v41 = v97;
      type metadata accessor for DateTimeViewModel(0);
      sub_1CACC19DC(&qword_1EC463620, type metadata accessor for DateTimeViewModel);
      sub_1CAD4DC14();
      type metadata accessor for RepeatViewModel();
      sub_1CACC19DC(&qword_1EC463198, type metadata accessor for RepeatViewModel);
      sub_1CAD4DC14();
      v42 = &v24[v22[6]];
      *v42 = v39;
      *(v42 + 1) = v40;
      v42[16] = v41;
      v2 = v1;
      v43 = &v24[v22[7]];
      LOBYTE(v96[0]) = 0;
      sub_1CAD4D984();
      v44 = v99;
      *v43 = v98;
      *(v43 + 1) = v44;
      v45 = &v24[v22[8]];
      LOBYTE(v96[0]) = 0;
      sub_1CAD4D984();
      v46 = v99;
      *v45 = v98;
      *(v45 + 1) = v46;
      v47 = &v24[v22[9]];
      LOBYTE(v96[0]) = 0;
      sub_1CAD4D984();
      v48 = v99;
      *v47 = v98;
      *(v47 + 1) = v48;
      v49 = &v24[v22[10]];
      LOBYTE(v96[0]) = 0;
      sub_1CAD4D984();
      v50 = v99;
      *v49 = v98;
      *(v49 + 1) = v50;
      sub_1CACC1A24(v24, v21, type metadata accessor for DateTimeEditor);
      swift_storeEnumTagMultiPayload();
      sub_1CACC19DC(&qword_1EC466CF0, type metadata accessor for DateTimeEditor);
      sub_1CAB23B0C(&qword_1EC466CF8, &qword_1EC466CA8);
      sub_1CAD4CE24();
      sub_1CACC17D4(v24);
    }

    else
    {
      *v19 = sub_1CAD4CDA4();
      *(v19 + 1) = 0;
      v19[16] = 1;
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466CE8);
      sub_1CACBECB8(v1, &v19[*(v56 + 44)]);
      sub_1CAB23A9C(v19, v21, &qword_1EC466CA8);
      swift_storeEnumTagMultiPayload();
      sub_1CACC19DC(&qword_1EC466CF0, type metadata accessor for DateTimeEditor);
      sub_1CAB23B0C(&qword_1EC466CF8, &qword_1EC466CA8);
      sub_1CAD4CE24();
      sub_1CAB21B68(v19, &qword_1EC466CA8);
    }

    v57 = v91;
    sub_1CAD4C584();
    if (v98 == 1 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463530), sub_1CAD4DBF4(), v58 = *(v98 + OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel__dateIntervalImplicit + 8), v59 = *(v98 + OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel__dateIntervalImplicit + 16), v98 = *(v98 + OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel__dateIntervalImplicit), v99 = v58, v100 = v59, , , MEMORY[0x1CCAA6D30](v96, v89), , , , LOBYTE(v96[0]) == 1))
    {
      v60 = sub_1CAD4D194();
      MEMORY[0x1EEE9AC00](v60);
      v78[-2] = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466D08);
      sub_1CAB23B0C(&qword_1EC466D10, &qword_1EC466D08);
      v61 = v80;
      sub_1CAD4C684();
      v62 = v90;
      (*(v88 + 32))(v57, v61, v90);
      v63 = 0;
    }

    else
    {
      v63 = 1;
      v62 = v90;
    }

    v64 = *(v88 + 56);
    v65 = 1;
    v64(v57, v63, 1, v62);
    sub_1CAD4C584();
    if (v98 == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463530);
      sub_1CAD4DBF4();
      v66 = *(v98 + OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel__dateIntervalImplicit + 8);
      v67 = *(v98 + OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel__dateIntervalImplicit + 16);
      v98 = *(v98 + OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel__dateIntervalImplicit);
      v99 = v66;
      v100 = v67;

      MEMORY[0x1CCAA6D30](v96, v89);

      if (LOBYTE(v96[0]) == 1 && (sub_1CAD4DBF4(), v68 = sub_1CAC5F7C8(), , (v68 & 1) != 0))
      {
        v69 = sub_1CAD4D194();
        MEMORY[0x1EEE9AC00](v69);
        v78[-2] = v2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466D08);
        sub_1CAB23B0C(&qword_1EC466D10, &qword_1EC466D08);
        v70 = v80;
        sub_1CAD4C684();
        v71 = v70;
        v62 = v90;
        (*(v88 + 32))(v87, v71, v90);
        v65 = 0;
      }

      else
      {
        v65 = 1;
        v62 = v90;
      }
    }

    v72 = v87;
    v64(v87, v65, 1, v62);
    v73 = v83;
    sub_1CAB23A9C(v95, v83, &qword_1EC466CB8);
    v74 = v84;
    sub_1CAB23A9C(v57, v84, &qword_1EC466CA0);
    v75 = v85;
    sub_1CAB23A9C(v72, v85, &qword_1EC466CA0);
    v76 = v86;
    sub_1CAB23A9C(v73, v86, &qword_1EC466CB8);
    v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466D00);
    sub_1CAB23A9C(v74, v76 + *(v77 + 48), &qword_1EC466CA0);
    sub_1CAB23A9C(v75, v76 + *(v77 + 64), &qword_1EC466CA0);
    sub_1CAB21B68(v75, &qword_1EC466CA0);
    sub_1CAB21B68(v74, &qword_1EC466CA0);
    sub_1CAB21B68(v73, &qword_1EC466CB8);
    sub_1CAB23A9C(v76, v79, &qword_1EC466C90);
    swift_storeEnumTagMultiPayload();
    sub_1CAB23B0C(&qword_1EC466CC8, &qword_1EC466C90);
    sub_1CACC1658();
    sub_1CAD4CE24();
    sub_1CAB21B68(v76, &qword_1EC466C90);
    sub_1CAB21B68(v72, &qword_1EC466CA0);
    sub_1CAB21B68(v91, &qword_1EC466CA0);
    return sub_1CAB21B68(v95, &qword_1EC466CB8);
  }

  else
  {
    *v4 = sub_1CAD4CDA4();
    *(v4 + 1) = 0x4010000000000000;
    v4[16] = 0;
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466CC0);
    sub_1CACBFFC4(v1, &v4[*(v51 + 44)]);
    v52 = sub_1CAD4D324();
    KeyPath = swift_getKeyPath();
    v54 = &v4[*(v93 + 36)];
    *v54 = KeyPath;
    v54[1] = v52;
    sub_1CAB23A9C(v4, v7, &qword_1EC466C80);
    swift_storeEnumTagMultiPayload();
    sub_1CAB23B0C(&qword_1EC466CC8, &qword_1EC466C90);
    sub_1CACC1658();
    sub_1CAD4CE24();
    return sub_1CAB21B68(v4, &qword_1EC466C80);
  }
}

uint64_t sub_1CACBECB8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v56 = a2;
  v3 = type metadata accessor for DateTimeView();
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466D58);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v51[-v8];
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466D60);
  v53 = *(v55 - 8);
  v10 = MEMORY[0x1EEE9AC00](v55);
  v54 = &v51[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v51[-v12];
  *v9 = sub_1CAD4CC94();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466D68);
  sub_1CACBF214(a1, &v9[*(v14 + 44)]);
  v15 = a1 + *(v4 + 36);
  v16 = *v15;
  v17 = *(v15 + 8);
  LOBYTE(v15) = *(v15 + 16);
  v58 = v16;
  v59 = v17;
  v60 = v15;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4631E0);
  MEMORY[0x1CCAA6D30](&v57);
  LOBYTE(v58) = v57;
  sub_1CACC1A24(a1, &v51[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for DateTimeView);
  v19 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v20 = swift_allocObject();
  sub_1CACC1A8C(&v51[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v20 + v19, type metadata accessor for DateTimeView);
  sub_1CAB23B0C(&qword_1EC466D70, &qword_1EC466D58);
  v21 = v13;
  sub_1CAD4D754();

  sub_1CAB21B68(v9, &qword_1EC466D58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463530);
  sub_1CAD4DBF4();
  v22 = sub_1CAC5EC5C();
  v24 = v23;

  v58 = v22;
  v59 = v24;
  sub_1CABA6054();
  v25 = sub_1CAD4D444();
  v27 = v26;
  v29 = v28;
  sub_1CAD4DBF4();
  v30 = *(v58 + OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel__dateIntervalImplicit + 8);
  v31 = *(v58 + OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel__dateIntervalImplicit + 16);
  v58 = *(v58 + OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel__dateIntervalImplicit);
  v59 = v30;
  v60 = v31;

  MEMORY[0x1CCAA6D30](&v57, v18);

  if (v57 == 1)
  {
    v32 = sub_1CAD4D8B4();
  }

  else
  {
    v32 = sub_1CAD4D8A4();
  }

  v58 = v32;
  v33 = sub_1CAD4D3E4();
  v35 = v34;
  v52 = v36;
  v38 = v37;
  sub_1CABA6128(v25, v27, v29 & 1);

  v39 = v53;
  v40 = v54;
  v41 = *(v53 + 16);
  v42 = v55;
  v41(v54, v21, v55);
  v43 = v56;
  v41(v56, v40, v42);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466D78);
  v45 = &v43[*(v44 + 48)];
  *v45 = 0;
  v45[8] = 1;
  v46 = &v43[*(v44 + 64)];
  *v46 = v33;
  *(v46 + 1) = v35;
  v47 = v52;
  v48 = v52 & 1;
  v46[16] = v52 & 1;
  *(v46 + 3) = v38;
  sub_1CABA4F48(v33, v35, v47 & 1);
  v49 = *(v39 + 8);

  v49(v21, v42);
  sub_1CABA6128(v33, v35, v48);

  return (v49)(v40, v42);
}

uint64_t sub_1CACBF214@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for DateTimeView();
  v35 = *(v4 - 8);
  v5 = *(v35 + 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463258);
  v36 = *(v6 - 8);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v38 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - v9;
  v37 = sub_1CAD4D8F4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463530);
  sub_1CAD4DBF4();
  v11 = *(v41 + OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel__dateIntervalImplicit + 8);
  v12 = *(v41 + OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel__dateIntervalImplicit + 16);
  v41 = *(v41 + OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel__dateIntervalImplicit);
  v42 = v11;
  LOBYTE(v43) = v12;

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4631E0);
  MEMORY[0x1CCAA6D30](&v40, v13);

  if (v40 == 1)
  {
    v14 = sub_1CAD4D8B4();
  }

  else
  {
    v14 = sub_1CAD4D8A4();
  }

  v34 = v14;
  sub_1CAD4DC94();
  sub_1CAD4C744();
  v32 = v43;
  v33 = v41;
  v30 = v46;
  v31 = v45;
  LOBYTE(v40) = v42;
  v39 = v44;
  sub_1CACC1A24(a1, &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DateTimeView);
  v15 = (v35[80] + 16) & ~v35[80];
  v16 = swift_allocObject();
  v17 = sub_1CACC1A8C(&v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for DateTimeView);
  MEMORY[0x1EEE9AC00](v17);
  *(&v29 - 2) = a1;
  sub_1CAD4D9E4();
  v18 = v40;
  LOBYTE(v15) = v39;
  v19 = v36;
  v20 = *(v36 + 16);
  v21 = v38;
  v20(v38, v10, v6);
  v35 = v10;
  v22 = v33;
  v23 = v34;
  *a2 = v37;
  *(a2 + 8) = v23;
  *(a2 + 16) = v22;
  *(a2 + 24) = v18;
  v24 = v31;
  *(a2 + 32) = v32;
  *(a2 + 40) = v15;
  v25 = v30;
  *(a2 + 48) = v24;
  *(a2 + 56) = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466D80);
  v20((a2 + *(v26 + 48)), v21, v6);
  v27 = *(v19 + 8);

  v27(v35, v6);
  v27(v21, v6);
}

uint64_t sub_1CACBF634()
{
  type metadata accessor for DateTimeView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463610);
  result = sub_1CAD4D994();
  if ((v1 & 1) == 0)
  {
    return sub_1CAD4D9A4();
  }

  return result;
}

uint64_t sub_1CACBF6D0@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463530);
  sub_1CAD4DBF4();
  v2 = sub_1CAC5EA14();
  v4 = v3;

  v23 = v2;
  v24 = v4;
  sub_1CABA6054();
  v5 = sub_1CAD4D444();
  v7 = v6;
  v9 = v8;
  sub_1CAD4DBF4();
  v10 = *(v2 + OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel__dateIntervalImplicit + 8);
  v11 = *(v2 + OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel__dateIntervalImplicit + 16);
  v23 = *(v2 + OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel__dateIntervalImplicit);
  v24 = v10;
  v25 = v11;

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4631E0);
  MEMORY[0x1CCAA6D30](&v22, v12);

  if (v22 == 1)
  {
    v13 = sub_1CAD4D8B4();
  }

  else
  {
    v13 = sub_1CAD4D8A4();
  }

  v23 = v13;
  v14 = sub_1CAD4D3E4();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  sub_1CABA6128(v5, v7, v9 & 1);

  *a1 = v14;
  *(a1 + 8) = v16;
  *(a1 + 16) = v18 & 1;
  *(a1 + 24) = v20;
  return result;
}

void sub_1CACBF884(uint64_t a1, _BYTE *a2)
{
  if (*a2 == 1)
  {
    type metadata accessor for DateTimeView();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463610);
    sub_1CAD4D9A4();
  }
}

uint64_t sub_1CACBF908@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for DateTimeView();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  *a3 = sub_1CAD4CC94();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466D18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463530);
  v9 = sub_1CAD4DBF4();
  v10 = a2(v9);

  v14[1] = v10;
  swift_getKeyPath();
  sub_1CACC1A24(a1, v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DateTimeView);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  sub_1CACC1A8C(v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for DateTimeView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466D20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466D28);
  sub_1CAB23B0C(&qword_1EC466D30, &qword_1EC466D20);
  sub_1CACC19DC(&qword_1EC466D38, type metadata accessor for DateTimeSuggestion);
  sub_1CACC1864();
  return sub_1CAD4DB64();
}

uint64_t sub_1CACBFB74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v32 = a4;
  v33 = a5;
  v30[0] = a2;
  v30[1] = a3;
  v36 = a6;
  v7 = sub_1CAD4CD74();
  v8 = *(v7 - 8);
  v34 = v7;
  v35 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v31 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DateTimeSuggestion(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = type metadata accessor for DateTimeView();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466D48);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = v30 - v19;
  sub_1CACC1A24(v30[0], v16, type metadata accessor for DateTimeView);
  sub_1CACC1A24(a1, v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DateTimeSuggestion);
  v21 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v22 = (v15 + *(v11 + 80) + v21) & ~*(v11 + 80);
  v23 = swift_allocObject();
  sub_1CACC1A8C(v16, v23 + v21, type metadata accessor for DateTimeView);
  sub_1CACC1A8C(v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22, type metadata accessor for DateTimeSuggestion);
  v37 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4669C0);
  sub_1CAB23B0C(&qword_1EC4669C8, &qword_1EC4669C0);
  sub_1CAD4D9E4();
  v24 = v31;
  sub_1CAD4CD64();
  sub_1CAB23B0C(&qword_1EC466D50, &qword_1EC466D48);
  sub_1CACC19DC(&qword_1EC463280, MEMORY[0x1E697C548]);
  v25 = v36;
  v26 = v34;
  sub_1CAD4D4E4();
  (*(v35 + 8))(v24, v26);
  (*(v18 + 8))(v20, v17);
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466D28);
  v29 = v25 + *(result + 36);
  *v29 = KeyPath;
  *(v29 + 8) = 1;
  *(v29 + 16) = 0;
  return result;
}

uint64_t sub_1CACBFFC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466D88);
  v51 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v46 = v45 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466D90);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v54 = v45 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463530);
  sub_1CAD4DBF4();
  v11 = sub_1CAC5EA14();
  v13 = v12;

  v56 = v11;
  v57 = v13;
  sub_1CABA6054();
  v14 = sub_1CAD4D444();
  v52 = v15;
  v53 = v14;
  v17 = v16;
  v55 = v18;
  sub_1CAD4DBF4();
  v19 = sub_1CAC5EC5C();
  v21 = v20;

  v56 = v19;
  v57 = v21;
  v22 = sub_1CAD4D444();
  v48 = v23;
  v49 = v22;
  v47 = v24;
  v50 = v25;
  v26 = type metadata accessor for DateTimeView();
  if (*(a1 + *(v26 + 32) + 8))
  {
    v45[1] = v45;
    v27 = MEMORY[0x1EEE9AC00](v26);
    v45[-2] = a1;
    MEMORY[0x1EEE9AC00](v27);
    v45[-2] = v29;
    v45[-1] = v28;
    v45[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466DA0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466DA8);
    sub_1CACC2070();
    v30 = v17;
    v31 = v54;
    sub_1CAB23B0C(&qword_1EC466DB8, &qword_1EC466DA8);
    v32 = v46;
    sub_1CAD4D384();
    v33 = v51;
    v34 = v31;
    v17 = v30;
    (*(v51 + 32))(v34, v32, v4);
    v35 = 0;
    v36 = v33;
  }

  else
  {
    v35 = 1;
    v36 = v51;
  }

  v37 = v54;
  (*(v36 + 56))(v54, v35, 1, v4);
  LOBYTE(v56) = v17 & 1;
  sub_1CAB23A9C(v37, v9, &qword_1EC466D90);
  v39 = v52;
  v38 = v53;
  *a2 = v53;
  *(a2 + 8) = v39;
  *(a2 + 16) = v17 & 1;
  v40 = v48;
  v41 = v49;
  *(a2 + 24) = v55;
  *(a2 + 32) = v41;
  *(a2 + 40) = v40;
  v42 = v47 & 1;
  *(a2 + 48) = v47 & 1;
  *(a2 + 56) = v50;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466D98);
  sub_1CAB23A9C(v9, a2 + *(v43 + 64), &qword_1EC466D90);
  sub_1CABA4F48(v38, v39, v17 & 1);

  sub_1CABA4F48(v41, v40, v42);

  sub_1CAB21B68(v37, &qword_1EC466D90);
  sub_1CAB21B68(v9, &qword_1EC466D90);
  sub_1CABA6128(v41, v40, v42);

  sub_1CABA6128(v38, v39, v56);
}

uint64_t sub_1CACC046C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = type metadata accessor for DateTimeView();
  v41 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v42 = v4;
  v43 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466DC0);
  v5 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v44 = &v40 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466DC8);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v45 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v40 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v40 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v40 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463530);
  v47 = a1;
  sub_1CAD4DBF4();
  v18 = v49;
  swift_getKeyPath();
  v49 = v18;
  sub_1CACC19DC(&qword_1EC463620, type metadata accessor for DateTimeViewModel);
  sub_1CAD4C424();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = 1;
    v21 = [Strong shouldShowNextOccurrenceOfEvent:*(v18 + OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel_event) forward:1];
    swift_unknownObjectRelease();

    if (v21)
    {
      v22 = v43;
      sub_1CACC1A24(v47, v43, type metadata accessor for DateTimeView);
      v23 = (*(v41 + 80) + 16) & ~*(v41 + 80);
      v24 = swift_allocObject();
      sub_1CACC1A8C(v22, v24 + v23, type metadata accessor for DateTimeView);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466DD8);
      sub_1CAB23B0C(&qword_1EC466DE0, &qword_1EC466DD8);
      v25 = v44;
      sub_1CAD4D9E4();
      (*(v5 + 32))(v17, v25, v48);
      v20 = 0;
    }
  }

  else
  {

    v20 = 1;
  }

  v40 = v5;
  v26 = *(v5 + 56);
  v27 = v48;
  v26(v17, v20, 1, v48);
  sub_1CAD4DBF4();
  v28 = v49;
  swift_getKeyPath();
  v49 = v28;
  sub_1CAD4C424();

  v29 = swift_unknownObjectWeakLoadStrong();
  if (!v29)
  {

    goto LABEL_9;
  }

  v30 = [v29 shouldShowNextOccurrenceOfEvent:*(v28 + OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel_event) forward:0];
  swift_unknownObjectRelease();

  if (!v30)
  {
LABEL_9:
    v35 = 1;
    goto LABEL_10;
  }

  v31 = v43;
  sub_1CACC1A24(v47, v43, type metadata accessor for DateTimeView);
  v32 = (*(v41 + 80) + 16) & ~*(v41 + 80);
  v33 = swift_allocObject();
  sub_1CACC1A8C(v31, v33 + v32, type metadata accessor for DateTimeView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466DD8);
  v27 = v48;
  sub_1CAB23B0C(&qword_1EC466DE0, &qword_1EC466DD8);
  v34 = v44;
  sub_1CAD4D9E4();
  (*(v40 + 32))(v15, v34, v27);
  v35 = 0;
LABEL_10:
  v26(v15, v35, 1, v27);
  sub_1CAB23A9C(v17, v12, &qword_1EC466DC8);
  v36 = v45;
  sub_1CAB23A9C(v15, v45, &qword_1EC466DC8);
  v37 = v46;
  sub_1CAB23A9C(v12, v46, &qword_1EC466DC8);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466DD0);
  sub_1CAB23A9C(v36, v37 + *(v38 + 48), &qword_1EC466DC8);
  sub_1CAB21B68(v15, &qword_1EC466DC8);
  sub_1CAB21B68(v17, &qword_1EC466DC8);
  sub_1CAB21B68(v36, &qword_1EC466DC8);
  return sub_1CAB21B68(v12, &qword_1EC466DC8);
}

uint64_t sub_1CACC0B54()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1CAD4DEE4();
  sub_1CAD4C184();
  sub_1CAD4DFC4();
  sub_1CABA6054();
  return sub_1CAD4D974();
}

uint64_t sub_1CACC0C98(uint64_t a1, SEL *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463530);
  sub_1CAD4DBF4();
  swift_getKeyPath();
  sub_1CACC19DC(&qword_1EC463620, type metadata accessor for DateTimeViewModel);
  sub_1CAD4C424();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong *a2];
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1CACC0D88()
{
  v0 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1CAD4DEE4();
  sub_1CAD4C184();
  sub_1CAD4DFC4();
  sub_1CABA6054();
  return sub_1CAD4D974();
}

uint64_t sub_1CACC0ECC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1CAD4CC94();
  v3 = sub_1CAD4D8F4();
  sub_1CABA6054();

  v4 = sub_1CAD4D444();
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v8 &= 1u;
  sub_1CABA4F48(v4, v6, v8);

  sub_1CABA6128(v4, v6, v8);

  v11 = sub_1CAD4D8B4();
  result = swift_getKeyPath();
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 40) = v6;
  *(a1 + 48) = v8;
  *(a1 + 56) = v10;
  *(a1 + 64) = result;
  *(a1 + 72) = v11;
  return result;
}

uint64_t sub_1CACC0FF4()
{
  sub_1CAD4DCD4();
  sub_1CAD4C834();
}

uint64_t sub_1CACC1060(uint64_t a1, uint64_t a2)
{
  v21[1] = a1;
  v22 = a2;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4635E8);
  MEMORY[0x1EEE9AC00](v23);
  v4 = v21 - v3;
  v5 = sub_1CAD4BC94();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v21 - v10;
  v21[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463530);
  sub_1CAD4DBF4();
  v12 = v24;
  v13 = *(v6 + 16);
  v13(v11, a2, v5);
  sub_1CAB23A9C(v12 + OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel__dateInterval, v4, &qword_1EC4635E8);
  v13(v9, v11, v5);
  sub_1CAD4DAC4();

  sub_1CAB21B68(v4, &qword_1EC4635E8);
  (*(v6 + 8))(v11, v5);
  sub_1CAD4DBF4();
  v14 = v24;
  v15 = *(v22 + *(type metadata accessor for DateTimeSuggestion(0) + 20));
  v16 = *(v14 + OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel__allDay + 8);
  v17 = *(v14 + OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel__allDay + 16);
  v24 = *(v14 + OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel__allDay);
  v25 = v16;
  v26 = v17;
  v27 = v15;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4631E0);
  sub_1CAD4DAC4();

  sub_1CAD4DBF4();
  v18 = *(v24 + OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel__dateIntervalImplicit + 8);
  v19 = *(v24 + OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel__dateIntervalImplicit + 16);
  v24 = *(v24 + OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel__dateIntervalImplicit);
  v25 = v18;
  v26 = v19;
  v27 = 0;

  sub_1CAD4DAC4();
}

__n128 sub_1CACC1374@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_1CAD4CD94();
  sub_1CACC1404(v5);
  *&v4[55] = v5[3];
  *&v4[39] = v5[2];
  *&v4[23] = v5[1];
  *&v4[7] = v5[0];
  *(a1 + 33) = *&v4[16];
  result = *&v4[32];
  *(a1 + 49) = *&v4[32];
  *(a1 + 65) = *&v4[48];
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 80) = *&v4[63];
  *(a1 + 17) = *v4;
  return result;
}

uint64_t sub_1CACC1404@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for DateTimeSuggestion(0);
  sub_1CABA6054();

  v2 = sub_1CAD4D444();
  v4 = v3;
  v6 = v5;
  sub_1CAD4D324();
  v7 = sub_1CAD4D424();
  v9 = v8;
  v11 = v10;

  sub_1CABA6128(v2, v4, v6 & 1);

  sub_1CAD4D2A4();
  v12 = sub_1CAD4D394();
  v29 = v13;
  v30 = v12;
  v28 = v14;
  v31 = v15;
  sub_1CABA6128(v7, v9, v11 & 1);

  v16 = sub_1CAD4D444();
  v18 = v17;
  v20 = v19;
  sub_1CAD4D304();
  v21 = sub_1CAD4D424();
  v23 = v22;
  LOBYTE(v4) = v24;
  v26 = v25;

  sub_1CABA6128(v16, v18, v20 & 1);

  *a1 = v30;
  *(a1 + 8) = v29;
  *(a1 + 16) = v28 & 1;
  *(a1 + 24) = v31;
  *(a1 + 32) = v21;
  *(a1 + 40) = v23;
  *(a1 + 48) = v4 & 1;
  *(a1 + 56) = v26;
  sub_1CABA4F48(v30, v29, v28 & 1);

  sub_1CABA4F48(v21, v23, v4 & 1);

  sub_1CABA6128(v21, v23, v4 & 1);

  sub_1CABA6128(v30, v29, v28 & 1);
}

unint64_t sub_1CACC1658()
{
  result = qword_1EC466CD0;
  if (!qword_1EC466CD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC466C80);
    sub_1CAB23B0C(&qword_1EC466CD8, &qword_1EC466CE0);
    sub_1CAB23B0C(&qword_1EC462030, &qword_1EC464008);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC466CD0);
  }

  return result;
}

uint64_t sub_1CACC17D4(uint64_t a1)
{
  v2 = type metadata accessor for DateTimeEditor();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1CACC1864()
{
  result = qword_1EC466D40;
  if (!qword_1EC466D40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC466D28);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC466D48);
    sub_1CAD4CD74();
    sub_1CAB23B0C(&qword_1EC466D50, &qword_1EC466D48);
    sub_1CACC19DC(&qword_1EC463280, MEMORY[0x1E697C548]);
    swift_getOpaqueTypeConformance2();
    sub_1CAB23B0C(&qword_1EC462020, &qword_1EC4644A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC466D40);
  }

  return result;
}

uint64_t sub_1CACC19DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CACC1A24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CACC1A8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_6Tm()
{
  v1 = (type metadata accessor for DateTimeView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(type metadata accessor for DateTimeSuggestion(0) - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463530);
  (*(*(v8 - 8) + 8))(v0 + v3, v8);
  v9 = v1[7];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4630E0);
  (*(*(v10 - 8) + 8))(v0 + v3 + v9, v10);

  v11 = v1[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464238);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1CAD4C374();
    (*(*(v12 - 8) + 8))(v0 + v3 + v11, v12);
  }

  else
  {
  }

  v13 = v2 | v6;
  v14 = (v3 + v4 + v6) & ~v6;
  v15 = sub_1CAD4BC94();
  (*(*(v15 - 8) + 8))(v0 + v14, v15);

  return MEMORY[0x1EEE6BDD0](v0, v14 + v7, v13 | 7);
}

uint64_t sub_1CACC1EAC()
{
  type metadata accessor for DateTimeView();
  type metadata accessor for DateTimeSuggestion(0);

  return sub_1CACC0FF4();
}

void sub_1CACC1F78(uint64_t a1, _BYTE *a2)
{
  type metadata accessor for DateTimeView();

  sub_1CACBF884(a1, a2);
}

uint64_t sub_1CACC1FF8()
{
  type metadata accessor for DateTimeView();

  return sub_1CACBF634();
}

unint64_t sub_1CACC2070()
{
  result = qword_1EC466DB0;
  if (!qword_1EC466DB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC466DA0);
    sub_1CAB23B0C(&qword_1EC466598, &qword_1EC4665A0);
    sub_1CAB23B0C(&qword_1EC462028, &qword_1EC4644E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC466DB0);
  }

  return result;
}

uint64_t objectdestroyTm_10()
{
  v1 = (type metadata accessor for DateTimeView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463530);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = v1[7];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4630E0);
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  v8 = v1[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464238);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1CAD4C374();
    (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

unint64_t sub_1CACC23D4()
{
  result = qword_1EC466DE8;
  if (!qword_1EC466DE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC466DF0);
    sub_1CAB23B0C(&qword_1EC466CC8, &qword_1EC466C90);
    sub_1CACC1658();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC466DE8);
  }

  return result;
}

uint64_t sub_1CACC25F4(uint64_t *a1, int a2)
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

uint64_t sub_1CACC263C(uint64_t result, int a2, int a3)
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

id sub_1CACC268C(void *a1, void *a2)
{
  v4 = sub_1CACC2990(a1, a2);
  if (v4)
  {
    v5 = v4;
    v6 = [objc_opt_self() viewControllerForContact_];
  }

  else
  {
    v5 = sub_1CACC2DF4(a1);
    v6 = [objc_opt_self() viewControllerForUnknownContact_];
  }

  v7 = v6;
  [v7 setContactStore_];
  [v7 setShouldShowLinkedContacts_];
  [v7 setAllowsEditing_];

  return v7;
}

id sub_1CACC2990(void *a1, void *a2)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v4 = [a1 emailAddress];
  if (v4)
  {
    v5 = v4;
    v6 = [objc_opt_self() predicateForContactsMatchingEmailAddress_];
    goto LABEL_5;
  }

  result = [a1 phoneNumber];
  if (result)
  {
    v8 = result;
    v5 = [objc_allocWithZone(MEMORY[0x1E695CF50]) initWithStringValue_];

    v6 = [objc_opt_self() predicateForContactsMatchingPhoneNumber_];
LABEL_5:
    v9 = v6;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464E60);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1CAD5E2D0;
    v11 = objc_opt_self();
    v12 = v9;
    *(v10 + 32) = [v11 descriptorForRequiredKeys];
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC465AD0);
    v13 = sub_1CAD4E1F4();

    v20[0] = 0;
    v14 = [a2 unifiedContactsMatchingPredicate:v12 keysToFetch:v13 error:v20];

    v15 = v20[0];
    if (v14)
    {
      sub_1CACC31FC();
      v16 = sub_1CAD4E214();
      v17 = v15;

      if (v16 >> 62)
      {
        if (sub_1CAD4E604())
        {
          goto LABEL_8;
        }
      }

      else if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_8:
        if ((v16 & 0xC000000000000001) != 0)
        {
          v18 = MEMORY[0x1CCAA7940](0, v16);
        }

        else
        {
          if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
          }

          v18 = *(v16 + 32);
        }

        v14 = v18;

        return v14;
      }

      return 0;
    }

    else
    {
      v19 = v20[0];
      sub_1CAD4BF54();

      swift_willThrow();
    }

    return v14;
  }

  __break(1u);
  return result;
}

id sub_1CACC2C48()
{
  v1 = sub_1CACC268C(*v0, v0[1]);
  v2 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) initWithRootViewController_];

  [v2 setNavigationBarHidden:1 animated:0];
  return v2;
}

uint64_t sub_1CACC2CB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CACC2DA0();

  return MEMORY[0x1EEDDB780](a1, a2, a3, v6);
}

uint64_t sub_1CACC2D14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CACC2DA0();

  return MEMORY[0x1EEDDB738](a1, a2, a3, v6);
}

void sub_1CACC2D78()
{
  sub_1CACC2DA0();
  sub_1CAD4D144();
  __break(1u);
}

unint64_t sub_1CACC2DA0()
{
  result = qword_1EC466E08;
  if (!qword_1EC466E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC466E08);
  }

  return result;
}

id sub_1CACC2DF4(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E695CF18]) init];
  v3 = [a1 emailAddress];
  if (v3)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464E60);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1CAD5E2D0;
    sub_1CAD4DF94();
    v6 = objc_allocWithZone(MEMORY[0x1E695CEE0]);
    v7 = v4;
    v8 = sub_1CAD4DF54();

    v9 = [v6 initWithLabel:v8 value:v7];

    *(v5 + 32) = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC466E20);
    v10 = sub_1CAD4E1F4();

    [v2 setEmailAddresses_];
  }

  v11 = [a1 phoneNumber];
  if (v11)
  {
    v12 = v11;
    v13 = [objc_allocWithZone(MEMORY[0x1E695CF50]) initWithStringValue_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464E60);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1CAD5E2D0;
    sub_1CAD4DF94();
    v15 = objc_allocWithZone(MEMORY[0x1E695CEE0]);
    v16 = v13;
    v17 = sub_1CAD4DF54();

    v18 = [v15 initWithLabel:v17 value:v16];

    *(v14 + 32) = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC466E20);
    v19 = sub_1CAD4E1F4();

    [v2 setPhoneNumbers_];
  }

  v20 = [a1 firstName];
  if (v20)
  {
    v21 = v20;
    sub_1CAD4DF94();
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  v24 = [a1 lastName];
  if (v24)
  {
    v25 = v24;
    sub_1CAD4DF94();
    v27 = v26;

    if (!v23)
    {
      if (v27)
      {
        v28 = 1;
        goto LABEL_17;
      }

LABEL_21:
      v32 = [a1 name];
      if (v32)
      {
        v33 = v32;
        sub_1CAD4DF94();
      }

      v34 = sub_1CAD4DF54();

      [v2 setGivenName_];

      return v2;
    }
  }

  else
  {
    if (!v23)
    {
      goto LABEL_21;
    }

    v27 = 0;
  }

  result = [a1 firstName];
  if (!result)
  {
    __break(1u);
    goto LABEL_26;
  }

  v30 = result;
  [v2 setGivenName_];

  if (!v27)
  {
    goto LABEL_20;
  }

  v28 = 0;
LABEL_17:
  result = [a1 lastName];
  if (result)
  {
    v31 = result;
    [v2 setFamilyName_];

    if (v28)
    {

      return v2;
    }

LABEL_20:

    return v2;
  }

LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_1CACC31FC()
{
  result = qword_1EC466E30;
  if (!qword_1EC466E30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC466E30);
  }

  return result;
}

uint64_t sub_1CACC3424(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v13 = MEMORY[0x1E69E7CC0];
    sub_1CACB9DD4(0, v1, 0);
    v2 = v13;
    v4 = (a1 + 32);
    do
    {
      v5 = *v4;
      v13 = v2;
      v7 = *(v2 + 16);
      v6 = *(v2 + 24);
      if (v7 >= v6 >> 1)
      {
        v9 = v5;
        sub_1CACB9DD4((v6 > 1), v7 + 1, 1);
        v5 = v9;
        v2 = v13;
      }

      v11 = &type metadata for EventRecurrenceDayOfWeekModelObject;
      v12 = &protocol witness table for EventRecurrenceDayOfWeekModelObject;
      v10 = v5;
      *(v2 + 16) = v7 + 1;
      sub_1CAB284E0(&v10, v2 + 40 * v7 + 32);
      ++v4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1CACC3518(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v6 = MEMORY[0x1E69E7CC0];
    sub_1CAD4E754();
    v4 = a1 + 32;
    do
    {
      sub_1CABD3CDC(v4, &v5);
      sub_1CABD4070(0, &qword_1EC466FE8);
      swift_dynamicCast();
      sub_1CAD4E734();
      sub_1CAD4E764();
      sub_1CAD4E774();
      sub_1CAD4E744();
      v4 += 32;
      --v2;
    }

    while (v2);
    return v6;
  }

  return result;
}

uint64_t sub_1CACC3610(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v9 = MEMORY[0x1E69E7CC0];
    sub_1CACB9E58(0, v1, 0);
    v2 = v9;
    v4 = a1 + 40;
    do
    {

      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1CACB9E58((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      sub_1CABD3D54(&v8, (v2 + 32 * v6 + 32));
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1CACC3710(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v5 = MEMORY[0x1E69E7CC0];
    sub_1CAD4E754();
    v4 = a1 + 32;
    do
    {
      v4 += 8;
      sub_1CAD4E364();
      sub_1CAD4E734();
      sub_1CAD4E764();
      sub_1CAD4E774();
      sub_1CAD4E744();
      --v2;
    }

    while (v2);
    return v5;
  }

  return result;
}

char *sub_1CACC37B8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1CAD4E604();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x1E69E7CC0];
  result = sub_1CACB9E58(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x1CCAA7940](i, a1);
        sub_1CABD4070(0, &qword_1EC466FC8);
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_1CACB9E58((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        sub_1CABD3D54(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_1CABD4070(0, &qword_1EC466FC8);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_1CACB9E58((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        sub_1CABD3D54(v12, (v3 + 32 * v11 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

id EKRecurrenceRule.init(recurrenceRuleModelObject:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC465A70);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v41 - v3;
  v5 = sub_1CAD4C0F4();
  v42 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC463290);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v41 - v9;
  v11 = type metadata accessor for EventRecurrenceEndModelObject(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CAB23A9C(a1, v10, &unk_1EC463290);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1CAB21B68(v10, &unk_1EC463290);
    v15 = 0;
  }

  else
  {
    sub_1CACC4050(v10, v14);
    sub_1CAB23A9C(v14, v4, &unk_1EC465A70);
    v16 = v42;
    if ((*(v42 + 48))(v4, 1, v5) == 1)
    {
      sub_1CAB21B68(v4, &unk_1EC465A70);
      v15 = [objc_allocWithZone(MEMORY[0x1E6966AB8]) initWithOccurrenceCount_];
    }

    else
    {
      (*(v16 + 32))(v7, v4, v5);
      v17 = objc_allocWithZone(MEMORY[0x1E6966AB8]);
      v18 = sub_1CAD4C084();
      v15 = [v17 initWithEndDate_];

      (*(v16 + 8))(v7, v5);
    }

    sub_1CABA6514(v14, type metadata accessor for EventRecurrenceEndModelObject);
  }

  v19 = type metadata accessor for EventRecurrenceRuleModelObject(0);
  v20 = *(a1 + v19[5]);
  v41 = *(a1 + v19[6]);
  v42 = v20;
  v21 = *(a1 + v19[8]);
  if (v21)
  {
    v22 = *(v21 + 16);
    if (v22)
    {
      v43 = MEMORY[0x1E69E7CC0];
      sub_1CAD4E754();
      v23 = objc_opt_self();
      v24 = (v21 + 40);
      do
      {
        v25 = [v23 dayOfWeek:*(v24 - 1) weekNumber:{*v24, v41}];
        sub_1CAD4E734();
        sub_1CAD4E764();
        sub_1CAD4E774();
        sub_1CAD4E744();
        v24 += 2;
        --v22;
      }

      while (v22);
    }

    sub_1CABD4070(0, &qword_1EC466668);
    v26 = sub_1CAD4E1F4();
  }

  else
  {
    v26 = 0;
  }

  v27 = *(a1 + v19[9]);
  if (v27)
  {
    sub_1CACC3710(v27);
    sub_1CABD4070(0, &qword_1EC463960);
    v28 = sub_1CAD4E1F4();
  }

  else
  {
    v28 = 0;
  }

  v29 = *(a1 + v19[12]);
  if (v29)
  {
    sub_1CACC3710(v29);
    sub_1CABD4070(0, &qword_1EC463960);
    v30 = sub_1CAD4E1F4();
  }

  else
  {
    v30 = 0;
  }

  v31 = *(a1 + v19[11]);
  if (v31)
  {
    sub_1CACC3710(v31);
    sub_1CABD4070(0, &qword_1EC463960);
    v32 = sub_1CAD4E1F4();
  }

  else
  {
    v32 = 0;
  }

  v33 = *(a1 + v19[10]);
  if (v33)
  {
    sub_1CACC3710(v33);
    sub_1CABD4070(0, &qword_1EC463960);
    v34 = sub_1CAD4E1F4();
  }

  else
  {
    v34 = 0;
  }

  v35 = *(a1 + v19[13]);
  if (v35)
  {
    sub_1CACC3710(v35);
    sub_1CABD4070(0, &qword_1EC463960);
    v36 = sub_1CAD4E1F4();
  }

  else
  {
    v36 = 0;
  }

  v37 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v38 = [v37 initRecurrenceWithFrequency:v42 interval:v41 daysOfTheWeek:v26 daysOfTheMonth:v28 monthsOfTheYear:v30 weeksOfTheYear:v32 daysOfTheYear:v34 setPositions:v36 end:v15];

  v39 = a1 + v19[7];
  if ((*(v39 + 8) & 1) == 0)
  {
    [v38 setFirstDayOfTheWeek_];
  }

  sub_1CABA6514(a1, type metadata accessor for EventRecurrenceRuleModelObject);
  return v38;
}

uint64_t sub_1CACC4050(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventRecurrenceEndModelObject(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t EventRecurrenceRuleModelObject.init(recurrenceEnd:frequency:interval:firstDayOfTheWeek:daysOfTheWeek:daysOfTheMonth:daysOfTheYear:weeksOfTheYear:monthsOfTheYear:setPositions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v14 = type metadata accessor for EventRecurrenceEndModelObject(0);
  (*(*(v14 - 8) + 56))(a9, 1, 1, v14);
  v15 = type metadata accessor for EventRecurrenceRuleModelObject(0);
  v16 = v15[8];
  v17 = a9 + v15[7];
  v18 = v15[9];
  v19 = v15[10];
  v20 = v15[11];
  v21 = v15[12];
  v22 = v15[13];
  result = sub_1CABC6AC8(a1, a9, &unk_1EC463290);
  *(a9 + v15[5]) = a2;
  *(a9 + v15[6]) = a3;
  *v17 = a4;
  *(v17 + 8) = a5 & 1;
  *(a9 + v16) = a6;
  *(a9 + v18) = a7;
  *(a9 + v19) = a8;
  *(a9 + v20) = a10;
  *(a9 + v21) = a11;
  *(a9 + v22) = a12;
  return result;
}

uint64_t EventRecurrenceEndModelObject.init(endDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1CAD4C0F4();
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  sub_1CABC6AC8(a1, a2, &unk_1EC465A70);
  result = type metadata accessor for EventRecurrenceEndModelObject(0);
  *(a2 + *(result + 20)) = 0;
  return result;
}

uint64_t EventRecurrenceEndModelObject.init(occurrenceCount:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1CAD4C0F4();
  v5 = *(*(v4 - 8) + 56);
  v5(a2, 1, 1, v4);
  sub_1CAB21B68(a2, &unk_1EC465A70);
  v5(a2, 1, 1, v4);
  result = type metadata accessor for EventRecurrenceEndModelObject(0);
  *(a2 + *(result + 20)) = a1;
  return result;
}

BOOL EventRecurrenceRuleModelObject.isCustom.getter()
{
  v1 = v0;
  v2 = type metadata accessor for EventRecurrenceRuleModelObject(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465D50);
  v6 = *(v3 + 72);
  v7 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1CAD63290;
  v9 = v8 + v7;
  if (qword_1EC462F30 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v2, qword_1EC466E40);
  sub_1CACCA1A8(v10, v9, type metadata accessor for EventRecurrenceRuleModelObject);
  if (qword_1EC462F38 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v2, qword_1EC466E58);
  sub_1CACCA1A8(v11, v9 + v6, type metadata accessor for EventRecurrenceRuleModelObject);
  if (qword_1EC462F40 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v2, qword_1EC466E70);
  sub_1CACCA1A8(v12, v9 + 2 * v6, type metadata accessor for EventRecurrenceRuleModelObject);
  v13 = 3 * v6;
  if (qword_1EC462F48 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v2, qword_1EC466E88);
  sub_1CACCA1A8(v14, v9 + v13, type metadata accessor for EventRecurrenceRuleModelObject);
  if (qword_1EC462F50 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v2, qword_1EC466EA0);
  sub_1CACCA1A8(v15, v9 + 4 * v6, type metadata accessor for EventRecurrenceRuleModelObject);
  sub_1CACCA1A8(v1, v5, type metadata accessor for EventRecurrenceRuleModelObject);
  sub_1CAB21B68(v5, &unk_1EC463290);
  v16 = type metadata accessor for EventRecurrenceEndModelObject(0);
  (*(*(v16 - 8) + 56))(v5, 1, 1, v16);
  v17 = !_s13CalendarUIKit30EventRecurrenceRuleModelObjectV2eeoiySbAC_ACtFZ_0(v9, v5) && !_s13CalendarUIKit30EventRecurrenceRuleModelObjectV2eeoiySbAC_ACtFZ_0(v9 + v6, v5) && !_s13CalendarUIKit30EventRecurrenceRuleModelObjectV2eeoiySbAC_ACtFZ_0(v9 + 2 * v6, v5) && !_s13CalendarUIKit30EventRecurrenceRuleModelObjectV2eeoiySbAC_ACtFZ_0(v9 + v13, v5) && !_s13CalendarUIKit30EventRecurrenceRuleModelObjectV2eeoiySbAC_ACtFZ_0(v9 + 4 * v6, v5);

  sub_1CABA6514(v5, type metadata accessor for EventRecurrenceRuleModelObject);
  return v17;
}

uint64_t EventRecurrenceDayOfWeekModelObject.init(dayOfTheWeek:weekNumber:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t EventRecurrenceRuleModelObject.frequency.setter(uint64_t a1)
{
  result = type metadata accessor for EventRecurrenceRuleModelObject(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t EventRecurrenceRuleModelObject.interval.setter(uint64_t a1)
{
  result = type metadata accessor for EventRecurrenceRuleModelObject(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t EventRecurrenceRuleModelObject.firstDayOfTheWeek.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for EventRecurrenceRuleModelObject(0);
  v6 = v2 + *(result + 28);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t EventRecurrenceRuleModelObject.daysOfTheWeek.getter()
{
  type metadata accessor for EventRecurrenceRuleModelObject(0);
}

uint64_t EventRecurrenceRuleModelObject.daysOfTheWeek.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EventRecurrenceRuleModelObject(0) + 32);

  *(v1 + v3) = a1;
  return result;
}

uint64_t EventRecurrenceRuleModelObject.daysOfTheMonth.getter()
{
  type metadata accessor for EventRecurrenceRuleModelObject(0);
}

uint64_t EventRecurrenceRuleModelObject.daysOfTheMonth.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EventRecurrenceRuleModelObject(0) + 36);

  *(v1 + v3) = a1;
  return result;
}

uint64_t EventRecurrenceRuleModelObject.daysOfTheYear.getter()
{
  type metadata accessor for EventRecurrenceRuleModelObject(0);
}

uint64_t EventRecurrenceRuleModelObject.daysOfTheYear.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EventRecurrenceRuleModelObject(0) + 40);

  *(v1 + v3) = a1;
  return result;
}

uint64_t EventRecurrenceRuleModelObject.weeksOfTheYear.getter()
{
  type metadata accessor for EventRecurrenceRuleModelObject(0);
}

uint64_t EventRecurrenceRuleModelObject.weeksOfTheYear.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EventRecurrenceRuleModelObject(0) + 44);

  *(v1 + v3) = a1;
  return result;
}

uint64_t EventRecurrenceRuleModelObject.monthsOfTheYear.getter()
{
  type metadata accessor for EventRecurrenceRuleModelObject(0);
}

uint64_t EventRecurrenceRuleModelObject.monthsOfTheYear.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EventRecurrenceRuleModelObject(0) + 48);

  *(v1 + v3) = a1;
  return result;
}

uint64_t EventRecurrenceRuleModelObject.setPositions.getter()
{
  type metadata accessor for EventRecurrenceRuleModelObject(0);
}

uint64_t EventRecurrenceRuleModelObject.setPositions.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EventRecurrenceRuleModelObject(0) + 52);

  *(v1 + v3) = a1;
  return result;
}

uint64_t EventRecurrenceRuleModelObject.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC465A70);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v79 = &v79 - v4;
  v5 = type metadata accessor for EventRecurrenceEndModelObject(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v80 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC463290);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v82 = &v79 - v9;
  v86 = type metadata accessor for EventRecurrenceRuleModelObject(0);
  MEMORY[0x1EEE9AC00](v86);
  v11 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v6 + 56);
  v87 = v11;
  v84 = v5;
  v83 = v6 + 56;
  v81 = v12;
  v12();
  v14 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  v15 = *(v13 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = sub_1CAD4E4D4();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v79 - v19;
  v15(v14, v13);
  v21 = *(AssociatedTypeWitness - 8);
  if ((*(v21 + 48))(v20, 1, AssociatedTypeWitness) == 1)
  {
    (*(v18 + 8))(v20, v17);
    AssociatedConformanceWitness = 0;
    v95 = 0u;
    v96 = 0u;
  }

  else
  {
    *(&v96 + 1) = AssociatedTypeWitness;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v95);
    (*(v21 + 32))(boxed_opaque_existential_1, v20, AssociatedTypeWitness);
  }

  sub_1CAB23A9C(&v95, &v92, &qword_1EC466EB8);
  v23 = v86;
  if (v93)
  {
    sub_1CAB284E0(&v92, v91);
    sub_1CAB299C0(v91, v88);
    v24 = sub_1CAD4C0F4();
    v25 = v80;
    (*(*(v24 - 8) + 56))(v80, 1, 1, v24);
    v26 = v89;
    v27 = v90;
    __swift_project_boxed_opaque_existential_1(v88, v89);
    v28 = v79;
    (*(v27 + 8))(v26, v27);
    sub_1CABC6AC8(v28, v25, &unk_1EC465A70);
    v29 = v89;
    v30 = v90;
    __swift_project_boxed_opaque_existential_1(v88, v89);
    v31 = (*(v30 + 16))(v29, v30);
    __swift_destroy_boxed_opaque_existential_1(v91);
    v32 = v84;
    *(v25 + *(v84 + 20)) = v31;
    v33 = v82;
    sub_1CACCA1A8(v25, v82, type metadata accessor for EventRecurrenceEndModelObject);
    __swift_destroy_boxed_opaque_existential_1(v88);
    sub_1CABA6514(v25, type metadata accessor for EventRecurrenceEndModelObject);
    v34 = v33;
    v35 = 0;
    v36 = v32;
  }

  else
  {
    v33 = v82;
    v34 = v82;
    v35 = 1;
    v36 = v84;
  }

  (v81)(v34, v35, 1, v36);
  v37 = v87;
  v38 = &v87[v23[7]];
  sub_1CAB21B68(&v95, &qword_1EC466EB8);
  sub_1CABC6AC8(v33, v37, &unk_1EC463290);
  v39 = a1[3];
  v40 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v39);
  *(v37 + v23[5]) = (*(v40 + 48))(v39, v40);
  v41 = a1[3];
  v42 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v41);
  *(v37 + v23[6]) = (*(v42 + 56))(v41, v42);
  v43 = a1[3];
  v44 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v43);
  *v38 = (*(v44 + 64))(v43, v44);
  v38[8] = v45 & 1;
  v46 = a1[3];
  v47 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v46);
  if ((*(v47 + 72))(v46, v47))
  {
    swift_getAssociatedTypeWitness();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466BE8);
    v48 = sub_1CAD4E784();

    v49 = *(v48 + 16);
    if (v49)
    {
      v91[0] = MEMORY[0x1E69E7CC0];
      sub_1CACB9EFC(0, v49, 0);
      v50 = v91[0];
      v51 = v48 + 32;
      do
      {
        sub_1CAB299C0(v51, &v95);
        sub_1CAB299C0(&v95, &v92);
        v52 = v93;
        v53 = v94;
        __swift_project_boxed_opaque_existential_1(&v92, v93);
        v54 = (*(v53 + 8))(v52, v53);
        v55 = v93;
        v56 = v94;
        __swift_project_boxed_opaque_existential_1(&v92, v93);
        v57 = (*(v56 + 16))(v55, v56);
        __swift_destroy_boxed_opaque_existential_1(&v95);
        __swift_destroy_boxed_opaque_existential_1(&v92);
        v91[0] = v50;
        v59 = *(v50 + 16);
        v58 = *(v50 + 24);
        if (v59 >= v58 >> 1)
        {
          sub_1CACB9EFC((v58 > 1), v59 + 1, 1);
          v50 = v91[0];
        }

        *(v50 + 16) = v59 + 1;
        v60 = v50 + 16 * v59;
        *(v60 + 32) = v54;
        *(v60 + 40) = v57;
        v51 += 40;
        --v49;
      }

      while (v49);

      v23 = v86;
    }

    else
    {

      v50 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v50 = 0;
  }

  v61 = v23[8];
  v62 = v23[9];
  v63 = v23[10];
  v64 = v23[11];
  v65 = v23[12];
  v86 = v23[13];
  v66 = v87;
  *&v87[v61] = v50;
  v67 = a1[3];
  v68 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v67);
  *(v66 + v62) = (*(v68 + 80))(v67, v68);
  v69 = a1[3];
  v70 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v69);
  *(v66 + v63) = (*(v70 + 88))(v69, v70);
  v71 = a1[3];
  v72 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v71);
  *(v66 + v64) = (*(v72 + 96))(v71, v72);
  v73 = a1[3];
  v74 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v73);
  *(v66 + v65) = (*(v74 + 104))(v73, v74);
  v75 = a1[3];
  v76 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v75);
  v77 = (*(v76 + 112))(v75, v76);
  *(v66 + v86) = v77;
  sub_1CACCA1A8(v66, v85, type metadata accessor for EventRecurrenceRuleModelObject);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1CABA6514(v66, type metadata accessor for EventRecurrenceRuleModelObject);
}

uint64_t EventRecurrenceEndModelObject.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC465A70);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17 - v5;
  v7 = type metadata accessor for EventRecurrenceEndModelObject(0);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1CAD4C0F4();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  (*(v13 + 8))(v12, v13);
  sub_1CABC6AC8(v6, v10, &unk_1EC465A70);
  v14 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  *&v10[*(v8 + 28)] = (*(v15 + 16))(v14, v15);
  sub_1CACCA1A8(v10, a2, type metadata accessor for EventRecurrenceEndModelObject);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1CABA6514(v10, type metadata accessor for EventRecurrenceEndModelObject);
}

uint64_t EventRecurrenceDayOfWeekModelObject.init(_:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v6 = (*(v5 + 8))(v4, v5);
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  v9 = (*(v8 + 16))(v7, v8);
  *a2 = v6;
  a2[1] = v9;

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void EventRecurrenceRuleModelObject.init(ekRecurrenceRule:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC465A70);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v93 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC463290);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v93 - v8;
  v10 = sub_1CAD4C0F4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for EventRecurrenceEndModelObject(0);
  v93 = *(*(v14 - 8) + 56);
  (v93)(a2, 1, 1, v14);
  v95 = a1;
  v15 = [a1 recurrenceEnd];
  v94 = a2;
  if (v15)
  {
    v16 = v15;
    v17 = [v15 endDate];
    if (v17)
    {
      v18 = v17;
      sub_1CAD4C0B4();

      a2 = v94;
      sub_1CAB21B68(v94, &unk_1EC463290);
      (*(v11 + 32))(v6, v13, v10);
      v19 = *(v11 + 56);
      v19(v6, 0, 1, v10);
      v19(a2, 1, 1, v10);
      sub_1CABC6AC8(v6, a2, &unk_1EC465A70);
      *(a2 + *(v14 + 20)) = 0;
      (v93)(a2, 0, 1, v14);
    }

    else
    {
      v20 = [v16 occurrenceCount];

      v21 = *(v11 + 56);
      v21(v9, 1, 1, v10);
      sub_1CAB21B68(v9, &unk_1EC465A70);
      v21(v9, 1, 1, v10);
      *&v9[*(v14 + 20)] = v20;
      (v93)(v9, 0, 1, v14);
      a2 = v94;
      sub_1CABC6AC8(v9, v94, &unk_1EC463290);
    }
  }

  v22 = type metadata accessor for EventRecurrenceRuleModelObject(0);
  v23 = a2 + v22[7];
  v24 = v95;
  *(a2 + v22[5]) = [v95 frequency];
  *(a2 + v22[6]) = [v24 interval];
  *v23 = [v24 firstDayOfTheWeek];
  *(v23 + 8) = 0;
  v25 = [v24 daysOfTheWeek];
  v93 = v22;
  if (!v25)
  {
    v30 = 0;
    goto LABEL_20;
  }

  v26 = v25;
  sub_1CABD4070(0, &qword_1EC466668);
  v27 = sub_1CAD4E214();

  if (v27 >> 62)
  {
    v28 = sub_1CAD4E604();
    if (v28)
    {
      goto LABEL_8;
    }

LABEL_19:

    v30 = MEMORY[0x1E69E7CC0];
    goto LABEL_20;
  }

  v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v28)
  {
    goto LABEL_19;
  }

LABEL_8:
  v96 = MEMORY[0x1E69E7CC0];
  sub_1CACB9EFC(0, v28 & ~(v28 >> 63), 0);
  if (v28 < 0)
  {
    __break(1u);
    goto LABEL_97;
  }

  v29 = 0;
  v30 = v96;
  do
  {
    if ((v27 & 0xC000000000000001) != 0)
    {
      v31 = MEMORY[0x1CCAA7940](v29, v27);
    }

    else
    {
      v31 = *(v27 + 8 * v29 + 32);
    }

    v32 = v31;
    v33 = [v31 dayOfTheWeek];
    v34 = [v32 weekNumber];

    v96 = v30;
    v36 = *(v30 + 16);
    v35 = *(v30 + 24);
    if (v36 >= v35 >> 1)
    {
      sub_1CACB9EFC((v35 > 1), v36 + 1, 1);
      v30 = v96;
    }

    ++v29;
    *(v30 + 16) = v36 + 1;
    v37 = v30 + 16 * v36;
    *(v37 + 32) = v33;
    *(v37 + 40) = v34;
  }

  while (v28 != v29);

  a2 = v94;
  v24 = v95;
  v22 = v93;
LABEL_20:
  *(a2 + v22[8]) = v30;
  v38 = [v24 daysOfTheMonth];
  if (!v38)
  {
    v43 = 0;
    goto LABEL_35;
  }

  v39 = v38;
  sub_1CABD4070(0, &qword_1EC463960);
  v40 = sub_1CAD4E214();

  if (!(v40 >> 62))
  {
    v41 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v41)
    {
      goto LABEL_23;
    }

LABEL_34:

    v43 = MEMORY[0x1E69E7CC0];
    goto LABEL_35;
  }

  v41 = sub_1CAD4E604();
  if (!v41)
  {
    goto LABEL_34;
  }

LABEL_23:
  v96 = MEMORY[0x1E69E7CC0];
  sub_1CACB9D7C(0, v41 & ~(v41 >> 63), 0);
  if (v41 < 0)
  {
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  v42 = 0;
  v43 = v96;
  do
  {
    if ((v40 & 0xC000000000000001) != 0)
    {
      v44 = MEMORY[0x1CCAA7940](v42, v40);
    }

    else
    {
      v44 = *(v40 + 8 * v42 + 32);
    }

    v45 = v44;
    v46 = [v44 integerValue];

    v96 = v43;
    v48 = *(v43 + 16);
    v47 = *(v43 + 24);
    if (v48 >= v47 >> 1)
    {
      sub_1CACB9D7C((v47 > 1), v48 + 1, 1);
      v43 = v96;
    }

    ++v42;
    *(v43 + 16) = v48 + 1;
    *(v43 + 8 * v48 + 32) = v46;
  }

  while (v41 != v42);

  a2 = v94;
  v24 = v95;
  v22 = v93;
LABEL_35:
  *(a2 + v22[9]) = v43;
  v49 = [v24 daysOfTheYear];
  if (!v49)
  {
    v54 = 0;
    goto LABEL_50;
  }

  v50 = v49;
  sub_1CABD4070(0, &qword_1EC463960);
  v51 = sub_1CAD4E214();

  if (!(v51 >> 62))
  {
    v52 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v52)
    {
      goto LABEL_38;
    }

LABEL_49:

    v54 = MEMORY[0x1E69E7CC0];
    goto LABEL_50;
  }

  v52 = sub_1CAD4E604();
  if (!v52)
  {
    goto LABEL_49;
  }

LABEL_38:
  v96 = MEMORY[0x1E69E7CC0];
  sub_1CACB9D7C(0, v52 & ~(v52 >> 63), 0);
  if (v52 < 0)
  {
LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  v53 = 0;
  v54 = v96;
  do
  {
    if ((v51 & 0xC000000000000001) != 0)
    {
      v55 = MEMORY[0x1CCAA7940](v53, v51);
    }

    else
    {
      v55 = *(v51 + 8 * v53 + 32);
    }

    v56 = v55;
    v57 = [v55 integerValue];

    v96 = v54;
    v59 = *(v54 + 16);
    v58 = *(v54 + 24);
    if (v59 >= v58 >> 1)
    {
      sub_1CACB9D7C((v58 > 1), v59 + 1, 1);
      v54 = v96;
    }

    ++v53;
    *(v54 + 16) = v59 + 1;
    *(v54 + 8 * v59 + 32) = v57;
  }

  while (v52 != v53);

  a2 = v94;
  v24 = v95;
  v22 = v93;
LABEL_50:
  *(a2 + v22[10]) = v54;
  v60 = [v24 weeksOfTheYear];
  if (!v60)
  {
    v65 = 0;
    goto LABEL_65;
  }

  v61 = v60;
  sub_1CABD4070(0, &qword_1EC463960);
  v62 = sub_1CAD4E214();

  if (!(v62 >> 62))
  {
    v63 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v63)
    {
      goto LABEL_53;
    }

LABEL_64:

    v65 = MEMORY[0x1E69E7CC0];
    goto LABEL_65;
  }

  v63 = sub_1CAD4E604();
  if (!v63)
  {
    goto LABEL_64;
  }

LABEL_53:
  v96 = MEMORY[0x1E69E7CC0];
  sub_1CACB9D7C(0, v63 & ~(v63 >> 63), 0);
  if (v63 < 0)
  {
LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  v64 = 0;
  v65 = v96;
  do
  {
    if ((v62 & 0xC000000000000001) != 0)
    {
      v66 = MEMORY[0x1CCAA7940](v64, v62);
    }

    else
    {
      v66 = *(v62 + 8 * v64 + 32);
    }

    v67 = v66;
    v68 = [v66 integerValue];

    v96 = v65;
    v70 = *(v65 + 16);
    v69 = *(v65 + 24);
    if (v70 >= v69 >> 1)
    {
      sub_1CACB9D7C((v69 > 1), v70 + 1, 1);
      v65 = v96;
    }

    ++v64;
    *(v65 + 16) = v70 + 1;
    *(v65 + 8 * v70 + 32) = v68;
  }

  while (v63 != v64);

  a2 = v94;
  v24 = v95;
  v22 = v93;
LABEL_65:
  *(a2 + v22[11]) = v65;
  v71 = [v24 monthsOfTheYear];
  if (!v71)
  {
    v76 = 0;
    goto LABEL_80;
  }

  v72 = v71;
  sub_1CABD4070(0, &qword_1EC463960);
  v73 = sub_1CAD4E214();

  if (!(v73 >> 62))
  {
    v74 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v74)
    {
      goto LABEL_68;
    }

LABEL_79:

    v76 = MEMORY[0x1E69E7CC0];
    goto LABEL_80;
  }

  v74 = sub_1CAD4E604();
  if (!v74)
  {
    goto LABEL_79;
  }

LABEL_68:
  v96 = MEMORY[0x1E69E7CC0];
  sub_1CACB9D7C(0, v74 & ~(v74 >> 63), 0);
  if (v74 < 0)
  {
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v75 = 0;
  v76 = v96;
  do
  {
    if ((v73 & 0xC000000000000001) != 0)
    {
      v77 = MEMORY[0x1CCAA7940](v75, v73);
    }

    else
    {
      v77 = *(v73 + 8 * v75 + 32);
    }

    v78 = v77;
    v79 = [v77 integerValue];

    v96 = v76;
    v81 = *(v76 + 16);
    v80 = *(v76 + 24);
    if (v81 >= v80 >> 1)
    {
      sub_1CACB9D7C((v80 > 1), v81 + 1, 1);
      v76 = v96;
    }

    ++v75;
    *(v76 + 16) = v81 + 1;
    *(v76 + 8 * v81 + 32) = v79;
  }

  while (v74 != v75);

  a2 = v94;
  v24 = v95;
  v22 = v93;
LABEL_80:
  *(a2 + v22[12]) = v76;
  v82 = [v24 setPositions];
  if (!v82)
  {

    v87 = 0;
LABEL_95:
    *(a2 + v22[13]) = v87;
    return;
  }

  v83 = v82;
  sub_1CABD4070(0, &qword_1EC463960);
  v84 = sub_1CAD4E214();

  if (!(v84 >> 62))
  {
    v85 = *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v85)
    {
      goto LABEL_83;
    }

    goto LABEL_94;
  }

  v85 = sub_1CAD4E604();
  if (!v85)
  {
LABEL_94:

    v87 = MEMORY[0x1E69E7CC0];
    goto LABEL_95;
  }

LABEL_83:
  v96 = MEMORY[0x1E69E7CC0];
  sub_1CACB9D7C(0, v85 & ~(v85 >> 63), 0);
  if ((v85 & 0x8000000000000000) == 0)
  {
    v86 = 0;
    v87 = v96;
    do
    {
      if ((v84 & 0xC000000000000001) != 0)
      {
        v88 = MEMORY[0x1CCAA7940](v86, v84);
      }

      else
      {
        v88 = *(v84 + 8 * v86 + 32);
      }

      v89 = v88;
      v90 = [v88 integerValue];

      v96 = v87;
      v92 = *(v87 + 16);
      v91 = *(v87 + 24);
      if (v92 >= v91 >> 1)
      {
        sub_1CACB9D7C((v91 > 1), v92 + 1, 1);
        v87 = v96;
      }

      ++v86;
      *(v87 + 16) = v92 + 1;
      *(v87 + 8 * v92 + 32) = v90;
    }

    while (v85 != v86);

    v22 = v93;
    a2 = v94;
    goto LABEL_95;
  }

LABEL_101:
  __break(1u);
}