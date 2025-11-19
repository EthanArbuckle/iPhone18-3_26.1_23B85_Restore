char *PendingReminderTracker.init(eventStore:)(void *a1)
{
  v3 = OBJC_IVAR____TtC21CalendarUIKitInternal22PendingReminderTracker_trackedEvents;
  *&v1[v3] = sub_2429A0180(MEMORY[0x277D84F90]);
  *&v1[OBJC_IVAR____TtC21CalendarUIKitInternal22PendingReminderTracker_eventStore] = a1;
  v10.receiver = v1;
  v10.super_class = type metadata accessor for PendingReminderTracker();
  v4 = a1;
  v5 = objc_msgSendSuper2(&v10, sel_init);
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 defaultCenter];
  [v8 addObserver:v7 selector:sel_eventStoreDidChange_ name:*MEMORY[0x277CC5948] object:*&v7[OBJC_IVAR____TtC21CalendarUIKitInternal22PendingReminderTracker_eventStore]];

  return v7;
}

unint64_t sub_2429A0180(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD71F0, &qword_2429B8688);
    v3 = sub_2429B76D0();

    for (i = (a1 + 80); ; i += 7)
    {
      v5 = *(i - 6);
      v6 = *(i - 5);
      v7 = *(i - 4);
      v8 = *(i - 3);
      v9 = *(i - 4);
      v11 = *(i - 1);
      v10 = *i;

      v12 = v7;
      v13 = v8;
      v14 = v11;
      result = sub_2429AE360(v5, v6);
      if (v16)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v3[6] + 16 * result);
      *v17 = v5;
      v17[1] = v6;
      v18 = v3[7] + 40 * result;
      *v18 = v12;
      *(v18 + 8) = v13;
      *(v18 + 16) = v9;
      *(v18 + 24) = v11;
      *(v18 + 32) = v10;
      v19 = v3[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v3[2] = v21;
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

id sub_2429A0360(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC21CalendarUIKitInternal33CUIKIReminderEditorImplementation__requestPerformer] = 0;
  swift_unknownObjectWeakAssign();
  v8 = [a4 impl];
  sub_2429B74E0();
  swift_unknownObjectRelease();
  type metadata accessor for PendingReminderTracker();
  swift_dynamicCast();
  *&v4[OBJC_IVAR____TtC21CalendarUIKitInternal33CUIKIReminderEditorImplementation_changeTracker] = v12;
  *&v4[OBJC_IVAR____TtC21CalendarUIKitInternal33CUIKIReminderEditorImplementation_eventStore] = a1;
  *&v4[OBJC_IVAR____TtC21CalendarUIKitInternal33CUIKIReminderEditorImplementation_alertDisplayer] = a2;
  v11.receiver = v4;
  v11.super_class = type metadata accessor for CUIKIReminderEditorImplementation();
  v9 = a1;
  swift_unknownObjectRetain();
  return objc_msgSendSuper2(&v11, sel_init);
}

uint64_t CUIKITriggerReminderSync(uint64_t a1)
{
  result = [MEMORY[0x277CC5990] isReminderAppLocked];
  if ((result & 1) == 0)
  {

    return [_TtC21CalendarUIKitInternal24CUIKIReminderSyncTrigger triggerSyncWithWhy:a1];
  }

  return result;
}

uint64_t _s21CalendarUIKitInternal24CUIKIReminderSyncTriggerC07triggerE03whyySo0dE6ReasonV_tFZ_0(uint64_t a1)
{
  if (qword_28118FA48 != -1)
  {
    swift_once();
  }

  v2 = sub_2429B72D0();
  __swift_project_value_buffer(v2, qword_28118FA50);
  v3 = sub_2429B72B0();
  v4 = sub_2429B7490();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v22 = v6;
    *v5 = 136446210;
    v7 = 0xEF64657461766974;
    v8 = 0x6361654420707041;
    v9 = 0xE700000000000000;
    v10 = 0x6E776F6E6B6E55;
    if (a1 == 1)
    {
      v10 = 0x6974634120707041;
      v9 = 0xED00006465746176;
    }

    if (a1 != 2)
    {
      v8 = v10;
      v7 = v9;
    }

    if (a1)
    {
      v11 = v8;
    }

    else
    {
      v11 = 0x6E75614C20707041;
    }

    if (a1)
    {
      v12 = v7;
    }

    else
    {
      v12 = 0xEC00000064656863;
    }

    v13 = sub_2429A091C(v11, v12, &v22);

    *(v5 + 4) = v13;
    _os_log_impl(&dword_24299E000, v3, v4, "Requesting a reminders sync with reason %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x245D1DF70](v6, -1, -1);
    MEMORY[0x245D1DF70](v5, -1, -1);
  }

  v14 = sub_2429B7010();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20]();
  v18 = (&v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1 == 2)
  {
    v19 = MEMORY[0x277D45AE8];
  }

  else if (a1 == 1)
  {
    v19 = MEMORY[0x277D45AE0];
  }

  else if (a1)
  {
    *v18 = 0x6E776F6E6B6E75;
    v18[1] = 0xE700000000000000;
    v19 = MEMORY[0x277D45AF0];
  }

  else
  {
    v19 = MEMORY[0x277D45AD8];
  }

  (*(v15 + 104))(v18, *v19, v14);
  sub_2429B6F90();
  return (*(v15 + 8))(v18, v14);
}

uint64_t sub_2429A0808(uint64_t a1, uint64_t *a2)
{
  v3 = sub_2429B72D0();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_2429B72C0();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_2429A091C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2429A09E8(v11, 0, 0, 1, a1, a2);
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
    sub_2429A0DD4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_2429A09E8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2429A0B68(a5, a6);
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
    result = sub_2429B7600();
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

void *sub_2429A0AF4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD72A8, &qword_2429B8880);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_2429A0B68(uint64_t a1, unint64_t a2)
{
  v4 = sub_2429A0BB4(a1, a2);
  sub_2429A0CE8(&unk_2855313A0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_2429A0BB4(uint64_t a1, unint64_t a2)
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

  v6 = sub_2429A0AF4(v5, 0);
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

  result = sub_2429B7600();
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
        v10 = sub_2429B7350();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2429A0AF4(v10, 0);
        result = sub_2429B75D0();
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

uint64_t sub_2429A0CE8(uint64_t result)
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_2429B50BC(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_2429A0DD4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

id sub_2429A0F00()
{
  v1 = [*v0 objectID];

  return v1;
}

uint64_t sub_2429A0F38()
{
  v1 = sub_2429B6DB0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, (v6 + 11) & 0xFFFFFFFFFFFFFFF8 | 4, v3 | 7);
}

uint64_t sub_2429A1040()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2429A1078()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  v4 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2429A10D0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC21CalendarUIKitInternal33CUIKIReminderEditorImplementation_alertDisplayer;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return swift_unknownObjectRetain();
}

uint64_t sub_2429A1130()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECD71D8, &qword_2429B8680);
  v2 = sub_2429B7410();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v1 - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + *(v3 + 64) + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = v4 | v7;
  (*(v3 + 8))(v0 + v5, v2);
  (*(v6 + 8))(v0 + v8, v1);

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v10 | 7);
}

uint64_t sub_2429A1258()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECD71D8, &qword_2429B8680);
  v2 = sub_2429B7410();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v0 + v5, v2);

  return MEMORY[0x2821FE8E8](v0, v5 + v6, v4 | 7);
}

uint64_t sub_2429A1308()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2429A1340()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t static ReminderDragProvider.itemProviderWriter(for:)(void *a1)
{
  v2 = sub_2429B7000();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20]();
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECD7010, &unk_2429B8350) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v12 - v8;
  sub_2429A1DB0(a1, &v12 - v8);
  if ((*(v3 + 48))(v9, 1, v2) == 1)
  {
    sub_2429A234C(v9, &unk_27ECD7010, &unk_2429B8350);
    return 0;
  }

  else
  {
    (*(v3 + 32))(v6, v9, v2);
    v11 = sub_2429B7020();
    (*(v3 + 8))(v6, v2);
    return v11;
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2429A1DB0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECD7080, &qword_2429B84F0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v22 - v5;
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD7260, &unk_2429B83B0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v22 - v8;
  v10 = sub_2429B6E20();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20]();
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a1 uniqueID];
  if (!v15)
  {
    goto LABEL_7;
  }

  v16 = v15;
  sub_2429B7320();

  sub_2429B6E10();

  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_2429A234C(v9, &qword_27ECD7260, &unk_2429B83B0);
LABEL_7:
    v19 = 1;
    goto LABEL_8;
  }

  (*(v11 + 32))(v14, v9, v10);
  v17 = sub_2429B6DF0();
  v18 = [objc_opt_self() objectIDWithURL_];

  if (!v18)
  {
    (*(v11 + 8))(v14, v10);
    goto LABEL_7;
  }

  EKEvent.recurrentReminderOccurrenceDate.getter(v6);
  sub_2429B6FF0();
  (*(v11 + 8))(v14, v10);
  v19 = 0;
LABEL_8:
  v20 = sub_2429B7000();
  return (*(*(v20 - 8) + 56))(a2, v19, 1, v20);
}

id ReminderDragProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ReminderDragProvider.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ReminderDragProvider();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ReminderDragProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ReminderDragProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2429A234C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t static ReminderColorDeserializer.deserialize(from:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_2429B71F0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20]();
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2429A24D4(a1, a2);
  sub_2429B71D0();
  if (!v2)
  {
    v3 = sub_2429B71B0();
    (*(v7 + 8))(v10, v6);
  }

  return v3;
}

uint64_t sub_2429A24D4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

id ReminderColorDeserializer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ReminderColorDeserializer.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ReminderColorDeserializer();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ReminderColorDeserializer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ReminderColorDeserializer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2429A27AC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void RemindersInCalendarEditingReminderProperties.init(event:)(void *a1)
{
  v2 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD7260, &unk_2429B83B0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v4 = &v20 - v3;
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECD7080, &qword_2429B84F0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v20 - v6;
  sub_2429B7240();
  v8 = a1;
  v9 = [v8 title];
  if (v9)
  {
    v10 = v9;
    sub_2429B7320();
  }

  sub_2429B7230();
  v11 = [v8 notes];
  if (v11)
  {
    v12 = v11;
    sub_2429B7320();
  }

  sub_2429B7220();
  v13 = [v8 startDateComponents];
  if (v13)
  {
    v14 = v13;
    sub_2429B6D80();

    v15 = sub_2429B6DB0();
    (*(*(v15 - 8) + 56))(v7, 0, 1, v15);
  }

  else
  {
    v16 = sub_2429B6DB0();
    (*(*(v16 - 8) + 56))(v7, 1, 1, v16);
  }

  sub_2429B7200();
  v17 = [v8 URL];

  if (v17)
  {
    sub_2429B6E00();

    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  v19 = sub_2429B6E20();
  (*(*(v19 - 8) + 56))(v4, v18, 1, v19);
  sub_2429B7210();
}

id REMReminderChangeItem.cuiki_list.getter()
{
  v10[1] = *MEMORY[0x277D85DE8];
  v1 = [v0 listID];
  if (!v1)
  {
    goto LABEL_5;
  }

  v2 = v1;
  v3 = sub_2429B74A0();
  v10[0] = 0;
  v4 = [v3 fetchListWithObjectID:v2 error:v10];

  v5 = v10[0];
  if (!v4)
  {
    v6 = v5;
    v7 = sub_2429B6DD0();

    swift_willThrow();
LABEL_5:
    v4 = 0;
    goto LABEL_6;
  }

LABEL_6:
  v8 = *MEMORY[0x277D85DE8];
  return v4;
}

id REMReminder.cuiki_list.getter()
{
  v1 = [v0 list];

  return v1;
}

uint64_t sub_2429A2BE8(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [*v3 *a3];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = sub_2429B7320();

  return v6;
}

uint64_t sub_2429A2C4C@<X0>(SEL *a1@<X2>, void (*a2)(void)@<X3>, uint64_t (*a3)(void)@<X4>, uint64_t a4@<X8>)
{
  v8 = [*v4 *a1];
  if (v8)
  {
    v9 = v8;
    a2();

    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = a3(0);
  v12 = *(*(v11 - 8) + 56);

  return v12(a4, v10, 1, v11);
}

uint64_t sub_2429A2D04()
{
  v1 = [*v0 recurrenceRules];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_2429A565C(0, &qword_27ECD7108, 0x277D44738);
  v3 = sub_2429B7380();

  return v3;
}

id sub_2429A2D78()
{
  v1 = [*v0 list];

  return v1;
}

void EKEvent.update(from:updateDates:forSavingIntegrationEvent:)(void *a1, int a2, int a3)
{
  v4 = v3;
  v156 = a3;
  LODWORD(v157) = a2;
  v6 = sub_2429B6E20();
  v7 = *(v6 - 8);
  v158 = v6;
  v159 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v151 = &v133 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_2429B6EF0();
  v140 = *(v144 - 8);
  v10 = *(v140 + 64);
  MEMORY[0x28223BE20](v144);
  v136 = &v133 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD70F0, &qword_2429B8410);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v137 = &v133 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v145 = &v133 - v16;
  v152 = sub_2429B6E80();
  v149 = *(v152 - 8);
  v17 = *(v149 + 64);
  v18 = MEMORY[0x28223BE20](v152);
  v133 = &v133 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v141 = &v133 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v143 = &v133 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v135 = &v133 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v139 = &v133 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v138 = &v133 - v29;
  MEMORY[0x28223BE20](v28);
  v142 = &v133 - v30;
  v31 = sub_2429B6F20();
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v33 = sub_2429B6E90();
  v148 = *(v33 - 8);
  v34 = *(v148 + 8);
  MEMORY[0x28223BE20](v33);
  v36 = &v133 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_2429B6F00();
  v146 = *(v37 - 8);
  v147 = v37;
  v38 = *(v146 + 64);
  MEMORY[0x28223BE20](v37);
  v155 = &v133 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECD7080, &qword_2429B84F0);
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40 - 8);
  v43 = &v133 - v42;
  v44 = sub_2429B6DB0();
  v45 = *(v44 - 8);
  v153 = v44;
  v154 = v45;
  v46 = *(v45 + 64);
  v47 = MEMORY[0x28223BE20](v44);
  v134 = &v133 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  v150 = &v133 - v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD7260, &unk_2429B83B0);
  v51 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50 - 8);
  v53 = &v133 - v52;
  v54 = a1[3];
  v55 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v54);
  (*(v55 + 8))(v54, v55);
  if (v56)
  {
    v57 = sub_2429B7310();

    [v3 setTitle_];
  }

  v58 = a1[3];
  v59 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v58);
  (*(v59 + 16))(v58, v59);
  if (v60)
  {
    v61 = sub_2429B7310();
  }

  else
  {
    v61 = 0;
  }

  [v4 setNotes_];

  v62 = a1[3];
  v63 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v62);
  (*(v63 + 24))(v62, v63);
  v65 = v158;
  v64 = v159;
  if ((*(v159 + 48))(v53, 1, v158) == 1)
  {
    v66 = 0;
  }

  else
  {
    v66 = sub_2429B6DF0();
    (*(v64 + 8))(v53, v65);
  }

  [v4 setURL_];

  if ((v157 & 1) == 0)
  {
    goto LABEL_37;
  }

  v67 = a1[3];
  v68 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v67);
  (*(v68 + 32))(v67, v68);
  v70 = v153;
  v69 = v154;
  if ((*(v154 + 48))(v43, 1, v153) != 1)
  {
    v71 = v150;
    (*(v69 + 32))(v150, v43, v70);
    v72 = v148;
    (*(v148 + 13))(v36, *MEMORY[0x277CC9830], v33);
    sub_2429B6EA0();
    (*(v72 + 1))(v36, v33);
    v73 = [v4 effectiveTimeZone];
    if (!v73)
    {
      __break(1u);
      return;
    }

    v74 = v73;
    sub_2429B6F10();

    sub_2429B6EE0();
    v75 = [v4 isAllDay];
    sub_2429B6DA0();
    v77 = v76;
    v78 = v149;
    if (v76)
    {
      v79 = [v4 startDate];
      if (v79)
      {
        LODWORD(v148) = v77;
        v80 = v138;
        v81 = v79;
        sub_2429B6E70();

        v82 = v78[4];
        v83 = v142;
        v84 = v152;
        (v82)(v142, v80, v152);
        v85 = [v4 endDateUnadjustedForLegacyClients];
        if (v85)
        {
          v86 = v85;
          sub_2429B6E70();

          v82();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD7100, &qword_2429B8418);
          v87 = v140;
          v88 = *(v140 + 72);
          v89 = (*(v140 + 80) + 32) & ~*(v140 + 80);
          v90 = swift_allocObject();
          *(v90 + 16) = xmmword_2429B8400;
          v91 = v144;
          (*(v87 + 104))(v90 + v89, *MEMORY[0x277CC9968], v144);
          sub_2429A4300(v90);
          swift_setDeallocating();
          (*(v87 + 8))(v90 + v89, v91);
          swift_deallocClassInstance();
          v92 = v143;
          sub_2429B6E50();
          v93 = v134;
          v94 = v142;
          sub_2429B6EB0();

          v95 = v78[1];
          v96 = v92;
          v97 = v152;
          v70 = v153;
          v95(v96, v152);
          v98 = sub_2429B6D90();
          LODWORD(v157) = v99;
          (*(v154 + 8))(v93, v70);
          v95(v139, v97);
          v95(v94, v97);
          if (v98 <= 1)
          {
            v100 = 1;
          }

          else
          {
            v100 = v98;
          }

          if (v157)
          {
            v100 = 1;
          }
        }

        else
        {
          (v78[1])(v83, v84);
          v100 = 1;
        }

        v157 = v100;
        v71 = v150;
        LOBYTE(v77) = v148;
      }

      else
      {
        v157 = 1;
      }
    }

    else
    {
      if ((v75 & 1) == 0)
      {
        [v4 duration];
      }

      v157 = 0;
    }

    [v4 setAllDay_];
    v101 = v145;
    sub_2429B6EC0();
    v102 = v78[6];
    v103 = v152;
    if (v102(v101, 1, v152) == 1)
    {
      (*(v146 + 8))(v155, v147);
      (*(v154 + 8))(v71, v70);
      sub_2429A234C(v101, &qword_27ECD70F0, &qword_2429B8410);
LABEL_36:
      v65 = v158;
      goto LABEL_37;
    }

    v104 = v78[4];
    v105 = v141;
    v104(v141, v101, v103);
    v106 = sub_2429B6E60();
    [v4 setStartDate_];

    if (v77)
    {
      v148 = v104;
      v107 = v140;
      v108 = v136;
      (*(v140 + 104))(v136, *MEMORY[0x277CC9968], v144);
      v109 = v137;
      sub_2429B6ED0();
      (*(v107 + 8))(v108, v144);
      v110 = v152;
      if (v102(v109, 1, v152) == 1)
      {
        (*(v149 + 8))(v105, v110);
        (*(v146 + 8))(v155, v147);
        (*(v154 + 8))(v150, v153);
        sub_2429A234C(v109, &qword_27ECD70F0, &qword_2429B8410);
        goto LABEL_36;
      }

      v116 = v133;
      v148(v133, v109, v110);
      v117 = v143;
      v118 = v110;
      sub_2429B6E50();
      v119 = sub_2429B6E60();
      v120 = *(v149 + 8);
      v120(v117, v118);
      [v4 setEndDateUnadjustedForLegacyClients_];

      v120(v116, v118);
      v120(v105, v118);
    }

    else
    {
      v111 = v143;
      sub_2429B6E50();
      v112 = sub_2429B6E60();
      v113 = v78[1];
      v114 = v111;
      v115 = v152;
      v113(v114, v152);
      [v4 setEndDateUnadjustedForLegacyClients_];

      v113(v105, v115);
    }

    (*(v146 + 8))(v155, v147);
    (*(v154 + 8))(v150, v153);
    goto LABEL_36;
  }

  sub_2429A234C(v43, &unk_27ECD7080, &qword_2429B84F0);
LABEL_37:
  v121 = a1[3];
  v122 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v121);
  v123 = (*(v122 + 40))(v121, v122);
  v124 = _sSo16EKRecurrenceRuleC21CalendarUIKitInternalE7convertySayABGSgSaySo013REMRecurrenceB0CGSgFZ_0(v123);

  if (v124)
  {
    sub_2429A565C(0, &qword_27ECD70F8, 0x277CC5AA8);
    v125 = sub_2429B7370();
  }

  else
  {
    v125 = 0;
  }

  [v4 setRecurrenceRules_];

  if (v156)
  {
    v126 = sub_2429A3DCC(a1);
    [v4 setColor_];

    v127 = a1[3];
    v128 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v127);
    v129 = (*(v128 + 56))(v127, v128);
    v130 = [v129 urlRepresentation];

    v131 = v151;
    sub_2429B6E00();

    sub_2429B6DE0();
    (*(v159 + 8))(v131, v65);
    v132 = sub_2429B7310();

    [v4 setUniqueID_];
  }
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

id sub_2429A3DCC(void *a1)
{
  v2 = v1;
  v4 = sub_2429B6E20();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  v11 = (*(v10 + 48))(v9, v10);
  if (!v11)
  {
    return 0;
  }

  v12 = v11;
  v13 = [v11 objectID];
  v14 = [v13 urlRepresentation];

  sub_2429B6E00();
  sub_2429B6DE0();
  (*(v5 + 8))(v8, v4);
  result = [v2 eventStore];
  if (result)
  {
    v16 = result;
    v17 = *MEMORY[0x277CF7AA0];
    v18 = sub_2429B7310();
    v19 = [v16 colorWithProviderIdentifier:v17 externalIdentifier:v18];

    if (v19)
    {
    }

    else
    {
      v20 = sub_2429B71F0();
      v21 = *(v20 - 8);
      v22 = *(v21 + 64);
      MEMORY[0x28223BE20]();
      v24 = v32 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
      v25 = [v12 color];
      sub_2429B71E0();
      v26 = sub_2429B71C0();
      v32[0] = v32;
      v27 = v26;
      v29 = v28;
      v19 = [objc_allocWithZone(MEMORY[0x277CC5A00]) init];
      [v19 setProviderIdentifier_];
      v30 = sub_2429B7310();

      [v19 setExternalID_];

      v31 = sub_2429B6E30();
      [v19 setData_];

      sub_2429A27AC(v27, v29);
      (*(v21 + 8))(v24, v20);
    }

    return v19;
  }

  __break(1u);
  return result;
}

unint64_t static REMRecurrenceRule.convert(_:account:reminder:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return 0;
  }

  v16 = MEMORY[0x277D84F90];
  v5 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_22:
    v6 = sub_2429B7530();
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (v6 != v7)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x245D1D8C0](v7, a1);
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        goto LABEL_21;
      }

      v9 = *(a1 + 8 * v7 + 32);
    }

    v10 = v9;
    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v12 = _sSo17REMRecurrenceRuleC21CalendarUIKitInternalE7convert_7account8reminderABSgSo012EKRecurrenceB0C_So11REMObjectIDCAKtFZ_0(v9, a2, a3);

    ++v7;
    if (v12)
    {
      MEMORY[0x245D1D630]();
      if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v13 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_2429B73A0();
      }

      sub_2429B73C0();
      v8 = v16;
      v7 = v11;
    }
  }

  if (v8 >> 62)
  {
    if (sub_2429B7530())
    {
      return v8;
    }

    goto LABEL_17;
  }

  if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_17:

    return 0;
  }

  return v8;
}

uint64_t sub_2429A4300(uint64_t a1)
{
  v2 = sub_2429B6EF0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = (MEMORY[0x28223BE20])();
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD7128, &qword_2429B8488);
    v10 = sub_2429B75C0();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_2429A56A4(&qword_27ECD7130);
      v18 = sub_2429B72F0();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_2429A56A4(&qword_27ECD7138);
          v25 = sub_2429B7300();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

