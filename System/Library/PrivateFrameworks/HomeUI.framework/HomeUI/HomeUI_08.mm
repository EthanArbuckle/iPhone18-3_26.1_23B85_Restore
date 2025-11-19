void *sub_20CF7E4BC(void *a1)
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_20CF87A2C(&qword_27C81DB80, v2, type metadata accessor for AccessoryRepresentableItemModule);
  }

  objc_allocWithZone(sub_20D565F48());
  v3 = a1;
  v4 = sub_20D565F28();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81BF60);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_20D5BC410;
    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *(v7 + 32) = sub_20CF87B8C;
    *(v7 + 40) = v8;
    v9 = v4;
  }

  else
  {
    v10 = v4;
  }

  sub_20D565D88();

  return v4;
}

id sub_20CF7E650(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a3();

  if (v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF70);
    sub_20CF156D0(&qword_28111FFB0, &qword_27C81AF70);
    v6 = sub_20D567CD8();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

double sub_20CF7E714(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR___HUAccessoryRepresentableItemModule_context);
  v4 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_accessoryContainer;
  swift_beginAccess();
  v5 = *(v3 + v4);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    swift_unknownObjectRetain();
    v6 = a1;
  }

  v7 = objc_allocWithZone(MEMORY[0x277D142F8]);
  swift_unknownObjectRetain();
  v8 = [v7 initWithAccessoryContainer:v6 inHome:a1];
  swift_unknownObjectRelease();
  v9 = *(v1 + OBJC_IVAR___HUAccessoryRepresentableItemModule_accessoryItemProvider);
  *(v1 + OBJC_IVAR___HUAccessoryRepresentableItemModule_accessoryItemProvider) = v8;
  v10 = v8;

  sub_20CF7E81C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
  v11 = swift_allocObject();
  *&result = 1;
  *(v11 + 16) = xmmword_20D5BA040;
  *(v11 + 32) = v10;
  return result;
}

void sub_20CF7E81C()
{
  v1 = *(v0 + OBJC_IVAR___HUAccessoryRepresentableItemModule_accessoryItemProvider);
  if (v1)
  {
    v2 = OBJC_IVAR___HUAccessoryRepresentableItemModule_context;
    v3 = *(v0 + OBJC_IVAR___HUAccessoryRepresentableItemModule_context);
    v4 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_objectLevel;
    swift_beginAccess();
    v5 = *(v3 + v4);
    v6 = v1;
    [v6 setObjectLevel_];
    v7 = (*(v0 + v2) + OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_filter);
    swift_beginAccess();
    if (*v7)
    {
      v8 = v7[1];
      v12[4] = *v7;
      v12[5] = v8;
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 1107296256;
      v12[2] = sub_20CF87B84;
      v12[3] = &block_descriptor_71;
      v9 = _Block_copy(v12);
    }

    else
    {
      v9 = 0;
    }

    [v6 setFilterBlock_];
    _Block_release(v9);
    v10 = *(v0 + v2);
    v11 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_valueSource;
    swift_beginAccess();
    [v6 setValueSource_];
  }
}

void sub_20CF7E9C8()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + OBJC_IVAR___HUAccessoryRepresentableItemModule_accessoryItemProvider);
}

uint64_t sub_20CF7EAD4()
{
  v1 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_objectLevel;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_20CF7EB6C(uint64_t a1)
{
  v3 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_objectLevel;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_20CF7ED28(uint64_t a1)
{
  v3 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_accessoryContainer;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_20CF7ED80(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_accessoryContainer;
  swift_beginAccess();
  *(v3 + v4) = v2;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_20CF7EE90()
{
  v1 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_sectionGroupingType;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_20CF7EF28(uint64_t a1)
{
  v3 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_sectionGroupingType;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_20CF7F020()
{
  v1 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_hideSourceItemDescriptions;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_20CF7F0B8(char a1)
{
  v3 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_hideSourceItemDescriptions;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_20CF7F1B0()
{
  v1 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_showFooter;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_20CF7F248(char a1)
{
  v3 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_showFooter;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_20CF7F404(uint64_t a1)
{
  v3 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_valueSource;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_20CF7F45C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_valueSource;
  swift_beginAccess();
  *(v3 + v4) = v2;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_20CF7F620(uint64_t a1)
{
  v1 = *(a1 + 32);

  v2 = swift_unknownObjectRetain();
  LOBYTE(v1) = v1(v2);

  swift_unknownObjectRelease();
  return v1 & 1;
}

uint64_t sub_20CF7F75C@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_filter);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_20CF879F0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_20CEC81F4(v4);
}

uint64_t sub_20CF7F7FC(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_20CF879B0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_filter);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_20CEC81F4(v3);
  return sub_20CEC8164(v8);
}

uint64_t sub_20CF7FA20(void *a1, void (*a2)(void, void))
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = *v4;
  a2(*v4, v4[1]);
  return v5;
}

uint64_t sub_20CF7FA88(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  LOBYTE(v3) = v3();

  return v3 & 1;
}

uint64_t sub_20CF7FBC0(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9, v10);
}

uint64_t sub_20CF7FC24@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_itemFilter);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_20CF87B88;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_20CEC81F4(v4);
}

uint64_t sub_20CF7FCC4(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_20CF879B0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_itemFilter);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_20CEC81F4(v3);
  return sub_20CEC8164(v8);
}

id AccessoryRepresentableItemModule.Context.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AccessoryRepresentableItemModule.Context.init()()
{
  *&v0[OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_objectLevel] = 0;
  *&v0[OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_accessoryContainer] = 0;
  *&v0[OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_sectionGroupingType] = 1;
  v0[OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_hideSourceItemDescriptions] = 0;
  v0[OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_showFooter] = 0;
  v1 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_valueSource;
  *&v0[v1] = [objc_allocWithZone(MEMORY[0x277D148D0]) init];
  v2 = &v0[OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_filter];
  *v2 = 0;
  v2[1] = 0;
  v3 = &v0[OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_itemFilter];
  v4 = type metadata accessor for AccessoryRepresentableItemModule.Context();
  *v3 = 0;
  v3[1] = 0;
  v6.receiver = v0;
  v6.super_class = v4;
  return objc_msgSendSuper2(&v6, sel_init);
}

id sub_20CF8007C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_20CF80128(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C038);
    v2 = sub_20D568828();
    v15 = v2;
    sub_20D568718();
    if (sub_20D568798())
    {
      sub_20CECF940(0, &qword_27C81AE50);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_20D0C03F4(v9 + 1);
        }

        v2 = v15;
        result = sub_20D5683E8();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_20D568798());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_20CF80318(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C240);
    v2 = sub_20D568828();
    v15 = v2;
    sub_20D568718();
    if (sub_20D568798())
    {
      sub_20CECF940(0, &unk_27C81AE40);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_20D0C0408(v9 + 1);
        }

        v2 = v15;
        result = sub_20D5683E8();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_20D568798());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_20CF80508(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C820E90);
    v2 = sub_20D568828();
    v15 = v2;
    sub_20D568718();
    if (sub_20D568798())
    {
      sub_20CECF940(0, &unk_27C81A3F0);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_20D0C0430(v9 + 1);
        }

        v2 = v15;
        result = sub_20D5683E8();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_20D568798());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_20CF806F8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C820C70);
    v2 = sub_20D568828();
    v15 = v2;
    sub_20D568718();
    if (sub_20D568798())
    {
      sub_20CECF940(0, &qword_281120AC0);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_20D0C041C(v9 + 1);
        }

        v2 = v15;
        result = sub_20D5683E8();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_20D568798());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_20CF808E8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C1A0);
    v2 = sub_20D568828();
    v15 = v2;
    sub_20D568718();
    for (; sub_20D568798(); ++*(v2 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF70);
      swift_dynamicCast();
      v9 = *(v2 + 16);
      if (*(v2 + 24) <= v9)
      {
        sub_20D0C0A14(v9 + 1);
        v2 = v15;
      }

      result = sub_20D5683E8();
      v4 = v2 + 56;
      v5 = -1 << *(v2 + 32);
      v6 = result & ~v5;
      v7 = v6 >> 6;
      if (((-1 << v6) & ~*(v2 + 56 + 8 * (v6 >> 6))) != 0)
      {
        v8 = __clz(__rbit64((-1 << v6) & ~*(v2 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v10 = 0;
        v11 = (63 - v5) >> 6;
        do
        {
          if (++v7 == v11 && (v10 & 1) != 0)
          {
            __break(1u);
            return result;
          }

          v12 = v7 == v11;
          if (v7 == v11)
          {
            v7 = 0;
          }

          v10 |= v12;
          v13 = *(v4 + 8 * v7);
        }

        while (v13 == -1);
        v8 = __clz(__rbit64(~v13)) + (v7 << 6);
      }

      *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
      *(*(v2 + 48) + 8 * v8) = v14;
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_20CF80ADC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81C1E0);
    v2 = sub_20D568828();
    v15 = v2;
    sub_20D568718();
    if (sub_20D568798())
    {
      sub_20CECF940(0, &qword_28111FB80);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_20D0C0A28(v9 + 1);
        }

        v2 = v15;
        result = sub_20D5683E8();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_20D568798());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_20CF80CCC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C1C0);
    v2 = sub_20D568828();
    v15 = v2;
    sub_20D568718();
    if (sub_20D568798())
    {
      sub_20CECF940(0, &qword_28111FEA8);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_20D0C0A3C(v9 + 1);
        }

        v2 = v15;
        result = sub_20D5683E8();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_20D568798());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_20CF80EBC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81C140);
    v2 = sub_20D568828();
    v15 = v2;
    sub_20D568718();
    if (sub_20D568798())
    {
      sub_20CECF940(0, &qword_28111FB10);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_20D0C0A50(v9 + 1);
        }

        v2 = v15;
        result = sub_20D5683E8();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_20D568798());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_20CF810AC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C820E80);
    v2 = sub_20D568828();
    v15 = v2;
    sub_20D568718();
    if (sub_20D568798())
    {
      sub_20CECF940(0, &unk_27C81D480);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_20D0C0A78(v9 + 1);
        }

        v2 = v15;
        result = sub_20D5683E8();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_20D568798());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_20CF8129C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81BF50);
    v2 = sub_20D568828();
    v15 = v2;
    sub_20D568718();
    if (sub_20D568798())
    {
      sub_20CECF940(0, &unk_27C81BF40);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_20D0C0A8C(v9 + 1);
        }

        v2 = v15;
        result = sub_20D5683E8();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_20D568798());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_20CF8148C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81DAF0);
    v2 = sub_20D568828();
    v15 = v2;
    sub_20D568718();
    if (sub_20D568798())
    {
      sub_20CECF940(0, &qword_27C81AEC0);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_20D0C0A00(v9 + 1);
        }

        v2 = v15;
        result = sub_20D5683E8();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_20D568798());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_20CF8167C(uint64_t a1, uint64_t (*a2)())
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x277D84FA0];
    v19 = MEMORY[0x277D84FA0];
    sub_20D568718();
    if (sub_20D568798())
    {
      sub_20CECF940(0, &qword_281120AC0);
      while (1)
      {
        swift_dynamicCast();
        v5 = a2();
        if (v2)
        {
          break;
        }

        if (v5)
        {
          v6 = *(v3 + 16);
          if (*(v3 + 24) <= v6)
          {
            sub_20D0C041C(v6 + 1);
          }

          v3 = v19;
          result = sub_20D5683E8();
          v8 = v19 + 56;
          v9 = -1 << *(v19 + 32);
          v10 = result & ~v9;
          v11 = v10 >> 6;
          if (((-1 << v10) & ~*(v19 + 56 + 8 * (v10 >> 6))) != 0)
          {
            v12 = __clz(__rbit64((-1 << v10) & ~*(v19 + 56 + 8 * (v10 >> 6)))) | v10 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v13 = 0;
            v14 = (63 - v9) >> 6;
            do
            {
              if (++v11 == v14 && (v13 & 1) != 0)
              {
                __break(1u);
                return result;
              }

              v15 = v11 == v14;
              if (v11 == v14)
              {
                v11 = 0;
              }

              v13 |= v15;
              v16 = *(v8 + 8 * v11);
            }

            while (v16 == -1);
            v12 = __clz(__rbit64(~v16)) + (v11 << 6);
          }

          *(v8 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
          *(*(v19 + 48) + 8 * v12) = v18;
          ++*(v19 + 16);
        }

        else
        {
        }

        if (!sub_20D568798())
        {
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_21:
    }
  }

  else
  {
    v17 = sub_20CF874B4(a1, a2);
    if (!v2)
    {
      return v17;
    }
  }

  return v3;
}

void *sub_20CF818BC(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_20CF8734C(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void *sub_20CF8194C(void *result, uint64_t a2, void *a3, uint64_t a4, unint64_t *a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t, _BYTE *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v9 = result;
      v10 = a2;
      v11 = a7;
      v12 = a6;
      v13 = a5;
      bzero(result, 8 * a2);
      result = v9;
      a2 = v10;
      a5 = v13;
      a6 = v12;
      a7 = v11;
    }

    sub_20CF851B4(result, a2, a3, a4, a5, a6, a7);
    v15 = v14;

    return v15;
  }

  return result;
}

uint64_t sub_20CF819FC(uint64_t *a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_20D059BE4(v6);
    *a1 = v6;
  }

  v8 = *(v6 + 16);
  v10[0] = v6 + 32;
  v10[1] = v8;
  sub_20CF81D4C(v10, a2, a3);
  return sub_20D5688D8();
}

uint64_t sub_20CF81A90(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_20D059BE4(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_20CF81E70(v6);
  return sub_20D5688D8();
}

void sub_20CF81B0C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81C000);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 24);
      if (v4 != a3)
      {
LABEL_5:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81DBA0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

char *sub_20CF81C8C(uint64_t a1, char *a2, uint64_t (*a3)(uint64_t *, char *, uint64_t, uint64_t))
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v6 = sub_20D568768();
  if (!v6)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    a2 = (a2)(v6, 0);
    sub_20D5663C8();
    a3 = a3(&v8, a2 + 32, v6, a1);
    sub_20CEC80DC();
    if (a3 == v6)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v6 = *(a1 + 16);
    if (!v6)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return a2;
}

uint64_t sub_20CF81D4C(uint64_t a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *(a1 + 8);
  result = sub_20D568BA8();
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_20CECF940(0, &qword_281120AC0);
        v10 = sub_20D567AE8();
        *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) = v9;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFF8;
      v12[0] = (v10 & 0xFFFFFFFFFFFFFF8) + 32;
      v12[1] = v9;
      a2(v12, v13, a1, v8);
      *(v11 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    return a3(0, v6, 1, a1);
  }

  return result;
}

void sub_20CF81E70(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_20D568BA8();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81DB88);
        v6 = sub_20D567AE8();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_20CF82550(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_20CF81F80(0, v2, 1, a1);
  }
}

void sub_20CF81F80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CE50);
  MEMORY[0x28223BE20](v8 - 8);
  v53 = &v47 - v9;
  v48 = a2;
  if (a3 != a2)
  {
    v10 = *a4;
    v11 = objc_opt_self();
    v58[5] = *MEMORY[0x277D13E20];
    v12 = v10 + 8 * a3 - 8;
    v13 = a1 - a3;
    v52 = v10;
    v54 = v11;
LABEL_5:
    v50 = v12;
    v51 = a3;
    v14 = *(v10 + 8 * a3);
    v49 = v13;
    while (1)
    {
      v15 = *v12;
      v16 = v14;
      v17 = v15;
      v18 = [v11 defaultItemComparator];
      v19 = v18[2](v18, v16, v17);
      _Block_release(v18);
      if (v19)
      {

        if (v19 != -1)
        {
          goto LABEL_4;
        }

LABEL_35:
        if (!v10)
        {
          goto LABEL_43;
        }

        goto LABEL_36;
      }

      v20 = [v16 latestResults];
      if (!v20)
      {
        goto LABEL_20;
      }

      v21 = v20;
      v22 = sub_20D567758();

      v23 = sub_20D567838();
      if (!*(v22 + 16))
      {
        break;
      }

      v25 = sub_20CEED668(v23, v24);
      v27 = v26;

      if ((v27 & 1) == 0)
      {
        goto LABEL_19;
      }

      sub_20CED43FC(*(v22 + 56) + 32 * v25, v58);

      v28 = swift_dynamicCast();
      if (v28)
      {
        v29 = v56;
      }

      else
      {
        v29 = 0;
      }

      if (v28)
      {
        v30 = v57;
      }

      else
      {
        v30 = 0;
      }

LABEL_21:
      v31 = [v17 latestResults];
      if (v31)
      {
        v55 = v29;
        v32 = v31;
        v33 = sub_20D567758();

        v34 = sub_20D567838();
        if (*(v33 + 16))
        {
          v36 = sub_20CEED668(v34, v35);
          v38 = v37;

          if (v38)
          {
            sub_20CED43FC(*(v33 + 56) + 32 * v36, v58);

            v39 = swift_dynamicCast();
            v40 = v56;
            if (v39)
            {
              v41 = v57;
            }

            else
            {
              v40 = 0;
              v41 = 0;
            }
          }

          else
          {

            v40 = 0;
            v41 = 0;
          }

          v10 = v52;
          v29 = v55;
          if (!v30)
          {
LABEL_41:

            v11 = v54;
            if (v41)
            {
            }

LABEL_4:
            a3 = v51 + 1;
            v12 = v50 + 8;
            v13 = v49 - 1;
            if (v51 + 1 == v48)
            {
              return;
            }

            goto LABEL_5;
          }
        }

        else
        {

          v40 = 0;
          v41 = 0;
          v29 = v55;
          if (!v30)
          {
            goto LABEL_41;
          }
        }
      }

      else
      {
        v40 = 0;
        v41 = 0;
        if (!v30)
        {
          goto LABEL_41;
        }
      }

      if (v41)
      {
        v58[0] = v29;
        v58[1] = v30;
        v56 = v40;
        v57 = v41;
        v42 = sub_20D563838();
        v43 = v53;
        (*(*(v42 - 8) + 56))(v53, 1, 1, v42);
        sub_20CEF44D8();
        v44 = sub_20D5685F8();
        sub_20CEF928C(v43, &qword_27C81CE50);

        v11 = v54;
        if (v44 != -1)
        {
          goto LABEL_4;
        }

        goto LABEL_35;
      }

      v11 = v54;
      if (!v10)
      {
LABEL_43:
        __break(1u);
        return;
      }

LABEL_36:
      v45 = *v12;
      v14 = *(v12 + 8);
      *v12 = v14;
      *(v12 + 8) = v45;
      v12 -= 8;
      if (__CFADD__(v13++, 1))
      {
        goto LABEL_4;
      }
    }

LABEL_19:

LABEL_20:
    v29 = 0;
    v30 = 0;
    goto LABEL_21;
  }
}

void sub_20CF82424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = objc_opt_self();
    v8 = v6 + 8 * v4 - 8;
    v9 = a1 - v4;
