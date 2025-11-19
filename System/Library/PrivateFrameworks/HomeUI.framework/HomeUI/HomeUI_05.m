char *sub_20CF39400(void *a1)
{
  v1 = [objc_allocWithZone(MEMORY[0x277D148D0]) init];
  v20 = type metadata accessor for AccessoryRepresentableItemModule.Context();
  v2 = objc_allocWithZone(v20);
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
  *&v2[v3] = 2;
  swift_beginAccess();
  *&v2[v4] = 0;
  swift_unknownObjectRelease();
  swift_beginAccess();
  *&v2[v5] = 1;
  swift_beginAccess();
  v2[v6] = 1;
  swift_beginAccess();
  v2[v7] = 0;
  swift_beginAccess();
  *&v2[v8] = v1;
  v11 = v1;
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
  v22.receiver = v2;
  v22.super_class = v20;
  v14 = objc_msgSendSuper2(&v22, sel_init);

  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  v16 = &v14[OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_filter];
  swift_beginAccess();
  v17 = *v16;
  *v16 = sub_20CF397CC;
  v16[1] = v15;
  v18 = a1;
  sub_20CEC8164(v17);
  return v14;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_3Tm()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20CF39784(unint64_t *a1, void (*a2)(uint64_t))
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

id AccessoryListModuleController.__allocating_init(module:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___HUAccessoryListModuleController_cellVerticalContentInset] = 0x4028000000000000;
  *&v3[OBJC_IVAR___HUAccessoryListModuleController_collectionLayoutManager] = [objc_allocWithZone(type metadata accessor for CollectionLayoutManager()) init];
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_initWithModule_, a1);

  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return v4;
}

{
  v3 = [objc_allocWithZone(v1) initWithModule_];

  return v3;
}

id AccessoryListModuleController.init(module:)(void *a1)
{
  *&v1[OBJC_IVAR___HUAccessoryListModuleController_cellVerticalContentInset] = 0x4028000000000000;
  *&v1[OBJC_IVAR___HUAccessoryListModuleController_collectionLayoutManager] = [objc_allocWithZone(type metadata accessor for CollectionLayoutManager()) init];
  v5.receiver = v1;
  v5.super_class = type metadata accessor for AccessoryListModuleController();
  v3 = objc_msgSendSuper2(&v5, sel_initWithModule_, a1);

  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return v3;
}

uint64_t sub_20CF399E8(void *a1, void *a2)
{
  v5 = sub_20D566258();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D5661B8();
  v43 = v2;
  sub_20CF39F50(a2, v2);
  sub_20D566248();
  v9 = [a2 latestResults];
  if (!v9)
  {
    goto LABEL_8;
  }

  v10 = v9;
  v11 = sub_20D567758();

  v12 = sub_20D567838();
  if (!*(v11 + 16))
  {

    goto LABEL_7;
  }

  v14 = sub_20CEED668(v12, v13);
  v16 = v15;

  if ((v16 & 1) == 0)
  {
LABEL_7:

    goto LABEL_8;
  }

  sub_20CED43FC(*(v11 + 56) + 32 * v14, &v50);

  if (swift_dynamicCast())
  {
    sub_20D5661C8();
  }

LABEL_8:
  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (v17)
  {
    v18 = v17;
    v41 = a2;
    v42 = v5;
    v40 = a1;
    v19 = [v43 module];
    type metadata accessor for AccessoryRepresentableItemModule();
    v20 = swift_dynamicCastClassUnconditional();
    v21 = OBJC_IVAR___HUAccessoryRepresentableItemModule_selectionController;
    swift_beginAccess();
    v22 = *(v20 + v21);
    swift_unknownObjectRetain();

    if (v22)
    {
      swift_unknownObjectRelease();
    }

    [v18 setHidesCheckmark_];
    v23 = [v43 module];
    v24 = swift_dynamicCastClassUnconditional();
    v25 = OBJC_IVAR___HUAccessoryRepresentableItemModule_selectionController;
    swift_beginAccess();
    v26 = *(v24 + v25);
    swift_unknownObjectRetain();

    if (v26)
    {
      v44 = &unk_2825BD1E0;
      v27 = swift_dynamicCastObjCProtocolConditional();
      a2 = v41;
      v5 = v42;
      if (v27)
      {
        v28 = v27;
        sub_20D565F48();
        if (swift_dynamicCastClass())
        {
          v39 = a2;
          sub_20D565F38();
          swift_getObjectType();
          v40 = v40;
          [v18 setEnableTappableIcon_];
          swift_unknownObjectRetain();
          [v18 setDelegate_];

          swift_unknownObjectRelease();
          swift_unknownObjectRelease_n();
          v29 = v40;
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
    }

    else
    {

      a2 = v41;
      v5 = v42;
    }
  }

  v52 = v5;
  v53 = MEMORY[0x277D74C30];
  v30 = __swift_allocate_boxed_opaque_existential_1(&v50);
  (*(v6 + 16))(v30, v8, v5);
  MEMORY[0x20F31D5C0](&v50);
  v31 = sub_20D566238();
  if (v32)
  {
    v50 = v31;
    v51 = v32;
    v47 = 32;
    v48 = 0xE100000000000000;
    v45 = 0;
    v46 = 0xE000000000000000;
    sub_20CEF44D8();
    v33 = sub_20D5685C8();
    v35 = v34;

    v50 = 0xD00000000000001ALL;
    v51 = 0x800000020D5CF390;
    MEMORY[0x20F31CDB0](v33, v35);

    v36 = sub_20D5677F8();

    [a1 setAccessibilityIdentifier_];
  }

  v37 = type metadata accessor for AccessoryListModuleController();
  v49.receiver = v43;
  v49.super_class = v37;
  objc_msgSendSuper2(&v49, sel_configureCell_forItem_, a1, a2);
  return (*(v6 + 8))(v8, v5);
}

void *sub_20CF39F50(void *a1, void *a2)
{
  v4 = [a1 latestResults];
  if (!v4)
  {
LABEL_10:
    v20 = [a1 latestResults];
    if (v20)
    {
      v21 = v20;
      v22 = sub_20D567758();

      v23 = sub_20D567838();
      if (*(v22 + 16))
      {
        v25 = sub_20CEED668(v23, v24);
        v27 = v26;

        if (v27)
        {
          sub_20CED43FC(*(v22 + 56) + 32 * v25, v29);

          if (swift_dynamicCast())
          {
            return v28;
          }

          else
          {
            return 0;
          }
        }
      }

      else
      {
      }
    }

    return 0;
  }

  v5 = v4;
  v6 = sub_20D567758();

  v7 = sub_20D567838();
  if (!*(v6 + 16))
  {

    goto LABEL_9;
  }

  v9 = sub_20CEED668(v7, v8);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
LABEL_9:

    goto LABEL_10;
  }

  sub_20CED43FC(*(v6 + 56) + 32 * v9, v29);

  sub_20CECF940(0, &qword_27C81F4B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_10;
  }

  v12 = [a2 module];
  type metadata accessor for AccessoryRepresentableItemModule();
  v13 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR___HUAccessoryRepresentableItemModule_context);

  v14 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_sectionGroupingType;
  swift_beginAccess();
  v15 = *&v13[v14];

  v16 = &selRef_serviceName;
  if (v15 != 1)
  {
    v16 = &selRef_composedString;
  }

  v17 = [v28 *v16];
  v18 = sub_20D567838();

  return v18;
}

BOOL sub_20CF3A4A4()
{
  v1 = [v0 module];
  type metadata accessor for AccessoryRepresentableItemModule();
  v2 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR___HUAccessoryRepresentableItemModule_context);

  v3 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_sectionGroupingType;
  swift_beginAccess();
  v4 = *&v2[v3];

  return v4 != 0;
}

uint64_t sub_20CF3A5F8()
{
  v1 = [v0 module];
  type metadata accessor for AccessoryRepresentableItemModule();
  v2 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR___HUAccessoryRepresentableItemModule_context);

  v3 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_showFooter;
  swift_beginAccess();
  v4 = v2[v3];

  return v4;
}

id AccessoryListModuleController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccessoryListModuleController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id SelectableActionSetItemModule.__allocating_init(home:itemUpdater:)(void *a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_20CF3B8B4(a1, a2);

  swift_unknownObjectRelease();
  return v6;
}

uint64_t sub_20CF3A95C(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (*a2 + OBJC_IVAR___HUSelectableActionSetItemModule_selectionController);
  swift_beginAccess();
  *v4 = v2;
  v4[1] = v3;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_20CF3AA18(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___HUSelectableActionSetItemModule_selectionController);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  return swift_unknownObjectRelease();
}

uint64_t sub_20CF3AB64()
{
  v1 = (v0 + OBJC_IVAR___HUSelectableActionSetItemModule_sceneSectionHeaderTitle);
  swift_beginAccess();
  v2 = *v1;
  sub_20D5663C8();
  return v2;
}

uint64_t sub_20CF3AC38(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___HUSelectableActionSetItemModule_sceneSectionHeaderTitle);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_20CF3AC98(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR___HUSelectableActionSetItemModule_sceneSectionHeaderTitle);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
  sub_20D5663C8();
}

uint64_t sub_20CF3AD64()
{
  v16.receiver = v0;
  v16.super_class = type metadata accessor for SelectableActionSetItemModule();
  v1 = objc_msgSendSuper2(&v16, sel_buildItemProviders);
  if (v1)
  {
    v2 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF70);
    sub_20CEF9114();
    v3 = sub_20D567D08();
  }

  else
  {
    v3 = 0;
  }

  v4 = OBJC_IVAR___HUActionSetItemModule_actionSetItemProvider;
  swift_beginAccess();
  v5 = *&v0[v4];
  if (v5)
  {
    v6 = v5;

    v7 = swift_allocObject();
    *(v7 + 16) = v0;
    v8 = objc_allocWithZone(MEMORY[0x277D14C38]);
    aBlock[4] = sub_20CF3BA14;
    aBlock[5] = v7;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_20CF3B6B0;
    aBlock[3] = &block_descriptor_5;
    v9 = _Block_copy(aBlock);
    v10 = v0;
    v11 = [v8 initWithSourceProvider:v6 transformationBlock:v9];
    _Block_release(v9);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20D5BA040;
    *(inited + 32) = [v11 asGeneric];
    sub_20CEF7FC4(inited);
    v3 = v13;
  }

  return v3;
}

uint64_t sub_20CF3AF54(void *a1, void *a2)
{
  sub_20CF3BCD0();
  v4 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81D230));
  v5 = a2;
  v6 = a1;
  return sub_20D565D28();
}

unint64_t sub_20CF3B044()
{
  sub_20CECF940(0, &qword_281120AC0);
  sub_20CEF99B4();
  v1 = sub_20D567CD8();
  v28.receiver = v0;
  v28.super_class = type metadata accessor for SelectableActionSetItemModule();
  v2 = objc_msgSendSuper2(&v28, sel_buildSectionsWithDisplayedItems_, v1);

  sub_20CECF940(0, &unk_28111FFD0);
  v3 = sub_20D567A78();

  v4 = &v0[OBJC_IVAR___HUSelectableActionSetItemModule_sceneSectionHeaderTitle];
  swift_beginAccess();
  if (*(v4 + 1))
  {
    v26 = *v4;
    if (v3 >> 62)
    {
      goto LABEL_44;
    }

    v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      while (1)
      {
        sub_20D5663C8();
        v6 = 0;
        while ((v3 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x20F31DD20](v6, v3);
LABEL_10:
          v8 = v7;
          v9 = [v7 identifier];
          v10 = sub_20D567838();
          v12 = v11;

          if (v10 == 0xD00000000000001DLL && 0x800000020D5CF460 == v12)
          {

LABEL_17:
            [v8 mutableCopy];
            sub_20D568628();
            swift_unknownObjectRelease();
            sub_20CECF940(0, &qword_27C81D220);
            swift_dynamicCast();
            v15 = sub_20D5677F8();
            [v27 setHeaderTitle_];

            if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
            {
              v3 = sub_20CF3B850(v3);
            }

            v16 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v6 >= v16)
            {
              goto LABEL_42;
            }

            v17 = v16 - 1;
            v18 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20);
            memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 40), 8 * (v16 - 1 - v6));
            *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v17;

            [v27 copy];
            sub_20D568628();
            swift_unknownObjectRelease();
            swift_dynamicCast();
            v19 = v3 >> 62;
            if (v3 >> 62)
            {
              v23 = sub_20D568768();
              if (v23 < v6)
              {
                goto LABEL_46;
              }

              v23 = sub_20D568768();
              if (v23 < v6)
              {
                goto LABEL_47;
              }

              v24 = sub_20D568768();
              v21 = v24 + 1;
              if (__OFADD__(v24, 1))
              {
                goto LABEL_38;
              }
            }

            else
            {
              v20 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v20 < v6)
              {
                goto LABEL_43;
              }

              v21 = v20 + 1;
              if (__OFADD__(v20, 1))
              {
LABEL_38:
                __break(1u);
LABEL_39:

                return v3;
              }
            }

            isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
            v29 = v3;
            if (isUniquelyReferenced_nonNull_bridgeObject)
            {
              if (!v19)
              {
                if (v21 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
LABEL_31:
                  v3 = sub_20D568888();
                  v29 = v3;
                }

                sub_20CF3BA34(v6, v6, 1, v27);

                goto LABEL_6;
              }
            }

            else if (!v19)
            {
              goto LABEL_31;
            }

            sub_20D568768();
            goto LABEL_31;
          }

          v14 = sub_20D568BF8();

          if (v14)
          {
            goto LABEL_17;
          }

LABEL_6:
          if (++v6 == v5)
          {
            goto LABEL_39;
          }
        }

        if (v6 < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        v23 = sub_20D568768();
        if (v23 < 0)
        {
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
        }

        v5 = v23;
        if (!v23)
        {
          return v3;
        }
      }

      v7 = *(v3 + 8 * v6 + 32);
      goto LABEL_10;
    }
  }

  return v3;
}

id SelectableActionSetItemModule.init(home:itemUpdater:)(void *a1, uint64_t a2)
{
  v3 = sub_20CF3B8B4(a1, a2);

  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_20CF3B5E8()
{
  swift_unknownObjectRelease();
}

id SelectableActionSetItemModule.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SelectableActionSetItemModule();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_20CF3B6B0(uint64_t a1, void *a2)
{
  sub_20CECF940(0, &qword_281120AC0);
  v4 = *(a1 + 32);

  v5 = a2;
  v6 = v4();

  return v6;
}

uint64_t sub_20CF3B734(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_20D568768();
LABEL_9:
  result = sub_20D568888();
  *v1 = result;
  return result;
}

uint64_t sub_20CF3B850(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_20D568768();
  }

  return sub_20D568888();
}

id sub_20CF3B8B4(void *a1, uint64_t a2)
{
  v5 = &v2[OBJC_IVAR___HUSelectableActionSetItemModule_selectionController];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = &v2[OBJC_IVAR___HUSelectableActionSetItemModule_sceneSectionHeaderTitle];
  v7 = sub_20D5677F8();
  v8 = HULocalizedString(v7);

  v9 = sub_20D567838();
  v11 = v10;

  *v6 = v9;
  v6[1] = v11;
  *&v2[OBJC_IVAR___HUActionSetItemModule_actionSetItemStyle] = 0;
  v12 = &v2[OBJC_IVAR___HUActionSetItemModule_filter];
  *v12 = 0;
  *(v12 + 1) = 0;
  v13 = &v2[OBJC_IVAR___HUActionSetItemModule_sortBlock];
  *v13 = sub_20D0D7EEC;
  v13[1] = 0;
  *&v2[OBJC_IVAR___HUActionSetItemModule_actionSetItemProvider] = 0;
  *&v2[OBJC_IVAR___HUActionSetItemModule_home] = a1;
  v16.receiver = v2;
  v16.super_class = type metadata accessor for ActionSetItemModule();
  v14 = a1;
  return objc_msgSendSuper2(&v16, sel_initWithItemUpdater_, a2);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

char *sub_20CF3BA34(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  sub_20CECF940(0, &unk_28111FFD0);
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = &result[-v7];
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = sub_20D568768();
    v15 = &result[-v7];
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = sub_20D568768();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = &result[v11];
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;
    result = v8;
    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

unint64_t sub_20CF3BCD0()
{
  result = qword_27C81D228;
  if (!qword_27C81D228)
  {
    type metadata accessor for SelectableActionSetItemModule();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81D228);
  }

  return result;
}

uint64_t sub_20CF3BE28()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_20CF3BE88(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR___HUNearbyAccessoriesViewController_presentationDelegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_20CED1190;
}

uint64_t sub_20CF3BF70(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR___HUNearbyAccessoriesViewController_nearbyAccessoriesDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_20CF3BFDC(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR___HUNearbyAccessoriesViewController_nearbyAccessoriesDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_20CEC8420;
}

id sub_20CF3C07C()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  v1 = sub_20D5677F8();
  v2 = HULocalizedString(v1);

  if (!v2)
  {
    sub_20D567838();
    v2 = sub_20D5677F8();
  }

  [v0 setText_];

  v3 = [objc_opt_self() systemGrayColor];
  [v0 setTextColor_];

  [v0 setNumberOfLines_];
  return v0;
}

void sub_20CF3C18C(void *a1)
{
  v2 = sub_20D5677F8();
  v3 = HULocalizedString(v2);

  sub_20D567838();
  v4 = [a1 view];
  if (v4)
  {
    v5 = v4;
    [v4 frame];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    v14 = objc_allocWithZone(MEMORY[0x277D75E78]);
    v15 = sub_20D5677F8();
    v16 = [v14 initWithFrame:v15 title:0 style:0 includeBackdrop:{v7, v9, v11, v13}];

    if (v16)
    {

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id NearbyAccessoriesViewController.__allocating_init(sourceItem:supportsQuickControls:)(void *a1, char a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_20CF3E378(a1, a2);

  return v6;
}

id NearbyAccessoriesViewController.init(sourceItem:supportsQuickControls:)(void *a1, char a2)
{
  v3 = sub_20CF3E378(a1, a2);

  return v3;
}

void sub_20CF3C458()
{
  v28.receiver = v0;
  v28.super_class = type metadata accessor for NearbyAccessoriesViewController();
  objc_msgSendSuper2(&v28, sel_viewDidLoad);
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_16;
  }

  v2 = v1;
  v3 = OBJC_IVAR___HUNearbyAccessoriesViewController__userInfoDescription;
  if (!*&v0[OBJC_IVAR___HUNearbyAccessoriesViewController__userInfoDescription])
  {
    v4 = sub_20CF3C07C();
    v5 = *&v0[v3];
    *&v0[v3] = v4;

    if (!*&v0[v3])
    {
      goto LABEL_17;
    }
  }

  [v2 addSubview_];

  v6 = [v0 collectionView];
  if (!v6)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    return;
  }

  v7 = v6;
  v8 = [objc_opt_self() systemGroupedBackgroundColor];
  [v7 setBackgroundColor_];

  v9 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v10 = sub_20D5677F8();
  v11 = HULocalizedString(v10);

  if (!v11)
  {
    sub_20D567838();
    v11 = sub_20D5677F8();
  }

  [v9 setText_];

  v12 = [objc_opt_self() boldSystemFontOfSize_];
  [v9 setFont_];

  v13 = [v0 navigationItem];
  [v13 setTitleView_];

  v14 = [v0 navigationItem];
  v15 = objc_allocWithZone(MEMORY[0x277D751E0]);
  v16 = v0;
  v17 = [v15 initWithBarButtonSystemItem:0 target:v16 action:sel_doneButtonPressedWithSender_];
  [v14 setRightBarButtonItem_];

  v18 = [*&v16[OBJC_IVAR___HUNearbyAccessoriesViewController_currentAccessory] home];
  v19 = v16;
  if (v18)
  {
    v20 = v18;
    [v18 hf_currentUserIsAdministrator];

    v21 = [v16 navigationItem];
    v19 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:2 target:v16 action:sel_displayEditorWithSender_];

    [v21 setLeftBarButtonItem_];
  }

  if (v16[OBJC_IVAR___HUNearbyAccessoriesViewController_supportsQuickControls] == 1)
  {
    v22 = [v16 itemManager];
    v23 = [v22 allDisplayedItems];

    sub_20CECF940(0, &qword_281120AC0);
    sub_20CEF7F74(&qword_281120AB0, &qword_281120AC0);
    v24 = sub_20D567D08();

    if ((v24 & 0xC000000000000001) != 0)
    {
      v25 = sub_20D568768();
    }

    else
    {
      v25 = *(v24 + 16);
    }

    v26 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v27 = [objc_opt_self() sendAssociatedAccessoriesDidLaunchEventWithCount_];
  }
}

id sub_20CF3C944()
{
  v1 = v0;
  v2 = OBJC_IVAR___HUNearbyAccessoriesViewController_userInfoConstraints;
  if (*&v0[OBJC_IVAR___HUNearbyAccessoriesViewController_userInfoConstraints])
  {
LABEL_18:
    v28.receiver = v1;
    v28.super_class = type metadata accessor for NearbyAccessoriesViewController();
    return objc_msgSendSuper2(&v28, sel_updateViewConstraints);
  }

  v29 = MEMORY[0x277D84F90];
  v3 = OBJC_IVAR___HUNearbyAccessoriesViewController__userInfoDescription;
  result = *&v0[OBJC_IVAR___HUNearbyAccessoriesViewController__userInfoDescription];
  if (!result)
  {
    v5 = sub_20CF3C07C();
    v6 = *&v0[v3];
    *&v0[v3] = v5;

    result = *&v0[v3];
    if (!result)
    {
      goto LABEL_22;
    }
  }

  v7 = [result leadingAnchor];
  result = [v1 view];
  if (result)
  {
    v8 = result;
    v9 = [result layoutMarginsGuide];

    v10 = [v9 leadingAnchor];
    v11 = [v7 constraintEqualToAnchor_];

    MEMORY[0x20F31CEE0]();
    if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_20D567AB8();
    }

    sub_20D567B08();
    result = *&v1[v3];
    if (!result)
    {
      v12 = sub_20CF3C07C();
      v13 = *&v1[v3];
      *&v1[v3] = v12;

      result = *&v1[v3];
      if (!result)
      {
        goto LABEL_23;
      }
    }

    v14 = [result trailingAnchor];
    result = [v1 view];
    if (result)
    {
      v15 = result;
      v16 = [result layoutMarginsGuide];

      v17 = [v16 trailingAnchor];
      v18 = [v14 constraintEqualToAnchor_];

      MEMORY[0x20F31CEE0]();
      if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_20D567AB8();
      }

      sub_20D567B08();
      result = *&v1[v3];
      if (!result)
      {
        v19 = sub_20CF3C07C();
        v20 = *&v1[v3];
        *&v1[v3] = v19;

        result = *&v1[v3];
        if (!result)
        {
          goto LABEL_24;
        }
      }

      v21 = [result topAnchor];
      result = [v1 view];
      if (result)
      {
        v22 = result;
        v23 = [result layoutMarginsGuide];

        v24 = [v23 topAnchor];
        v25 = [v21 constraintEqualToAnchor:v24 constant:20.0];

        MEMORY[0x20F31CEE0]();
        if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_20D567AB8();
        }

        sub_20D567B08();
        v26 = objc_opt_self();
        sub_20CECF940(0, &qword_28111FEC0);
        v27 = sub_20D567A58();
        [v26 activateConstraints_];

        *&v1[v2] = v29;

        goto LABEL_18;
      }

      goto LABEL_21;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

void sub_20CF3CD90()
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return;
    }

    v2 = [Strong finishPresentation:v0 animated:1];
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = [v0 presentingViewController];
    if (!v3)
    {
      return;
    }

    v2 = v3;
    [v3 dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_20CF3CE74()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR___HUNearbyAccessoriesViewController_currentAccessory];
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = objc_allocWithZone(type metadata accessor for NearbyAccessoriesEditorViewController());
  v5 = NearbyAccessoriesEditorViewController.init(primaryAccessory:completionHandler:)(v2, sub_20CF3E6E8, v3);
  v6 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];
  v7 = [v1 hu:v6 presentPreloadableViewController:1 animated:?];
}