unint64_t _sSo16EKRecurrenceRuleC21CalendarUIKitInternalE7convertyABSgSo013REMRecurrenceB0CFZ_0(void *a1)
{
  v2 = sub_2429B6E80();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v45 - v8;
  v10 = [a1 frequency];
  result = 0;
  if (v10 <= 3)
  {
    v48 = v10;
    v47 = [a1 interval];
    v12 = [a1 daysOfTheWeek];
    if (v12)
    {
      v13 = v12;
      sub_2429A565C(0, &qword_27ECD7118, 0x277D44720);
      v14 = sub_2429B7380();
    }

    else
    {
      v14 = 0;
    }

    v45 = sub_2429A4DD0(v14, 0x277CC5A88);

    v15 = [a1 daysOfTheMonth];
    if (v15)
    {
      v16 = v15;
      sub_2429A565C(0, &qword_27ECD7110, 0x277CCABB0);
      v46 = sub_2429B7380();
    }

    else
    {
      v46 = 0;
    }

    v17 = [a1 monthsOfTheYear];
    if (v17)
    {
      v18 = v17;
      sub_2429A565C(0, &qword_27ECD7110, 0x277CCABB0);
      v19 = sub_2429B7380();
    }

    else
    {
      v19 = 0;
    }

    v20 = [a1 weeksOfTheYear];
    if (v20)
    {
      v21 = v20;
      sub_2429A565C(0, &qword_27ECD7110, 0x277CCABB0);
      v22 = sub_2429B7380();
    }

    else
    {
      v22 = 0;
    }

    v23 = [a1 daysOfTheYear];
    if (v23)
    {
      v24 = v23;
      sub_2429A565C(0, &qword_27ECD7110, 0x277CCABB0);
      v25 = sub_2429B7380();
    }

    else
    {
      v25 = 0;
    }

    v26 = [a1 setPositions];
    if (v26)
    {
      v27 = v26;
      sub_2429A565C(0, &qword_27ECD7110, 0x277CCABB0);
      v28 = sub_2429B7380();
    }

    else
    {
      v28 = 0;
    }

    v29 = [a1 recurrenceEnd];
    if (v29)
    {
      v30 = v29;
      v31 = [v30 endDate];
      if (v31)
      {
        v32 = v31;
        sub_2429B6E70();

        (*(v3 + 32))(v9, v7, v2);
        v33 = objc_allocWithZone(MEMORY[0x277CC5A90]);
        v34 = sub_2429B6E60();
        v35 = [v33 initWithEndDate_];

        (*(v3 + 8))(v9, v2);
        v36 = objc_allocWithZone(MEMORY[0x277CC5AA8]);
        if (v45)
        {
          v37 = v46;
LABEL_28:
          sub_2429A565C(0, &qword_27ECD7120, 0x277CC5A88);
          v38 = sub_2429B7370();

          goto LABEL_29;
        }

        v38 = 0;
        v37 = v46;
      }

      else
      {
        result = [v30 occurrenceCount];
        if ((result & 0x8000000000000000) != 0)
        {
          __break(1u);
          return result;
        }

        v35 = [objc_allocWithZone(MEMORY[0x277CC5A90]) initWithOccurrenceCount_];

        v36 = objc_allocWithZone(MEMORY[0x277CC5AA8]);
        v37 = v46;
        if (v45)
        {
          goto LABEL_28;
        }

        v38 = 0;
      }
    }

    else
    {
      v36 = objc_allocWithZone(MEMORY[0x277CC5AA8]);
      v35 = 0;
      v38 = 0;
      v37 = v46;
      if (v45)
      {
        goto LABEL_28;
      }
    }

LABEL_29:
    if (v37)
    {
      sub_2429A565C(0, &qword_27ECD7110, 0x277CCABB0);
      v39 = sub_2429B7370();

      if (v19)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v39 = 0;
      if (v19)
      {
LABEL_31:
        sub_2429A565C(0, &qword_27ECD7110, 0x277CCABB0);
        v40 = sub_2429B7370();

        if (v22)
        {
          goto LABEL_32;
        }

        goto LABEL_37;
      }
    }

    v40 = 0;
    if (v22)
    {
LABEL_32:
      sub_2429A565C(0, &qword_27ECD7110, 0x277CCABB0);
      v41 = sub_2429B7370();

      if (v25)
      {
        goto LABEL_33;
      }

      goto LABEL_38;
    }

LABEL_37:
    v41 = 0;
    if (v25)
    {
LABEL_33:
      sub_2429A565C(0, &qword_27ECD7110, 0x277CCABB0);
      v42 = sub_2429B7370();

      if (v28)
      {
LABEL_34:
        sub_2429A565C(0, &qword_27ECD7110, 0x277CCABB0);
        v43 = sub_2429B7370();

LABEL_40:
        v44 = [v36 initRecurrenceWithFrequency:v48 interval:v47 daysOfTheWeek:v38 daysOfTheMonth:v39 monthsOfTheYear:v40 weeksOfTheYear:v41 daysOfTheYear:v42 setPositions:v43 end:v35];

        return v44;
      }

LABEL_39:
      v43 = 0;
      goto LABEL_40;
    }

LABEL_38:
    v42 = 0;
    if (v28)
    {
      goto LABEL_34;
    }

    goto LABEL_39;
  }

  return result;
}

unint64_t _sSo16EKRecurrenceRuleC21CalendarUIKitInternalE7convertySayABGSgSaySo013REMRecurrenceB0CGSgFZ_0(unint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v12 = MEMORY[0x277D84F90];
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_22:
    v3 = sub_2429B7530();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  v5 = MEMORY[0x277D84F90];
  while (v3 != v4)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x245D1D8C0](v4, a1);
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        goto LABEL_21;
      }

      v6 = *(a1 + 8 * v4 + 32);
    }

    v7 = v6;
    v8 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v9 = _sSo16EKRecurrenceRuleC21CalendarUIKitInternalE7convertyABSgSo013REMRecurrenceB0CFZ_0(v6);

    ++v4;
    if (v9)
    {
      MEMORY[0x245D1D630]();
      if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v10 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_2429B73A0();
      }

      sub_2429B73C0();
      v5 = v12;
      v4 = v8;
    }
  }

  if (v5 >> 62)
  {
    if (sub_2429B7530())
    {
      return v5;
    }

    goto LABEL_17;
  }

  if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_17:

    return 0;
  }

  return v5;
}

unint64_t sub_2429A4DD0(unint64_t result, Class *a2)
{
  if (result)
  {
    v3 = result;
    v4 = result >> 62 ? sub_2429B7530() : *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    result = MEMORY[0x277D84F90];
    if (v4)
    {
      v11 = MEMORY[0x277D84F90];
      result = sub_2429B7630();
      if (v4 < 0)
      {
        __break(1u);
      }

      else
      {
        v5 = 0;
        do
        {
          if ((v3 & 0xC000000000000001) != 0)
          {
            v6 = MEMORY[0x245D1D8C0](v5, v3);
          }

          else
          {
            v6 = *(v3 + 8 * v5 + 32);
          }

          v7 = v6;
          v8 = [v6 dayOfTheWeek];
          if ((v8 - 1) >= 7)
          {
            v9 = 7;
          }

          else
          {
            v9 = v8;
          }

          ++v5;
          [objc_allocWithZone(*a2) initWithDayOfTheWeek:v9 weekNumber:{objc_msgSend(v7, sel_weekNumber)}];

          sub_2429B7610();
          v10 = *(v11 + 16);
          sub_2429B7640();
          sub_2429B7650();
          sub_2429B7620();
        }

        while (v4 != v5);
        return v11;
      }
    }
  }

  return result;
}

unint64_t _sSo17REMRecurrenceRuleC21CalendarUIKitInternalE7convert_7account8reminderABSgSo012EKRecurrenceB0C_So11REMObjectIDCAKtFZ_0(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2429B6E80();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v49 - v12;
  v14 = [a1 frequency];
  result = 0;
  if (v14 <= 3)
  {
    v54 = v14;
    v55 = a2;
    v56 = a3;
    v53 = [objc_opt_self() newObjectID];
    v52 = [a1 interval];
    v51 = [a1 firstDayOfTheWeek];
    v16 = [a1 daysOfTheWeek];
    if (v16)
    {
      v17 = v16;
      sub_2429A565C(0, &qword_27ECD7120, 0x277CC5A88);
      v18 = sub_2429B7380();
    }

    else
    {
      v18 = 0;
    }

    v49 = sub_2429A4DD0(v18, 0x277D44720);

    v19 = [a1 daysOfTheMonth];
    if (v19)
    {
      v20 = v19;
      sub_2429A565C(0, &qword_27ECD7110, 0x277CCABB0);
      v50 = sub_2429B7380();
    }

    else
    {
      v50 = 0;
    }

    v21 = [a1 monthsOfTheYear];
    if (v21)
    {
      v22 = v21;
      sub_2429A565C(0, &qword_27ECD7110, 0x277CCABB0);
      v23 = sub_2429B7380();
    }

    else
    {
      v23 = 0;
    }

    v24 = [a1 weeksOfTheYear];
    if (v24)
    {
      v25 = v24;
      sub_2429A565C(0, &qword_27ECD7110, 0x277CCABB0);
      v26 = sub_2429B7380();
    }

    else
    {
      v26 = 0;
    }

    v27 = [a1 daysOfTheYear];
    if (v27)
    {
      v28 = v27;
      sub_2429A565C(0, &qword_27ECD7110, 0x277CCABB0);
      v29 = sub_2429B7380();
    }

    else
    {
      v29 = 0;
    }

    v30 = [a1 setPositions];
    if (v30)
    {
      v31 = v30;
      sub_2429A565C(0, &qword_27ECD7110, 0x277CCABB0);
      v32 = sub_2429B7380();
    }

    else
    {
      v32 = 0;
    }

    v33 = [a1 recurrenceEnd];
    if (v33)
    {
      v34 = v33;
      v35 = [v34 endDate];
      if (v35)
      {
        v36 = v35;
        sub_2429B6E70();

        (*(v7 + 32))(v13, v11, v6);
        v37 = sub_2429B6E60();
        v38 = [objc_opt_self() recurrenceEndWithEndDate_];

        (*(v7 + 8))(v13, v6);
        v39 = objc_allocWithZone(MEMORY[0x277D44738]);
        if (v49)
        {
          v40 = v50;
LABEL_28:
          sub_2429A565C(0, &qword_27ECD7118, 0x277D44720);
          v41 = sub_2429B7370();

          goto LABEL_29;
        }

        v41 = 0;
        v40 = v50;
      }

      else
      {
        result = [v34 occurrenceCount];
        if ((result & 0x8000000000000000) != 0)
        {
          __break(1u);
          return result;
        }

        v38 = [objc_opt_self() recurrenceEndWithOccurrenceCount_];

        v39 = objc_allocWithZone(MEMORY[0x277D44738]);
        v40 = v50;
        if (v49)
        {
          goto LABEL_28;
        }

        v41 = 0;
      }
    }

    else
    {
      v39 = objc_allocWithZone(MEMORY[0x277D44738]);
      v38 = 0;
      v41 = 0;
      v40 = v50;
      if (v49)
      {
        goto LABEL_28;
      }
    }

LABEL_29:
    if (v40)
    {
      sub_2429A565C(0, &qword_27ECD7110, 0x277CCABB0);
      v42 = sub_2429B7370();

      if (v23)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v42 = 0;
      if (v23)
      {
LABEL_31:
        sub_2429A565C(0, &qword_27ECD7110, 0x277CCABB0);
        v43 = sub_2429B7370();

        if (v26)
        {
          goto LABEL_32;
        }

        goto LABEL_37;
      }
    }

    v43 = 0;
    if (v26)
    {
LABEL_32:
      sub_2429A565C(0, &qword_27ECD7110, 0x277CCABB0);
      v44 = sub_2429B7370();

      if (v29)
      {
        goto LABEL_33;
      }

      goto LABEL_38;
    }

LABEL_37:
    v44 = 0;
    if (v29)
    {
LABEL_33:
      sub_2429A565C(0, &qword_27ECD7110, 0x277CCABB0);
      v45 = sub_2429B7370();

      if (v32)
      {
LABEL_34:
        sub_2429A565C(0, &qword_27ECD7110, 0x277CCABB0);
        v46 = sub_2429B7370();

LABEL_40:
        v47 = v53;
        v48 = [v39 initRecurrenceRuleWithObjectID:v53 accountID:v55 reminderID:v56 frequency:v54 interval:v52 firstDayOfTheWeek:v51 daysOfTheWeek:v41 daysOfTheMonth:v42 monthsOfTheYear:v43 weeksOfTheYear:v44 daysOfTheYear:v45 setPositions:v46 end:v38];

        return v48;
      }

LABEL_39:
      v46 = 0;
      goto LABEL_40;
    }

LABEL_38:
    v45 = 0;
    if (v32)
    {
      goto LABEL_34;
    }

    goto LABEL_39;
  }

  return result;
}

uint64_t sub_2429A565C(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_2429A56A4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_2429B6EF0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t EKEvent.recurrentReminderOccurrenceDate.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECD7080, &qword_2429B84F0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v15 - v5;
  if ([v2 hasRecurrenceRules])
  {
LABEL_4:
    v8 = [v2 startDateComponents];
    if (v8)
    {
      v9 = v8;
      sub_2429B6D80();

      v10 = sub_2429B6DB0();
      (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
    }

    else
    {
      v11 = sub_2429B6DB0();
      (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
    }

    return sub_2429A58B4(v6, a1);
  }

  v7 = [v2 masterEvent];
  if (v7)
  {

    goto LABEL_4;
  }

  v13 = sub_2429B6DB0();
  v14 = *(*(v13 - 8) + 56);

  return v14(a1, 1, 1, v13);
}

uint64_t sub_2429A58B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECD7080, &qword_2429B84F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2429A5924(void *a1)
{
  v2 = sub_2429B6D40();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v4 = sub_2429B7270();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD7140, &qword_2429B84A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v15 - v10;
  sub_2429A5BE4(a1, v15 - v10);
  if ((*(v5 + 48))(v11, 1, v4) == 1)
  {
    sub_2429A234C(v11, &qword_27ECD7140, &qword_2429B84A0);
    return 0;
  }

  else
  {
    v13 = (*(v5 + 32))(v15 - v7, v11, v4);
    MEMORY[0x28223BE20](v13);
    (*(v5 + 16))(v15 - v7, v15 - v7, v4);
    v15[1] = MEMORY[0x277D84F90];
    sub_2429A5F3C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD7150, &qword_2429B84A8);
    sub_2429A5F94();
    sub_2429B74F0();
    sub_2429B7280();
    objc_allocWithZone(sub_2429B6F40());
    sub_2429A6040();
    v14 = sub_2429B6F30();
    (*(v5 + 8))(v15 - v7, v4);
    return v14;
  }
}

uint64_t sub_2429A5BE4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD7260, &unk_2429B83B0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v24 - v6;
  v8 = sub_2429B6E20();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 uniqueID];
  if (v13)
  {
    v14 = v13;
    sub_2429B7320();

    sub_2429B6E10();

    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      sub_2429A234C(v7, &qword_27ECD7260, &unk_2429B83B0);
    }

    else
    {
      (*(v9 + 32))(v12, v7, v8);
      v15 = sub_2429B6DF0();
      v16 = [objc_opt_self() objectIDWithURL_];

      (*(v9 + 8))(v12, v8);
      if (v16)
      {
        v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD7168, &qword_2429B84E8);
        v18 = *(*(v17 - 8) + 64);
        MEMORY[0x28223BE20](v17 - 8);
        v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
        v20 = sub_2429A645C(a1, &v24 - v19);
        MEMORY[0x28223BE20](v20);
        sub_2429A67CC(&v24 - v19, &v24 - v19);
        sub_2429B7250();
        sub_2429A234C(&v24 - v19, &qword_27ECD7168, &qword_2429B84E8);
        v21 = sub_2429B7270();
        return (*(*(v21 - 8) + 56))(a2, 0, 1, v21);
      }
    }
  }

  v23 = sub_2429B7270();
  return (*(*(v23 - 8) + 56))(a2, 1, 1, v23);
}

unint64_t sub_2429A5F3C()
{
  result = qword_27ECD7148;
  if (!qword_27ECD7148)
  {
    sub_2429B6D40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECD7148);
  }

  return result;
}

unint64_t sub_2429A5F94()
{
  result = qword_27ECD7158;
  if (!qword_27ECD7158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECD7150, &qword_2429B84A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECD7158);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_2429A6040()
{
  result = qword_27ECD7160;
  if (!qword_27ECD7160)
  {
    sub_2429B7280();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECD7160);
  }

  return result;
}

uint64_t sub_2429A60DC(void *a1)
{
  v2 = sub_2429B7270();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD7140, &qword_2429B84A0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v13 - v9;
  sub_2429A5BE4(a1, &v13 - v9);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    sub_2429A234C(v10, &qword_27ECD7140, &qword_2429B84A0);
    return 0;
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    v12 = sub_2429B7260();
    (*(v3 + 8))(v6, v2);
    return v12;
  }
}

uint64_t sub_2429A645C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECD7080, &qword_2429B84F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19 - v6;
  v8 = sub_2429B6DB0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - v14;
  EKEvent.recurrentReminderOccurrenceDate.getter(v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_2429A234C(v7, &unk_27ECD7080, &qword_2429B84F0);
    v16 = 1;
  }

  else
  {
    (*(v9 + 32))(v15, v7, v8);
    (*(v9 + 16))(v13, v15, v8);
    [a1 CUIK_reminderShouldBeEditable];
    sub_2429B7290();
    (*(v9 + 8))(v15, v8);
    v16 = 0;
  }

  v17 = sub_2429B72A0();
  return (*(*(v17 - 8) + 56))(a2, v16, 1, v17);
}

id ReminderEntityAnnotation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ReminderEntityAnnotation.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ReminderEntityAnnotation();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ReminderEntityAnnotation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ReminderEntityAnnotation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2429A67CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD7168, &qword_2429B84E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id CUIKIReminderSyncTrigger.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CUIKIReminderSyncTrigger.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CUIKIReminderSyncTrigger();
  return objc_msgSendSuper2(&v2, sel_init);
}

id CUIKIReminderSyncTrigger.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CUIKIReminderSyncTrigger();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2429A6940(uint64_t a1)
{
  v2 = sub_2429B7120();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  (*(v3 + 16))(&v9 - v5, a1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (!MEMORY[0x277D45B28] || v7 != *MEMORY[0x277D45B28])
  {
    if (MEMORY[0x277D45B20] && v7 == *MEMORY[0x277D45B20])
    {
      return 1;
    }

    if (MEMORY[0x277D45B18] && v7 == *MEMORY[0x277D45B18])
    {
      return 2;
    }

    (*(v3 + 8))(v6, v2);
  }

  return 0;
}

uint64_t sub_2429A6A90()
{
  result = sub_2429B7310();
  qword_27ECD7170 = result;
  return result;
}

uint64_t sub_2429A6AEC()
{
  result = sub_2429B7310();
  qword_27ECD7178 = result;
  return result;
}

id sub_2429A6B48(void *a1, void **a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v3 = *a2;
  }

  return v3;
}

id CUIKIReminderEditorImplementation.__allocating_init(eventStore:alertDisplayer:undoManager:changeTracker:)(void *a1, uint64_t a2, void *a3, void *a4)
{
  v5 = v4;
  v10 = objc_allocWithZone(v5);
  swift_unknownObjectWeakInit();
  *&v10[OBJC_IVAR____TtC21CalendarUIKitInternal33CUIKIReminderEditorImplementation__requestPerformer] = 0;
  swift_unknownObjectWeakAssign();
  v11 = [a4 impl];
  sub_2429B74E0();
  swift_unknownObjectRelease();
  type metadata accessor for PendingReminderTracker();
  swift_dynamicCast();
  *&v10[OBJC_IVAR____TtC21CalendarUIKitInternal33CUIKIReminderEditorImplementation_changeTracker] = v16;
  *&v10[OBJC_IVAR____TtC21CalendarUIKitInternal33CUIKIReminderEditorImplementation_eventStore] = a1;
  *&v10[OBJC_IVAR____TtC21CalendarUIKitInternal33CUIKIReminderEditorImplementation_alertDisplayer] = a2;
  v15.receiver = v10;
  v15.super_class = v5;
  v12 = a1;
  swift_unknownObjectRetain();
  v13 = objc_msgSendSuper2(&v15, sel_init);

  swift_unknownObjectRelease();
  return v13;
}

id CUIKIReminderEditorImplementation.init(eventStore:alertDisplayer:undoManager:changeTracker:)(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = sub_2429A0360(a1, a2, a3, a4);

  swift_unknownObjectRelease();
  return v7;
}

uint64_t sub_2429A6DA8()
{
  v1 = OBJC_IVAR____TtC21CalendarUIKitInternal33CUIKIReminderEditorImplementation_alertDisplayer;
  swift_beginAccess();
  v2 = *(v0 + v1);
  return swift_unknownObjectRetain();
}

uint64_t sub_2429A6E7C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21CalendarUIKitInternal33CUIKIReminderEditorImplementation_alertDisplayer;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  swift_unknownObjectRelease();
  v5 = *(v1 + OBJC_IVAR____TtC21CalendarUIKitInternal33CUIKIReminderEditorImplementation__requestPerformer);
  *(v1 + OBJC_IVAR____TtC21CalendarUIKitInternal33CUIKIReminderEditorImplementation__requestPerformer) = 0;
}

uint64_t sub_2429A6EE8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC21CalendarUIKitInternal33CUIKIReminderEditorImplementation_alertDisplayer;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v6 = *(v3 + OBJC_IVAR____TtC21CalendarUIKitInternal33CUIKIReminderEditorImplementation__requestPerformer);
  *(v3 + OBJC_IVAR____TtC21CalendarUIKitInternal33CUIKIReminderEditorImplementation__requestPerformer) = 0;
}

uint64_t (*sub_2429A6F64(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_2429A6FC8;
}

uint64_t sub_2429A6FC8(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    v6 = *(v5 + OBJC_IVAR____TtC21CalendarUIKitInternal33CUIKIReminderEditorImplementation__requestPerformer);
    *(v5 + OBJC_IVAR____TtC21CalendarUIKitInternal33CUIKIReminderEditorImplementation__requestPerformer) = 0;
  }

  return result;
}

uint64_t sub_2429A7024()
{
  v1 = OBJC_IVAR____TtC21CalendarUIKitInternal33CUIKIReminderEditorImplementation__requestPerformer;
  if (*(v0 + OBJC_IVAR____TtC21CalendarUIKitInternal33CUIKIReminderEditorImplementation__requestPerformer))
  {
    v2 = *(v0 + OBJC_IVAR____TtC21CalendarUIKitInternal33CUIKIReminderEditorImplementation__requestPerformer);
  }

  else
  {
    v3 = sub_2429B7110();
    v4 = *(v3 - 8);
    v5 = *(v4 + 64);
    MEMORY[0x28223BE20](v3);
    v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
    sub_2429B7100();
    v7 = OBJC_IVAR____TtC21CalendarUIKitInternal33CUIKIReminderEditorImplementation_alertDisplayer;
    swift_beginAccess();
    v8 = *(v0 + v7);
    v18 = &type metadata for CUIKIReminderEditorImplementation.AlertDisplayerAdapter;
    v19 = sub_2429B1038();
    v17 = v8;
    swift_unknownObjectRetain();
    v9 = v0;
    v10 = sub_2429B70F0();
    MEMORY[0x28223BE20](v10);
    (*(v4 + 16))(&v16[-v6], &v16[-v6], v3);
    v11 = sub_2429B6FE0();
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();
    v2 = sub_2429B6FA0();
    (*(v4 + 8))(&v16[-v6], v3);
    v14 = *(v9 + v1);
    *(v9 + v1) = v2;
  }

  return v2;
}