LABEL_5:
    v22 = v4;
    v10 = *(v6 + 8 * v4);
    v20 = v9;
    v21 = v8;
    v11 = v8;
    while (1)
    {
      v12 = *v11;
      v13 = v10;
      v14 = v12;
      v15 = [v7 defaultItemComparator];
      v16 = v15[2](v15, v13, v14);
      _Block_release(v15);

      if (v16 == 1)
      {
LABEL_4:
        v4 = v22 + 1;
        v8 = v21 + 8;
        v9 = v20 - 1;
        if (v22 + 1 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v17 = *v11;
      v10 = *(v11 + 8);
      *v11 = v10;
      *(v11 + 8) = v17;
      v11 -= 8;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_20CF82550(id *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v149 = a4;
  v150 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CE50);
  MEMORY[0x28223BE20](v6 - 8);
  v155 = a3;
  v156 = &v147 - v7;
  v8 = *(a3 + 8);
  if (v8 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_160:
    v4 = *v150;
    if (*v150)
    {
      a3 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_194;
      }

      v141 = a3;
      goto LABEL_163;
    }

    goto LABEL_200;
  }

  v9 = 0;
  v159 = *MEMORY[0x277D13E20];
  v10 = MEMORY[0x277D84F90];
  v11 = &selRef_constraintGreaterThanOrEqualToConstant_;
  while (1)
  {
    v12 = v9 + 1;
    if (v9 + 1 >= v8)
    {
      v50 = v149;
      goto LABEL_55;
    }

    v148 = v10;
    v13 = *v155;
    v14 = *(*v155 + 8 * v9);
    v4 = *(*v155 + 8 * v12);
    v15 = v14;
    v16 = v158;
    LODWORD(v161) = sub_20CF7D508(v4, v15);
    v158 = v16;
    if (v16)
    {

      return;
    }

    v12 = v9 + 2;
    v147 = v9;
    if (v9 + 2 < v8)
    {
      break;
    }

LABEL_46:
    v10 = v148;
    v50 = v149;
    v9 = v147;
    if (v161)
    {
      if (v12 < v147)
      {
        goto LABEL_193;
      }

      goto LABEL_48;
    }

LABEL_55:
    v57 = v155[1];
    if (v12 >= v57)
    {
      goto LABEL_106;
    }

    if (__OFSUB__(v12, v9))
    {
      goto LABEL_190;
    }

    if (v12 - v9 >= v50)
    {
      goto LABEL_106;
    }

    if (__OFADD__(v9, v50))
    {
      goto LABEL_191;
    }

    if (v9 + v50 >= v57)
    {
      a3 = v155[1];
    }

    else
    {
      a3 = v9 + v50;
    }

    if (a3 < v9)
    {
LABEL_192:
      __break(1u);
      goto LABEL_193;
    }

    if (v12 == a3)
    {
      goto LABEL_106;
    }

    v148 = v10;
    v58 = *v155;
    v160 = objc_opt_self();
    v161 = v58;
    v59 = v58 + 8 * v12 - 8;
    v147 = v9;
    v60 = v9 - v12;
    v151 = a3;
    while (2)
    {
      v153 = v59;
      v154 = v12;
      v61 = *(v161 + 8 * v12);
      v152 = v60;
      v62 = v60;
      while (1)
      {
        v63 = *v59;
        v64 = v61;
        v4 = v63;
        v65 = [v160 v11[427]];
        v66 = v65[2](v65, v64, v4);
        _Block_release(v65);
        if (v66)
        {

          if (v66 != -1)
          {
            goto LABEL_66;
          }

          goto LABEL_97;
        }

        v67 = [v64 latestResults];
        if (!v67)
        {
          goto LABEL_82;
        }

        v68 = v67;
        v69 = sub_20D567758();

        v70 = sub_20D567838();
        if (!*(v69 + 16))
        {

LABEL_81:

LABEL_82:
          v76 = 0;
          v77 = 0;
          goto LABEL_83;
        }

        v72 = sub_20CEED668(v70, v71);
        v74 = v73;

        if ((v74 & 1) == 0)
        {
          goto LABEL_81;
        }

        sub_20CED43FC(*(v69 + 56) + 32 * v72, &v164);

        v75 = swift_dynamicCast();
        v76 = v75 ? v162 : 0;
        v77 = v75 ? v163 : 0;
LABEL_83:
        v78 = [v4 latestResults];
        if (!v78)
        {
          goto LABEL_92;
        }

        v79 = v78;
        v80 = sub_20D567758();

        v81 = sub_20D567838();
        if (!*(v80 + 16))
        {

LABEL_92:
          v87 = 0;
          v88 = 0;
          if (!v77)
          {
            goto LABEL_103;
          }

          goto LABEL_95;
        }

        v157 = v76;
        v83 = sub_20CEED668(v81, v82);
        v85 = v84;

        if (v85)
        {
          break;
        }

        v87 = 0;
        v88 = 0;
        v76 = v157;
        if (!v77)
        {
          goto LABEL_103;
        }

LABEL_95:
        if (v88)
        {
          v164 = v76;
          v165 = v77;
          v162 = v87;
          v163 = v88;
          v89 = sub_20D563838();
          v90 = v156;
          (*(*(v89 - 8) + 56))(v156, 1, 1, v89);
          sub_20CEF44D8();
          v91 = sub_20D5685F8();
          sub_20CEF928C(v90, &qword_27C81CE50);

          v11 = &selRef_constraintGreaterThanOrEqualToConstant_;
          if (v91 != -1)
          {
            goto LABEL_66;
          }

LABEL_97:
          if (!v161)
          {
            goto LABEL_195;
          }

          goto LABEL_98;
        }

        v11 = &selRef_constraintGreaterThanOrEqualToConstant_;
        if (!v161)
        {
LABEL_195:
          __break(1u);
LABEL_196:
          __break(1u);
LABEL_197:
          __break(1u);
LABEL_198:
          __break(1u);
LABEL_199:
          __break(1u);
LABEL_200:
          __break(1u);
          return;
        }

LABEL_98:
        v92 = *v59;
        v61 = *(v59 + 8);
        *v59 = v61;
        *(v59 + 8) = v92;
        v59 -= 8;
        if (__CFADD__(v62++, 1))
        {
          goto LABEL_66;
        }
      }

      sub_20CED43FC(*(v80 + 56) + 32 * v83, &v164);

      v86 = swift_dynamicCast();
      v87 = v162;
      if (v86)
      {
        v88 = v163;
      }

      else
      {
        v87 = 0;
        v88 = 0;
      }

      v76 = v157;
      if (v77)
      {
        goto LABEL_95;
      }

LABEL_103:

      if (v88)
      {
      }

      v11 = &selRef_constraintGreaterThanOrEqualToConstant_;
LABEL_66:
      v12 = v154 + 1;
      v59 = v153 + 8;
      a3 = v151;
      v60 = v152 - 1;
      if (v154 + 1 != v151)
      {
        continue;
      }

      break;
    }

    v12 = v151;
    v9 = v147;
    v10 = v148;
LABEL_106:
    if (v12 < v9)
    {
      goto LABEL_189;
    }

    v94 = v10;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v10 = v94;
    }

    else
    {
      v10 = sub_20CEE81E4(0, *(v94 + 2) + 1, 1, v94);
    }

    a3 = *(v10 + 2);
    v95 = *(v10 + 3);
    v96 = a3 + 1;
    if (a3 >= v95 >> 1)
    {
      v10 = sub_20CEE81E4((v95 > 1), a3 + 1, 1, v10);
    }

    *(v10 + 2) = v96;
    v97 = &v10[16 * a3];
    *(v97 + 4) = v9;
    *(v97 + 5) = v12;
    v4 = *v150;
    if (!*v150)
    {
      goto LABEL_199;
    }

    v9 = v12;
    if (a3)
    {
      while (2)
      {
        v98 = v96 - 1;
        if (v96 >= 4)
        {
          v103 = &v10[16 * v96 + 32];
          v104 = *(v103 - 64);
          v105 = *(v103 - 56);
          v109 = __OFSUB__(v105, v104);
          v106 = v105 - v104;
          if (v109)
          {
            goto LABEL_176;
          }

          v108 = *(v103 - 48);
          v107 = *(v103 - 40);
          v109 = __OFSUB__(v107, v108);
          v101 = v107 - v108;
          v102 = v109;
          if (v109)
          {
            goto LABEL_177;
          }

          v110 = &v10[16 * v96];
          v112 = *v110;
          v111 = *(v110 + 1);
          v109 = __OFSUB__(v111, v112);
          v113 = v111 - v112;
          if (v109)
          {
            goto LABEL_179;
          }

          v109 = __OFADD__(v101, v113);
          v114 = v101 + v113;
          if (v109)
          {
            goto LABEL_182;
          }

          if (v114 >= v106)
          {
            v132 = &v10[16 * v98 + 32];
            v134 = *v132;
            v133 = *(v132 + 1);
            v109 = __OFSUB__(v133, v134);
            v135 = v133 - v134;
            if (v109)
            {
              goto LABEL_186;
            }

            if (v101 < v135)
            {
              v98 = v96 - 2;
            }
          }

          else
          {
LABEL_126:
            if (v102)
            {
              goto LABEL_178;
            }

            v115 = &v10[16 * v96];
            v117 = *v115;
            v116 = *(v115 + 1);
            v118 = __OFSUB__(v116, v117);
            v119 = v116 - v117;
            v120 = v118;
            if (v118)
            {
              goto LABEL_181;
            }

            v121 = &v10[16 * v98 + 32];
            v123 = *v121;
            v122 = *(v121 + 1);
            v109 = __OFSUB__(v122, v123);
            v124 = v122 - v123;
            if (v109)
            {
              goto LABEL_184;
            }

            if (__OFADD__(v119, v124))
            {
              goto LABEL_185;
            }

            if (v119 + v124 < v101)
            {
              goto LABEL_140;
            }

            if (v101 < v124)
            {
              v98 = v96 - 2;
            }
          }
        }

        else
        {
          if (v96 == 3)
          {
            v99 = *(v10 + 4);
            v100 = *(v10 + 5);
            v109 = __OFSUB__(v100, v99);
            v101 = v100 - v99;
            v102 = v109;
            goto LABEL_126;
          }

          v125 = &v10[16 * v96];
          v127 = *v125;
          v126 = *(v125 + 1);
          v109 = __OFSUB__(v126, v127);
          v119 = v126 - v127;
          v120 = v109;
LABEL_140:
          if (v120)
          {
            goto LABEL_180;
          }

          v128 = &v10[16 * v98];
          v130 = *(v128 + 4);
          v129 = *(v128 + 5);
          v109 = __OFSUB__(v129, v130);
          v131 = v129 - v130;
          if (v109)
          {
            goto LABEL_183;
          }

          if (v131 < v119)
          {
            break;
          }
        }

        a3 = v98 - 1;
        if (v98 - 1 >= v96)
        {
          __break(1u);
LABEL_174:
          __break(1u);
LABEL_175:
          __break(1u);
LABEL_176:
          __break(1u);
LABEL_177:
          __break(1u);
LABEL_178:
          __break(1u);
LABEL_179:
          __break(1u);
LABEL_180:
          __break(1u);
LABEL_181:
          __break(1u);
LABEL_182:
          __break(1u);
LABEL_183:
          __break(1u);
LABEL_184:
          __break(1u);
LABEL_185:
          __break(1u);
LABEL_186:
          __break(1u);
LABEL_187:
          __break(1u);
LABEL_188:
          __break(1u);
LABEL_189:
          __break(1u);
LABEL_190:
          __break(1u);
LABEL_191:
          __break(1u);
          goto LABEL_192;
        }

        if (!*v155)
        {
          goto LABEL_196;
        }

        v136 = v10;
        v137 = *&v10[16 * a3 + 32];
        v138 = *&v10[16 * v98 + 40];
        v139 = v158;
        sub_20CF839A0((*v155 + 8 * v137), (*v155 + 8 * *&v10[16 * v98 + 32]), (*v155 + 8 * v138), v4);
        v158 = v139;
        if (v139)
        {
          goto LABEL_171;
        }

        if (v138 < v137)
        {
          goto LABEL_174;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v136 = sub_20D057C88(v136);
        }

        if (a3 >= *(v136 + 2))
        {
          goto LABEL_175;
        }

        v140 = &v136[16 * a3];
        *(v140 + 4) = v137;
        *(v140 + 5) = v138;
        v166 = v136;
        sub_20D057BFC(v98);
        v10 = v166;
        v96 = *(v166 + 2);
        if (v96 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v8 = v155[1];
    if (v9 >= v8)
    {
      goto LABEL_160;
    }
  }

  v17 = (v13 + 8 * v9 + 16);
  v18 = v161;
  v157 = v8;
  while (1)
  {
    a3 = v12;
    v20 = *(v17 - 1);
    v19 = *v17;
    v21 = objc_opt_self();
    v22 = v19;
    v4 = v20;
    v23 = [v21 v11[427]];
    v24 = v23[2](v23, v22, v4);
    _Block_release(v23);
    if (v24)
    {

LABEL_9:
      v12 = a3;
      if (((v18 ^ (v24 != -1)) & 1) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_10;
    }

    v25 = [v22 latestResults];
    if (!v25)
    {
      goto LABEL_22;
    }

    v26 = v25;
    v27 = sub_20D567758();

    v28 = sub_20D567838();
    if (!*(v27 + 16))
    {

LABEL_22:
      v34 = 0;
      v35 = 0;
      goto LABEL_25;
    }

    v30 = sub_20CEED668(v28, v29);
    v32 = v31;

    if (v32)
    {
      sub_20CED43FC(*(v27 + 56) + 32 * v30, &v164);

      v33 = swift_dynamicCast();
      v34 = v33 ? v162 : 0;
      v35 = v33 ? v163 : 0;
    }

    else
    {

      v34 = 0;
      v35 = 0;
    }

    v18 = v161;
LABEL_25:
    v36 = [v4 latestResults];
    if (v36)
    {
      v160 = v34;
      v37 = v36;
      v38 = sub_20D567758();

      v39 = sub_20D567838();
      if (*(v38 + 16))
      {
        v41 = sub_20CEED668(v39, v40);
        v43 = v42;

        if (v43)
        {
          sub_20CED43FC(*(v38 + 56) + 32 * v41, &v164);

          v44 = swift_dynamicCast();
          v45 = v162;
          if (v44)
          {
            v46 = v163;
          }

          else
          {
            v45 = 0;
            v46 = 0;
          }
        }

        else
        {

          v45 = 0;
          v46 = 0;
        }

        v8 = v157;
        v18 = v161;
        v34 = v160;
        if (v35)
        {
LABEL_40:
          if (!v46)
          {

            v11 = &selRef_constraintGreaterThanOrEqualToConstant_;
            v12 = a3;
            if ((v18 & 1) == 0)
            {
              v10 = v148;
              v50 = v149;
              v9 = v147;
              goto LABEL_55;
            }

            goto LABEL_10;
          }

          v164 = v34;
          v165 = v35;
          v162 = v45;
          v163 = v46;
          v47 = sub_20D563838();
          v48 = v156;
          (*(*(v47 - 8) + 56))(v156, 1, 1, v47);
          sub_20CEF44D8();
          v24 = sub_20D5685F8();
          v49 = v48;
          v18 = v161;
          sub_20CEF928C(v49, &qword_27C81CE50);

          v11 = &selRef_constraintGreaterThanOrEqualToConstant_;
          goto LABEL_9;
        }
      }

      else
      {

        v45 = 0;
        v46 = 0;
        v34 = v160;
        if (v35)
        {
          goto LABEL_40;
        }
      }
    }

    else
    {
      v45 = 0;
      v46 = 0;
      if (v35)
      {
        goto LABEL_40;
      }
    }

    if (v46)
    {
    }

    v11 = &selRef_constraintGreaterThanOrEqualToConstant_;
    v12 = a3;
    if (v18)
    {
      break;
    }

LABEL_10:
    ++v12;
    ++v17;
    if (v8 == v12)
    {
      v12 = v8;
      goto LABEL_46;
    }
  }

  v10 = v148;
  v50 = v149;
  v9 = v147;
  if (a3 >= v147)
  {
LABEL_48:
    if (v9 < v12)
    {
      v51 = 8 * v12 - 8;
      v52 = 8 * v9;
      v53 = v12;
      v54 = v9;
      while (1)
      {
        if (v54 != --v53)
        {
          v56 = *v155;
          if (!*v155)
          {
            goto LABEL_197;
          }

          v55 = *(v56 + v52);
          *(v56 + v52) = *(v56 + v51);
          *(v56 + v51) = v55;
        }

        ++v54;
        v51 -= 8;
        v52 += 8;
        if (v54 >= v53)
        {
          goto LABEL_55;
        }
      }
    }

    goto LABEL_55;
  }

LABEL_193:
  __break(1u);
LABEL_194:
  v141 = sub_20D057C88(a3);
LABEL_163:
  v166 = v141;
  a3 = *(v141 + 2);
  if (a3 >= 2)
  {
    while (*v155)
    {
      v142 = *&v141[16 * a3];
      v143 = v141;
      v144 = *&v141[16 * a3 + 24];
      v145 = v158;
      sub_20CF839A0((*v155 + 8 * v142), (*v155 + 8 * *&v141[16 * a3 + 16]), (*v155 + 8 * v144), v4);
      v158 = v145;
      if (v145)
      {
        goto LABEL_171;
      }

      if (v144 < v142)
      {
        goto LABEL_187;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v143 = sub_20D057C88(v143);
      }

      if (a3 - 2 >= *(v143 + 2))
      {
        goto LABEL_188;
      }

      v146 = &v143[16 * a3];
      *v146 = v142;
      *(v146 + 1) = v144;
      v166 = v143;
      sub_20D057BFC(a3 - 1);
      v141 = v166;
      a3 = *(v166 + 2);
      if (a3 <= 1)
      {
        goto LABEL_171;
      }
    }

    goto LABEL_198;
  }

LABEL_171:
}

void sub_20CF832C4(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v7 = a3;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = v10;
    v10 = *a1;
    if (!*a1)
    {
      goto LABEL_126;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_120:
      v5 = sub_20D057C88(v5);
    }

    v97 = *(v5 + 16);
    if (v97 >= 2)
    {
      do
      {
        v98 = *v7;
        if (!*v7)
        {
          goto LABEL_124;
        }

        v7 = (v97 - 1);
        v99 = *(v5 + 16 * v97);
        v100 = *(v5 + 16 * (v97 - 1) + 40);
        sub_20CF83D44((v98 + 8 * v99), (v98 + 8 * *(v5 + 16 * (v97 - 1) + 32)), (v98 + 8 * v100), v10);
        if (v6)
        {
          break;
        }

        if (v100 < v99)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_20D057C88(v5);
        }

        if (v97 - 2 >= *(v5 + 16))
        {
          goto LABEL_114;
        }

        v101 = (v5 + 16 * v97);
        *v101 = v99;
        v101[1] = v100;
        sub_20D057BFC(v97 - 1);
        v97 = *(v5 + 16);
        v7 = a3;
      }

      while (v97 > 1);
    }

LABEL_98:

    return;
  }

  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    v11 = v9;
    v12 = v9 + 1;
    if (v9 + 1 < v8)
    {
      v114 = v8;
      v105 = v10;
      v107 = v6;
      v13 = *(*v7 + 8 * v12);
      v14 = 8 * v9;
      v5 = v9;
      v15 = (*v7 + 8 * v9);
      v17 = *v15;
      v16 = v15 + 2;
      v18 = objc_opt_self();
      v19 = v13;
      v20 = v17;
      v112 = v18;
      v21 = [v18 defaultItemComparator];
      v22 = v21[2](v21, v19, v20);
      _Block_release(v21);

      v103 = v5;
      v23 = v5 + 2;
      while (1)
      {
        v24 = v114;
        if (v114 == v23)
        {
          break;
        }

        v5 = v22 != 1;
        v25 = *(v16 - 1);
        v26 = *v16;
        v27 = v25;
        v28 = [v112 defaultItemComparator];
        v29 = v28[2](v28, v26, v27);
        _Block_release(v28);

        ++v23;
        ++v16;
        if ((v22 != 1) == (v29 == 1))
        {
          v24 = v23 - 1;
          break;
        }
      }

      v10 = v105;
      v6 = v107;
      v7 = a3;
      v11 = v103;
      if (v22 != 1)
      {
        if (v24 < v103)
        {
          goto LABEL_117;
        }

        if (v103 < v24)
        {
          v30 = 8 * v24 - 8;
          v31 = v24;
          v32 = v103;
          do
          {
            if (v32 != --v31)
            {
              v34 = *a3;
              if (!*a3)
              {
                goto LABEL_123;
              }

              v33 = *(v34 + v14);
              *(v34 + v14) = *(v34 + v30);
              *(v34 + v30) = v33;
            }

            ++v32;
            v30 -= 8;
            v14 += 8;
          }

          while (v32 < v31);
        }
      }

      v12 = v24;
    }

    v35 = v7[1];
    if (v12 < v35)
    {
      if (__OFSUB__(v12, v11))
      {
        goto LABEL_116;
      }

      if (v12 - v11 < a4)
      {
        if (__OFADD__(v11, a4))
        {
          goto LABEL_118;
        }

        if (v11 + a4 >= v35)
        {
          v36 = v7[1];
        }

        else
        {
          v36 = v11 + a4;
        }

        if (v36 < v11)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v12 != v36)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v12 < v11)
    {
      goto LABEL_115;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_20CEE81E4(0, *(v10 + 2) + 1, 1, v10);
    }

    v52 = *(v10 + 2);
    v51 = *(v10 + 3);
    v53 = v52 + 1;
    if (v52 >= v51 >> 1)
    {
      v10 = sub_20CEE81E4((v51 > 1), v52 + 1, 1, v10);
    }

    *(v10 + 2) = v53;
    v54 = &v10[16 * v52];
    *(v54 + 4) = v11;
    *(v54 + 5) = v12;
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_125;
    }

    v116 = v12;
    if (v52)
    {
      while (1)
      {
        v55 = v53 - 1;
        if (v53 >= 4)
        {
          break;
        }

        if (v53 == 3)
        {
          v56 = *(v10 + 4);
          v57 = *(v10 + 5);
          v66 = __OFSUB__(v57, v56);
          v58 = v57 - v56;
          v59 = v66;
LABEL_57:
          if (v59)
          {
            goto LABEL_104;
          }

          v72 = &v10[16 * v53];
          v74 = *v72;
          v73 = *(v72 + 1);
          v75 = __OFSUB__(v73, v74);
          v76 = v73 - v74;
          v77 = v75;
          if (v75)
          {
            goto LABEL_107;
          }

          v78 = &v10[16 * v55 + 32];
          v80 = *v78;
          v79 = *(v78 + 1);
          v66 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v66)
          {
            goto LABEL_110;
          }

          if (__OFADD__(v76, v81))
          {
            goto LABEL_111;
          }

          if (v76 + v81 >= v58)
          {
            if (v58 < v81)
            {
              v55 = v53 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v82 = &v10[16 * v53];
        v84 = *v82;
        v83 = *(v82 + 1);
        v66 = __OFSUB__(v83, v84);
        v76 = v83 - v84;
        v77 = v66;
LABEL_71:
        if (v77)
        {
          goto LABEL_106;
        }

        v85 = &v10[16 * v55];
        v87 = *(v85 + 4);
        v86 = *(v85 + 5);
        v66 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v66)
        {
          goto LABEL_109;
        }

        if (v88 < v76)
        {
          goto LABEL_3;
        }

LABEL_78:
        v93 = v55 - 1;
        if (v55 - 1 >= v53)
        {
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
          goto LABEL_119;
        }

        if (!*v7)
        {
          goto LABEL_122;
        }

        v94 = *&v10[16 * v93 + 32];
        v95 = *&v10[16 * v55 + 40];
        sub_20CF83D44((*v7 + 8 * v94), (*v7 + 8 * *&v10[16 * v55 + 32]), (*v7 + 8 * v95), v5);
        if (v6)
        {
          goto LABEL_98;
        }

        if (v95 < v94)
        {
          goto LABEL_100;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_20D057C88(v10);
        }

        if (v93 >= *(v10 + 2))
        {
          goto LABEL_101;
        }

        v96 = &v10[16 * v93];
        *(v96 + 4) = v94;
        *(v96 + 5) = v95;
        sub_20D057BFC(v55);
        v53 = *(v10 + 2);
        if (v53 <= 1)
        {
          goto LABEL_3;
        }
      }

      v60 = &v10[16 * v53 + 32];
      v61 = *(v60 - 64);
      v62 = *(v60 - 56);
      v66 = __OFSUB__(v62, v61);
      v63 = v62 - v61;
      if (v66)
      {
        goto LABEL_102;
      }

      v65 = *(v60 - 48);
      v64 = *(v60 - 40);
      v66 = __OFSUB__(v64, v65);
      v58 = v64 - v65;
      v59 = v66;
      if (v66)
      {
        goto LABEL_103;
      }

      v67 = &v10[16 * v53];
      v69 = *v67;
      v68 = *(v67 + 1);
      v66 = __OFSUB__(v68, v69);
      v70 = v68 - v69;
      if (v66)
      {
        goto LABEL_105;
      }

      v66 = __OFADD__(v58, v70);
      v71 = v58 + v70;
      if (v66)
      {
        goto LABEL_108;
      }

      if (v71 >= v63)
      {
        v89 = &v10[16 * v55 + 32];
        v91 = *v89;
        v90 = *(v89 + 1);
        v66 = __OFSUB__(v90, v91);
        v92 = v90 - v91;
        if (v66)
        {
          goto LABEL_112;
        }

        if (v58 < v92)
        {
          v55 = v53 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v8 = v7[1];
    v9 = v116;
    if (v116 >= v8)
    {
      goto LABEL_88;
    }
  }

  v106 = v10;
  v108 = v6;
  v37 = v11;
  v38 = *v7;
  v5 = objc_opt_self();
  v39 = v38 + 8 * v12 - 8;
  v104 = v37;
  v40 = v37 - v12;
  v111 = v36;
LABEL_30:
  v113 = v39;
  v115 = v12;
  v41 = *(v38 + 8 * v12);
  v42 = v40;
  v43 = v39;
  while (1)
  {
    v44 = *v43;
    v45 = v41;
    v46 = v44;
    v47 = [v5 defaultItemComparator];
    v48 = v47[2](v47, v45, v46);
    _Block_release(v47);

    if (v48 == 1)
    {
LABEL_29:
      v12 = v115 + 1;
      v39 = v113 + 8;
      --v40;
      if (v115 + 1 != v111)
      {
        goto LABEL_30;
      }

      v12 = v111;
      v10 = v106;
      v6 = v108;
      v7 = a3;
      v11 = v104;
      goto LABEL_37;
    }

    if (!v38)
    {
      break;
    }

    v49 = *v43;
    v41 = *(v43 + 8);
    *v43 = v41;
    *(v43 + 8) = v49;
    v43 -= 8;
    if (__CFADD__(v42++, 1))
    {
      goto LABEL_29;
    }
  }

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
}

uint64_t sub_20CF839A0(void **__dst, id *__src, void **a3, void **a4)
{
  v5 = v4;
  v6 = a4;
  v7 = a3;
  v8 = __dst;
  v9 = __src - __dst;
  v10 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v10 = __src - __dst;
  }

  v11 = v10 >> 3;
  v12 = a3 - __src;
  v13 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v13 = a3 - __src;
  }

  v14 = v13 >> 3;
  if (v11 < v13 >> 3)
  {
    if (a4 != __dst || &__dst[v11] <= a4)
    {
      memmove(a4, __dst, 8 * v11);
    }

    v16 = &v6[v11];
    if (v9 >= 8 && __src < v7)
    {
      v17 = __src;
      v18 = v8;
      v53 = v16;
      while (1)
      {
        v19 = v7;
        v20 = v18;
        v21 = v17;
        v22 = v6;
        v23 = *v6;
        v24 = *v17;
        v25 = v23;
        v26 = sub_20CF7D508(v24, v25);
        if (v4)
        {

          v42 = v53 - v6 + 7;
          if ((v53 - v6) >= 0)
          {
            v42 = v53 - v6;
          }

          if (v20 < v6 || v20 >= (v6 + (v42 & 0xFFFFFFFFFFFFFFF8)) || v20 != v6)
          {
            v43 = 8 * (v42 >> 3);
            v44 = v20;
            v45 = v6;
            goto LABEL_58;
          }

          return 1;
        }

        v27 = v26;

        if ((v27 & 1) == 0)
        {
          break;
        }

        v28 = v21;
        v17 = v21 + 1;
        v6 = v22;
        v29 = v20;
        if (v20 != v21)
        {
          goto LABEL_17;
        }

LABEL_18:
        v18 = v29 + 1;
        v16 = v53;
        if (v6 < v53)
        {
          v7 = v19;
          if (v17 < v19)
          {
            continue;
          }
        }

        v8 = v18;
        goto LABEL_52;
      }

      v28 = v22;
      v6 = v22 + 1;
      v29 = v20;
      v17 = v21;
      if (v20 == v22)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v29 = *v28;
      goto LABEL_18;
    }

    goto LABEL_52;
  }

  v8 = __src;
  if (a4 != __src || &__src[v14] <= a4)
  {
    memmove(a4, __src, 8 * v14);
  }

  v16 = &v6[v14];
  if (v12 < 8 || v8 <= __dst)
  {
LABEL_52:
    v48 = v16 - v6 + 7;
    if (v16 - v6 >= 0)
    {
      v48 = v16 - v6;
    }

    if (v8 >= v6 && v8 < (v6 + (v48 & 0xFFFFFFFFFFFFFFF8)) && v8 == v6)
    {
      return 1;
    }

    v43 = 8 * (v48 >> 3);
    v44 = v8;
    v45 = v6;
LABEL_58:
    memmove(v44, v45, v43);
    return 1;
  }

  v30 = -v6;
  __srca = v6;
  v50 = -v6;
LABEL_27:
  v54 = v5;
  v31 = v8 - 1;
  v32 = v16 + v30;
  --v7;
  v33 = v16;
  while (1)
  {
    v34 = *--v33;
    v35 = v31;
    v36 = *v31;
    v37 = v34;
    v38 = v36;
    v39 = sub_20CF7D508(v37, v38);

    if (v54)
    {
      break;
    }

    v40 = v7 + 1;
    if (v39)
    {
      v41 = v35;
      if (v40 != v8)
      {
        *v7 = *v35;
      }

      v6 = __srca;
      v5 = 0;
      if (v16 <= __srca || (v8 = v41, v30 = v50, v41 <= __dst))
      {
        v8 = v41;
        goto LABEL_52;
      }

      goto LABEL_27;
    }

    if (v40 != v16)
    {
      *v7 = *v33;
    }

    v32 -= 8;
    --v7;
    v16 = v33;
    v31 = v35;
    if (v33 <= __srca)
    {
      v16 = v33;
      v6 = __srca;
      goto LABEL_52;
    }
  }

  if (v32 >= 0)
  {
    v46 = v32;
  }

  else
  {
    v46 = v32 + 7;
  }

  v47 = v46 >> 3;
  v45 = __srca;
  v44 = v8;
  if (v8 < __srca || v8 >= (__srca + (v46 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v8, __srca, 8 * v47);
    return 1;
  }

  if (v8 != __srca)
  {
    v43 = 8 * v47;
    goto LABEL_58;
  }

  return 1;
}

uint64_t sub_20CF83D44(void **__dst, void **__src, void **a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src - __dst;
  v8 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v8 = __src - __dst;
  }

  v9 = v8 >> 3;
  v10 = a3 - __src;
  v11 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v11 = a3 - __src;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    v26 = __src;
    if (a4 != __src || &__src[v12] <= a4)
    {
      memmove(a4, __src, 8 * v12);
    }

    v42 = &v4[v12];
    if (v10 >= 8 && v26 > v6)
    {
      v40 = v6;
LABEL_26:
      v41 = v26;
      v27 = v26 - 1;
      --v5;
      v28 = v42;
      do
      {
        v29 = v4;
        v30 = v5 + 1;
        v31 = *--v28;
        v32 = v27;
        v33 = *v27;
        v34 = objc_opt_self();
        v35 = v31;
        v36 = v33;
        v37 = [v34 defaultItemComparator];
        v38 = v37[2](v37, v35, v36);
        _Block_release(v37);

        if (v38 != 1)
        {
          v4 = v29;
          if (v30 != v41)
          {
            *v5 = *v32;
          }

          if (v42 <= v29 || (v26 = v32, v32 <= v40))
          {
            v26 = v32;
            goto LABEL_37;
          }

          goto LABEL_26;
        }

        v4 = v29;
        if (v30 != v42)
        {
          *v5 = *v28;
        }

        --v5;
        v42 = v28;
        v27 = v32;
      }

      while (v28 > v29);
      v42 = v28;
      v26 = v41;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[v9] <= a4)
    {
      memmove(a4, __dst, 8 * v9);
    }

    v42 = &v4[v9];
    if (v7 >= 8 && __src < v5)
    {
      v14 = __src;
      while (1)
      {
        v15 = *v14;
        v16 = *v4;
        v17 = objc_opt_self();
        v18 = v15;
        v19 = v4;
        v20 = v18;
        v21 = v16;
        v22 = [v17 defaultItemComparator];
        v23 = v22[2](v22, v20, v21);
        _Block_release(v22);

        if (v23 != 1)
        {
          break;
        }

        v24 = v19;
        v4 = v19 + 1;
        if (v6 != v19)
        {
          goto LABEL_16;
        }

LABEL_17:
        ++v6;
        if (v4 >= v42 || v14 >= v5)
        {
          goto LABEL_19;
        }
      }

      v24 = v14;
      v25 = v6 == v14++;
      v4 = v19;
      if (v25)
      {
        goto LABEL_17;
      }

LABEL_16:
      *v6 = *v24;
      goto LABEL_17;
    }

LABEL_19:
    v26 = v6;
  }

LABEL_37:
  if (v26 != v4 || v26 >= (v4 + ((v42 - v4 + (v42 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v26, v4, 8 * (v42 - v4));
  }

  return 1;
}

void *sub_20CF84068(uint64_t a1, uint64_t a2)
{
  v3 = a1 & 0xC000000000000001;
  if ((a2 & 0xC000000000000001) != 0)
  {
    if (v3)
    {
      if (a2 < 0)
      {
        v4 = a2;
      }

      else
      {
        v4 = a2 & 0xFFFFFFFFFFFFFF8;
      }

      v5 = sub_20D568768();
      a2 = sub_20CF806F8(v4, v5);
      goto LABEL_8;
    }

    sub_20CECF940(0, &qword_281120AC0);
    v7 = MEMORY[0x277D84FA0];
    v17 = MEMORY[0x277D84FA0];
    sub_20D568718();
    if (sub_20D568798())
    {
      v8 = a1 + 56;
      do
      {
        swift_dynamicCast();
        if (*(a1 + 16) && (v9 = sub_20D5683E8(), v10 = -1 << *(a1 + 32), v11 = v9 & ~v10, ((*(v8 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
        {
          v12 = ~v10;
          while (1)
          {
            v13 = *(*(a1 + 48) + 8 * v11);
            v14 = sub_20D5683F8();

            if (v14)
            {
              break;
            }

            v11 = (v11 + 1) & v12;
            if (((*(v8 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
            {
              goto LABEL_13;
            }
          }

          v15 = *(v7 + 16);
          if (*(v7 + 24) <= v15)
          {
            sub_20D0C041C(v15 + 1);
          }

          v7 = v17;
          sub_20D0C5E50(v16);
        }

        else
        {
LABEL_13:
        }
      }

      while (sub_20D568798());
    }

    return v7;
  }

  if (!v3)
  {
    return sub_20CF84C74(a1, a2, &qword_281120AC0, 0x277D14748, sub_20D0C10F4);
  }

LABEL_8:

  return sub_20CF84710(a1, a2);
}

void *sub_20CF842A0(uint64_t a1, uint64_t a2)
{
  v3 = a1 & 0xC000000000000001;
  if ((a2 & 0xC000000000000001) != 0)
  {
    if (v3)
    {
      if (a2 < 0)
      {
        v4 = a2;
      }

      else
      {
        v4 = a2 & 0xFFFFFFFFFFFFFF8;
      }

      v5 = sub_20D568768();
      a2 = sub_20CF80318(v4, v5);
      goto LABEL_8;
    }

    sub_20CECF940(0, &unk_27C81AE40);
    v7 = MEMORY[0x277D84FA0];
    v17 = MEMORY[0x277D84FA0];
    sub_20D568718();
    if (sub_20D568798())
    {
      v8 = a1 + 56;
      do
      {
        swift_dynamicCast();
        if (*(a1 + 16) && (v9 = sub_20D5683E8(), v10 = -1 << *(a1 + 32), v11 = v9 & ~v10, ((*(v8 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
        {
          v12 = ~v10;
          while (1)
          {
            v13 = *(*(a1 + 48) + 8 * v11);
            v14 = sub_20D5683F8();

            if (v14)
            {
              break;
            }

            v11 = (v11 + 1) & v12;
            if (((*(v8 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
            {
              goto LABEL_13;
            }
          }

          v15 = *(v7 + 16);
          if (*(v7 + 24) <= v15)
          {
            sub_20D0C0408(v15 + 1);
          }

          v7 = v17;
          sub_20D0C5E50(v16, v17);
        }

        else
        {
LABEL_13:
        }
      }

      while (sub_20D568798());
    }

    return v7;
  }

  if (!v3)
  {
    return sub_20CF84C74(a1, a2, &unk_27C81AE40, 0x277CD1970, sub_20D0C132C);
  }

LABEL_8:

  return sub_20CF848DC(a1, a2);
}

void *sub_20CF844D8(uint64_t a1, uint64_t a2)
{
  v3 = a1 & 0xC000000000000001;
  if ((a2 & 0xC000000000000001) != 0)
  {
    if (v3)
    {
      if (a2 < 0)
      {
        v4 = a2;
      }

      else
      {
        v4 = a2 & 0xFFFFFFFFFFFFFF8;
      }

      v5 = sub_20D568768();
      a2 = sub_20CF8148C(v4, v5);
      goto LABEL_8;
    }

    sub_20CECF940(0, &qword_27C81AEC0);
    v7 = MEMORY[0x277D84FA0];
    v17 = MEMORY[0x277D84FA0];
    sub_20D568718();
    if (sub_20D568798())
    {
      v8 = a1 + 56;
      do
      {
        swift_dynamicCast();
        if (*(a1 + 16) && (v9 = sub_20D5683E8(), v10 = -1 << *(a1 + 32), v11 = v9 & ~v10, ((*(v8 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
        {
          v12 = ~v10;
          while (1)
          {
            v13 = *(*(a1 + 48) + 8 * v11);
            v14 = sub_20D5683F8();

            if (v14)
            {
              break;
            }

            v11 = (v11 + 1) & v12;
            if (((*(v8 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
            {
              goto LABEL_13;
            }
          }

          v15 = *(v7 + 16);
          if (*(v7 + 24) <= v15)
          {
            sub_20D0C0A00(v15 + 1);
          }

          v7 = v17;
          sub_20D0C5E50(v16);
        }

        else
        {
LABEL_13:
        }
      }

      while (sub_20D568798());
    }

    return v7;
  }

  if (!v3)
  {
    return sub_20CF84C74(a1, a2, &qword_27C81AEC0, 0x277CD1D90, sub_20D0C1340);
  }

LABEL_8:

  return sub_20CF84AA8(a1, a2);
}

uint64_t sub_20CF84710(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v18[6] = *MEMORY[0x277D85DE8];
  v17 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v18[3] = &v17;
  v18[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v13 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v9 = &v16 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    sub_20CF84E6C(v9, v7, v3, a2, &qword_281120AC0, 0x277D14748, &qword_281120AB0, sub_20D0C10F4);
    v11 = v10;
  }

  else
  {
    v14 = v13;
    v15 = swift_slowAlloc();
    bzero(v15, v14);
    sub_20CF87A74(v15, v7, v18);
    v11 = v18[0];

    MEMORY[0x20F31FC70](v15, -1, -1);
  }

  return v11;
}

uint64_t sub_20CF848DC(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v18[6] = *MEMORY[0x277D85DE8];
  v17 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v18[3] = &v17;
  v18[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v13 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v9 = &v16 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    sub_20CF84E6C(v9, v7, v3, a2, &unk_27C81AE40, 0x277CD1970, &qword_27C81FC10, sub_20D0C132C);
    v11 = v10;
  }

  else
  {
    v14 = v13;
    v15 = swift_slowAlloc();
    bzero(v15, v14);
    sub_20CF87AFC(v15, v7, v18);
    v11 = v18[0];

    MEMORY[0x20F31FC70](v15, -1, -1);
  }

  return v11;
}

uint64_t sub_20CF84AA8(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v18[6] = *MEMORY[0x277D85DE8];
  v17 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v18[3] = &v17;
  v18[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v13 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v9 = &v16 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    sub_20CF84E6C(v9, v7, v3, a2, &qword_27C81AEC0, 0x277CD1D90, &qword_27C81D290, sub_20D0C1340);
    v11 = v10;
  }

  else
  {
    v14 = v13;
    v15 = swift_slowAlloc();
    bzero(v15, v14);
    sub_20CF87308(v15, v7, v18);
    v11 = v18[0];

    MEMORY[0x20F31FC70](v15, -1, -1);
  }

  return v11;
}

void *sub_20CF84C74(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t, _BYTE *))
{
  v19[1] = *MEMORY[0x277D85DE8];
  v10 = *(a2 + 32);
  v11 = v10 & 0x3F;
  v12 = ((1 << v10) + 63) >> 6;
  v13 = 8 * v12;

  if (v11 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    bzero(v19 - ((v13 + 15) & 0x3FFFFFFFFFFFFFF0), v13);
    sub_20CF851B4(v19 - ((v13 + 15) & 0x3FFFFFFFFFFFFFF0), v12, a2, a1, a3, a4, a5);
    v16 = v15;
  }

  else
  {
    v18 = swift_slowAlloc();

    v16 = sub_20CF8194C(v18, v12, a2, a1, a3, a4, a5);

    MEMORY[0x20F31FC70](v18, -1, -1);
  }

  return v16;
}

void sub_20CF84E6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t a6, unint64_t *a7, void (*a8)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_20D568718();
    sub_20CECF940(0, a5);
    sub_20CEF7F74(a7, a5);
    sub_20D567D58();
    v8 = v46;
    v11 = v47;
    v13 = v48;
    v12 = v49;
    v14 = v50;
  }

  else
  {
    v15 = -1 << *(a3 + 32);
    v11 = a3 + 56;
    v13 = ~v15;
    v16 = -v15;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v14 = v17 & *(a3 + 56);
    sub_20D5663C8();
    v12 = 0;
  }

  v39 = 0;
  v18 = (v13 + 64) >> 6;
  v44 = a4 + 56;
  v41 = v11;
  v42 = v8;
LABEL_8:
  v19 = v12;
  v20 = v14;
  while (v8 < 0)
  {
    if (!sub_20D568798())
    {
      goto LABEL_29;
    }

    sub_20CECF940(0, a5);
    swift_dynamicCast();
    v23 = v51;
    v12 = v19;
    v14 = v20;
    if (!v51)
    {
      goto LABEL_29;
    }

LABEL_19:
    v24 = sub_20D5683E8();
    v25 = -1 << *(a4 + 32);
    v26 = v24 & ~v25;
    v27 = v26 >> 6;
    v28 = 1 << v26;
    if (((1 << v26) & *(v44 + 8 * (v26 >> 6))) == 0)
    {
      goto LABEL_9;
    }

    sub_20CECF940(0, a5);
    v29 = *(*(a4 + 48) + 8 * v26);
    v30 = sub_20D5683F8();

    if (v30)
    {
LABEL_24:
      v18 = (v13 + 64) >> 6;

      v11 = v41;
      v34 = *(a1 + 8 * v27);
      *(a1 + 8 * v27) = v34 | v28;
      v19 = v12;
      v20 = v14;
      v35 = (v34 & v28) == 0;
      v8 = v42;
      if (v35)
      {
        if (!__OFADD__(v39++, 1))
        {
          goto LABEL_8;
        }

        __break(1u);
LABEL_29:
        sub_20CEC80DC();

        a8(a1, a2, v39, a4);
        return;
      }
    }

    else
    {
      v31 = ~v25;
      while (1)
      {
        v26 = (v26 + 1) & v31;
        v27 = v26 >> 6;
        v28 = 1 << v26;
        if (((1 << v26) & *(v44 + 8 * (v26 >> 6))) == 0)
        {
          break;
        }

        v32 = *(*(a4 + 48) + 8 * v26);
        v33 = sub_20D5683F8();

        if (v33)
        {
          goto LABEL_24;
        }
      }

LABEL_9:

      v19 = v12;
      v20 = v14;
      v11 = v41;
      v8 = v42;
      v18 = (v13 + 64) >> 6;
    }
  }

  v21 = v19;
  v22 = v20;
  v12 = v19;
  if (v20)
  {
LABEL_15:
    v14 = (v22 - 1) & v22;
    v23 = *(*(v8 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v22)))));
    if (!v23)
    {
      goto LABEL_29;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v12 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v12 >= v18)
    {
      goto LABEL_29;
    }

    v22 = *(v11 + 8 * v12);
    ++v21;
    if (v22)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

void sub_20CF851B4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unint64_t *a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t, _BYTE *))
{
  v7 = a4;
  v8 = a3;
  if (*(a4 + 16) >= a3[2])
  {
LABEL_22:
    v51 = 0;
    v27 = 0;
    v46 = v8 + 56;
    v28 = 1 << v8[32];
    if (v28 < 64)
    {
      v29 = ~(-1 << v28);
    }

    else
    {
      v29 = -1;
    }

    v30 = v29 & *(v8 + 7);
    v31 = (v28 + 63) >> 6;
    v32 = v7 + 56;
    while (1)
    {
      v8 = a3;
      if (!v30)
      {
        break;
      }

      v33 = __clz(__rbit64(v30));
      v53 = (v30 - 1) & v30;
LABEL_34:
      v50 = v33 | (v27 << 6);
      v36 = *(a3[6] + 8 * v50);
      v37 = sub_20D5683E8();
      v38 = -1 << *(v7 + 32);
      v39 = v37 & ~v38;
      if ((*(v32 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39))
      {
        v40 = ~v38;
        sub_20CECF940(0, a5);
        while (1)
        {
          v8 = *(*(v7 + 48) + 8 * v39);
          v41 = sub_20D5683F8();

          if (v41)
          {
            break;
          }

          v39 = (v39 + 1) & v40;
          v7 = a4;
          if (((*(v32 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) == 0)
          {
            goto LABEL_26;
          }
        }

        *(a1 + ((v50 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v50;
        v30 = v53;
        v26 = __OFADD__(v51++, 1);
        v7 = a4;
        if (v26)
        {
          __break(1u);
          goto LABEL_42;
        }
      }

      else
      {
LABEL_26:

        v30 = v53;
      }
    }

    v34 = v27;
    while (1)
    {
      v27 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v27 >= v31)
      {
        goto LABEL_42;
      }

      v35 = *&v46[8 * v27];
      ++v34;
      if (v35)
      {
        v33 = __clz(__rbit64(v35));
        v53 = (v35 - 1) & v35;
        goto LABEL_34;
      }
    }

    __break(1u);
    goto LABEL_44;
  }

  v9 = 0;
  v42 = a4 + 56;
  v10 = 1 << *(a4 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(a4 + 56);
  v13 = (v10 + 63) >> 6;
  v51 = 0;
  v52 = a3 + 7;
  v45 = v13;
  while (v12)
  {
    v14 = __clz(__rbit64(v12));
    v49 = (v12 - 1) & v12;
LABEL_14:
    v17 = *(*(a4 + 48) + 8 * (v14 | (v9 << 6)));
    v18 = sub_20D5683E8();
    v19 = -1 << v8[32];
    v20 = v18 & ~v19;
    v21 = v20 >> 6;
    v22 = 1 << v20;
    if (((1 << v20) & v52[v20 >> 6]) != 0)
    {
      sub_20CECF940(0, a5);
      v23 = *(*(v8 + 6) + 8 * v20);
      v7 = sub_20D5683F8();

      if ((v7 & 1) == 0)
      {
        v24 = ~v19;
        do
        {
          v20 = (v20 + 1) & v24;
          v21 = v20 >> 6;
          v22 = 1 << v20;
          v8 = a3;
          if (((1 << v20) & v52[v20 >> 6]) == 0)
          {
            goto LABEL_6;
          }

          v25 = *(a3[6] + 8 * v20);
          v7 = sub_20D5683F8();
        }

        while ((v7 & 1) == 0);
      }

      v8 = a3;

      v13 = v45;
      *(a1 + 8 * v21) |= v22;
      v12 = v49;
      v26 = __OFADD__(v51++, 1);
      if (v26)
      {
        __break(1u);
        goto LABEL_22;
      }
    }

    else
    {
LABEL_6:

      v13 = v45;
      v12 = v49;
    }
  }

  v15 = v9;
  while (1)
  {
    v9 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v9 >= v13)
    {
LABEL_42:

      a7(a1, a2, v51, v8);
      return;
    }

    v16 = *(v42 + 8 * v9);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v49 = (v16 - 1) & v16;
      goto LABEL_14;
    }
  }

LABEL_44:
  __break(1u);
}

uint64_t sub_20CF85584(unint64_t a1, uint64_t (*a2)(uint64_t, void), void (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v7 = sub_20D568768();
  if (!v7)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v8 = v7;
  v9 = a2(v7, 0);
  a3(v9 + 32, v8, a1);
  v11 = v10;

  result = v9;
  if (v11 != v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_20CF85680(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_20D568768();
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
      result = sub_20D568768();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_20CF156D0(&unk_27C81DBC0, &qword_27C81DBB8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81DBB8);
            v9 = sub_20CEFDF58(v13, i, a3);
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
        sub_20CECF940(0, qword_28111FBA0);
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

uint64_t sub_20CF85834(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_20D568768();
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
      result = sub_20D568768();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_20CF156D0(&qword_27C81DBD8, &qword_27C81DBD0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81DBD0);
            v9 = sub_20CEFDFD8(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C820770);
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

uint64_t sub_20CF859E4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_20D568768();
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
      result = sub_20D568768();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_20CF156D0(&qword_27C81DB30, &qword_27C81DB28);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81DB28);
            v9 = sub_20CEFDF58(v13, i, a3);
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
        sub_20CECF940(0, &qword_28111FEC0);
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

uint64_t sub_20CF85B98(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_20D568768();
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
      result = sub_20D568768();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_20CF156D0(&unk_27C81DB18, &qword_27C81DB10);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81DB10);
            v9 = sub_20CEFDF58(v13, i, a3);
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
        sub_20CECF940(0, &qword_28111FB70);
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

uint64_t sub_20CF85D4C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_20D568768();
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
      result = sub_20D568768();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_20CF156D0(&qword_27C81DBB0, &qword_27C81DBA8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81DBA8);
            v9 = sub_20CEFDF58(v13, i, a3);
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
        sub_20CECF940(0, &unk_28111FFC0);
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

uint64_t sub_20CF85F00(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_20D568768();
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
      result = sub_20D568768();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_20CF156D0(&qword_27C81DB50, &unk_27C81E330);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81E330);
            v9 = sub_20CEFDF58(v13, i, a3);
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
        sub_20CECF940(0, &qword_281120AC0);
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

uint64_t sub_20CF860B4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_20D568768();
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
      result = sub_20D568768();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_20CF156D0(&qword_27C81DB98, &qword_27C81DB90);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81DB90);
            v9 = sub_20CEFDF58(v13, i, a3);
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81DB88);
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

uint64_t sub_20CF86264(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_20D568768();
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
      result = sub_20D568768();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_20CF156D0(&qword_27C81DB60, &qword_27C81DB58);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81DB58);
            v9 = sub_20CEFDF58(v13, i, a3);
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
        sub_20CECF940(0, &unk_28111FFD0);
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

uint64_t sub_20CF86418(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_20D568768();
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
      result = sub_20D568768();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_20CF156D0(&unk_27C81DB70, &qword_27C81DB68);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81DB68);
            v9 = sub_20CEFDF58(v13, i, a3);
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
        sub_20CECF940(0, &unk_28111FB30);
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

uint64_t sub_20CF865CC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_20D568768();
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
      result = sub_20D568768();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_20CF156D0(&qword_27C81DB08, &qword_27C81DB00);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81DB00);
            v9 = sub_20CEFDF58(v13, i, a3);
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
        sub_20CECF940(0, &unk_27C81D490);
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

uint64_t sub_20CF86780(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_20D568768();
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
      result = sub_20D568768();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_20CF156D0(&unk_27C81DB40, &qword_27C81DB38);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81DB38);
            v9 = sub_20CEFE060(v13, i, a3);
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
        type metadata accessor for HUAppInfo();
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

id sub_20CF86924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  swift_unknownObjectWeakInit();
  *&a5[OBJC_IVAR____TtC6HomeUI19AccessoryItemModule_sectionGroupingType] = 1;
  swift_unknownObjectWeakAssign();
  v9 = &a5[OBJC_IVAR____TtC6HomeUI19AccessoryItemModule_itemProviderBlock];
  *v9 = a3;
  *(v9 + 1) = a4;
  v11.receiver = a5;
  v11.super_class = type metadata accessor for AccessoryItemModule();
  return objc_msgSendSuper2(&v11, sel_initWithItemUpdater_, a2);
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_20CF86A60()
{
  result = qword_27C81DAE0;
  if (!qword_27C81DAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81DAE0);
  }

  return result;
}

uint64_t keypath_getTm_1@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = swift_beginAccess();
  *a3 = *(v4 + v5);
  return result;
}

uint64_t keypath_setTm_0(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

uint64_t keypath_set_12Tm(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

void sub_20CF8734C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id))
{
  v20 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = *(*(a3 + 48) + 8 * v14);
    v16 = a4(v15);

    if (v4)
    {
      return;
    }

    if (v16)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_16:

        sub_20D0C10F4(a1, a2, v20, a3);
        return;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_20CF874B4(uint64_t a1, uint64_t (*a2)(id))
{
  v29 = a2;
  v3 = a1;
  v31 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = ((1 << v4) + 63) >> 6;
  if ((v4 & 0x3Fu) > 0xD)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v25 = v5;
    v30 = v2;
    v27 = &v24;
    MEMORY[0x28223BE20](a1);
    v26 = &v24 - ((v6 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v26, v6);
    v28 = 0;
    v7 = 0;
    v5 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    while (v10)
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_12:
      v15 = v12 | (v7 << 6);
      v16 = v3;
      v17 = *(*(v3 + 48) + 8 * v15);
      v2 = v30;
      v18 = v29();
      v30 = v2;
      if (v2)
      {

        return swift_willThrow();
      }

      v19 = v18;

      v3 = v16;
      if (v19)
      {
        *&v26[(v15 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v15;
        if (__OFADD__(v28++, 1))
        {
          __break(1u);
          return sub_20D0C10F4(v26, v25, v28, v3);
        }
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
        return sub_20D0C10F4(v26, v25, v28, v3);
      }

      v14 = *(v5 + 8 * v7);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_22:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v22 = swift_slowAlloc();
  v23 = sub_20CF818BC(v22, v5, v3, v29);

  result = MEMORY[0x20F31FC70](v22, -1, -1);
  if (!v2)
  {
    return v23;
  }

  return result;
}

id sub_20CF8775C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_objectLevel;
  *&v10[OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_objectLevel] = 0;
  v13 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_accessoryContainer;
  *&v10[OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_accessoryContainer] = 0;
  v14 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_sectionGroupingType;
  *&v10[OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_sectionGroupingType] = 1;
  v15 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_hideSourceItemDescriptions;
  v10[OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_hideSourceItemDescriptions] = 0;
  v16 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_showFooter;
  v10[OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_showFooter] = 0;
  v17 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_valueSource;
  *&v10[v17] = [objc_allocWithZone(MEMORY[0x277D148D0]) init];
  v18 = &v10[OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_filter];
  *v18 = 0;
  v18[1] = 0;
  v19 = &v10[OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_itemFilter];
  *v19 = 0;
  v19[1] = 0;
  swift_beginAccess();
  *&v10[v12] = a1;
  swift_beginAccess();
  *&v10[v13] = a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  swift_beginAccess();
  *&v10[v14] = a3;
  swift_beginAccess();
  v10[v15] = a4;
  swift_beginAccess();
  v10[v16] = a5;
  swift_beginAccess();
  *&v10[v17] = a6;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  swift_beginAccess();
  v20 = *v18;
  *v18 = a7;
  v18[1] = a8;
  sub_20CEC81F4(a7);
  sub_20CEC8164(v20);
  swift_beginAccess();
  v21 = *v19;
  *v19 = a9;
  v19[1] = a10;
  sub_20CEC81F4(a9);
  sub_20CEC8164(v21);
  v30.receiver = v10;
  v30.super_class = type metadata accessor for AccessoryRepresentableItemModule.Context();
  return objc_msgSendSuper2(&v30, sel_init);
}

uint64_t sub_20CF879B0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v5 = a1;
  v2(&v4, &v5);
  return v4;
}

uint64_t sub_20CF879F4@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_20CF87A2C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_20CF87AB8(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X2>, uint64_t a4@<X3>, unint64_t *a5@<X4>, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t)@<X5>, void *a7@<X8>)
{
  sub_20CF84E6C(a1, a2, **(v7 + 16), *(v7 + 24), a3, a4, a5, a6);
  if (!v8)
  {
    *a7 = v10;
  }
}

void sub_20CF87B90(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___HUPopUpMenuIconCollectionListCell_menu;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *sub_20CF87BF0()
{
  v1 = OBJC_IVAR___HUPopUpMenuIconCollectionListCell_menu;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_20CF87C3C(uint64_t a1)
{
  v3 = OBJC_IVAR___HUPopUpMenuIconCollectionListCell_menu;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_20CF87CF4()
{
  v1 = OBJC_IVAR___HUPopUpMenuIconCollectionListCell_menu;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!v2)
  {
    goto LABEL_10;
  }

  v3 = [v2 selectedElements];
  sub_20CECF940(0, &unk_28111FFC0);
  v4 = sub_20D567A78();

  if (!(v4 >> 62))
  {
    result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_4;
    }

LABEL_9:

    goto LABEL_10;
  }

  result = sub_20D568768();
  if (!result)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x20F31DD20](0, v4);
    goto LABEL_7;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(v4 + 32);
LABEL_7:
    v7 = v6;

    v8 = [v7 title];

    sub_20D567838();
LABEL_10:
    v9 = objc_allocWithZone(MEMORY[0x277D75260]);
    v10 = sub_20D5677F8();

    v11 = [v9 initWithText_];

    return v11;
  }

  __break(1u);
  return result;
}

uint64_t sub_20CF87E7C()
{
  v1 = v0;
  v11.receiver = v0;
  v11.super_class = type metadata accessor for PopUpMenuIconCollectionListCell();
  v2 = objc_msgSendSuper2(&v11, sel__buildAccessories);
  sub_20CECF940(0, &qword_27C81DBE8);
  v3 = sub_20D567A78();

  v12 = v3;
  v4 = OBJC_IVAR___HUPopUpMenuIconCollectionListCell_menu;
  swift_beginAccess();
  if (!*&v1[v4])
  {
    return v3;
  }

  sub_20CF87CF4();
  MEMORY[0x20F31CEE0]();
  if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_20D567AB8();
  }

  sub_20D567B08();
  v5 = *&v1[v4];
  if (v5)
  {
    v6 = *&v1[v4];
  }

  else
  {
    sub_20CECF940(0, &qword_28111FB78);
    v6 = sub_20D568308();
  }

  v8 = objc_allocWithZone(MEMORY[0x277D75278]);
  v9 = v5;
  [v8 initWithMenu_];

  MEMORY[0x20F31CEE0](v10);
  if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_20D567AB8();
  }

  sub_20D567B08();
  return v12;
}

id PopUpMenuIconCollectionListCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id PopUpMenuIconCollectionListCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR___HUPopUpMenuIconCollectionListCell_menu] = 0;
  v10.receiver = v4;
  v10.super_class = type metadata accessor for PopUpMenuIconCollectionListCell();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

id PopUpMenuIconCollectionListCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id PopUpMenuIconCollectionListCell.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR___HUPopUpMenuIconCollectionListCell_menu] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for PopUpMenuIconCollectionListCell();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id PopUpMenuIconCollectionListCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PopUpMenuIconCollectionListCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_20CF88548(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC6HomeUI31DashboardSectionListItemManager_reorderableSectionList;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *sub_20CF885A8()
{
  v1 = OBJC_IVAR____TtC6HomeUI31DashboardSectionListItemManager_reorderableSectionList;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_20CF885F4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC6HomeUI31DashboardSectionListItemManager_reorderableSectionList;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_20CF886FC(void *a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtC6HomeUI31DashboardSectionListItemManager_sectionListManagerDelegate;
  swift_beginAccess();
  *(v5 + 8) = a2;
  swift_unknownObjectWeakAssign();
}

void (*sub_20CF88764(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC6HomeUI31DashboardSectionListItemManager_sectionListManagerDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_20CF88804;
}

void sub_20CF88804(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  *((*a1)[6] + (*a1)[5] + 8) = (*a1)[4];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

void sub_20CF88974()
{
  v1 = [v0 home];
  if (v1)
  {

    if (!*&v0[OBJC_IVAR____TtC6HomeUI31DashboardSectionListItemManager_room])
    {
      v2 = [v0 home];
      if (v2)
      {
        v3 = v2;
        v4 = [v2 hf_reorderableDashboardSectionList];
      }

      else
      {
        v4 = 0;
      }

      v5 = OBJC_IVAR____TtC6HomeUI31DashboardSectionListItemManager_reorderableSectionList;
      swift_beginAccess();
      v6 = *&v0[v5];
      *&v0[v5] = v4;

      v7 = &v0[OBJC_IVAR____TtC6HomeUI31DashboardSectionListItemManager_sectionListManagerDelegate];
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v9 = *(v7 + 1);
        v10 = Strong;
        ObjectType = swift_getObjectType();
        v12 = *&v0[v5];
        v13 = *(v9 + 8);
        v14 = v12;
        v13(v0, v12, ObjectType, v9);
      }
    }
  }
}

char *DashboardSectionListItemManager.init(delegate:room:)(uint64_t a1, void *a2)
{
  *&v2[OBJC_IVAR____TtC6HomeUI31DashboardSectionListItemManager_roomItemProvider] = 0;
  *&v2[OBJC_IVAR____TtC6HomeUI31DashboardSectionListItemManager_categoryItemProvider] = 0;
  *&v2[OBJC_IVAR____TtC6HomeUI31DashboardSectionListItemManager_staticItemProvider] = 0;
  *&v2[OBJC_IVAR____TtC6HomeUI31DashboardSectionListItemManager_sceneSectionItem] = 0;
  *&v2[OBJC_IVAR____TtC6HomeUI31DashboardSectionListItemManager_cameraSectionItem] = 0;
  *&v2[OBJC_IVAR____TtC6HomeUI31DashboardSectionListItemManager_favoriteSectionItem] = 0;
  *&v2[OBJC_IVAR____TtC6HomeUI31DashboardSectionListItemManager_room] = 0;
  *&v2[OBJC_IVAR____TtC6HomeUI31DashboardSectionListItemManager_reorderableSectionList] = 0;
  *&v2[OBJC_IVAR____TtC6HomeUI31DashboardSectionListItemManager_sectionListManagerDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v21.receiver = v2;
  v21.super_class = type metadata accessor for DashboardSectionListItemManager();
  v5 = objc_msgSendSuper2(&v21, sel_initWithDelegate_sourceItem_, a1, 0);
  v6 = *&v5[OBJC_IVAR____TtC6HomeUI31DashboardSectionListItemManager_room];
  *&v5[OBJC_IVAR____TtC6HomeUI31DashboardSectionListItemManager_room] = a2;
  v7 = v5;
  v8 = a2;

  if (a2)
  {
    v9 = [v8 hf_reorderableDashboardSectionList];
    v10 = OBJC_IVAR____TtC6HomeUI31DashboardSectionListItemManager_reorderableSectionList;
    swift_beginAccess();
    v11 = *&v7[v10];
    *&v7[v10] = v9;

    v12 = &v7[OBJC_IVAR____TtC6HomeUI31DashboardSectionListItemManager_sectionListManagerDelegate];
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v14 = Strong;
      v15 = *(v12 + 1);
      ObjectType = swift_getObjectType();
      v17 = *&v7[v10];
      v18 = *(v15 + 8);
      v19 = v17;
      v18(v7, v17, ObjectType, v15);

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }

  else
  {

    swift_unknownObjectRelease();
  }

  return v7;
}

void sub_20CF88CF4()
{
  v1 = OBJC_IVAR____TtC6HomeUI31DashboardSectionListItemManager_reorderableSectionList;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = v2;
    v4 = [v3 saveWithSender_];
  }
}

void sub_20CF88D68(uint64_t a1)
{
  v2 = v1;
  v75 = a1;
  v82 = sub_20D565EB8();
  v3 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v5 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81E520);
  inited = swift_initStackObject();
  v85 = xmmword_20D5BC410;
  *(inited + 16) = xmmword_20D5BC410;
  v86 = *MEMORY[0x277D13F60];
  v7 = v86;
  type metadata accessor for HFItemResultKey(0);
  v80 = v8;
  v9 = sub_20CF89418();
  v10 = v7;
  v77 = v9;
  sub_20D5687F8();
  v11 = sub_20D5677F8();
  v12 = HULocalizedString(v11);

  v13 = sub_20D567838();
  v15 = v14;

  *(inited + 96) = MEMORY[0x277D837D0];
  *(inited + 72) = v13;
  *(inited + 80) = v15;
  sub_20CEF49C8(inited);
  swift_setDeallocating();
  sub_20CF89DDC(inited + 32);
  v16 = *MEMORY[0x277D132B8];
  v79 = *(v3 + 104);
  v83 = v3 + 104;
  v76 = v5;
  v17 = v82;
  v79(v5, v16, v82);
  v18 = sub_20D565E68();
  v78 = v18;
  v19 = objc_allocWithZone(v18);
  v20 = sub_20D565E58();
  v81 = OBJC_IVAR____TtC6HomeUI31DashboardSectionListItemManager_favoriteSectionItem;
  v21 = *&v2[OBJC_IVAR____TtC6HomeUI31DashboardSectionListItemManager_favoriteSectionItem];
  *&v2[OBJC_IVAR____TtC6HomeUI31DashboardSectionListItemManager_favoriteSectionItem] = v20;

  v22 = swift_initStackObject();
  *(v22 + 16) = v85;
  v86 = v10;
  v23 = v10;
  sub_20D5687F8();
  v24 = sub_20D5677F8();
  v25 = HULocalizedString(v24);

  v26 = sub_20D567838();
  v28 = v27;

  *(v22 + 96) = MEMORY[0x277D837D0];
  *(v22 + 72) = v26;
  *(v22 + 80) = v28;
  sub_20CEF49C8(v22);
  swift_setDeallocating();
  sub_20CF89DDC(v22 + 32);
  v29 = v76;
  v30 = v17;
  v31 = v79;
  v79(v76, *MEMORY[0x277D132A8], v30);
  v32 = objc_allocWithZone(v18);
  v33 = v29;
  v34 = sub_20D565E58();
  v35 = OBJC_IVAR____TtC6HomeUI31DashboardSectionListItemManager_sceneSectionItem;
  v36 = *&v2[OBJC_IVAR____TtC6HomeUI31DashboardSectionListItemManager_sceneSectionItem];
  *&v2[OBJC_IVAR____TtC6HomeUI31DashboardSectionListItemManager_sceneSectionItem] = v34;

  v37 = swift_initStackObject();
  *(v37 + 16) = v85;
  v86 = v23;
  v38 = v23;
  sub_20D5687F8();
  v39 = sub_20D5677F8();
  v40 = HULocalizedString(v39);

  v41 = sub_20D567838();
  v43 = v42;

  *(v37 + 96) = MEMORY[0x277D837D0];
  *(v37 + 72) = v41;
  *(v37 + 80) = v43;
  sub_20CEF49C8(v37);
  swift_setDeallocating();
  sub_20CF89DDC(v37 + 32);
  v31(v33, *MEMORY[0x277D132B0], v82);
  v44 = objc_allocWithZone(v78);
  v45 = sub_20D565E58();
  v46 = OBJC_IVAR____TtC6HomeUI31DashboardSectionListItemManager_cameraSectionItem;
  v47 = *&v2[OBJC_IVAR____TtC6HomeUI31DashboardSectionListItemManager_cameraSectionItem];
  *&v2[OBJC_IVAR____TtC6HomeUI31DashboardSectionListItemManager_cameraSectionItem] = v45;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
  v48 = swift_initStackObject();
  *(v48 + 16) = xmmword_20D5BECD0;
  v49 = *&v2[v81];
  if (!v49)
  {
    __break(1u);
    goto LABEL_13;
  }

  v50 = v48;
  *(v48 + 32) = v49;
  v51 = *&v2[v35];
  if (!v51)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  *(v48 + 40) = v51;
  v52 = *&v2[v46];
  if (!v52)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  *(v48 + 48) = v52;
  v53 = v52;
  v54 = v51;
  v55 = v49;
  sub_20CEF302C(v50);
  swift_setDeallocating();
  swift_arrayDestroy();
  v56 = objc_allocWithZone(MEMORY[0x277D14B40]);
  sub_20CECF940(0, &qword_281120AC0);
  sub_20CEF99B4();
  v57 = sub_20D567CD8();

  v58 = [v56 initWithItems_];

  v59 = OBJC_IVAR____TtC6HomeUI31DashboardSectionListItemManager_staticItemProvider;
  v60 = *&v2[OBJC_IVAR____TtC6HomeUI31DashboardSectionListItemManager_staticItemProvider];
  *&v2[OBJC_IVAR____TtC6HomeUI31DashboardSectionListItemManager_staticItemProvider] = v58;

  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_20D5BA040;
  v62 = *&v2[v59];
  if (!v62)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  *(v61 + 32) = v62;
  v86 = v61;
  v63 = *&v2[OBJC_IVAR____TtC6HomeUI31DashboardSectionListItemManager_room];
  if (!v63)
  {
    goto LABEL_8;
  }

  v64 = objc_allocWithZone(MEMORY[0x277D148D0]);
  v65 = v63;
  v66 = v62;
  v67 = [v64 init];
  v68 = objc_allocWithZone(MEMORY[0x277D142A0]);
  v62 = [v68 initWithHome:v75 room:v65 overrideValueSource:v67];

  v69 = *&v2[OBJC_IVAR____TtC6HomeUI31DashboardSectionListItemManager_categoryItemProvider];
  *&v2[OBJC_IVAR____TtC6HomeUI31DashboardSectionListItemManager_categoryItemProvider] = v62;
  v2 = v62;

  if (!v2)
  {
    __break(1u);
LABEL_8:
    v70 = objc_allocWithZone(MEMORY[0x277D149E8]);
    v71 = v62;
    v72 = [v70 initWithHome_];
    v73 = *&v2[OBJC_IVAR____TtC6HomeUI31DashboardSectionListItemManager_roomItemProvider];
    *&v2[OBJC_IVAR____TtC6HomeUI31DashboardSectionListItemManager_roomItemProvider] = v72;
    v74 = v72;

    if (v74)
    {
      goto LABEL_9;
    }

LABEL_16:
    __break(1u);
    return;
  }

LABEL_9:
  MEMORY[0x20F31CEE0]();
  if (*((v86 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v86 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_20D567AB8();
  }

  sub_20D567B08();
}

unint64_t sub_20CF89418()
{
  result = qword_28111FF80;
  if (!qword_28111FF80)
  {
    type metadata accessor for HFItemResultKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28111FF80);
  }

  return result;
}

double sub_20CF894FC(uint64_t a1)
{
  v3 = objc_allocWithZone(MEMORY[0x277D14850]);
  v4 = sub_20D5677F8();
  v5 = [v3 initWithIdentifier_];

  v6 = OBJC_IVAR____TtC6HomeUI31DashboardSectionListItemManager_reorderableSectionList;
  swift_beginAccess();
  if (*&v1[v6])
  {
    v7 = v1;
    v11 = sub_20CF81C08(a1);
    sub_20CF8ABDC(&v11, v7);

    sub_20CECF940(0, &qword_281120AC0);
    v8 = sub_20D567A58();

    [v5 setItems_];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
  v9 = swift_allocObject();
  *&result = 1;
  *(v9 + 16) = xmmword_20D5BA040;
  *(v9 + 32) = v5;
  return result;
}

id sub_20CF8971C()
{
  v1 = v0;
  sub_20CECF940(0, &qword_281120AC0);
  sub_20CEF99B4();
  v2 = sub_20D567CD8();
  v36.receiver = v1;
  v36.super_class = type metadata accessor for DashboardSectionListItemManager();
  v3 = objc_msgSendSuper2(&v36, sel__itemsToHideInSet_, v2);

  v4 = sub_20D567D08();
  v37 = v4;
  v5 = OBJC_IVAR____TtC6HomeUI31DashboardSectionListItemManager_room;
  v6 = *&v1[OBJC_IVAR____TtC6HomeUI31DashboardSectionListItemManager_room];
  if (v6)
  {
    v7 = [v6 hf_allCameraProfiles];
    sub_20CECF940(0, &qword_27C81DC38);
    v8 = sub_20D567A78();

    if (v8 >> 62)
    {
      v9 = sub_20D568768();
    }

    else
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v9)
    {
      v10 = *&v1[OBJC_IVAR____TtC6HomeUI31DashboardSectionListItemManager_cameraSectionItem];
      if (v10)
      {
        sub_20CEEA1BC(&v35, v10);
      }
    }

    v11 = *&v1[v5];
    if (v11)
    {
      v12 = [v11 hf_allNonEmptyActionSets];
      sub_20CECF940(0, &unk_27C81DC40);
      v13 = sub_20D567A78();

      if (v13 >> 62)
      {
        v14 = sub_20D568768();
      }

      else
      {
        v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (!v14)
      {
        v15 = *&v1[OBJC_IVAR____TtC6HomeUI31DashboardSectionListItemManager_sceneSectionItem];
        if (v15)
        {
          sub_20CEEA1BC(&v35, v15);
        }
      }
    }

    goto LABEL_26;
  }

  v16 = [v1 home];
  if (v16)
  {
    v17 = v16;
    v18 = [v16 hf_allCameraProfiles];

    sub_20CECF940(0, &qword_27C81DC38);
    v19 = sub_20D567A78();

    if (v19 >> 62)
    {
      v33 = sub_20D568768();

      if (v33)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v20)
      {
        goto LABEL_18;
      }
    }

    v21 = *&v1[OBJC_IVAR____TtC6HomeUI31DashboardSectionListItemManager_cameraSectionItem];
    if (v21)
    {
      sub_20CEEA1BC(&v35, v21);
    }
  }

LABEL_18:
  v22 = [v1 home];
  if (!v22)
  {
    goto LABEL_23;
  }

  v23 = v22;
  v24 = [v22 hf_allNonEmptyActionSets];

  sub_20CECF940(0, &unk_27C81DC40);
  v25 = sub_20D567A78();

  if (v25 >> 62)
  {
    v34 = sub_20D568768();

    if (v34)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v26)
    {
      goto LABEL_23;
    }
  }

  v27 = *&v1[OBJC_IVAR____TtC6HomeUI31DashboardSectionListItemManager_sceneSectionItem];
  if (v27)
  {
    sub_20CEEA1BC(&v35, v27);
  }

LABEL_23:
  v28 = [v1 home];
  if (!v28)
  {
    goto LABEL_26;
  }

  result = [v1 home];
  if (result)
  {
    v30 = result;
    v31 = [result hf_hasFavorites];

    if (v31)
    {
      return v37;
    }

LABEL_26:
    v32 = *&v1[OBJC_IVAR____TtC6HomeUI31DashboardSectionListItemManager_favoriteSectionItem];
    if (v32)
    {
      sub_20CEEA1BC(&v35, v32);
    }

    return v37;
  }

  __break(1u);
  return result;
}

id DashboardSectionListItemManager.__allocating_init(delegate:sourceItem:)(uint64_t a1, void *a2)
{
  v4 = [objc_allocWithZone(v2) initWithDelegate:a1 sourceItem:a2];
  swift_unknownObjectRelease();

  return v4;
}

id DashboardSectionListItemManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DashboardSectionListItemManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20CF89DDC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D8D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_20CF89E44(void **__src, void **a2, id *a3, void **__dst, uint64_t a5)
{
  v5 = __dst;
  v6 = a3;
  v7 = __src;
  v8 = a2 - __src;
  v9 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v9 = a2 - __src;
  }

  v10 = v9 >> 3;
  v11 = a3 - a2;
  v12 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v12 = a3 - a2;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    v14 = a2;
    if (__dst != __src || &__src[v10] <= __dst)
    {
      memmove(__dst, __src, 8 * v10);
    }

    v15 = &v5[v10];
    v40 = OBJC_IVAR____TtC6HomeUI31DashboardSectionListItemManager_reorderableSectionList;
    swift_beginAccess();
    if (v8 < 8)
    {
LABEL_10:
      v16 = v7;
      goto LABEL_39;
    }

    while (1)
    {
      if (v14 >= v6)
      {
        goto LABEL_10;
      }

      v19 = *(a5 + v40);
      if (!v19)
      {
        goto LABEL_44;
      }

      v20 = *v5;
      v21 = *v14;
      v22 = v20;
      v23 = v19;
      v24 = sub_20D565AD8();

      if (v24)
      {
        break;
      }

      v17 = v5;
      v18 = v7 == v5++;
      if (!v18)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      if (v5 >= v15)
      {
        goto LABEL_10;
      }
    }

    v17 = v14;
    v18 = v7 == v14++;
    if (v18)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v17;
    goto LABEL_13;
  }

  if (__dst != a2 || &a2[v13] <= __dst)
  {
    v25 = a2;
    memmove(__dst, a2, 8 * v13);
    a2 = v25;
  }

  v26 = a2;
  v15 = &v5[v13];
  v41 = OBJC_IVAR____TtC6HomeUI31DashboardSectionListItemManager_reorderableSectionList;
  swift_beginAccess();
  if (v11 < 8)
  {
    v16 = v26;
    goto LABEL_39;
  }

  v16 = v26;
  if (v26 <= v7)
  {
LABEL_39:
    if (v16 != v5 || v16 >= (v5 + ((v15 - v5 + (v15 - v5 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
    {
      memmove(v16, v5, 8 * (v15 - v5));
    }

    return;
  }

  v39 = v5;
LABEL_26:
  v38 = v16;
  v27 = v16 - 1;
  --v6;
  while (1)
  {
    v28 = *(a5 + v41);
    if (!v28)
    {
      break;
    }

    v29 = v15 - 1;
    v30 = v27;
    v31 = *v27;
    v32 = *(v15 - 1);
    v33 = v31;
    v34 = v28;
    v35 = sub_20D565AD8();

    v36 = v6 + 1;
    if (v35)
    {
      v37 = v30;
      if (v36 != v38)
      {
        *v6 = *v30;
      }

      v5 = v39;
      if (v15 <= v39 || (v16 = v37, v37 <= v7))
      {
        v16 = v37;
        goto LABEL_39;
      }

      goto LABEL_26;
    }

    if (v36 != v15)
    {
      *v6 = *v29;
    }

    --v6;
    --v15;
    v27 = v30;
    if (v29 <= v39)
    {
      v15 = v29;
      v16 = v38;
      v5 = v39;
      goto LABEL_39;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
}

void sub_20CF8A158(char **a1, void **a2, uint64_t *a3, void *a4)
{
  v5 = a1;
  v6 = *a1;
  v21 = a4;
  v22 = v6;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_14:
    v22 = sub_20D057C88(v22);
  }

  v18 = v5;
  *v5 = v22;
  v8 = v22 + 16;
  v7 = *(v22 + 2);
  if (v7 < 2)
  {
LABEL_9:

    *v18 = v22;
  }

  else
  {
    while (1)
    {
      v9 = *a3;
      if (!*a3)
      {
        break;
      }

      v10 = &v22[16 * v7];
      v11 = *v10;
      v12 = v8;
      v13 = &v8[16 * v7];
      v5 = *(v13 + 1);
      __src = (v9 + 8 * *v10);
      v23 = (v9 + 8 * *v13);
      v14 = (v9 + 8 * v5);
      v15 = v21;
      sub_20CF89E44(__src, v23, v14, a2, v15);

      if (v4)
      {
        *v18 = v22;

        return;
      }

      if (v5 < v11)
      {
        __break(1u);
LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
        goto LABEL_14;
      }

      v16 = *v12;
      if (v7 - 2 >= *v12)
      {
        goto LABEL_12;
      }

      *v10 = v11;
      *(v10 + 1) = v5;
      v17 = v16 - v7;
      if (v16 < v7)
      {
        goto LABEL_13;
      }

      v8 = v12;
      v7 = v16 - 1;
      memmove(v13, v13 + 16, 16 * v17);
      *v12 = v7;
      if (v7 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v18 = v22;
    __break(1u);
  }
}

void sub_20CF8A2F8(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4, void **a5)
{
  v5 = a5;
  v6 = a3[1];
  v145 = MEMORY[0x277D84F90];
  if (v6 < 1)
  {
    v120 = a5;
    goto LABEL_131;
  }

  v7 = OBJC_IVAR____TtC6HomeUI31DashboardSectionListItemManager_reorderableSectionList;
  v140 = a5;
  v143 = v7;
  swift_beginAccess();
  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  v144 = v5;
  do
  {
    v10 = v8;
    if (v8 + 1 >= v6)
    {
      v25 = a4;
      v6 = v8 + 1;
    }

    else
    {
      v129 = v9;
      v11 = *(v5 + v143);
      if (!v11)
      {
        goto LABEL_162;
      }

      v12 = 8 * v8;
      v13 = (*a3 + 8 * v8);
      v15 = *v13;
      v14 = v13 + 2;
      v5 = *(*a3 + 8 * (v8 + 1));
      v16 = v15;
      v17 = v11;
      v18 = sub_20D565AD8();

      v137 = v10;
      v19 = v10 + 2;
      while (v6 != v19)
      {
        v20 = *(v144 + v143);
        if (!v20)
        {
          goto LABEL_159;
        }

        v21 = *(v14 - 1);
        v5 = *v14;
        v22 = v21;
        v23 = v20;
        v24 = sub_20D565AD8();

        ++v19;
        ++v14;
        if ((v18 ^ v24))
        {
          v6 = v19 - 1;
          break;
        }
      }

      v5 = v144;
      v25 = a4;
      v9 = v129;
      v10 = v137;
      if (v18)
      {
        if (v6 < v137)
        {
          goto LABEL_151;
        }

        if (v137 < v6)
        {
          v26 = 8 * v6 - 8;
          v27 = v6;
          v28 = v137;
          do
          {
            if (v28 != --v27)
            {
              v29 = *a3;
              if (!*a3)
              {
                goto LABEL_160;
              }

              v30 = *(v29 + v12);
              *(v29 + v12) = *(v29 + v26);
              *(v29 + v26) = v30;
            }

            ++v28;
            v26 -= 8;
            v12 += 8;
          }

          while (v28 < v27);
          v25 = a4;
        }
      }
    }

    v31 = a3[1];
    if (v6 >= v31)
    {
      v34 = v6;
      if (v6 < v10)
      {
        goto LABEL_149;
      }
    }

    else
    {
      if (__OFSUB__(v6, v10))
      {
        goto LABEL_150;
      }

      v32 = v6;
      if (v6 - v10 >= v25)
      {
        goto LABEL_28;
      }

      v33 = v10 + v25;
      if (__OFADD__(v10, v25))
      {
        goto LABEL_152;
      }

      if (v33 >= v31)
      {
        v33 = a3[1];
      }

      if (v33 < v10)
      {
        goto LABEL_153;
      }

      if (v6 == v33)
      {
LABEL_28:
        v34 = v6;
        if (v6 < v10)
        {
          goto LABEL_149;
        }
      }

      else
      {
        v131 = v9;
        v107 = *a3;
        v108 = *a3 + 8 * v6;
        v139 = v10;
        v109 = v10 - v32;
        v142 = v33;
        do
        {
          v126 = v32;
          v110 = v109;
          v111 = v108;
          do
          {
            v112 = *(v5 + v143);
            if (!v112)
            {
              goto LABEL_156;
            }

            v113 = *(v111 - 1);
            v114 = *v111;
            v115 = v113;
            v116 = v112;
            v117 = sub_20D565AD8();

            v5 = v144;
            if ((v117 & 1) == 0)
            {
              break;
            }

            if (!v107)
            {
              goto LABEL_157;
            }

            v118 = *v111;
            *v111 = *(v111 - 1);
            *--v111 = v118;
          }

          while (!__CFADD__(v110++, 1));
          v32 = v126 + 1;
          v108 += 8;
          --v109;
        }

        while (v126 + 1 != v142);
        v34 = v142;
        v9 = v131;
        v10 = v139;
        if (v142 < v139)
        {
          goto LABEL_149;
        }
      }
    }

    v125 = v34;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_20CEE81E4(0, *(v9 + 2) + 1, 1, v9);
    }

    v36 = *(v9 + 2);
    v35 = *(v9 + 3);
    v37 = v36 + 1;
    if (v36 >= v35 >> 1)
    {
      v9 = sub_20CEE81E4((v35 > 1), v36 + 1, 1, v9);
    }

    *(v9 + 2) = v37;
    v38 = v9 + 32;
    v39 = &v9[16 * v36 + 32];
    *v39 = v10;
    *(v39 + 1) = v125;
    v40 = *a1;
    if (!*a1)
    {
      goto LABEL_161;
    }

    if (v36)
    {
      v128 = v9 + 32;
      v130 = v9;
      v141 = *a1;
      while (1)
      {
        v41 = v37 - 1;
        if (v37 >= 4)
        {
          break;
        }

        if (v37 == 3)
        {
          v42 = *(v9 + 4);
          v43 = *(v9 + 5);
          v52 = __OFSUB__(v43, v42);
          v44 = v43 - v42;
          v45 = v52;
LABEL_51:
          if (v45)
          {
            goto LABEL_139;
          }

          v58 = &v9[16 * v37];
          v60 = *v58;
          v59 = *(v58 + 1);
          v61 = __OFSUB__(v59, v60);
          v62 = v59 - v60;
          v63 = v61;
          if (v61)
          {
            goto LABEL_141;
          }

          v64 = &v38[16 * v41];
          v66 = *v64;
          v65 = *(v64 + 1);
          v52 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v52)
          {
            goto LABEL_144;
          }

          if (__OFADD__(v62, v67))
          {
            goto LABEL_146;
          }

          if (v62 + v67 >= v44)
          {
            if (v44 < v67)
            {
              v41 = v37 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        if (v37 < 2)
        {
          goto LABEL_147;
        }

        v68 = &v9[16 * v37];
        v70 = *v68;
        v69 = *(v68 + 1);
        v52 = __OFSUB__(v69, v70);
        v62 = v69 - v70;
        v63 = v52;
LABEL_66:
        if (v63)
        {
          goto LABEL_143;
        }

        v71 = &v38[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v52 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v52)
        {
          goto LABEL_145;
        }

        if (v74 < v62)
        {
          goto LABEL_3;
        }

LABEL_73:
        if (v41 - 1 >= v37)
        {
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
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
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:

          __break(1u);
LABEL_158:

          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:

          __break(1u);
LABEL_161:

          __break(1u);
LABEL_162:
          __break(1u);
          goto LABEL_163;
        }

        v79 = *a3;
        if (!*a3)
        {
          goto LABEL_158;
        }

        v134 = &v38[16 * v41 - 16];
        v135 = v41;
        __dst = &v38[16 * v41];
        v136 = *(__dst + 1);
        v138 = *v134;
        v5 = (8 * *v134);
        v80 = (v5 + v79);
        v81 = 8 * *__dst;
        v82 = (v79 + v81);
        v83 = (v79 + 8 * v136);
        v84 = v81 - v5;
        v85 = 8 * v136 - v81;
        if (v81 - v5 >= v85)
        {
          v97 = (v79 + v81);
          if (v82 != v40 || v83 <= v40)
          {
            memmove(v40, v82, 8 * v136 - v81);
          }

          v98 = v140;
          v87 = (v40 + v85);
          if (v85 < 1 || v81 <= v5)
          {
            v96 = v97;
          }

          else
          {
            do
            {
              v127 = v97;
              v96 = v97 - 1;
              --v83;
              while (1)
              {
                v99 = *(v144 + v143);
                if (!v99)
                {
                  goto LABEL_154;
                }

                v5 = v87 - 1;
                v100 = *v96;
                v101 = *(v87 - 1);
                v102 = v100;
                v103 = v99;
                v104 = sub_20D565AD8();

                v105 = v83 + 1;
                if (v104)
                {
                  break;
                }

                if (v105 != v87)
                {
                  *v83 = *v5;
                }

                --v83;
                --v87;
                v40 = v141;
                if (v5 <= v141)
                {
                  v87 = v5;
                  v96 = v127;
                  goto LABEL_109;
                }
              }

              if (v105 != v127)
              {
                *v83 = *v96;
              }

              v40 = v141;
              if (v87 <= v141)
              {
                break;
              }

              v97 = v96;
            }

            while (v80 < v96);
          }
        }

        else
        {
          v5 = (v79 + v81);
          if (v80 != v40 || v82 <= v40)
          {
            memmove(v40, (v79 + 8 * *v134), v81 - 8 * *v134);
          }

          v86 = v140;
          v87 = (v40 + v84);
          if (v84 >= 1 && 8 * v136 > v81)
          {
            while (1)
            {
              v88 = *(v144 + v143);
              if (!v88)
              {
                goto LABEL_155;
              }

              v89 = *v40;
              v90 = *v5;
              v91 = v89;
              v92 = v88;
              v93 = sub_20D565AD8();

              if ((v93 & 1) == 0)
              {
                break;
              }

              v94 = v5;
              v95 = v80 == v5++;
              if (!v95)
              {
                goto LABEL_87;
              }

LABEL_88:
              ++v80;
              if (v40 >= v87 || v5 >= v83)
              {
                goto LABEL_90;
              }
            }

            v94 = v40;
            v95 = v80 == v40++;
            if (v95)
            {
              goto LABEL_88;
            }

LABEL_87:
            *v80 = *v94;
            goto LABEL_88;
          }

LABEL_90:
          v96 = v80;
        }

LABEL_109:
        if (v96 != v40 || v96 >= (v40 + ((v87 - v40 + (v87 - v40 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
        {
          memmove(v96, v40, 8 * (v87 - v40));
        }

        if (v136 < v138)
        {
          goto LABEL_134;
        }

        v9 = v130;
        v106 = *(v130 + 2);
        if (v135 > v106)
        {
          goto LABEL_135;
        }

        *v134 = v138;
        *(v134 + 1) = v136;
        if (v135 >= v106)
        {
          goto LABEL_136;
        }

        v37 = v106 - 1;
        memmove(__dst, __dst + 16, 16 * (v106 - 1 - v135));
        *(v130 + 2) = v106 - 1;
        v5 = v144;
        v38 = v128;
        v40 = v141;
        if (v106 <= 2)
        {
          goto LABEL_3;
        }
      }

      v46 = &v38[16 * v37];
      v47 = *(v46 - 8);
      v48 = *(v46 - 7);
      v52 = __OFSUB__(v48, v47);
      v49 = v48 - v47;
      if (v52)
      {
        goto LABEL_137;
      }

      v51 = *(v46 - 6);
      v50 = *(v46 - 5);
      v52 = __OFSUB__(v50, v51);
      v44 = v50 - v51;
      v45 = v52;
      if (v52)
      {
        goto LABEL_138;
      }

      v53 = &v9[16 * v37];
      v55 = *v53;
      v54 = *(v53 + 1);
      v52 = __OFSUB__(v54, v55);
      v56 = v54 - v55;
      if (v52)
      {
        goto LABEL_140;
      }

      v52 = __OFADD__(v44, v56);
      v57 = v44 + v56;
      if (v52)
      {
        goto LABEL_142;
      }

      if (v57 >= v49)
      {
        v75 = &v38[16 * v41];
        v77 = *v75;
        v76 = *(v75 + 1);
        v52 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v52)
        {
          goto LABEL_148;
        }

        if (v44 < v78)
        {
          v41 = v37 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_51;
    }

LABEL_3:
    v6 = a3[1];
    v8 = v125;
  }

  while (v125 < v6);
  v145 = v9;
LABEL_131:
  v121 = *a1;
  if (*a1)
  {
    v122 = v5;
    sub_20CF8A158(&v145, v121, a3, v122);

    return;
  }

LABEL_163:

  __break(1u);
}

void sub_20CF8ABDC(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_20D059BE4(v4);
    *a1 = v4;
  }

  v7 = *(v4 + 16);
  v31[0] = v4 + 32;
  v31[1] = v7;
  v8 = v5;
  v9 = sub_20D568BA8();
  if (v9 >= v7)
  {
    if (v7 > 1)
    {
      v13 = OBJC_IVAR____TtC6HomeUI31DashboardSectionListItemManager_reorderableSectionList;
      v26 = v8;
      v14 = (v4 + 40);
      v15 = -1;
      v16 = 1;
      v27 = v7;
      while (2)
      {
        swift_beginAccess();
        v28 = v15;
        v29 = v14;
        v17 = v14;
        do
        {
          v18 = *&v8[v13];
          if (!v18)
          {
            __break(1u);
            return;
          }

          v19 = *(v17 - 1);
          v20 = *v17;
          v21 = v19;
          v22 = v18;
          v23 = sub_20D565AD8();

          if ((v23 & 1) == 0)
          {
            break;
          }

          v24 = *v17;
          *v17 = *(v17 - 1);
          *--v17 = v24;
        }

        while (!__CFADD__(v15++, 1));
        ++v16;
        v14 = v29 + 1;
        v15 = v28 - 1;
        if (v16 != v27)
        {
          continue;
        }

        break;
      }
    }

    else
    {
    }
  }

  else
  {
    v10 = v9;
    if (v7 >= 2)
    {
      sub_20CECF940(0, &qword_281120AC0);
      v11 = sub_20D567AE8();
      *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) = v7 >> 1;
    }

    else
    {
      v11 = MEMORY[0x277D84F90];
    }

    v30[0] = ((v11 & 0xFFFFFFFFFFFFFF8) + 32);
    v30[1] = (v7 >> 1);
    v12 = v8;
    sub_20CF8A2F8(v30, v32, v31, v10, v12);
    if (v2)
    {

      *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

      sub_20D5688D8();

      return;
    }

    *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
  }

  sub_20D5688D8();
}

char *sub_20CF8B04C(void *a1)
{
  *&v1[OBJC_IVAR____TtC6HomeUI28ContainedSpeakersItemManager_accessoryElementItemModule] = 0;
  *&v1[OBJC_IVAR____TtC6HomeUI28ContainedSpeakersItemManager_removeItem] = 0;
  v26 = OBJC_IVAR____TtC6HomeUI28ContainedSpeakersItemManager_accessoryElementContext;
  v24 = [objc_allocWithZone(MEMORY[0x277D148D0]) init];
  v25 = type metadata accessor for AccessoryRepresentableItemModule.Context();
  v2 = objc_allocWithZone(v25);
  v3 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_objectLevel;
  *&v2[OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_objectLevel] = 0;
  v4 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_accessoryContainer;
  *&v2[OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_accessoryContainer] = 0;
  v5 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_sectionGroupingType;
  *&v2[OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_sectionGroupingType] = 1;
  v6 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_hideSourceItemDescriptions;
  v2[OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_hideSourceItemDescriptions] = 0;
  v7 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_showFooter;
  v2[OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_showFooter] = 0;
  v8 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_valueSource;
  *&v2[v8] = [objc_allocWithZone(MEMORY[0x277D148D0]) &selRef_indexesOfObjectsPassingTest_];
  v9 = &v2[OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_filter];
  *v9 = 0;
  v9[1] = 0;
  v10 = &v2[OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_itemFilter];
  *v10 = 0;
  v10[1] = 0;
  swift_beginAccess();
  *&v2[v3] = 3;
  swift_beginAccess();
  *&v2[v4] = 0;
  swift_unknownObjectRelease();
  swift_beginAccess();
  *&v2[v5] = 1;
  swift_beginAccess();
  v2[v6] = 0;
  swift_beginAccess();
  v2[v7] = 0;
  swift_beginAccess();
  *&v2[v8] = v24;
  v11 = v24;
  swift_unknownObjectRelease();
  swift_beginAccess();
  v12 = *v9;
  *v9 = 0;
  v9[1] = 0;
  sub_20CEC8164(v12);
  swift_beginAccess();
  v13 = *v10;
  *v10 = 0;
  v10[1] = 0;
  sub_20CEC8164(v13);
  v29.receiver = v2;
  v29.super_class = v25;
  v14 = objc_msgSendSuper2(&v29, sel_init);

  *&v1[v26] = v14;
  v15 = &v1[OBJC_IVAR____TtC6HomeUI28ContainedSpeakersItemManager_removeItemSectionIdentifier];
  *v15 = 0xD000000000000011;
  *(v15 + 1) = 0x800000020D5D1550;
  *&v1[OBJC_IVAR____TtC6HomeUI28ContainedSpeakersItemManager_mediaItem] = a1;
  v28.receiver = v1;
  v28.super_class = type metadata accessor for ContainedSpeakersItemManager();
  v16 = a1;
  v17 = objc_msgSendSuper2(&v28, sel_initWithDelegate_sourceItem_, 0, 0);
  v18 = *&v17[OBJC_IVAR____TtC6HomeUI28ContainedSpeakersItemManager_accessoryElementContext];
  v19 = swift_allocObject();
  *(v19 + 16) = v16;
  v20 = &v18[OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_filter];
  swift_beginAccess();
  v21 = *v20;
  *v20 = sub_20CF8C150;
  v20[1] = v19;
  v22 = v18;
  sub_20CEC8164(v21);

  return v17;
}

BOOL sub_20CF8B388(unint64_t a1, void *a2)
{
  v4 = sub_20D563818();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v36 - v9;
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 0;
  }

  v39 = a2;
  v37 = v5;
  ObjectType = swift_getObjectType();
  v40 = a1;
  v12 = sub_20D5681C8();
  v43 = v8;
  v44 = v12;
  if ((v12 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_20D568718();
    sub_20CECF940(0, &unk_27C81D480);
    sub_20CEF7F74(&unk_27C81BF30, &unk_27C81D480);
    sub_20D567D58();
    v13 = v47;
    v14 = v48;
    v15 = v49;
    v16 = v50;
    v17 = v51;
  }

  else
  {
    v18 = -1 << *(v12 + 32);
    v14 = v12 + 56;
    v15 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v17 = v20 & *(v12 + 56);
    v16 = 0;
    v13 = sub_20D5663C8();
  }

  v38 = v4;
  v41 = v15;
  v21 = (v15 + 64) >> 6;
  do
  {
    if (v13 < 0)
    {
      v25 = sub_20D568798();
      if (!v25 || (v45 = v25, sub_20CECF940(0, &unk_27C81D480), swift_dynamicCast(), (v24 = v46) == 0))
      {
LABEL_32:
        sub_20CEC80DC();
        v11 = 0;
        goto LABEL_33;
      }
    }

    else
    {
      v22 = v16;
      v23 = v17;
      if (!v17)
      {
        while (1)
        {
          v16 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            break;
          }

          if (v16 >= v21)
          {
            goto LABEL_32;
          }

          v23 = *(v14 + 8 * v16);
          ++v22;
          if (v23)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

LABEL_15:
      v17 = (v23 - 1) & v23;
      v24 = *(*(v13 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v23)))));
      if (!v24)
      {
        goto LABEL_32;
      }
    }

    objc_opt_self();
    v26 = swift_dynamicCastObjCClass();
  }

  while (!v26);
  sub_20CEC80DC();

  v27 = [v39 mediaProfileContainers];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81DC80);
  v21 = sub_20D567A78();

  if (!(v21 >> 62))
  {
    v39 = (v21 & 0xFFFFFFFFFFFFFF8);
    v41 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_22;
  }

LABEL_37:
  v39 = (v21 & 0xFFFFFFFFFFFFFF8);
  v41 = sub_20D568768();
LABEL_22:
  v28 = v38;
  v29 = 0;
  v44 = v21;
  v40 = v21 & 0xC000000000000001;
  v30 = (v37 + 8);
  do
  {
    v11 = v41 != v29;
    if (v41 == v29)
    {
      break;
    }

    if (v40)
    {
      v31 = MEMORY[0x20F31DD20](v29, v44);
      if (__OFADD__(v29, 1))
      {
        goto LABEL_31;
      }
    }

    else
    {
      if (v29 >= *(v39 + 2))
      {
        goto LABEL_36;
      }

      v31 = *(v44 + 8 * v29 + 32);
      swift_unknownObjectRetain();
      if (__OFADD__(v29, 1))
      {
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }
    }

    v32 = [v31 uniqueIdentifier];
    sub_20D5637E8();

    v33 = [sub_20D5681A8() uniqueIdentifier];
    swift_unknownObjectRelease();
    v21 = v43;
    sub_20D5637E8();

    LOBYTE(v32) = sub_20D5637D8();
    swift_unknownObjectRelease();
    v34 = *v30;
    (*v30)(v21, v28);
    v34(v10, v28);
    ++v29;
  }

  while ((v32 & 1) == 0);
LABEL_33:

  return v11;
}

uint64_t sub_20CF8B8DC()
{
  v15 = MEMORY[0x277D84F90];
  v1 = *(v0 + OBJC_IVAR____TtC6HomeUI28ContainedSpeakersItemManager_accessoryElementContext);
  v2 = objc_allocWithZone(type metadata accessor for AccessoryRepresentableItemModule());
  v3 = &v2[OBJC_IVAR___HUAccessoryRepresentableItemModule_selectionController];
  *v3 = 0;
  *(v3 + 1) = 0;
  *&v2[OBJC_IVAR___HUAccessoryRepresentableItemModule_accessoryItemProvider] = 0;
  *&v2[OBJC_IVAR___HUAccessoryRepresentableItemModule_context] = v1;
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC6HomeUI19AccessoryItemModule_sectionGroupingType] = 1;
  swift_unknownObjectWeakAssign();
  v4 = &v2[OBJC_IVAR____TtC6HomeUI19AccessoryItemModule_itemProviderBlock];
  *v4 = 0;
  *(v4 + 1) = 0;
  v14.receiver = v2;
  v14.super_class = type metadata accessor for AccessoryItemModule();
  v5 = v1;
  v6 = objc_msgSendSuper2(&v14, sel_initWithItemUpdater_, v0);
  v7 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_sectionGroupingType;
  swift_beginAccess();
  v8 = *&v5[v7];

  v9 = OBJC_IVAR____TtC6HomeUI19AccessoryItemModule_sectionGroupingType;
  swift_beginAccess();
  *&v6[v9] = v8;
  v10 = *(v0 + OBJC_IVAR____TtC6HomeUI28ContainedSpeakersItemManager_accessoryElementItemModule);
  *(v0 + OBJC_IVAR____TtC6HomeUI28ContainedSpeakersItemManager_accessoryElementItemModule) = v6;
  v11 = v6;

  v12 = v11;
  MEMORY[0x20F31CEE0]();
  if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_20D567AB8();
  }

  sub_20D567B08();

  return v15;
}

uint64_t sub_20CF8BB30()
{
  v1 = v0;
  v17 = MEMORY[0x277D84F90];
  v2 = *(v0 + OBJC_IVAR____TtC6HomeUI28ContainedSpeakersItemManager_accessoryElementItemModule);
  if (v2)
  {
    sub_20CECF940(0, &qword_281120AC0);
    sub_20CEF7F74(&qword_281120AB0, &qword_281120AC0);
    v3 = v2;
    v4 = sub_20D567CD8();
    v5 = [v3 buildSectionsWithDisplayedItems_];

    sub_20CECF940(0, &unk_28111FFD0);
    v6 = sub_20D567A78();

    sub_20CF6BF50(v6);
  }

  v7 = *(v1 + OBJC_IVAR____TtC6HomeUI28ContainedSpeakersItemManager_removeItem);
  if (v7)
  {
    v8 = objc_allocWithZone(MEMORY[0x277D14850]);
    v9 = v7;
    v10 = sub_20D5677F8();
    v11 = [v8 initWithIdentifier_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_20D5BA040;
    *(v12 + 32) = v9;
    sub_20CECF940(0, &qword_281120AC0);
    v13 = v9;
    v14 = sub_20D567A58();

    [v11 setItems_];

    v15 = v11;
    MEMORY[0x20F31CEE0]();
    if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_20D567AB8();
    }

    sub_20D567B08();
  }

  return v17;
}

id sub_20CF8BEA4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ContainedSpeakersItemManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20CF8BF7C()
{
  v14 = MEMORY[0x277D84F90];
  v13[1] = MEMORY[0x277D84FA0];
  v1 = OBJC_IVAR____TtC6HomeUI28ContainedSpeakersItemManager_mediaItem;
  v2 = [*(v0 + OBJC_IVAR____TtC6HomeUI28ContainedSpeakersItemManager_mediaItem) home];
  if (v2)
  {
    v3 = v2;
    v4 = *(v0 + v1);
    v5 = objc_allocWithZone(HUServiceDetailsRemoveItem);
    v6 = v4;
    v7 = [v5 initWithSourceServiceItem:v6 home:v3];

    v8 = *(v0 + OBJC_IVAR____TtC6HomeUI28ContainedSpeakersItemManager_removeItem);
    *(v0 + OBJC_IVAR____TtC6HomeUI28ContainedSpeakersItemManager_removeItem) = v7;
  }

  v9 = *(v0 + OBJC_IVAR____TtC6HomeUI28ContainedSpeakersItemManager_removeItem);
  if (v9)
  {
    sub_20CEEA1BC(v13, v9);
  }

  v10 = objc_allocWithZone(MEMORY[0x277D14B40]);
  sub_20CECF940(0, &qword_281120AC0);
  sub_20CEF7F74(&qword_281120AB0, &qword_281120AC0);
  v11 = sub_20D567CD8();

  [v10 initWithItems_];

  MEMORY[0x20F31CEE0]();
  if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_20D567AB8();
  }

  sub_20D567B08();
  return v14;
}

id sub_20CF8C158()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for CircleIconView();
  objc_msgSendSuper2(&v5, sel_layoutSubviews);
  [v0 bounds];
  Width = CGRectGetWidth(v6);
  [v0 bounds];
  Height = CGRectGetHeight(v7);
  if (Height >= Width)
  {
    Height = Width;
  }

  [v0 _setCornerRadius_];
  v3 = *&v0[OBJC_IVAR____TtC6HomeUIP33_D96FE4879830C8E6988A7635203F311B14CircleIconView_backgroundView];
  [v0 _cornerRadius];
  return [v3 _setCornerRadius_];
}

id sub_20CF8C328()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CircleIconView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_20CF8C3AC(void *a1)
{
  v3 = sub_20D5677F8();
  [a1 setTitle_];

  if (*(v1 + 40))
  {
    v4 = sub_20D5677F8();
  }

  else
  {
    v4 = 0;
  }

  [a1 setSubtitle_];

  [a1 setGridSizeClass_];
  [a1 setContinuousCornerRadius_];
  v5 = *(*(v1 + 72) + OBJC_IVAR____TtC6HomeUIP33_D96FE4879830C8E6988A7635203F311B14CircleIconView_iconView);
  [v5 updateWithIconDescriptor:*v1 displayStyle:3 animated:0];
  [v5 setTintColor_];
  [v5 setDisableContinuousAnimation_];

  return [v5 setUseIntrinsicContentSizeFromAsset_];
}

id sub_20CF8C4C8()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 72);
  v3 = [objc_allocWithZone(MEMORY[0x277CFC980]) initWithFrame_];
  [v3 setContentMetrics_];
  [v3 setCustomGlyphView_];
  return v3;
}

uint64_t sub_20CF8C5E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20CF8FAA4();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_20CF8C644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20CF8FAA4();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_20CF8C6A8()
{
  sub_20CF8FAA4();
  sub_20D566CE8();
  __break(1u);
}

uint64_t Template.hash(into:)()
{
  sub_20D568408();
  sub_20D568408();
  sub_20D5678C8();
  if (!*(v0 + 40))
  {
    return sub_20D568D68();
  }

  sub_20D568D68();

  return sub_20D5678C8();
}

uint64_t Template.hashValue.getter()
{
  sub_20D568D48();
  sub_20D568408();
  sub_20D568408();
  sub_20D5678C8();
  if (*(v0 + 40))
  {
    sub_20D568D68();
    sub_20D5678C8();
  }

  else
  {
    sub_20D568D68();
  }

  return sub_20D568D98();
}

uint64_t sub_20CF8C810()
{
  v1 = *(v0 + 40);
  sub_20D568D48();
  sub_20D568408();
  sub_20D568408();
  sub_20D5678C8();
  sub_20D568D68();
  if (v1)
  {
    sub_20D5678C8();
  }

  return sub_20D568D98();
}

uint64_t sub_20CF8C8C0()
{
  v1 = *(v0 + 40);
  sub_20D568408();
  sub_20D568408();
  sub_20D5678C8();
  if (!v1)
  {
    return sub_20D568D68();
  }

  sub_20D568D68();

  return sub_20D5678C8();
}

uint64_t sub_20CF8C978()
{
  v1 = *(v0 + 40);
  sub_20D568D48();
  sub_20D568408();
  sub_20D568408();
  sub_20D5678C8();
  sub_20D568D68();
  if (v1)
  {
    sub_20D5678C8();
  }

  return sub_20D568D98();
}

uint64_t sub_20CF8CA24(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return _s6HomeUI8TemplateV2eeoiySbAC_ACtFZ_0(v7, v8) & 1;
}

double sub_20CF8CA6C()
{
  swift_getKeyPath();
  sub_20CF8FEA8(&qword_27C81FB60, type metadata accessor for GalleryPreviewViewModel);
  sub_20D563908();

  return *(v0 + 16);
}

void sub_20CF8CB0C(double a1)
{
  if (*(v1 + 16) == a1)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_20CF8FEA8(&qword_27C81FB60, type metadata accessor for GalleryPreviewViewModel);
    sub_20D5638F8();
  }
}

id sub_20CF8CC2C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v11 = v1;
  sub_20CF8FEA8(&qword_27C81FB60, type metadata accessor for GalleryPreviewViewModel);
  sub_20D563908();

  v3 = *(v1 + 24);
  v4 = *(v11 + 32);
  v5 = *(v11 + 40);
  v6 = *(v11 + 48);
  v7 = *(v11 + 56);
  v8 = *(v11 + 64);
  v9 = *(v11 + 72);
  result = sub_20CF8FC20(v3, v4, v5, v6, v7, v8, v9);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  return result;
}

id sub_20CF8CD1C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_20CF8FEA8(&qword_27C81FB60, type metadata accessor for GalleryPreviewViewModel);
  sub_20D563908();

  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  v6 = *(v3 + 40);
  v7 = *(v3 + 48);
  v8 = *(v3 + 56);
  v9 = *(v3 + 64);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
  *(a2 + 40) = v9;
  v10 = *(v3 + 72);
  *(a2 + 48) = v10;
  return sub_20CF8FC20(v4, v5, v6, v7, v8, v9, v10);
}

void sub_20CF8CDE0(int8x16_t *a1)
{
  v4 = *(v1 + 24);
  v3 = *(v1 + 32);
  v6 = *(v1 + 40);
  v5 = *(v1 + 48);
  v7 = *(v1 + 56);
  v8 = *(v1 + 64);
  if (*(v1 + 72) > 1u)
  {
    if (*(v1 + 72) != 2)
    {
      if (a1[3].i8[0] != 3)
      {
        goto LABEL_32;
      }

      v13 = vorrq_s8(a1[1], a1[2]);
      if (*&vorr_s8(*v13.i8, *&vextq_s8(v13, v13, 8uLL)) | a1->i64[1] | a1->i64[0])
      {
        goto LABEL_32;
      }

      goto LABEL_28;
    }

    if (a1[3].i8[0] == 2)
    {
      v25 = a1[1].i64[1];
      v26 = a1[1].i64[0];
      v23 = a1[2].i64[0];
      v24 = a1[2].i64[1];
      sub_20CF45BD0();
      sub_20D5663C8();
      v11 = v4;
      v3;
      sub_20D5663C8();
      if ((sub_20D5683F8() & 1) == 0 || (sub_20D5683F8() & 1) == 0 || (v6 != v26 || v5 != v25) && (sub_20D568BF8() & 1) == 0)
      {
        goto LABEL_31;
      }

      if (!v8)
      {
        sub_20CF8FAF8(v4, v3, v6, v5, v7, 0, 2);
        if (!v24)
        {
          goto LABEL_28;
        }

        goto LABEL_32;
      }

      if (!v24)
      {
LABEL_31:
        sub_20CF8FAF8(v4, v3, v6, v5, v7, v8, 2);
        goto LABEL_32;
      }

      if (v7 == v23 && v8 == v24)
      {
        sub_20CF8FAF8(v4, v3, v6, v5, v7, v8, 2);
        goto LABEL_28;
      }

      v22 = sub_20D568BF8();
      sub_20CF8FAF8(v4, v3, v6, v5, v7, v8, 2);
      if (v22)
      {
        goto LABEL_28;
      }
    }

LABEL_32:
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_20CF8FEA8(&qword_27C81FB60, type metadata accessor for GalleryPreviewViewModel);
    sub_20D5638F8();
    sub_20CF8FBB8(a1);

    return;
  }

  if (*(v1 + 72))
  {
    if (a1[3].i8[0] != 1)
    {
      goto LABEL_32;
    }

    v12 = v4 == a1->i64[0] && v3 == a1->i64[1];
    if (!v12 && (sub_20D568BF8() & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  else
  {
    if (a1[3].i8[0])
    {
      goto LABEL_32;
    }

    v27 = a1->u8[8];
    sub_20CF45BD0();
    v9 = v4;
    v10 = sub_20D5683F8();
    sub_20CF8FAF8(v4, v3, v6, v5, v7, v8, 0);
    if (v10 & 1) == 0 || ((v27 ^ v3))
    {
      goto LABEL_32;
    }
  }

LABEL_28:
  v14 = *(v1 + 24);
  v15 = *(v1 + 32);
  v16 = *(v1 + 40);
  v17 = *(v1 + 48);
  v18 = *(v1 + 56);
  v19 = *(v1 + 64);
  v20 = a1[1];
  *(v1 + 24) = *a1;
  *(v1 + 40) = v20;
  *(v1 + 56) = a1[2];
  v21 = *(v1 + 72);
  *(v1 + 72) = a1[3].i8[0];

  sub_20CF8FAF8(v14, v15, v16, v17, v18, v19, v21);
}

void sub_20CF8D1C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  v4 = *(a2 + 16);
  *(a1 + 24) = *a2;
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  *(a1 + 40) = v4;
  *(a1 + 56) = *(a2 + 32);
  v9 = *(a1 + 72);
  *(a1 + 72) = *(a2 + 48);
  sub_20CF8FBE8(a2, v10);
  sub_20CF8FAF8(v2, v3, v5, v6, v7, v8, v9);
}

uint64_t sub_20CF8D268()
{
  swift_getKeyPath();
  sub_20CF8FEA8(&qword_27C81FB60, type metadata accessor for GalleryPreviewViewModel);
  sub_20D563908();

  return *(v0 + 80);
}

uint64_t sub_20CF8D308(uint64_t result)
{
  if (*(v1 + 80) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_20CF8FEA8(&qword_27C81FB60, type metadata accessor for GalleryPreviewViewModel);
    sub_20D5638F8();
  }

  return result;
}

double sub_20CF8D414()
{
  swift_getKeyPath();
  sub_20CF8FEA8(&qword_27C81FB60, type metadata accessor for GalleryPreviewViewModel);
  sub_20D563908();

  return *(v0 + 88);
}

__n128 sub_20CF8D4B4@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_20CF8FEA8(&qword_27C81FB60, type metadata accessor for GalleryPreviewViewModel);
  sub_20D563908();

  result = *(v3 + 88);
  *a2 = result;
  return result;
}

uint64_t sub_20CF8D584(double a1, double a2)
{
  if (*(v2 + 88) == a1 && *(v2 + 96) == a2)
  {
    *(v2 + 88) = a1;
    *(v2 + 96) = a2;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_20CF8FEA8(&qword_27C81FB60, type metadata accessor for GalleryPreviewViewModel);
    sub_20D5638F8();
  }

  return result;
}

uint64_t sub_20CF8D6A4(uint64_t result, double a2, double a3)
{
  *(result + 88) = a2;
  *(result + 96) = a3;
  return result;
}

uint64_t sub_20CF8D6AC()
{
  sub_20CF8FAF8(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));
  v1 = OBJC_IVAR____TtC6HomeUI23GalleryPreviewViewModel___observationRegistrar;
  v2 = sub_20D563948();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

unint64_t ControlCenterGalleryPreviewView.Kind.debugDescription.getter()
{
  v1 = *v0;
  if (*(v0 + 48) <= 1u)
  {
    v2 = *(v0 + 8);
    if (!*(v0 + 48))
    {
      v16 = 0;
      sub_20D568858();
      MEMORY[0x20F31CDB0](0xD000000000000032, 0x800000020D5D1610);
      v3 = [v1 description];
      v4 = sub_20D567838();
      v6 = v5;

      MEMORY[0x20F31CDB0](v4, v6);

      MEMORY[0x20F31CDB0](0x72694D736465656ELL, 0xEF3A676E69726F72);
      if (v2)
      {
        v7 = 1702195828;
      }

      else
      {
        v7 = 0x65736C6166;
      }

      if (v2)
      {
        v8 = 0xE400000000000000;
      }

      else
      {
        v8 = 0xE500000000000000;
      }

      MEMORY[0x20F31CDB0](v7, v8);

      return v16;
    }

    sub_20D568858();

    v16 = 0xD00000000000002CLL;
    v14 = v1;
LABEL_13:
    MEMORY[0x20F31CDB0](v14, v2);
    MEMORY[0x20F31CDB0](41, 0xE100000000000000);
    return v16;
  }

  if (*(v0 + 48) == 2)
  {
    v9 = *(v0 + 16);
    v2 = *(v0 + 24);
    v16 = 0;
    sub_20D568858();
    MEMORY[0x20F31CDB0](0xD000000000000039, 0x800000020D5D15A0);
    v10 = [v1 description];
    v11 = sub_20D567838();
    v13 = v12;

    MEMORY[0x20F31CDB0](v11, v13);

    MEMORY[0x20F31CDB0](0x3A656C746974, 0xE600000000000000);
    v14 = v9;
    goto LABEL_13;
  }

  return 0xD00000000000002ALL;
}

uint64_t ControlCenterGalleryPreviewView.Kind.hash(into:)()
{
  if (*(v0 + 48) > 1u)
  {
    if (*(v0 + 48) != 2)
    {
      return MEMORY[0x20F31E200](3);
    }

    v1 = *(v0 + 40);
    MEMORY[0x20F31E200](2);
    sub_20D568408();
    sub_20D568408();
    sub_20D5678C8();
    if (!v1)
    {
      return sub_20D568D68();
    }

    sub_20D568D68();
  }

  else
  {
    if (!*(v0 + 48))
    {
      MEMORY[0x20F31E200](0);
      sub_20D568408();
      return sub_20D568D68();
    }

    MEMORY[0x20F31E200](1);
  }

  return sub_20D5678C8();
}

uint64_t ControlCenterGalleryPreviewView.Kind.hashValue.getter()
{
  sub_20D568D48();
  ControlCenterGalleryPreviewView.Kind.hash(into:)();
  return sub_20D568D98();
}

uint64_t sub_20CF8DB34()
{
  sub_20D568D48();
  ControlCenterGalleryPreviewView.Kind.hash(into:)();
  return sub_20D568D98();
}

uint64_t sub_20CF8DB78()
{
  sub_20D568D48();
  ControlCenterGalleryPreviewView.Kind.hash(into:)();
  return sub_20D568D98();
}

uint64_t sub_20CF8DBB4(uint64_t a1, int8x16_t *a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = a2[2];
  v8 = a2[3].i8[0];
  return _s6HomeUI31ControlCenterGalleryPreviewViewV4KindO2eeoiySbAE_AEtFZ_0(v5, v7) & 1;
}

uint64_t ControlCenterGalleryPreviewView.init(contentMetrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for GalleryPreviewViewModel();
  sub_20CF8FEA8(&qword_27C81FB60, type metadata accessor for GalleryPreviewViewModel);
  result = sub_20D5667D8();
  *a2 = result;
  *(a2 + 8) = v5 & 1;
  *(a2 + 16) = a1;
  return result;
}

uint64_t ControlCenterGalleryPreviewView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_20D566AE8();
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81DC90);
  MEMORY[0x28223BE20](v6);
  v8 = (&v25 - v7);
  v9 = *v1;
  v10 = *(v1 + 8);
  v11 = *(v1 + 16);
  *v8 = sub_20D5675E8();
  v8[1] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81DC98);
  sub_20CF8E0D4(v9, v10, v11, v8 + *(v13 + 44));
  sub_20D567888();
  sub_20CF156D0(&qword_27C81DCA0, &qword_27C81DC90);
  v27 = a1;
  sub_20D567188();

  sub_20CEF928C(v8, &qword_27C81DC90);

  v14 = v9;
  if ((v10 & 1) == 0)
  {
    sub_20D567EB8();
    v15 = sub_20D566EE8();
    sub_20D565868();

    sub_20D566AD8();
    swift_getAtKeyPath();

    (*(v25 + 8))(v5, v26);
    v14 = v28;
  }

  swift_getKeyPath();
  *&v28 = v14;
  sub_20CF8FEA8(&qword_27C81FB60, type metadata accessor for GalleryPreviewViewModel);
  sub_20D563908();

  if ((v10 & 1) == 0)
  {
    sub_20D567EB8();
    v16 = sub_20D566EE8();
    sub_20D565868();

    sub_20D566AD8();
    swift_getAtKeyPath();

    (*(v25 + 8))(v5, v26);
    v9 = v28;
  }

  swift_getKeyPath();
  *&v28 = v9;
  sub_20D563908();

  sub_20D5675E8();
  sub_20D566848();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81DCB0);
  v18 = v27;
  v19 = (v27 + *(v17 + 36));
  v20 = v29;
  *v19 = v28;
  v19[1] = v20;
  v19[2] = v30;
  v21 = sub_20D566958();
  v22 = sub_20D566F08();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81DCB8);
  v24 = v18 + *(result + 36);
  *v24 = v21;
  *(v24 + 8) = v22;
  return result;
}

uint64_t sub_20CF8E0D4@<X0>(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v90 = a3;
  v101 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CCF8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v80 - v7;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81DD20);
  MEMORY[0x28223BE20](v98);
  v100 = &v80 - v9;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81DD28);
  MEMORY[0x28223BE20](v88);
  v89 = (&v80 - v10);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81DD30);
  MEMORY[0x28223BE20](v99);
  v91 = &v80 - v11;
  v12 = sub_20D566738();
  v81 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81DD38);
  MEMORY[0x28223BE20](v15);
  v83 = &v80 - v16;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81DD40);
  v17 = MEMORY[0x28223BE20](v86);
  v82 = &v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v84 = &v80 - v19;
  v20 = sub_20D566AE8();
  v96 = *(v20 - 8);
  v97 = v20;
  MEMORY[0x28223BE20](v20);
  v22 = &v80 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);

  v23 = a1;
  v87 = a2;
  if ((a2 & 1) == 0)
  {
    sub_20D567EB8();
    v24 = sub_20D566EE8();
    sub_20D565868();

    sub_20D566AD8();
    swift_getAtKeyPath();

    (*(v96 + 8))(v22, v97);
    v23 = v114;
  }

  swift_getKeyPath();
  *&v114 = v23;
  v85 = sub_20CF8FEA8(&qword_27C81FB60, type metadata accessor for GalleryPreviewViewModel);
  sub_20D563908();

  v26 = *(v23 + 24);
  v25 = *(v23 + 32);
  v27 = *(v23 + 40);
  v28 = *(v23 + 48);
  v29 = *(v23 + 56);
  v30 = *(v23 + 72);
  v94 = *(v23 + 64);
  v95 = v25;
  *&v93 = v27;
  *(&v93 + 1) = v28;
  v92 = v29;
  sub_20CF8FC20(v26, v25, v27, v28, v29, v94, v30);

  if (v30 > 1)
  {
    if (v30 == 2)
    {
      v50 = v90;

      v51 = v26;
      v52 = v95;
      sub_20D5663C8();
      sub_20D5663C8();
      v53 = a1;
      v54 = v87;
      if ((v87 & 1) == 0)
      {
        sub_20D567EB8();
        v55 = sub_20D566EE8();
        sub_20D565868();

        sub_20D566AD8();
        swift_getAtKeyPath();

        (*(v96 + 8))(v22, v97);
        v53 = v114;
      }

      swift_getKeyPath();
      *&v114 = v53;
      sub_20D563908();

      v56 = *(v53 + 80);

      if ((v54 & 1) == 0)
      {
        sub_20D567EB8();
        v57 = sub_20D566EE8();
        sub_20D565868();

        sub_20D566AD8();
        swift_getAtKeyPath();

        (*(v96 + 8))(v22, v97);
        a1 = v114;
      }

      swift_getKeyPath();
      *&v114 = a1;
      sub_20D563908();

      v58 = *(a1 + 16);

      v59 = type metadata accessor for CircleIconView();
      v60 = objc_allocWithZone(v59);
      v61 = OBJC_IVAR____TtC6HomeUIP33_D96FE4879830C8E6988A7635203F311B14CircleIconView_iconView;
      *&v60[v61] = [objc_allocWithZone(MEMORY[0x277D180D0]) initWithFrame_];
      if (v56 != 2 || (v62 = [objc_opt_self() _tertiaryView]) == 0)
      {
        v62 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
      }

      *&v60[OBJC_IVAR____TtC6HomeUIP33_D96FE4879830C8E6988A7635203F311B14CircleIconView_backgroundView] = v62;
      v102.receiver = v60;
      v102.super_class = v59;
      v63 = objc_msgSendSuper2(&v102, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
      [v63 setClipsToBounds_];
      v64 = OBJC_IVAR____TtC6HomeUIP33_D96FE4879830C8E6988A7635203F311B14CircleIconView_backgroundView;
      [*&v63[OBJC_IVAR____TtC6HomeUIP33_D96FE4879830C8E6988A7635203F311B14CircleIconView_backgroundView] setAutoresizingMask_];
      v65 = *&v63[v64];
      [v63 bounds];
      [v65 setFrame_];

      [v63 insertSubview:*&v63[v64] atIndex:0];
      v66 = OBJC_IVAR____TtC6HomeUIP33_D96FE4879830C8E6988A7635203F311B14CircleIconView_iconView;
      [*&v63[OBJC_IVAR____TtC6HomeUIP33_D96FE4879830C8E6988A7635203F311B14CircleIconView_iconView] setAutoresizingMask_];
      [v63 addSubview_];

      *&v103[0] = v51;
      *(&v103[0] + 1) = v52;
      v103[1] = v93;
      *&v104 = v92;
      *(&v104 + 1) = v94;
      *&v105 = v90;
      *(&v105 + 1) = v56;
      *&v106 = v58;
      *(&v106 + 1) = v63;
      v110 = v104;
      v111 = v105;
      v112 = v106;
      v108 = v103[0];
      v109 = v93;
      v107 = 0;
      v113 = 0;
      sub_20CF900EC(v103, &v114);
      sub_20CF8FA50();
      sub_20D566D18();
      v67 = v117;
      v68 = v100;
      *(v100 + 32) = v116;
      *(v68 + 48) = v67;
      *(v68 + 64) = v118;
      *(v68 + 80) = v119;
      v69 = v115;
      *v68 = v114;
      *(v68 + 16) = v69;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81DD48);
      sub_20CF8FCD4();
      sub_20CF90060();
      sub_20D566D18();

      return sub_20CF90124(v103);
    }

    else
    {
      LOBYTE(v103[0]) = 1;
      v113 = 1;
      sub_20CF8FA50();
      sub_20D566D18();
      v77 = v117;
      v78 = v100;
      *(v100 + 32) = v116;
      *(v78 + 48) = v77;
      *(v78 + 64) = v118;
      *(v78 + 80) = v119;
      v79 = v115;
      *v78 = v114;
      *(v78 + 16) = v79;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81DD48);
      sub_20CF8FCD4();
      sub_20CF90060();
      return sub_20D566D18();
    }
  }

  else if (v30)
  {
    v70 = sub_20D5673C8();
    v71 = sub_20D566D58();
    sub_20D566FF8();
    v72 = sub_20D566FC8();
    (*(*(v72 - 8) + 56))(v8, 1, 1, v72);
    v73 = sub_20D567008();
    sub_20CEF928C(v8, &qword_27C81CCF8);
    KeyPath = swift_getKeyPath();
    v75 = v89;
    *v89 = v70;
    *(v75 + 2) = v71;
    v75[2] = KeyPath;
    v75[3] = v73;
    swift_storeEnumTagMultiPayload();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81DD78);
    sub_20CF8FD60();
    sub_20CF8FEF0();
    v76 = v91;
    sub_20D566D18();
    sub_20CEF9178(v76, v100, &qword_27C81DD30);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81DD48);
    sub_20CF8FCD4();
    sub_20CF90060();
    sub_20D566D18();

    return sub_20CEF928C(v76, &qword_27C81DD30);
  }

  else
  {
    v31 = v26;
    sub_20D566728();
    if (v95)
    {
      v32 = -1.0;
    }

    else
    {
      v32 = 1.0;
    }

    sub_20D567628();
    v34 = v33;
    v36 = v35;
    v37 = v83;
    (*(v81 + 32))(v83, v14, v12);
    v38 = v37 + *(v15 + 36);
    *v38 = v32;
    *(v38 + 8) = 0x3FF0000000000000;
    *(v38 + 16) = v34;
    *(v38 + 24) = v36;

    v39 = a1;
    v40 = v87;
    if ((v87 & 1) == 0)
    {
      sub_20D567EB8();
      v41 = sub_20D566EE8();
      sub_20D565868();

      sub_20D566AD8();
      swift_getAtKeyPath();

      (*(v96 + 8))(v22, v97);
      v39 = v114;
    }

    swift_getKeyPath();
    *&v114 = v39;
    sub_20D563908();

    if ((v40 & 1) == 0)
    {
      sub_20D567EB8();
      v42 = sub_20D566EE8();
      sub_20D565868();

      sub_20D566AD8();
      swift_getAtKeyPath();

      (*(v96 + 8))(v22, v97);
      a1 = v114;
    }

    swift_getKeyPath();
    *&v114 = a1;
    sub_20D563908();

    sub_20D5675E8();
    sub_20D566848();
    v43 = v82;
    sub_20CF15584(v37, v82, &qword_27C81DD38);
    v44 = (v43 + *(v86 + 36));
    v45 = v115;
    *v44 = v114;
    v44[1] = v45;
    v44[2] = v116;
    v46 = v43;
    v47 = v84;
    sub_20CF15584(v46, v84, &qword_27C81DD40);
    sub_20CEF9178(v47, v89, &qword_27C81DD40);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81DD78);
    sub_20CF8FD60();
    sub_20CF8FEF0();
    v48 = v91;
    sub_20D566D18();
    sub_20CEF9178(v48, v100, &qword_27C81DD30);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81DD48);
    sub_20CF8FCD4();
    sub_20CF90060();
    sub_20D566D18();
    sub_20CF8FAF8(v26, v95, v93, *(&v93 + 1), v92, v94, 0);
    sub_20CEF928C(v48, &qword_27C81DD30);
    return sub_20CEF928C(v47, &qword_27C81DD40);
  }
}

uint64_t _s6HomeUI31ControlCenterGalleryPreviewViewV4KindO2eeoiySbAE_AEtFZ_0(uint64_t a1, int8x16_t *a2)
{
  v2 = *(a1 + 8);
  if (*(a1 + 48) > 1u)
  {
    if (*(a1 + 48) == 2)
    {
      if (a2[3].i8[0] == 2)
      {
        v6 = *(a1 + 16);
        v7 = *(a1 + 24);
        v8 = a2[1].i64[0];
        v9 = a2[1].i64[1];
        v12 = a2[2].i64[0];
        v13 = *(a1 + 32);
        v14 = a2[2].i64[1];
        v15 = *(a1 + 40);
        sub_20CF45BD0();
        if (sub_20D5683F8() & 1) != 0 && (sub_20D5683F8() & 1) != 0 && (v6 == v8 && v7 == v9 || (sub_20D568BF8()))
        {
          if (v15)
          {
            if (v14 && (v13 == v12 && v15 == v14 || (sub_20D568BF8() & 1) != 0))
            {
              goto LABEL_31;
            }
          }

          else if (!v14)
          {
LABEL_31:
            v5 = 1;
            return v5 & 1;
          }
        }
      }
    }

    else if (a2[3].i8[0] == 3)
    {
      v11 = vorrq_s8(a2[1], a2[2]);
      if (!(*&vorr_s8(*v11.i8, *&vextq_s8(v11, v11, 8uLL)) | a2->i64[1] | a2->i64[0]))
      {
        goto LABEL_31;
      }
    }

LABEL_28:
    v5 = 0;
    return v5 & 1;
  }

  if (!*(a1 + 48))
  {
    if (!a2[3].i8[0])
    {
      v3 = a2->i8[8];
      sub_20CF45BD0();
      v4 = sub_20D5683F8();
      v5 = v2 ^ v3 ^ 1;
      if ((v4 & 1) == 0)
      {
        v5 = 0;
      }

      return v5 & 1;
    }

    goto LABEL_28;
  }

  if (a2[3].i8[0] != 1)
  {
    goto LABEL_28;
  }

  if (a2->i64[0] == *a1 && (v2 | ((*(a1 + 9) | ((*(a1 + 13) | (*(a1 + 15) << 16)) << 32)) << 8)) == a2->i64[1])
  {
    goto LABEL_31;
  }

  return sub_20D568BF8();
}

uint64_t _s6HomeUI8TemplateV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  sub_20CF45BD0();
  if (sub_20D5683F8() & 1) != 0 && (sub_20D5683F8() & 1) != 0 && (a1[2] == a2[2] && a1[3] == a2[3] || (sub_20D568BF8()))
  {
    v4 = a1[5];
    v5 = a2[5];
    if (v4)
    {
      if (v5 && (a1[4] == a2[4] && v4 == v5 || (sub_20D568BF8() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v5)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t type metadata accessor for GalleryPreviewViewModel()
{
  result = qword_27C81DCE0;
  if (!qword_27C81DCE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_20CF8F360()
{
  result = qword_27C81DCC0;
  if (!qword_27C81DCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81DCC0);
  }

  return result;
}

unint64_t sub_20CF8F3B8()
{
  result = qword_27C81DCC8;
  if (!qword_27C81DCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81DCC8);
  }

  return result;
}

uint64_t sub_20CF8F44C(uint64_t *a1, int a2)
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

uint64_t sub_20CF8F494(uint64_t result, int a2, int a3)
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

uint64_t sub_20CF8F4F8()
{
  result = sub_20D563948();
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

uint64_t sub_20CF8F5B8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_20CF8F614(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_6HomeUI31ControlCenterGalleryPreviewViewV4KindO(uint64_t a1)
{
  if ((*(a1 + 48) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 48) & 3;
  }
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_20CF8F6B0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 49))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 48);
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

uint64_t sub_20CF8F6F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_20CF8F74C(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 48) = a2;
  return result;
}

unint64_t sub_20CF8F784()
{
  result = qword_27C81DCF0;
  if (!qword_27C81DCF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C81DCB8);
    sub_20CF8F810();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81DCF0);
  }

  return result;
}

unint64_t sub_20CF8F810()
{
  result = qword_27C81DCF8;
  if (!qword_27C81DCF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C81DCB0);
    sub_20CF8F89C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81DCF8);
  }

  return result;
}

unint64_t sub_20CF8F89C()
{
  result = qword_27C81DD00;
  if (!qword_27C81DD00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C81DD08);
    sub_20CF156D0(&qword_27C81DCA0, &qword_27C81DC90);
    sub_20CF8FEA8(&qword_27C820400, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81DD00);
  }

  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_20CF8F9A0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_20CF8F9E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_20CF8FA50()
{
  result = qword_27C81DD10;
  if (!qword_27C81DD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81DD10);
  }

  return result;
}

unint64_t sub_20CF8FAA4()
{
  result = qword_27C81DD18;
  if (!qword_27C81DD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81DD18);
  }

  return result;
}

void sub_20CF8FAF8(void *a1, id a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  switch(a7)
  {
    case 2:

      goto LABEL_9;
    case 1:

LABEL_9:

      return;
    case 0:

      break;
  }
}

double sub_20CF8FB8C()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 16) = result;
  return result;
}

id sub_20CF8FC20(id result, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  switch(a7)
  {
    case 2:
      v11 = result;
      sub_20D5663C8();
      v9 = v11;
      v10 = a2;

      return sub_20D5663C8();
    case 1:

      return sub_20D5663C8();
    case 0:

      return result;
  }

  return result;
}

__n128 sub_20CF8FCB8()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 88) = result;
  return result;
}

unint64_t sub_20CF8FCD4()
{
  result = qword_27C81DD50;
  if (!qword_27C81DD50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C81DD30);
    sub_20CF8FD60();
    sub_20CF8FEF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81DD50);
  }

  return result;
}

unint64_t sub_20CF8FD60()
{
  result = qword_27C81DD58;
  if (!qword_27C81DD58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C81DD40);
    sub_20CF8FDEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81DD58);
  }

  return result;
}