void sub_20CF3CF6C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong itemManager];

    v3 = [v2 reloadAndUpdateAllItemsFromSenderSelector_];
  }

  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = v4;
    sub_20CF3D0D8();
  }
}

uint64_t sub_20CF3D064(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v6 = a1;
  sub_20D568628();
  v7 = swift_unknownObjectRelease();
  a4(v7);

  return __swift_destroy_boxed_opaque_existential_1(&v9);
}

void sub_20CF3D0D8()
{
  v1 = [v0 itemManager];
  v2 = [v1 allDisplayedItems];

  sub_20CECF940(0, &qword_281120AC0);
  sub_20CEF7F74(&qword_281120AB0, &qword_281120AC0);
  v3 = sub_20D567D08();

  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = sub_20D568768();
  }

  else
  {
    v4 = *(v3 + 16);
  }

  if (!v4)
  {
    v10 = [v0 view];
    if (v10)
    {
      v11 = v10;
      v12 = OBJC_IVAR___HUNearbyAccessoriesViewController__userInfoHeading;
      if (!*&v0[OBJC_IVAR___HUNearbyAccessoriesViewController__userInfoHeading])
      {
        sub_20CF3C18C(v0);
        v13 = *&v0[v12];
        *&v0[v12] = v14;

        if (!*&v0[v12])
        {
          goto LABEL_33;
        }
      }

      [v11 addSubview_];

      v15 = OBJC_IVAR___HUNearbyAccessoriesViewController__userInfoDescription;
      v16 = *&v0[OBJC_IVAR___HUNearbyAccessoriesViewController__userInfoDescription];
      if (!v16)
      {
        v17 = sub_20CF3C07C();
        v18 = *&v0[v15];
        *&v0[v15] = v17;

        v16 = *&v0[v15];
        if (!v16)
        {
          goto LABEL_34;
        }
      }

      [v16 setHidden_];
      v19 = [v0 view];
      if (v19)
      {
        v20 = v19;
        [v19 setNeedsUpdateConstraints];

        goto LABEL_17;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    return;
  }

  v5 = *&v0[OBJC_IVAR___HUNearbyAccessoriesViewController__userInfoHeading];
  if (v5)
  {
    [v5 removeFromSuperview];
  }

  v6 = OBJC_IVAR___HUNearbyAccessoriesViewController__userInfoDescription;
  v7 = *&v0[OBJC_IVAR___HUNearbyAccessoriesViewController__userInfoDescription];
  if (!v7)
  {
    v8 = sub_20CF3C07C();
    v9 = *&v0[v6];
    *&v0[v6] = v8;

    v7 = *&v0[v6];
    if (!v7)
    {
      goto LABEL_32;
    }
  }

  [v7 setHidden_];
LABEL_17:
  v21 = [*&v0[OBJC_IVAR___HUNearbyAccessoriesViewController_currentAccessory] home];
  if (v21 && ((v22 = v21, v23 = [v21 hf_allVisibleServices], v22, sub_20CECF940(0, &qword_27C81AEC0), sub_20CEF7F74(&qword_27C81D290, &qword_27C81AEC0), v24 = sub_20D567D08(), v23, v25 = v0, v26 = sub_20CF3E95C(v24, v25), v25, (v26 & 0xC000000000000001) == 0) ? (v27 = *(v26 + 16)) : (v27 = sub_20D568768()), , !v27))
  {
    v31 = [v25 navigationItem];
    v32 = [v31 leftBarButtonItem];

    if (!v32)
    {
      return;
    }

    v29 = v32;
    v30 = 0;
  }

  else
  {
    v28 = [v0 navigationItem];
    v32 = [v28 leftBarButtonItem];

    if (!v32)
    {
      return;
    }

    v29 = v32;
    v30 = 1;
  }

  [v29 setEnabled_];
}

id sub_20CF3D4A4(uint64_t a1, void *a2)
{
  v5 = [v2 itemManager];
  v6 = [v5 displayedSectionIdentifierForSectionIndex_];

  if (v6)
  {
    v7 = sub_20D567838();
    v9 = v8;

    v10 = *&v2[OBJC_IVAR___HUNearbyAccessoriesViewController_layoutManager];
    v16 = xmmword_20D5BA030;
    v17 = 2;
    v11 = v10;
    sub_20CEFA3C8(v7, v9, &v16, a2);
    v13 = v12;

    return v13;
  }

  else
  {
    v18.receiver = v2;
    v18.super_class = type metadata accessor for NearbyAccessoriesViewController();
    v15 = objc_msgSendSuper2(&v18, sel_layoutSectionForSection_layoutEnvironment_, a1, a2);

    return v15;
  }
}

void sub_20CF3D760(void *a1, void *a2)
{
  v28.receiver = v2;
  v28.super_class = type metadata accessor for NearbyAccessoriesViewController();
  objc_msgSendSuper2(&v28, sel_configureCell_forItem_, a1, a2);
  type metadata accessor for AccessoryTileCell();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = v5;
    v7 = a1;
    if ([a2 conformsToProtocol_])
    {
      v8 = objc_opt_self();
      v9 = v2;
      v10 = [v2 _childItemsForItem_];
      sub_20CECF940(0, &unk_27C81A3F0);
      sub_20CEF7F74(&qword_27C81D280, &unk_27C81A3F0);
      sub_20D567D08();

      v11 = sub_20D567CD8();

      v12 = [v8 hu:v11 preferredToggleableControlItemInControlItems:?];

      v13 = MEMORY[0x277D85000];
      v14 = *((*MEMORY[0x277D85000] & *v6) + 0x138);
      v15 = v7;
      v14(v12 != 0);
      v16 = OBJC_IVAR___HUTileCell_backgroundDisplayStyle;
      swift_beginAccess();
      v17 = *(v6 + v16);
      *(v6 + v16) = 2;
      if (v17 != 2)
      {
        [v6 setNeedsUpdateConfiguration];
      }

      v18 = *&v9[OBJC_IVAR___HUNearbyAccessoriesViewController_layoutManager];
      v19 = *((*v13 & *v18) + 0x128);
      v20 = v18;
      v21 = v19(a2);
      v23 = v22;

      v24 = v6 + OBJC_IVAR___HUTileCell__gridSize;
      v26 = *(v6 + OBJC_IVAR___HUTileCell__gridSize);
      v25 = *(v6 + OBJC_IVAR___HUTileCell__gridSize + 8);
      v27 = *(v6 + OBJC_IVAR___HUTileCell__gridSize + 16);
      *v24 = v21;
      *(v24 + 1) = v23;
      v24[16] = 0;
      if ((v27 & 1) != 0 || v21 != v26 || v23 != v25)
      {
        [v6 setNeedsUpdateConfiguration];
      }

      v7 = v12;
    }
  }
}

uint64_t sub_20CF3DBF4()
{
  v1 = [v0 itemManager];
  v2 = sub_20D5677F8();
  v3 = [v1 displayedItemsInSectionWithIdentifier_];

  sub_20CECF940(0, &qword_281120AC0);
  v4 = sub_20D567A78();

  return v4;
}

BOOL sub_20CF3DD74()
{
  v1 = [v0 itemManager];
  v2 = sub_20D5677F8();
  v3 = [v1 sectionIndexForDisplayedSectionIdentifier_];

  v4 = [v0 itemManager];
  v5 = [v4 titleForSection_];

  if (v5)
  {
  }

  return v5 != 0;
}

id NearbyAccessoriesViewController.__allocating_init(itemManager:collectionViewLayout:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithItemManager:a1 collectionViewLayout:a2];

  return v5;
}

id NearbyAccessoriesViewController.__allocating_init(usingCompositionalLayoutWith:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initUsingCompositionalLayoutWithItemManager_];

  return v3;
}

id NearbyAccessoriesViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NearbyAccessoriesViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20CF3E1F0(uint64_t result, uint64_t a2, uint64_t a3, char *a4)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v21 = v7;
    v8 = 1 << *(a3 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(a3 + 56);
    v11 = OBJC_IVAR___HUNearbyAccessoriesViewController_currentAccessory;
    v12 = (v8 + 63) >> 6;
    result = a4;
    v20 = result;
    v22 = 0;
    v13 = 0;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_14:
      v17 = v14 | (v13 << 6);
      result = [*&a4[v11] hf:*(*(a3 + 48) + 8 * v17) shouldHideNearbyAccessoryService:?];
      if ((result & 1) == 0)
      {
        *(v21 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
        if (__OFADD__(v22++, 1))
        {
          __break(1u);
LABEL_18:
          v19 = sub_20D0C1340(v21, a2, v22, a3);

          return v19;
        }
      }
    }

    v15 = v13;
    while (1)
    {
      v13 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v13 >= v12)
      {
        goto LABEL_18;
      }

      v16 = *(a3 + 56 + 8 * v13);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_20CF3E378(void *a1, char a2)
{
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR___HUNearbyAccessoriesViewController_nearbyAccessoriesDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR___HUNearbyAccessoriesViewController_userInfoConstraints] = 0;
  *&v2[OBJC_IVAR___HUNearbyAccessoriesViewController__userInfoDescription] = 0;
  *&v2[OBJC_IVAR___HUNearbyAccessoriesViewController__userInfoHeading] = 0;
  v5 = [a1 accessory];
  *&v2[OBJC_IVAR___HUNearbyAccessoriesViewController_currentAccessory] = v5;
  v2[OBJC_IVAR___HUNearbyAccessoriesViewController_supportsQuickControls] = a2;
  *&v2[OBJC_IVAR___HUNearbyAccessoriesViewController_layoutManager] = [objc_allocWithZone(type metadata accessor for CollectionLayoutManager()) init];
  v6 = [objc_allocWithZone(HUNearbyAccessoriesItemManager) initWithDelegate:0 sourceProfileItem:a1 supportsQuickControls:a2 & 1];
  v9.receiver = v2;
  v9.super_class = type metadata accessor for NearbyAccessoriesViewController();
  v7 = objc_msgSendSuper2(&v9, sel_initUsingCompositionalLayoutWithItemManager_, v6);

  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return v7;
}

uint64_t sub_20CF3E6F0(uint64_t a1, void *a2)
{
  v3 = v2;
  v28 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = a2;
  v10 = v9;
  if (v6 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v25 = v7;
    v26 = v3;
    v24[1] = v24;
    MEMORY[0x28223BE20](v9);
    v11 = v24 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v11, v8);
    v27 = 0;
    v12 = 0;
    v13 = 1 << *(a1 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v8 = v14 & *(a1 + 56);
    v15 = OBJC_IVAR___HUNearbyAccessoriesViewController_currentAccessory;
    v7 = (v13 + 63) >> 6;
    while (v8)
    {
      v16 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_12:
      v3 = v16 | (v12 << 6);
      if (([*&v10[v15] hf:*(*(a1 + 48) + 8 * v3) shouldHideNearbyAccessoryService:?] & 1) == 0)
      {
        *&v11[(v3 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v3;
        if (__OFADD__(v27++, 1))
        {
          __break(1u);
LABEL_16:
          v20 = sub_20D0C1340(v11, v25, v27, a1);

          return v20;
        }
      }
    }

    v17 = v12;
    while (1)
    {
      v12 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v12 >= v7)
      {
        goto LABEL_16;
      }

      v18 = *(a1 + 56 + 8 * v12);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v8 = (v18 - 1) & v18;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v22 = swift_slowAlloc();
  v23 = v10;
  v20 = sub_20CF3E1F0(v22, v7, a1, v23);

  MEMORY[0x20F31FC70](v22, -1, -1);

  return v20;
}

uint64_t sub_20CF3E95C(uint64_t a1, void *a2)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_20CF3E6F0(a1, a2);
  }

  v2 = MEMORY[0x277D84FA0];
  v17 = MEMORY[0x277D84FA0];
  v3 = a2;
  sub_20D568718();
  v4 = OBJC_IVAR___HUNearbyAccessoriesViewController_currentAccessory;
  if (sub_20D568798())
  {
    sub_20CECF940(0, &qword_27C81AEC0);
    do
    {
      swift_dynamicCast();
      if ([*&v3[v4] hf:v16 shouldHideNearbyAccessoryService:?])
      {
      }

      else
      {
        v5 = *(v2 + 16);
        if (*(v2 + 24) <= v5)
        {
          sub_20D0C0A00(v5 + 1);
        }

        v2 = v17;
        result = sub_20D5683E8();
        v7 = v17 + 56;
        v8 = -1 << *(v17 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v17 + 56 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v17 + 56 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v12 = 0;
          v13 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v13 && (v12 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v14 = v10 == v13;
            if (v10 == v13)
            {
              v10 = 0;
            }

            v12 |= v14;
            v15 = *(v7 + 8 * v10);
          }

          while (v15 == -1);
          v11 = __clz(__rbit64(~v15)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v17 + 48) + 8 * v11) = v16;
        ++*(v17 + 16);
      }
    }

    while (sub_20D568798());
  }

  return v2;
}

void *sub_20CF3EB70(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D2A8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v24 - v8;
  v10 = type metadata accessor for SidebarTabElementBuilder(0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v30 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v28 = &v24 - v14;
  v15 = *(a3 + 16);
  if (!v15)
  {
    return MEMORY[0x277D84F90];
  }

  v16 = *(sub_20D564558() - 8);
  v25 = v11;
  v17 = (v11 + 48);
  v18 = a3 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
  v29 = *(v16 + 72);
  v19 = MEMORY[0x277D84F90];
  v26 = v10;
  v27 = a2;
  while (1)
  {
    a1(v18);
    if (v3)
    {
      break;
    }

    if ((*v17)(v9, 1, v10) == 1)
    {
      sub_20CEF928C(v9, &qword_27C81D2A8);
    }

    else
    {
      v20 = v28;
      sub_20CF456E4(v9, v28, type metadata accessor for SidebarTabElementBuilder);
      sub_20CF456E4(v20, v30, type metadata accessor for SidebarTabElementBuilder);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_20CEE8360(0, v19[2] + 1, 1, v19);
      }

      v22 = v19[2];
      v21 = v19[3];
      if (v22 >= v21 >> 1)
      {
        v19 = sub_20CEE8360(v21 > 1, v22 + 1, 1, v19);
      }

      v19[2] = v22 + 1;
      sub_20CF456E4(v30, v19 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v22, type metadata accessor for SidebarTabElementBuilder);
      v10 = v26;
    }

    v18 += v29;
    if (!--v15)
    {
      return v19;
    }
  }

  return v19;
}

void *sub_20CF3EE8C(void (*a1)(__int128 *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = MEMORY[0x277D84F90];
  v7 = a3 + 32;
  a1(&v11, a3 + 32);
  while (!v3)
  {
    if (v12)
    {
      sub_20CF02B6C(&v11, v13);
      sub_20CF02B6C(v13, &v11);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_20CEE8DC8(0, v6[2] + 1, 1, v6);
      }

      v9 = v6[2];
      v8 = v6[3];
      if (v9 >= v8 >> 1)
      {
        v6 = sub_20CEE8DC8((v8 > 1), v9 + 1, 1, v6);
      }

      v6[2] = v9 + 1;
      sub_20CF02B6C(&v11, &v6[5 * v9 + 4]);
    }

    else
    {
      sub_20CEF928C(&v11, &qword_27C81D2C8);
    }

    v7 += 40;
    if (!--v4)
    {
      return v6;
    }

    a1(&v11, v7);
  }

  return v6;
}

void *sub_20CF3EFE8(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v48 = a2;
  v49 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D2C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v36 - v6;
  v51 = sub_20D5641F8();
  v8 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v43 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v42 = &v36 - v11;
  v12 = sub_20D563818();
  MEMORY[0x28223BE20](v12);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a3 + 56;
  v18 = 1 << *(a3 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(a3 + 56);
  v21 = (v18 + 63) >> 6;
  v46 = v14 + 16;
  v47 = v14;
  v50 = (v14 + 8);
  v45 = (v8 + 48);
  v40 = v8;
  v41 = (v8 + 32);
  v52 = a3;
  v22 = v13;
  result = sub_20D5663C8();
  v24 = 0;
  v44 = MEMORY[0x277D84F90];
  while (1)
  {
    v25 = v24;
    if (!v20)
    {
      break;
    }

LABEL_8:
    (*(v47 + 16))(v16, *(v52 + 48) + *(v47 + 72) * (__clz(__rbit64(v20)) | (v24 << 6)), v22);
    v49(v16);
    if (v3)
    {
      (*v50)(v16, v22);
      v35 = v44;

      return v35;
    }

    v20 &= v20 - 1;
    (*v50)(v16, v22);
    if ((*v45)(v7, 1, v51) == 1)
    {
      result = sub_20CEF928C(v7, &qword_27C81D2C0);
    }

    else
    {
      v39 = v22;
      v26 = *v41;
      (*v41)(v42, v7, v51);
      v26(v43, v42, v51);
      v27 = v26;
      v28 = v44;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_20CEE8F38(0, v28[2] + 1, 1, v28);
      }

      v30 = v28[2];
      v29 = v28[3];
      v44 = v28;
      v31 = v30 + 1;
      v22 = v39;
      if (v30 >= v29 >> 1)
      {
        v37 = v30;
        v38 = v30 + 1;
        v34 = sub_20CEE8F38(v29 > 1, v30 + 1, 1, v44);
        v30 = v37;
        v31 = v38;
        v44 = v34;
      }

      v32 = v43;
      v33 = v44;
      v44[2] = v31;
      result = (v27)(v33 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v30, v32, v51);
    }
  }

  while (1)
  {
    v24 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v24 >= v21)
    {

      return v44;
    }

    v20 = *(v17 + 8 * v24);
    ++v25;
    if (v20)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

void *sub_20CF3F434(void (*a1)(uint64_t *__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20D568768())
  {
    v6 = 0;
    v7 = MEMORY[0x277D84F90];
    v16 = i;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x20F31DD20](v6, a3);
      }

      else
      {
        if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v9 = *(a3 + 8 * v6 + 32);
      }

      v10 = v9;
      v11 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v21 = v9;
      a1(&v19, &v21);
      if (v3)
      {

        return v7;
      }

      v12 = v19;
      if (v19)
      {
        v18 = v20;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_20CEE809C(0, v7[2] + 1, 1, v7);
        }

        v14 = v7[2];
        v13 = v7[3];
        if (v14 >= v13 >> 1)
        {
          v7 = sub_20CEE809C((v13 > 1), v14 + 1, 1, v7);
        }

        v7[2] = v14 + 1;
        v8 = &v7[3 * v14];
        v8[4] = v12;
        *(v8 + 5) = v18;
        i = v16;
      }

      ++v6;
      if (v11 == i)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t SidebarTabElementBuilder.Kind.hash(into:)()
{
  v1 = sub_20D563818();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SidebarTabElementBuilder.Kind(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CF457CC(v0, v7, type metadata accessor for SidebarTabElementBuilder.Kind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      (*(v2 + 32))(v4, v7, v1);
      v10 = 2;
    }

    else
    {
      (*(v2 + 32))(v4, v7, v1);
      v10 = 1;
    }

    MEMORY[0x20F31E200](v10);
    sub_20CF458DC(&qword_27C81C0E0, MEMORY[0x277CC95F0]);
    sub_20D5677C8();
    return (*(v2 + 8))(v4, v1);
  }

  else if (EnumCaseMultiPayload == 2)
  {
    MEMORY[0x20F31E200](3);
    return sub_20D568D68();
  }

  else
  {
    if (EnumCaseMultiPayload == 3)
    {
      v9 = 0;
    }

    else
    {
      v9 = 4;
    }

    return MEMORY[0x20F31E200](v9);
  }
}

uint64_t SidebarTabElementBuilder.Kind.hashValue.getter()
{
  sub_20D568D48();
  SidebarTabElementBuilder.Kind.hash(into:)();
  return sub_20D568D98();
}

uint64_t sub_20CF3F864()
{
  sub_20D568D48();
  SidebarTabElementBuilder.Kind.hash(into:)();
  return sub_20D568D98();
}

uint64_t sub_20CF3F8A8()
{
  sub_20D568D48();
  SidebarTabElementBuilder.Kind.hash(into:)();
  return sub_20D568D98();
}

uint64_t SidebarTabElementBuilder.title.getter()
{
  v1 = *(v0 + *(type metadata accessor for SidebarTabElementBuilder(0) + 20));
  sub_20D5663C8();
  return v1;
}

void *SidebarTabElementBuilder.tabIcon.getter()
{
  v1 = *(v0 + *(type metadata accessor for SidebarTabElementBuilder(0) + 24));
  v2 = v1;
  return v1;
}

uint64_t SidebarTabElementBuilder.accessibilityIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for SidebarTabElementBuilder(0) + 28));
  sub_20D5663C8();
  return v1;
}

id sub_20CF3F9CC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D300);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_20D5BEE70;
  v1 = *MEMORY[0x277D13938];
  v2 = *MEMORY[0x277D13940];
  *(v0 + 32) = *MEMORY[0x277D13938];
  *(v0 + 40) = v2;
  v6 = *MEMORY[0x277D13930];
  *(v0 + 48) = *MEMORY[0x277D13930];
  off_2811207C0 = v0;
  v3 = v1;
  v4 = v2;

  return v6;
}