uint64_t sub_2429A7200(unint64_t a1)
{
  v139[8] = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD71A8, &qword_2429B8570);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v120 = &v104 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v132 = &v104 - v6;
  v131 = sub_2429B6DB0();
  v121 = *(v131 - 8);
  v7 = *(v121 + 64);
  v8 = MEMORY[0x28223BE20](v131);
  v128 = &v104 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v133 = &v104 - v9;
  v10 = MEMORY[0x277D84F90];
  v139[0] = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_45;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2429B7530())
  {
    v127 = v7;
    v12 = 0;
    v13 = a1 & 0xC000000000000001;
    v14 = a1 & 0xFFFFFFFFFFFFFF8;
    v134 = *MEMORY[0x277CF7228];
    v15 = &selRef_setData_;
    v129 = a1;
    do
    {
      if (v13)
      {
        v16 = MEMORY[0x245D1D8C0](v12, a1);
      }

      else
      {
        if (v12 >= *(v14 + 16))
        {
          goto LABEL_40;
        }

        v16 = *(a1 + 8 * v12 + 32);
      }

      v7 = v16;
      v17 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      v18 = sub_2429B0B00(v16);
      if (v18 && (v18, ([v7 v15[5]] & 1) != 0) && (objc_msgSend(v7, sel_completed) & 1) != 0)
      {
        sub_2429B7610();
        v19 = *(v139[0] + 2);
        sub_2429B7640();
        v15 = &selRef_setData_;
        sub_2429B7650();
        sub_2429B7620();
        a1 = v129;
      }

      else
      {
      }

      ++v12;
    }

    while (v17 != i);
    v20 = 0;
    v105 = v139[0];
    v139[0] = v10;
    while (1)
    {
      if (v13)
      {
        v21 = MEMORY[0x245D1D8C0](v20, a1);
      }

      else
      {
        if (v20 >= *(v14 + 16))
        {
          goto LABEL_42;
        }

        v21 = *(a1 + 8 * v20 + 32);
      }

      v7 = v21;
      v22 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      v23 = sub_2429B0B00(v21);
      if (v23 && (v23, ([v7 v15[5]] & 1) != 0) && !objc_msgSend(v7, sel_completed))
      {
        sub_2429B7610();
        v24 = *(v139[0] + 2);
        sub_2429B7640();
        v15 = &selRef_setData_;
        sub_2429B7650();
        sub_2429B7620();
        a1 = v129;
      }

      else
      {
      }

      ++v20;
      if (v22 == i)
      {
        v7 = 0;
        v104 = v139[0];
        v139[0] = v10;
        v25 = *MEMORY[0x277CF7288];
        while (1)
        {
          if (v13)
          {
            v26 = MEMORY[0x245D1D8C0](v7, a1);
          }

          else
          {
            if (v7 >= *(v14 + 16))
            {
              goto LABEL_44;
            }

            v26 = *(a1 + 8 * v7 + 32);
          }

          v27 = v26;
          v10 = (v7 + 1);
          if (__OFADD__(v7, 1))
          {
            goto LABEL_43;
          }

          if ([v26 v15[5]])
          {
            sub_2429B7610();
            v28 = *(v139[0] + 2);
            sub_2429B7640();
            v15 = &selRef_setData_;
            sub_2429B7650();
            sub_2429B7620();
            a1 = v129;
          }

          else
          {
          }

          ++v7;
          if (v10 == i)
          {
            v29 = v139[0];
            v7 = v127;
            if ((v139[0] & 0x8000000000000000) == 0)
            {
              goto LABEL_47;
            }

            goto LABEL_87;
          }
        }
      }
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    ;
  }

  v29 = MEMORY[0x277D84F90];
  v105 = MEMORY[0x277D84F90];
  v104 = MEMORY[0x277D84F90];
  if ((MEMORY[0x277D84F90] & 0x8000000000000000) == 0)
  {
LABEL_47:
    if ((v29 & 0x4000000000000000) == 0)
    {
      v30 = *(v29 + 16);
      if (v30)
      {
        goto LABEL_49;
      }

      goto LABEL_88;
    }
  }

LABEL_87:
  while (1)
  {
    v30 = sub_2429B7530();
    if (!v30)
    {
      break;
    }

LABEL_49:
    v119 = OBJC_IVAR____TtC21CalendarUIKitInternal33CUIKIReminderEditorImplementation_eventStore;
    v109 = OBJC_IVAR____TtC21CalendarUIKitInternal33CUIKIReminderEditorImplementation_changeTracker;
    v117 = OBJC_IVAR____TtC21CalendarUIKitInternal33CUIKIReminderEditorImplementation__requestPerformer;
    v31 = v29 & 0xC000000000000001;
    v107 = OBJC_IVAR____TtC21CalendarUIKitInternal33CUIKIReminderEditorImplementation_alertDisplayer;
    swift_beginAccess();
    v32 = 0;
    v116 = v121 + 16;
    v115 = (v7 + 7);
    v114 = v121 + 32;
    v113 = (v121 + 8);
    *(&v33 + 1) = 3;
    v108 = xmmword_2429B8550;
    *&v33 = 138412290;
    v106 = v33;
    v112 = v29;
    v111 = v29 & 0xC000000000000001;
    v118 = v30;
    while (1)
    {
      if (v31)
      {
        v34 = MEMORY[0x245D1D8C0](v32, v29);
      }

      else
      {
        if (v32 >= *(v29 + 16))
        {
          goto LABEL_86;
        }

        v34 = *(v29 + 8 * v32 + 32);
      }

      v35 = v34;
      v36 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      v37 = sub_2429B0B00(v34);
      if (v37)
      {
        v38 = v37;
        v39 = [v35 startDateComponents];
        if (v39)
        {
          v40 = v39;
          sub_2429B6D80();

          v41 = [v35 sequenceNumber];
          v42 = v130;
          v43 = *&v130[v119];
          v44 = sub_2429B74B0();
          v139[0] = 0;
          v45 = [v43 saveEvent:v35 span:v44 commit:0 error:v139];
          v129 = v32 + 1;
          v134 = v38;
          LODWORD(v127) = v41;
          if (v45)
          {
            v46 = *&v42[v109];
            v47 = v139[0];
            sub_2429B2AC8(v35, v41, 1, v46);
            v48 = [v35 objectID];
            if (!v48)
            {
              __break(1u);
            }

            v49 = v48;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD71C0, &qword_2429B85A0);
            v50 = swift_allocObject();
            *(v50 + 16) = v108;
            *(v50 + 32) = v49;
            v51 = v49;
            sub_2429B3FB8(v50);

            v52 = v117;
          }

          else
          {
            v58 = v139[0];
            v59 = sub_2429B6DD0();

            swift_willThrow();
            if (qword_28118FA48 != -1)
            {
              swift_once();
            }

            v110 = 0;
            v60 = sub_2429B72D0();
            __swift_project_value_buffer(v60, qword_28118FA50);
            v61 = v59;
            v62 = sub_2429B72B0();
            v63 = sub_2429B7480();

            if (os_log_type_enabled(v62, v63))
            {
              v64 = swift_slowAlloc();
              v65 = v32;
              v66 = swift_slowAlloc();
              *v64 = v106;
              v67 = v59;
              v68 = _swift_stdlib_bridgeErrorToNSError();
              *(v64 + 4) = v68;
              *v66 = v68;
              _os_log_impl(&dword_24299E000, v62, v63, "Error saving integration event: %@", v64, 0xCu);
              sub_2429A234C(v66, &qword_27ECD71B8, &qword_2429B8598);
              v69 = v66;
              v32 = v65;
              MEMORY[0x245D1DF70](v69, -1, -1);
              MEMORY[0x245D1DF70](v64, -1, -1);
            }

            else
            {
            }

            v52 = v117;
            v42 = v130;
          }

          v126 = v32;
          if (*&v42[v52])
          {
            v70 = *&v42[v52];
          }

          else
          {
            v71 = sub_2429B7110();
            v125 = &v104;
            v72 = *(v71 - 8);
            v73 = *(v72 + 64);
            MEMORY[0x28223BE20](v71);
            v74 = &v104 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_2429B7100();
            v75 = *&v130[v107];
            v139[3] = &type metadata for CUIKIReminderEditorImplementation.AlertDisplayerAdapter;
            v139[4] = sub_2429B1038();
            v139[0] = v75;
            swift_unknownObjectRetain();
            v76 = sub_2429B70F0();
            MEMORY[0x28223BE20](v76);
            v42 = v130;
            (*(v72 + 16))(v74, v74, v71);
            v77 = sub_2429B6FE0();
            v78 = *(v77 + 48);
            v79 = *(v77 + 52);
            swift_allocObject();
            v80 = sub_2429B6FA0();
            (*(v72 + 8))(v74, v71);
            v81 = *&v42[v52];
            *&v42[v52] = v80;
            v70 = v80;
          }

          v124 = sub_2429B7450();
          v125 = *(v124 - 8);
          (v125[7])(v132, 1, 1, v124);
          v82 = v121;
          (*(v121 + 16))(v128, v133, v131);
          sub_2429B7430();

          v123 = v42;
          v83 = v134;

          v122 = v35;
          v84 = sub_2429B7420();
          v85 = (*(v82 + 80) + 48) & ~*(v82 + 80);
          v86 = &v115[v85] & 0xFFFFFFFFFFFFFFF8;
          v87 = (v86 + 15) & 0xFFFFFFFFFFFFFFF8;
          v88 = (v87 + 11) & 0xFFFFFFFFFFFFFFF8;
          v89 = swift_allocObject();
          *(v89 + 2) = v84;
          v90 = v123;
          *(v89 + 3) = MEMORY[0x277D85700];
          *(v89 + 4) = v90;
          v134 = v83;
          *(v89 + 5) = v83;
          v91 = v125;
          (*(v82 + 32))(&v89[v85], v128, v131);
          *&v89[v86] = v70;
          v92 = v122;
          *&v89[v87] = v122;
          v93 = v124;
          *&v89[v88] = v127;
          v94 = v120;
          sub_2429B1D18(v132, v120, &qword_27ECD71A8, &qword_2429B8570);
          v95 = (v91[6])(v94, 1, v93);

          if (v95 == 1)
          {
            sub_2429A234C(v94, &qword_27ECD71A8, &qword_2429B8570);
          }

          else
          {
            sub_2429B7440();
            (v91[1])(v94, v93);
          }

          v29 = v112;
          v31 = v111;
          v96 = *(v89 + 2);
          v97 = *(v89 + 3);
          swift_unknownObjectRetain();

          if (v96)
          {
            swift_getObjectType();
            v98 = sub_2429B73E0();
            v100 = v99;
            swift_unknownObjectRelease();
          }

          else
          {
            v98 = 0;
            v100 = 0;
          }

          sub_2429A234C(v132, &qword_27ECD71A8, &qword_2429B8570);
          v101 = swift_allocObject();
          *(v101 + 16) = &unk_2429B8580;
          *(v101 + 24) = v89;
          if (v100 | v98)
          {
            v135 = 0;
            v136 = 0;
            v137 = v98;
            v138 = v100;
          }

          v30 = v118;
          v32 = v126;
          v36 = v129;
          v7 = swift_task_create();

          (*v113)(v133, v131);
        }

        else
        {
          if (qword_28118FA48 != -1)
          {
            swift_once();
          }

          v53 = sub_2429B72D0();
          __swift_project_value_buffer(v53, qword_28118FA50);
          v7 = sub_2429B72B0();
          v54 = sub_2429B7480();
          if (os_log_type_enabled(v7, v54))
          {
            v55 = swift_slowAlloc();
            v134 = v38;
            v56 = v55;
            *v55 = 0;
            _os_log_impl(&dword_24299E000, v7, v54, "Not saving changes to reminder without a date", v55, 2u);
            v57 = v56;
            v36 = v32 + 1;
            MEMORY[0x245D1DF70](v57, -1, -1);
          }

          else
          {
          }
        }
      }

      else
      {
      }

      ++v32;
      if (v36 == v30)
      {
        goto LABEL_88;
      }
    }

    __break(1u);
LABEL_86:
    __break(1u);
  }

LABEL_88:

  sub_2429A8838(v105, 1);

  sub_2429A8838(v104, 0);

  v103 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2429A80BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 64) = v15;
  *(v8 + 16) = a4;
  *(v8 + 24) = a8;
  *(v8 + 32) = sub_2429B7430();
  *(v8 + 40) = sub_2429B7420();
  v12 = swift_task_alloc();
  *(v8 + 48) = v12;
  *v12 = v8;
  v12[1] = sub_2429A81A0;

  return sub_2429AC6FC(a5, a6, a7);
}

uint64_t sub_2429A81A0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 48);
  v5 = *v2;
  *(*v2 + 56) = a1;

  v6 = *(v3 + 40);
  v7 = *(v3 + 32);
  if (v1)
  {

    v8 = sub_2429B73E0();
    v10 = v9;
    v11 = sub_2429A8408;
  }

  else
  {
    v8 = sub_2429B73E0();
    v10 = v12;
    v11 = sub_2429A832C;
  }

  return MEMORY[0x2822009F8](v11, v8, v10);
}

uint64_t sub_2429A832C()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);

  if (v1)
  {
    v3 = *(v0 + 56);
    v4 = *(v0 + 64);
    v5 = *(*(v0 + 16) + OBJC_IVAR____TtC21CalendarUIKitInternal33CUIKIReminderEditorImplementation_changeTracker);
    v6 = *(v0 + 24);
    v7 = v3;
    sub_2429B5F4C(v6, v4, 1, v5, v6, v7);
  }

  else
  {
    v8 = *(*(v0 + 16) + OBJC_IVAR____TtC21CalendarUIKitInternal33CUIKIReminderEditorImplementation_changeTracker);
    sub_2429B2620(*(v0 + 24), 1);
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_2429A8408()
{
  v1 = *(v0 + 40);

  v2 = *(*(v0 + 16) + OBJC_IVAR____TtC21CalendarUIKitInternal33CUIKIReminderEditorImplementation_changeTracker);
  sub_2429B2620(*(v0 + 24), 1);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2429A8480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD71A8, &qword_2429B8570);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_2429B1D18(a3, v27 - v11, &qword_27ECD71A8, &qword_2429B8570);
  v13 = sub_2429B7450();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_2429A234C(v12, &qword_27ECD71A8, &qword_2429B8570);
  }

  else
  {
    sub_2429B7440();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_2429B73E0();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_2429B7330() + 32;
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

      sub_2429A234C(a3, &qword_27ECD71A8, &qword_2429B8570);

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

  sub_2429A234C(a3, &qword_27ECD71A8, &qword_2429B8570);
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

uint64_t sub_2429A8838(unint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v4) = a2;
  v56[15] = *MEMORY[0x277D85DE8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD71A8, &qword_2429B8570);
  v7 = *(*(v6 - 8) + 64);
  result = MEMORY[0x28223BE20](v6 - 8);
  v10 = (&v45 - v9);
  if (a1 >> 62)
  {
    goto LABEL_24;
  }

  v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v11)
  {
    do
    {
      v45 = v10;
      v46 = v4;
      v12 = objc_opt_self();
      v13 = 0;
      v53 = *&v3[OBJC_IVAR____TtC21CalendarUIKitInternal33CUIKIReminderEditorImplementation_eventStore];
      v54 = v12;
      v55 = a1 & 0xC000000000000001;
      v51 = OBJC_IVAR____TtC21CalendarUIKitInternal33CUIKIReminderEditorImplementation_changeTracker;
      v49 = a1 & 0xFFFFFFFFFFFFFF8;
      v52 = xmmword_2429B8400;
      *(&v14 + 1) = 3;
      v50 = xmmword_2429B8550;
      *&v14 = 138412290;
      v47 = v14;
      v48 = v11;
      while (1)
      {
        if (v55)
        {
          v22 = MEMORY[0x245D1D8C0](v13, a1);
        }

        else
        {
          if (v13 >= *(v49 + 16))
          {
            goto LABEL_23;
          }

          v22 = *(a1 + 8 * v13 + 32);
        }

        v10 = v22;
        v23 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        v24 = [v54 defaultCenter];
        if (qword_27ECD7008 != -1)
        {
          swift_once();
        }

        v25 = qword_27ECD7178;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD7240, &qword_2429B86B8);
        inited = swift_initStackObject();
        *(inited + 16) = v52;
        v56[0] = 0x746E657665;
        v56[1] = 0xE500000000000000;
        sub_2429B7580();
        *(inited + 96) = sub_2429A565C(0, &qword_27ECD7230, 0x277CC5A28);
        *(inited + 72) = v10;
        v27 = v10;
        sub_2429B12A8(inited);
        swift_setDeallocating();
        sub_2429A234C(inited + 32, &qword_27ECD7248, &qword_2429B86C0);
        v28 = sub_2429B72E0();

        [v24 postNotificationName:v25 object:0 userInfo:v28];

        v56[0] = 0;
        if ([v53 saveEvent:v27 span:0 commit:0 error:v56])
        {
          v10 = *&v3[v51];
          v29 = v56[0];
          sub_2429B2AC8(v27, [v27 sequenceNumber], 1, v10);
          v30 = [v27 objectID];
          if (!v30)
          {
            __break(1u);
          }

          v31 = v30;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD71C0, &qword_2429B85A0);
          v32 = swift_allocObject();
          *(v32 + 16) = v50;
          *(v32 + 32) = v31;
          v4 = v31;
          sub_2429B3FB8(v32);
        }

        else
        {
          v33 = v56[0];
          v4 = sub_2429B6DD0();

          swift_willThrow();
          if (qword_28118FA48 != -1)
          {
            swift_once();
          }

          v34 = sub_2429B72D0();
          __swift_project_value_buffer(v34, qword_28118FA50);
          v35 = v4;
          v10 = sub_2429B72B0();
          v36 = sub_2429B7480();

          if (os_log_type_enabled(v10, v36))
          {
            v15 = swift_slowAlloc();
            v16 = v3;
            v17 = a1;
            v18 = swift_slowAlloc();
            *v15 = v47;
            v19 = v4;
            v20 = _swift_stdlib_bridgeErrorToNSError();
            *(v15 + 4) = v20;
            *v18 = v20;
            _os_log_impl(&dword_24299E000, v10, v36, "Error saving integration event: %@", v15, 0xCu);
            sub_2429A234C(v18, &qword_27ECD71B8, &qword_2429B8598);
            v21 = v18;
            a1 = v17;
            v3 = v16;
            v11 = v48;
            MEMORY[0x245D1DF70](v21, -1, -1);
            MEMORY[0x245D1DF70](v15, -1, -1);
          }

          else
          {
          }
        }

        ++v13;
        if (v23 == v11)
        {
          v37 = sub_2429A7024();
          v38 = sub_2429B7450();
          v39 = v45;
          (*(*(v38 - 8) + 56))(v45, 1, 1, v38);
          sub_2429B7430();

          v40 = v3;

          v41 = sub_2429B7420();
          v42 = swift_allocObject();
          v43 = MEMORY[0x277D85700];
          *(v42 + 16) = v41;
          *(v42 + 24) = v43;
          *(v42 + 32) = a1;
          *(v42 + 40) = v40;
          *(v42 + 48) = v46 & 1;
          *(v42 + 56) = v37;
          sub_2429AA84C(0, 0, v39, &unk_2429B86D8, v42);

          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      result = sub_2429B7530();
      v11 = result;
    }

    while (result);
  }

LABEL_21:
  v44 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2429A8EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  v16 = *MEMORY[0x277D85DE8];
  *(v7 + 240) = a5;
  *(v7 + 248) = a7;
  *(v7 + 456) = a6;
  *(v7 + 232) = a4;
  v8 = sub_2429B6E20();
  *(v7 + 256) = v8;
  v9 = *(v8 - 8);
  *(v7 + 264) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 272) = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECD7080, &qword_2429B84F0) - 8) + 64) + 15;
  *(v7 + 280) = swift_task_alloc();
  *(v7 + 288) = swift_task_alloc();
  sub_2429B7430();
  *(v7 + 296) = sub_2429B7420();
  v12 = sub_2429B73E0();
  *(v7 + 304) = v12;
  *(v7 + 312) = v13;
  v14 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_2429A9024, v12, v13);
}

uint64_t sub_2429A9024()
{
  v42 = *MEMORY[0x277D85DE8];
  v1 = v0[29];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v40 = v0[29];
    }

    v2 = sub_2429B7530();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = OBJC_IVAR____TtC21CalendarUIKitInternal33CUIKIReminderEditorImplementation_eventStore;
  v0[40] = v2;
  v0[41] = v3;
  v4 = OBJC_IVAR____TtC21CalendarUIKitInternal33CUIKIReminderEditorImplementation_undoManager;
  v0[42] = OBJC_IVAR____TtC21CalendarUIKitInternal33CUIKIReminderEditorImplementation_changeTracker;
  v0[43] = v4;
  if (v2)
  {
    v5 = v0[29];
    if ((v5 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x245D1D8C0](0);
    }

    else
    {
      if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
      }

      v6 = *(v5 + 32);
    }

    v7 = v6;
    v0[44] = v6;
    v0[45] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD7210, &qword_2429B86A0);
    v8 = sub_2429B7000();
    v9 = *(v8 - 8);
    v10 = *(v9 + 72);
    v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v12 = swift_allocObject();
    v13 = sub_2429B0B00(v7);
    if (!v13)
    {
      __break(1u);
      return MEMORY[0x2822009F8](v13, v14, v15);
    }

    if (([v7 hasRecurrenceRules] & 1) == 0)
    {
      v16 = [v7 masterEvent];
      if (!v16)
      {
        v38 = v0[36];
        v39 = sub_2429B6DB0();
        (*(*(v39 - 8) + 56))(v38, 1, 1, v39);
LABEL_18:
        v31 = v0[36];
        sub_2429B6FF0();
        v32 = sub_2429B1CC4(&qword_27ECD7218);
        v41 = MEMORY[0x245D1D730](1, v8, v32);
        v33 = *(v9 + 64) + 15;
        v34 = swift_task_alloc();
        v35 = swift_task_alloc();
        (*(v9 + 16))(v35, v12 + v11, v8);
        sub_2429AE8EC(v34, v35);
        v36 = *(v9 + 8);
        v36(v34, v8);

        swift_setDeallocating();
        v36((v12 + v11), v8);
        swift_deallocClassInstance();
        v0[46] = v41;
        v37 = *MEMORY[0x277D85DE8];
        v13 = sub_2429A9454;
        v14 = 0;
        v15 = 0;

        return MEMORY[0x2822009F8](v13, v14, v15);
      }
    }

    v17 = [v7 startDateComponents];
    if (v17)
    {
      v18 = v0[35];
      v19 = v17;
      sub_2429B6D80();

      v20 = 0;
    }

    else
    {
      v20 = 1;
    }

    v29 = v0[35];
    v28 = v0[36];
    v30 = sub_2429B6DB0();
    (*(*(v30 - 8) + 56))(v29, v20, 1, v30);
    sub_2429A58B4(v29, v28);
    goto LABEL_18;
  }

  v22 = v0[36];
  v21 = v0[37];
  v24 = v0[34];
  v23 = v0[35];

  v25 = v0[1];
  v26 = *MEMORY[0x277D85DE8];

  return v25();
}

uint64_t sub_2429A9454()
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 368);
  v2 = *(v0 + 344);
  v3 = *(v0 + 456);
  v4 = *(v0 + 240);
  v5 = sub_2429B70E0();
  *(v0 + 376) = v5;
  v6 = *(v5 - 8);
  *(v0 + 384) = v6;
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  *(v0 + 392) = v8;

  sub_2429B70D0();
  swift_unknownObjectWeakLoadStrong();
  sub_2429B70C0();
  v9 = sub_2429B70B0();
  *(v0 + 400) = v9;
  v10 = *(v9 - 8);
  *(v0 + 408) = v10;
  *(v0 + 416) = *(v10 + 64);
  v11 = swift_task_alloc();
  *(v0 + 424) = v11;
  v12 = *(MEMORY[0x277D45AD0] + 4);
  v13 = swift_task_alloc();
  *(v0 + 432) = v13;
  *v13 = v0;
  v13[1] = sub_2429A962C;
  v14 = *(v0 + 248);
  v15 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2821A7DE0](v11, v8);
}