unint64_t sub_20CF8FDEC()
{
  result = qword_27C81DD60;
  if (!qword_27C81DD60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C81DD38);
    sub_20CF8FEA8(&qword_27C81DD68, MEMORY[0x277D18070]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81DD60);
  }

  return result;
}

uint64_t sub_20CF8FEA8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_20CF8FEF0()
{
  result = qword_27C81DD70;
  if (!qword_27C81DD70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C81DD78);
    sub_20CF8FFA8();
    sub_20CF156D0(&qword_27C81CCC8, &qword_27C8203B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81DD70);
  }

  return result;
}

unint64_t sub_20CF8FFA8()
{
  result = qword_27C81DD80;
  if (!qword_27C81DD80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C81DD88);
    sub_20CF156D0(&qword_27C81CCB8, &qword_27C81CCC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81DD80);
  }

  return result;
}

unint64_t sub_20CF90060()
{
  result = qword_27C81DD90;
  if (!qword_27C81DD90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C81DD48);
    sub_20CF8FA50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81DD90);
  }

  return result;
}

uint64_t sub_20CF90184()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81D090);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v9 - v1;
  v3 = sub_20D563BA8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D563AE8();
  (*(v4 + 104))(v6, *MEMORY[0x277D16FF0], v3);
  sub_20D563B78();
  v7 = sub_20D563B98();
  (*(*(v7 - 8) + 56))(v2, 0, 1, v7);
  sub_20D563B48();
  swift_allocObject();
  sub_20D563B38();
  MEMORY[0x20F318F80]();
}

uint64_t sub_20CF906FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (a3)
  {
    v7 = sub_20D567838();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  a5(v7, v9, a4);
}

uint64_t sub_20CF907E4(unsigned int *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81D090);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = sub_20D563BA8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D563AE8();
  (*(v6 + 104))(v8, *a1, v5);
  v9 = sub_20D563B98();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  sub_20D563B48();
  swift_allocObject();
  sub_20D563B38();
  MEMORY[0x20F318F80]();
}

uint64_t sub_20CF90988(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81D090);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = sub_20D563BA8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D563AE8();
  (*(v8 + 104))(v10, *a3, v7);
  v11 = sub_20D563B98();
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  sub_20D563B48();
  swift_allocObject();
  sub_20D563B38();
  MEMORY[0x20F318F80]();
}

id HomeEnergyAnalyticsHelper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HomeEnergyAnalyticsHelper.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HomeEnergyAnalyticsHelper();
  return objc_msgSendSuper2(&v2, sel_init);
}