uint64_t static SidebarTabElementBuilder.DefaultTabs.getter()
{
  if (qword_2811207B8 != -1)
  {
    swift_once();
  }

  return sub_20D5663C8();
}

void *static SidebarTabElementBuilder.createBaseLevelTabs(with:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D2A0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v35 - v3;
  v5 = type metadata accessor for SidebarTabElementBuilder.Kind(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for SidebarTabElementBuilder(0);
  v40 = *(v44 - 8);
  v9 = MEMORY[0x28223BE20](v44);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v35 - v12;
  if (qword_2811207B8 != -1)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v14 = off_2811207C0;
    v43 = *(off_2811207C0 + 2);
    if (!v43)
    {
      break;
    }

    v15 = 0;
    v42 = off_2811207C0 + 32;
    v16 = MEMORY[0x277D84F90];
    v41 = (v6 + 48);
    v38 = v5;
    v39 = a1;
    v36 = off_2811207C0;
    v37 = v13;
    while (v15 < v14[2])
    {
      v6 = *&v42[8 * v15];
      sub_20CF41738(a1, v4);
      if ((*v41)(v4, 1, v5) == 1)
      {

        sub_20CEF928C(v4, &qword_27C81D2A0);
      }

      else
      {
        sub_20CF456E4(v4, v8, type metadata accessor for SidebarTabElementBuilder.Kind);
        sub_20CF457CC(v8, v11, type metadata accessor for SidebarTabElementBuilder.Kind);
        v17 = sub_20CF41ECC();
        v18 = v8;
        v20 = v19;
        v21 = v44;
        v22 = &v11[*(v44 + 20)];
        *v22 = v17;
        v22[1] = v19;
        v45 = 0x6261542E656D6F48;
        v46 = 0xE90000000000002ELL;
        sub_20D5663C8();
        MEMORY[0x20F31CDB0](v17, v20);

        v23 = sub_20D567848();
        v25 = v24;

        v26 = &v11[*(v21 + 28)];
        *v26 = v23;
        v26[1] = v25;
        sub_20CF420CC();
        v28 = v27;
        if (v27)
        {
          v29 = objc_opt_self();
          v30 = sub_20D5677F8();

          v28 = [v29 hu:v30 systemTabImageWithNamed:0 filled:?];

          sub_20CF45834(v18, type metadata accessor for SidebarTabElementBuilder.Kind);
        }

        else
        {
          sub_20CF45834(v18, type metadata accessor for SidebarTabElementBuilder.Kind);
        }

        v8 = v18;
        v13 = v37;
        *&v11[*(v44 + 24)] = v28;
        sub_20CF456E4(v11, v13, type metadata accessor for SidebarTabElementBuilder);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v5 = v38;
        v14 = v36;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v16 = sub_20CEE8360(0, v16[2] + 1, 1, v16);
        }

        v33 = v16[2];
        v32 = v16[3];
        v6 = (v33 + 1);
        if (v33 >= v32 >> 1)
        {
          v16 = sub_20CEE8360(v32 > 1, v33 + 1, 1, v16);
        }

        v16[2] = v6;
        sub_20CF456E4(v13, v16 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v33, type metadata accessor for SidebarTabElementBuilder);
        a1 = v39;
      }

      if (v43 == ++v15)
      {
        return v16;
      }
    }

    __break(1u);
LABEL_19:
    swift_once();
  }

  return MEMORY[0x277D84F90];
}

uint64_t SidebarTabElementBuilder.init(from:home:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D2A0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v31 - v7;
  v9 = type metadata accessor for SidebarTabElementBuilder.Kind(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SidebarTabElementBuilder(0);
  v14 = *(v13 - 1);
  MEMORY[0x28223BE20](v13);
  v16 = v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CF41738(a2, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {

    sub_20CEF928C(v8, &qword_27C81D2A0);
    v17 = 1;
  }

  else
  {
    sub_20CF456E4(v8, v12, type metadata accessor for SidebarTabElementBuilder.Kind);
    sub_20CF457CC(v12, v16, type metadata accessor for SidebarTabElementBuilder.Kind);
    v18 = sub_20CF41ECC();
    v20 = v19;
    v21 = &v16[v13[5]];
    *v21 = v18;
    v21[1] = v19;
    v31[0] = 0x6261542E656D6F48;
    v31[1] = 0xE90000000000002ELL;
    sub_20D5663C8();
    MEMORY[0x20F31CDB0](v18, v20);

    v22 = sub_20D567848();
    v24 = v23;

    v25 = &v16[v13[7]];
    *v25 = v22;
    v25[1] = v24;
    sub_20CF420CC();
    if (v26)
    {
      v27 = objc_opt_self();
      v28 = sub_20D5677F8();

      v29 = [v27 hu:v28 systemTabImageWithNamed:0 filled:?];

      sub_20CF45834(v12, type metadata accessor for SidebarTabElementBuilder.Kind);
      *&v16[v13[6]] = v29;
    }

    else
    {

      sub_20CF45834(v12, type metadata accessor for SidebarTabElementBuilder.Kind);
      *&v16[v13[6]] = 0;
    }

    sub_20CF456E4(v16, a3, type metadata accessor for SidebarTabElementBuilder);
    v17 = 0;
  }

  return (*(v14 + 56))(a3, v17, 1, v13);
}

void *static SidebarTabElementBuilder.createRooms(with:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D2A8);
  MEMORY[0x28223BE20](v0 - 8);
  v55 = v52 - v1;
  v2 = type metadata accessor for SidebarTabElementBuilder(0);
  v53 = *(v2 - 8);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v62 = v52 - v6;
  v64 = sub_20D563F98();
  v7 = *(v64 - 8);
  v8 = MEMORY[0x28223BE20](v64);
  v10 = v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v65 = v52 - v11;
  v12 = sub_20D563DA8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_20D564138();
  v66 = sub_20CF433C4(v16);
  sub_20D564118();
  sub_20D563D38();
  (*(v13 + 8))(v15, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D2B0);
  sub_20CF4574C();
  v17 = sub_20D567DB8();

  v18 = *(v17 + 16);
  if (v18)
  {
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v21 = (*(v19 + 64) + 32) & ~*(v19 + 64);
    v52[1] = v17;
    v22 = v17 + v21;
    v59 = *(v19 + 56);
    v60 = v20;
    v54 = "iesUserInformationDescription";
    v57 = (v53 + 56);
    v58 = (v19 - 8);
    v56 = (v53 + 48);
    v23 = MEMORY[0x277D84F90];
    v24 = v55;
    v61 = v19;
    do
    {
      v63 = v23;
      v25 = v2;
      v27 = v64;
      v26 = v65;
      v28 = v60;
      v60(v65, v22, v64);
      v28(v10, v26, v27);
      if ((sub_20D563F58() & 1) != 0 && (v29 = sub_20D563F68(), v30 = *(sub_20CF441EC(v29) + 16), , !v30))
      {
        v48 = *v58;
        v49 = v64;
        (*v58)(v10, v64);
        v48(v65, v49);
        v43 = 1;
        v2 = v25;
      }

      else
      {
        sub_20D563F78();
        type metadata accessor for SidebarTabElementBuilder.Kind(0);
        swift_storeEnumTagMultiPayload();
        v31 = sub_20D563F88();
        v2 = v25;
        v32 = &v5[v25[5]];
        *v32 = v31;
        v32[1] = v33;
        v34 = objc_opt_self();
        v35 = sub_20D5677F8();
        v36 = [v34 hu:v35 systemTabImageWithNamed:0 filled:?];

        *&v5[v25[6]] = v36;
        v37 = sub_20D563F88();
        v39 = v38;
        v40 = *v58;
        v41 = v64;
        (*v58)(v10, v64);
        v40(v65, v41);
        v24 = v55;
        v42 = &v5[v25[7]];
        *v42 = v37;
        v42[1] = v39;
        sub_20CF456E4(v5, v24, type metadata accessor for SidebarTabElementBuilder);
        v43 = 0;
      }

      (*v57)(v24, v43, 1, v2);
      v44 = (*v56)(v24, 1, v2);
      v23 = v63;
      if (v44 == 1)
      {
        sub_20CEF928C(v24, &qword_27C81D2A8);
      }

      else
      {
        sub_20CF456E4(v24, v62, type metadata accessor for SidebarTabElementBuilder);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_20CEE8360(0, v23[2] + 1, 1, v23);
        }

        v46 = v23[2];
        v45 = v23[3];
        v47 = v53;
        if (v46 >= v45 >> 1)
        {
          v50 = sub_20CEE8360(v45 > 1, v46 + 1, 1, v23);
          v47 = v53;
          v23 = v50;
        }

        v23[2] = v46 + 1;
        sub_20CF456E4(v62, v23 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v46, type metadata accessor for SidebarTabElementBuilder);
      }

      v22 += v59;
      --v18;
    }

    while (v18);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v23;
}

uint64_t SidebarTabElementBuilder.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SidebarTabElementBuilder(0);
  v24 = *(v4 - 1);
  MEMORY[0x28223BE20](v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_20D563F58() & 1) != 0 && (v7 = sub_20D563F68(), v8 = *(sub_20CF441EC(v7) + 16), , !v8))
  {
    v21 = sub_20D563F98();
    (*(*(v21 - 8) + 8))(a1, v21);
    v22 = *(v24 + 56);

    return v22(a2, 1, 1, v4);
  }

  else
  {
    sub_20D563F78();
    type metadata accessor for SidebarTabElementBuilder.Kind(0);
    swift_storeEnumTagMultiPayload();
    v9 = sub_20D563F88();
    v10 = &v6[v4[5]];
    *v10 = v9;
    v10[1] = v11;
    v12 = objc_opt_self();
    v13 = sub_20D5677F8();
    v14 = [v12 hu:v13 systemTabImageWithNamed:0 filled:?];

    *&v6[v4[6]] = v14;
    v15 = sub_20D563F88();
    v17 = v16;
    v18 = sub_20D563F98();
    (*(*(v18 - 8) + 8))(a1, v18);
    v19 = &v6[v4[7]];
    *v19 = v15;
    v19[1] = v17;
    sub_20CF456E4(v6, a2, type metadata accessor for SidebarTabElementBuilder);
    return (*(v24 + 56))(a2, 0, 1, v4);
  }
}

void *static SidebarTabElementBuilder.createCategories(with:home:)(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for SidebarTabElementBuilder(0);
  v5 = *(v4 - 1);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v28[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v28[-v9];
  v11 = sub_20D564548();
  v29 = a1;
  v12 = sub_20CF3EB70(sub_20CF457B0, v28, v11);

  if ([a2 hf_isHomeEnergyVisible] && (objc_msgSend(a2, sel_hf_isHomeEnergyHomeEmpty) & 1) == 0)
  {
    v13 = [objc_opt_self() energyAccessoryTypeGroup];
    v14 = [v13 uniqueIdentifier];

    sub_20D5637E8();
    type metadata accessor for SidebarTabElementBuilder.Kind(0);
    swift_storeEnumTagMultiPayload();
    v15 = sub_20D5677F8();
    v16 = HFLocalizedString();

    v17 = sub_20D567838();
    v19 = v18;

    v20 = objc_opt_self();
    v21 = sub_20D5677F8();
    v22 = [v20 hu:v21 systemTabImageWithNamed:0 filled:?];

    v23 = &v10[v4[5]];
    *v23 = v17;
    v23[1] = v19;
    *&v10[v4[6]] = v22;
    v24 = &v10[v4[7]];
    *v24 = 0xD00000000000001BLL;
    v24[1] = 0x800000020D5CF710;
    sub_20CF457CC(v10, v8, type metadata accessor for SidebarTabElementBuilder);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_20CEE8360(0, v12[2] + 1, 1, v12);
    }

    v26 = v12[2];
    v25 = v12[3];
    if (v26 >= v25 >> 1)
    {
      v12 = sub_20CEE8360(v25 > 1, v26 + 1, 1, v12);
    }

    sub_20CF45834(v10, type metadata accessor for SidebarTabElementBuilder);
    v12[2] = v26 + 1;
    sub_20CF456E4(v8, v12 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v26, type metadata accessor for SidebarTabElementBuilder);
  }

  return v12;
}

uint64_t sub_20CF40F50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_20D5641B8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20D564558();
  MEMORY[0x28223BE20](v10);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, a1);
  (*(v7 + 16))(v9, a2, v6);
  return SidebarTabElementBuilder.init(from:with:)(v12, v9, a3);
}

uint64_t SidebarTabElementBuilder.init(from:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a3;
  v5 = sub_20D564558();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D2A0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v39 - v10;
  v12 = type metadata accessor for SidebarTabElementBuilder.Kind(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v40 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for SidebarTabElementBuilder(0);
  v15 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_20CF422EC(a1, a2))
  {
    v18 = sub_20D5641B8();
    (*(*(v18 - 8) + 8))(a2, v18);
    (*(v6 + 8))(a1, v5);
LABEL_5:
    v20 = 1;
    v21 = v41;
    return (*(v15 + 56))(v21, v20, 1, v42);
  }

  sub_20CF42B48(a1, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    v19 = sub_20D5641B8();
    (*(*(v19 - 8) + 8))(a2, v19);
    (*(v6 + 8))(a1, v5);
    sub_20CEF928C(v11, &qword_27C81D2A0);
    goto LABEL_5;
  }

  v22 = v40;
  sub_20CF456E4(v11, v40, type metadata accessor for SidebarTabElementBuilder.Kind);
  sub_20CF457CC(v22, v17, type metadata accessor for SidebarTabElementBuilder.Kind);
  v23 = sub_20D564538();
  v24 = &v17[*(v42 + 20)];
  *v24 = v23;
  v24[1] = v25;
  v26 = v5;
  (*(v6 + 16))(v8, a1, v5);
  v27 = (*(v6 + 88))(v8, v5);
  if (v27 == *MEMORY[0x277D16020])
  {
    v28 = 0x800000020D5CF7C0;
    v29 = 0xD00000000000001CLL;
    v30 = a2;
  }

  else
  {
    v30 = a2;
    if (v27 == *MEMORY[0x277D15FC0])
    {
      v28 = 0x800000020D5CF7A0;
      v29 = 0xD00000000000001BLL;
    }

    else if (v27 == *MEMORY[0x277D15FE0])
    {
      v28 = 0x800000020D5CF750;
      v29 = 0xD000000000000023;
    }

    else if (v27 == *MEMORY[0x277D15FD8])
    {
      v28 = 0x800000020D5CF780;
      v29 = 0xD00000000000001DLL;
    }

    else if (v27 == *MEMORY[0x277D16000])
    {
      v29 = 0xD00000000000001ALL;
      v28 = 0x800000020D5CF730;
    }

    else
    {
      (*(v6 + 8))(v8, v26);
      v29 = 0;
      v28 = 0xE000000000000000;
    }
  }

  v31 = v42;
  v32 = &v17[*(v42 + 28)];
  *v32 = v29;
  v32[1] = v28;
  v33 = objc_opt_self();
  sub_20D564528();
  v34 = sub_20D5677F8();

  v35 = [v33 hu:v34 systemTabImageWithNamed:0 filled:?];

  v36 = sub_20D5641B8();
  (*(*(v36 - 8) + 8))(v30, v36);
  (*(v6 + 8))(a1, v26);
  sub_20CF45834(v40, type metadata accessor for SidebarTabElementBuilder.Kind);
  *&v17[*(v31 + 24)] = v35;
  v37 = v41;
  sub_20CF456E4(v17, v41, type metadata accessor for SidebarTabElementBuilder);
  v21 = v37;
  v20 = 0;
  return (*(v15 + 56))(v21, v20, 1, v42);
}

int *SidebarTabElementBuilder.init(kind:title:tabIcon:accessibilityIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  sub_20CF456E4(a1, a7, type metadata accessor for SidebarTabElementBuilder.Kind);
  result = type metadata accessor for SidebarTabElementBuilder(0);
  v14 = (a7 + result[5]);
  *v14 = a2;
  v14[1] = a3;
  *(a7 + result[6]) = a4;
  v15 = (a7 + result[7]);
  *v15 = a5;
  v15[1] = a6;
  return result;
}

uint64_t sub_20CF41738@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v4 = sub_20D563818();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20D567838();
  v10 = v9;
  if (v8 == sub_20D567838() && v10 == v11)
  {

    goto LABEL_15;
  }

  v13 = sub_20D568BF8();

  if (v13)
  {
LABEL_15:
    v24 = type metadata accessor for SidebarTabElementBuilder.Kind(0);
    goto LABEL_16;
  }

  v14 = sub_20D567838();
  v16 = v15;
  if (v14 == sub_20D567838() && v16 == v17)
  {

    goto LABEL_21;
  }

  v19 = sub_20D568BF8();

  if (v19)
  {
LABEL_21:
    if ([a1 hf_hasAnyVisibleTriggers] & 1) != 0 || (objc_msgSend(a1, sel_hf_userCanCreateTrigger))
    {
      v29 = 1;
    }

    else
    {
      v29 = HFForceAllowAutomationCreation();
    }

    if ([a1 hf_userIsAllowedToCreateTrigger] & 1) != 0 || (v30 = objc_opt_self(), (objc_msgSend(v30, sel_isRunningInStoreDemoMode)))
    {
      v31 = 1;
    }

    else
    {
      v31 = [v30 isPressDemoModeEnabled];
    }

    v32 = [a1 hf_shouldBlockCurrentUserFromHome];
    v33 = 0;
    if (!v32 && ((v29 | v31) & 1) != 0)
    {
      v33 = [a1 hf_currentUserIsRestrictedGuest] ^ 1;
    }

    v70 = v29;
    if (qword_281120900 != -1)
    {
      swift_once();
    }

    v34 = sub_20D565988();
    __swift_project_value_buffer(v34, qword_281120908);
    v35 = a1;
    v36 = sub_20D565968();
    v37 = sub_20D567EC8();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v69 = v33;
      v39 = v38;
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v71 = v68;
      *v39 = 67110658;
      v40 = v70;
      *(v39 + 4) = v69;
      *(v39 + 8) = 1024;
      *(v39 + 10) = v40;
      *(v39 + 14) = 1024;
      *(v39 + 16) = v31;
      *(v39 + 20) = 1024;
      *(v39 + 22) = v32;
      *(v39 + 26) = 2080;
      v41 = [v35 currentUser];
      v66 = v37;
      v42 = v41;
      v43 = [v41 name];

      v44 = sub_20D567838();
      v46 = v45;

      v47 = sub_20CEE913C(v44, v46, &v71);

      *(v39 + 28) = v47;
      *(v39 + 36) = 2082;
      v48 = [v35 currentUser];
      v49 = [v48 uniqueIdentifier];

      sub_20D5637E8();
      sub_20CF458DC(&qword_2811209D0, MEMORY[0x277CC95F0]);
      v50 = sub_20D568BB8();
      v52 = v51;
      (*(v5 + 8))(v7, v4);
      v53 = sub_20CEE913C(v50, v52, &v71);

      *(v39 + 38) = v53;
      *(v39 + 46) = 2112;
      *(v39 + 48) = v35;
      v54 = v67;
      *v67 = v35;
      v55 = v35;
      _os_log_impl(&dword_20CEB6000, v36, v66, "<SidebarTabElementBuilder: init(from:home:)> showAutomation = %{BOOL}d | showTriggerList = %{BOOL}d | showAboutResident = %{BOOL}d | shouldBlock = %{BOOL}d | currentUser = %s (%{public}s) | home = %@", v39, 0x38u);
      sub_20CEF928C(v54, &unk_27C81BE60);
      MEMORY[0x20F31FC70](v54, -1, -1);
      v56 = v68;
      swift_arrayDestroy();
      MEMORY[0x20F31FC70](v56, -1, -1);
      v57 = v39;
      v33 = v69;
      MEMORY[0x20F31FC70](v57, -1, -1);
    }

    if (v33)
    {
      *a2 = v70;
      v58 = type metadata accessor for SidebarTabElementBuilder.Kind(0);
      swift_storeEnumTagMultiPayload();
      return (*(*(v58 - 8) + 56))(a2, 0, 1, v58);
    }

    goto LABEL_40;
  }

  v20 = sub_20D567838();
  v22 = v21;
  if (v20 == sub_20D567838() && v22 == v23)
  {
  }

  else
  {
    v59 = sub_20D568BF8();

    if ((v59 & 1) == 0)
    {
LABEL_40:
      v60 = type metadata accessor for SidebarTabElementBuilder.Kind(0);
      return (*(*(v60 - 8) + 56))(a2, 1, 1, v60);
    }
  }

  if ([a1 hf_currentUserIsRestrictedGuest])
  {
    goto LABEL_40;
  }

  v61 = [objc_opt_self() getAvailabilityDictionary];
  v62 = sub_20D567758();

  v63 = *(v62 + 16);

  v64 = type metadata accessor for SidebarTabElementBuilder.Kind(0);
  v24 = v64;
  if (!v63)
  {
    v25 = *(*(v64 - 8) + 56);
    v26 = a2;
    v27 = 1;
    goto LABEL_17;
  }

LABEL_16:
  swift_storeEnumTagMultiPayload();
  v25 = *(*(v24 - 8) + 56);
  v26 = a2;
  v27 = 0;
LABEL_17:

  return v25(v26, v27, 1, v24);
}

uint64_t sub_20CF41ECC()
{
  v0 = sub_20D567838();
  v2 = v1;
  if (v0 == sub_20D567838() && v2 == v3)
  {
    goto LABEL_12;
  }

  v5 = sub_20D568BF8();

  if (v5)
  {
    goto LABEL_13;
  }

  v6 = sub_20D567838();
  v8 = v7;
  if (v6 == sub_20D567838() && v8 == v9)
  {
    goto LABEL_12;
  }

  v11 = sub_20D568BF8();

  if (v11)
  {
    goto LABEL_13;
  }

  v16 = sub_20D567838();
  v18 = v17;
  if (v16 == sub_20D567838() && v18 == v19)
  {
LABEL_12:

    goto LABEL_13;
  }

  v20 = sub_20D568BF8();

  if ((v20 & 1) == 0)
  {
    return 0;
  }

LABEL_13:
  v12 = sub_20D5677F8();
  v13 = HFLocalizedString();

  v14 = sub_20D567838();
  return v14;
}