uint64_t sub_2429A962C()
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(*v1 + 432);
  v7 = *v1;
  *(*v1 + 440) = v0;

  if (v0)
  {
    v3 = sub_2429A9A68;
  }

  else
  {
    v3 = sub_2429A976C;
  }

  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2429A976C()
{
  v36 = *MEMORY[0x277D85DE8];
  v1 = v0[53];
  v2 = v0[50];
  v3 = v0[51];
  v4 = v0[52] + 15;
  v5 = MEMORY[0x277D45B08];
  v6 = swift_task_alloc();
  (*(v3 + 16))(v6, v1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v5 && v7 == *v5)
  {
    v8 = v0[53];
    v10 = v0[50];
    v9 = v0[51];
    v11 = v0[48];
    v12 = v0[47];
    v34 = v12;
    v35 = v0[49];
    (*(v9 + 96))(v6, v10);
    v13 = sub_2429B70A0();
    v14 = *(v13 - 8);
    v15 = *(v14 + 64) + 15;
    v16 = swift_task_alloc();
    (*(v14 + 32))(v16, v6, v13);
    v17 = sub_2429B7090();
    (*(v14 + 8))(v16, v13);
    (*(v9 + 8))(v8, v10);
    (*(v11 + 8))(v35, v34);
  }

  else
  {
    if (MEMORY[0x277D45B10] && v7 == *MEMORY[0x277D45B10])
    {
      v19 = v0[48];
      v18 = v0[49];
      v21 = v0[46];
      v20 = v0[47];
      (*(v0[51] + 8))(v0[53], v0[50]);
      (*(v19 + 8))(v18, v20);
    }

    else
    {
      v22 = v0[50];
      v24 = v0[48];
      v23 = v0[49];
      v26 = v0[46];
      v25 = v0[47];
      v27 = *(v0[51] + 8);
      v27(v0[53], v22);
      (*(v24 + 8))(v23, v25);
      v27(v6, v22);
    }

    v17 = MEMORY[0x277D84F90];
  }

  v0[56] = v17;
  v28 = v0[53];
  v29 = v0[49];

  v30 = v0[38];
  v31 = v0[39];
  v32 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_2429A9F68, v30, v31);
}

uint64_t sub_2429A9A68()
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = v0[55];
  v2 = v0[53];
  v3 = v0[46];
  (*(v0[48] + 8))(v0[49], v0[47]);

  v4 = v0[38];
  v5 = v0[39];
  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_2429A9B44, v4, v5);
}

uint64_t sub_2429A9B44()
{
  v40 = *MEMORY[0x277D85DE8];
  v1 = v0[44];
  v2 = *(v0[30] + v0[42]);
  sub_2429B2620(v1, 1);

  v3 = v0[45];
  if (v3 != v0[40])
  {
    v11 = v0[29];
    if ((v11 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x245D1D8C0](v0[45]);
    }

    else
    {
      if (v3 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_23;
      }

      v12 = *(v11 + 8 * v3 + 32);
    }

    v13 = v12;
    v0[44] = v12;
    v0[45] = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD7210, &qword_2429B86A0);
      v14 = sub_2429B7000();
      v15 = *(v14 - 8);
      v16 = *(v15 + 72);
      v17 = (*(v15 + 80) + 32) & ~*(v15 + 80);
      v18 = swift_allocObject();
      v19 = sub_2429B0B00(v13);
      if (!v19)
      {
        __break(1u);
        return MEMORY[0x2822009F8](v19, v20, v21);
      }

      if (([v13 hasRecurrenceRules] & 1) == 0)
      {
        v22 = [v13 masterEvent];
        if (!v22)
        {
          v37 = v0[36];
          v38 = sub_2429B6DB0();
          (*(*(v38 - 8) + 56))(v37, 1, 1, v38);
          goto LABEL_17;
        }
      }

      v23 = [v13 startDateComponents];
      if (v23)
      {
        v24 = v0[35];
        v25 = v23;
        sub_2429B6D80();

        v26 = 0;
      }

      else
      {
        v26 = 1;
      }

      v28 = v0[35];
      v27 = v0[36];
      v29 = sub_2429B6DB0();
      (*(*(v29 - 8) + 56))(v28, v26, 1, v29);
      sub_2429A58B4(v28, v27);
LABEL_17:
      v30 = v0[36];
      sub_2429B6FF0();
      v31 = sub_2429B1CC4(&qword_27ECD7218);
      v39 = MEMORY[0x245D1D730](1, v14, v31);
      v32 = *(v15 + 64) + 15;
      v33 = swift_task_alloc();
      v34 = swift_task_alloc();
      (*(v15 + 16))(v34, v18 + v17, v14);
      sub_2429AE8EC(v33, v34);
      v35 = *(v15 + 8);
      v35(v33, v14);

      swift_setDeallocating();
      v35((v18 + v17), v14);
      swift_deallocClassInstance();
      v0[46] = v39;
      v36 = *MEMORY[0x277D85DE8];
      v19 = sub_2429A9454;
      v20 = 0;
      v21 = 0;

      return MEMORY[0x2822009F8](v19, v20, v21);
    }

    __break(1u);
LABEL_23:
    __break(1u);
  }

  v5 = v0[36];
  v4 = v0[37];
  v7 = v0[34];
  v6 = v0[35];

  v8 = v0[1];
  v9 = *MEMORY[0x277D85DE8];

  return v8();
}

uint64_t sub_2429A9F68()
{
  v82 = *MEMORY[0x277D85DE8];
  v1 = v0[56];
  if (!(v1 >> 62))
  {
    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_15:
    v47 = v0[56];

    v30 = v0[44];
    v48 = *(v0[30] + v0[42]);
    sub_2429B2620(v30, 1);
    goto LABEL_16;
  }

  if (v1 < 0)
  {
    v46 = v0[56];
  }

  if (!sub_2429B7530())
  {
    goto LABEL_15;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v2 = MEMORY[0x245D1D8C0](0, v0[56]);
    v80 = v0[56];
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_39;
    }

    v2 = *(v0[56] + 32);
  }

  v3 = v0[44];
  v5 = v0[33];
  v4 = v0[34];
  v6 = v0[32];

  v7 = v3;
  v8 = [v2 objectID];
  v9 = [v8 urlRepresentation];

  sub_2429B6E00();
  sub_2429B6DE0();
  (*(v5 + 8))(v4, v6);
  v10 = sub_2429B7310();

  [v7 setUniqueID_];

  v11 = [objc_opt_self() defaultCenter];
  if (qword_27ECD7008 != -1)
  {
    swift_once();
  }

  v12 = v0[44];
  v13 = v0[41];
  v14 = v0[30];
  v15 = qword_27ECD7178;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD7240, &qword_2429B86B8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2429B8560;
  v0[24] = 0x746E657665;
  v0[25] = 0xE500000000000000;
  sub_2429B7580();
  *(inited + 96) = sub_2429A565C(0, &qword_27ECD7230, 0x277CC5A28);
  *(inited + 72) = v12;
  v0[26] = 0x7265646E696D6572;
  v0[27] = 0xE800000000000000;
  v17 = v12;
  sub_2429B7580();
  *(inited + 168) = sub_2429A565C(0, &qword_27ECD7258, 0x277D44758);
  *(inited + 144) = v2;
  v18 = v2;
  sub_2429B12A8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD7248, &qword_2429B86C0);
  swift_arrayDestroy();
  v19 = sub_2429B72E0();

  [v11 postNotificationName:v15 object:0 userInfo:v19];

  v20 = *(v14 + v13);
  v0[28] = 0;
  v21 = [v20 saveEvent:v17 span:0 commit:0 error:v0 + 28];
  v22 = v0[28];
  v23 = v0[44];
  if (v21)
  {
    v24 = v0[42];
    v25 = v0[30];
    v26 = v22;
    [v20 addPendingIntegrationEvent_];
    v27 = *(v25 + v24);
    v28 = [v23 sequenceNumber];
    v29 = v23;
    v30 = v18;
    sub_2429B5F4C(v29, v28, 1, v27, v29, v30);

    v31 = [v29 sequenceNumber];
    sub_2429B2AC8(v29, v31, 1, v27);
    v32 = [v29 objectID];
    if (!v32)
    {
      goto LABEL_43;
    }

    v35 = v32;
    v36 = v0[44];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD71C0, &qword_2429B85A0);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_2429B8550;
    *(v37 + 32) = v35;
    v38 = v35;
    sub_2429B3FB8(v37);

LABEL_16:
    v1 = v0[45];
    if (v1 == v0[40])
    {
      v50 = v0[36];
      v49 = v0[37];
      v52 = v0[34];
      v51 = v0[35];

      v44 = v0[1];
      v53 = *MEMORY[0x277D85DE8];
      goto LABEL_18;
    }

    v55 = v0[29];
    if ((v55 & 0xC000000000000001) == 0)
    {
      if (v1 >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_41;
      }

      v56 = *(v55 + 8 * v1 + 32);
LABEL_24:
      v57 = v56;
      v0[44] = v56;
      v0[45] = v1 + 1;
      if (!__OFADD__(v1, 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD7210, &qword_2429B86A0);
        v58 = sub_2429B7000();
        v59 = *(v58 - 8);
        v60 = *(v59 + 72);
        v61 = (*(v59 + 80) + 32) & ~*(v59 + 80);
        v62 = swift_allocObject();
        v32 = sub_2429B0B00(v57);
        if (v32)
        {
          if (([v57 hasRecurrenceRules] & 1) == 0)
          {
            v63 = [v57 masterEvent];
            if (!v63)
            {
              v78 = v0[36];
              v79 = sub_2429B6DB0();
              (*(*(v79 - 8) + 56))(v78, 1, 1, v79);
              goto LABEL_33;
            }
          }

          v64 = [v57 startDateComponents];
          if (v64)
          {
            v65 = v0[35];
            v66 = v64;
            sub_2429B6D80();

            v67 = 0;
          }

          else
          {
            v67 = 1;
          }

          v69 = v0[35];
          v68 = v0[36];
          v70 = sub_2429B6DB0();
          (*(*(v70 - 8) + 56))(v69, v67, 1, v70);
          sub_2429A58B4(v69, v68);
LABEL_33:
          v71 = v0[36];
          sub_2429B6FF0();
          v72 = sub_2429B1CC4(&qword_27ECD7218);
          v81 = MEMORY[0x245D1D730](1, v58, v72);
          v73 = *(v59 + 64) + 15;
          v74 = swift_task_alloc();
          v75 = swift_task_alloc();
          (*(v59 + 16))(v75, v62 + v61, v58);
          sub_2429AE8EC(v74, v75);
          v76 = *(v59 + 8);
          v76(v74, v58);

          swift_setDeallocating();
          v76((v62 + v61), v58);
          swift_deallocClassInstance();
          v0[46] = v81;
          v77 = *MEMORY[0x277D85DE8];
          v32 = sub_2429A9454;
          v33 = 0;
          v34 = 0;

          return MEMORY[0x2822009F8](v32, v33, v34);
        }

        __break(1u);
LABEL_43:
        __break(1u);
        return MEMORY[0x2822009F8](v32, v33, v34);
      }

      __break(1u);
LABEL_41:
      __break(1u);
    }

LABEL_39:
    v56 = MEMORY[0x245D1D8C0](v1);
    goto LABEL_24;
  }

  v40 = v0[36];
  v39 = v0[37];
  v42 = v0[34];
  v41 = v0[35];
  v43 = v22;

  sub_2429B6DD0();

  swift_willThrow();

  v44 = v0[1];
  v45 = *MEMORY[0x277D85DE8];
LABEL_18:

  return v44();
}

uint64_t sub_2429AA84C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD71A8, &qword_2429B8570);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_2429B1D18(a3, v24 - v10, &qword_27ECD71A8, &qword_2429B8570);
  v12 = sub_2429B7450();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2429A234C(v11, &qword_27ECD71A8, &qword_2429B8570);
  }

  else
  {
    sub_2429B7440();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_2429B73E0();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_2429B7330() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_2429A234C(a3, &qword_27ECD71A8, &qword_2429B8570);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2429A234C(a3, &qword_27ECD71A8, &qword_2429B8570);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_2429AAAF8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v44 = a2;
  v45 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD71A8, &qword_2429B8570);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v43 = &v42 - v6;
  v7 = sub_2429B1524(MEMORY[0x277D84F90]);
  if (a1 >> 62)
  {
LABEL_36:
    v8 = sub_2429B7530();
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_37:
    v31 = v42;
    v32 = sub_2429A7024();
    v33 = sub_2429B7450();
    v34 = v43;
    (*(*(v33 - 8) + 56))(v43, 1, 1, v33);
    sub_2429B7430();
    v35 = v31;

    v36 = v45;

    v37 = sub_2429B7420();
    v38 = swift_allocObject();
    v39 = MEMORY[0x277D85700];
    v38[2] = v37;
    v38[3] = v39;
    v38[4] = v7;
    v38[5] = v35;
    v40 = v44;
    v38[6] = v32;
    v38[7] = v40;
    v38[8] = v36;
    sub_2429A8480(0, 0, v34, &unk_2429B85B0, v38);
  }

  v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v8)
  {
    goto LABEL_37;
  }

LABEL_3:
  v9 = 0;
  v47 = a1;
  v48 = a1 & 0xC000000000000001;
  v46 = a1 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v48)
    {
      v10 = MEMORY[0x245D1D8C0](v9, a1);
    }

    else
    {
      if (v9 >= *(v46 + 16))
      {
        goto LABEL_34;
      }

      v10 = *(a1 + 8 * v9 + 32);
    }

    v11 = v10;
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
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
      goto LABEL_36;
    }

    v13 = sub_2429B0B00(v10);
    if (v13)
    {
      break;
    }

LABEL_5:
    ++v9;
    if (v12 == v8)
    {
      goto LABEL_37;
    }
  }

  v14 = v13;
  if ((v7 & 0xC000000000000001) != 0)
  {
    if (v7 < 0)
    {
      a1 = v7;
    }

    else
    {
      a1 = v7 & 0xFFFFFFFFFFFFFF8;
    }

    v15 = v11;
    v16 = sub_2429B7530();
    if (__OFADD__(v16, 1))
    {
      goto LABEL_33;
    }

    v7 = sub_2429B002C(a1, v16 + 1);
  }

  else
  {
    v17 = v11;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v49 = v7;
  v20 = sub_2429AE41C(v14);
  v21 = *(v7 + 16);
  v22 = (v19 & 1) == 0;
  v23 = v21 + v22;
  if (__OFADD__(v21, v22))
  {
    goto LABEL_32;
  }

  a1 = v19;
  if (*(v7 + 24) >= v23)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      v7 = v49;
      if (v19)
      {
        goto LABEL_26;
      }
    }

    else
    {
      sub_2429B09A0();
      v7 = v49;
      if (a1)
      {
        goto LABEL_26;
      }
    }

LABEL_28:
    *(v7 + 8 * (v20 >> 6) + 64) |= 1 << v20;
    *(*(v7 + 48) + 8 * v20) = v14;
    *(*(v7 + 56) + 8 * v20) = v11;

    v28 = *(v7 + 16);
    v29 = __OFADD__(v28, 1);
    v30 = v28 + 1;
    if (v29)
    {
      goto LABEL_35;
    }

    *(v7 + 16) = v30;
    goto LABEL_30;
  }

  sub_2429B0584(v23, isUniquelyReferenced_nonNull_native);
  v24 = sub_2429AE41C(v14);
  if ((a1 & 1) == (v25 & 1))
  {
    v20 = v24;
    v7 = v49;
    if ((a1 & 1) == 0)
    {
      goto LABEL_28;
    }

LABEL_26:
    v26 = *(v7 + 56);
    v27 = *(v26 + 8 * v20);
    *(v26 + 8 * v20) = v11;

LABEL_30:
    a1 = v47;
    goto LABEL_5;
  }

  sub_2429A565C(0, &unk_27ECD71C8, 0x277D44708);
  result = sub_2429B7710();
  __break(1u);
  return result;
}

uint64_t sub_2429AAEA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *MEMORY[0x277D85DE8];
  v8[25] = a7;
  v8[26] = a8;
  v8[23] = a5;
  v8[24] = a6;
  v8[22] = a4;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECD7080, &qword_2429B84F0) - 8) + 64) + 15;
  v8[27] = swift_task_alloc();
  v8[28] = swift_task_alloc();
  sub_2429B7430();
  v8[29] = sub_2429B7420();
  v10 = sub_2429B73E0();
  v8[30] = v10;
  v8[31] = v11;
  v12 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_2429AAFB8, v10, v11);
}

uint64_t sub_2429AAFB8()
{
  v51 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 176);
  if ((v1 & 0xC000000000000001) != 0)
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    v5 = sub_2429B7660() | 0x8000000000000000;
    v6 = *(v0 + 176);
  }

  else
  {
    v7 = -1 << *(v1 + 32);
    v3 = ~v7;
    v2 = v1 + 64;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v4 = v9 & *(v1 + 64);
    v5 = *(v0 + 176);
  }

  *(v0 + 256) = v5;
  *(v0 + 264) = v2;
  *(v0 + 336) = 1;
  *(v0 + 280) = 0;
  *(v0 + 288) = v4;
  *(v0 + 272) = v3;

  if ((v5 & 0x8000000000000000) != 0)
  {
    v12 = sub_2429B7680();
    if (!v12)
    {
      goto LABEL_27;
    }

    v14 = v13;
    *(v0 + 152) = v12;
    sub_2429A565C(0, &unk_27ECD71C8, 0x277D44708);
    swift_dynamicCast();
    v15 = *(v0 + 144);
    *(v0 + 168) = v14;
    sub_2429A565C(0, &qword_27ECD7230, 0x277CC5A28);
    swift_dynamicCast();
    v10 = 0;
    v16 = *(v0 + 160);
    v17 = v4;
  }

  else
  {
    if (!v4)
    {
      v18 = 0;
      v19 = v2 + 8;
      while (((v3 + 64) >> 6) - 1 != v18)
      {
        v10 = v18 + 1;
        v11 = *(v19 + 8 * v18++);
        if (v11)
        {
          goto LABEL_15;
        }
      }

      goto LABEL_27;
    }

    v10 = 0;
    v11 = v4;
LABEL_15:
    v17 = (v11 - 1) & v11;
    v20 = (v10 << 9) | (8 * __clz(__rbit64(v11)));
    v21 = *(*(v5 + 56) + v20);
    v15 = *(*(v5 + 48) + v20);
    v16 = v21;
  }

  *(v0 + 312) = v10;
  *(v0 + 320) = v17;
  *(v0 + 296) = v15;
  *(v0 + 304) = v16;
  if (v15)
  {
    v22 = v16;
    v23 = v15;
    if (([v22 hasRecurrenceRules] & 1) == 0)
    {
      v24 = [v22 masterEvent];
      if (!v24)
      {
        v49 = *(v0 + 224);
        v50 = sub_2429B6DB0();
        (*(*(v50 - 8) + 56))(v49, 1, 1, v50);
LABEL_24:
        v32 = swift_task_alloc();
        *(v0 + 328) = v32;
        *v32 = v0;
        v32[1] = sub_2429AB3C8;
        v33 = *(v0 + 224);
        v35 = *(v0 + 184);
        v34 = *(v0 + 192);
        v36 = *MEMORY[0x277D85DE8];

        return sub_2429ABEA4(v23, v33, v34);
      }
    }

    v25 = [v22 startDateComponents];
    if (v25)
    {
      v26 = *(v0 + 216);
      v27 = v25;
      sub_2429B6D80();

      v28 = 0;
    }

    else
    {
      v28 = 1;
    }

    v30 = *(v0 + 216);
    v29 = *(v0 + 224);
    v31 = sub_2429B6DB0();
    (*(*(v31 - 8) + 56))(v30, v28, 1, v31);
    sub_2429A58B4(v30, v29);
    goto LABEL_24;
  }

LABEL_27:
  v38 = *(v0 + 264);
  v39 = *(v0 + 272);
  v40 = *(v0 + 256);
  sub_2429B1D10();
  v41 = *(v0 + 336);
  v43 = *(v0 + 224);
  v42 = *(v0 + 232);
  v44 = *(v0 + 208);
  v45 = *(v0 + 216);
  v46 = *(v0 + 200);

  v46(v41, 0);

  v47 = *(v0 + 8);
  v48 = *MEMORY[0x277D85DE8];

  return v47();
}

uint64_t sub_2429AB3C8(char a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 328);
  v4 = *(*v1 + 224);
  v10 = *v1;
  *(*v1 + 337) = a1;

  sub_2429A234C(v4, &unk_27ECD7080, &qword_2429B84F0);
  v5 = *(v2 + 248);
  v6 = *(v2 + 240);
  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_2429AB550, v6, v5);
}