uint64_t sub_20CF420CC()
{
  v0 = 0x6573756F68;
  v1 = sub_20D567838();
  v3 = v2;
  if (v1 == sub_20D567838() && v3 == v4)
  {
    goto LABEL_14;
  }

  v6 = sub_20D568BF8();

  if (v6)
  {
    return v0;
  }

  v0 = 0x636F6C636B736564;
  v7 = sub_20D567838();
  v9 = v8;
  if (v7 == sub_20D567838() && v9 == v10)
  {
LABEL_14:

    return v0;
  }

  v12 = sub_20D568BF8();

  if ((v12 & 1) == 0)
  {
    v13 = sub_20D567838();
    v15 = v14;
    if (v13 == sub_20D567838() && v15 == v16)
    {
    }

    else
    {
      v18 = sub_20D568BF8();

      if ((v18 & 1) == 0)
      {
        return 0;
      }
    }

    if ([objc_opt_self() isAMac])
    {
      return 1918989427;
    }

    else
    {
      return 0x6C69662E72617473;
    }
  }

  return v0;
}

BOOL sub_20CF422EC(uint64_t a1, uint64_t a2)
{
  v55 = a1;
  v56 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D2D0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v51 - v3;
  v5 = sub_20D5641B8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D2D8);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v52 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v54 = &v51 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v53 = &v51 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v51 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v51 - v19;
  v21 = sub_20D564558();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v51 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v51 - v26;
  (*(v22 + 16))(&v51 - v26, v55, v21);
  v28 = (*(v22 + 88))(v27, v21);
  if (v28 != *MEMORY[0x277D16020])
  {
    v55 = v5;
    v32 = v56;
    if (v28 == *MEMORY[0x277D15FC0])
    {
      (*(v22 + 104))(v25, v28, v21);
      (*(v6 + 16))(v8, v32, v55);
      v33 = sub_20D563F98();
      (*(*(v33 - 8) + 56))(v4, 1, 1, v33);
      sub_20D5648A8();
      v34 = sub_20D5648B8();
      v35 = *(v34 - 8);
      if ((*(v35 + 48))(v18, 1, v34) == 1)
      {
        sub_20CEF928C(v18, &qword_27C81D2D8);
        return 1;
      }

      v36 = sub_20D564898();
      (*(v35 + 8))(v18, v34);
    }

    else
    {
      v37 = v4;
      if (v28 == *MEMORY[0x277D15FE0])
      {
        (*(v22 + 104))(v25, v28, v21);
        (*(v6 + 16))(v8, v32, v55);
        v38 = sub_20D563F98();
        (*(*(v38 - 8) + 56))(v4, 1, 1, v38);
        v39 = v54;
        sub_20D5648A8();
        v40 = sub_20D5648B8();
        v41 = *(v40 - 8);
        if ((*(v41 + 48))(v39, 1, v40) == 1)
        {
          sub_20CEF928C(v39, &qword_27C81D2D8);
          return 1;
        }

        v36 = sub_20D564898();
        (*(v41 + 8))(v39, v40);
      }

      else
      {
        v42 = v8;
        if (v28 == *MEMORY[0x277D15FD8])
        {
          (*(v22 + 104))(v25, v28, v21);
          (*(v6 + 16))(v8, v32, v55);
          v43 = sub_20D563F98();
          (*(*(v43 - 8) + 56))(v37, 1, 1, v43);
          v44 = v53;
        }

        else
        {
          v45 = v55;
          if (v28 != *MEMORY[0x277D16000])
          {
            (*(v22 + 8))(v27, v21);
            return 1;
          }

          (*(v22 + 104))(v25, v28, v21);
          (*(v6 + 16))(v42, v32, v45);
          v46 = sub_20D563F98();
          (*(*(v46 - 8) + 56))(v37, 1, 1, v46);
          v44 = v52;
        }

        sub_20D5648A8();
        v47 = sub_20D5648B8();
        v48 = *(v47 - 8);
        if ((*(v48 + 48))(v44, 1, v47) == 1)
        {
          sub_20CEF928C(v44, &qword_27C81D2D8);
          return 1;
        }

        v36 = sub_20D564898();
        (*(v48 + 8))(v44, v47);
      }
    }

LABEL_20:
    v49 = *(v36 + 16);

    return v49 == 0;
  }

  (*(v22 + 104))(v25, v28, v21);
  (*(v6 + 16))(v8, v56, v5);
  v29 = sub_20D563F98();
  (*(*(v29 - 8) + 56))(v4, 1, 1, v29);
  sub_20D5648A8();
  v30 = sub_20D5648B8();
  v31 = *(v30 - 8);
  if ((*(v31 + 48))(v20, 1, v30) != 1)
  {
    v36 = sub_20D564898();
    (*(v31 + 8))(v20, v30);
    goto LABEL_20;
  }

  sub_20CEF928C(v20, &qword_27C81D2D8);
  return 1;
}

uint64_t sub_20CF42B48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_20D564558();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  v8 = (*(v5 + 88))(v7, v4);
  if (v8 == *MEMORY[0x277D16020])
  {
    v9 = [objc_opt_self() climateAccessoryTypeGroup];
    v10 = [v9 uniqueIdentifier];
  }

  else if (v8 == *MEMORY[0x277D15FC0])
  {
    v9 = [objc_opt_self() lightAccessoryTypeGroup];
    v10 = [v9 uniqueIdentifier];
  }

  else if (v8 == *MEMORY[0x277D15FE0])
  {
    v9 = [objc_opt_self() mediaAccessoryTypeGroup];
    v10 = [v9 uniqueIdentifier];
  }

  else if (v8 == *MEMORY[0x277D15FD8])
  {
    v9 = [objc_opt_self() securityAccessoryTypeGroup];
    v10 = [v9 uniqueIdentifier];
  }

  else
  {
    if (v8 != *MEMORY[0x277D16000])
    {
      v14 = type metadata accessor for SidebarTabElementBuilder.Kind(0);
      (*(*(v14 - 8) + 56))(a2, 1, 1, v14);
      return (*(v5 + 8))(v7, v4);
    }

    v9 = [objc_opt_self() waterAccessoryTypeGroup];
    v10 = [v9 uniqueIdentifier];
  }

  v11 = v10;

  sub_20D5637E8();
  v12 = type metadata accessor for SidebarTabElementBuilder.Kind(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v12 - 8) + 56))(a2, 0, 1, v12);
}