id sub_2429AB550()
{
  v83 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 337);
  if (v1 != 1)
  {
    if (v1 != 2 || ([*(v0 + 304) hasEverBeenCommitted] & 1) == 0)
    {
      v3 = [objc_opt_self() defaultCenter];
      if (qword_27ECD7000 != -1)
      {
        goto LABEL_42;
      }

      goto LABEL_6;
    }

    v2 = *(v0 + 296);
    v3 = *(v0 + 304);

    v5 = *(v0 + 312);
    v4 = *(v0 + 320);
    *(v0 + 336) = 0;
    while (1)
    {
      *(v0 + 280) = v5;
      *(v0 + 288) = v4;
      v44 = *(v0 + 256);
      if (v44 < 0)
      {
        break;
      }

      v45 = v4;
      v46 = v5;
      if (v4)
      {
LABEL_22:
        v48 = (v45 - 1) & v45;
        v49 = (v46 << 9) | (8 * __clz(__rbit64(v45)));
        v50 = *(*(v44 + 56) + v49);
        v51 = *(*(v44 + 48) + v49);
        v52 = v50;
        goto LABEL_25;
      }

      v47 = v5;
      while (1)
      {
        v46 = v47 + 1;
        if (__OFADD__(v47, 1))
        {
          break;
        }

        if (v46 >= ((*(v0 + 272) + 64) >> 6))
        {
          goto LABEL_36;
        }

        v45 = *(*(v0 + 264) + 8 * v46);
        ++v47;
        if (v45)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_42:
      swift_once();
LABEL_6:
      v6 = *(v0 + 304);
      v7 = *(v0 + 184);
      v8 = qword_27ECD7170;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD7240, &qword_2429B86B8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2429B8400;
      *(v0 + 120) = 0x746E657665;
      *(v0 + 128) = 0xE500000000000000;
      sub_2429B7580();
      *(inited + 96) = sub_2429A565C(0, &qword_27ECD7230, 0x277CC5A28);
      *(inited + 72) = v6;
      v10 = v6;
      sub_2429B12A8(inited);
      swift_setDeallocating();
      sub_2429A234C(inited + 32, &qword_27ECD7248, &qword_2429B86C0);
      v11 = sub_2429B72E0();

      [v3 postNotificationName:v8 object:0 userInfo:v11];

      v12 = [v10 sequenceNumber];
      v13 = *(v7 + OBJC_IVAR____TtC21CalendarUIKitInternal33CUIKIReminderEditorImplementation_eventStore);
      *(v0 + 136) = 0;
      v14 = [v13 removeEvent:v10 span:0 commit:0 error:v0 + 136];
      v15 = *(v0 + 136);
      if (v14)
      {
        v16 = *(v0 + 304);
        v3 = *(*(v0 + 184) + OBJC_IVAR____TtC21CalendarUIKitInternal33CUIKIReminderEditorImplementation_changeTracker);
        v17 = v15;
        sub_2429B2AC8(v16, v12, 1, v3);
        result = [v16 objectID];
        if (!result)
        {
          __break(1u);
          return result;
        }

        v19 = result;
        v21 = *(v0 + 296);
        v20 = *(v0 + 304);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD71C0, &qword_2429B85A0);
        v22 = swift_allocObject();
        *(v22 + 16) = xmmword_2429B8550;
        *(v22 + 32) = v19;
        v23 = v19;
        sub_2429B3FB8(v22);
      }

      else
      {
        v32 = v15;
        v33 = sub_2429B6DD0();

        swift_willThrow();
        if (qword_28118FA48 != -1)
        {
          swift_once();
        }

        v34 = sub_2429B72D0();
        __swift_project_value_buffer(v34, qword_28118FA50);
        v35 = v33;
        v3 = sub_2429B72B0();
        v36 = sub_2429B7480();

        v37 = os_log_type_enabled(v3, v36);
        v39 = *(v0 + 296);
        v38 = *(v0 + 304);
        if (v37)
        {
          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          *v40 = 138412290;
          v42 = v33;
          v43 = _swift_stdlib_bridgeErrorToNSError();
          *(v40 + 4) = v43;
          *v41 = v43;
          _os_log_impl(&dword_24299E000, v3, v36, "Error deleting integration event: %@", v40, 0xCu);
          sub_2429A234C(v41, &qword_27ECD71B8, &qword_2429B8598);
          MEMORY[0x245D1DF70](v41, -1, -1);
          MEMORY[0x245D1DF70](v40, -1, -1);
        }

        else
        {
        }
      }

      v5 = *(v0 + 312);
      v4 = *(v0 + 320);
    }

    v53 = sub_2429B7680();
    if (!v53)
    {
      goto LABEL_36;
    }

    v55 = v54;
    *(v0 + 152) = v53;
    sub_2429A565C(0, &unk_27ECD71C8, 0x277D44708);
    swift_dynamicCast();
    v51 = *(v0 + 144);
    *(v0 + 168) = v55;
    sub_2429A565C(0, &qword_27ECD7230, 0x277CC5A28);
    swift_dynamicCast();
    v52 = *(v0 + 160);
    v46 = v5;
    v48 = v4;
LABEL_25:
    *(v0 + 312) = v46;
    *(v0 + 320) = v48;
    *(v0 + 296) = v51;
    *(v0 + 304) = v52;
    if (!v51)
    {
LABEL_36:
      v71 = *(v0 + 264);
      v72 = *(v0 + 272);
      v73 = *(v0 + 256);
      sub_2429B1D10();
      v31 = *(v0 + 336);
      goto LABEL_37;
    }

    v56 = v52;
    v57 = v51;
    if (([v56 hasRecurrenceRules] & 1) == 0)
    {
      v58 = [v56 masterEvent];
      if (!v58)
      {
        v81 = *(v0 + 224);
        v82 = sub_2429B6DB0();
        (*(*(v82 - 8) + 56))(v81, 1, 1, v82);
LABEL_33:
        v66 = swift_task_alloc();
        *(v0 + 328) = v66;
        *v66 = v0;
        v66[1] = sub_2429AB3C8;
        v67 = *(v0 + 224);
        v69 = *(v0 + 184);
        v68 = *(v0 + 192);
        v70 = *MEMORY[0x277D85DE8];

        return sub_2429ABEA4(v57, v67, v68);
      }
    }

    v59 = [v56 startDateComponents];
    if (v59)
    {
      v60 = *(v0 + 216);
      v61 = v59;
      sub_2429B6D80();

      v62 = 0;
    }

    else
    {
      v62 = 1;
    }

    v64 = *(v0 + 216);
    v63 = *(v0 + 224);
    v65 = sub_2429B6DB0();
    (*(*(v65 - 8) + 56))(v64, v62, 1, v65);
    sub_2429A58B4(v64, v63);
    goto LABEL_33;
  }

  v25 = *(v0 + 296);
  v24 = *(v0 + 304);
  v26 = *(v0 + 280);
  v27 = *(v0 + 288);
  v29 = *(v0 + 264);
  v28 = *(v0 + 272);
  v30 = *(v0 + 256);

  sub_2429B1D10();
  v31 = 0;
LABEL_37:
  v75 = *(v0 + 224);
  v74 = *(v0 + 232);
  v76 = *(v0 + 208);
  v77 = *(v0 + 216);
  v78 = *(v0 + 200);

  v78(v31, 0);

  v79 = *(v0 + 8);
  v80 = *MEMORY[0x277D85DE8];

  return v79();
}

void sub_2429ABE34(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_2429B6DC0();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

uint64_t sub_2429ABEA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECD7080, &qword_2429B84F0) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2429ABF44, 0, 0);
}

uint64_t sub_2429ABF44()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[2];
  v3 = v0[3];
  v5 = sub_2429B7000();
  v0[7] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v8 = *(v6 + 64) + 15;
  v9 = swift_task_alloc();
  v0[8] = v9;
  sub_2429B1D18(v3, v1, &unk_27ECD7080, &qword_2429B84F0);
  v10 = v4;
  sub_2429B6FF0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD7210, &qword_2429B86A0);
  v11 = *(v6 + 72);
  v12 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_2429B8400;
  (*(v7 + 16))(v13 + v12, v9, v5);
  sub_2429B1B58(v13);
  swift_setDeallocating();
  v14 = *(v7 + 8);
  v0[9] = v14;
  v0[10] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v13 + v12, v5);
  swift_deallocClassInstance();
  v15 = sub_2429B6F80();
  v0[11] = v15;
  v16 = *(v15 - 8);
  v0[12] = v16;
  v17 = *(v16 + 64) + 15;
  v18 = swift_task_alloc();
  v0[13] = v18;
  sub_2429B6F70();
  swift_unknownObjectWeakLoadStrong();
  sub_2429B6F60();
  v19 = sub_2429B6F50();
  v0[14] = v19;
  v20 = *(v19 - 8);
  v0[15] = v20;
  v0[16] = *(v20 + 64);
  v21 = swift_task_alloc();
  v0[17] = v21;
  v22 = *(MEMORY[0x277D45AC0] + 4);
  v23 = swift_task_alloc();
  v0[18] = v23;
  *v23 = v0;
  v23[1] = sub_2429AC244;
  v24 = v0[4];

  return MEMORY[0x2821A7DD0](v21, v18);
}

uint64_t sub_2429AC244()
{
  v2 = *(*v1 + 144);
  v5 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_2429AC4F4;
  }

  else
  {
    v3 = sub_2429AC358;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2429AC358()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[15];
  v4 = v0[10];
  v5 = v0[8];
  v6 = v0[9];
  v7 = v0[7];
  v8 = v0[16] + 15;
  (*(v0[12] + 8))(v0[13], v0[11]);
  v6(v5, v7);
  v9 = swift_task_alloc();
  (*(v3 + 32))(v9, v1, v2);
  v10 = (*(v3 + 88))(v9, v2);
  if (MEMORY[0x277D45AA0] && v10 == *MEMORY[0x277D45AA0])
  {
    v11 = v0[17];
    (*(v0[15] + 8))(v9, v0[14]);
    v12 = 0;
  }

  else if (MEMORY[0x277D45AA8] && v10 == *MEMORY[0x277D45AA8])
  {
    v13 = v0[17];
    v12 = 1;
  }

  else
  {
    v14 = v0[17];
    (*(v0[15] + 8))(v9, v0[14]);
    v12 = 2;
  }

  v15 = v0[13];
  v16 = v0[8];
  v17 = v0[6];

  v18 = v0[1];

  return v18(v12);
}

uint64_t sub_2429AC4F4()
{
  v1 = v0[17];

  if (qword_28118FA48 != -1)
  {
    swift_once();
  }

  v2 = v0[19];
  v3 = sub_2429B72D0();
  __swift_project_value_buffer(v3, qword_28118FA50);
  v4 = v2;
  v5 = sub_2429B72B0();
  v6 = sub_2429B7480();

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
    _os_log_impl(&dword_24299E000, v5, v6, "Error deleting reminder: %@", v8, 0xCu);
    sub_2429A234C(v9, &qword_27ECD71B8, &qword_2429B8598);
    MEMORY[0x245D1DF70](v9, -1, -1);
    MEMORY[0x245D1DF70](v8, -1, -1);
  }

  v12 = v0[19];
  v14 = v0[12];
  v13 = v0[13];
  v16 = v0[10];
  v15 = v0[11];
  v17 = v0[8];
  v18 = v0[9];
  v19 = v0[7];

  (*(v14 + 8))(v13, v15);
  v18(v17, v19);
  v20 = v0[13];
  v21 = v0[8];
  v22 = v0[6];

  v23 = v0[1];

  return v23(2);
}

uint64_t sub_2429AC6FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v5 = sub_2429B6DB0();
  v4[11] = v5;
  v6 = *(v5 - 8);
  v4[12] = v6;
  v7 = *(v6 + 64) + 15;
  v4[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2429AC7C0, 0, 0);
}

uint64_t sub_2429AC7C0()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  v6 = v0[7];
  v5 = v0[8];
  v7 = sub_2429B7080();
  v0[14] = v7;
  v8 = *(v7 - 8);
  v0[15] = v8;
  v9 = *(v8 + 64) + 15;
  v10 = swift_task_alloc();
  v0[16] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD71C0, &qword_2429B85A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2429B8550;
  *(inited + 32) = v6;
  v12 = v6;
  sub_2429B13E4(inited);
  swift_setDeallocating();
  v13 = *(inited + 16);
  swift_arrayDestroy();
  (*(v2 + 16))(v1, v5, v4);
  sub_2429B7060();
  swift_unknownObjectWeakLoadStrong();
  sub_2429B7070();
  v14 = sub_2429B7050();
  v0[17] = v14;
  v15 = *(v14 - 8);
  v0[18] = v15;
  v0[19] = *(v15 + 64);
  v16 = swift_task_alloc();
  v0[20] = v16;
  v17 = *(MEMORY[0x277D45AC8] + 4);
  v18 = swift_task_alloc();
  v0[21] = v18;
  *v18 = v0;
  v18[1] = sub_2429AC9FC;
  v19 = v0[9];

  return MEMORY[0x2821A7DD8](v16, v10);
}

uint64_t sub_2429AC9FC()
{
  v2 = *(*v1 + 168);
  v5 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = sub_2429ACE58;
  }

  else
  {
    v3 = sub_2429ACB10;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

unint64_t sub_2429ACB10()
{
  v1 = v0[20];
  v2 = v0[17];
  v3 = v0[18];
  v4 = v0[19] + 15;
  v5 = swift_task_alloc();
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (!MEMORY[0x277D45AF8] || v6 != *MEMORY[0x277D45AF8])
  {
    if (MEMORY[0x277D45B00] && v6 == *MEMORY[0x277D45B00])
    {
      v15 = v0[15];
      v14 = v0[16];
      v16 = v0[14];
      (*(v0[18] + 8))(v0[20], v0[17]);
      (*(v15 + 8))(v14, v16);
    }

    else
    {
      v17 = v0[17];
      v19 = v0[15];
      v18 = v0[16];
      v20 = v0[14];
      v21 = *(v0[18] + 8);
      v21(v0[20], v17);
      (*(v19 + 8))(v18, v20);
      v21(v5, v17);
    }

    v13 = 0;
    goto LABEL_17;
  }

  (*(v0[18] + 96))(v5, v0[17]);
  v7 = sub_2429B7040();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64) + 15;
  v10 = swift_task_alloc();
  (*(v8 + 32))(v10, v5, v7);
  result = sub_2429B7030();
  if (result >> 62)
  {
    v22 = result;
    v23 = sub_2429B7530();
    result = v22;
    v34 = v10;
    v35 = v7;
    if (v23)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v34 = v10;
    v35 = v7;
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_5:
      if ((result & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x245D1D8C0](0);
      }

      else
      {
        if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return result;
        }

        v12 = *(result + 32);
      }

      v13 = v12;

      goto LABEL_16;
    }
  }

  v13 = 0;
LABEL_16:
  v24 = v0[20];
  v26 = v0[17];
  v25 = v0[18];
  v27 = v0[15];
  v28 = v0[16];
  v29 = v0[14];
  (*(v8 + 8))(v34, v35);
  (*(v25 + 8))(v24, v26);
  (*(v27 + 8))(v28, v29);

LABEL_17:
  v30 = v0[20];
  v31 = v0[16];
  v32 = v0[13];

  v33 = v0[1];

  return v33(v13);
}

uint64_t sub_2429ACE58()
{
  v1 = v0[20];
  v2 = v0[13];
  (*(v0[15] + 8))(v0[16], v0[14]);

  v3 = v0[1];
  v4 = v0[22];

  return v3();
}

uint64_t sub_2429ACEFC()
{
  sub_2429B7760();
  MEMORY[0x245D1DA40](0);
  return sub_2429B7780();
}

uint64_t sub_2429ACF68()
{
  sub_2429B7760();
  MEMORY[0x245D1DA40](0);
  return sub_2429B7780();
}

uint64_t sub_2429ACFB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = sub_2429B7430();
  v4[7] = sub_2429B7420();
  v6 = sub_2429B73E0();
  v4[8] = v6;
  v4[9] = v5;

  return MEMORY[0x2822009F8](sub_2429AD058, v6, v5);
}

uint64_t sub_2429AD058()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v11 = *(v0 + 24);
  v3 = sub_2429B7420();
  *(v0 + 80) = v3;
  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v11;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  *(v0 + 96) = v6;
  *v6 = v0;
  v6[1] = sub_2429AD170;
  v7 = *(v0 + 40);
  v8 = *(v0 + 16);
  v9 = MEMORY[0x277D85700];

  return MEMORY[0x2822008A0](v8, v3, v9, 0x28746E6573657270, 0xEB00000000293A5FLL, sub_2429B184C, v4, v7);
}

uint64_t sub_2429AD170()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v10 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = v2[8];
    v5 = v2[9];
    v6 = sub_2429AD2F8;
  }

  else
  {
    v7 = v2[10];
    v8 = v2[11];

    v4 = v2[8];
    v5 = v2[9];
    v6 = sub_2429AD294;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_2429AD294()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2429AD2F8()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[7];

  v4 = v0[1];
  v5 = v0[13];

  return v4();
}

void sub_2429AD370(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v73 = a3;
  v94 = a1;
  v6 = *(a4 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v89 = v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = v70 - v10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECD71D8, &qword_2429B8680);
  v93 = sub_2429B7410();
  v12 = *(v93 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v93);
  v88 = v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = v15;
  MEMORY[0x28223BE20](v14);
  v71 = v70 - v16;
  v105 = MEMORY[0x277D84F90];
  v70[1] = sub_2429B71A0();
  v72 = a2;
  v17 = sub_2429B7180();
  v18 = a4;
  v19 = sub_2429B7170();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = v70 - v22;
  v24 = sub_2429B73D0();
  v92 = v12;
  if (!v24)
  {
LABEL_13:

    sub_2429B7130();
    v56 = v55;
    v98 = sub_2429B7190();
    v58 = v57;
    v60 = v92;
    v59 = v93;
    v61 = v71;
    (*(v92 + 16))(v71, v94, v93);
    v62 = (*(v60 + 80) + 24) & ~*(v60 + 80);
    v63 = swift_allocObject();
    *(v63 + 16) = v18;
    (*(v60 + 32))(v63 + v62, v61, v59);
    if (v56)
    {
      v64 = sub_2429B7310();

      if (v58)
      {
LABEL_15:
        v65 = sub_2429B7310();

LABEL_18:
        v66 = objc_allocWithZone(MEMORY[0x277CF7C90]);
        sub_2429A565C(0, &qword_27ECD71E0, 0x277CF7C98);
        v67 = sub_2429B7370();

        v103 = sub_2429B1958;
        v104 = v63;
        aBlock = MEMORY[0x277D85DD0];
        v100 = 1107296256;
        v101 = sub_2429AE12C;
        v102 = &block_descriptor_31;
        v68 = _Block_copy(&aBlock);
        v69 = [v66 initWithTitle:v64 message:v65 actions:v67 cancelBlock:v68];

        _Block_release(v68);

        [v73 displayIntegrationAlert_];

        return;
      }
    }

    else
    {
      v64 = 0;
      if (v58)
      {
        goto LABEL_15;
      }
    }

    v65 = 0;
    goto LABEL_18;
  }

  v70[0] = v21;
  v25 = 0;
  v87 = (v20 + 16);
  v83 = v12 + 16;
  v82 = v6 + 16;
  v81 = v12 + 32;
  v80 = v6 + 32;
  v79 = &v101;
  v86 = v6;
  v78 = (v6 + 8);
  v77 = (v20 + 8);
  v26 = v23;
  v85 = v17;
  v84 = v20;
  v76 = v23;
  v75 = v11;
  v74 = v19;
  while (1)
  {
    v27 = sub_2429B73B0();
    sub_2429B7390();
    if ((v27 & 1) == 0)
    {
      break;
    }

    (*(v20 + 16))(v26, v17 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v25, v19);
    v28 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      goto LABEL_19;
    }

LABEL_5:
    v98 = v28;
    v29 = sub_2429B7150();
    v96 = v30;
    v97 = v29;
    v31 = v18;
    v32 = sub_2429B7120();
    v33 = *(v32 - 8);
    v34 = *(v33 + 64);
    MEMORY[0x28223BE20](v32);
    v36 = v70 - v35;
    sub_2429B7140();
    v95 = sub_2429A6940(v36);
    (*(v33 + 8))(v36, v32);
    sub_2429B7160();
    v37 = v92;
    v38 = v88;
    v39 = v11;
    v40 = v93;
    (*(v92 + 16))(v88, v94, v93);
    v41 = v86;
    v42 = v89;
    (*(v86 + 16))(v89, v39, v31);
    v43 = (*(v37 + 80) + 24) & ~*(v37 + 80);
    v44 = (v91 + *(v41 + 80) + v43) & ~*(v41 + 80);
    v45 = swift_allocObject();
    *(v45 + 16) = v31;
    (*(v37 + 32))(v45 + v43, v38, v40);
    v46 = *(v41 + 32);
    v18 = v31;
    v46(v45 + v44, v42, v31);
    v47 = objc_allocWithZone(MEMORY[0x277CF7C98]);
    v48 = sub_2429B7310();

    v103 = sub_2429B1858;
    v104 = v45;
    aBlock = MEMORY[0x277D85DD0];
    v100 = 1107296256;
    v101 = sub_2429AE12C;
    v102 = &block_descriptor;
    v49 = _Block_copy(&aBlock);
    v50 = [v47 initWithTitle:v48 style:v95 handler:v49];

    _Block_release(v49);

    v51 = v50;
    MEMORY[0x245D1D630]();
    if (*((v105 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v105 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v54 = *((v105 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_2429B73A0();
    }

    sub_2429B73C0();

    v11 = v75;
    (*v78)(v75, v31);
    v26 = v76;
    v19 = v74;
    (*v77)(v76, v74);
    v17 = v85;
    v52 = sub_2429B73D0();
    ++v25;
    v20 = v84;
    if (v98 == v52)
    {
      goto LABEL_13;
    }
  }

  v53 = sub_2429B75E0();
  if (v70[0] != 8)
  {
    goto LABEL_20;
  }

  aBlock = v53;
  (*v87)(v26, &aBlock, v19);
  swift_unknownObjectRelease();
  v28 = v25 + 1;
  if (!__OFADD__(v25, 1))
  {
    goto LABEL_5;
  }

LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
}

uint64_t sub_2429ADCD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECD71D8, &qword_2429B8680);
  sub_2429B7410();
  return sub_2429B7400();
}

uint64_t sub_2429ADDB8()
{
  sub_2429B19EC();
  swift_allocError();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECD71D8, &qword_2429B8680);
  sub_2429B7410();
  return sub_2429B73F0();
}

uint64_t sub_2429ADE3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2429ADEF4;

  return sub_2429ACFB8(a1, a2, v8, a3);
}

uint64_t sub_2429ADEF4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

id CUIKIReminderEditorImplementation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CUIKIReminderEditorImplementation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CUIKIReminderEditorImplementation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2429AE12C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_2429AE170(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2429AE268;

  return v7(a1);
}

uint64_t sub_2429AE268()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_2429AE360(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_2429B7760();
  sub_2429B7340();
  v6 = sub_2429B7780();

  return sub_2429AE460(a1, a2, v6);
}

unint64_t sub_2429AE3D8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_2429B7560();

  return sub_2429AE518(a1, v5);
}

unint64_t sub_2429AE41C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_2429B74C0();

  return sub_2429AE5E0(a1, v5);
}