uint64_t sub_20CF42E78@<X0>(uint64_t *a1@<X8>)
{
  result = SidebarTabElementBuilder.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t SidebarTabElementBuilder.id.getter()
{
  v1 = v0;
  v2 = type metadata accessor for SidebarTabElementBuilder.Kind(0);
  MEMORY[0x28223BE20](v2);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20D563818();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CF457CC(v1, v4, type metadata accessor for SidebarTabElementBuilder.Kind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    return sub_20D567838();
  }

  if (EnumCaseMultiPayload >= 2)
  {
    v12 = *v4;
    v16[0] = sub_20D567838();
    v16[1] = v13;
    MEMORY[0x20F31CDB0](32, 0xE100000000000000);
    if (v12)
    {
      v14 = 1702195828;
    }

    else
    {
      v14 = 0x65736C6166;
    }

    if (v12)
    {
      v15 = 0xE400000000000000;
    }

    else
    {
      v15 = 0xE500000000000000;
    }

    MEMORY[0x20F31CDB0](v14, v15);

    return v16[0];
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v10 = sub_20D5637B8();
    (*(v6 + 8))(v8, v5);
    return v10;
  }
}

uint64_t SidebarTabElementBuilder.navigationBarClass.getter()
{
  v1 = type metadata accessor for SidebarTabElementBuilder.Kind(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CF457CC(v0, v3, type metadata accessor for SidebarTabElementBuilder.Kind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload < 2)
  {
    sub_20CF45834(v3, type metadata accessor for SidebarTabElementBuilder.Kind);
    return sub_20CECF940(0, &qword_28111FE20);
  }

  if (EnumCaseMultiPayload == 3)
  {
    return sub_20CECF940(0, &qword_28111FE20);
  }

  v6 = sub_20CECF940(0, &unk_28111FF58);
  sub_20CF45834(v3, type metadata accessor for SidebarTabElementBuilder.Kind);
  return v6;
}

uint64_t SidebarTabElementBuilder.shouldUseCustomTabBarAppearance.getter()
{
  v1 = type metadata accessor for SidebarTabElementBuilder.Kind(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CF457CC(v0, v3, type metadata accessor for SidebarTabElementBuilder.Kind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = 1;
  if (EnumCaseMultiPayload < 2)
  {
    goto LABEL_4;
  }

  if (EnumCaseMultiPayload != 3)
  {
    v5 = 0;
LABEL_4:
    sub_20CF45834(v3, type metadata accessor for SidebarTabElementBuilder.Kind);
  }

  return v5;
}

id SidebarTabElementBuilder.homeAppTabIdentifier.getter()
{
  v1 = type metadata accessor for SidebarTabElementBuilder.Kind(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CF457CC(v0, v3, type metadata accessor for SidebarTabElementBuilder.Kind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      goto LABEL_5;
    }

    v5 = MEMORY[0x277D13930];
  }

  else
  {
    if (EnumCaseMultiPayload < 2)
    {
      sub_20CF45834(v3, type metadata accessor for SidebarTabElementBuilder.Kind);
LABEL_5:
      v5 = MEMORY[0x277D13938];
      goto LABEL_8;
    }

    v5 = MEMORY[0x277D13940];
  }

LABEL_8:
  v6 = *v5;

  return v6;
}

uint64_t sub_20CF433C4(uint64_t a1)
{
  v2 = sub_20D563F98();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v22 - v7;
  v9 = *(a1 + 16);
  v10 = sub_20CF458DC(&unk_281120990, MEMORY[0x277D15488]);
  result = MEMORY[0x20F31D1D0](v9, v2, v10);
  v12 = 0;
  v23 = a1;
  v24 = result;
  v15 = *(a1 + 64);
  v14 = a1 + 64;
  v13 = v15;
  v16 = 1 << *(v14 - 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  v22[1] = v3 + 16;
  if ((v17 & v13) != 0)
  {
    do
    {
      v20 = v12;
LABEL_9:
      v21 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      (*(v3 + 16))(v8, *(v23 + 56) + *(v3 + 72) * (v21 | (v20 << 6)), v2);
      sub_20CF435D8(v6, v8);
      result = (*(v3 + 8))(v6, v2);
    }

    while (v18);
  }

  while (1)
  {
    v20 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v20 >= v19)
    {

      return v24;
    }

    v18 = *(v14 + 8 * v20);
    ++v12;
    if (v18)
    {
      v12 = v20;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20CF435D8(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_20D563F98();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_20CF458DC(&unk_281120990, MEMORY[0x277D15488]);
  v33 = a2;
  v11 = sub_20D5677B8();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_20CF458DC(&qword_27C81D2F0, MEMORY[0x277D15488]);
      v21 = sub_20D5677E8();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_20CF438B8(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_20CF438B8(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_20D563F98();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 <= v10)
  {
    if (a3)
    {
      sub_20CF43E90();
    }

    else
    {
      sub_20CF43B74();
    }

    v12 = *v3;
    sub_20CF458DC(&unk_281120990, MEMORY[0x277D15488]);
    v13 = sub_20D5677B8();
    v14 = v12 + 56;
    v30 = v12;
    v15 = -1 << *(v12 + 32);
    a2 = v13 & ~v15;
    if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v16 = ~v15;
      v19 = *(v7 + 16);
      v18 = v7 + 16;
      v17 = v19;
      v20 = *(v18 + 56);
      do
      {
        v17(v9, *(v30 + 48) + v20 * a2, v6);
        sub_20CF458DC(&qword_27C81D2F0, MEMORY[0x277D15488]);
        v21 = sub_20D5677E8();
        (*(v18 - 8))(v9, v6);
        if (v21)
        {
          goto LABEL_14;
        }

        a2 = (a2 + 1) & v16;
      }

      while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

  else if ((a3 & 1) == 0)
  {
    sub_20CF4499C(MEMORY[0x277D15488], &qword_27C81D2F8);
  }

  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_14:
  result = sub_20D568C58();
  __break(1u);
  return result;
}

uint64_t sub_20CF43B74()
{
  v1 = v0;
  v32 = sub_20D563F98();
  v2 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D2F8);
  v6 = sub_20D568818();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_20CF458DC(&unk_281120990, MEMORY[0x277D15488]);
      result = sub_20D5677B8();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_20CF43E90()
{
  v1 = v0;
  v35 = sub_20D563F98();
  v2 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D2F8);
  result = sub_20D568818();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_20CF458DC(&unk_281120990, MEMORY[0x277D15488]);
      result = sub_20D5677B8();
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
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
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
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t sub_20CF441EC(uint64_t a1)
{
  v2 = sub_20D5644A8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v22 - v7;
  v9 = *(a1 + 16);
  v10 = sub_20CF458DC(&qword_281120978, MEMORY[0x277D15D48]);
  result = MEMORY[0x20F31D1D0](v9, v2, v10);
  v12 = 0;
  v23 = a1;
  v24 = result;
  v15 = *(a1 + 64);
  v14 = a1 + 64;
  v13 = v15;
  v16 = 1 << *(v14 - 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  v22[1] = v3 + 16;
  if ((v17 & v13) != 0)
  {
    do
    {
      v20 = v12;
LABEL_9:
      v21 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      (*(v3 + 16))(v8, *(v23 + 56) + *(v3 + 72) * (v21 | (v20 << 6)), v2);
      sub_20CF44400(v6, v8);
      result = (*(v3 + 8))(v6, v2);
    }

    while (v18);
  }

  while (1)
  {
    v20 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v20 >= v19)
    {

      return v24;
    }

    v18 = *(v14 + 8 * v20);
    ++v12;
    if (v18)
    {
      v12 = v20;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20CF44400(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_20D5644A8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_20CF458DC(&qword_281120978, MEMORY[0x277D15D48]);
  v33 = a2;
  v11 = sub_20D5677B8();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_20CF458DC(&qword_27C81D2E0, MEMORY[0x277D15D48]);
      v21 = sub_20D5677E8();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_20CF446E0(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_20CF446E0(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_20D5644A8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 <= v10)
  {
    if (a3)
    {
      sub_20CF44EF0();
    }

    else
    {
      sub_20CF44BD4();
    }

    v12 = *v3;
    sub_20CF458DC(&qword_281120978, MEMORY[0x277D15D48]);
    v13 = sub_20D5677B8();
    v14 = v12 + 56;
    v30 = v12;
    v15 = -1 << *(v12 + 32);
    a2 = v13 & ~v15;
    if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v16 = ~v15;
      v19 = *(v7 + 16);
      v18 = v7 + 16;
      v17 = v19;
      v20 = *(v18 + 56);
      do
      {
        v17(v9, *(v30 + 48) + v20 * a2, v6);
        sub_20CF458DC(&qword_27C81D2E0, MEMORY[0x277D15D48]);
        v21 = sub_20D5677E8();
        (*(v18 - 8))(v9, v6);
        if (v21)
        {
          goto LABEL_14;
        }

        a2 = (a2 + 1) & v16;
      }

      while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

  else if ((a3 & 1) == 0)
  {
    sub_20CF4499C(MEMORY[0x277D15D48], &qword_27C81D2E8);
  }

  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_14:
  result = sub_20D568C58();
  __break(1u);
  return result;
}

void *sub_20CF4499C(uint64_t (*a1)(void), uint64_t *a2)
{
  v4 = v2;
  v5 = a1(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v9 = *v2;
  v10 = sub_20D568808();
  v11 = v10;
  if (*(v9 + 16))
  {
    v25 = v4;
    result = (v10 + 56);
    v13 = ((1 << *(v11 + 32)) + 63) >> 6;
    if (v11 != v9 || result >= v9 + 56 + 8 * v13)
    {
      result = memmove(result, (v9 + 56), 8 * v13);
    }

    v15 = 0;
    *(v11 + 16) = *(v9 + 16);
    v16 = 1 << *(v9 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v9 + 56);
    v19 = (v16 + 63) >> 6;
    v26 = v6 + 32;
    for (i = v6 + 16; v18; result = (*(v6 + 32))(*(v11 + 48) + v23, v8, v5))
    {
      v20 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v23 = *(v6 + 72) * (v20 | (v15 << 6));
      (*(v6 + 16))(v8, *(v9 + 48) + v23, v5);
    }

    v21 = v15;
    while (1)
    {
      v15 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v15 >= v19)
      {

        v4 = v25;
        goto LABEL_21;
      }

      v22 = *(v9 + 56 + 8 * v15);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v18 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v4 = v11;
  }

  return result;
}

uint64_t sub_20CF44BD4()
{
  v1 = v0;
  v32 = sub_20D5644A8();
  v2 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D2E8);
  v6 = sub_20D568818();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_20CF458DC(&qword_281120978, MEMORY[0x277D15D48]);
      result = sub_20D5677B8();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_20CF44EF0()
{
  v1 = v0;
  v35 = sub_20D5644A8();
  v2 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D2E8);
  result = sub_20D568818();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_20CF458DC(&qword_281120978, MEMORY[0x277D15D48]);
      result = sub_20D5677B8();
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
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
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
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t _s6HomeUI24SidebarTabElementBuilderV4KindO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v31 = a1;
  v32 = a2;
  v2 = sub_20D563818();
  v30 = *(v2 - 8);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v29 - v6;
  v8 = type metadata accessor for SidebarTabElementBuilder.Kind(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v29 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v29 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D308);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v20 = &v29 - v19;
  v21 = *(v18 + 56);
  sub_20CF457CC(v31, &v29 - v19, type metadata accessor for SidebarTabElementBuilder.Kind);
  sub_20CF457CC(v32, &v20[v21], type metadata accessor for SidebarTabElementBuilder.Kind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v23 = v30;
    if (EnumCaseMultiPayload)
    {
      sub_20CF457CC(v20, v14, type metadata accessor for SidebarTabElementBuilder.Kind);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_15;
      }

      (*(v23 + 32))(v5, &v20[v21], v2);
      v25 = sub_20D5637D8();
      v26 = *(v23 + 8);
      v26(v5, v2);
      v26(v14, v2);
    }

    else
    {
      sub_20CF457CC(v20, v16, type metadata accessor for SidebarTabElementBuilder.Kind);
      if (swift_getEnumCaseMultiPayload())
      {
        v14 = v16;
LABEL_15:
        (*(v23 + 8))(v14, v2);
        goto LABEL_16;
      }

      (*(v23 + 32))(v7, &v20[v21], v2);
      v25 = sub_20D5637D8();
      v27 = *(v23 + 8);
      v27(v7, v2);
      v27(v16, v2);
    }

    sub_20CF45834(v20, type metadata accessor for SidebarTabElementBuilder.Kind);
    return v25 & 1;
  }

  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_16;
      }

      goto LABEL_12;
    }

    if (swift_getEnumCaseMultiPayload() == 4)
    {
LABEL_12:
      sub_20CF45834(v20, type metadata accessor for SidebarTabElementBuilder.Kind);
      v25 = 1;
      return v25 & 1;
    }

LABEL_16:
    sub_20CEF928C(v20, &qword_27C81D308);
    v25 = 0;
    return v25 & 1;
  }

  sub_20CF457CC(v20, v11, type metadata accessor for SidebarTabElementBuilder.Kind);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    goto LABEL_16;
  }

  v24 = *v11 ^ v20[v21];
  sub_20CF45834(v20, type metadata accessor for SidebarTabElementBuilder.Kind);
  v25 = v24 ^ 1;
  return v25 & 1;
}

uint64_t sub_20CF456E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_20CF4574C()
{
  result = qword_281120008;
  if (!qword_281120008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C81D2B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281120008);
  }

  return result;
}

uint64_t sub_20CF457CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20CF45834(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20CF458DC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_20CF4594C()
{
  type metadata accessor for SidebarTabElementBuilder.Kind(319);
  if (v0 <= 0x3F)
  {
    sub_20CF261B8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_20CF45A28()
{
  result = sub_20D563818();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

Swift::Bool __swiftcall NSCollectionLayoutEnvironment.isValid(for:overrideContentSize:)(HUGridLayoutOptions *a1, CGSize_optional overrideContentSize)
{
  v5 = v3;
  v6 = v2;
  v7 = *&overrideContentSize.is_nil;
  [(HUGridLayoutOptions *)a1 viewSize:overrideContentSize.value.width];
  v10 = v9;
  v12 = v11;
  if (v5)
  {
    [objc_msgSend(v4 container)];
    v14 = v13;
    v16 = v15;
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = v7;
    v16 = v6;
  }

  if (v10 != v14 || v12 != v16)
  {
    return 0;
  }

  sub_20CF45BD0();
  v19 = [(HUGridLayoutOptions *)a1 contentSizeCategory];
  v20 = [v4 traitCollection];
  v21 = [v20 preferredContentSizeCategory];

  LOBYTE(v20) = sub_20D5683F8();
  return v20 & 1;
}

unint64_t sub_20CF45BD0()
{
  result = qword_28111FB10;
  if (!qword_28111FB10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28111FB10);
  }

  return result;
}

void __swiftcall NSCollectionLayoutEnvironment.layoutOptions(overrideContentSize:)(HUGridLayoutOptions *__return_ptr retstr, CGSize_optional overrideContentSize)
{
  v5 = v3;
  v6 = v2;
  v7 = *&overrideContentSize.is_nil;
  v8 = objc_opt_self();
  v9 = [v8 isAMac];
  if (![v8 useMacIdiom])
  {
    v10 = 0;
    if ((v5 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    [objc_msgSend(v4 container)];
    v11 = v13;
    v12 = v14;
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  v10 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  if (v5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v11 = v7;
  v12 = v6;
LABEL_6:
  v15 = [objc_opt_self() defaultOptionsForViewSize:v9 columnStyle:v10 overrideSizeSubclass:{v11, v12}];
  v16 = [v4 traitCollection];
  v17 = [v16 preferredContentSizeCategory];

  [v15 setContentSizeCategory_];
}

uint64_t sub_20CF45F18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_20D567C18();
  v3[5] = sub_20D567C08();
  v5 = sub_20D567BA8();

  return MEMORY[0x2822009F8](sub_20CF45FB4, v5, v4);
}

uint64_t sub_20CF45FB4()
{
  v1 = v0[4];
  v3 = v0[2];
  v2 = v0[3];

  v0[6] = _Block_copy(v2);
  v4 = v3;
  v5 = v1;
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_20CF46088;
  v7 = v0[2];

  return sub_20CF47244(v7);
}

uint64_t sub_20CF46088()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 16);
  v6 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_20CF461E0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_20CEF934C;

  return sub_20CF45F18(v2, v3, v4);
}

uint64_t sub_20CF46294(uint64_t a1)
{
  v2 = sub_20D5641F8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v22 - v7;
  v9 = *(a1 + 16);
  v10 = sub_20CF47D54(&qword_27C81D310);
  result = MEMORY[0x20F31D1D0](v9, v2, v10);
  v12 = 0;
  v23 = a1;
  v24 = result;
  v15 = *(a1 + 64);
  v14 = a1 + 64;
  v13 = v15;
  v16 = 1 << *(v14 - 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  v22[1] = v3 + 16;
  if ((v17 & v13) != 0)
  {
    do
    {
      v20 = v12;
LABEL_9:
      v21 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      (*(v3 + 16))(v8, *(v23 + 56) + *(v3 + 72) * (v21 | (v20 << 6)), v2);
      sub_20CF46494(v6, v8);
      result = (*(v3 + 8))(v6, v2);
    }

    while (v18);
  }

  while (1)
  {
    v20 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v20 >= v19)
    {

      return v24;
    }

    v18 = *(v14 + 8 * v20);
    ++v12;
    if (v18)
    {
      v12 = v20;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20CF46494(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_20D5641F8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_20CF47D54(&qword_27C81D310);
  v33 = a2;
  v11 = sub_20D5677B8();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_20CF47D54(&qword_27C81D318);
      v21 = sub_20D5677E8();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_20CF4674C(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_20CF4674C(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_20D5641F8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 <= v10)
  {
    if (a3)
    {
      sub_20CF46EFC();
    }

    else
    {
      sub_20CF46BF4();
    }

    v12 = *v3;
    sub_20CF47D54(&qword_27C81D310);
    v13 = sub_20D5677B8();
    v14 = v12 + 56;
    v30 = v12;
    v15 = -1 << *(v12 + 32);
    a2 = v13 & ~v15;
    if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v16 = ~v15;
      v19 = *(v7 + 16);
      v18 = v7 + 16;
      v17 = v19;
      v20 = *(v18 + 56);
      do
      {
        v17(v9, *(v30 + 48) + v20 * a2, v6);
        sub_20CF47D54(&qword_27C81D318);
        v21 = sub_20D5677E8();
        (*(v18 - 8))(v9, v6);
        if (v21)
        {
          goto LABEL_14;
        }

        a2 = (a2 + 1) & v16;
      }

      while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

  else if ((a3 & 1) == 0)
  {
    sub_20CF469BC();
  }

  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_14:
  result = sub_20D568C58();
  __break(1u);
  return result;
}

void *sub_20CF469BC()
{
  v1 = v0;
  v2 = sub_20D5641F8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81D320);
  v6 = *v0;
  v7 = sub_20D568808();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
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

uint64_t sub_20CF46BF4()
{
  v1 = v0;
  v32 = sub_20D5641F8();
  v2 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81D320);
  v6 = sub_20D568818();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_20CF47D54(&qword_27C81D310);
      result = sub_20D5677B8();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_20CF46EFC()
{
  v1 = v0;
  v35 = sub_20D5641F8();
  v2 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81D320);
  result = sub_20D568818();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_20CF47D54(&qword_27C81D310);
      result = sub_20D5677B8();
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
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
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
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t sub_20CF47244(uint64_t a1)
{
  v1[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D2C0);
  v1[3] = swift_task_alloc();
  v2 = sub_20D5641F8();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v3 = sub_20D5641B8();
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v4 = sub_20D563818();
  v1[13] = v4;
  v1[14] = *(v4 - 8);
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  sub_20D567C18();
  v1[19] = sub_20D567C08();
  v6 = sub_20D567BA8();
  v1[20] = v6;
  v1[21] = v5;

  return MEMORY[0x2822009F8](sub_20CF47470, v6, v5);
}

uint64_t sub_20CF47470()
{
  objc_opt_self();
  v67 = swift_dynamicCastObjCClass();
  if (v67)
  {
    v1 = *(v0 + 16);
    v2 = [v67 home];
    if (v2)
    {
      v4 = *(v0 + 136);
      v3 = *(v0 + 144);
      v6 = *(v0 + 104);
      v5 = *(v0 + 112);
      v7 = v2;
      v8 = [v2 uniqueIdentifier];

      sub_20D5637E8();
      (*(v5 + 32))(v3, v4, v6);
      sub_20D563F48();
      v9 = sub_20D563F18();
      v10 = sub_20D563EE8();

      if (*(v10 + 16))
      {
        v11 = sub_20CEED7C0(*(v0 + 144));
        if (v12)
        {
          v13 = *(v0 + 112);
          v15 = *(v0 + 88);
          v14 = *(v0 + 96);
          v17 = *(v0 + 72);
          v16 = *(v0 + 80);
          v18 = *(v0 + 40);
          (*(v16 + 16))(v15, *(v10 + 56) + *(v16 + 72) * v11, v17);

          (*(v16 + 32))(v14, v15, v17);
          v19 = sub_20D564158();
          v20 = sub_20CF46294(v19);
          v21 = v20 + 56;
          v22 = -1;
          v23 = -1 << *(v20 + 32);
          if (-v23 < 64)
          {
            v22 = ~(-1 << -v23);
          }

          v24 = v22 & *(v20 + 56);
          v25 = (63 - v23) >> 6;
          v61 = v18;
          v62 = (v13 + 8);
          v63 = (v18 + 32);
          v60 = (v18 + 8);
          v64 = v20;
          v26 = sub_20D5663C8();
          v28 = 0;
          if (v24)
          {
            while (1)
            {
              v29 = v28;
LABEL_12:
              v30 = *(v0 + 120);
              v65 = *(v0 + 128);
              v66 = *(v0 + 104);
              v32 = *(v0 + 48);
              v31 = *(v0 + 56);
              v33 = *(v0 + 32);
              (*(v61 + 16))(v31, *(v64 + 48) + *(v61 + 72) * (__clz(__rbit64(v24)) | (v29 << 6)), v33);
              v59 = *(v61 + 32);
              v59(v32, v31, v33);
              sub_20D5641C8();
              v34 = [v67 accessory];
              v35 = [v34 uniqueIdentifier];

              sub_20D5637E8();
              LOBYTE(v34) = sub_20D5637D8();
              v36 = *v62;
              (*v62)(v30, v66);
              v36(v65, v66);
              if (v34)
              {
                break;
              }

              v24 &= v24 - 1;
              v26 = (*v60)(*(v0 + 48), *(v0 + 32));
              v28 = v29;
              if (!v24)
              {
                goto LABEL_9;
              }
            }

            v56 = *(v0 + 24);
            v57 = *(v0 + 48);
            v58 = *(v0 + 32);

            v59(v56, v57, v58);
            v42 = 0;
LABEL_19:
            v43 = *(v0 + 32);
            v44 = *(v0 + 40);
            v45 = *(v0 + 24);
            (*(v44 + 56))(v45, v42, 1, v43);

            if ((*(v44 + 48))(v45, 1, v43) == 1)
            {
              v46 = *(v0 + 144);
              v48 = *(v0 + 96);
              v47 = *(v0 + 104);
              v50 = *(v0 + 72);
              v49 = *(v0 + 80);
              v52 = *(v0 + 16);
              v51 = *(v0 + 24);

              (*(v49 + 8))(v48, v50);
              (*v62)(v46, v47);
              sub_20CF47CEC(v51);
              goto LABEL_21;
            }

            (*v63)(*(v0 + 64), *(v0 + 24), *(v0 + 32));
            sub_20D563C78();
            *(v0 + 176) = sub_20D563C68();
            v55 = swift_task_alloc();
            *(v0 + 184) = v55;
            *v55 = v0;
            v55[1] = sub_20CF47A60;
            v27 = *(v0 + 144);
            v26 = *(v0 + 64);
          }

          else
          {
LABEL_9:
            while (1)
            {
              v29 = v28 + 1;
              if (__OFADD__(v28, 1))
              {
                break;
              }

              if (v29 >= v25)
              {

                v42 = 1;
                goto LABEL_19;
              }

              v24 = *(v21 + 8 * v29);
              ++v28;
              if (v24)
              {
                goto LABEL_12;
              }
            }

            __break(1u);
          }

          return MEMORY[0x28216E530](v26, v27);
        }
      }

      v37 = *(v0 + 144);
      v38 = *(v0 + 104);
      v39 = *(v0 + 112);
      v40 = *(v0 + 16);

      (*(v39 + 8))(v37, v38);
    }

    else
    {
      v41 = *(v0 + 16);
    }
  }

  else
  {
  }

LABEL_21:

  v53 = *(v0 + 8);

  return v53();
}

uint64_t sub_20CF47A60()
{
  v1 = *v0;
  v2 = *(*v0 + 176);

  v3 = *(v1 + 168);
  v4 = *(v1 + 160);

  return MEMORY[0x2822009F8](sub_20CF47BA0, v4, v3);
}

uint64_t sub_20CF47BA0()
{
  v12 = v0[18];
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  v4 = v0[9];
  v5 = v0[10];
  v6 = v0[8];
  v7 = v0[4];
  v8 = v0[5];
  v9 = v0[2];

  (*(v8 + 8))(v6, v7);
  (*(v5 + 8))(v3, v4);
  (*(v2 + 8))(v12, v1);

  v10 = v0[1];

  return v10();
}

uint64_t sub_20CF47CEC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D2C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20CF47D54(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_20D5641F8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void HomeHubsAndBridgesListViewHostingController.init(home:)(void *a1)
{
  v3 = type metadata accessor for HomeHubsAndBridgesListView(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = [objc_allocWithZone(MEMORY[0x277D14430]) initWithHome_];
  *(v1 + qword_27C81D348) = v6;
  v7 = [a1 uniqueIdentifier];
  sub_20D5637E8();

  *v5 = 0;
  v5[1] = 0;
  v8 = sub_20D566C08();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = v8;
  v11 = sub_20D566C18();
  v13 = *v12;
  *v12 = sub_20CF4827C;
  v12[1] = v9;
  sub_20CEC8164(v13);
  v11(v18, 0);

  v14 = sub_20D5677F8();
  v15 = HFLocalizedString();

  if (!v15)
  {
    sub_20D567838();
    v15 = sub_20D5677F8();
  }

  [v10 setTitle_];

  v16 = [v10 view];
  if (v16)
  {
    v17 = [objc_opt_self() systemGroupedBackgroundColor];
    [v16 setBackgroundColor_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_20CF48094(uint64_t a1)
{
  v2 = sub_20D563818();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v3 + 16))(aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  v6 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  (*(v3 + 32))(v7 + v6, aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  aBlock[4] = sub_20CF512B4;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20CF13714;
  aBlock[3] = &block_descriptor_31;
  v8 = _Block_copy(aBlock);
  v9 = [objc_opt_self() futureWithBlock_];
  _Block_release(v8);
}

void sub_20CF48284(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_20D563818();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = [*(Strong + qword_27C81D348) reloadItems];
    (*(v6 + 16))(&aBlock[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v5);
    v11 = (*(v6 + 80) + 24) & ~*(v6 + 80);
    v12 = swift_allocObject();
    *(v12 + 16) = v9;
    (*(v6 + 32))(v12 + v11, &aBlock[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
    *(v12 + ((v7 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
    aBlock[4] = sub_20CF511C0;
    aBlock[5] = v12;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_20CF5134C;
    aBlock[3] = &block_descriptor_6;
    v13 = _Block_copy(aBlock);
    v14 = v9;
    v15 = a1;

    v16 = [v10 addCompletionBlock_];
    _Block_release(v13);
  }

  else
  {
    [a1 finishWithNoResult];
  }
}

void sub_20CF484D0(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, void *a5)
{
  v8 = sub_20D563818();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &aBlock[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [*&a3[qword_27C81D348] items];
  sub_20CECF940(0, &qword_281120AC0);
  sub_20CEF7F74(&qword_281120AB0, &qword_281120AC0);
  v13 = sub_20D567D08();

  v14 = sub_20CF81C08(v13);

  v15 = sub_20CFAFC14(v14);

  if (v15 && (MEMORY[0x28223BE20](v16), *(&v36 - 2) = a4, v17 = sub_20D06CD48(sub_20CF51288, (&v36 - 4), v15), , v17))
  {
    v18 = v17;
    sub_20CEF4868(MEMORY[0x277D84F90]);
    type metadata accessor for HFItemUpdateOption(0);
    sub_20CF508B8(&unk_28111FF20, type metadata accessor for HFItemUpdateOption);
    v19 = sub_20D567738();

    v20 = [v18 updateWithOptions_];

    v21 = swift_allocObject();
    v21[2] = v18;
    v21[3] = a3;
    v21[4] = a5;
    aBlock[4] = sub_20CF512A8;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_20CF5134C;
    aBlock[3] = &block_descriptor_22_1;
    v22 = _Block_copy(aBlock);
    v23 = v18;
    v24 = a3;
    v25 = a5;

    v26 = [v20 addCompletionBlock_];
    _Block_release(v22);
  }

  else
  {
    if (qword_27C81A1E0 != -1)
    {
      swift_once();
    }

    v27 = sub_20D565988();
    __swift_project_value_buffer(v27, qword_27C81D330);
    (*(v9 + 16))(v11, a4, v8);
    v28 = sub_20D565968();
    v29 = sub_20D567EC8();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      aBlock[0] = v31;
      *v30 = 136315138;
      sub_20CF508B8(&qword_2811209D0, MEMORY[0x277CC95F0]);
      v32 = sub_20D568BB8();
      v34 = v33;
      (*(v9 + 8))(v11, v8);
      v35 = sub_20CEE913C(v32, v34, aBlock);

      *(v30 + 4) = v35;
      _os_log_impl(&dword_20CEB6000, v28, v29, "Unable to find bridge with uuid %s. Not presenting detail view.", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x20F31FC70](v31, -1, -1);
      MEMORY[0x20F31FC70](v30, -1, -1);
    }

    else
    {

      (*(v9 + 8))(v11, v8);
    }

    [a5 finishWithNoResult];
  }
}

uint64_t sub_20CF489CC(id *a1)
{
  v2 = sub_20D563818();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_msgSend(*a1 homeKitObject)];
  swift_unknownObjectRelease();
  sub_20D5637E8();

  v7 = sub_20D5637D8();
  (*(v3 + 8))(v5, v2);
  return v7 & 1;
}

void sub_20CF48B04(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v9 = [objc_opt_self() serviceDetailVCWithItem_];
  [v9 setPresentationDelegate_];
  v7 = [a4 navigationController];
  if (v7)
  {
    v8 = v7;
  }

  [a5 finishWithNoResult];
}

void sub_20CF48BDC(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

id sub_20CF48C68()
{
  v1 = [v0 navigationController];
  if (v1)
  {
    v2 = v1;
  }

  v3 = [objc_opt_self() futureWithNoResult];

  return v3;
}

id sub_20CF48CF0(void *a1)
{
  v1 = a1;
  v2 = [v1 navigationController];
  if (v2)
  {
    v3 = v2;
  }

  v4 = [objc_opt_self() futureWithNoResult];

  return v4;
}

id HomeHubsAndBridgesListViewHostingController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HomeHubsAndBridgesListViewHostingController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t HomeHubsAndBridgesListView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v109 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81D350);
  MEMORY[0x28223BE20](v3);
  v5 = &v84 - v4;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C180);
  v6 = MEMORY[0x28223BE20](v101);
  v100 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v99 = &v84 - v8;
  v94 = type metadata accessor for BridgesListView.Config();
  v93 = *(v94 - 8);
  v9 = MEMORY[0x28223BE20](v94);
  v96 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v95 = &v84 - v11;
  v12 = sub_20D5644A8();
  v110 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_20D563DA8();
  v103 = *(v107 - 8);
  v15 = MEMORY[0x28223BE20](v107);
  v17 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v84 - v19;
  MEMORY[0x28223BE20](v18);
  v102 = &v84 - v21;
  v108 = type metadata accessor for HomeHubsAndBridgesListView.ContentView(0);
  v22 = MEMORY[0x28223BE20](v108);
  v97 = &v84 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v98 = &v84 - v24;
  v25 = sub_20D5641B8();
  v105 = *(v25 - 8);
  v106 = v25;
  v26 = MEMORY[0x28223BE20](v25);
  v28 = &v84 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v104 = &v84 - v29;
  sub_20D563F48();
  v30 = sub_20D563F18();
  v31 = sub_20D563EE8();

  if (!*(v31 + 16) || (v32 = type metadata accessor for HomeHubsAndBridgesListView(0), v33 = sub_20CEED7C0(v2 + *(v32 + 20)), (v34 & 1) == 0))
  {

    MEMORY[0x28223BE20](v43);
    *(&v84 - 2) = v2;
    sub_20D5640A8();
    swift_storeEnumTagMultiPayload();
    sub_20CF508B8(&qword_27C81D360, type metadata accessor for HomeHubsAndBridgesListView.ContentView);
    return sub_20D566D18();
  }

  v90 = v2;
  v91 = v3;
  v89 = v5;
  v36 = v105;
  v35 = v106;
  (*(v105 + 16))(v28, *(v31 + 56) + *(v105 + 72) * v33, v106);

  (*(v36 + 32))(v104, v28, v35);
  sub_20D564118();
  sub_20D564118();
  v37 = sub_20D563D48();
  v38 = *(v103 + 8);
  v39 = v107;
  v38(v20, v107);
  v40 = sub_20D564148();
  v41 = sub_20CF4ED84(v40);
  v42 = v41;
  if ((v37 & 1) == 0)
  {
    v45 = v41[2];
    if (v45)
    {
      v46 = sub_20CF4A860(v41[2], 0, &qword_27C81C288, &unk_20D5BCF90, MEMORY[0x277D15CB0]);
      v47 = *(sub_20D5643B8() - 8);
      v92 = sub_20CF5009C(v111, &v46[(*(v47 + 80) + 32) & ~*(v47 + 80)], v45, v42);
      v88 = v111[4];
      sub_20D5663C8();
      sub_20CEC80DC();
      if (v92 == v45)
      {
LABEL_10:
        v111[0] = v46;
        sub_20CF4AAD0(v111);
        v88 = 0;

        v87 = v111[0];
        goto LABEL_11;
      }

      __break(1u);
    }

    v46 = MEMORY[0x277D84F90];
    goto LABEL_10;
  }

  v111[0] = v41;
  sub_20D564118();
  sub_20D563D18();
  v38(v17, v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D368);
  sub_20CF156D0(&qword_27C81D370, &qword_27C81D368);
  v87 = sub_20D567DB8();

  v88 = 0;
LABEL_11:
  v48 = sub_20D564178();
  v49 = sub_20CF441EC(v48);
  v50 = v49;
  v51 = v49 + 56;
  v52 = 1 << *(v49 + 32);
  v53 = -1;
  if (v52 < 64)
  {
    v53 = ~(-1 << v52);
  }

  v54 = v53 & *(v49 + 56);
  v55 = (v52 + 63) >> 6;
  v56 = (v110 + 16);
  v57 = (v110 + 8);
  sub_20D5663C8();
  v58 = 0;
  v92 = MEMORY[0x277D84F90];
  while (1)
  {
    v59 = v58;
    if (!v54)
    {
      break;
    }

LABEL_18:
    v60 = __clz(__rbit64(v54));
    v54 &= v54 - 1;
    (*(v110 + 16))(v14, *(v50 + 48) + *(v110 + 72) * (v60 | (v58 << 6)), v12);
    if (sub_20D564438())
    {
      sub_20D564468();
      v86 = sub_20D564478();
      v85 = v61;
      v62 = sub_20D564488();
      v84 = v63;
      (*v57)(v14, v12);
      v64 = v94;
      v65 = v96;
      v66 = &v96[*(v94 + 20)];
      v67 = v85;
      *v66 = v86;
      v66[1] = v67;
      v68 = (v65 + *(v64 + 24));
      v69 = v84;
      *v68 = v62;
      v68[1] = v69;
      sub_20CF50340(v65, v95, type metadata accessor for BridgesListView.Config);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v92 = sub_20CEE8388(0, v92[2] + 1, 1, v92);
      }

      v71 = v92[2];
      v70 = v92[3];
      v72 = v71 + 1;
      if (v71 >= v70 >> 1)
      {
        v86 = v71 + 1;
        v74 = sub_20CEE8388(v70 > 1, v71 + 1, 1, v92);
        v72 = v86;
        v92 = v74;
      }

      v73 = v92;
      v92[2] = v72;
      sub_20CF50340(v95, v73 + ((*(v93 + 80) + 32) & ~*(v93 + 80)) + *(v93 + 72) * v71, type metadata accessor for BridgesListView.Config);
    }

    else
    {
      (*v57)(v14, v12);
    }
  }

  while (1)
  {
    v58 = v59 + 1;
    if (__OFADD__(v59, 1))
    {
      __break(1u);
      goto LABEL_29;
    }

    if (v58 >= v55)
    {
      break;
    }

    v54 = *(v51 + 8 * v58);
    ++v59;
    if (v54)
    {
      goto LABEL_18;
    }
  }

  v111[0] = v92;
  sub_20D5663C8();
  v56 = v88;
  sub_20CF4A9EC(v111);
  if (v56)
  {
    goto LABEL_30;
  }

  v75 = *v90;
  if (*v90)
  {
    v76 = v111[0];
    v77 = v90[1];
    v78 = v97;
    (*(v103 + 32))(v97, v102, v107);
    v79 = v108;
    *(v78 + *(v108 + 20)) = v87;
    *(v78 + *(v79 + 24)) = v76;
    v80 = (v78 + *(v79 + 28));
    *v80 = v75;
    v80[1] = v77;
    v81 = sub_20D563818();
    v82 = v99;
    (*(*(v81 - 8) + 56))(v99, 1, 1, v81);
    sub_20CEF9178(v82, v100, &qword_27C81C180);

    sub_20D567438();
    sub_20CEF928C(v82, &qword_27C81C180);
    v83 = v98;
    sub_20CF50340(v78, v98, type metadata accessor for HomeHubsAndBridgesListView.ContentView);
    sub_20CF50A44(v83, v89, type metadata accessor for HomeHubsAndBridgesListView.ContentView);
    swift_storeEnumTagMultiPayload();
    sub_20CF508B8(&qword_27C81D360, type metadata accessor for HomeHubsAndBridgesListView.ContentView);
    sub_20D566D18();
    sub_20CF50AAC(v83, type metadata accessor for HomeHubsAndBridgesListView.ContentView);
    return (*(v105 + 8))(v104, v106);
  }

LABEL_29:
  __break(1u);
LABEL_30:

  __break(1u);
  return result;
}

unint64_t sub_20CF49B08()
{
  sub_20D568858();

  type metadata accessor for HomeHubsAndBridgesListView(0);
  sub_20D563818();
  sub_20CF508B8(&qword_2811209D0, MEMORY[0x277CC95F0]);
  v0 = sub_20D568BB8();
  MEMORY[0x20F31CDB0](v0);

  return 0xD000000000000015;
}

uint64_t sub_20CF49BE4@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v2 = sub_20D566D38();
  v3 = *(v2 - 8);
  v25 = v2;
  v26 = v3;
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D400);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v22 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D408);
  v22 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D410);
  v13 = *(v12 - 8);
  v23 = v12;
  v24 = v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v22 - v14;
  type metadata accessor for HomeHubsAndBridgesListView.ContentView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81D3B8);
  sub_20D567468();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D418);
  (*(*(v16 - 8) + 56))(v8, 0, 1, v16);
  v28 = v1;
  sub_20D563818();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81D420);
  sub_20CF508B8(&qword_27C81C0E0, MEMORY[0x277CC95F0]);
  sub_20CF156D0(&qword_27C81D430, &unk_27C81D420);
  sub_20D567078();
  sub_20D566D28();
  v17 = sub_20CF156D0(&qword_27C81D438, &qword_27C81D408);
  v18 = MEMORY[0x277CDE0D0];
  v19 = v25;
  sub_20D567288();
  (*(v26 + 8))(v5, v19);
  (*(v22 + 8))(v11, v9);
  v29 = v9;
  v30 = v19;
  v31 = v17;
  v32 = v18;
  swift_getOpaqueTypeConformance2();
  v20 = v23;
  sub_20D567208();
  return (*(v24 + 8))(v15, v20);
}

uint64_t sub_20CF4A028@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D440);
  MEMORY[0x28223BE20](v41);
  v4 = (&v38 - v3);
  v5 = type metadata accessor for HomeHubsSelectionListView(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D448);
  v8 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v42 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D450);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v38 - v14;
  v16 = type metadata accessor for HomeHubsAndBridgesListView.ContentView(0);
  v17 = v16;
  v18 = *(a1 + *(v16 + 20));
  if (*(v18 + 16))
  {
    v40 = v16;
    if (sub_20D563D48())
    {
      v19 = v5[5];
      v20 = sub_20D563DA8();
      (*(*(v20 - 8) + 16))(&v7[v19], a1, v20);
      v39 = v4;
      sub_20D5663C8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81D3B8);
      sub_20D567468();
      *v7 = v18;
      v21 = &v7[v5[7]];
      v45 = 1;
      sub_20D567438();
      v22 = v47;
      *v21 = v46;
      *(v21 + 1) = v22;
      v23 = &v7[v5[8]];
      v45 = 0;
      sub_20D567438();
      v24 = v47;
      *v23 = v46;
      *(v23 + 1) = v24;
      v25 = &v7[v5[9]];
      v45 = 0;
      sub_20D567438();
      v26 = v47;
      *v25 = v46;
      *(v25 + 1) = v26;
      v27 = &v7[v5[10]];
      v45 = 0;
      sub_20D567438();
      v28 = v47;
      *v27 = v46;
      *(v27 + 1) = v28;
      sub_20CF50A44(v7, v39, type metadata accessor for HomeHubsSelectionListView);
      swift_storeEnumTagMultiPayload();
      sub_20CF508B8(&qword_27C81D458, type metadata accessor for HomeHubsSelectionListView);
      sub_20CF50900();
      v29 = v42;
      sub_20D566D18();
      v30 = v29;
      sub_20CF50AAC(v7, type metadata accessor for HomeHubsSelectionListView);
    }

    else
    {
      *v4 = v18;
      swift_storeEnumTagMultiPayload();
      sub_20CF508B8(&qword_27C81D458, type metadata accessor for HomeHubsSelectionListView);
      sub_20CF50900();
      sub_20D5663C8();
      v30 = v42;
      sub_20D566D18();
    }

    sub_20CF50954(v30, v15);
    (*(v8 + 56))(v15, 0, 1, v43);
    v17 = v40;
  }

  else
  {
    (*(v8 + 56))(v15, 1, 1, v43);
  }

  v31 = *(a1 + *(v17 + 24));
  if (*(v31 + 16))
  {
    v32 = (a1 + *(v17 + 28));
    v33 = *v32;
    v34 = v32[1];
    swift_bridgeObjectRetain_n();
    swift_retain_n();
  }

  else
  {
    v31 = 0;
    v33 = 0;
    v34 = 0;
  }

  sub_20CEF9178(v15, v13, &qword_27C81D450);
  v35 = v44;
  sub_20CEF9178(v13, v44, &qword_27C81D450);
  v36 = (v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D468) + 48));
  sub_20CF509C4(v31);
  sub_20CF50A04(v31);
  *v36 = v31;
  v36[1] = v33;
  v36[2] = v34;
  sub_20CEF928C(v15, &qword_27C81D450);
  sub_20CF50A04(v31);
  return sub_20CEF928C(v13, &qword_27C81D450);
}

uint64_t sub_20CF4A5F0()
{
  v0 = sub_20D565988();
  __swift_allocate_value_buffer(v0, qword_27C81D330);
  __swift_project_value_buffer(v0, qword_27C81D330);
  return sub_20D565978();
}

uint64_t static Logger.homeSettingLogger.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27C81A1E0 != -1)
  {
    swift_once();
  }

  v2 = sub_20D565988();
  v3 = __swift_project_value_buffer(v2, qword_27C81D330);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void *sub_20CF4A724(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81D470);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_20CF4A7A8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81D4B0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x6666666666666667) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

size_t sub_20CF4A860(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if (result - v10 != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_20CF4A95C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
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

uint64_t sub_20CF4A9EC(void **a1)
{
  v2 = *(type metadata accessor for BridgesListView.Config() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_20D057CB0(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_20CF4ABB4(v6, type metadata accessor for BridgesListView.Config, sub_20CF4B788, sub_20CF4AD04);
  *a1 = v3;
  return result;
}

uint64_t sub_20CF4AAD0(void **a1)
{
  v2 = *(sub_20D5643B8() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_20D057CC4(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_20CF4ABB4(v6, MEMORY[0x277D15CB0], sub_20CF4C640, sub_20CF4B204);
  *a1 = v3;
  return result;
}

uint64_t sub_20CF4ABB4(uint64_t a1, void (*a2)(void), void (*a3)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a4)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = *(a1 + 8);
  result = sub_20D568BA8();
  if (result < v8)
  {
    if (v8 >= -1)
    {
      v10 = result;
      v11 = v8 / 2;
      if (v8 <= 1)
      {
        v12 = MEMORY[0x277D84F90];
      }

      else
      {
        a2(0);
        v12 = sub_20D567AE8();
        *(v12 + 16) = v11;
      }

      v13 = *((a2)(0) - 8);
      v14[0] = v12 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
      v14[1] = v11;
      a3(v14, v15, a1, v10);
      *(v12 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v8 < 0)
  {
    goto LABEL_12;
  }

  if (v8)
  {
    return a4(0, v8, 1, a1);
  }

  return result;
}

uint64_t sub_20CF4AD04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v63 = sub_20D5645F8();
  v8 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v62 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for BridgesListView.Config();
  v11 = MEMORY[0x28223BE20](v10);
  v58 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v49 - v14;
  result = MEMORY[0x28223BE20](v13);
  v19 = &v49 - v18;
  v51 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v21 = *(v17 + 72);
    v60 = v10;
    v61 = (v8 + 8);
    v22 = v20 + v21 * (a3 - 1);
    v56 = -v21;
    v57 = v20;
    v23 = a1 - a3;
    v50 = v21;
    v24 = v20 + v21 * a3;
    v64 = v15;
    v59 = &v49 - v18;
LABEL_6:
    v54 = v22;
    v55 = a3;
    v52 = v24;
    v53 = v23;
    v25 = v23;
    while (1)
    {
      v67 = v25;
      sub_20CF50A44(v24, v19, type metadata accessor for BridgesListView.Config);
      sub_20CF50A44(v22, v15, type metadata accessor for BridgesListView.Config);
      v26 = *(v10 + 24);
      v27 = *&v19[v26 + 8];
      if (v27)
      {
        v28 = *&v19[v26];
        sub_20D5663C8();
        sub_20D5663C8();
        v29 = v62;
        sub_20D5645E8();
        v30 = sub_20D5645D8();
        v32 = v31;
        (*v61)(v29, v63);
        v65 = v28;
        v66 = v27;
        sub_20D5663C8();
        MEMORY[0x20F31CDB0](32, 0xE100000000000000);
        MEMORY[0x20F31CDB0](v30, v32);
        v15 = v64;

        v34 = v65;
        v33 = v66;
        v26 = *(v10 + 24);
      }

      else
      {
        v35 = &v19[*(v10 + 20)];
        v34 = *v35;
        v33 = *(v35 + 1);
        sub_20D5663C8();
      }

      v36 = *&v15[v26 + 8];
      if (v36)
      {
        v37 = *&v15[v26];
        sub_20D5663C8();
        sub_20D5663C8();
        v38 = v62;
        sub_20D5645E8();
        v39 = sub_20D5645D8();
        v41 = v40;
        (*v61)(v38, v63);
        v65 = v37;
        v66 = v36;
        sub_20D5663C8();
        MEMORY[0x20F31CDB0](32, 0xE100000000000000);
        MEMORY[0x20F31CDB0](v39, v41);

        v43 = v65;
        v42 = v66;
      }

      else
      {
        v44 = &v15[*(v10 + 20)];
        v43 = *v44;
        v42 = *(v44 + 1);
        sub_20D5663C8();
      }

      v45 = v67;
      if (v34 == v43 && v33 == v42)
      {

        v15 = v64;
        sub_20CF50AAC(v64, type metadata accessor for BridgesListView.Config);
        v19 = v59;
        result = sub_20CF50AAC(v59, type metadata accessor for BridgesListView.Config);
        v10 = v60;
LABEL_5:
        a3 = v55 + 1;
        v22 = v54 + v50;
        v23 = v53 - 1;
        v24 = v52 + v50;
        if (v55 + 1 == v51)
        {
          return result;
        }

        goto LABEL_6;
      }

      v46 = sub_20D568BF8();

      v15 = v64;
      sub_20CF50AAC(v64, type metadata accessor for BridgesListView.Config);
      v19 = v59;
      result = sub_20CF50AAC(v59, type metadata accessor for BridgesListView.Config);
      v10 = v60;
      if ((v46 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v57)
      {
        break;
      }

      v47 = v58;
      sub_20CF50340(v24, v58, type metadata accessor for BridgesListView.Config);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_20CF50340(v47, v22, type metadata accessor for BridgesListView.Config);
      v22 += v56;
      v24 += v56;
      v48 = __CFADD__(v45, 1);
      v25 = v45 + 1;
      if (v48)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_20CF4B204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v73 = sub_20D5645F8();
  v8 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v72 = &v55[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_20D5643B8();
  v11 = MEMORY[0x28223BE20](v10);
  v66 = &v55[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v55[-v14];
  result = MEMORY[0x28223BE20](v13);
  v19 = &v55[-v17];
  v57 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v22 = *(v18 + 16);
    v21 = v18 + 16;
    v23 = *(v21 + 56);
    v70 = v21;
    v71 = (v8 + 8);
    v67 = (v21 - 8);
    v68 = v22;
    v24 = v20 + v23 * (a3 - 1);
    v63 = -v23;
    v64 = (v21 + 16);
    v25 = a1 - a3;
    v65 = v20;
    v56 = v23;
    v26 = v20 + v23 * a3;
    v69 = &v55[-v17];
    v62 = v10;
    v77 = v15;
LABEL_6:
    v60 = v24;
    v61 = a3;
    v58 = v26;
    v59 = v25;
    v28 = v25;
    while (1)
    {
      v29 = v68;
      v68(v19, v26, v10);
      v29(v15, v24, v10);
      v30 = sub_20D5643A8();
      v74 = v28;
      if (v31)
      {
        v32 = v30;
        v33 = v31;
        sub_20D564378();
        sub_20D5663C8();
        v34 = v72;
        sub_20D5645E8();
        v35 = sub_20D5645D8();
        v37 = v36;
        (*v71)(v34, v73);
        if (v35 == v32 && v33 == v37)
        {
        }

        else if (sub_20D568BF8())
        {

          v32 = v35;
        }

        else
        {
          v75 = v32;
          v76 = v33;
          MEMORY[0x20F31CDB0](32, 0xE100000000000000);
          MEMORY[0x20F31CDB0](v35, v37);

          v32 = v75;
          v37 = v76;
        }
      }

      else
      {
        v32 = sub_20D564378();
        v37 = v38;
      }

      v39 = sub_20D5643A8();
      if (v40)
      {
        v41 = v39;
        v42 = v40;
        sub_20D564378();
        sub_20D5663C8();
        v43 = v72;
        sub_20D5645E8();
        v44 = sub_20D5645D8();
        v46 = v45;
        (*v71)(v43, v73);
        if (v44 == v41 && v42 == v46)
        {
        }

        else if (sub_20D568BF8())
        {

          v41 = v44;
        }

        else
        {
          v75 = v41;
          v76 = v42;
          MEMORY[0x20F31CDB0](32, 0xE100000000000000);
          MEMORY[0x20F31CDB0](v44, v46);

          v41 = v75;
          v46 = v76;
        }

        v10 = v62;
        if (v32 != v41)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v47 = sub_20D564378();
        v46 = v48;
        if (v32 != v47)
        {
          goto LABEL_26;
        }
      }

      if (v37 == v46)
      {

        v27 = *v67;
        v15 = v77;
        (*v67)(v77, v10);
        v19 = v69;
        result = v27(v69, v10);
LABEL_5:
        a3 = v61 + 1;
        v24 = v60 + v56;
        v25 = v59 - 1;
        v26 = v58 + v56;
        if (v61 + 1 == v57)
        {
          return result;
        }

        goto LABEL_6;
      }

LABEL_26:
      v49 = sub_20D568BF8();

      v50 = *v67;
      v15 = v77;
      (*v67)(v77, v10);
      v19 = v69;
      result = v50(v69, v10);
      v51 = v74;
      if ((v49 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v65)
      {
        __break(1u);
        return result;
      }

      v52 = *v64;
      v53 = v66;
      (*v64)(v66, v26, v10);
      swift_arrayInitWithTakeFrontToBack();
      result = v52(v24, v53, v10);
      v24 += v63;
      v26 += v63;
      v54 = __CFADD__(v51, 1);
      v28 = v51 + 1;
      if (v54)
      {
        goto LABEL_5;
      }
    }
  }

  return result;
}

uint64_t sub_20CF4B788(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v153 = a4;
  v154 = a1;
  v175 = sub_20D5645F8();
  v7 = *(v175 - 8);
  MEMORY[0x28223BE20](v175);
  v174 = &v149 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for BridgesListView.Config();
  v164 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v157 = &v149 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v171 = &v149 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v149 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v149 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v167 = &v149 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v23 = MEMORY[0x28223BE20](v22);
  v151 = &v149 - v24;
  result = MEMORY[0x28223BE20](v23);
  v150 = &v149 - v27;
  v165 = a3;
  v28 = *(a3 + 8);
  if (v28 < 1)
  {
    v30 = MEMORY[0x277D84F90];
LABEL_115:
    v7 = *v154;
    if (!*v154)
    {
      goto LABEL_154;
    }

    a3 = v30;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a3;
LABEL_118:
      v180 = result;
      a3 = *(result + 16);
      if (a3 >= 2)
      {
        while (*v165)
        {
          v145 = *(result + 16 * a3);
          v146 = result;
          v147 = *(result + 16 * (a3 - 1) + 40);
          sub_20CF4D744(*v165 + *(v164 + 72) * v145, *v165 + *(v164 + 72) * *(result + 16 * (a3 - 1) + 32), *v165 + *(v164 + 72) * v147, v7);
          if (v5)
          {
          }

          if (v147 < v145)
          {
            goto LABEL_141;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v146 = sub_20D057C88(v146);
          }

          if (a3 - 2 >= *(v146 + 2))
          {
            goto LABEL_142;
          }

          v148 = &v146[16 * a3];
          *v148 = v145;
          *(v148 + 1) = v147;
          v180 = v146;
          sub_20D057BFC(a3 - 1);
          result = v180;
          a3 = *(v180 + 16);
          if (a3 <= 1)
          {
          }
        }

        goto LABEL_152;
      }
    }

LABEL_148:
    result = sub_20D057C88(a3);
    goto LABEL_118;
  }

  v29 = 0;
  v173 = (v7 + 8);
  v30 = MEMORY[0x277D84F90];
  v168 = v9;
  v176 = v16;
  v172 = v19;
  v163 = v26;
  while (1)
  {
    v158 = v30;
    v155 = v29;
    if (v29 + 1 >= v28)
    {
      v41 = v29 + 1;
      v62 = v153;
    }

    else
    {
      v166 = v28;
      v152 = v5;
      v31 = v29;
      v32 = *v165;
      v33 = *(v164 + 72);
      v7 = *v165 + v33 * (v29 + 1);
      a3 = type metadata accessor for BridgesListView.Config;
      v34 = v150;
      sub_20CF50A44(v7, v150, type metadata accessor for BridgesListView.Config);
      v35 = v151;
      sub_20CF50A44(v32 + v33 * v31, v151, type metadata accessor for BridgesListView.Config);
      LODWORD(v169) = sub_20CF5FB58(v34, v35);
      sub_20CF50AAC(v35, type metadata accessor for BridgesListView.Config);
      result = sub_20CF50AAC(v34, type metadata accessor for BridgesListView.Config);
      v36 = v31 + 2;
      v170 = v33;
      v37 = v32 + v33 * v36;
      v38 = v163;
      while (1)
      {
        v41 = v166;
        if (v166 == v36)
        {
          break;
        }

        sub_20CF50A44(v37, v38, type metadata accessor for BridgesListView.Config);
        v42 = v167;
        sub_20CF50A44(v7, v167, type metadata accessor for BridgesListView.Config);
        v43 = *(v9 + 24);
        v44 = *(v38 + v43 + 8);
        if (v44)
        {
          v45 = *(v38 + v43);
          sub_20D5663C8();
          sub_20D5663C8();
          v46 = v174;
          sub_20D5645E8();
          v47 = sub_20D5645D8();
          v49 = v48;
          v50 = v46;
          v9 = v168;
          (*v173)(v50, v175);
          v178 = v45;
          v179 = v44;
          v42 = v167;
          sub_20D5663C8();
          MEMORY[0x20F31CDB0](32, 0xE100000000000000);
          MEMORY[0x20F31CDB0](v47, v49);

          v51 = v179;
          v177 = v178;
          v43 = *(v9 + 24);
        }

        else
        {
          v52 = (v38 + *(v9 + 20));
          v51 = v52[1];
          v177 = *v52;
          sub_20D5663C8();
        }

        v53 = *(v42 + v43 + 8);
        if (v53)
        {
          v54 = *(v42 + v43);
          sub_20D5663C8();
          sub_20D5663C8();
          v55 = v174;
          sub_20D5645E8();
          v56 = sub_20D5645D8();
          v58 = v57;
          (*v173)(v55, v175);
          v178 = v54;
          v179 = v53;
          sub_20D5663C8();
          MEMORY[0x20F31CDB0](32, 0xE100000000000000);
          MEMORY[0x20F31CDB0](v56, v58);

          v60 = v178;
          v59 = v179;
        }

        else
        {
          v61 = (v42 + *(v9 + 20));
          v60 = *v61;
          v59 = v61[1];
          sub_20D5663C8();
        }

        v38 = v163;
        if (v177 == v60 && v51 == v59)
        {
          v39 = 0;
        }

        else
        {
          v39 = sub_20D568BF8();
        }

        v9 = v168;

        a3 = type metadata accessor for BridgesListView.Config;
        sub_20CF50AAC(v167, type metadata accessor for BridgesListView.Config);
        result = sub_20CF50AAC(v38, type metadata accessor for BridgesListView.Config);
        v40 = v169 ^ v39;
        ++v36;
        v37 += v170;
        v7 += v170;
        v19 = v172;
        if (v40)
        {
          v41 = v36 - 1;
          break;
        }
      }

      v5 = v152;
      v62 = v153;
      v16 = v176;
      v29 = v155;
      if (v169)
      {
        if (v41 < v155)
        {
          goto LABEL_145;
        }

        if (v155 < v41)
        {
          v63 = v41;
          a3 = v170 * (v41 - 1);
          v64 = v41 * v170;
          v166 = v41;
          v65 = v155;
          v66 = v155 * v170;
          do
          {
            if (v65 != --v63)
            {
              v67 = *v165;
              if (!*v165)
              {
                goto LABEL_151;
              }

              v7 = v67 + v66;
              sub_20CF50340(v67 + v66, v157, type metadata accessor for BridgesListView.Config);
              if (v66 < a3 || v7 >= (v67 + v64))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v66 != a3)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_20CF50340(v157, v67 + a3, type metadata accessor for BridgesListView.Config);
              v16 = v176;
            }

            ++v65;
            a3 -= v170;
            v64 -= v170;
            v66 += v170;
          }

          while (v65 < v63);
          v62 = v153;
          v19 = v172;
          v29 = v155;
          v41 = v166;
        }
      }
    }

    v68 = v165[1];
    if (v41 >= v68)
    {
      goto LABEL_43;
    }

    if (__OFSUB__(v41, v29))
    {
      goto LABEL_144;
    }

    if (v41 - v29 >= v62)
    {
LABEL_43:
      v7 = v41;
      if (v41 < v29)
      {
        goto LABEL_143;
      }

      goto LABEL_44;
    }

    if (__OFADD__(v29, v62))
    {
      goto LABEL_146;
    }

    if (v29 + v62 >= v68)
    {
      v7 = v165[1];
    }

    else
    {
      v7 = v29 + v62;
    }

    if (v7 < v29)
    {
LABEL_147:
      __break(1u);
      goto LABEL_148;
    }

    if (v41 == v7)
    {
      goto LABEL_43;
    }

    v152 = v5;
    v114 = *v165;
    v115 = *(v164 + 72);
    v116 = *v165 + v115 * (v41 - 1);
    v169 = -v115;
    v170 = v114;
    v117 = v29 - v41;
    v156 = v115;
    v118 = v114 + v41 * v115;
    v159 = v7;
LABEL_96:
    v166 = v41;
    v160 = v118;
    v161 = v117;
    v119 = v118;
    v120 = v117;
    v162 = v116;
LABEL_97:
    v177 = v120;
    sub_20CF50A44(v119, v19, type metadata accessor for BridgesListView.Config);
    sub_20CF50A44(v116, v16, type metadata accessor for BridgesListView.Config);
    v121 = *(v9 + 24);
    v122 = *&v19[v121 + 8];
    if (v122)
    {
      v123 = *&v19[v121];
      sub_20D5663C8();
      sub_20D5663C8();
      v124 = v174;
      sub_20D5645E8();
      v125 = sub_20D5645D8();
      v127 = v126;
      v128 = v124;
      v16 = v176;
      (*v173)(v128, v175);
      v178 = v123;
      v179 = v122;
      sub_20D5663C8();
      MEMORY[0x20F31CDB0](32, 0xE100000000000000);
      MEMORY[0x20F31CDB0](v125, v127);

      v130 = v178;
      v129 = v179;
      v121 = *(v9 + 24);
    }

    else
    {
      v131 = &v19[*(v9 + 20)];
      v130 = *v131;
      v129 = *(v131 + 1);
      sub_20D5663C8();
    }

    v132 = *&v16[v121 + 8];
    if (v132)
    {
      v133 = *&v16[v121];
      sub_20D5663C8();
      sub_20D5663C8();
      v134 = v174;
      sub_20D5645E8();
      v135 = sub_20D5645D8();
      v137 = v136;
      (*v173)(v134, v175);
      v178 = v133;
      v179 = v132;
      sub_20D5663C8();
      MEMORY[0x20F31CDB0](32, 0xE100000000000000);
      v138 = v135;
      v9 = v168;
      MEMORY[0x20F31CDB0](v138, v137);

      v139 = v178;
      a3 = v179;
    }

    else
    {
      v140 = &v16[*(v9 + 20)];
      v139 = *v140;
      a3 = *(v140 + 1);
      sub_20D5663C8();
    }

    v19 = v172;
    if (v130 != v139 || v129 != a3)
    {
      break;
    }

    v16 = v176;
    sub_20CF50AAC(v176, type metadata accessor for BridgesListView.Config);
    sub_20CF50AAC(v19, type metadata accessor for BridgesListView.Config);
LABEL_95:
    v41 = v166 + 1;
    v116 = v162 + v156;
    v117 = v161 - 1;
    v7 = v159;
    v118 = v160 + v156;
    if (v166 + 1 != v159)
    {
      goto LABEL_96;
    }

    v5 = v152;
    if (v159 < v155)
    {
      goto LABEL_143;
    }

LABEL_44:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v30 = v158;
    }

    else
    {
      result = sub_20CEE81E4(0, *(v158 + 2) + 1, 1, v158);
      v30 = result;
    }

    v70 = *(v30 + 2);
    v69 = *(v30 + 3);
    a3 = v70 + 1;
    if (v70 >= v69 >> 1)
    {
      result = sub_20CEE81E4((v69 > 1), v70 + 1, 1, v30);
      v30 = result;
    }

    *(v30 + 2) = a3;
    v71 = &v30[16 * v70];
    *(v71 + 4) = v155;
    *(v71 + 5) = v7;
    v159 = v7;
    v7 = *v154;
    if (!*v154)
    {
      goto LABEL_153;
    }

    v72 = v5;
    if (v70)
    {
      while (2)
      {
        v5 = a3 - 1;
        if (a3 >= 4)
        {
          v77 = &v30[16 * a3 + 32];
          v78 = *(v77 - 64);
          v79 = *(v77 - 56);
          v83 = __OFSUB__(v79, v78);
          v80 = v79 - v78;
          if (v83)
          {
            goto LABEL_130;
          }

          v82 = *(v77 - 48);
          v81 = *(v77 - 40);
          v83 = __OFSUB__(v81, v82);
          v75 = v81 - v82;
          v76 = v83;
          if (v83)
          {
            goto LABEL_131;
          }

          v84 = &v30[16 * a3];
          v86 = *v84;
          v85 = *(v84 + 1);
          v83 = __OFSUB__(v85, v86);
          v87 = v85 - v86;
          if (v83)
          {
            goto LABEL_133;
          }

          v83 = __OFADD__(v75, v87);
          v88 = v75 + v87;
          if (v83)
          {
            goto LABEL_136;
          }

          if (v88 >= v80)
          {
            v106 = &v30[16 * v5 + 32];
            v108 = *v106;
            v107 = *(v106 + 1);
            v83 = __OFSUB__(v107, v108);
            v109 = v107 - v108;
            if (v83)
            {
              goto LABEL_140;
            }

            if (v75 < v109)
            {
              v5 = a3 - 2;
            }
          }

          else
          {
LABEL_63:
            if (v76)
            {
              goto LABEL_132;
            }

            v89 = &v30[16 * a3];
            v91 = *v89;
            v90 = *(v89 + 1);
            v92 = __OFSUB__(v90, v91);
            v93 = v90 - v91;
            v94 = v92;
            if (v92)
            {
              goto LABEL_135;
            }

            v95 = &v30[16 * v5 + 32];
            v97 = *v95;
            v96 = *(v95 + 1);
            v83 = __OFSUB__(v96, v97);
            v98 = v96 - v97;
            if (v83)
            {
              goto LABEL_138;
            }

            if (__OFADD__(v93, v98))
            {
              goto LABEL_139;
            }

            if (v93 + v98 < v75)
            {
              goto LABEL_77;
            }

            if (v75 < v98)
            {
              v5 = a3 - 2;
            }
          }
        }

        else
        {
          if (a3 == 3)
          {
            v73 = *(v30 + 4);
            v74 = *(v30 + 5);
            v83 = __OFSUB__(v74, v73);
            v75 = v74 - v73;
            v76 = v83;
            goto LABEL_63;
          }

          v99 = &v30[16 * a3];
          v101 = *v99;
          v100 = *(v99 + 1);
          v83 = __OFSUB__(v100, v101);
          v93 = v100 - v101;
          v94 = v83;
LABEL_77:
          if (v94)
          {
            goto LABEL_134;
          }

          v102 = &v30[16 * v5];
          v104 = *(v102 + 4);
          v103 = *(v102 + 5);
          v83 = __OFSUB__(v103, v104);
          v105 = v103 - v104;
          if (v83)
          {
            goto LABEL_137;
          }

          if (v105 < v93)
          {
            break;
          }
        }

        v110 = v5 - 1;
        if (v5 - 1 >= a3)
        {
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
          goto LABEL_147;
        }

        if (!*v165)
        {
          goto LABEL_150;
        }

        v111 = v30;
        a3 = *&v30[16 * v110 + 32];
        v112 = *&v30[16 * v5 + 40];
        sub_20CF4D744(*v165 + *(v164 + 72) * a3, *v165 + *(v164 + 72) * *&v30[16 * v5 + 32], *v165 + *(v164 + 72) * v112, v7);
        if (v72)
        {
        }

        if (v112 < a3)
        {
          goto LABEL_128;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v111 = sub_20D057C88(v111);
        }

        if (v110 >= *(v111 + 2))
        {
          goto LABEL_129;
        }

        v113 = &v111[16 * v110];
        *(v113 + 4) = a3;
        *(v113 + 5) = v112;
        v180 = v111;
        result = sub_20D057BFC(v5);
        v30 = v180;
        a3 = *(v180 + 16);
        v19 = v172;
        if (a3 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v28 = v165[1];
    v29 = v159;
    v5 = v72;
    if (v159 >= v28)
    {
      goto LABEL_115;
    }
  }

  v141 = sub_20D568BF8();

  a3 = type metadata accessor for BridgesListView.Config;
  v16 = v176;
  sub_20CF50AAC(v176, type metadata accessor for BridgesListView.Config);
  result = sub_20CF50AAC(v19, type metadata accessor for BridgesListView.Config);
  if ((v141 & 1) == 0)
  {
    goto LABEL_95;
  }

  v142 = v177;
  if (v170)
  {
    a3 = type metadata accessor for BridgesListView.Config;
    v143 = v171;
    sub_20CF50340(v119, v171, type metadata accessor for BridgesListView.Config);
    swift_arrayInitWithTakeFrontToBack();
    sub_20CF50340(v143, v116, type metadata accessor for BridgesListView.Config);
    v116 += v169;
    v119 += v169;
    v144 = __CFADD__(v142, 1);
    v120 = v142 + 1;
    if (v144)
    {
      goto LABEL_95;
    }

    goto LABEL_97;
  }

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
  return result;
}

uint64_t sub_20CF4C640(int64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v5;
  v177 = a4;
  v174 = a1;
  v201 = sub_20D5645F8();
  v8 = *(v201 - 8);
  MEMORY[0x28223BE20](v201);
  v200 = &v170 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v198 = sub_20D5643B8();
  v10 = *(v198 - 8);
  v11 = MEMORY[0x28223BE20](v198);
  v179 = &v170 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v191 = &v170 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v197 = &v170 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v170 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v186 = &v170 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v184 = &v170 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v173 = &v170 - v25;
  result = MEMORY[0x28223BE20](v24);
  v172 = &v170 - v27;
  v28 = a3[1];
  if (v28 < 1)
  {
    v30 = MEMORY[0x277D84F90];
LABEL_143:
    v31 = *v174;
    if (!*v174)
    {
      goto LABEL_182;
    }

    v4 = v30;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = v4;
LABEL_146:
      v205 = result;
      v4 = *(result + 16);
      if (v4 >= 2)
      {
        while (*a3)
        {
          v166 = *(result + 16 * v4);
          v167 = result;
          v168 = *(result + 16 * (v4 - 1) + 40);
          sub_20CF4E144(*a3 + v10[9] * v166, *a3 + v10[9] * *(result + 16 * (v4 - 1) + 32), *a3 + v10[9] * v168, v31);
          if (v6)
          {
          }

          if (v168 < v166)
          {
            goto LABEL_169;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v167 = sub_20D057C88(v167);
          }

          if (v4 - 2 >= *(v167 + 2))
          {
            goto LABEL_170;
          }

          v169 = &v167[16 * v4];
          *v169 = v166;
          *(v169 + 1) = v168;
          v205 = v167;
          sub_20D057BFC(v4 - 1);
          result = v205;
          v4 = *(v205 + 16);
          if (v4 <= 1)
          {
          }
        }

        goto LABEL_180;
      }
    }

LABEL_176:
    result = sub_20D057C88(v4);
    goto LABEL_146;
  }

  v29 = 0;
  v195 = v10 + 2;
  v196 = v10 + 1;
  v199 = (v8 + 8);
  v193 = v10 + 4;
  v30 = MEMORY[0x277D84F90];
  v171 = a3;
  v175 = v10;
  v194 = v19;
  while (1)
  {
    v31 = v29 + 1;
    v187 = v30;
    v176 = v29;
    if (v29 + 1 >= v28)
    {
      v42 = v177;
    }

    else
    {
      v183 = v28;
      v32 = *a3;
      v33 = v10[9];
      v34 = v29 + 1;
      v35 = v10[2];
      v36 = v198;
      v35(v172, v32 + v33 * v31, v198);
      v188 = v33;
      v182 = v35;
      v35(v173, v32 + v33 * v29, v36);
      v37 = sub_20D0CAA28();
      v39 = v38;
      v40 = sub_20D0CAA28();
      v180 = v6;
      if (v37 == v40 && v39 == v41)
      {
        LODWORD(v185) = 0;
      }

      else
      {
        LODWORD(v185) = sub_20D568BF8();
      }

      v43 = v184;

      v4 = *v196;
      (*v196)(v173, v36);
      v181 = v4;
      result = (v4)(v172, v36);
      v44 = (v176 + 2);
      v45 = v187;
      v46 = v188 * (v176 + 2);
      v31 = v32 + v46;
      v47 = v188 * v34;
      v10 = (v32 + v188 * v34);
      v48 = v186;
      do
      {
        v50 = v44;
        v52 = v34;
        v53 = v47;
        v51 = v46;
        v192 = v44;
        if (v44 >= v183)
        {
          break;
        }

        v202 = v34;
        v189 = v46;
        v190 = v47;
        v54 = v182;
        (v182)(v43, v31, v36, v45);
        v54(v48, v10, v36);
        v55 = sub_20D5643A8();
        if (v56)
        {
          v57 = v55;
          v58 = v56;
          sub_20D564378();
          sub_20D5663C8();
          v59 = v200;
          sub_20D5645E8();
          v60 = sub_20D5645D8();
          v62 = v61;
          (*v199)(v59, v201);
          if (v60 == v57 && v58 == v62)
          {
          }

          else if (sub_20D568BF8())
          {

            v57 = v60;
          }

          else
          {
            v203 = v57;
            v204 = v58;
            MEMORY[0x20F31CDB0](32, 0xE100000000000000);
            MEMORY[0x20F31CDB0](v60, v62);

            v57 = v203;
            v62 = v204;
          }

          v48 = v186;
        }

        else
        {
          v57 = sub_20D564378();
          v62 = v63;
        }

        v64 = sub_20D5643A8();
        if (v65)
        {
          v66 = v64;
          v67 = v65;
          sub_20D564378();
          sub_20D5663C8();
          v68 = v200;
          sub_20D5645E8();
          v69 = sub_20D5645D8();
          v71 = v70;
          (*v199)(v68, v201);
          if (v69 == v66 && v67 == v71)
          {
          }

          else if (sub_20D568BF8())
          {

            v66 = v69;
          }

          else
          {
            v203 = v66;
            v204 = v67;
            MEMORY[0x20F31CDB0](32, 0xE100000000000000);
            MEMORY[0x20F31CDB0](v69, v71);

            v66 = v203;
            v71 = v204;
          }

          v48 = v186;
          if (v57 != v66)
          {
            goto LABEL_11;
          }
        }

        else
        {
          v72 = sub_20D564378();
          v71 = v73;
          if (v57 != v72)
          {
            goto LABEL_11;
          }
        }

        if (v62 == v71)
        {
          v4 = 0;
          goto LABEL_12;
        }

LABEL_11:
        v4 = sub_20D568BF8();
LABEL_12:

        v36 = v198;
        v49 = v181;
        v181(v48, v198);
        v43 = v184;
        result = v49(v184, v36);
        v50 = v192;
        v44 = v192 + 1;
        v51 = v189;
        v31 += v188;
        v10 = (v10 + v188);
        v52 = v202;
        v34 = v202 + 1;
        v53 = v190;
        v47 = v190 + v188;
        v46 = v189 + v188;
        v45 = v187;
      }

      while (((v185 ^ v4) & 1) == 0);
      v6 = v180;
      a3 = v171;
      if (v185)
      {
        v29 = v176;
        v42 = v177;
        v19 = v194;
        if (v50 < v176)
        {
          goto LABEL_173;
        }

        if (v176 < v50)
        {
          v4 = v176 * v188;
          v10 = v175;
          while (1)
          {
            if (v29 == v52)
            {
              goto LABEL_42;
            }

            v202 = v52;
            v78 = a3;
            v180 = v6;
            v79 = *a3;
            if (!*a3)
            {
              goto LABEL_179;
            }

            v80 = v51;
            v81 = v53;
            v82 = v78;
            v83 = *v193;
            (*v193)(v179, v79 + v4, v198, v45);
            v75 = v81;
            if (v4 < v81 || v79 + v4 >= v79 + v80)
            {
              v74 = v198;
              swift_arrayInitWithTakeFrontToBack();
            }

            else
            {
              v74 = v198;
              if (v4 == v81)
              {
                goto LABEL_41;
              }

              swift_arrayInitWithTakeBackToFront();
            }

            v75 = v81;
LABEL_41:
            result = v83(v79 + v75, v179, v74);
            v53 = v81;
            v42 = v177;
            v45 = v187;
            v19 = v194;
            v10 = v175;
            v76 = v82;
            v6 = v180;
            v51 = v80;
            a3 = v76;
            v52 = v202;
LABEL_42:
            ++v29;
            v53 -= v188;
            v51 -= v188;
            v4 += v188;
            if (v29 >= v52--)
            {
              v31 = v192;
              goto LABEL_52;
            }
          }
        }

        v31 = v50;
        v10 = v175;
      }

      else
      {
        v31 = v50;
        v10 = v175;
        v42 = v177;
        v19 = v194;
LABEL_52:
        v29 = v176;
      }
    }

    v84 = a3[1];
    if (v31 < v84)
    {
      if (__OFSUB__(v31, v29))
      {
        goto LABEL_172;
      }

      if (v31 - v29 < v42)
      {
        break;
      }
    }

LABEL_91:
    if (v31 < v29)
    {
      goto LABEL_171;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v188 = v31;
    if (result)
    {
      v30 = v187;
    }

    else
    {
      result = sub_20CEE81E4(0, *(v187 + 2) + 1, 1, v187);
      v30 = result;
    }

    v121 = *(v30 + 2);
    v120 = *(v30 + 3);
    v4 = v121 + 1;
    if (v121 >= v120 >> 1)
    {
      result = sub_20CEE81E4((v120 > 1), v121 + 1, 1, v30);
      v30 = result;
    }

    *(v30 + 2) = v4;
    v122 = &v30[16 * v121];
    v123 = v188;
    *(v122 + 4) = v176;
    *(v122 + 5) = v123;
    v31 = *v174;
    if (!*v174)
    {
      goto LABEL_181;
    }

    if (v121)
    {
      while (1)
      {
        v124 = v4 - 1;
        if (v4 >= 4)
        {
          break;
        }

        if (v4 == 3)
        {
          v125 = *(v30 + 4);
          v126 = *(v30 + 5);
          v135 = __OFSUB__(v126, v125);
          v127 = v126 - v125;
          v128 = v135;
LABEL_111:
          if (v128)
          {
            goto LABEL_160;
          }

          v141 = &v30[16 * v4];
          v143 = *v141;
          v142 = *(v141 + 1);
          v144 = __OFSUB__(v142, v143);
          v145 = v142 - v143;
          v146 = v144;
          if (v144)
          {
            goto LABEL_163;
          }

          v147 = &v30[16 * v124 + 32];
          v149 = *v147;
          v148 = *(v147 + 1);
          v135 = __OFSUB__(v148, v149);
          v150 = v148 - v149;
          if (v135)
          {
            goto LABEL_166;
          }

          if (__OFADD__(v145, v150))
          {
            goto LABEL_167;
          }

          if (v145 + v150 >= v127)
          {
            if (v127 < v150)
            {
              v124 = v4 - 2;
            }

            goto LABEL_132;
          }

          goto LABEL_125;
        }

        v151 = &v30[16 * v4];
        v153 = *v151;
        v152 = *(v151 + 1);
        v135 = __OFSUB__(v152, v153);
        v145 = v152 - v153;
        v146 = v135;
LABEL_125:
        if (v146)
        {
          goto LABEL_162;
        }

        v154 = &v30[16 * v124];
        v156 = *(v154 + 4);
        v155 = *(v154 + 5);
        v135 = __OFSUB__(v155, v156);
        v157 = v155 - v156;
        if (v135)
        {
          goto LABEL_165;
        }

        if (v157 < v145)
        {
          goto LABEL_3;
        }

LABEL_132:
        v162 = v124 - 1;
        if (v124 - 1 >= v4)
        {
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
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
LABEL_167:
          __break(1u);
LABEL_168:
          __break(1u);
LABEL_169:
          __break(1u);
LABEL_170:
          __break(1u);
LABEL_171:
          __break(1u);
LABEL_172:
          __break(1u);
LABEL_173:
          __break(1u);
LABEL_174:
          __break(1u);
          goto LABEL_175;
        }

        if (!*a3)
        {
          goto LABEL_178;
        }

        v163 = v30;
        v4 = *&v30[16 * v162 + 32];
        v164 = *&v30[16 * v124 + 40];
        sub_20CF4E144(*a3 + v10[9] * v4, *a3 + v10[9] * *&v30[16 * v124 + 32], *a3 + v10[9] * v164, v31);
        if (v6)
        {
        }

        if (v164 < v4)
        {
          goto LABEL_156;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v163 = sub_20D057C88(v163);
        }

        if (v162 >= *(v163 + 2))
        {
          goto LABEL_157;
        }

        v165 = &v163[16 * v162];
        *(v165 + 4) = v4;
        *(v165 + 5) = v164;
        v205 = v163;
        result = sub_20D057BFC(v124);
        v30 = v205;
        v4 = *(v205 + 16);
        if (v4 <= 1)
        {
          goto LABEL_3;
        }
      }

      v129 = &v30[16 * v4 + 32];
      v130 = *(v129 - 64);
      v131 = *(v129 - 56);
      v135 = __OFSUB__(v131, v130);
      v132 = v131 - v130;
      if (v135)
      {
        goto LABEL_158;
      }

      v134 = *(v129 - 48);
      v133 = *(v129 - 40);
      v135 = __OFSUB__(v133, v134);
      v127 = v133 - v134;
      v128 = v135;
      if (v135)
      {
        goto LABEL_159;
      }

      v136 = &v30[16 * v4];
      v138 = *v136;
      v137 = *(v136 + 1);
      v135 = __OFSUB__(v137, v138);
      v139 = v137 - v138;
      if (v135)
      {
        goto LABEL_161;
      }

      v135 = __OFADD__(v127, v139);
      v140 = v127 + v139;
      if (v135)
      {
        goto LABEL_164;
      }

      if (v140 >= v132)
      {
        v158 = &v30[16 * v124 + 32];
        v160 = *v158;
        v159 = *(v158 + 1);
        v135 = __OFSUB__(v159, v160);
        v161 = v159 - v160;
        if (v135)
        {
          goto LABEL_168;
        }

        if (v127 < v161)
        {
          v124 = v4 - 2;
        }

        goto LABEL_132;
      }

      goto LABEL_111;
    }

LABEL_3:
    v28 = a3[1];
    v29 = v188;
    v19 = v194;
    if (v188 >= v28)
    {
      goto LABEL_143;
    }
  }

  v85 = (v29 + v42);
  if (__OFADD__(v29, v42))
  {
    goto LABEL_174;
  }

  if (v85 >= v84)
  {
    v85 = a3[1];
  }

  if (v85 < v29)
  {
LABEL_175:
    __break(1u);
    goto LABEL_176;
  }

  if (v31 == v85)
  {
    goto LABEL_91;
  }

  v180 = v6;
  v86 = *a3;
  v87 = v10[9];
  v192 = v10[2];
  v88 = v86 + v87 * (v31 - 1);
  v189 = -v87;
  v190 = v86;
  v89 = v29 - v31;
  v178 = v87;
  v90 = (v86 + v31 * v87);
  v92 = v197;
  v91 = v198;
  v181 = v85;
LABEL_64:
  v188 = v31;
  v182 = v90;
  v94 = v90;
  v183 = v89;
  v95 = v89;
  v185 = v88;
  while (1)
  {
    v202 = v95;
    v96 = v192;
    (v192)(v19, v94, v91);
    v96(v92, v88, v91);
    v97 = sub_20D5643A8();
    if (v98)
    {
      v99 = v97;
      v100 = v98;
      sub_20D564378();
      sub_20D5663C8();
      v101 = v200;
      sub_20D5645E8();
      v102 = sub_20D5645D8();
      v104 = v103;
      (*v199)(v101, v201);
      if (v102 == v99 && v100 == v104)
      {
      }

      else if (sub_20D568BF8())
      {

        v99 = v102;
      }

      else
      {
        v203 = v99;
        v204 = v100;
        MEMORY[0x20F31CDB0](32, 0xE100000000000000);
        MEMORY[0x20F31CDB0](v102, v104);

        v99 = v203;
        v104 = v204;
      }

      v92 = v197;
    }

    else
    {
      v99 = sub_20D564378();
      v104 = v105;
    }

    v106 = sub_20D5643A8();
    if (v107)
    {
      v108 = v106;
      v109 = v107;
      sub_20D564378();
      sub_20D5663C8();
      v110 = v200;
      sub_20D5645E8();
      v111 = sub_20D5645D8();
      v113 = v112;
      (*v199)(v110, v201);
      if (v111 == v108 && v109 == v113)
      {
      }

      else if (sub_20D568BF8())
      {

        v108 = v111;
      }

      else
      {
        v203 = v108;
        v204 = v109;
        MEMORY[0x20F31CDB0](32, 0xE100000000000000);
        MEMORY[0x20F31CDB0](v111, v113);

        v108 = v203;
        v113 = v204;
      }

      v92 = v197;
      if (v99 != v108)
      {
        goto LABEL_85;
      }
    }

    else
    {
      v114 = sub_20D564378();
      v113 = v115;
      if (v99 != v114)
      {
        goto LABEL_85;
      }
    }

    if (v104 == v113)
    {

      v4 = v196;
      v93 = *v196;
      v91 = v198;
      (*v196)(v92, v198);
      v19 = v194;
      v93(v194, v91);
LABEL_63:
      v31 = v188 + 1;
      v88 = v185 + v178;
      v89 = v183 - 1;
      v90 = &v182[v178];
      if ((v188 + 1) == v181)
      {
        v31 = v181;
        v6 = v180;
        a3 = v171;
        v10 = v175;
        v29 = v176;
        goto LABEL_91;
      }

      goto LABEL_64;
    }

LABEL_85:
    v4 = sub_20D568BF8();

    v116 = *v196;
    v91 = v198;
    (*v196)(v92, v198);
    v19 = v194;
    result = v116(v194, v91);
    if ((v4 & 1) == 0)
    {
      goto LABEL_63;
    }

    v117 = v202;
    if (!v190)
    {
      break;
    }

    v4 = *v193;
    v118 = v191;
    (*v193)(v191, v94, v91);
    swift_arrayInitWithTakeFrontToBack();
    (v4)(v88, v118, v91);
    v88 += v189;
    v94 += v189;
    v119 = __CFADD__(v117, 1);
    v95 = v117 + 1;
    if (v119)
    {
      goto LABEL_63;
    }
  }

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
  return result;
}

uint64_t sub_20CF4D744(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v106 = sub_20D5645F8();
  v8 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v105 = &v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for BridgesListView.Config();
  v11 = MEMORY[0x28223BE20](v10);
  v12 = MEMORY[0x28223BE20](v11);
  v97 = &v93 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v93 - v15;
  result = MEMORY[0x28223BE20](v14);
  v21 = *(v20 + 72);
  if (!v21)
  {
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v21 == -1)
  {
    goto LABEL_81;
  }

  v22 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v21 == -1)
  {
    goto LABEL_82;
  }

  v23 = (a2 - a1) / v21;
  v112 = a1;
  v111 = a4;
  v107 = v10;
  if (v23 >= v22 / v21)
  {
    v101 = v19;
    v25 = a4;
    v26 = v22 / v21 * v21;
    if (v25 < a2 || a2 + v26 <= v25)
    {
      swift_arrayInitWithTakeFrontToBack();
      v27 = v97;
    }

    else
    {
      v27 = v97;
      if (v25 != a2)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v96 = v25;
    v62 = v25 + v26;
    if (v26 < 1)
    {
      v66 = v25 + v26;
    }

    else
    {
      v63 = -v21;
      v100 = (v8 + 8);
      v64 = v25 + v26;
      v65 = v101;
      v66 = v62;
      v103 = -v21;
      do
      {
        v94 = v66;
        v67 = a2;
        a2 += v63;
        v98 = v67;
        v99 = a2;
        while (1)
        {
          if (v67 <= a1)
          {
            v112 = v67;
            v110 = v94;
            goto LABEL_79;
          }

          v69 = a3;
          v95 = v66;
          v102 = v64;
          v104 = v64 + v63;
          sub_20CF50A44(v64 + v63, v27, type metadata accessor for BridgesListView.Config);
          sub_20CF50A44(a2, v65, type metadata accessor for BridgesListView.Config);
          v70 = *(v10 + 24);
          v71 = *(v27 + v70 + 8);
          if (v71)
          {
            v72 = *(v27 + v70);
            sub_20D5663C8();
            sub_20D5663C8();
            v73 = v105;
            sub_20D5645E8();
            v74 = sub_20D5645D8();
            v76 = v75;
            v77 = v73;
            v65 = v101;
            (*v100)(v77, v106);
            v108 = v72;
            v109 = v71;
            sub_20D5663C8();
            MEMORY[0x20F31CDB0](32, 0xE100000000000000);
            MEMORY[0x20F31CDB0](v74, v76);

            v78 = v10;
            v79 = v108;
            v80 = v109;
            v70 = *(v78 + 24);
          }

          else
          {
            v81 = (v27 + *(v10 + 20));
            v79 = *v81;
            v80 = v81[1];
            sub_20D5663C8();
          }

          v82 = *(v65 + v70 + 8);
          if (v82)
          {
            v83 = *(v65 + v70);
            sub_20D5663C8();
            sub_20D5663C8();
            v84 = v105;
            sub_20D5645E8();
            v85 = sub_20D5645D8();
            v87 = v86;
            (*v100)(v84, v106);
            v108 = v83;
            v109 = v82;
            sub_20D5663C8();
            MEMORY[0x20F31CDB0](32, 0xE100000000000000);
            MEMORY[0x20F31CDB0](v85, v87);

            v89 = v108;
            v88 = v109;
          }

          else
          {
            v90 = (v65 + *(v107 + 20));
            v89 = *v90;
            v88 = v90[1];
            sub_20D5663C8();
          }

          a2 = v99;
          v27 = v97;
          if (v79 == v89 && v80 == v88)
          {
            v91 = 0;
          }

          else
          {
            v91 = sub_20D568BF8();
          }

          v65 = v101;

          a3 = v69 + v103;
          sub_20CF50AAC(v65, type metadata accessor for BridgesListView.Config);
          sub_20CF50AAC(v27, type metadata accessor for BridgesListView.Config);
          if (v91)
          {
            break;
          }

          v66 = v104;
          v10 = v107;
          if (v69 < v102 || a3 >= v102)
          {
            swift_arrayInitWithTakeFrontToBack();
            v68 = v96;
          }

          else
          {
            v68 = v96;
            if (v69 != v102)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v64 = v66;
          v63 = v103;
          v67 = v98;
          if (v104 <= v68)
          {
            a2 = v98;
            goto LABEL_78;
          }
        }

        v10 = v107;
        if (v69 < v98 || a3 >= v98)
        {
          swift_arrayInitWithTakeFrontToBack();
          v66 = v95;
          v92 = v96;
        }

        else
        {
          v66 = v95;
          v92 = v96;
          if (v69 != v98)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v64 = v102;
        v63 = v103;
      }

      while (v102 > v92);
    }

LABEL_78:
    v112 = a2;
    v110 = v66;
  }

  else
  {
    v101 = &v93 - v18;
    v24 = v23 * v21;
    if (a4 < a1 || a1 + v24 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v100 = (a4 + v24);
    v110 = a4 + v24;
    v28 = v24 < 1 || a2 >= a3;
    v29 = v101;
    if (!v28)
    {
      v103 = v8 + 8;
      v104 = v16;
      v98 = v21;
      v99 = a3;
      do
      {
        sub_20CF50A44(a2, v29, type metadata accessor for BridgesListView.Config);
        sub_20CF50A44(a4, v16, type metadata accessor for BridgesListView.Config);
        v30 = *(v10 + 24);
        v31 = (v29 + v30);
        v32 = v29;
        v33 = *(v29 + v30 + 8);
        if (v33)
        {
          v34 = *v31;
          sub_20D5663C8();
          sub_20D5663C8();
          v35 = v105;
          sub_20D5645E8();
          v36 = sub_20D5645D8();
          v38 = v37;
          (*v103)(v35, v106);
          v108 = v34;
          v109 = v33;
          v16 = v104;
          sub_20D5663C8();
          MEMORY[0x20F31CDB0](32, 0xE100000000000000);
          v39 = v36;
          v10 = v107;
          MEMORY[0x20F31CDB0](v39, v38);

          v41 = v108;
          v40 = v109;
          v30 = *(v10 + 24);
        }

        else
        {
          v42 = (v32 + *(v10 + 20));
          v41 = *v42;
          v40 = v42[1];
          sub_20D5663C8();
        }

        v43 = &v16[v30];
        v44 = v16;
        v45 = *&v16[v30 + 8];
        if (v45)
        {
          v46 = *v43;
          v102 = v41;
          sub_20D5663C8();
          sub_20D5663C8();
          v47 = v105;
          sub_20D5645E8();
          v48 = a1;
          v49 = a4;
          v50 = a2;
          v51 = sub_20D5645D8();
          v53 = v52;
          (*v103)(v47, v106);
          v108 = v46;
          v109 = v45;
          sub_20D5663C8();
          MEMORY[0x20F31CDB0](32, 0xE100000000000000);
          v54 = v51;
          a2 = v50;
          a4 = v49;
          a1 = v48;
          MEMORY[0x20F31CDB0](v54, v53);
          v41 = v102;

          v56 = v108;
          v55 = v109;
        }

        else
        {
          v57 = &v44[*(v10 + 20)];
          v56 = *v57;
          v55 = *(v57 + 1);
          sub_20D5663C8();
        }

        v58 = v99;
        if (v41 == v56 && v40 == v55)
        {

          v16 = v104;
          sub_20CF50AAC(v104, type metadata accessor for BridgesListView.Config);
          v29 = v101;
          sub_20CF50AAC(v101, type metadata accessor for BridgesListView.Config);
          v10 = v107;
        }

        else
        {
          v59 = sub_20D568BF8();

          v16 = v104;
          sub_20CF50AAC(v104, type metadata accessor for BridgesListView.Config);
          v29 = v101;
          sub_20CF50AAC(v101, type metadata accessor for BridgesListView.Config);
          v10 = v107;
          if (v59)
          {
            v60 = v98;
            if (a1 < a2 || a1 >= a2 + v98)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v60;
            goto LABEL_43;
          }
        }

        v60 = v98;
        v61 = a4 + v98;
        if (a1 < a4 || a1 >= v61)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a4)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v111 = v61;
        a4 += v60;
LABEL_43:
        a1 += v60;
        v112 = a1;
      }

      while (a4 < v100 && a2 < v58);
    }
  }

LABEL_79:
  sub_20CF4EC9C(&v112, &v111, &v110, type metadata accessor for BridgesListView.Config);
  return 1;
}

uint64_t sub_20CF4E144(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v107 = sub_20D5645F8();
  v8 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v106 = v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20D5643B8();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v13 = MEMORY[0x28223BE20](v12);
  v96 = v90 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v90 - v16;
  result = MEMORY[0x28223BE20](v15);
  v22 = *(v21 + 72);
  if (!v22)
  {
    __break(1u);
LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v22 == -1)
  {
    goto LABEL_104;
  }

  v23 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v22 == -1)
  {
    goto LABEL_105;
  }

  v24 = (a2 - a1) / v22;
  v112 = a1;
  v111 = a4;
  v103 = v10;
  v100 = v22;
  if (v24 >= v23 / v22)
  {
    v99 = v20;
    v26 = a4;
    v27 = v23 / v22 * v22;
    if (v26 < a2 || a2 + v27 <= v26)
    {
      swift_arrayInitWithTakeFrontToBack();
      v28 = v96;
    }

    else
    {
      v28 = v96;
      if (v26 != a2)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v104 = v26;
    v57 = v26 + v27;
    if (v27 < 1)
    {
      v61 = v26 + v27;
      goto LABEL_101;
    }

    v58 = v99;
    v59 = -v100;
    v97 = (v8 + 8);
    v93 = (v11 + 8);
    v94 = (v11 + 16);
    v60 = v57;
    v61 = v57;
    v95 = a1;
    v102 = -v100;
    while (1)
    {
      v90[0] = v61;
      v62 = a2;
      v63 = a2 + v59;
      v91 = a2 + v59;
      v98 = a2;
      while (1)
      {
        if (v62 <= a1)
        {
          v112 = v62;
          v110 = v90[0];
          goto LABEL_102;
        }

        v100 = a3;
        v101 = v60;
        v92 = v61;
        v64 = *v94;
        v105 = v60 + v59;
        v64(v28);
        (v64)(v58, v63, v10);
        v65 = sub_20D5643A8();
        if (v66)
        {
          v67 = v65;
          v68 = v66;
          sub_20D564378();
          sub_20D5663C8();
          v69 = v106;
          sub_20D5645E8();
          v70 = sub_20D5645D8();
          v72 = v71;
          (*v97)(v69, v107);
          if (v70 == v67 && v68 == v72)
          {
          }

          else if (sub_20D568BF8())
          {

            v67 = v70;
          }

          else
          {
            v108 = v67;
            v109 = v68;
            MEMORY[0x20F31CDB0](32, 0xE100000000000000);
            MEMORY[0x20F31CDB0](v70, v72);

            v67 = v108;
            v72 = v109;
          }

          v58 = v99;
        }

        else
        {
          v67 = sub_20D564378();
          v72 = v73;
        }

        v74 = sub_20D5643A8();
        if (v75)
        {
          v76 = v74;
          v77 = v75;
          sub_20D564378();
          sub_20D5663C8();
          v78 = v106;
          sub_20D5645E8();
          v79 = sub_20D5645D8();
          v81 = v80;
          (*v97)(v78, v107);
          if (v79 == v76 && v77 == v81)
          {
          }

          else if (sub_20D568BF8())
          {

            v76 = v79;
          }

          else
          {
            v108 = v76;
            v109 = v77;
            MEMORY[0x20F31CDB0](32, 0xE100000000000000);
            MEMORY[0x20F31CDB0](v79, v81);

            v76 = v108;
            v81 = v109;
          }

          v63 = v91;
          v58 = v99;
          if (v67 != v76)
          {
            goto LABEL_86;
          }
        }

        else
        {
          v82 = sub_20D564378();
          v81 = v83;
          if (v67 != v82)
          {
            goto LABEL_86;
          }
        }

        if (v72 == v81)
        {
          v84 = 0;
          goto LABEL_87;
        }

LABEL_86:
        v84 = sub_20D568BF8();
LABEL_87:

        v10 = v103;
        v85 = v100;
        a3 = v100 + v102;
        v86 = *v93;
        (*v93)(v58, v103);
        v28 = v96;
        v86(v96, v10);
        if (v84)
        {
          break;
        }

        v87 = v104;
        v61 = v105;
        if (v85 < v101 || a3 >= v101)
        {
          swift_arrayInitWithTakeFrontToBack();
          a1 = v95;
        }

        else
        {
          v88 = v85 == v101;
          a1 = v95;
          if (!v88)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v60 = v61;
        v59 = v102;
        v62 = v98;
        if (v105 <= v87)
        {
          a2 = v98;
          goto LABEL_101;
        }
      }

      v89 = v104;
      a2 = v63;
      if (v85 < v98 || a3 >= v98)
      {
        swift_arrayInitWithTakeFrontToBack();
        v61 = v92;
        a1 = v95;
      }

      else
      {
        v88 = v85 == v98;
        v61 = v92;
        a1 = v95;
        if (!v88)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v60 = v101;
      v59 = v102;
      if (v101 <= v89)
      {
LABEL_101:
        v112 = a2;
        v110 = v61;
        goto LABEL_102;
      }
    }
  }

  v105 = v90 - v19;
  v25 = v24 * v22;
  if (a4 < a1 || a1 + v25 <= a4)
  {
    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a4 != a1)
  {
    swift_arrayInitWithTakeBackToFront();
  }

  v99 = a4 + v25;
  v110 = a4 + v25;
  if (v25 >= 1 && a2 < a3)
  {
    v96 = *(v11 + 16);
    v97 = (v11 + 16);
    v101 = (v8 + 8);
    v102 = v17;
    v95 = (v11 + 8);
    v98 = a3;
    do
    {
      v30 = v96;
      (v96)(v105, a2, v10);
      v30(v17, a4, v10);
      v31 = sub_20D5643A8();
      if (v32)
      {
        v33 = v31;
        v34 = v32;
        sub_20D564378();
        sub_20D5663C8();
        v35 = v106;
        sub_20D5645E8();
        v36 = sub_20D5645D8();
        v38 = v37;
        (*v101)(v35, v107);
        if (v36 == v33 && v34 == v38)
        {
        }

        else if (sub_20D568BF8())
        {

          v33 = v36;
        }

        else
        {
          v108 = v33;
          v109 = v34;
          MEMORY[0x20F31CDB0](32, 0xE100000000000000);
          MEMORY[0x20F31CDB0](v36, v38);

          v33 = v108;
          v38 = v109;
        }
      }

      else
      {
        v33 = sub_20D564378();
        v38 = v39;
      }

      v40 = sub_20D5643A8();
      if (v41)
      {
        v42 = v40;
        v43 = v41;
        v104 = a4;
        v44 = a2;
        sub_20D564378();
        sub_20D5663C8();
        v45 = v106;
        sub_20D5645E8();
        v46 = sub_20D5645D8();
        v48 = v47;
        (*v101)(v45, v107);
        if (v46 == v42 && v43 == v48)
        {
        }

        else if (sub_20D568BF8())
        {

          v42 = v46;
        }

        else
        {
          v108 = v42;
          v109 = v43;
          MEMORY[0x20F31CDB0](32, 0xE100000000000000);
          MEMORY[0x20F31CDB0](v46, v48);

          v42 = v108;
          v48 = v109;
        }

        a2 = v44;
        a4 = v104;
        if (v33 != v42)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v49 = sub_20D564378();
        v48 = v50;
        if (v33 != v49)
        {
          goto LABEL_41;
        }
      }

      if (v38 == v48)
      {

        v51 = *v95;
        v17 = v102;
        v10 = v103;
        (*v95)(v102, v103);
        v51(v105, v10);
        v52 = v98;
        goto LABEL_46;
      }

LABEL_41:
      v53 = sub_20D568BF8();

      v54 = *v95;
      v17 = v102;
      v10 = v103;
      (*v95)(v102, v103);
      v54(v105, v10);
      v52 = v98;
      if (v53)
      {
        v55 = v100;
        if (a1 < a2 || a1 >= a2 + v100)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v55;
        goto LABEL_54;
      }

LABEL_46:
      v55 = v100;
      v56 = a4 + v100;
      if (a1 < a4 || a1 >= v56)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != a4)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v111 = v56;
      a4 += v55;
LABEL_54:
      a1 += v55;
      v112 = a1;
    }

    while (a4 < v99 && a2 < v52);
  }

LABEL_102:
  sub_20CF4EC9C(&v112, &v111, &v110, MEMORY[0x277D15CB0]);
  return 1;
}

uint64_t sub_20CF4EC9C(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_20CF4ED84(uint64_t a1)
{
  v2 = sub_20D5643B8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v22 - v7;
  v9 = *(a1 + 16);
  v10 = sub_20CF508B8(&qword_27C81D4C0, MEMORY[0x277D15CB0]);
  result = MEMORY[0x20F31D1D0](v9, v2, v10);
  v12 = 0;
  v23 = a1;
  v24 = result;
  v15 = *(a1 + 64);
  v14 = a1 + 64;
  v13 = v15;
  v16 = 1 << *(v14 - 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  v22[1] = v3 + 16;
  if ((v17 & v13) != 0)
  {
    do
    {
      v20 = v12;
LABEL_9:
      v21 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      (*(v3 + 16))(v8, *(v23 + 56) + *(v3 + 72) * (v21 | (v20 << 6)), v2);
      sub_20CF4EF98(v6, v8);
      result = (*(v3 + 8))(v6, v2);
    }

    while (v18);
  }

  while (1)
  {
    v20 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v20 >= v19)
    {

      return v24;
    }

    v18 = *(v14 + 8 * v20);
    ++v12;
    if (v18)
    {
      v12 = v20;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20CF4EF98(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_20D5643B8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_20CF508B8(&qword_27C81D4C0, MEMORY[0x277D15CB0]);
  v33 = a2;
  v11 = sub_20D5677B8();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_20CF508B8(&qword_27C81D4C8, MEMORY[0x277D15CB0]);
      v21 = sub_20D5677E8();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_20CF4F278(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_20CF4F278(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_20D5643B8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 <= v10)
  {
    if (a3)
    {
      sub_20CF4FA64();
    }

    else
    {
      sub_20CF4F748();
    }

    v12 = *v3;
    sub_20CF508B8(&qword_27C81D4C0, MEMORY[0x277D15CB0]);
    v13 = sub_20D5677B8();
    v14 = v12 + 56;
    v30 = v12;
    v15 = -1 << *(v12 + 32);
    a2 = v13 & ~v15;
    if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v16 = ~v15;
      v19 = *(v7 + 16);
      v18 = v7 + 16;
      v17 = v19;
      v20 = *(v18 + 56);
      do
      {
        v17(v9, *(v30 + 48) + v20 * a2, v6);
        sub_20CF508B8(&qword_27C81D4C8, MEMORY[0x277D15CB0]);
        v21 = sub_20D5677E8();
        (*(v18 - 8))(v9, v6);
        if (v21)
        {
          goto LABEL_14;
        }

        a2 = (a2 + 1) & v16;
      }

      while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

  else if ((a3 & 1) == 0)
  {
    sub_20CF4F510();
  }

  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_14:
  result = sub_20D568C58();
  __break(1u);
  return result;
}