unint64_t sub_2429AE460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_2429B76E0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_2429AE518(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_2429B1A40(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x245D1D840](v9, a1);
      sub_2429B1A9C(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_2429AE5E0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_2429A565C(0, &unk_27ECD71C8, 0x277D44708);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_2429B74D0();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_2429AE6B4(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_2429B7540();

    if (v9)
    {

      sub_2429A565C(0, &unk_27ECD71C8, 0x277D44708);
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_2429B7530();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_2429AEBD4(v7, result + 1);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_2429AEDC4(v22 + 1);
    }

    v20 = v8;
    sub_2429AF31C(v20, v21);

    *v3 = v21;
    goto LABEL_16;
  }

  sub_2429A565C(0, &unk_27ECD71C8, 0x277D44708);
  v11 = *(v6 + 40);
  v12 = sub_2429B74C0();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_2429AF3A0(v20, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_2429B74D0();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v23 = *(*(v6 + 48) + 8 * v14);
  *a1 = v23;
  v24 = v23;
  return 0;
}

uint64_t sub_2429AE8EC(char *a1, char *a2)
{
  v31 = a1;
  v4 = sub_2429B7000();
  v30 = v2;
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_2429B1CC4(&qword_27ECD7218);
  v37 = a2;
  v7 = sub_2429B72F0();
  v36 = v5;
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  v34 = v5 + 56;
  v10 = *(v4 - 8);
  v11 = *(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9;
  v28 = v10;
  v29 = v4 - 8;
  if (v11)
  {
    v32 = ~v8;
    v35 = v10[2];
    v12 = v10[8];
    v33 = v10[9];
    v13 = (v10 + 1);
    while (1)
    {
      MEMORY[0x28223BE20](v7);
      v14 = v33 * v9;
      v35(&v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), *(v36 + 48) + v33 * v9, v4);
      sub_2429B1CC4(&qword_27ECD7220);
      v15 = sub_2429B7300();
      v16 = *v13;
      v7 = (*v13)(&v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v32;
      if (((*(v34 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v16(v37, v4);
    v35(v31, *(v36 + 48) + v14, v4);
    return 0;
  }

  else
  {
LABEL_5:
    v17 = v30;
    v18 = *v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = isUniquelyReferenced_nonNull_native;
    v21 = v28;
    v22 = v28[8];
    MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
    v24 = &v27 - v23;
    v25 = v37;
    (v21[2])(&v27 - v23, v37, v4);
    v38 = *v17;
    sub_2429AF510(v24, v9, v20);
    *v17 = v38;
    (v21[4])(v31, v25, v4);
    return 1;
  }
}

uint64_t sub_2429AEBD4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECD7200, &unk_2429B8690);
    v2 = sub_2429B75B0();
    v16 = v2;
    sub_2429B7520();
    if (sub_2429B7550())
    {
      sub_2429A565C(0, &unk_27ECD71C8, 0x277D44708);
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_2429AEDC4(v10 + 1);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        result = sub_2429B74C0();
        v5 = v16 + 56;
        v6 = -1 << *(v16 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v8 == v12;
            if (v8 == v12)
            {
              v8 = 0;
            }

            v11 |= v13;
            v14 = *(v5 + 8 * v8);
          }

          while (v14 == -1);
          v9 = __clz(__rbit64(~v14)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v16 + 48) + 8 * v9) = v15;
        ++*(v16 + 16);
      }

      while (sub_2429B7550());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_2429AEDC4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECD7200, &unk_2429B8690);
  result = sub_2429B75A0();
  v6 = result;
  if (*(v3 + 16))
  {
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
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      result = sub_2429B74C0();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_2429AEFEC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD7228, &qword_2429B86A8);
  result = sub_2429B75A0();
  v6 = result;
  if (*(v3 + 16))
  {
    v35 = v2;
    v36 = v3;
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
    v37 = result;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v40 = (v11 - 1) & v11;
LABEL_17:
      v18 = v15 | (v7 << 6);
      v19 = sub_2429B7000();
      v39 = &v35;
      v20 = *(v19 - 8);
      v21 = v20[8];
      MEMORY[0x28223BE20](v19);
      v23 = &v35 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
      v24 = v20[9];
      v25 = *(v3 + 48) + v24 * v18;
      v38 = v20[4];
      v38(v23, v25, v19);
      v6 = v37;
      v26 = *(v37 + 40);
      sub_2429B1CC4(&qword_27ECD7218);
      result = sub_2429B72F0();
      v27 = -1 << *(v6 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v13 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v13 + 8 * v29);
          if (v33 != -1)
          {
            v14 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v28) & ~*(v13 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = (v38)(*(v6 + 48) + v14 * v24, v23, v19);
      ++*(v6 + 16);
      v11 = v40;
      v3 = v36;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v40 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v34 = 1 << *(v3 + 32);
    if (v34 >= 64)
    {
      bzero(v8, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v34;
    }

    v2 = v35;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_2429AF31C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_2429B74C0();
  v5 = -1 << *(a2 + 32);
  result = sub_2429B7510();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_2429AF3A0(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2429AEDC4(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_2429AF774();
      goto LABEL_12;
    }

    sub_2429AFB08(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  v10 = sub_2429B74C0();
  v11 = -1 << *(v8 + 32);
  a2 = v10 & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    sub_2429A565C(0, &unk_27ECD71C8, 0x277D44708);
    do
    {
      v13 = *(*(v8 + 48) + 8 * a2);
      v14 = sub_2429B74D0();

      if (v14)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v15 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + 8 * a2) = a1;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v15 + 16) = v18;
    return;
  }

  __break(1u);
LABEL_15:
  sub_2429B7700();
  __break(1u);
}

uint64_t sub_2429AF510(uint64_t a1, unint64_t a2, char a3)
{
  v30 = a1;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2429AEFEC(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      sub_2429AF8C4();
      goto LABEL_12;
    }

    sub_2429AFD1C(v5 + 1);
  }

  v7 = *v3;
  v8 = *(*v3 + 40);
  v9 = sub_2429B7000();
  sub_2429B1CC4(&qword_27ECD7218);
  v10 = sub_2429B72F0();
  v28 = v7 + 56;
  v29 = v7;
  v11 = -1 << *(v7 + 32);
  a2 = v10 & ~v11;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v27 = ~v11;
    v12 = *(v9 - 8);
    v13 = v12[2];
    v14 = v12[8];
    v15 = v12[9];
    v16 = (v12 + 1);
    do
    {
      MEMORY[0x28223BE20](v10);
      v13(&v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), *(v29 + 48) + v15 * a2, v9);
      sub_2429B1CC4(&qword_27ECD7220);
      v17 = sub_2429B7300();
      v10 = (*v16)(&v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
      if (v17)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v27;
    }

    while (((*(v28 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v18 = *v26;
  *(*v26 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v19 = *(v18 + 48);
  v20 = sub_2429B7000();
  result = (*(*(v20 - 8) + 32))(v19 + *(*(v20 - 8) + 72) * a2, v30, v20);
  v22 = *(v18 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (!v23)
  {
    *(v18 + 16) = v24;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_2429B7700();
  __break(1u);
  return result;
}

id sub_2429AF774()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECD7200, &unk_2429B8690);
  v2 = *v0;
  v3 = sub_2429B7590();
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

void *sub_2429AF8C4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD7228, &qword_2429B86A8);
  v2 = *v0;
  v3 = sub_2429B7590();
  v4 = v3;
  if (*(v2 + 16))
  {
    v26 = v1;
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    v9 = *(v2 + 16);
    v27 = v4;
    *(v4 + 16) = v9;
    v10 = 1 << *(v2 + 32);
    v11 = *(v2 + 56);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v8 << 6);
        v19 = sub_2429B7000();
        v20 = *(v19 - 8);
        v21 = *(v20 + 64);
        MEMORY[0x28223BE20](v19);
        v23 = &v26 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
        v25 = *(v24 + 72) * v18;
        (*(v20 + 16))(v23, *(v2 + 48) + v25, v19);
        result = (*(v20 + 32))(*(v27 + 48) + v25, v23, v19);
      }

      while (v13);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v14)
      {

        v1 = v26;
        v4 = v27;
        goto LABEL_21;
      }

      v17 = *(v2 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_2429AFB08(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECD7200, &unk_2429B8690);
  result = sub_2429B75A0();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(v6 + 40);
      v18 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      result = sub_2429B74C0();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v18;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
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

uint64_t sub_2429AFD1C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD7228, &qword_2429B86A8);
  result = sub_2429B75A0();
  v6 = result;
  if (*(v3 + 16))
  {
    v37 = v2;
    v38 = v3;
    v7 = 0;
    v8 = v3 + 56;
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
    v39 = result;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v41 = (v11 - 1) & v11;
LABEL_17:
      v18 = v15 | (v7 << 6);
      v19 = sub_2429B7000();
      v40 = &v36;
      v20 = *(v19 - 8);
      v21 = *(v20 + 64);
      MEMORY[0x28223BE20](v19);
      v23 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
      v25 = v24;
      v26 = *(v3 + 48);
      v27 = *(v25 + 72);
      (*(v20 + 16))(v23, v26 + v27 * v18, v19);
      v6 = v39;
      v28 = *(v39 + 40);
      sub_2429B1CC4(&qword_27ECD7218);
      result = sub_2429B72F0();
      v29 = -1 << *(v6 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v13 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v13 + 8 * v31);
          if (v35 != -1)
          {
            v14 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v30) & ~*(v13 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = (*(v20 + 32))(*(v6 + 48) + v14 * v27, v23, v19);
      ++*(v6 + 16);
      v11 = v41;
      v3 = v38;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v37;
        goto LABEL_28;
      }

      v17 = *(v8 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v41 = (v17 - 1) & v17;
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

uint64_t sub_2429B002C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD7238, &qword_2429B86B0);
    v2 = sub_2429B76C0();
    v20 = v2;
    sub_2429B7660();
    v3 = sub_2429B7680();
    if (v3)
    {
      v4 = v3;
      sub_2429A565C(0, &unk_27ECD71C8, 0x277D44708);
      v5 = v4;
      do
      {
        v18 = v5;
        swift_dynamicCast();
        sub_2429A565C(0, &qword_27ECD7230, 0x277CC5A28);
        swift_dynamicCast();
        v13 = *(v2 + 16);
        if (*(v2 + 24) <= v13)
        {
          sub_2429B0584(v13 + 1, 1);
        }

        v2 = v20;
        v6 = *(v20 + 40);
        result = sub_2429B74C0();
        v8 = v20 + 64;
        v9 = -1 << *(v20 + 32);
        v10 = result & ~v9;
        v11 = v10 >> 6;
        if (((-1 << v10) & ~*(v20 + 64 + 8 * (v10 >> 6))) != 0)
        {
          v12 = __clz(__rbit64((-1 << v10) & ~*(v20 + 64 + 8 * (v10 >> 6)))) | v10 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v14 = 0;
          v15 = (63 - v9) >> 6;
          do
          {
            if (++v11 == v15 && (v14 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v16 = v11 == v15;
            if (v11 == v15)
            {
              v11 = 0;
            }

            v14 |= v16;
            v17 = *(v8 + 8 * v11);
          }

          while (v17 == -1);
          v12 = __clz(__rbit64(~v17)) + (v11 << 6);
        }

        *(v8 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
        *(*(v20 + 48) + 8 * v12) = v19;
        *(*(v20 + 56) + 8 * v12) = v18;
        ++*(v20 + 16);
        v5 = sub_2429B7680();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return v2;
}

uint64_t sub_2429B0278(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD71F0, &qword_2429B8688);
  v47 = a2;
  result = sub_2429B76B0();
  v8 = result;
  if (*(v5 + 16))
  {
    v44 = v3;
    v45 = v5;
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
    v46 = result;
    while (v13)
    {
      v21 = __clz(__rbit64(v13));
      v48 = (v13 - 1) & v13;
LABEL_17:
      v24 = v21 | (v9 << 6);
      v25 = (*(v5 + 48) + 16 * v24);
      v26 = v25[1];
      v50 = *v25;
      v27 = *(v5 + 56) + 40 * v24;
      v29 = *v27;
      v28 = *(v27 + 8);
      v49 = *(v27 + 16);
      v31 = *(v27 + 24);
      v30 = *(v27 + 32);
      if ((v47 & 1) == 0)
      {

        v32 = v29;
        v33 = v28;
        v34 = v31;
      }

      v8 = v46;
      v35 = *(v46 + 40);
      sub_2429B7760();
      sub_2429B7340();
      result = sub_2429B7780();
      v36 = -1 << *(v46 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v15 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        v17 = v28;
        v18 = v31;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v15 + 8 * v38);
          if (v42 != -1)
          {
            v16 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v37) & ~*(v15 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
      v17 = v28;
      v18 = v31;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v19 = (*(v46 + 48) + 16 * v16);
      *v19 = v50;
      v19[1] = v26;
      v20 = *(v46 + 56) + 40 * v16;
      *v20 = v29;
      *(v20 + 8) = v17;
      *(v20 + 16) = v49;
      *(v20 + 24) = v18;
      *(v20 + 32) = v30;
      ++*(v46 + 16);
      v5 = v45;
      v13 = v48;
    }

    v22 = v9;
    while (1)
    {
      v9 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v23 = v10[v9];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v48 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v44;
      goto LABEL_35;
    }

    v43 = 1 << *(v5 + 32);
    v3 = v44;
    if (v43 >= 64)
    {
      bzero(v10, ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v43;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_2429B0584(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD7238, &qword_2429B86B0);
  result = sub_2429B76B0();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
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
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v21;
        v24 = v22;
      }

      v25 = *(v8 + 40);
      result = sub_2429B74C0();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if (a2)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

id sub_2429B07EC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD71F0, &qword_2429B8688);
  v31 = v0;
  v1 = *v0;
  v2 = sub_2429B76A0();
  v3 = v2;
  if (*(v1 + 16))
  {
    result = (v2 + 64);
    v5 = ((1 << *(v3 + 32)) + 63) >> 6;
    if (v3 != v1 || result >= v1 + 64 + 8 * v5)
    {
      result = memmove(result, (v1 + 64), 8 * v5);
    }

    v7 = 0;
    *(v3 + 16) = *(v1 + 16);
    v8 = 1 << *(v1 + 32);
    v9 = *(v1 + 64);
    v10 = -1;
    if (v8 < 64)
    {
      v10 = ~(-1 << v8);
    }

    v11 = v10 & v9;
    v12 = (v8 + 63) >> 6;
    if ((v10 & v9) != 0)
    {
      do
      {
        v13 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_17:
        v16 = v13 | (v7 << 6);
        v17 = 16 * v16;
        v18 = (*(v1 + 48) + 16 * v16);
        v19 = *v18;
        v20 = v18[1];
        v16 *= 40;
        v21 = *(v1 + 56) + v16;
        v22 = *v21;
        v23 = *(v21 + 8);
        v24 = *(v21 + 16);
        v26 = *(v21 + 24);
        v25 = *(v21 + 32);
        v27 = (*(v3 + 48) + v17);
        *v27 = v19;
        v27[1] = v20;
        v28 = *(v3 + 56) + v16;
        *v28 = v22;
        *(v28 + 8) = v23;
        *(v28 + 16) = v24;
        *(v28 + 24) = v26;
        *(v28 + 32) = v25;

        v29 = v22;
        v30 = v23;
        result = v26;
      }

      while (v11);
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
        goto LABEL_19;
      }

      v15 = *(v1 + 64 + 8 * v7);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v31 = v3;
  }

  return result;
}

id sub_2429B09A0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD7238, &qword_2429B86B0);
  v2 = *v0;
  v3 = sub_2429B76A0();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
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

id sub_2429B0B00(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD7260, &unk_2429B83B0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v35 - v4;
  v6 = sub_2429B6E20();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 uniqueID];
  if (v11)
  {
    v12 = v11;
    v13 = sub_2429B7320();
    v15 = v14;

    sub_2429B6E10();
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      sub_2429A234C(v5, &qword_27ECD7260, &unk_2429B83B0);
      if (qword_28118FA48 != -1)
      {
        swift_once();
      }

      v16 = sub_2429B72D0();
      __swift_project_value_buffer(v16, qword_28118FA50);

      v17 = sub_2429B72B0();
      v18 = sub_2429B7480();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v36 = v20;
        *v19 = 136315138;
        v21 = sub_2429A091C(v13, v15, &v36);

        *(v19 + 4) = v21;
        _os_log_impl(&dword_24299E000, v17, v18, "event ID %s is not a valid reminder ID", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v20);
        MEMORY[0x245D1DF70](v20, -1, -1);
        MEMORY[0x245D1DF70](v19, -1, -1);
      }

      else
      {
      }
    }

    else
    {
      (*(v7 + 32))(v10, v5, v6);
      v26 = sub_2429B6DF0();
      v27 = [objc_opt_self() objectIDWithURL_];

      if (v27)
      {
        (*(v7 + 8))(v10, v6);

        return v27;
      }

      if (qword_28118FA48 != -1)
      {
        swift_once();
      }

      v29 = sub_2429B72D0();
      __swift_project_value_buffer(v29, qword_28118FA50);

      v30 = sub_2429B72B0();
      v31 = sub_2429B7480();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v36 = v33;
        *v32 = 136315138;
        v34 = sub_2429A091C(v13, v15, &v36);

        *(v32 + 4) = v34;
        _os_log_impl(&dword_24299E000, v30, v31, "event ID %s is not a valid reminder ID", v32, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v33);
        MEMORY[0x245D1DF70](v33, -1, -1);
        MEMORY[0x245D1DF70](v32, -1, -1);
      }

      else
      {
      }

      (*(v7 + 8))(v10, v6);
    }
  }

  else
  {
    if (qword_28118FA48 != -1)
    {
      swift_once();
    }

    v22 = sub_2429B72D0();
    __swift_project_value_buffer(v22, qword_28118FA50);
    v23 = sub_2429B72B0();
    v24 = sub_2429B7480();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_24299E000, v23, v24, "skipping event with nil uniqueID", v25, 2u);
      MEMORY[0x245D1DF70](v25, -1, -1);
    }
  }

  return 0;
}

unint64_t sub_2429B1038()
{
  result = qword_27ECD71B0;
  if (!qword_27ECD71B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECD71B0);
  }

  return result;
}

uint64_t sub_2429B108C(uint64_t a1)
{
  v3 = v2;
  v4 = *(sub_2429B6DB0() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = v1[5];
  v12 = *(v1 + v6);
  v13 = *(v1 + v7);
  v14 = *(v1 + ((v7 + 11) & 0xFFFFFFFFFFFFFFF8));
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_2429ADEF4;

  return sub_2429A80BC(a1, v8, v9, v10, v11, v1 + v5, v12, v13);
}

uint64_t sub_2429B11F0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2429B1FB4;

  return sub_2429AE170(a1, v5);
}

unint64_t sub_2429B12A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD7250, &qword_2429B86C8);
    v3 = sub_2429B76D0();
    v4 = a1 + 32;

    while (1)
    {
      sub_2429B1D18(v4, v13, &qword_27ECD7248, &qword_2429B86C0);
      result = sub_2429AE3D8(v13);
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
      result = sub_2429B1D80(&v15, (v3[7] + 32 * result));
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

uint64_t sub_2429B13E4(unint64_t a1)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2429B7530())
  {
    v4 = sub_2429A565C(0, &unk_27ECD71C8, 0x277D44708);
    v5 = sub_2429B1AF0();
    result = MEMORY[0x245D1D730](i, v4, v5);
    v12 = result;
    if (j)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x245D1D8C0](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(a1 + 8 * j + 32);
      }

      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_2429AE6B4(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_2429B7530();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

unint64_t sub_2429B1524(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD7238, &qword_2429B86B0);
    v3 = sub_2429B76D0();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_2429AE41C(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

uint64_t sub_2429B161C(uint64_t a1)
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
  v11[1] = sub_2429B1FB4;

  return sub_2429AAEA0(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_2429B1858()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECD71D8, &qword_2429B8680);
  v2 = *(sub_2429B7410() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = v0 + ((v3 + *(v2 + 64) + *(*(v1 - 8) + 80)) & ~*(*(v1 - 8) + 80));

  return sub_2429ADCD0(v0 + v3, v4, v1);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2429B1958()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECD71D8, &qword_2429B8680);
  v2 = *(*(sub_2429B7410() - 8) + 80);

  return sub_2429ADDB8();
}

unint64_t sub_2429B19EC()
{
  result = qword_27ECD71E8;
  if (!qword_27ECD71E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECD71E8);
  }

  return result;
}

unint64_t sub_2429B1AF0()
{
  result = qword_27ECD71F8;
  if (!qword_27ECD71F8)
  {
    sub_2429A565C(255, &unk_27ECD71C8, 0x277D44708);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECD71F8);
  }

  return result;
}

uint64_t sub_2429B1B58(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_2429B7000();
  v4 = sub_2429B1CC4(&qword_27ECD7218);
  result = MEMORY[0x245D1D730](v2, v3, v4);
  v17 = result;
  if (v2)
  {
    v6 = *(v3 - 8);
    v7 = *(v6 + 16);
    v15[1] = v6 + 16;
    v16 = v7;
    v8 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v9 = *(v6 + 64);
    v15[0] = *(v6 + 72);
    v10 = (v6 + 8);
    do
    {
      v11 = MEMORY[0x28223BE20](result);
      v12 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
      MEMORY[0x28223BE20](v11);
      v14 = v15 - v13;
      v16(v15 - v13, v8, v3);
      sub_2429AE8EC(v12, v14);
      result = (*v10)(v12, v3);
      v8 += v15[0];
      --v2;
    }

    while (v2);
    return v17;
  }

  return result;
}

uint64_t sub_2429B1CC4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_2429B7000();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2429B1D18(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

_OWORD *sub_2429B1D80(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_2429B1D90(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2429ADEF4;

  return sub_2429A8EB0(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t getEnumTagSinglePayload for CUIKIReminderEditorImplementation.AlertDisplayerAdapter.CUIKReminderEditorAlertErrors(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for CUIKIReminderEditorImplementation.AlertDisplayerAdapter.CUIKReminderEditorAlertErrors(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_2429B1F5C()
{
  result = qword_27ECD7268;
  if (!qword_27ECD7268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECD7268);
  }

  return result;
}

char *PendingReminderTracker.__allocating_init(eventStore:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = OBJC_IVAR____TtC21CalendarUIKitInternal22PendingReminderTracker_trackedEvents;
  *&v3[v4] = sub_2429A0180(MEMORY[0x277D84F90]);
  *&v3[OBJC_IVAR____TtC21CalendarUIKitInternal22PendingReminderTracker_eventStore] = a1;
  v11.receiver = v3;
  v11.super_class = v1;
  v5 = a1;
  v6 = objc_msgSendSuper2(&v11, sel_init);
  v7 = objc_opt_self();
  v8 = v6;
  v9 = [v7 defaultCenter];
  [v9 addObserver:v8 selector:sel_eventStoreDidChange_ name:*MEMORY[0x277CC5948] object:*&v8[OBJC_IVAR____TtC21CalendarUIKitInternal22PendingReminderTracker_eventStore]];

  return v8;
}

id sub_2429B20B0(void *a1, int a2)
{
  sub_2429B2AC8(a1, a2, 1, v2);
  result = [a1 objectID];
  if (result)
  {
    v5 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD71C0, &qword_2429B85A0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_2429B8550;
    *(v6 + 32) = v5;
    v7 = v5;
    sub_2429B3FB8(v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2429B224C(void *a1, int a2, void *a3)
{
  v6 = a1;
  v7 = a3;
  sub_2429B5F4C(v6, a2, 1, v3, v6, v7);
}

void sub_2429B22C4(uint64_t a1, void *a2, void *a3)
{
  if (qword_28118FA48 != -1)
  {
    swift_once();
  }

  v6 = sub_2429B72D0();
  __swift_project_value_buffer(v6, qword_28118FA50);
  v7 = a2;
  v8 = sub_2429B72B0();
  v9 = sub_2429B7470();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20 = v11;
    *v10 = 136315138;
    v12 = [v7 uniqueID];
    if (v12)
    {
      v13 = v12;
      v14 = sub_2429B7320();
      v16 = v15;
    }

    else
    {
      v14 = 0;
      v16 = 0xE000000000000000;
    }

    v17 = sub_2429A091C(v14, v16, &v20);

    *(v10 + 4) = v17;
    _os_log_impl(&dword_24299E000, v8, v9, "Saving optimistic result for %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x245D1DF70](v11, -1, -1);
    MEMORY[0x245D1DF70](v10, -1, -1);
  }

  v18 = *(a1 + 24);
  v19 = a3;

  *(a1 + 24) = a3;
}

uint64_t sub_2429B2500(void *a1)
{
  v7 = 0;
  v5 = 0u;
  v6 = 0u;
  sub_2429B3518(a1, 0, 0, v1, &v5);
  v2 = v5;
  if (!v5)
  {
    return 0;
  }

  v3 = *(&v6 + 1);

  return v3;
}

void sub_2429B2620(void *a1, char a2)
{
  v5 = [a1 originalItem];
  if (!v5)
  {
    v12 = [a1 uniqueID];
    if (v12)
    {
      v6 = v12;
      v9 = sub_2429B7320();
      v11 = v13;
      goto LABEL_6;
    }

LABEL_10:
    if (qword_28118FA48 != -1)
    {
      swift_once();
    }

    v26 = sub_2429B72D0();
    __swift_project_value_buffer(v26, qword_28118FA50);
    v27 = a1;
    oslog = sub_2429B72B0();
    v28 = sub_2429B7480();

    if (os_log_type_enabled(oslog, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138412290;
      *(v29 + 4) = v27;
      *v30 = v27;
      v31 = v27;
      _os_log_impl(&dword_24299E000, oslog, v28, "Ignoring attempt to reset event with no uniqueID (%@)", v29, 0xCu);
      sub_2429A234C(v30, &qword_27ECD71B8, &qword_2429B8598);
      MEMORY[0x245D1DF70](v30, -1, -1);
      MEMORY[0x245D1DF70](v29, -1, -1);
    }

    return;
  }

  v6 = v5;
  v7 = [v5 uniqueID];
  if (!v7)
  {

    goto LABEL_10;
  }

  v8 = v7;
  v9 = sub_2429B7320();
  v11 = v10;

LABEL_6:
  v14 = OBJC_IVAR____TtC21CalendarUIKitInternal22PendingReminderTracker_trackedEvents;
  swift_beginAccess();
  v15 = *(v2 + v14);
  if (*(v15 + 16))
  {
    v16 = *(v2 + v14);

    v17 = sub_2429AE360(v9, v11);
    if (v18)
    {
      v19 = *(v15 + 56) + 40 * v17;
      v20 = *v19;
      v21 = *(v19 + 8);
      v38 = a2;
      v22 = *(v19 + 24);
      v23 = *(v19 + 32);

      v24 = v20;
      osloga = v21;
      v25 = v22;

      swift_beginAccess();
      sub_2429B51B0(v9, v11, v41);
      swift_endAccess();
      sub_2429A234C(v41, &qword_27ECD7290, &unk_2429B87F0);

      sub_2429B58FC(v24, v23, v38 & 1);

      return;
    }
  }

  if (qword_27ECD6FF0 != -1)
  {
    swift_once();
  }

  v32 = sub_2429B72D0();
  __swift_project_value_buffer(v32, qword_27ECD72C8);

  v33 = sub_2429B72B0();
  v34 = sub_2429B7490();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v41[0] = v36;
    *v35 = 136446210;
    v37 = sub_2429A091C(v9, v11, v41);

    *(v35 + 4) = v37;
    _os_log_impl(&dword_24299E000, v33, v34, "Ignoring attempt to reset event not tracked with id %{public}s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v36);
    MEMORY[0x245D1DF70](v36, -1, -1);
    MEMORY[0x245D1DF70](v35, -1, -1);
  }

  else
  {
  }
}

void sub_2429B2AC8(void *a1, int a2, char a3, unint64_t a4)
{
  v8 = [a1 originalItem];
  v9 = v8;
  if (!v8)
  {
    v16 = [a1 uniqueID];
    if (v16)
    {
      v15 = v16;
      v12 = sub_2429B7320();
      v14 = v17;
      goto LABEL_6;
    }

LABEL_11:
    if (qword_28118FA48 != -1)
    {
      swift_once();
    }

    v33 = sub_2429B72D0();
    __swift_project_value_buffer(v33, qword_28118FA50);
    v34 = a1;
    v88 = sub_2429B72B0();
    v35 = sub_2429B7480();

    if (os_log_type_enabled(v88, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v36 = 138412290;
      *(v36 + 4) = v34;
      *v37 = v34;
      v38 = v34;
      _os_log_impl(&dword_24299E000, v88, v35, "Ignoring pending event with no uniqueID (%@)", v36, 0xCu);
      sub_2429A234C(v37, &qword_27ECD71B8, &qword_2429B8598);
      MEMORY[0x245D1DF70](v37, -1, -1);
      MEMORY[0x245D1DF70](v36, -1, -1);
    }

    return;
  }

  v10 = [v8 uniqueID];
  if (!v10)
  {

    goto LABEL_11;
  }

  v11 = v10;
  v12 = sub_2429B7320();
  v14 = v13;

  v15 = v9;
LABEL_6:

  v18 = OBJC_IVAR____TtC21CalendarUIKitInternal22PendingReminderTracker_trackedEvents;
  swift_beginAccess();
  v19 = *(&v18->isa + a4);
  if (*(v19 + 16))
  {
    v20 = *(&v18->isa + a4);

    v21 = sub_2429AE360(v12, v14);
    if (v22)
    {
      v87 = a2;
      v82 = v18;
      v83 = a4;
      v84 = v14;
      v85 = v12;
      v23 = *(v19 + 56) + 40 * v21;
      v25 = *v23;
      v24 = *(v23 + 8);
      v26 = *(v23 + 16);
      v28 = *(v23 + 24);
      v27 = *(v23 + 32);

      v29 = v25;
      v30 = v24;
      v31 = v28;

      *&v90 = v29;
      *(&v90 + 1) = v30;
      LODWORD(v91) = v26;
      v88 = v28;
      *(&v91 + 1) = v28;
      v92 = v27;
      if (a3)
      {
        v86 = v30;
        v32 = v29;
        v14 = v84;
        a4 = v83;
        v18 = v82;
        a2 = v87;
        goto LABEL_22;
      }

LABEL_27:

      return;
    }
  }

  if ((a3 & 1) == 0)
  {
    goto LABEL_27;
  }

  v39 = a1;
  sub_2429B5720(v39, &v93);
  v32 = v93;
  if (v93)
  {
    v85 = v12;
    v27 = v96;
    v26 = v94;
    v90 = v93;
    v86 = *(&v93 + 1);
    LODWORD(v91) = v94;
    v88 = v95;
    *(&v91 + 1) = v95;
    v92 = v96;
LABEL_22:
    v84 = v32;
    v87 = a2;
    if (v26)
    {
      if (v26 == a2)
      {
        v40 = v14;

        v41 = v32;
        v42 = v86;
        v43 = v88;
LABEL_46:
        v71 = swift_beginAccess();
        LODWORD(v91) = v87;
        if (v9)
        {
          if (v27)
          {
            *&v97[0] = a1;
            MEMORY[0x28223BE20](v71);
            v81[2] = v97;

            if ((sub_2429B55F8(sub_2429B6D24, v81, v27) & 1) == 0)
            {
              *&v97[0] = v27;
              v72 = a1;
              MEMORY[0x245D1D630]();
              if (*((*&v97[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v97[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                v80 = *((*&v97[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
                sub_2429B73A0();
              }

              sub_2429B73C0();
              v92 = *&v97[0];
            }
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD71C0, &qword_2429B85A0);
            v73 = swift_allocObject();
            *(v73 + 16) = xmmword_2429B8550;
            *(v73 + 32) = a1;
            v92 = v73;
            v74 = a1;
          }
        }

        v97[0] = v90;
        v97[1] = v91;
        v98 = v92;
        v75 = v90;
        v99 = v92;
        v100 = *(&v91 + 1);
        swift_beginAccess();
        v76 = v75;
        v77 = *(&v75 + 1);
        sub_2429B1D18(&v100, &v89, &qword_27ECD72B0, &qword_2429B8888);
        sub_2429B1D18(&v99, &v89, &qword_27ECD72B8, &unk_2429B8890);
        v78 = *(&v18->isa + a4);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v89 = *(&v18->isa + a4);
        *(&v18->isa + a4) = 0x8000000000000000;
        sub_2429B5444(v97, v85, v40, isUniquelyReferenced_nonNull_native);

        *(&v18->isa + a4) = v89;
        swift_endAccess();

        sub_2429A234C(&v100, &qword_27ECD72B0, &qword_2429B8888);
        sub_2429A234C(&v99, &qword_27ECD72B8, &unk_2429B8890);
        return;
      }

      v61 = qword_28118FA48;
      v62 = v32;
      v63 = v86;
      v64 = v88;
      v83 = v27;

      if (v61 != -1)
      {
        swift_once();
      }

      v65 = sub_2429B72D0();
      __swift_project_value_buffer(v65, qword_28118FA50);

      v66 = sub_2429B72B0();
      v67 = sub_2429B7470();

      v82 = v66;
      v68 = v14;
      if (os_log_type_enabled(v66, v67))
      {
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        *&v97[0] = v70;
        *v69 = 67109634;
        *(v69 + 4) = v26;
        *(v69 + 8) = 1024;
        *(v69 + 10) = a2;
        *(v69 + 14) = 2080;
        v40 = v68;
        *(v69 + 16) = sub_2429A091C(v85, v68, v97);
        _os_log_impl(&dword_24299E000, v82, v67, "Updating tracked sequence number (%d->%d) for %s", v69, 0x18u);
        __swift_destroy_boxed_opaque_existential_0(v70);
        MEMORY[0x245D1DF70](v70, -1, -1);
        MEMORY[0x245D1DF70](v69, -1, -1);
      }

      else
      {
        v40 = v14;
      }
    }

    else
    {
      v44 = qword_28118FA48;
      v45 = v32;
      v46 = v86;
      v47 = v88;
      v83 = v27;

      if (v44 != -1)
      {
        swift_once();
      }

      v48 = sub_2429B72D0();
      __swift_project_value_buffer(v48, qword_28118FA50);

      v49 = sub_2429B72B0();
      v50 = sub_2429B7470();

      v51 = v14;
      if (os_log_type_enabled(v49, v50))
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        *&v97[0] = v53;
        *v52 = 136446210;
        v40 = v51;
        *(v52 + 4) = sub_2429A091C(v85, v51, v97);
        _os_log_impl(&dword_24299E000, v49, v50, "Now tracking pending reminder with id %{public}s", v52, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v53);
        MEMORY[0x245D1DF70](v53, -1, -1);
        MEMORY[0x245D1DF70](v52, -1, -1);
      }

      else
      {
        v40 = v14;
      }
    }

    v27 = v83;
    goto LABEL_46;
  }

  if (qword_28118FA48 != -1)
  {
    swift_once();
  }

  v54 = sub_2429B72D0();
  __swift_project_value_buffer(v54, qword_28118FA50);
  v55 = v39;
  v56 = sub_2429B72B0();
  v57 = sub_2429B7480();

  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    *v58 = 138412290;
    *(v58 + 4) = v55;
    *v59 = v55;
    v60 = v55;
    _os_log_impl(&dword_24299E000, v56, v57, "Couldn't create tracked event info for event %@", v58, 0xCu);
    sub_2429A234C(v59, &qword_27ECD71B8, &qword_2429B8598);
    MEMORY[0x245D1DF70](v59, -1, -1);
    MEMORY[0x245D1DF70](v58, -1, -1);
  }
}

void sub_2429B3518(void *a1, int a2, int a3, NSObject *a4, uint64_t a5)
{
  v10 = [a1 originalItem];
  v11 = v10;
  if (!v10)
  {
    v18 = [a1 uniqueID];
    if (v18)
    {
      v17 = v18;
      LODWORD(v110) = a2;
      v14 = sub_2429B7320();
      v16 = v19;
      goto LABEL_6;
    }

LABEL_11:
    if (qword_28118FA48 != -1)
    {
      swift_once();
    }

    v35 = sub_2429B72D0();
    __swift_project_value_buffer(v35, qword_28118FA50);
    v36 = a1;
    v110 = sub_2429B72B0();
    v37 = sub_2429B7480();

    if (os_log_type_enabled(v110, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v38 = 138412290;
      *(v38 + 4) = v36;
      *v39 = v36;
      v40 = v36;
      _os_log_impl(&dword_24299E000, v110, v37, "Ignoring pending event with no uniqueID (%@)", v38, 0xCu);
      sub_2429A234C(v39, &qword_27ECD71B8, &qword_2429B8598);
      MEMORY[0x245D1DF70](v39, -1, -1);
      MEMORY[0x245D1DF70](v38, -1, -1);
    }

    return;
  }

  v12 = [v10 uniqueID];
  if (!v12)
  {

    goto LABEL_11;
  }

  LODWORD(v110) = a2;
  v13 = v12;
  v14 = sub_2429B7320();
  v16 = v15;

  v17 = v11;
LABEL_6:

  v20 = OBJC_IVAR____TtC21CalendarUIKitInternal22PendingReminderTracker_trackedEvents;
  swift_beginAccess();
  v21 = *(&a4->isa + v20);
  if (*(v21 + 16))
  {
    v22 = *(&a4->isa + v20);

    v23 = sub_2429AE360(v14, v16);
    if (v24)
    {
      v101 = v14;
      v102 = a1;
      v104 = a5;
      v99 = a4;
      v100 = v20;
      v107 = v16;
      v25 = *(v21 + 56) + 40 * v23;
      v26 = *v25;
      v27 = *(v25 + 8);
      v28 = a3;
      v29 = *(v25 + 16);
      v30 = *(v25 + 24);
      v31 = *(v25 + 32);

      v32 = v26;
      v33 = v27;
      v34 = v30;

      *&v113 = v32;
      *(&v113 + 1) = v33;
      LODWORD(v114) = v29;
      v109 = v30;
      *(&v114 + 1) = v30;
      v115 = v31;
      v106 = v28;
      if ((v28 & 1) == 0)
      {
        v105 = v32;
        v103 = v33;
        v47 = v34;
        v108 = v31;

        a4 = v99;
        v45 = v104;
LABEL_52:
        swift_beginAccess();
        v120[0] = v113;
        v120[1] = v114;
        v81 = *(&v114 + 1);
        v80 = v115;
        v121 = v115;
        v122 = v115;
        v82 = *(&v113 + 1);
        v83 = v114;
        v84 = v113;
        v123[0] = *(&v114 + 1);
        v85 = *v45;
        v86 = *(v45 + 8);
        v87 = *(v45 + 16);
        v88 = *(v45 + 24);
        v89 = *(v45 + 32);
        *v45 = v113;
        *(v45 + 8) = v82;
        *(v45 + 16) = v83;
        *(v45 + 24) = v81;
        *(v45 + 32) = v80;
        v90 = v84;
        v91 = *(&v84 + 1);
        sub_2429B1D18(v123, v112, &qword_27ECD72B0, &qword_2429B8888);
        sub_2429B1D18(&v122, v112, &qword_27ECD72B8, &unk_2429B8890);
        sub_2429B6C48(v85, v86, v87, v88);
        if (v106)
        {
          v92 = v100;
          swift_beginAccess();
          v93 = v90;
          v94 = v91;
          sub_2429B1D18(v123, &v111, &qword_27ECD72B0, &qword_2429B8888);
          sub_2429B1D18(&v122, &v111, &qword_27ECD72B8, &unk_2429B8890);
          v95 = *(&a4->isa + v92);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v111 = *(&a4->isa + v92);
          *(&a4->isa + v92) = 0x8000000000000000;
          sub_2429B5444(v120, v101, v107, isUniquelyReferenced_nonNull_native);

          *(&a4->isa + v92) = v111;
          swift_endAccess();
        }

        else
        {
        }

        sub_2429A234C(v123, &qword_27ECD72B0, &qword_2429B8888);
        sub_2429A234C(&v122, &qword_27ECD72B8, &unk_2429B8890);
        return;
      }

      v16 = v107;
      a4 = v99;
LABEL_22:
      v107 = v16;
      v108 = v31;
      v103 = v33;
      v105 = v32;
      if (v29)
      {
        if (v29 == v110)
        {

          v42 = v32;
          v43 = v33;
          v44 = v109;
          v45 = v104;
          v46 = v102;
LABEL_43:
          v75 = v110;
LABEL_44:
          v76 = swift_beginAccess();
          LODWORD(v114) = v75;
          if (v11)
          {
            if (v31)
            {
              *&v120[0] = v46;
              MEMORY[0x28223BE20](v76);
              v98[2] = v120;

              if ((sub_2429B55F8(sub_2429B6CA0, v98, v31) & 1) == 0)
              {
                *&v120[0] = v31;
                v77 = v46;
                MEMORY[0x245D1D630]();
                if (*((*&v120[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v120[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  v97 = *((*&v120[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
                  sub_2429B73A0();
                }

                sub_2429B73C0();
                v115 = *&v120[0];
              }
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD71C0, &qword_2429B85A0);
              v78 = swift_allocObject();
              *(v78 + 16) = xmmword_2429B8550;
              *(v78 + 32) = v46;
              v115 = v78;
              v79 = v46;
              v108 = 0;
            }
          }

          goto LABEL_52;
        }

        v65 = qword_28118FA48;
        v66 = v32;
        v67 = v33;
        v68 = v109;

        if (v65 != -1)
        {
          swift_once();
        }

        v69 = sub_2429B72D0();
        __swift_project_value_buffer(v69, qword_28118FA50);

        v70 = sub_2429B72B0();
        v71 = sub_2429B7470();

        v45 = v104;
        v46 = v102;
        if (os_log_type_enabled(v70, v71))
        {
          v72 = v16;
          v73 = swift_slowAlloc();
          v99 = v70;
          v74 = swift_slowAlloc();
          *&v120[0] = v74;
          *v73 = 67109634;
          *(v73 + 4) = v29;
          *(v73 + 8) = 1024;
          v75 = v110;
          *(v73 + 10) = v110;
          *(v73 + 14) = 2080;
          *(v73 + 16) = sub_2429A091C(v101, v72, v120);
          _os_log_impl(&dword_24299E000, v99, v71, "Updating tracked sequence number (%d->%d) for %s", v73, 0x18u);
          __swift_destroy_boxed_opaque_existential_0(v74);
          MEMORY[0x245D1DF70](v74, -1, -1);
          MEMORY[0x245D1DF70](v73, -1, -1);

          v31 = v108;
          goto LABEL_44;
        }
      }

      else
      {
        v48 = qword_28118FA48;
        v49 = v32;
        v50 = v33;
        v51 = v109;

        if (v48 != -1)
        {
          swift_once();
        }

        v52 = sub_2429B72D0();
        __swift_project_value_buffer(v52, qword_28118FA50);

        v53 = sub_2429B72B0();
        v54 = sub_2429B7470();

        v45 = v104;
        v46 = v102;
        if (os_log_type_enabled(v53, v54))
        {
          v55 = v16;
          v56 = swift_slowAlloc();
          v57 = swift_slowAlloc();
          *&v120[0] = v57;
          *v56 = 136446210;
          *(v56 + 4) = sub_2429A091C(v101, v55, v120);
          _os_log_impl(&dword_24299E000, v53, v54, "Now tracking pending reminder with id %{public}s", v56, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v57);
          MEMORY[0x245D1DF70](v57, -1, -1);
          MEMORY[0x245D1DF70](v56, -1, -1);
        }
      }

      v31 = v108;
      goto LABEL_43;
    }
  }

  if ((a3 & 1) == 0)
  {

    return;
  }

  v102 = a1;
  v41 = a1;
  sub_2429B5720(v41, &v116);
  v32 = v116;
  if (v116)
  {
    v104 = a5;
    v100 = v20;
    v101 = v14;
    v106 = a3;
    v31 = v119;
    v29 = v117;
    v33 = *(&v116 + 1);
    v113 = v116;
    LODWORD(v114) = v117;
    v109 = v118;
    *(&v114 + 1) = v118;
    v115 = v119;
    goto LABEL_22;
  }

  if (qword_28118FA48 != -1)
  {
    swift_once();
  }

  v58 = sub_2429B72D0();
  __swift_project_value_buffer(v58, qword_28118FA50);
  v59 = v41;
  v60 = sub_2429B72B0();
  v61 = sub_2429B7480();

  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    *v62 = 138412290;
    *(v62 + 4) = v59;
    *v63 = v59;
    v64 = v59;
    _os_log_impl(&dword_24299E000, v60, v61, "Couldn't create tracked event info for event %@", v62, 0xCu);
    sub_2429A234C(v63, &qword_27ECD71B8, &qword_2429B8598);
    MEMORY[0x245D1DF70](v63, -1, -1);
    MEMORY[0x245D1DF70](v62, -1, -1);
  }
}

void sub_2429B3FB8(uint64_t a1)
{
  sub_2429B12A8(MEMORY[0x277D84F90]);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD7240, &qword_2429B86B8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2429B87D0;
  v4 = *MEMORY[0x277CC5950];
  sub_2429B7320();
  sub_2429B7580();
  *(inited + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD72C0, &unk_2429B88A0);
  *(inited + 72) = a1;
  v5 = *MEMORY[0x277CC5940];
  sub_2429B7320();

  sub_2429B7580();
  *(inited + 168) = MEMORY[0x277D83E88];
  *(inited + 144) = 1;
  v6 = *MEMORY[0x277CC5938];
  sub_2429B7320();
  sub_2429B7580();
  v7 = MEMORY[0x277D839B0];
  *(inited + 240) = MEMORY[0x277D839B0];
  *(inited + 216) = 1;
  v8 = *MEMORY[0x277CC5958];
  sub_2429B7320();
  sub_2429B7580();
  *(inited + 312) = v7;
  *(inited + 288) = 0;

  sub_2429B7580();
  *(inited + 384) = v7;
  *(inited + 360) = 1;
  sub_2429B12A8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD7248, &qword_2429B86C0);
  swift_arrayDestroy();
  v9 = [objc_opt_self() defaultCenter];
  v10 = *MEMORY[0x277CC5948];
  v11 = *(v1 + OBJC_IVAR____TtC21CalendarUIKitInternal22PendingReminderTracker_eventStore);
  v12 = sub_2429B72E0();

  [v9 postNotificationName:v10 object:v11 userInfo:v12];
}

void sub_2429B4238()
{
  v1 = v0;
  v2 = sub_2429B6D60();
  if (!v2)
  {
    goto LABEL_9;
  }

  v3 = v2;
  v125[0] = qword_27ECD7270;
  v125[1] = off_27ECD7278;

  sub_2429B7580();
  if (!*(v3 + 16) || (v4 = sub_2429AE3D8(v128), (v5 & 1) == 0))
  {

    sub_2429B1A9C(v128);
LABEL_9:
    v126 = 0u;
    v127 = 0u;
    goto LABEL_10;
  }

  sub_2429A0DD4(*(v3 + 56) + 32 * v4, &v126);
  sub_2429B1A9C(v128);

  if (*(&v127 + 1))
  {
    if (swift_dynamicCast() && (v128[0] & 1) != 0)
    {
      return;
    }

    goto LABEL_11;
  }

LABEL_10:
  sub_2429A234C(&v126, &qword_27ECD7298, "F\a");
LABEL_11:
  v6 = OBJC_IVAR____TtC21CalendarUIKitInternal22PendingReminderTracker_trackedEvents;
  swift_beginAccess();
  v7 = *(v1 + v6);
  v10 = *(v7 + 64);
  v9 = v7 + 64;
  v8 = v10;
  v11 = 1 << *(*(v1 + v6) + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v8;
  v109 = OBJC_IVAR____TtC21CalendarUIKitInternal22PendingReminderTracker_eventStore;
  v114 = *(v1 + v6);
  v115 = (v11 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v14 = 0;
  v108 = v1;
  v112 = v6;
  v113 = v9;
  while (v13)
  {
    v16 = v1;
LABEL_22:
    v18 = __clz(__rbit64(v13)) | (v14 << 6);
    v19 = (*(v114 + 48) + 16 * v18);
    v21 = *v19;
    v20 = v19[1];
    v22 = *(v114 + 56) + 40 * v18;
    v23 = *v22;
    v24 = *(v22 + 8);
    v122 = *(v22 + 16);
    v25 = *(v22 + 24);
    v120 = v13;
    v121 = *(v22 + 32);
    swift_bridgeObjectRetain_n();

    v26 = v23;
    v27 = v24;
    v28 = v25;
    v29 = v26;

    v30 = v29;
    v123 = v27;
    v116 = v28;
    v31 = [v30 isTemporary];
    v32 = *(v16 + v109);
    if (v31)
    {
      v1 = v16;
      v33 = v32;
      v34 = sub_2429B7310();
      v35 = [v33 allEventsWithUniqueId:v34 occurrenceDate:0];

      if (v35)
      {
        v110 = v21;
        v118 = v20;
        sub_2429A565C(0, &qword_27ECD7230, 0x277CC5A28);
        v36 = sub_2429B7380();

        if (v36 >> 62)
        {
          v37 = sub_2429B7530();
          if (v37)
          {
LABEL_26:
            v38 = 0;
            do
            {
              if ((v36 & 0xC000000000000001) != 0)
              {
                v39 = MEMORY[0x245D1D8C0](v38, v36);
              }

              else
              {
                if (v38 >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_73;
                }

                v39 = *(v36 + 8 * v38 + 32);
              }

              v40 = v39;
              v41 = v38 + 1;
              if (__OFADD__(v38, 1))
              {
                goto LABEL_72;
              }

              v42 = [v39 calendar];
              if (!v42)
              {
                goto LABEL_74;
              }

              v43 = v42;
              v44 = [v42 objectID];

              if (v44)
              {
                sub_2429A565C(0, &qword_27ECD72A0, 0x277CC5A60);
                v45 = v123;
                v46 = sub_2429B74D0();

                if (v46)
                {

                  if (qword_28118FA48 != -1)
                  {
                    swift_once();
                  }

                  v86 = sub_2429B72D0();
                  __swift_project_value_buffer(v86, qword_28118FA50);

                  v87 = sub_2429B72B0();
                  v88 = sub_2429B7470();

                  if (os_log_type_enabled(v87, v88))
                  {
                    v89 = swift_slowAlloc();
                    v90 = swift_slowAlloc();
                    v125[0] = v90;
                    *v89 = 136315138;
                    v91 = v110;
                    *(v89 + 4) = sub_2429A091C(v110, v118, v125);
                    _os_log_impl(&dword_24299E000, v87, v88, "Clearing pending state for %s because it now exists", v89, 0xCu);
                    __swift_destroy_boxed_opaque_existential_0(v90);
                    MEMORY[0x245D1DF70](v90, -1, -1);
                    MEMORY[0x245D1DF70](v89, -1, -1);

                    v15 = v120;
                  }

                  else
                  {

                    v15 = v120;
                    v91 = v110;
                  }

                  sub_2429B58FC(v30, v121, 1);
                  swift_beginAccess();
                  sub_2429B51B0(v91, v118, v128);
                  swift_endAccess();
                  sub_2429A234C(v128, &qword_27ECD7290, &unk_2429B87F0);

                  v1 = v108;
                  swift_bridgeObjectRelease_n();

                  v9 = v113;
                  goto LABEL_15;
                }
              }

              ++v38;
            }

            while (v41 != v37);
          }
        }

        else
        {
          v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v37)
          {
            goto LABEL_26;
          }
        }

        swift_bridgeObjectRelease_n();

        v1 = v108;
        v9 = v113;
        v15 = v120;
      }

      else
      {
        swift_bridgeObjectRelease_n();

        v9 = v113;
        v15 = v120;
      }
    }

    else
    {
      v111 = v21;
      v119 = v20;
      v47 = [v32 publicObjectWithObjectID_];
      v15 = v120;
      if (v47)
      {
        v48 = v47;
        objc_opt_self();
        v49 = swift_dynamicCastObjCClass();
        if (v49)
        {
          v50 = [v49 sequenceNumber];
          if (v122 == v50)
          {

            swift_bridgeObjectRelease_n();
            v9 = v113;
            v1 = v108;
          }

          else
          {
            v71 = v50;
            v72 = v30;
            v9 = v113;
            if (qword_28118FA48 != -1)
            {
              swift_once();
            }

            v73 = sub_2429B72D0();
            __swift_project_value_buffer(v73, qword_28118FA50);
            v107 = v72;

            v74 = v123;
            v75 = v116;

            v76 = sub_2429B72B0();
            v77 = sub_2429B7470();

            v78 = v76;
            v124 = v74;
            v117 = v75;
            if (os_log_type_enabled(v76, v77))
            {
              v79 = swift_slowAlloc();
              v80 = swift_slowAlloc();
              v125[0] = v80;
              *v79 = 136315650;
              v81 = v111;
              *(v79 + 4) = sub_2429A091C(v111, v119, v125);
              *(v79 + 12) = 1024;
              *(v79 + 14) = v122;

              v82 = v107;
              *(v79 + 18) = 1024;
              *(v79 + 20) = v71;
              _os_log_impl(&dword_24299E000, v78, v77, "Clearing pending state for %s because it has been updated (%d->%d)", v79, 0x18u);
              __swift_destroy_boxed_opaque_existential_0(v80);
              v83 = v80;
              v6 = v112;
              MEMORY[0x245D1DF70](v83, -1, -1);
              v84 = v79;
              v74 = v124;
              v85 = v108;
              MEMORY[0x245D1DF70](v84, -1, -1);

              v15 = v120;
            }

            else
            {

              v82 = v107;

              v15 = v120;
              v81 = v111;
              v85 = v108;
            }

            sub_2429B58FC(v82, v121, 1);
            swift_beginAccess();
            v92 = v85;
            v93 = *(v85 + v6);
            v94 = sub_2429AE360(v81, v119);
            if (v95)
            {
              v96 = v94;
              v97 = v92;
              v98 = *(v92 + v112);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v100 = *(v92 + v112);
              if (!isUniquelyReferenced_nonNull_native)
              {
                sub_2429B07EC();
              }

              v101 = *(*(v100 + 48) + 16 * v96 + 8);

              v102 = *(v100 + 56) + 40 * v96;
              v103 = *v102;
              v104 = *(v102 + 8);
              v106 = *(v102 + 24);
              v105 = *(v102 + 32);
              sub_2429B5288(v96, v100);
              *(v97 + v112) = v100;

              v92 = v97;
              v9 = v113;
              v15 = v120;
              v74 = v124;
            }

            swift_endAccess();

            swift_bridgeObjectRelease_n();
            v1 = v92;
          }

          goto LABEL_15;
        }
      }

      v51 = v30;
      if (qword_28118FA48 != -1)
      {
        swift_once();
      }

      v52 = sub_2429B72D0();
      __swift_project_value_buffer(v52, qword_28118FA50);

      v53 = sub_2429B72B0();
      v54 = sub_2429B7470();

      v9 = v113;
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v125[0] = v56;
        *v55 = 136315138;
        *(v55 + 4) = sub_2429A091C(v21, v20, v125);
        _os_log_impl(&dword_24299E000, v53, v54, "Clearing pending state for %s because it has been deleted", v55, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v56);
        MEMORY[0x245D1DF70](v56, -1, -1);
        v57 = v55;
        v15 = v120;
        MEMORY[0x245D1DF70](v57, -1, -1);
      }

      v1 = v108;
      sub_2429B58FC(v51, v121, 1);
      swift_beginAccess();
      v58 = *(v108 + v6);
      v59 = sub_2429AE360(v21, v20);
      if (v60)
      {
        v61 = v59;
        v62 = *(v108 + v6);
        v63 = swift_isUniquelyReferenced_nonNull_native();
        v64 = *(v108 + v6);
        if (!v63)
        {
          sub_2429B07EC();
        }

        v65 = *(*(v64 + 48) + 16 * v61 + 8);

        v66 = *(v64 + 56) + 40 * v61;
        v67 = *v66;
        v68 = *(v66 + 8);
        v70 = *(v66 + 24);
        v69 = *(v66 + 32);
        sub_2429B5288(v61, v64);
        *(v108 + v6) = v64;

        v9 = v113;
        v15 = v120;
        v1 = v108;
      }

      swift_endAccess();
      swift_bridgeObjectRelease_n();
    }

LABEL_15:
    v13 = (v15 - 1) & v15;

    v6 = v112;
  }

  while (1)
  {
    v17 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v17 >= v115)
    {

      return;
    }

    v13 = *(v9 + 8 * v17);
    ++v14;
    if (v13)
    {
      v16 = v1;
      v14 = v17;
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
}

id PendingReminderTracker.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PendingReminderTracker.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PendingReminderTracker();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_2429B50BC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD72A8, &qword_2429B8880);
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

unint64_t sub_2429B51B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  result = sub_2429AE360(a1, a2);
  if (v8)
  {
    v9 = result;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_2429B07EC();
      v12 = v20;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56) + 40 * v9;
    v19 = *v14;
    v15 = *(v14 + 16);
    v16 = *(v14 + 24);
    v17 = *(v14 + 32);
    result = sub_2429B5288(v9, v12);
    v18 = v19;
    *v4 = v12;
  }

  else
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0uLL;
  }

  *a3 = v18;
  *(a3 + 16) = v15;
  *(a3 + 24) = v16;
  *(a3 + 32) = v17;
  return result;
}

uint64_t sub_2429B5288(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2429B7500() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 40);
      v12 = (*(a2 + 48) + 16 * v6);
      v13 = *v12;
      v14 = v12[1];
      sub_2429B7760();

      sub_2429B7340();
      v15 = sub_2429B7780();

      v16 = v15 & v7;
      if (v3 >= v8)
      {
        if (v16 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v16 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v16)
      {
LABEL_10:
        v17 = *(a2 + 48);
        v18 = (v17 + 16 * v3);
        v19 = (v17 + 16 * v6);
        if (v3 != v6 || v18 >= v19 + 1)
        {
          *v18 = *v19;
        }

        v20 = *(a2 + 56);
        v21 = v20 + 40 * v3;
        v22 = (v20 + 40 * v6);
        if (v3 != v6 || v21 >= v22 + 40)
        {
          v9 = *v22;
          v10 = v22[1];
          *(v21 + 32) = *(v22 + 4);
          *v21 = v9;
          *(v21 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_2429B5444(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2429AE360(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_2429B0278(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_2429AE360(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_2429B7710();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_2429B07EC();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7] + 40 * v11;
    v25 = *v23;
    v24 = *(v23 + 8);
    v27 = *(v23 + 24);
    v26 = *(v23 + 32);
    v28 = *(a1 + 16);
    *v23 = *a1;
    *(v23 + 16) = v28;
    *(v23 + 32) = *(a1 + 32);
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v30 = (v22[6] + 16 * v11);
  *v30 = a2;
  v30[1] = a3;
  v31 = v22[7] + 40 * v11;
  v32 = *(a1 + 16);
  *v31 = *a1;
  *(v31 + 16) = v32;
  *(v31 + 32) = *(a1 + 32);
  v33 = v22[2];
  v15 = __OFADD__(v33, 1);
  v34 = v33 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v34;
}

uint64_t sub_2429B55F8(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x245D1D8C0](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_2429B7530();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

void sub_2429B5720(void *a1@<X0>, void *a2@<X8>)
{
  v3 = a1;
  v4 = [v3 originalItem];
  if (!v4)
  {
    v6 = [v3 objectID];
    if (v6)
    {
      v13 = [v3 calendar];

      if (v13)
      {
        v9 = [v13 objectID];

        if (v9)
        {
LABEL_18:
          v10 = 0;
          goto LABEL_19;
        }

LABEL_14:
        v6 = 0;
        goto LABEL_18;
      }

      goto LABEL_16;
    }

LABEL_17:
    v9 = 0;
    goto LABEL_18;
  }

  v5 = v4;

  v6 = [v5 objectID];
  if (!v6)
  {

    goto LABEL_17;
  }

  v7 = [v5 calendar];
  if (!v7)
  {

LABEL_16:
    v6 = 0;
    goto LABEL_17;
  }

  v8 = v7;
  v9 = [v7 objectID];

  if (!v9)
  {

    goto LABEL_14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD71C0, &qword_2429B85A0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2429B8550;
  *(v10 + 32) = v3;
  v11 = v6;
  v12 = v9;

LABEL_19:
  *a2 = v6;
  a2[1] = v9;
  a2[2] = 0;
  a2[3] = 0;
  a2[4] = v10;
}

uint64_t sub_2429B58FC(void *a1, unint64_t a2, char a3)
{
  v6 = v3;
  v63 = *MEMORY[0x277D85DE8];
  v7 = MEMORY[0x277D84F90];
  v62 = MEMORY[0x277D84F90];
  v56 = a1;
  if (a2)
  {
    v8 = a2;
    if (a2 >> 62)
    {
      v9 = sub_2429B7530();
      if (v9)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v9 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v9)
      {
LABEL_4:
        if (v9 >= 1)
        {
          v10 = 0;
          v11 = OBJC_IVAR____TtC21CalendarUIKitInternal22PendingReminderTracker_eventStore;
          v12 = v8 & 0xC000000000000001;
          v58 = v9;
          v59 = v8;
          v60 = v8 & 0xC000000000000001;
          while (1)
          {
            if (v12)
            {
              v14 = MEMORY[0x245D1D8C0](v10, v8);
            }

            else
            {
              v14 = *(v8 + 8 * v10 + 32);
            }

            v15 = v14;
            v16 = [v14 objectID];
            if (!v16)
            {
              goto LABEL_16;
            }

            v17 = v16;
            if ([v16 isTemporary])
            {
              break;
            }

LABEL_7:
            if (v9 == ++v10)
            {
              goto LABEL_25;
            }
          }

          v18 = v17;
          MEMORY[0x245D1D630]();
          if (*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v62 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v35 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_2429B73A0();
          }

          sub_2429B73C0();

          v7 = v62;
LABEL_16:
          v19 = *(v6 + v11);
          v61 = 0;
          if ([v19 removeEvent:v15 span:0 commit:0 error:&v61])
          {
            v13 = v61;
          }

          else
          {
            v20 = v61;
            v21 = sub_2429B6DD0();

            swift_willThrow();
            if (qword_28118FA48 != -1)
            {
              swift_once();
            }

            v22 = sub_2429B72D0();
            __swift_project_value_buffer(v22, qword_28118FA50);
            v23 = v21;
            v24 = sub_2429B72B0();
            v25 = sub_2429B7480();

            if (os_log_type_enabled(v24, v25))
            {
              v26 = v6;
              v27 = swift_slowAlloc();
              v28 = v11;
              v29 = v7;
              v30 = swift_slowAlloc();
              *v27 = 138412290;
              v31 = v21;
              v32 = _swift_stdlib_bridgeErrorToNSError();
              *(v27 + 4) = v32;
              *v30 = v32;
              _os_log_impl(&dword_24299E000, v24, v25, "Couldn't remove temporary event: %@", v27, 0xCu);
              sub_2429A234C(v30, &qword_27ECD71B8, &qword_2429B8598);
              v33 = v30;
              v7 = v29;
              v11 = v28;
              MEMORY[0x245D1DF70](v33, -1, -1);
              v34 = v27;
              v6 = v26;
              v9 = v58;
              v8 = v59;
              MEMORY[0x245D1DF70](v34, -1, -1);
            }

            else
            {
            }

            v12 = v60;
          }

          goto LABEL_7;
        }

        __break(1u);
LABEL_50:
        sub_2429B73A0();
        goto LABEL_28;
      }
    }
  }

LABEL_25:
  v9 = OBJC_IVAR____TtC21CalendarUIKitInternal22PendingReminderTracker_eventStore;
  v36 = *(v6 + OBJC_IVAR____TtC21CalendarUIKitInternal22PendingReminderTracker_eventStore);
  v37 = v56;
  v38 = [v36 publicObjectWithObjectID_];
  if (!v38)
  {

    if ((a3 & 1) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  v4 = v38;
  objc_opt_self();
  v39 = swift_dynamicCastObjCClass();
  if (!v39)
  {

    goto LABEL_35;
  }

  v5 = v39;
  MEMORY[0x245D1D630]();
  if (*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v62 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_50;
  }

LABEL_28:
  sub_2429B73C0();
  v7 = v62;
  if ([v5 hasEverBeenCommitted])
  {
    [v5 reset];
    goto LABEL_35;
  }

  v40 = *(v6 + v9);
  v61 = 0;
  if ([v40 removeEvent:v5 span:0 commit:0 error:&v61])
  {
    v41 = v61;
LABEL_35:

    if ((a3 & 1) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  v44 = v61;
  v45 = sub_2429B6DD0();

  swift_willThrow();
  if (qword_28118FA48 != -1)
  {
    swift_once();
  }

  v46 = sub_2429B72D0();
  __swift_project_value_buffer(v46, qword_28118FA50);
  v47 = v45;
  v48 = sub_2429B72B0();
  v49 = sub_2429B7480();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = v7;
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    *v51 = 138412290;
    v53 = v45;
    v54 = _swift_stdlib_bridgeErrorToNSError();
    *(v51 + 4) = v54;
    *v52 = v54;
    _os_log_impl(&dword_24299E000, v48, v49, "Couldn't remove temporary event: %@", v51, 0xCu);
    sub_2429A234C(v52, &qword_27ECD71B8, &qword_2429B8598);
    MEMORY[0x245D1DF70](v52, -1, -1);
    v55 = v51;
    v7 = v50;
    MEMORY[0x245D1DF70](v55, -1, -1);

    if ((a3 & 1) == 0)
    {
      goto LABEL_39;
    }
  }

  else
  {

    if ((a3 & 1) == 0)
    {
      goto LABEL_39;
    }
  }

LABEL_36:
  if (v7 >> 62)
  {
    if (sub_2429B7530() < 1)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

  if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
  {
LABEL_38:
    sub_2429B3FB8(v7);
  }

LABEL_39:

  v43 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2429B5F4C(void *a1, int a2, int a3, NSObject *a4, void *a5, void *a6)
{
  v104 = a4;
  v11 = [a1 originalItem];
  v12 = v11;
  if (!v11)
  {
    v19 = [a1 uniqueID];
    if (v19)
    {
      v18 = v19;
      v103 = a2;
      v15 = sub_2429B7320();
      v17 = v20;
      goto LABEL_6;
    }

LABEL_11:
    if (qword_28118FA48 != -1)
    {
      swift_once();
    }

    v38 = sub_2429B72D0();
    __swift_project_value_buffer(v38, qword_28118FA50);
    v39 = a1;
    v104 = sub_2429B72B0();
    v40 = sub_2429B7480();

    if (os_log_type_enabled(v104, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *v41 = 138412290;
      *(v41 + 4) = v39;
      *v42 = v39;
      v43 = v39;
      _os_log_impl(&dword_24299E000, v104, v40, "Ignoring pending event with no uniqueID (%@)", v41, 0xCu);
      sub_2429A234C(v42, &qword_27ECD71B8, &qword_2429B8598);
      MEMORY[0x245D1DF70](v42, -1, -1);
      MEMORY[0x245D1DF70](v41, -1, -1);
    }

    return;
  }

  v13 = [v11 uniqueID];
  if (!v13)
  {

    goto LABEL_11;
  }

  v103 = a2;
  v14 = v13;
  v15 = sub_2429B7320();
  v17 = v16;

  v18 = v12;
LABEL_6:

  v21 = OBJC_IVAR____TtC21CalendarUIKitInternal22PendingReminderTracker_trackedEvents;
  swift_beginAccess();
  v22 = *(&v104->isa + v21);
  if (*(v22 + 16))
  {
    v23 = *(&v104->isa + v21);

    v24 = sub_2429AE360(v15, v17);
    if (v25)
    {
      v95 = v21;
      v98 = a5;
      v99 = a6;
      v100 = v17;
      v96 = v15;
      v26 = *(v22 + 56) + 40 * v24;
      v28 = *v26;
      v27 = *(v26 + 8);
      v29 = *(v26 + 16);
      v31 = *(v26 + 24);
      v30 = *(v26 + 32);

      v32 = v28;
      v33 = v27;
      v34 = v31;

      *&v106 = v32;
      *(&v106 + 1) = v33;
      LODWORD(v107) = v29;
      v102 = v31;
      *(&v107 + 1) = v31;
      v108 = v30;
      v101 = a3;
      if ((a3 & 1) == 0)
      {
        v97 = v32;
        v37 = v33;
        v50 = v34;

        v48 = v101;
        v49 = v100;
        v21 = v95;
LABEL_52:
        swift_beginAccess();
        sub_2429B22C4(&v106, v98, v99);
        swift_endAccess();
        if (v48)
        {
          v113[0] = v106;
          v113[1] = v107;
          v114 = v108;
          v86 = v106;
          v115 = v108;
          v116 = *(&v107 + 1);
          v87 = v104;
          swift_beginAccess();
          v88 = v86;
          v89 = *(&v86 + 1);
          sub_2429B1D18(&v116, &v105, &qword_27ECD72B0, &qword_2429B8888);
          sub_2429B1D18(&v115, &v105, &qword_27ECD72B8, &unk_2429B8890);
          v90 = *(&v87->isa + v21);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v105 = *(&v87->isa + v21);
          *(&v87->isa + v21) = 0x8000000000000000;
          sub_2429B5444(v113, v96, v49, isUniquelyReferenced_nonNull_native);

          *(&v87->isa + v21) = v105;
          swift_endAccess();

          sub_2429A234C(&v116, &qword_27ECD72B0, &qword_2429B8888);
          sub_2429A234C(&v115, &qword_27ECD72B8, &unk_2429B8890);
          return;
        }

        v92 = v97;

        goto LABEL_55;
      }

      v35 = v102;
      v36 = v32;
      v21 = v95;
      v37 = v33;
LABEL_22:
      v102 = v35;
      v97 = v36;
      if (v29)
      {
        if (v29 == v103)
        {

          v45 = v36;
          v46 = v37;
          v47 = v35;
          v48 = v101;
          v49 = v100;
        }

        else
        {
          v69 = qword_28118FA48;
          v70 = v36;
          v95 = v37;
          v71 = v37;
          v72 = v35;
          v73 = v30;

          if (v69 != -1)
          {
            swift_once();
          }

          v74 = sub_2429B72D0();
          __swift_project_value_buffer(v74, qword_28118FA50);
          v75 = v100;

          v76 = sub_2429B72B0();
          v77 = sub_2429B7470();

          if (os_log_type_enabled(v76, v77))
          {
            v78 = swift_slowAlloc();
            v79 = swift_slowAlloc();
            *&v113[0] = v79;
            *v78 = 67109634;
            *(v78 + 4) = v29;
            *(v78 + 8) = 1024;
            v80 = v103;
            *(v78 + 10) = v103;
            *(v78 + 14) = 2080;
            *(v78 + 16) = sub_2429A091C(v96, v75, v113);
            _os_log_impl(&dword_24299E000, v76, v77, "Updating tracked sequence number (%d->%d) for %s", v78, 0x18u);
            __swift_destroy_boxed_opaque_existential_0(v79);
            MEMORY[0x245D1DF70](v79, -1, -1);
            v81 = v80;
            MEMORY[0x245D1DF70](v78, -1, -1);

            v48 = v101;
            v49 = v75;
            v30 = v73;
            v37 = v95;
            goto LABEL_43;
          }

          v48 = v101;
          v49 = v100;
          v30 = v73;
          v37 = v95;
        }
      }

      else
      {
        v51 = qword_28118FA48;
        v52 = v36;
        v53 = v37;
        v54 = v37;
        v55 = v35;
        v56 = v30;

        if (v51 != -1)
        {
          swift_once();
        }

        v57 = sub_2429B72D0();
        __swift_project_value_buffer(v57, qword_28118FA50);
        v49 = v100;

        v58 = sub_2429B72B0();
        v59 = sub_2429B7470();

        if (os_log_type_enabled(v58, v59))
        {
          v60 = swift_slowAlloc();
          v61 = swift_slowAlloc();
          *&v113[0] = v61;
          *v60 = 136446210;
          *(v60 + 4) = sub_2429A091C(v96, v49, v113);
          _os_log_impl(&dword_24299E000, v58, v59, "Now tracking pending reminder with id %{public}s", v60, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v61);
          MEMORY[0x245D1DF70](v61, -1, -1);
          MEMORY[0x245D1DF70](v60, -1, -1);
        }

        v48 = v101;
        v30 = v56;
        v37 = v53;
      }

      v81 = v103;
LABEL_43:
      v82 = swift_beginAccess();
      LODWORD(v107) = v81;
      if (v12)
      {
        if (v30)
        {
          *&v113[0] = a1;
          MEMORY[0x28223BE20](v82);
          v94[2] = v113;

          if (sub_2429B55F8(sub_2429B6D24, v94, v30))
          {
          }

          else
          {
            *&v113[0] = v30;
            v85 = a1;
            MEMORY[0x245D1D630]();
            if (*((*&v113[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v113[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v93 = *((*&v113[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_2429B73A0();
            }

            sub_2429B73C0();
            v108 = *&v113[0];
          }
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD71C0, &qword_2429B85A0);
          v83 = swift_allocObject();
          *(v83 + 16) = xmmword_2429B8550;
          *(v83 + 32) = a1;
          v108 = v83;
          v84 = a1;
        }
      }

      goto LABEL_52;
    }
  }

  if ((a3 & 1) == 0)
  {
LABEL_55:

    return;
  }

  v44 = a1;
  sub_2429B5720(v44, &v109);
  if (v109)
  {
    v98 = a5;
    v99 = a6;
    v100 = v17;
    v101 = a3;
    v96 = v15;
    v35 = v111;
    v30 = v112;
    v29 = v110;
    v37 = *(&v109 + 1);
    v106 = v109;
    LODWORD(v107) = v110;
    *(&v107 + 1) = v111;
    v108 = v112;
    v36 = v109;
    goto LABEL_22;
  }

  if (qword_28118FA48 != -1)
  {
    swift_once();
  }

  v62 = sub_2429B72D0();
  __swift_project_value_buffer(v62, qword_28118FA50);
  v63 = v44;
  v64 = sub_2429B72B0();
  v65 = sub_2429B7480();

  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    *v66 = 138412290;
    *(v66 + 4) = v63;
    *v67 = v63;
    v68 = v63;
    _os_log_impl(&dword_24299E000, v64, v65, "Couldn't create tracked event info for event %@", v66, 0xCu);
    sub_2429A234C(v67, &qword_27ECD71B8, &qword_2429B8598);
    MEMORY[0x245D1DF70](v67, -1, -1);
    MEMORY[0x245D1DF70](v66, -1, -1);
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

uint64_t sub_2429B6BA8(uint64_t *a1, int a2)
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

uint64_t sub_2429B6BF0(uint64_t result, int a2, int a3)
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

void *sub_2429B6C48(void *result, void *a2, uint64_t a3, void *a4)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2429B6CBC(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *v2;
  sub_2429A565C(0, &qword_27ECD7230, 0x277CC5A28);
  return sub_2429B74D0() & 1;
}