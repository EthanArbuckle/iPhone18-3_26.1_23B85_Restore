id sub_1CFBA1DA4()
{
  result = [objc_allocWithZone(CAUILayoutManager) init];
  qword_1EE04CFB8 = result;
  return result;
}

id sub_1CFBA1DFC()
{
  v1 = v0;
  v2 = OBJC_IVAR___CAUILayoutManager__tapRecentsToCall;
  v0[OBJC_IVAR___CAUILayoutManager__tapRecentsToCall] = 0;
  v3 = &v0[OBJC_IVAR___CAUILayoutManager_layoutKey];
  *v3 = 0x79614C656E6F6850;
  v3[1] = 0xEB0000000074756FLL;
  v4 = &v0[OBJC_IVAR___CAUILayoutManager_tapRecentsToCallKey];
  *v4 = 0xD000000000000010;
  v4[1] = 0x80000001CFCABBA0;
  v5 = OBJC_IVAR___CAUILayoutManager_observers;
  *&v1[v5] = [objc_opt_self() mapTableWithKeyOptions:5 valueOptions:0];
  sub_1CFBA2114();
  v7 = v6;
  v9 = *v3;
  v8 = v3[1];
  v10 = objc_opt_self();

  v11 = [v10 currentDevice];
  v12 = [v11 userInterfaceIdiom];

  v15 = 1;
  if (!v12)
  {
    v13 = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
    v14 = [v13 phoneClassicEnabled];

    if (v14)
    {
      v15 = 0;
    }
  }

  v16 = sub_1CFBA2284();
  v18 = v17;

  if (v18)
  {
    v19 = v15;
  }

  else
  {
    v19 = v16;
  }

  *&v1[OBJC_IVAR___CAUILayoutManager__current] = v19;
  sub_1CFBA2114();
  v21 = v20;
  v22 = *v4;
  v23 = v4[1];

  v24 = sub_1CFC9F728();

  LOBYTE(v23) = [v21 BOOLForKey_];

  v1[v2] = v23;
  v35.receiver = v1;
  v35.super_class = CAUILayoutManager;
  v25 = objc_msgSendSuper2(&v35, sel_init);
  v26 = objc_opt_self();
  v27 = v25;
  v28 = [v26 defaultCenter];
  [v28 addObserver:v27 selector:sel_willEnterForeground name:*MEMORY[0x1E69DDBC0] object:0];

  sub_1CFBA2114();
  v30 = v29;
  v31 = sub_1CFC9F728();
  v32 = [v30 objectForKey_];

  if (v32)
  {
    sub_1CFC9FF18();
    swift_unknownObjectRelease();

    sub_1CFBA235C(v34);
  }

  else
  {
    memset(v34, 0, sizeof(v34));
    sub_1CFBA235C(v34);
    [v27 setLayout_];
  }

  return v27;
}

void sub_1CFBA2114()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (!v1)
  {
    goto LABEL_7;
  }

  v2 = sub_1CFC9F768();
  v4 = v3;

  if (v2 == 0xD000000000000015 && 0x80000001CFCABBE0 == v4)
  {
  }

  else
  {
    v6 = sub_1CFCA02B8();

    if ((v6 & 1) == 0)
    {
LABEL_7:
      v7 = objc_allocWithZone(MEMORY[0x1E695E000]);
      v8 = sub_1CFC9F728();
      v9 = [v7 initWithSuiteName_];

      if (!v9)
      {
        __break(1u);
      }

      return;
    }
  }

  v10 = [objc_opt_self() standardUserDefaults];

  v11 = v10;
}

id sub_1CFBA2284()
{
  v1 = sub_1CFC9F728();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_1CFC9FF18();
    swift_unknownObjectRelease();
    sub_1CFBA235C(v6);
    v3 = sub_1CFC9F728();
    v4 = [v0 integerForKey_];
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    sub_1CFBA235C(v6);
    return 0;
  }

  return v4;
}

uint64_t sub_1CFBA235C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE650, &qword_1CFCA4B10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CFBA2520()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1CFBA2730(void *a1, char a2, char *a3, void (**a4)(void, void))
{
  v8 = swift_allocObject();
  *(v8 + 16) = a4;
  v9 = *&a3[OBJC_IVAR___CAUILayoutManager_observers];
  _s24LayoutUpdateRegistrationCMa();
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1CFBA29C0;
  *(v10 + 24) = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  _Block_copy(a4);
  v11 = v9;

  [v11 setObject:v10 forKey:sub_1CFCA02A8()];

  swift_unknownObjectRelease();
  if (a2)
  {
    (a4)[2](a4, [a3 current]);
  }
}

uint64_t CAUILayoutManager.current.getter()
{
  v1 = [objc_opt_self() currentDevice];
  v2 = [v1 userInterfaceIdiom];

  if (v2)
  {
    return 1;
  }

  v3 = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  v4 = [v3 phoneClassicEnabled];

  if (!v4)
  {
    return 1;
  }

  else
  {
    return *(v0 + OBJC_IVAR___CAUILayoutManager__current);
  }
}

uint64_t sub_1CFBA296C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_1CFBA29FC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

char *RecentsViewController.init(recentsDetailProvider:recentsDataSource:favoritesDataSource:showDialer:addFavorite:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = sub_1CFC698E8(a1, a2, a3, a4, a5, a6, a7);

  return v8;
}

uint64_t sub_1CFBA2AA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EF810, &qword_1CFCA7900);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for DetailsPresenter()
{
  result = qword_1EE04FB68;
  if (!qword_1EE04FB68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for RecentsSectionController()
{
  result = qword_1EE04F4E0;
  if (!qword_1EE04F4E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1CFBA2BB0()
{
  sub_1CFC7A9D0();
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    sub_1CFC7AA38();
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      sub_1CFC7AA9C();
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        v6 = sub_1CFC9CF08();
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t sub_1CFBA2D80(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t type metadata accessor for RecentsRemindMeActionConfigurator()
{
  result = qword_1EE04E1C8;
  if (!qword_1EE04E1C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1CFBA2E38(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1CFC9FEB8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1CFBA2E8C()
{
  sub_1CFBA2E38(319, &qword_1EE04D638, MEMORY[0x1E69C6D40]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1CFBA2E38(319, &qword_1EE04D6B8, MEMORY[0x1E6993688]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1CFBA3000(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CFBA3038()
{
  result = sub_1CFC9C198();
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

void SectionnedCollectionViewController.init(sections:)(uint64_t a1)
{
  v2 = v1;
  v1[OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_viewAppeared] = 0;
  v1[OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_isVisible] = 0;
  v4 = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_editButtonItems] = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_items] = v4;
  v1[OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_hasAlreadyLoadedCollection] = 0;
  v1[OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_shouldUpdateOnAppear] = 0;
  *&v1[OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_configuredSectionHashes] = MEMORY[0x1E69E7CD0];
  v5 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_finishedSectionReload;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED3D8, &qword_1CFCA22D0);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  *&v1[v5] = sub_1CFC9DCD8();
  *&v1[OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_diffableDataSource] = 0;
  v9 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_loadedDebounce;
  sub_1CFBA2D80(0, &qword_1EE04FF80, 0x1E69E9610);
  sub_1CFC9FC28();
  v10 = sub_1CFC9D508();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  *&v1[v9] = sub_1CFC9D4E8();
  *&v1[OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_sections] = a1;
  v13 = objc_allocWithZone(MEMORY[0x1E69DC850]);
  v62 = a1;

  v14 = [v13 init];
  v65.receiver = v2;
  v65.super_class = type metadata accessor for SectionnedCollectionViewController();
  v15 = objc_msgSendSuper2(&v65, sel_initWithCollectionViewLayout_, v14);

  v16 = v15;
  if (![v16 collectionView])
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED400, &qword_1CFCA22D8));
  v18 = sub_1CFC9DBC8();
  v19 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_diffableDataSource;
  v20 = *&v16[OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_diffableDataSource];
  *&v16[OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_diffableDataSource] = v18;

  v21 = *&v16[v19];
  if (v21)
  {
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v22 = v21;

    sub_1CFC9DBD8();
  }

  v23 = [v16 collectionView];
  if (!v23)
  {
    goto LABEL_25;
  }

  v24 = v23;
  [v23 setDataSource_];

  v61 = *(a1 + 16);
  if (v61)
  {
    v25 = 0;
    v26 = (a1 + 40);
    while (v25 < *(v62 + 16))
    {
      v27 = *(v26 - 1);
      v28 = *v26;
      ObjectType = swift_getObjectType();
      v30 = *(v28 + 56);
      v31 = v16;
      v32 = v16;
      swift_unknownObjectRetain();
      v30(v31, &protocol witness table for SectionnedCollectionViewController, ObjectType, v28);
      v33 = [v32 collectionView];
      if (!v33)
      {
        goto LABEL_23;
      }

      v34 = v33;
      ++v25;
      (*(v28 + 104))(v33, ObjectType, v28);

      (*(v28 + 40))(v63, ObjectType, v28);
      __swift_project_boxed_opaque_existential_1(v63, v63[3]);
      v35 = sub_1CFC9F6D8();
      swift_beginAccess();
      sub_1CFBC7D58(&v64, v35);
      swift_endAccess();
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1Tm(v63);
      v26 += 2;
      v16 = v31;
      if (v61 == v25)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_10:
  v36 = [v16 collectionView];
  if (!v36)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v37 = v36;
  [v36 setDragDelegate_];

  v38 = [v16 collectionView];
  if (!v38)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v39 = v38;
  [v38 setDropDelegate_];

  v40 = [v16 collectionView];
  if (!v40)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v41 = v40;
  [v40 setDragInteractionEnabled_];

  v42 = [v16 collectionView];
  if (!v42)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v43 = v42;
  [v42 setAllowsSelection_];

  v44 = [v16 collectionView];
  if (!v44)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v45 = v44;
  [v44 setAllowsMultipleSelectionDuringEditing_];

  v46 = [v16 collectionView];
  if (!v46)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v47 = v46;
  v60 = MEMORY[0x1E69E6370];
  LOBYTE(v59) = 2;
  sub_1CFC9CD28();
  [v47 setAllowsMultipleSelection_];

  v48 = [objc_opt_self() currentDevice];
  v49 = [v48 userInterfaceIdiom];

  if (v49 != 6)
  {
LABEL_19:
    v52 = [v16 collectionView];
    if (v52)
    {
      v53 = v52;
      v54 = sub_1CFC9F728();
      [v53 setAccessibilityIdentifier_];

      v55 = [v16 collectionView];
      if (v55)
      {

        type metadata accessor for BundleClass();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v57 = [objc_opt_self() bundleForClass_];
        sub_1CFC9BE28();

        v58 = sub_1CFC9F728();

        [v55 setAccessibilityLabel_];

        return;
      }

      goto LABEL_33;
    }

LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v50 = [v16 collectionView];
  if (v50)
  {
    v51 = v50;
    [v50 setClipsToBounds_];

    goto LABEL_19;
  }

LABEL_34:
  __break(1u);
}

uint64_t sub_1CFBA38D0()
{
  MEMORY[0x1D3873340](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CFBA392C(uint64_t a1, uint64_t a2)
{
  v10[5] = (*(a2 + 96))();
  v10[2] = a1;
  v10[3] = a2;
  swift_getAssociatedTypeWitness();
  type metadata accessor for EditAction();
  v4 = sub_1CFC9F918();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF7B8, &qword_1CFCA78C8);
  WitnessTable = swift_getWitnessTable();
  v8 = sub_1CFBA3E80(sub_1CFBA42A0, v10, v4, v5, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v7);

  return v8;
}

uint64_t sub_1CFBA3A44()
{
  if (*(v0 + 56))
  {
    v1 = *(v0 + 56);
  }

  else
  {
    v1 = sub_1CFBA3AA4(v0);
    v2 = *(v0 + 56);
    *(v0 + 56) = v1;
  }

  return v1;
}

uint64_t sub_1CFBA3AA4(uint64_t a1)
{
  if (*(a1 + 64))
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFE90, &unk_1CFCA86F0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1CFCA1DC0;
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = objc_opt_self();
  v5 = [v4 bundleForClass_];
  v6 = sub_1CFC9BE28();
  v8 = v7;

  v9 = swift_allocObject();
  swift_weakInit();
  v10 = [v4 &:ObjCClassFromMetadata OBJC:0xE000000000000000 LABEL:? PROTOCOL:? :? :?UISearchControllerDelegate + 3];
  v11 = sub_1CFC9BE28();
  v13 = v12;

  *(v2 + 32) = v6;
  *(v2 + 40) = v8;
  *(v2 + 48) = 0;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  *(v2 + 56) = sub_1CFC0A28C;
  *(v2 + 80) = sub_1CFC7418C;
  *(v2 + 88) = 0;
  *(v2 + 96) = sub_1CFC7F3F8;
  *(v2 + 104) = v9;
  *(v2 + 112) = v11;
  *(v2 + 120) = v13;
  v14 = [v4 bundleForClass_];
  v15 = sub_1CFC9BE28();
  v17 = v16;

  v18 = [objc_opt_self() systemRedColor];
  v19 = swift_allocObject();
  swift_weakInit();
  result = v2;
  *(v2 + 128) = v15;
  *(v2 + 136) = v17;
  *(v2 + 144) = 1;
  *(v2 + 152) = sub_1CFC0A908;
  *(v2 + 160) = 0;
  *(v2 + 168) = v18;
  *(v2 + 176) = sub_1CFBAB3D8;
  *(v2 + 184) = 0;
  *(v2 + 192) = sub_1CFC7F400;
  *(v2 + 200) = v19;
  *(v2 + 208) = 0;
  *(v2 + 216) = 0;
  return result;
}

uint64_t sub_1CFBA3DB8()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CFBA3E38()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1CFBA3E80(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  v17 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v19 = &v34 - v18;
  v20 = *(*(a4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v34 - v24;
  v26 = sub_1CFC9FA28();
  if (!v26)
  {
    return sub_1CFC9F8D8();
  }

  v48 = v26;
  v52 = sub_1CFCA01A8();
  v39 = sub_1CFCA01B8();
  sub_1CFCA0158();
  result = sub_1CFC9FA18();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = sub_1CFC9FA88();
      v30 = v19;
      v31 = v19;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      sub_1CFCA0198();
      result = sub_1CFC9FA58();
      ++v28;
      v19 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1CFBA42C0@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = a1[3];
  v28 = a1[2];
  v29 = v8;
  v9 = a1[5];
  v30 = a1[4];
  v31 = v9;
  v10 = a1[1];
  v27[0] = *a1;
  v27[1] = v10;
  v33 = v27[0];
  v11 = v10;
  v12 = *(&v10 + 1);
  v13 = v28;
  v34 = *(&v28 + 1);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  v15 = a1[3];
  *(v14 + 64) = a1[2];
  *(v14 + 80) = v15;
  v16 = a1[5];
  *(v14 + 96) = a1[4];
  *(v14 + 112) = v16;
  v17 = a1[1];
  *(v14 + 32) = *a1;
  *(v14 + 48) = v17;
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;
  v19 = a1[3];
  *(v18 + 64) = a1[2];
  *(v18 + 80) = v19;
  v20 = a1[5];
  *(v18 + 96) = a1[4];
  *(v18 + 112) = v20;
  v21 = *a1;
  v22 = a1[1];
  *(v18 + 32) = *a1;
  *(v18 + 48) = v22;
  v32 = v20;
  *a4 = v21;
  *(a4 + 16) = v11;
  *(a4 + 24) = v12;
  *(a4 + 32) = v13;
  *(a4 + 48) = sub_1CFBB44B4;
  *(a4 + 56) = v14;
  *(a4 + 64) = sub_1CFC56E68;
  *(a4 + 72) = v18;
  *(a4 + 80) = a1[5];
  swift_getAssociatedTypeWitness();
  v23 = type metadata accessor for EditAction();
  v24 = *(*(v23 - 8) + 16);
  v24(v26, v27, v23);
  v24(v26, v27, v23);
  sub_1CFBA44C0(&v33, v26);

  sub_1CFBA29FC(&v34, v26, &unk_1EC4EFAD0, &qword_1CFCA78D0);
  return sub_1CFBA29FC(&v32, v26, &qword_1EC4EF7C0, &qword_1CFCA78D8);
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

void *sub_1CFBA4538(void *a1, int64_t a2, char a3)
{
  result = sub_1CFBA4558(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1CFBA4558(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED5C0, &qword_1CFCA87D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 120);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[15 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 120 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED5C8, &qword_1CFCA24B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1CFBA46A8(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
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

  result = sub_1CFBA47B0(result, v11, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED5C8, &qword_1CFCA24B0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1CFBA47B0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED5C0, &qword_1CFCA87D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 120);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[15 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 120 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED5C8, &qword_1CFCA24B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1CFBA48FC(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_sections;
  swift_beginAccess();
  v5 = *(v2 + v4);
  v6 = *(v5 + 16);

  v17 = v6;
  v8 = 0;
  if (v6)
  {
    v9 = (v5 + 40);
    while (v8 < *(v5 + 16))
    {
      v10 = *(v9 - 1);
      v11 = *v9;
      ObjectType = swift_getObjectType();
      v13 = *(v11 + 40);
      swift_unknownObjectRetain();
      v13(v19, ObjectType, v11);
      __swift_project_boxed_opaque_existential_1(v19, v19[3]);
      v14 = sub_1CFC9F6D8();
      v15 = swift_getObjectType();
      (*(a2 + 40))(v18, v15, a2);
      __swift_project_boxed_opaque_existential_1(v18, v18[3]);
      v16 = sub_1CFC9F6D8();
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      result = __swift_destroy_boxed_opaque_existential_1Tm(v19);
      if (v14 == v16)
      {
        goto LABEL_7;
      }

      ++v8;
      v9 += 2;
      if (v17 == v8)
      {
        v8 = 0;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:

    return v8;
  }

  return result;
}

unint64_t sub_1CFBA4A9C@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 64))
  {
    v3 = 3;
  }

  else
  {
    v3 = 1;
  }

  *(a1 + 24) = &type metadata for Sections;
  result = sub_1CFBA4AE4();
  *(a1 + 32) = result;
  *a1 = v3;
  return result;
}

unint64_t sub_1CFBA4AE4()
{
  result = qword_1EE04D708;
  if (!qword_1EE04D708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04D708);
  }

  return result;
}

unint64_t sub_1CFBA4B3C()
{
  result = qword_1EE04D700;
  if (!qword_1EE04D700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04D700);
  }

  return result;
}

uint64_t sub_1CFBA4B90()
{
  v1 = *v0;
  sub_1CFCA0338();
  MEMORY[0x1D3872880](v1);
  return sub_1CFCA0378();
}

void SectionnedCollectionViewController.selectedRows(in:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1CFC9C0A8();
  v52 = *(v7 - 8);
  v8 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v51 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CFC9C138();
  v61 = *(v10 - 8);
  v11 = *(v61 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v60 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v48 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v48 - v17;
  v19 = sub_1CFBA48FC(a1, a2);
  if (v20)
  {
    sub_1CFBA5194(&unk_1EE04D6C8, MEMORY[0x1E6969B50]);
    sub_1CFC9FF48();
    return;
  }

  v21 = v19;
  v22 = [v3 collectionView];
  if (!v22)
  {
    goto LABEL_30;
  }

  v23 = v22;
  v24 = [v22 indexPathsForSelectedItems];

  if (v24)
  {
    v49 = v7;
    v50 = a3;
    v25 = sub_1CFC9F8A8();

    v26 = MEMORY[0x1E69E7CC0];
    v59 = *(v25 + 16);
    if (v59)
    {
      v27 = 0;
      v53 = (v61 + 8);
      v54 = v25;
      v57 = (v61 + 32);
      v58 = v61 + 16;
      v55 = v21;
      v56 = v16;
      while (v27 < *(v25 + 16))
      {
        v28 = (*(v61 + 80) + 32) & ~*(v61 + 80);
        v29 = *(v61 + 72);
        (*(v61 + 16))(v18, v25 + v28 + v29 * v27, v10);
        if (sub_1CFC9C128() == v21)
        {
          v30 = *v57;
          (*v57)(v16, v18, v10);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v63 = v26;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1CFBCA940(0, v26[2] + 1, 1);
            v26 = v63;
          }

          v33 = v26[2];
          v32 = v26[3];
          if (v33 >= v32 >> 1)
          {
            sub_1CFBCA940(v32 > 1, v33 + 1, 1);
            v26 = v63;
          }

          v26[2] = v33 + 1;
          v34 = v26 + v28 + v33 * v29;
          v16 = v56;
          v30(v34, v56, v10);
          v25 = v54;
          v21 = v55;
        }

        else
        {
          (*v53)(v18, v10);
        }

        if (v59 == ++v27)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
      return;
    }

LABEL_16:

    v35 = v26[2];
    if (v35)
    {
      v63 = MEMORY[0x1E69E7CC0];
      sub_1CFBAAA38(0, v35, 0);
      v36 = v63;
      v37 = *(v61 + 16);
      v38 = v26 + ((*(v61 + 80) + 32) & ~*(v61 + 80));
      v58 = *(v61 + 72);
      v59 = v37;
      v61 += 16;
      v39 = (v61 - 8);
      do
      {
        v40 = v60;
        v59(v60, v38, v10);
        v41 = sub_1CFC9C0F8();
        (*v39)(v40, v10);
        v63 = v36;
        v43 = v36[2];
        v42 = v36[3];
        if (v43 >= v42 >> 1)
        {
          sub_1CFBAAA38((v42 > 1), v43 + 1, 1);
          v36 = v63;
        }

        v36[2] = v43 + 1;
        v36[v43 + 4] = v41;
        v38 += v58;
        --v35;
      }

      while (v35);
    }

    else
    {

      v36 = MEMORY[0x1E69E7CC0];
    }

    v7 = v49;
    a3 = v50;
  }

  else
  {
    v36 = MEMORY[0x1E69E7CC0];
  }

  sub_1CFBA5194(&unk_1EE04D6C8, MEMORY[0x1E6969B50]);
  v44 = v51;
  sub_1CFC9FF48();
  v45 = v36[2];
  if (v45)
  {
    v46 = v36 + 4;
    do
    {
      v47 = *v46++;
      v62 = v47;
      sub_1CFC9FF38();
      --v45;
    }

    while (v45);
  }

  (*(v52 + 32))(a3, v44, v7);
}

uint64_t sub_1CFBA5194(unint64_t *a1, void (*a2)(uint64_t))
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

void _s10CallsAppUI34SectionnedCollectionViewControllerC24sectionNeedsLayoutUpdate8animatedySb_tF_0(char a1)
{
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = type metadata accessor for CollectionViewCompositionalLayout();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR____TtC10CallsAppUI33CollectionViewCompositionalLayout_initialLayoutAttributeProvider];
  *v8 = sub_1CFBBA16C;
  v8[1] = v4;
  v9 = &v7[OBJC_IVAR____TtC10CallsAppUI33CollectionViewCompositionalLayout_finalLayoutAttributesForDisappearingItem];
  *v9 = sub_1CFBCCEF0;
  v9[1] = v5;
  aBlock[4] = sub_1CFBADA6C;
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CFBAD9F0;
  aBlock[3] = &block_descriptor_62;
  v10 = _Block_copy(aBlock);

  v14.receiver = v7;
  v14.super_class = v6;
  v11 = objc_msgSendSuper2(&v14, sel_initWithSectionProvider_, v10);

  _Block_release(v10);
  v12 = [v1 collectionView];
  if (v12)
  {
    v13 = v12;
    [v12 setCollectionViewLayout:v11 animated:a1 & 1];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1CFBA5404(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 32) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t sub_1CFBA5464()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF860, &qword_1CFCA4AD0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v17 - v4;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE610, &qword_1CFCA4AD8);
  v6 = *(v18 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v9 = &v17 - v8;
  v10 = *(v0 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_dataSource);
  v20 = sub_1CFC9C848();
  sub_1CFBA2D80(0, &qword_1EE04FF80, 0x1E69E9610);
  v11 = sub_1CFC9FC28();
  v19 = v11;
  v12 = sub_1CFC9FBF8();
  (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE618, &unk_1CFCA4AE0);
  sub_1CFBA57C0(&qword_1EE04D5C8, &qword_1EC4EE618, &unk_1CFCA4AE0);
  sub_1CFC72300(&qword_1EE04FF90, &qword_1EE04FF80, 0x1E69E9610);
  sub_1CFC9DD88();
  sub_1CFBC2FB0(v5, &qword_1EC4EF860, &qword_1CFCA4AD0);

  swift_allocObject();
  swift_weakInit();
  sub_1CFBA57C0(&qword_1EE04D5E0, &qword_1EC4EE610, &qword_1CFCA4AD8);
  v13 = v18;
  v14 = sub_1CFC9DD68();

  (*(v6 + 8))(v9, v13);
  v15 = *(v1 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_updateCancellable);
  *(v1 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_updateCancellable) = v14;
}

uint64_t sub_1CFBA5790()
{
  sub_1CFBA5464();
  v1 = *(v0 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_dataSource);
  return sub_1CFC9C8B8();
}

uint64_t sub_1CFBA57C0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CFBA5808(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE538, qword_1CFCA9BD0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1CFBA5878()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_recentsRemindersSection);
  if (v1)
  {
    v2 = OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_items;
    swift_beginAccess();
    v31 = *(*(v1 + v2) + 16);
    v3 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_sections;
    swift_beginAccess();
    v29 = v3;
    v30 = v0;
    v4 = *(v0 + v3);
    v5 = *(v4 + 16);

    v6 = (v4 + 40);
    v32 = -v5;
    v7 = -1;
    while (v32 + v7 != -1)
    {
      if (++v7 >= *(v4 + 16))
      {
        __break(1u);
LABEL_25:
        swift_once();
        goto LABEL_17;
      }

      v8 = v6 + 2;
      v10 = *(v6 - 1);
      v9 = *v6;
      ObjectType = swift_getObjectType();
      v12 = *(v9 + 40);
      swift_unknownObjectRetain();
      v12(v33, ObjectType, v9);
      __swift_project_boxed_opaque_existential_1(v33, v33[3]);
      v13 = sub_1CFC9F6D8();
      LODWORD(v9) = *(v1 + 64);
      sub_1CFCA0338();
      if (v9)
      {
        v14 = 3;
      }

      else
      {
        v14 = 1;
      }

      MEMORY[0x1D3872880](v14);
      v15 = sub_1CFCA0378();
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1Tm(v33);
      v6 = v8;
      if (v13 == v15)
      {

        if (!v31)
        {
          if (qword_1EE050010 == -1)
          {
            goto LABEL_11;
          }

          goto LABEL_27;
        }

LABEL_22:

        return;
      }
    }

    if (!v31)
    {
      goto LABEL_22;
    }

    if (qword_1EE050010 != -1)
    {
      goto LABEL_25;
    }

LABEL_17:
    v22 = sub_1CFC9D938();
    __swift_project_value_buffer(v22, qword_1EE052308);
    v23 = sub_1CFC9D918();
    v24 = sub_1CFC9FAF8();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1CFB9F000, v23, v24, "Reminders Section was not present but now needed. Adding it.", v25, 2u);
      MEMORY[0x1D3873280](v25, -1, -1);
    }

    v26 = *(v30 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_favoriteSection) != 0;
    swift_beginAccess();
    v27 = sub_1CFC6A6B0(&qword_1EE04F4F8, type metadata accessor for RecentsSectionController);
    if (*(*(v30 + v29) + 16) >= v26)
    {
      v28 = v27;

      sub_1CFBA73C4(v26, v26, v1, v28);
      swift_endAccess();

      goto LABEL_21;
    }

    __break(1u);
LABEL_27:
    swift_once();
LABEL_11:
    v16 = sub_1CFC9D938();
    __swift_project_value_buffer(v16, qword_1EE052308);
    v17 = sub_1CFC9D918();
    v18 = sub_1CFC9FAF8();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1CFB9F000, v17, v18, "Reminders Section was present but no longer needed. Removing it.", v19, 2u);
      MEMORY[0x1D3873280](v19, -1, -1);
    }

    swift_beginAccess();

    v20 = sub_1CFC695D0((v30 + v29), v1);

    v21 = *(*(v30 + v29) + 16);
    if (v21 >= v20)
    {
      sub_1CFBCB5C4(v20, v21);
      swift_endAccess();
LABEL_21:
      sub_1CFBA76C8();
      goto LABEL_22;
    }

    __break(1u);
  }
}

size_t sub_1CFBA5CC0(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
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

uint64_t RecentsViewController.finishedFirstLoadSubject.getter()
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF938, &qword_1CFCA79F8);
  v1 = *(v14 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v4 = &v13 - v3;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF940, &unk_1CFCA7A00);
  v5 = *(v15 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v8 = &v13 - v7;
  v16 = *(v0 + OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_finishedSectionReload);
  swift_allocObject();
  swift_unknownObjectWeakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED3D8, &qword_1CFCA22D0);
  sub_1CFBA57C0(&qword_1EE04D5B0, &qword_1EC4ED3D8, &qword_1CFCA22D0);
  sub_1CFC9DD78();

  sub_1CFC9DC78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EF948, &qword_1CFCA7A10);
  sub_1CFBA57C0(&unk_1EE04D600, &qword_1EC4EF938, &qword_1CFCA79F8);
  sub_1CFBA57C0(&qword_1EE04D598, &unk_1EC4EF948, &qword_1CFCA7A10);
  v9 = v14;
  sub_1CFC9DDC8();
  (*(v1 + 8))(v4, v9);
  sub_1CFBA57C0(&unk_1EE04D5F0, &qword_1EC4EF940, &unk_1CFCA7A00);
  v10 = v15;
  v11 = sub_1CFC9DD58();
  (*(v5 + 8))(v8, v10);
  return v11;
}

void sub_1CFBA6268()
{
  v1 = v0;
  sub_1CFBA2114();
  v3 = v2;
  v4 = *&v1[OBJC_IVAR___CAUILayoutManager_tapRecentsToCallKey];
  v5 = *&v1[OBJC_IVAR___CAUILayoutManager_tapRecentsToCallKey + 8];
  v6 = sub_1CFC9F728();
  v7 = [v3 BOOLForKey_];

  [v1 setTapRecentsToCall_];
  sub_1CFBA2114();
  v9 = v8;
  v10 = *&v1[OBJC_IVAR___CAUILayoutManager_layoutKey];
  v11 = *&v1[OBJC_IVAR___CAUILayoutManager_layoutKey + 8];
  v12 = sub_1CFBA2284();
  LOBYTE(v7) = v13;

  if ((v7 & 1) == 0)
  {

    [v1 setLayout_];
  }
}

Swift::Void __swiftcall CAUILayoutManager.setTapRecentsToCall(_:)(Swift::Bool a1)
{
  v2 = OBJC_IVAR___CAUILayoutManager__tapRecentsToCall;
  if (*(v1 + OBJC_IVAR___CAUILayoutManager__tapRecentsToCall) != a1)
  {
    *(v1 + OBJC_IVAR___CAUILayoutManager__tapRecentsToCall) = a1;
    sub_1CFBA2114();
    v4 = v3;
    v5 = *(v1 + v2);
    v6 = *(v1 + OBJC_IVAR___CAUILayoutManager_tapRecentsToCallKey);
    v7 = *(v1 + OBJC_IVAR___CAUILayoutManager_tapRecentsToCallKey + 8);
    v8 = sub_1CFC9F728();
    [v4 setBool:v5 forKey:v8];
  }
}

void CAUILayoutManager.setLayout(_:)(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___CAUILayoutManager__current);
  *(v1 + OBJC_IVAR___CAUILayoutManager__current) = a1;
  sub_1CFC19218(v2);
}

Swift::Void __swiftcall RecentsViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v36 - v7;
  v9 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_favoriteSection;
  if (!*&v1[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_favoriteSection])
  {
    v10 = *&v1[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_favoritesDataSource];
    if (v10)
    {
      v11 = *&v1[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_detailsPresenter];
      v12 = type metadata accessor for FavoriteSectionController(0);
      v13 = *(v12 + 48);
      v14 = *(v12 + 52);
      swift_allocObject();
      swift_retain_n();

      v15 = sub_1CFBA6C6C(v10, v11);
      v16 = *&v2[v9];
      *&v2[v9] = v15;

      v17 = sub_1CFC6A6B0(qword_1EE04F018, type metadata accessor for FavoriteSectionController);
      swift_beginAccess();
      sub_1CFBA73C4(0, 0, v15, v17);
      swift_endAccess();

      sub_1CFBA76C8();
    }

    else
    {
      *&v1[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_favoriteSection] = 0;
    }
  }

  v18 = [v2 navigationController];
  if (v18)
  {
    v19 = v18;
    v20 = [v18 navigationBar];

    [v20 setPrefersLargeTitles_];
  }

  v21 = objc_opt_self();
  v22 = [v21 currentDevice];
  v23 = [v22 userInterfaceIdiom];

  if (v23)
  {
    v24 = _s10CallsAppUI21RecentsViewControllerC14navigationItemSo012UINavigationH0Cvg_0();
    v25 = sub_1CFC57D08();
    [v24 setSearchController_];

    v26 = [v21 currentDevice];
    v27 = [v26 userInterfaceIdiom];

    if (((v27 == 5) & ~_UISolariumEnabled()) == 0 && v27 != 6)
    {
      [*&v2[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController____lazy_storage____navItem] setPreferredSearchBarPlacement_];
    }
  }

  swift_getKeyPath();
  v28 = sub_1CFC9CC28();

  if ((v28 & 1) != 0 && _UISolariumEnabled())
  {
    v29 = _s10CallsAppUI21RecentsViewControllerC14navigationItemSo012UINavigationH0Cvg_0();
    v30 = [objc_allocWithZone(MEMORY[0x1E695D1D0]) init];
    [v29 _setBottomPalette_];
  }

  sub_1CFBAB5EC();
  sub_1CFBAD088();
  sub_1CFBAD5E0();
  sub_1CFC5B778();
  v31 = sub_1CFC9F998();
  (*(*(v31 - 8) + 56))(v8, 1, 1, v31);
  sub_1CFC9F968();
  v32 = v2;
  v33 = sub_1CFC9F958();
  v34 = swift_allocObject();
  v35 = MEMORY[0x1E69E85E0];
  v34[2] = v33;
  v34[3] = v35;
  v34[4] = v32;
  sub_1CFBDC030(0, 0, v8, &unk_1CFCA7960, v34);

  v37.receiver = v32;
  v37.super_class = ObjectType;
  objc_msgSendSuper2(&v37, sel_viewWillAppear_, a1);
}

uint64_t sub_1CFBA693C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1CFC9CC58();
  *a1 = result & 1;
  return result;
}

void sub_1CFBA69F0(char a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for SectionnedCollectionViewController();
  objc_msgSendSuper2(&v7, sel_viewWillAppear_, a1 & 1);
  *(v1 + OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_isVisible) = 1;
  v3 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_shouldUpdateOnAppear;
  if (*(v1 + OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_shouldUpdateOnAppear) == 1)
  {
    sub_1CFBA8154(0, 0, 0);
    *(v1 + v3) = 0;
  }

  v4 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_viewAppeared;
  if ((*(v1 + OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_viewAppeared) & 1) == 0)
  {
    _s10CallsAppUI34SectionnedCollectionViewControllerC24sectionNeedsLayoutUpdate8animatedySb_tF_0(0);
    sub_1CFBA8154(0, 0, 0);
    sub_1CFC90328();
    *(v1 + v4) = 1;
  }

  v5 = [v1 traitCollection];
  v6 = [v5 splitViewControllerLayoutEnvironment];

  if (v6 == 2)
  {
    sub_1CFBC5F74(1);
  }
}

void sub_1CFBA6B08()
{
  sub_1CFC17E50(319, &qword_1EE04D090, &qword_1EC4EFFB8, &qword_1CFCA8D18);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1CFC17E50(319, &qword_1EE04D088, &qword_1EC4EFFC0, &qword_1CFCA8D20);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1CFBA6C6C(uint64_t a1, uint64_t a2)
{
  v39 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFFD0, &unk_1CFCA8DB8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v38 = v36 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFFD8, &unk_1CFCA8DC8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v37 = v36 - v9;
  v10 = sub_1CFC9CE08();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 24) = 0;
  swift_unknownObjectWeakInit();
  v15 = MEMORY[0x1E69E7CC0];
  *(v2 + 32) = MEMORY[0x1E69E7CC0];
  *(v2 + 40) = 0;
  *(v2 + 48) = [objc_allocWithZone(type metadata accessor for SimultaneousGestureRecognizerDelegate()) init];
  *(v2 + 56) = v15;
  v16 = MEMORY[0x1E69E7CD0];
  *(v2 + 80) = 0;
  *(v2 + 88) = v16;
  *(v2 + 96) = 0;
  v17 = type metadata accessor for FavoriteCellConfig(0);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  v20 = swift_allocObject();
  *(v20 + 16) = 0x4059000000000000;
  sub_1CFC9CDF8();
  (*(v11 + 32))(v20 + OBJC_IVAR____TtC10CallsAppUI18FavoriteCellConfig__tileStyle, v14, v10);
  *(v20 + OBJC_IVAR____TtC10CallsAppUI18FavoriteCellConfig__isEditing) = 0;
  v21 = (v20 + OBJC_IVAR____TtC10CallsAppUI18FavoriteCellConfig__draggingItemEntryId);
  *v21 = 0;
  v21[1] = 0;
  sub_1CFC9C188();
  *(v2 + 104) = v20;
  v22 = OBJC_IVAR____TtC10CallsAppUI25FavoriteSectionController_cellRegistration;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFFB8, &qword_1CFCA8D18);
  v24 = *(*(v23 - 8) + 56);
  v24(v2 + v22, 1, 1, v23);
  v25 = OBJC_IVAR____TtC10CallsAppUI25FavoriteSectionController_showAllCellRegistration;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFFC0, &qword_1CFCA8D20);
  v27 = *(v26 - 8);
  v36[0] = *(v27 + 56);
  v36[1] = v27 + 56;
  (v36[0])(v2 + v25, 1, 1, v26);
  swift_unknownObjectWeakInit();
  *(v2 + OBJC_IVAR____TtC10CallsAppUI25FavoriteSectionController_itemsPerRow) = 3;
  *(v2 + OBJC_IVAR____TtC10CallsAppUI25FavoriteSectionController_tileWidth) = 0;
  v28 = v39;
  *(v2 + 64) = a1;
  *(v2 + 72) = v28;
  v29 = swift_allocObject();
  swift_weakInit();
  v30 = swift_allocObject();
  *(v30 + 16) = v29;
  *(v30 + 24) = a1;
  sub_1CFBA2D80(0, &qword_1EE04CF90, 0x1E69DC7F8);
  sub_1CFC9C608();
  swift_retain_n();

  v31 = v37;
  sub_1CFC9FB68();
  v24(v31, 0, 1, v23);
  v32 = OBJC_IVAR____TtC10CallsAppUI25FavoriteSectionController_cellRegistration;
  swift_beginAccess();
  sub_1CFBA735C(v31, v2 + v32, &qword_1EC4EFFD8, &unk_1CFCA8DC8);
  swift_endAccess();
  swift_allocObject();
  swift_weakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE888, &qword_1CFCA5560);
  v33 = v38;
  sub_1CFC9FB68();

  (v36[0])(v33, 0, 1, v26);
  v34 = OBJC_IVAR____TtC10CallsAppUI25FavoriteSectionController_showAllCellRegistration;
  swift_beginAccess();
  sub_1CFBA735C(v33, v2 + v34, &qword_1EC4EFFD0, &unk_1CFCA8DB8);
  swift_endAccess();
  return v2;
}

uint64_t sub_1CFBA7170()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CFBA71A8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1CFBA726C()
{
  result = sub_1CFC9CE08();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_1CFC9C198();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1CFBA735C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

unint64_t sub_1CFBA73C4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = result;
  v9 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = __OFSUB__(1, v9);
  v11 = 1 - v9;
  if (v10)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = v7 + v11;
  if (__OFADD__(v7, v11))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v15 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v12 > v6[3] >> 1)
  {
    if (v7 <= v12)
    {
      v17 = v12;
    }

    else
    {
      v17 = v7;
    }

    v6 = sub_1CFBA74A0(isUniquelyReferenced_nonNull_native, v17, 1, v6);
    *v4 = v6;
  }

  result = sub_1CFBA75D4(v8, a2, 1, a3, a4);
  *v4 = v6;
  return result;
}

void *sub_1CFBA74A0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFD60, &unk_1CFCA8700);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED548, &qword_1CFCA2450);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_1CFBA75D4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = *v5;
  v12 = (v11 + 32 + 16 * result);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED548, &qword_1CFCA2450);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(a3, v6);
  v14 = a3 - v6;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v14)
  {
    v15 = *(v11 + 16);
    v13 = __OFSUB__(v15, a2);
    v16 = v15 - a2;
    if (!v13)
    {
      result = &v12[2 * a3];
      v17 = (v11 + 32 + 16 * a2);
      if (result != v17 || result >= v17 + 16 * v16)
      {
        result = memmove(result, v17, 16 * v16);
      }

      v19 = *(v11 + 16);
      v13 = __OFADD__(v19, v14);
      v20 = v19 + v14;
      if (!v13)
      {
        *(v11 + 16) = v20;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 > 0)
  {
    *v12 = a4;
    v12[1] = a5;
    result = swift_unknownObjectRetain();
    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

id sub_1CFBA76C8()
{
  v1 = v0;
  sub_1CFC90328();
  v2 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_sections;
  swift_beginAccess();
  v3 = *&v1[v2];
  v26 = *(v3 + 16);
  if (!v26)
  {
    return sub_1CFBA8154(0, 0, 1);
  }

  v4 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_configuredSectionHashes;
  v25 = v3 + 32;

  v28 = v4;
  result = swift_beginAccess();
  v6 = 0;
  v24 = v3;
  while (v6 < *(v3 + 16))
  {
    v7 = (v25 + 16 * v6);
    v8 = *v7;
    v9 = v7[1];
    v10 = *&v1[v28];
    ObjectType = swift_getObjectType();
    v12 = *(v9 + 40);
    swift_unknownObjectRetain();

    v27 = v12;
    v12(v30, ObjectType, v9);
    __swift_project_boxed_opaque_existential_1(v30, v31);
    v13 = sub_1CFC9F6D8();
    if (*(v10 + 16) && (v14 = v13, v15 = *(v10 + 40), v16 = sub_1CFCA0328(), v17 = -1 << *(v10 + 32), v18 = v16 & ~v17, ((*(v10 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) != 0))
    {
      v19 = ~v17;
      while (*(*(v10 + 48) + 8 * v18) != v14)
      {
        v18 = (v18 + 1) & v19;
        if (((*(v10 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
        {
          goto LABEL_11;
        }
      }
    }

    else
    {
LABEL_11:

      __swift_destroy_boxed_opaque_existential_1Tm(v30);
      v20 = *(v9 + 56);
      v21 = swift_unknownObjectRetain();
      v20(v21, &protocol witness table for SectionnedCollectionViewController, ObjectType, v9);
      result = [v1 collectionView];
      if (!result)
      {
        goto LABEL_16;
      }

      v22 = result;
      (*(v9 + 104))(result, ObjectType, v9);

      v27(v30, ObjectType, v9);
      __swift_project_boxed_opaque_existential_1(v30, v31);
      v23 = sub_1CFC9F6D8();
      swift_beginAccess();
      sub_1CFBC7D58(&v29, v23);
      swift_endAccess();
    }

    swift_unknownObjectRelease();
    result = __swift_destroy_boxed_opaque_existential_1Tm(v30);
    ++v6;
    v3 = v24;
    if (v6 == v26)
    {

      return sub_1CFBA8154(0, 0, 1);
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t objectdestroy_2Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t objectdestroy_41Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

void sub_1CFBA7A90()
{
  sub_1CFC9C608();
  if (v0 <= 0x3F)
  {
    sub_1CFBA7B04();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1CFBA7B04()
{
  if (!qword_1EE04D118)
  {
    sub_1CFC9C608();
    v0 = sub_1CFC9F918();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE04D118);
    }
  }
}

unint64_t sub_1CFBA7B5C@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for Sections;
  result = sub_1CFBA4AE4();
  *(a1 + 32) = result;
  *a1 = 0;
  return result;
}

uint64_t sub_1CFBA7B94(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void sub_1CFBA7BF8(void *a1)
{
  v2 = v1;
  v12[0] = a1;
  v3 = sub_1CFC9FC98();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakAssign();
  v8 = *(v1 + 64);
  v12[1] = sub_1CFC9C6B8();
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFFF0, &qword_1CFCA8E40);
  sub_1CFBA57C0(&unk_1EE04D5A0, &qword_1EC4EFFF0, &qword_1CFCA8E40);
  sub_1CFC9DDA8();

  swift_beginAccess();
  sub_1CFC9DC88();
  swift_endAccess();

  v9 = [objc_opt_self() defaultCenter];
  v10 = *MEMORY[0x1E69DDAC8];
  sub_1CFC9FCA8();

  swift_allocObject();
  swift_weakInit();
  sub_1CFBAAE00(&qword_1EE04CF98, MEMORY[0x1E6969F20]);
  sub_1CFC9DDA8();

  (*(v4 + 8))(v7, v3);
  swift_beginAccess();
  sub_1CFC9DC88();
  swift_endAccess();

  v11 = [objc_allocWithZone(MEMORY[0x1E69DCC48]) initWithTarget:v2 action:sel_handleLongPress_];
  [v11 setDelegate_];
  [v12[0] addGestureRecognizer_];
}

uint64_t sub_1CFBA7F24(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = 3;
    if (*(v1 + 16) > 3uLL)
    {
      v4 = 4;
    }

    if (*(result + OBJC_IVAR____TtC10CallsAppUI25FavoriteSectionController_itemsPerRow) != v4)
    {
      *(result + OBJC_IVAR____TtC10CallsAppUI25FavoriteSectionController_itemsPerRow) = v4;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v5 = *(v3 + 24);
        ObjectType = swift_getObjectType();
        (*(v5 + 16))(0, ObjectType, v5);
        swift_unknownObjectRelease();
      }
    }

    sub_1CFC83538();
  }

  return result;
}

uint64_t sub_1CFBA811C(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_isVisible) == 1)
  {
    return sub_1CFBA8154(0, 0, result & 1);
  }

  *(v1 + OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_shouldUpdateOnAppear) = 1;
  return result;
}

uint64_t sub_1CFBA8154(uint64_t a1, uint64_t a2, int a3)
{
  v234 = a3;
  v229 = a2;
  v233 = a1;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED5D0, &qword_1CFCA24B8);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v243 = &v222 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v242 = &v222 - v7;
  v244 = sub_1CFC9DBB8();
  v240 = *(v244 - 8);
  v8 = *(v240 + 64);
  v9 = MEMORY[0x1EEE9AC00](v244);
  v241 = &v222 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v224 = &v222 - v11;
  v250 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED5D8, &qword_1CFCA24C0);
  v239 = *(v250 - 8);
  v12 = *(v239 + 64);
  MEMORY[0x1EEE9AC00](v250);
  v237 = &v222 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED5E0, &qword_1CFCA24C8);
  v225 = *(v14 - 8);
  v15 = *(v225 + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v226 = v17;
  v227 = &v222 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v238 = &v222 - v18;
  v254 = sub_1CFC9C138();
  v19 = *(v254 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v254);
  v22 = &v222 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1CFC9D888();
  v24 = *(v23 - 1);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x1EEE9AC00](v23);
  v28 = &v222 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v30 = (&v222 - v29);
  if (qword_1EE04D9A0 != -1)
  {
    goto LABEL_242;
  }

  while (1)
  {
    v31 = sub_1CFC9D8B8();
    __swift_project_value_buffer(v31, qword_1EE04D9B0);
    sub_1CFC9D878();
    v32 = sub_1CFC9D8A8();
    v33 = sub_1CFC9FC58();
    if (sub_1CFC9FEA8())
    {
      v34 = swift_slowAlloc();
      v267 = v23;
      v35 = v34;
      *v34 = 0;
      v36 = sub_1CFC9D868();
      _os_signpost_emit_with_name_impl(&dword_1CFB9F000, v32, v33, v36, "SectionnedCollectionViewController loading", "", v35, 2u);
      v37 = v35;
      v23 = v267;
      MEMORY[0x1D3873280](v37, -1, -1);
    }

    (*(v24 + 16))(v28, v30, v23);
    v38 = sub_1CFC9D8F8();
    v39 = *(v38 + 48);
    v40 = *(v38 + 52);
    swift_allocObject();
    v236 = sub_1CFC9D8E8();
    v41 = *(v24 + 8);
    v24 += 8;
    v41(v30, v23);
    v42 = [v255 collectionView];
    if (!v42)
    {
      goto LABEL_249;
    }

    v43 = v42;
    v44 = [v42 indexPathsForVisibleItems];

    v45 = sub_1CFC9F8A8();
    v46 = v45;
    v30 = MEMORY[0x1E69E7CC0];
    v267 = *(v45 + 16);
    if (v267)
    {
      v47 = 0;
      v24 = 0;
      v266 = v19 + 16;
      v33 = v19 + 8;
      v48 = v254;
      while (v47 < v46[2])
      {
        v23 = v46;
        v28 = v48;
        (*(v19 + 16))(v22, v46 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v47, v48);
        v49 = sub_1CFBC3820(v255, &v287);
        (*v33)(v22, v28, v49);
        if (*(&v288 + 1))
        {
          v283 = v289;
          v284 = v290;
          v285 = v291;
          v286 = v292;
          v281 = v287;
          v282 = v288;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v30 = sub_1CFC7AE78(0, v30[2] + 1, 1, v30);
          }

          v28 = v30[2];
          v50 = v30[3];
          v48 = v254;
          if (v28 >= v50 >> 1)
          {
            v56 = sub_1CFC7AE78((v50 > 1), v28 + 1, 1, v30);
            v48 = v254;
            v30 = v56;
          }

          v46 = v23;
          v30[2] = v28 + 1;
          v51 = &v30[11 * v28];
          v52 = v282;
          *(v51 + 2) = v281;
          *(v51 + 3) = v52;
          v53 = v283;
          v54 = v284;
          v55 = v285;
          v51[14] = v286;
          *(v51 + 5) = v54;
          *(v51 + 6) = v55;
          *(v51 + 4) = v53;
        }

        else
        {
          sub_1CFBC2FB0(&v287, &qword_1EC4ED5E8, &qword_1CFCA24D0);
          v48 = v254;
          v46 = v23;
        }

        if (v267 == ++v47)
        {
          goto LABEL_16;
        }
      }

LABEL_230:
      __break(1u);
LABEL_231:
      __break(1u);
LABEL_232:
      __break(1u);
LABEL_233:
      __break(1u);
LABEL_234:
      __break(1u);
      goto LABEL_235;
    }

LABEL_16:
    v232 = v46;
    if (v30[2])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ED5F0, &qword_1CFCA24D8);
      v57 = sub_1CFCA0238();
    }

    else
    {
      v57 = MEMORY[0x1E69E7CC8];
    }

    v58 = v238;
    v22 = v250;
    *&v287 = v57;
    sub_1CFBCAED8(v30, 1, &v287);
    v223 = 0;

    v30 = v287;
    v28 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_items;
    v59 = 1;
    v60 = v255;
    swift_beginAccess();
    v61 = *&v60[v28];
    v253 = v28;
    *&v60[v28] = MEMORY[0x1E69E7CC0];

    v231 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_diffableDataSource;
    v62 = *&v60[OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_diffableDataSource];
    if (v62)
    {
      v63 = v62;
      sub_1CFC9DBF8();

      v59 = 0;
    }

    (*(v239 + 56))(v58, v59, 1, v22);
    v235 = swift_allocBox();
    v65 = v64;
    sub_1CFBCCD18();
    sub_1CFC9DB28();
    v24 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_sections;
    v19 = v255;
    swift_beginAccess();
    v230 = v24;
    v66 = *(v19 + v24);
    v248 = *(v66 + 16);
    v249 = v65;
    if (!v248)
    {
LABEL_182:
      if (v233)
      {
        v177 = swift_unknownObjectRetain();
        v178 = sub_1CFBA48FC(v177, v229);
        if (v179)
        {
          swift_unknownObjectRelease();
        }

        else
        {
          v180 = v178;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED600, &qword_1CFCA24E0);
          v24 = swift_allocObject();
          *(v24 + 16) = xmmword_1CFCA1DD0;
          *(v24 + 32) = v180;
          sub_1CFC9DAF8();
          swift_unknownObjectRelease();
        }
      }

      v181 = [v255 collectionView];
      if (!v181)
      {
        goto LABEL_250;
      }

      v182 = v181;

      v183 = [v182 indexPathsForSelectedItems];

      if (v183)
      {
        v267 = sub_1CFC9F8A8();
      }

      else
      {
        v267 = 0;
      }

      v184 = v249;
      v185 = v255;
      v266 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_hasAlreadyLoadedCollection;
      if (v255[OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_hasAlreadyLoadedCollection] == 1)
      {
        v19 = *&v255[v230];
        v186 = *(v19 + 16);

        v187 = (v19 + 40);
        v188 = -v186;
        v189 = -1;
        while (v188 + v189 != -1)
        {
          if (++v189 >= *(v19 + 16))
          {
            goto LABEL_236;
          }

          v23 = (v187 + 2);
          v190 = *(v187 - 1);
          v28 = *v187;
          v30 = swift_getObjectType();
          v24 = *(v28 + 128);
          swift_unknownObjectRetain();
          v22 = (v24)(v30, v28);
          swift_unknownObjectRelease();
          v187 = v23;
          if ((v22 & 1) == 0)
          {
            v234 = 0;
            break;
          }
        }

        v185 = v255;
        v184 = v249;
        v22 = v250;
      }

      else
      {
        v234 = 0;
      }

      v191 = *&v185[v231];
      if (v191)
      {
        (*(v239 + 16))(v237, v184, v22);
        v192 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v193 = v227;
        sub_1CFBA29FC(v238, v227, &qword_1EC4ED5E0, &qword_1CFCA24C8);
        v194 = (*(v225 + 80) + 40) & ~*(v225 + 80);
        v195 = (v226 + v194 + 7) & 0xFFFFFFFFFFFFFFF8;
        v196 = swift_allocObject();
        v197 = v236;
        v196[2] = v192;
        v196[3] = v197;
        v196[4] = v267;
        v22 = v250;
        sub_1CFBCCE88(v193, v196 + v194, &qword_1EC4ED5E0, &qword_1CFCA24C8);
        *(v196 + v195) = v235;
        *(v196 + ((v195 + 15) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
        v198 = v191;
        v28 = v237;
        v199 = v198;

        sub_1CFC9DBE8();

        v200 = v239;

        (*(v200 + 8))(v28, v22);
        v184 = v249;

        v24 = v244;
      }

      else
      {

        v24 = v244;
        v200 = v239;
        v28 = v237;
      }

      swift_beginAccess();
      (*(v200 + 16))(v28, v184, v22);
      v201 = v200;
      v202 = sub_1CFC9DAD8();
      (*(v201 + 8))(v28, v22);
      if (v202)
      {
        *&v289 = 0;
        v287 = 0u;
        v288 = 0u;
        v203 = v255;
        sub_1CFC9FBD8();
        if ((v203[v266] & 1) == 0)
        {
          v217 = *&v203[OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_loadedDebounce];
          swift_allocObject();
          swift_unknownObjectWeakInit();

          sub_1CFC9D4F8();
        }

        sub_1CFBC2FB0(v238, &qword_1EC4ED5E0, &qword_1CFCA24C8);
      }

      else
      {
        v204 = *(*&v255[v230] + 16);

        v266 = v204;
        if (v204)
        {
          v23 = 0;
          v263 = (v240 + 48);
          v265 = (v240 + 32);
          v206 = (v205 + 40);
          v19 = MEMORY[0x1E69E7CC0];
          v30 = &qword_1EC4ED5D0;
          v264 = v205;
          while (v23 < *(v205 + 16))
          {
            v267 = v19;
            v207 = *(v206 - 1);
            v208 = *v206;
            v209 = swift_getObjectType();
            v210 = v30;
            v28 = v208 + 120;
            v211 = *(v208 + 120);
            swift_unknownObjectRetain();
            v212 = v243;
            v213 = v208;
            v24 = v244;
            v211(v209, v213);
            v30 = v210;
            v214 = v212;
            v22 = v242;
            sub_1CFBCCE88(v214, v242, v210, &qword_1CFCA24B8);
            swift_unknownObjectRelease();
            if ((*v263)(v22, 1, v24) == 1)
            {
              sub_1CFBC2FB0(v22, v210, &qword_1CFCA24B8);
              v19 = v267;
            }

            else
            {
              v28 = *v265;
              (*v265)(v241, v22, v24);
              v19 = v267;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v19 = sub_1CFC7ABFC(0, *(v19 + 16) + 1, 1, v19);
              }

              v216 = *(v19 + 16);
              v215 = *(v19 + 24);
              if (v216 >= v215 >> 1)
              {
                v19 = sub_1CFC7ABFC(v215 > 1, v216 + 1, 1, v19);
              }

              *(v19 + 16) = v216 + 1;
              (v28)(v19 + ((*(v240 + 80) + 32) & ~*(v240 + 80)) + *(v240 + 72) * v216, v241, v24);
            }

            v23 = (v23 + 1);
            v206 += 2;
            v205 = v264;
            if (v266 == v23)
            {
              goto LABEL_217;
            }
          }

          goto LABEL_237;
        }

        v19 = MEMORY[0x1E69E7CC0];
LABEL_217:

        if (*(v19 + 16))
        {
          v218 = v240;
          v219 = v224;
          (*(v240 + 16))(v224, v19 + ((*(v218 + 80) + 32) & ~*(v218 + 80)), v24);

          *(&v288 + 1) = v24;
          *&v289 = MEMORY[0x1E69DC1D0];
          boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v287);
          (*(v218 + 32))(boxed_opaque_existential_0Tm, v219, v24);
        }

        else
        {

          *&v289 = 0;
          v287 = 0u;
          v288 = 0u;
        }

        sub_1CFC9FBD8();

        sub_1CFBC2FB0(v238, &qword_1EC4ED5E0, &qword_1CFCA24C8);
      }
    }

    v247 = v66 + 32;

    v68 = 0;
    v33 = 40;
    *(&v69 + 1) = 2;
    v246 = xmmword_1CFCA1DD0;
    *&v69 = 136315138;
    v260 = v69;
    v259 = v30;
    v245 = v67;
    while (1)
    {
      if (v68 >= *(v67 + 16))
      {
        goto LABEL_234;
      }

      v252 = v68;
      v70 = (v247 + 16 * v68);
      v72 = *v70;
      v71 = v70[1];
      v19 = swift_getObjectType();
      v73 = *(v71 + 40);
      swift_unknownObjectRetain();
      v73(&v287, v19, v71);
      __swift_project_boxed_opaque_existential_1(&v287, *(&v288 + 1));
      v74 = sub_1CFC9F6D8();
      __swift_destroy_boxed_opaque_existential_1Tm(&v287);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED600, &qword_1CFCA24E0);
      v75 = swift_allocObject();
      *(v75 + 16) = v246;
      v267 = v74;
      *(v75 + 32) = v74;
      sub_1CFC9DAE8();

      v76 = *(v71 + 112);
      v251 = v72;
      v76(v19, v71);
      swift_getAssociatedTypeWitness();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ED5A0, &qword_1CFCA87C0);
      v24 = sub_1CFCA01C8();

      v263 = *(v24 + 16);
      v23 = 0;
      if (v263)
      {
        break;
      }

      v257 = MEMORY[0x1E69E7CC0];
      v264 = MEMORY[0x1E69E7CC0];
LABEL_175:

      v168 = v255;
      v169 = v253;
      swift_beginAccess();
      v170 = *&v168[v169];

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v168[v169] = v170;
      if (isUniquelyReferenced_nonNull_native)
      {
        v172 = v168;
      }

      else
      {
        v175 = sub_1CFC7AC24(0, v170[2] + 1, 1, v170);
        v172 = v255;
        v170 = v175;
        *&v255[v253] = v175;
      }

      v19 = v170[2];
      v173 = v170[3];
      v174 = v250;
      if (v19 >= v173 >> 1)
      {
        v176 = sub_1CFC7AC24((v173 > 1), v19 + 1, 1, v170);
        v172 = v255;
        v170 = v176;
      }

      v28 = v252 + 1;
      v170[2] = v19 + 1;
      v170[v19 + 4] = v264;
      *&v172[v253] = v170;
      swift_endAccess();
      *&v287 = v267;
      BYTE8(v287) = 0;

      sub_1CFC9DAC8();

      v24 = v257;
      sub_1CFC9DB08();
      v22 = v174;

      swift_unknownObjectRelease();

      v68 = v28;
      v67 = v245;
      v30 = v259;
      if (v28 == v248)
      {

        goto LABEL_182;
      }
    }

    v77 = 0;
    v258 = 0;
    v262 = v24 + 32;
    v28 = MEMORY[0x1E69E7CC0];
    v264 = MEMORY[0x1E69E7CC0];
    v257 = MEMORY[0x1E69E7CC0];
    v261 = v24;
LABEL_28:
    v30 = (v28 + 32);
    v22 = (v264 + 4);
    v78 = v77;
    v265 = v28;
    while (1)
    {
      if (v78 >= *(v24 + 16))
      {
        __break(1u);
LABEL_223:
        __break(1u);
LABEL_224:
        __break(1u);
LABEL_225:
        __break(1u);
LABEL_226:
        __break(1u);
LABEL_227:
        __break(1u);
LABEL_228:
        __break(1u);
LABEL_229:
        __break(1u);
        goto LABEL_230;
      }

      v266 = v78 + 1;
      sub_1CFBB94B0(v262 + 40 * v78, v276);
      v79 = v277;
      v80 = v278;
      __swift_project_boxed_opaque_existential_1(v276, v277);
      sub_1CFC55874(v79, v80);
      v275[5] = v267;
      v24 = *(v28 + 16);
      if (!v23)
      {
        break;
      }

      v81 = sub_1CFBCAB10(v275, v30, v24, v23 + 2, (v23 + 4));
      v24 = v82;

      if (v24)
      {
        goto LABEL_47;
      }

      if ((v81 & 0x8000000000000000) != 0)
      {
        goto LABEL_223;
      }

LABEL_35:
      if (v81 >= v264[2])
      {
        goto LABEL_224;
      }

      sub_1CFBB94B0(v22 + 40 * v81, &v281);
      sub_1CFBC2FB0(&v281, &qword_1EC4ED608, &qword_1CFCA24E8);
      if (qword_1EE050010 != -1)
      {
        swift_once();
      }

      v83 = sub_1CFC9D938();
      __swift_project_value_buffer(v83, qword_1EE052308);
      sub_1CFBCCD6C(v275, &v287);
      v84 = sub_1CFC9D918();
      v85 = sub_1CFC9FAD8();
      if (os_log_type_enabled(v84, v85))
      {
        v86 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        *&v269 = v87;
        *v86 = v260;
        sub_1CFBCCD6C(&v287, &v281);
        v88 = sub_1CFC9F798();
        v19 = v89;
        sub_1CFBCCDA4(&v287);
        v90 = sub_1CFBB531C(v88, v19, &v269);

        *(v86 + 4) = v90;
        v33 = 40;
        _os_log_impl(&dword_1CFB9F000, v84, v85, "SectionnedCollectionViewController: Duplicate ID found=%s.", v86, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v87);
        MEMORY[0x1D3873280](v87, -1, -1);
        MEMORY[0x1D3873280](v86, -1, -1);
      }

      else
      {

        sub_1CFBCCDA4(&v287);
      }

      sub_1CFBCCDA4(v275);
      v28 = v265;
      __swift_destroy_boxed_opaque_existential_1Tm(v276);
      v78 = v266;
      v24 = v261;
      if (v266 == v263)
      {
        goto LABEL_175;
      }
    }

    if (v24)
    {
      v81 = 0;
      v28 = v30;
      do
      {
        sub_1CFBCCD6C(v28, &v287);
        if (MEMORY[0x1D3872590](&v287, v275))
        {
          v19 = *(&v289 + 1);
          sub_1CFBCCDA4(&v287);
          if (v19 == v267)
          {
            goto LABEL_35;
          }
        }

        else
        {
          sub_1CFBCCDA4(&v287);
        }

        ++v81;
        v28 += 48;
      }

      while (v24 != v81);
    }

LABEL_47:
    *&v283 = 0;
    v281 = 0u;
    v282 = 0u;
    v19 = &qword_1CFCA24E8;
    sub_1CFBC2FB0(&v281, &qword_1EC4ED608, &qword_1CFCA24E8);
    sub_1CFBCCD6C(v275, v274);
    sub_1CFBB94B0(v276, v273);
    v28 = v265;
    v91 = v265[2];
    if (!v23)
    {
      break;
    }

    v33 = sub_1CFBCAB10(v274, v30, v91, v23 + 2, (v23 + 4));
    v93 = v92;
    v24 = &qword_1EC4ED608;
    v95 = v94;

    sub_1CFBA29FC(v273, &v282, &qword_1EC4ED608, &qword_1CFCA24E8);
    if (v93)
    {
      v30 = v259;
      goto LABEL_72;
    }

    if (*(&v283 + 1))
    {
      v30 = v259;
LABEL_64:
      sub_1CFBAD070(&v282, &v287);
      v99 = v264;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v264 = sub_1CFC7B894(v99);
      }

      sub_1CFBC2FB0(v273, &qword_1EC4ED608, &qword_1CFCA24E8);
      sub_1CFBCCDA4(v274);
      if ((v33 & 0x8000000000000000) != 0)
      {
        goto LABEL_232;
      }

      if (v33 >= v264[2])
      {
        goto LABEL_233;
      }

      v100 = &v264[5 * v33];
      v33 = 40;
      __swift_destroy_boxed_opaque_existential_1Tm(v100 + 4);
      sub_1CFBAD070(&v287, (v100 + 4));
      if (!v30[2])
      {
        goto LABEL_26;
      }

LABEL_159:
      v152 = sub_1CFC94ADC(v275);
      if ((v153 & 1) == 0)
      {
        goto LABEL_26;
      }

      v265 = v28;
      sub_1CFBB94B0(v30[7] + 40 * v152, &v287);
      sub_1CFBAD070(&v287, &v281);
      v154 = *(&v282 + 1);
      v155 = v283;
      __swift_project_boxed_opaque_existential_1(&v281, *(&v282 + 1));
      v24 = (*(v155 + 16))(v154, v155);
      v156 = v277;
      v157 = v278;
      __swift_project_boxed_opaque_existential_1(v276, v277);
      v158 = (*(v157 + 16))(v156, v157);
      v159 = v158;
      v19 = *(v24 + 16);
      if (v19 == *(v158 + 16))
      {
        if (v19 && v24 != v158)
        {
          v22 = 0;
          v30 = (v24 + 32);
          v28 = v158 + 32;
          while (v22 < *(v24 + 16))
          {
            sub_1CFBAAE48(v30, &v287);
            if (v22 >= *(v159 + 16))
            {
              goto LABEL_229;
            }

            sub_1CFBAAE48(v28, &v269);
            v160 = MEMORY[0x1D3872590](&v287, &v269);
            sub_1CFBAAEA4(&v269);
            sub_1CFBAAEA4(&v287);
            if ((v160 & 1) == 0)
            {
              goto LABEL_169;
            }

            ++v22;
            v30 += 5;
            v28 += 40;
            if (v19 == v22)
            {
              goto LABEL_168;
            }
          }

          goto LABEL_228;
        }

LABEL_168:

        sub_1CFBCCDA4(v275);
        __swift_destroy_boxed_opaque_existential_1Tm(&v281);
        v28 = v265;
      }

      else
      {
LABEL_169:

        sub_1CFBCCD6C(v275, &v287);
        v161 = swift_isUniquelyReferenced_nonNull_native();
        v28 = v265;
        if ((v161 & 1) == 0)
        {
          v257 = sub_1CFC7AD58(0, *(v257 + 2) + 1, 1, v257);
        }

        v163 = *(v257 + 2);
        v162 = *(v257 + 3);
        if (v163 >= v162 >> 1)
        {
          v257 = sub_1CFC7AD58((v162 > 1), v163 + 1, 1, v257);
        }

        v164 = v257;
        *(v257 + 2) = v163 + 1;
        v165 = &v164[48 * v163];
        v166 = v287;
        v167 = v289;
        *(v165 + 3) = v288;
        *(v165 + 4) = v167;
        *(v165 + 2) = v166;
        sub_1CFBCCDA4(v275);
        __swift_destroy_boxed_opaque_existential_1Tm(&v281);
      }

LABEL_27:
      __swift_destroy_boxed_opaque_existential_1Tm(v276);
      v77 = v266;
      v24 = v261;
      if (v266 == v263)
      {
        goto LABEL_175;
      }

      goto LABEL_28;
    }

    v111 = *(v28 + 16);
    swift_beginAccess();
    if ((v23[2] & 0x3F) == (v23[3] & 0x3F))
    {
      if (v111)
      {
        goto LABEL_92;
      }

LABEL_132:
      v30 = v259;
LABEL_133:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_1CFC7B880(v28);
      }

      v24 = *(v28 + 16);
      if (v33 < v24)
      {
        v141 = v28 + 48 * v33;
        sub_1CFBCCDA4(v141 + 32);
        memmove((v141 + 32), (v141 + 80), 48 * (v24 - 1 - v33));
        *(v28 + 16) = v24 - 1;
        if (v23)
        {
          swift_beginAccess();
          v142 = v23[3] & 0x3F;
          if (v24 <= 0x10 && !v142)
          {

            v258 = 0;
            v23 = 0;
            goto LABEL_154;
          }

LABEL_149:
          v145 = MEMORY[0x1D386F850](v24 - 1);
          if (v142 <= v145)
          {
            v146 = v145;
          }

          else
          {
            v146 = v142;
          }

          v147 = sub_1CFBCA6FC(v28, v146, 0, v142);

          v258 = v147;
          v23 = v147;
        }

        else
        {
          v142 = 0;
          if (v24 > 0x10)
          {
            goto LABEL_149;
          }

          v258 = 0;
          v23 = 0;
        }

LABEL_154:
        v19 = v264;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_1CFC7B894(v19);
        }

        v148 = *(v19 + 16);
        if (v33 < v148)
        {
          v149 = v148 - 1;
          v150 = v19 + 40 * v33;
          __swift_destroy_boxed_opaque_existential_1Tm((v150 + 32));
          v151 = v149 - v33;
          v33 = 40;
          memmove((v150 + 32), (v150 + 72), 40 * v151);
          v264 = v19;
          *(v19 + 16) = v149;
          goto LABEL_158;
        }

LABEL_235:
        __break(1u);
LABEL_236:
        __break(1u);
LABEL_237:
        __break(1u);
LABEL_238:
        __break(1u);
        goto LABEL_239;
      }

      goto LABEL_241;
    }

    if (v111 <= MEMORY[0x1D386F830]())
    {
      goto LABEL_132;
    }

LABEL_92:
    v19 = v258;
    if ((swift_isUniquelyReferenced_native() & 1) == 0)
    {
      if (!v19)
      {
        goto LABEL_248;
      }

      v112 = sub_1CFC9D308();

      v19 = v112;
    }

    if (!v19)
    {
      goto LABEL_246;
    }

    v23 = (v19 + 16);
    v24 = v19 + 32;
    v113 = sub_1CFC9D288();
    *&v269 = v19 + 16;
    *(&v269 + 1) = v19 + 32;
    *&v270 = v95;
    *(&v270 + 1) = v113;
    *&v271 = v114;
    *(&v271 + 1) = v115;
    v272 = 0;
    sub_1CFC9D2D8();
    v258 = v19;
    v256 = v19 + 32;
    if (*(&v270 + 1))
    {
      v24 = sub_1CFC9D298();

      while (1)
      {
        v297 = v269;
        v298 = v270;
        v299 = v271;
        v300 = v272;
        v116 = sub_1CFC9D2B8();
        if (v117)
        {
          goto LABEL_244;
        }

        if ((v116 & 0x8000000000000000) != 0)
        {
          goto LABEL_225;
        }

        if (v116 >= *(v28 + 16))
        {
          goto LABEL_226;
        }

        v118 = *v23;
        sub_1CFBCCD6C(&v30[6 * v116], v268);
        sub_1CFCA0338();
        sub_1CFCA0068();
        MEMORY[0x1D3872880](v268[5]);
        v119 = sub_1CFCA0378();
        sub_1CFBCCDA4(v268);
        v19 = *v23;
        v22 = 1 << *v23;
        v28 = v22 - 1;
        if (__OFSUB__(v22, 1))
        {
          goto LABEL_227;
        }

        v120 = v28 & v119;
        if (v95 >= v24)
        {
          if (v120 < v24)
          {
            goto LABEL_98;
          }
        }

        else if (v120 >= v24)
        {
          goto LABEL_109;
        }

        if (v95 >= v120)
        {
LABEL_109:
          v293 = v269;
          v294 = v270;
          v295 = v271;
          v296 = v272;
          v121 = sub_1CFC9D2B8();
          if (v122)
          {
            v123 = 0;
          }

          else
          {
            v123 = ((v28 & ((v121 - (v258[3] >> 6)) >> 63)) + v121 - (v258[3] >> 6)) ^ v28;
          }

          v124 = v256;
          v125 = (v19 & 0x3F) * v95;
          v126 = v125 >> 6;
          *(v256 + 8 * (v125 >> 6)) = *(v256 + 8 * (v125 >> 6)) & (((1 - v22) << v125) - 1) | (v123 << v125);
          v127 = 64 - (v125 & 0x3F);
          v28 = v265;
          if (v127 < (v19 & 0x3F))
          {
            v128 = (v19 & 0x3F) << (v19 & 0x3F);
            v129 = __OFADD__(v128, 64);
            v130 = v128 + 64;
            if (v129)
            {
              goto LABEL_231;
            }

            v132 = v130 - 1;
            v131 = v130 < 1;
            v133 = v130 + 62;
            if (!v131)
            {
              v133 = v132;
            }

            if (v126 + 1 == v133 >> 6)
            {
              v134 = 0;
            }

            else
            {
              v134 = v126 + 1;
            }

            *(v124 + 8 * v134) = *(v124 + 8 * v134) & (-1 << (v19 - v127)) | (v123 >> v127);
          }

          v95 = v294;
          goto LABEL_99;
        }

LABEL_98:
        v28 = v265;
LABEL_99:
        sub_1CFC9D2D8();
        if (!*(&v270 + 1))
        {
          sub_1CFC9D2A8();
          goto LABEL_142;
        }
      }
    }

    sub_1CFC9D2A8();

LABEL_142:
    v30 = v259;
    if (__OFADD__(v33, 1))
    {
      goto LABEL_238;
    }

    if ((v33 + 1) < v33)
    {
LABEL_239:
      __break(1u);
    }

    else
    {

      sub_1CFBCA298(v33, v33 + 1, v28, v23, v256);
      v23 = v258;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_1CFC7B880(v28);
      }

      v143 = *(v28 + 16);
      if (v33 < v143)
      {
        v144 = v143 - 1;
        v24 = v28 + 48 * v33;
        sub_1CFBCCDA4(v24 + 32);
        memmove((v24 + 32), (v24 + 80), 48 * (v144 - v33));
        *(v28 + 16) = v144;
        goto LABEL_154;
      }
    }

    __break(1u);
LABEL_241:
    __break(1u);
LABEL_242:
    swift_once();
  }

  if (!v91)
  {
    v30 = v259;
LABEL_71:
    sub_1CFBA29FC(v273, &v282, &qword_1EC4ED608, &qword_1CFCA24E8);
LABEL_72:
    v33 = 40;
    if (!*(&v283 + 1))
    {
LABEL_158:
      sub_1CFBC2FB0(v273, &qword_1EC4ED608, &qword_1CFCA24E8);
      sub_1CFBCCDA4(v274);
      if (!v30[2])
      {
        goto LABEL_26;
      }

      goto LABEL_159;
    }

    sub_1CFBAD070(&v282, &v269);
    sub_1CFBCCD6C(v274, &v287);
    v101 = swift_isUniquelyReferenced_nonNull_native();
    v280 = v28;
    if ((v101 & 1) == 0)
    {
      sub_1CFBCA920(0, *(v28 + 16) + 1, 1);
      v28 = v280;
    }

    v22 = *(v28 + 16);
    v102 = *(v28 + 24);
    v24 = v22 + 1;
    if (v22 >= v102 >> 1)
    {
      sub_1CFBCA920((v102 > 1), v22 + 1, 1);
      v28 = v280;
    }

    *(v28 + 16) = v24;
    v103 = (v28 + 48 * v22);
    v104 = v287;
    v105 = v289;
    v103[3] = v288;
    v103[4] = v105;
    v103[2] = v104;
    if (v23)
    {
      swift_beginAccess();
      if (MEMORY[0x1D386F820](v23[2] & 0x3F) > v22)
      {
        v19 = v258;
        if ((swift_isUniquelyReferenced_native() & 1) == 0)
        {
          if (!v19)
          {
            goto LABEL_247;
          }

          v106 = sub_1CFC9D308();

          v19 = v106;
        }

        if (!v19)
        {
          goto LABEL_245;
        }

        v107 = -1 << *(v19 + 16);
        v108 = *(v28 + 16) + ~(*(v19 + 24) >> 6);
        sub_1CFC9D2A8();
        v258 = v19;
        goto LABEL_125;
      }

      swift_beginAccess();
      v109 = v23[3] & 0x3F;
      v110 = *(v28 + 16);
      if (v109)
      {
        goto LABEL_121;
      }
    }

    else
    {
      v109 = 0;
      v19 = 0;
      if (v22 <= 0xE)
      {
LABEL_125:
        sub_1CFBB94B0(&v269, &v287);
        v137 = v264;
        v138 = swift_isUniquelyReferenced_nonNull_native();
        v279 = v137;
        if ((v138 & 1) == 0)
        {
          sub_1CFBCA900(0, v137[2] + 1, 1);
          v137 = v279;
        }

        v140 = v137[2];
        v139 = v137[3];
        if (v140 >= v139 >> 1)
        {
          sub_1CFBCA900((v139 > 1), v140 + 1, 1);
          v137 = v279;
        }

        __swift_destroy_boxed_opaque_existential_1Tm(&v269);
        sub_1CFBC2FB0(v273, &qword_1EC4ED608, &qword_1CFCA24E8);
        v137[2] = v140 + 1;
        v264 = v137;
        sub_1CFBAD070(&v287, &v137[5 * v140 + 4]);
        sub_1CFBCCDA4(v274);
        v23 = v19;
        if (v30[2])
        {
          goto LABEL_159;
        }

LABEL_26:
        sub_1CFBCCDA4(v275);
        goto LABEL_27;
      }

      v110 = *(v28 + 16);
    }

    if (v110 < 0x10)
    {

      v258 = 0;
      v19 = 0;
      goto LABEL_125;
    }

LABEL_121:
    v135 = MEMORY[0x1D386F850](v110);
    if (v109 <= v135)
    {
      v136 = v135;
    }

    else
    {
      v136 = v109;
    }

    v19 = sub_1CFBCA6FC(v28, v136, 0, v109);

    v258 = v19;
    goto LABEL_125;
  }

  v24 = 0;
  v33 = 0;
  v30 = v259;
  while (1)
  {
    sub_1CFBCCD6C(v28 + v24 + 32, &v287);
    if (MEMORY[0x1D3872590](&v287, v274))
    {
      break;
    }

    sub_1CFBCCDA4(&v287);
LABEL_53:
    ++v33;
    v24 += 48;
    if (v91 == v33)
    {
      goto LABEL_71;
    }
  }

  v19 = *(&v289 + 1);
  sub_1CFBCCDA4(&v287);
  if (v19 != v274[5])
  {
    goto LABEL_53;
  }

  sub_1CFBA29FC(v273, &v282, &qword_1EC4ED608, &qword_1CFCA24E8);
  if (*(&v283 + 1))
  {
    goto LABEL_64;
  }

  if (!*(v28 + 16))
  {
    goto LABEL_133;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v28 = sub_1CFC7B880(v28);
  }

  v96 = *(v28 + 16);
  v97 = v96 - v33;
  if (v96 > v33)
  {
    v98 = v96 - 1;
    v24 += v28;
    sub_1CFBCCDA4(v24 + 32);
    memmove((v24 + 32), (v24 + 80), 48 * v97 - 48);
    v23 = 0;
    *(v28 + 16) = v98;
    goto LABEL_154;
  }

  __break(1u);
LABEL_244:
  __break(1u);
LABEL_245:
  __break(1u);
LABEL_246:
  __break(1u);
LABEL_247:
  __break(1u);
LABEL_248:
  __break(1u);
LABEL_249:
  __break(1u);
LABEL_250:
  __break(1u);

  (*v33)(v22, v28);

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1CFBAA3A0()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED5E0, &qword_1CFCA24C8) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 2);

  v6 = *(v0 + 3);

  v7 = *(v0 + 4);

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED5D8, &qword_1CFCA24C0);
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(&v0[v3], 1, v8))
  {
    (*(v9 + 8))(&v0[v3], v8);
  }

  v10 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = *&v0[v10];

  return MEMORY[0x1EEE6BDD0](v0, v11 + 8, v2 | 7);
}

uint64_t sub_1CFBAA4F8()
{
  v1 = v0;
  v2 = *(v0 + 64);
  v3 = *(sub_1CFC9C718() + 16);

  v4 = objc_opt_self();
  v5 = [v4 currentDevice];
  v6 = [v5 userInterfaceIdiom];

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  v8 = OBJC_IVAR____TtC10CallsAppUI25FavoriteSectionController_itemsPerRow;
  v9 = *(v1 + OBJC_IVAR____TtC10CallsAppUI25FavoriteSectionController_itemsPerRow);
  v10 = v7 * v9;
  if ((v7 * v9) >> 64 != (v7 * v9) >> 63)
  {
    __break(1u);
    goto LABEL_25;
  }

  v11 = __OFSUB__(v10, 1);
  v12 = v10 - 1;
  if (v11)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v12 + 1 >= v3 || (*(v1 + 96) & 1) != 0 || *(v1 + 40) == 1)
  {
    return sub_1CFC9C718();
  }

  v14 = sub_1CFC9C718();
  v4 = [v4 currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if (v5)
  {
    v15 = 1;
  }

  else
  {
    v15 = 2;
  }

  v16 = *(v1 + v8);
  v17 = v15 * v16;
  if ((v15 * v16) >> 64 != (v15 * v16) >> 63)
  {
    goto LABEL_26;
  }

  if (__OFSUB__(v17, 1))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v1 = sub_1CFC82D30(v17 - 1, v14, MEMORY[0x1E6993700]);
  if (v20)
  {
    v8 = v20;
    v5 = v19;
    v4 = v18;
    sub_1CFCA02D8();
    swift_unknownObjectRetain_n();
    v23 = swift_dynamicCastClass();
    if (!v23)
    {
      swift_unknownObjectRelease();
      v23 = MEMORY[0x1E69E7CC0];
    }

    v24 = *(v23 + 16);

    if (!__OFSUB__(v8 >> 1, v5))
    {
      if (v24 == (v8 >> 1) - v5)
      {
        v22 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (!v22)
        {
          swift_unknownObjectRelease();
          return MEMORY[0x1E69E7CC0];
        }

        return v22;
      }

      goto LABEL_29;
    }

LABEL_28:
    __break(1u);
LABEL_29:
    swift_unknownObjectRelease();
    v20 = v8;
    v19 = v5;
    v18 = v4;
  }

  sub_1CFC84858(v1, v18, v19, v20, &qword_1EC4EFFE8, &qword_1CFCA8E38, MEMORY[0x1E6993700]);
  v22 = v21;
  swift_unknownObjectRelease();
  return v22;
}

size_t sub_1CFBAA768(size_t a1, int64_t a2, char a3)
{
  result = sub_1CFBA5CC0(a1, a2, a3, *v3, &qword_1EC4ED4F0, &qword_1CFCA2410, type metadata accessor for FavoriteSectionController.Item);
  *v3 = result;
  return result;
}

uint64_t sub_1CFBAA7AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FavoriteSectionController.Item(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1CFBAA810(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if (*(a2 + 16) < result)
    {
      v3 = *(a2 + 16);
    }

    v4 = *(sub_1CFC9C608() - 8);
    v5 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    return a2;
  }

  return result;
}

uint64_t sub_1CFBAA8CC(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  v10 = *v3;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v11 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  v12 = *(result - 8);
  if (v11 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = *(v12 + 72);
  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v15 = *(v5 + 16);
  v16 = __OFADD__(v15, v4);
  v17 = v15 + v4;
  if (!v16)
  {
    *(v5 + 16) = v17;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

char *sub_1CFBAAA38(char *a1, int64_t a2, char a3)
{
  result = sub_1CFBAAA58(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1CFBAAA58(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED600, &qword_1CFCA24E0);
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

uint64_t sub_1CFBAAB68()
{
  v1 = v0;
  v2 = sub_1CFC9C608();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - v8;
  v10 = type metadata accessor for FavoriteSectionController.Item(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1CFBAAD9C(v1, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_1CFBAAEF8(*v13);
  }

  else
  {
    (*(v3 + 32))(v9, v13, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFC50, &qword_1CFCA4600);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1CFCA1DD0;
    (*(v3 + 16))(v7, v9, v2);
    sub_1CFBAAE00(&qword_1EE04D690, MEMORY[0x1E6993700]);
    sub_1CFCA0078();
    (*(v3 + 8))(v9, v2);
  }

  return v14;
}

uint64_t sub_1CFBAAD9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FavoriteSectionController.Item(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFBAAE00(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CFBAAEF8(uint64_t a1)
{
  v2 = sub_1CFC9C608();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v22 = MEMORY[0x1E69E7CC0];
    sub_1CFBAB1B4(0, v7, 0);
    v8 = v22;
    v11 = *(v3 + 16);
    v9 = v3 + 16;
    v10 = v11;
    v12 = a1 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v13 = *(v9 + 56);
    do
    {
      v10(v6, v12, v2);
      swift_dynamicCast();
      v22 = v8;
      v15 = *(v8 + 16);
      v14 = *(v8 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1CFBAB1B4((v14 > 1), v15 + 1, 1);
        v8 = v22;
      }

      *(v8 + 16) = v15 + 1;
      v16 = v8 + 40 * v15;
      v17 = v20[0];
      v18 = v20[1];
      *(v16 + 64) = v21;
      *(v16 + 32) = v17;
      *(v16 + 48) = v18;
      v12 += v13;
      --v7;
    }

    while (v7);
  }

  return v8;
}

char *sub_1CFBAB094(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFC50, &qword_1CFCA4600);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1CFBAB1B4(char *a1, int64_t a2, char a3)
{
  result = sub_1CFBAB094(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1CFBAB1D4()
{
  v0 = sub_1CFC9D938();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CFC9D8B8();
  __swift_allocate_value_buffer(v5, qword_1EE04D9B0);
  __swift_project_value_buffer(v5, qword_1EE04D9B0);
  if (qword_1EE050010 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_1EE052308);
  (*(v1 + 16))(v4, v6, v0);
  return sub_1CFC9D898();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
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

uint64_t sub_1CFBAB3E8(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = *(result + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_recentsSection);
    v5 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_sections;
    swift_beginAccess();
    v6 = *&v3[v5];
    v7 = *(v6 + 16);
    v19 = v4;

    if (v7)
    {
      v17 = v3;
      v18 = v1;
      v8 = 0;
      v9 = (v6 + 40);
      while (v8 < *(v6 + 16))
      {
        v11 = *(v9 - 1);
        v10 = *v9;
        ObjectType = swift_getObjectType();
        v13 = *(v10 + 40);
        swift_unknownObjectRetain();
        v13(v20, ObjectType, v10);
        __swift_project_boxed_opaque_existential_1(v20, v20[3]);
        v14 = sub_1CFC9F6D8();
        LODWORD(v13) = *(v19 + 64);
        sub_1CFCA0338();
        if (v13)
        {
          v15 = 3;
        }

        else
        {
          v15 = 1;
        }

        MEMORY[0x1D3872880](v15);
        v16 = sub_1CFCA0378();
        swift_unknownObjectRelease();
        result = __swift_destroy_boxed_opaque_existential_1Tm(v20);
        if (v14 == v16)
        {
          goto LABEL_11;
        }

        ++v8;
        v9 += 2;
        if (v7 == v8)
        {
          v8 = -1;
LABEL_11:
          v3 = v17;
          v1 = v18;
          goto LABEL_13;
        }
      }

      __break(1u);
    }

    else
    {
      v8 = -1;
LABEL_13:

      return v8 == v1;
    }
  }

  return result;
}

void sub_1CFBAB5EC()
{
  v1 = v0;
  v2 = sub_1CFC9CF08();
  *&v67 = *(v2 - 8);
  v3 = *(v67 + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v65 - v7;
  v72 = MEMORY[0x1E69E7CC0];
  v9 = objc_opt_self();
  v10 = [v9 currentDevice];
  v11 = [v10 userInterfaceIdiom];

  p_prots = (&OBJC_PROTOCOL___UIAdaptivePresentationControllerDelegate + 16);
  if (v11 == 6)
  {
    v13 = [v1 editButtonItem];
  }

  else
  {
    v14 = [v9 currentDevice];
    v15 = [v14 userInterfaceIdiom];

    if (v15 != 5 && ([v1 isEditing] & 1) != 0 || v1[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_isEditingFavorites] == 1)
    {
      v16 = sub_1CFC57DC4();
      p_prots = (&OBJC_PROTOCOL___UIAdaptivePresentationControllerDelegate + 16);
      goto LABEL_9;
    }

    p_prots = &OBJC_PROTOCOL___UIAdaptivePresentationControllerDelegate.prots;
    v13 = *&v1[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_editMenuButtonItem];
  }

  v16 = v13;
LABEL_9:
  v17 = *(&p_prots[308]->count + v1);
  v18 = sub_1CFBAC024();
  [v17 setMenu_];

  if ([v1 isEditing])
  {
    v66 = v16;
    v19 = *&v1[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_filterMenuViewModel];
    sub_1CFC9CE88();

    (*(v67 + 104))(v6, *MEMORY[0x1E6995A70], v2);
    sub_1CFC6A6B0(&qword_1EE04D660, MEMORY[0x1E6995AA8]);
    sub_1CFC9F878();
    sub_1CFC9F878();
    if (v70 == v68 && v71 == v69)
    {
      v20 = *(v67 + 8);
      v20(v6, v2);
      v20(v8, v2);

      v16 = v66;
LABEL_14:
      v23 = sub_1CFC583A0();
      goto LABEL_18;
    }

    v21 = sub_1CFCA02B8();
    v22 = *(v67 + 8);
    v22(v6, v2);
    v22(v8, v2);

    v16 = v66;
    if (v21)
    {
      goto LABEL_14;
    }
  }

  if (v1[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_isEditingFavorites] == 1)
  {
    v23 = sub_1CFC586DC();
  }

  else
  {
    v23 = sub_1CFC585F4();
  }

LABEL_18:
  v24 = v23;
  v25 = [v9 currentDevice];
  v26 = [v25 userInterfaceIdiom];

  if (v26)
  {
    v27 = [v9 currentDevice];
    v28 = [v27 userInterfaceIdiom];

    if (v28 == 6)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED760, &qword_1CFCA2690);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_1CFCA2540;
      *(v29 + 32) = v16;
      v70 = v29;
      v30 = MEMORY[0x1E69E7CC0];
      goto LABEL_24;
    }

    sub_1CFBA2D80(0, &unk_1EE04D0D0, 0x1E69DC708);
    v32 = sub_1CFC9FB08();
    [v32 setWidth_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED760, &qword_1CFCA2690);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1CFCA78F0;
    *(v30 + 32) = v16;
    *(v30 + 40) = v32;
    *(v30 + 48) = v24;
    v72 = v30;
    v70 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED760, &qword_1CFCA2690);
    v30 = swift_allocObject();
    v67 = xmmword_1CFCA2540;
    *(v30 + 16) = xmmword_1CFCA2540;
    *(v30 + 32) = v16;
    v72 = v30;
    v31 = swift_allocObject();
    *(v31 + 16) = v67;
    *(v31 + 32) = v24;
    v70 = v31;
  }

  v33 = v24;
LABEL_24:
  v34 = &v1[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_keypadViewControllerProvider];
  v35 = *&v1[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_keypadViewControllerProvider];
  if (v35)
  {
    v37 = *(v34 + 1);
    v36 = *(v34 + 2);
    v38 = v16;
    sub_1CFC6A630(v35);

    sub_1CFBA2D80(0, &unk_1EE04D0D0, 0x1E69DC708);
    v39 = sub_1CFC9F728();
    v40 = [objc_opt_self() systemImageNamed_];

    sub_1CFBA2D80(0, &qword_1EE04CEF8, 0x1E69DC628);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1CFC9FDF8();
    v41 = sub_1CFC9FB58();
    v42 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_keypadButtonItem;
    v43 = *&v1[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_keypadButtonItem];
    *&v1[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_keypadButtonItem] = v41;

    v44 = *&v1[v42];
    if (v44)
    {
      type metadata accessor for BundleClass();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v46 = objc_opt_self();
      v47 = v44;
      v48 = [v46 bundleForClass_];
      sub_1CFC9BE28();

      v49 = sub_1CFC9F728();

      [v47 setAccessibilityLabel_];
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED760, &qword_1CFCA2690);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1CFCA2540;
    v51 = *&v1[v42];
    if (!v51)
    {
      goto LABEL_36;
    }

    *(inited + 32) = v51;
    v52 = inited;
    v53 = v51;
    sub_1CFC08E2C(v52);
  }

  else
  {
    v54 = v16;
  }

  v55 = *&v1[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_recentsDismissalAction];
  if (!v55)
  {
LABEL_33:
    v61 = _s10CallsAppUI21RecentsViewControllerC14navigationItemSo012UINavigationH0Cvg_0();
    sub_1CFBA2D80(0, &unk_1EE04D0D0, 0x1E69DC708);
    v62 = sub_1CFC9F898();

    [v61 setLeftBarButtonItems:v62 animated:1];

    v63 = *&v1[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController____lazy_storage____navItem];
    v64 = sub_1CFC9F898();

    [v63 setRightBarButtonItems:v64 animated:1];

    return;
  }

  v56 = *&v1[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_recentsDismissalAction + 8];
  sub_1CFBA2D80(0, &qword_1EE04CEF8, 0x1E69DC628);
  v57 = swift_allocObject();
  *(v57 + 16) = v55;
  *(v57 + 24) = v56;
  sub_1CFBB2568(v55, v56);

  v58 = sub_1CFC9FDF8();
  sub_1CFBA2D80(0, &unk_1EE04D0D0, 0x1E69DC708);
  v59 = v58;
  v60 = sub_1CFC9FB08();
  if (!(v30 >> 62) || (sub_1CFC9FFD8() & 0x8000000000000000) == 0)
  {
    sub_1CFBCB234(0, 0, v60);
    sub_1CFBABFA0(v55);

    goto LABEL_33;
  }

  __break(1u);
LABEL_36:
  __break(1u);
}

uint64_t sub_1CFBABFA0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1CFBABFB0()
{
  MEMORY[0x1D3873340](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CFBABFE8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1CFBAC024()
{
  v1 = v0;
  v2 = sub_1CFC9CF08();
  v66 = *(v2 - 8);
  v3 = *(v66 + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v67 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v68 = &v65 - v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v65 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v65 - v11;
  v13 = MEMORY[0x1E69E7CC0];
  v81 = MEMORY[0x1E69E7CC0];
  if (qword_1EC4ED028 != -1)
  {
    swift_once();
  }

  if (qword_1EC4EF7E0 && [qword_1EC4EF7E0 BOOLForKey_])
  {
    v14 = swift_allocObject();
    *(v14 + 16) = v0;
    v74 = sub_1CFC6C144;
    v75 = v14;
    aBlock = MEMORY[0x1E69E9820];
    v71 = 1107296256;
    v72 = sub_1CFC58994;
    v73 = &block_descriptor_335;
    v15 = _Block_copy(&aBlock);
    v16 = objc_opt_self();
    v17 = v1;
    v18 = [v16 elementWithViewProvider_];
    _Block_release(v15);
  }

  else
  {
    sub_1CFBA2D80(0, &qword_1EE04CEF8, 0x1E69DC628);
    type metadata accessor for BundleClass();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v20 = [objc_opt_self() bundleForClass_];
    sub_1CFC9BE28();

    v21 = sub_1CFC9F728();
    v22 = [objc_opt_self() systemImageNamed_];

    swift_allocObject();
    swift_unknownObjectWeakInit();
    v18 = sub_1CFC9FDF8();
  }

  sub_1CFBA2D80(0, &unk_1EE04CF40, 0x1E69DCC60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED760, &qword_1CFCA2690);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1CFCA2540;
  *(v23 + 32) = v18;
  v69 = v18;
  sub_1CFC9FD68();
  MEMORY[0x1D3871DC0]();
  if (*((v81 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v81 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1CFC9F8C8();
  }

  sub_1CFC9F8F8();
  if ([*&v1[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_layoutManager] current] == 1)
  {
    v80 = v13;
    v24 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_legacyMailboxService;
    swift_beginAccess();
    sub_1CFBA29FC(&v1[v24], &v78, &qword_1EC4EE538, qword_1CFCA9BD0);
    if (!v79)
    {
      sub_1CFBC2FB0(&v78, &qword_1EC4EE538, qword_1CFCA9BD0);
      v31 = MEMORY[0x1E69E7CC0];
      v28 = v66;
      goto LABEL_21;
    }

    sub_1CFBAD070(&v78, &aBlock);
    v25 = v73;
    v26 = v74;
    __swift_project_boxed_opaque_existential_1(&aBlock, v73);
    v27 = (*(v26 + 2))(v25, v26);
    v28 = v66;
    if (v27)
    {
      v29 = *&v1[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_filterMenuViewModel];
      sub_1CFC9CE88();

      (*(v28 + 104))(v10, *MEMORY[0x1E6995AA0], v2);
      sub_1CFC6A6B0(&qword_1EE04D660, MEMORY[0x1E6995AA8]);
      sub_1CFC9F878();
      sub_1CFC9F878();
      if (v78 == v76 && *(&v78 + 1) == v77)
      {
        v30 = *(v28 + 8);
        v30(v10, v2);
        v30(v12, v2);

LABEL_17:
        sub_1CFBA2D80(0, &qword_1EE04CEF8, 0x1E69DC628);
        type metadata accessor for BundleClass();
        v34 = swift_getObjCClassFromMetadata();
        v35 = [objc_opt_self() bundleForClass_];
        sub_1CFC9BE28();

        v36 = sub_1CFC9F728();
        v37 = [objc_opt_self() systemImageNamed_];

        v38 = swift_allocObject();
        swift_unknownObjectWeakInit();
        sub_1CFBB94B0(&aBlock, &v78);
        v39 = swift_allocObject();
        *(v39 + 16) = v38;
        sub_1CFBAD070(&v78, v39 + 24);
        v40 = sub_1CFC9FDF8();
        MEMORY[0x1D3871DC0]();
        if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v64 = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1CFC9F8C8();
        }

        sub_1CFC9F8F8();

        v31 = v80;
        __swift_destroy_boxed_opaque_existential_1Tm(&aBlock);
LABEL_21:
        if (*&v1[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_favoritesDataSource])
        {
          v41 = *&v1[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_filterMenuViewModel];
          sub_1CFC9CE88();

          (*(v28 + 104))(v67, *MEMORY[0x1E6995A70], v2);
          sub_1CFC6A6B0(&qword_1EE04D660, MEMORY[0x1E6995AA8]);
          sub_1CFC9F878();
          sub_1CFC9F878();
          if (aBlock == v78 && v71 == *(&v78 + 1))
          {
            v42 = *(v28 + 8);
            v42(v67, v2);
            v42(v68, v2);

LABEL_26:

            v45 = sub_1CFC9C718();

            v46 = *(v45 + 16);

            sub_1CFBA2D80(0, &qword_1EE04CEF8, 0x1E69DC628);
            type metadata accessor for BundleClass();
            v47 = swift_getObjCClassFromMetadata();
            v48 = [objc_opt_self() bundleForClass_];
            sub_1CFC9BE28();

            v49 = sub_1CFC9F728();
            v50 = [objc_opt_self() systemImageNamed_];

            swift_allocObject();
            swift_unknownObjectWeakInit();
            v51 = sub_1CFC9FDF8();
            MEMORY[0x1D3871DC0]();
            if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v63 = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_1CFC9F8C8();
            }

            sub_1CFC9F8F8();

            v31 = v80;
            goto LABEL_29;
          }

          v43 = sub_1CFCA02B8();
          v44 = *(v28 + 8);
          v44(v67, v2);
          v44(v68, v2);

          if (v43)
          {
            goto LABEL_26;
          }
        }

LABEL_29:
        if (v31 >> 62)
        {
          sub_1CFBA2D80(0, &qword_1EE04D0E0, 0x1E69DCC78);

          sub_1CFCA01E8();
        }

        else
        {

          sub_1CFCA02C8();
          sub_1CFBA2D80(0, &qword_1EE04D0E0, 0x1E69DCC78);
        }

        sub_1CFC9FD68();
        MEMORY[0x1D3871DC0]();
        if (*((v81 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v81 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v61 = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1CFC9F8C8();
        }

        sub_1CFC9F8F8();
        goto LABEL_34;
      }

      v32 = sub_1CFCA02B8();
      v33 = *(v28 + 8);
      v33(v10, v2);
      v33(v12, v2);
      v28 = v66;

      if (v32)
      {
        goto LABEL_17;
      }
    }

    __swift_destroy_boxed_opaque_existential_1Tm(&aBlock);
    v31 = MEMORY[0x1E69E7CC0];
    goto LABEL_21;
  }

LABEL_34:
  v52 = [objc_opt_self() currentDevice];
  v53 = [v52 userInterfaceIdiom];

  if (v53 != 5)
  {
    sub_1CFBA2D80(0, &qword_1EE04CEF8, 0x1E69DC628);
    type metadata accessor for BundleClass();
    v54 = swift_getObjCClassFromMetadata();
    v55 = [objc_opt_self() bundleForClass_];
    sub_1CFC9BE28();

    v56 = sub_1CFC9F728();
    v57 = [objc_opt_self() systemImageNamed_];

    swift_allocObject();
    swift_unknownObjectWeakInit();
    v58 = sub_1CFC9FDF8();
    MEMORY[0x1D3871DC0]();
    if (*((v81 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v81 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v62 = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1CFC9F8C8();
    }

    sub_1CFC9F8F8();
  }

  v59 = sub_1CFC9FD68();

  return v59;
}

uint64_t sub_1CFBACFD0()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CFBAD008()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1CFBAD070(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1CFBAD088()
{
  v1 = v0;
  v2 = sub_1CFC9CEA8();
  v39 = *(v2 - 8);
  v3 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = sub_1CFC9CF08();
  v6 = *(v40 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *&v0[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_filterMenuViewModel];
  sub_1CFC9CE88();

  v11 = objc_opt_self();
  v12 = [v11 currentDevice];
  v13 = [v12 userInterfaceIdiom];

  if (v13 != 6)
  {
    if ([*&v1[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_layoutManager] current])
    {
      v14 = [v11 currentDevice];
      v15 = [v14 userInterfaceIdiom];

      v16 = _s10CallsAppUI21RecentsViewControllerC14navigationItemSo012UINavigationH0Cvg_0();
      v17 = v16;
      if (v15)
      {
        [v16 setTitle_];
LABEL_12:

        return (*(v6 + 8))(v9, v40);
      }

      *v5 = 0;
      v27 = v39;
      (*(v39 + 104))(v5, *MEMORY[0x1E6995A40], v2);
      sub_1CFC9CEF8();
      (*(v27 + 8))(v5, v2);
      v28 = sub_1CFC9F728();

      [v17 setTitle_];

      v29 = [v1 navigationController];
      if (v29)
      {
        v30 = v29;
        v17 = [v29 navigationBar];

        [v17 setPrefersLargeTitles_];
        goto LABEL_12;
      }
    }

    else
    {
      v38 = v1;
      v37 = _s10CallsAppUI21RecentsViewControllerC14navigationItemSo012UINavigationH0Cvg_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EFB20, &qword_1CFCA7D00);
      v18 = *(v6 + 72);
      v19 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1CFCA1DC0;
      v21 = v20 + v19;
      v22 = *(v6 + 104);
      v23 = v40;
      v22(v21, *MEMORY[0x1E6995A70], v40);
      v22(v21 + v18, *MEMORY[0x1E6995A78], v23);
      v24 = sub_1CFC1D758(v9, v20);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      if (v24)
      {
        type metadata accessor for BundleClass();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v26 = [objc_opt_self() bundleForClass_];
        sub_1CFC9BE28();
      }

      else
      {
        *v5 = 0;
        v31 = v39;
        (*(v39 + 104))(v5, *MEMORY[0x1E6995A40], v2);
        sub_1CFC9CEF8();
        (*(v31 + 8))(v5, v2);
      }

      v32 = sub_1CFC9F728();

      v33 = v37;
      [v37 setTitle_];

      v34 = [v38 navigationController];
      if (v34)
      {
        v35 = v34;
        v17 = [v34 navigationBar];

        [v17 setPrefersLargeTitles_];
        goto LABEL_12;
      }
    }
  }

  return (*(v6 + 8))(v9, v40);
}

void sub_1CFBAD5E0()
{
  if ([*(v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_layoutManager) current])
  {
    v1 = [objc_opt_self() currentDevice];
    v2 = [v1 userInterfaceIdiom];

    if (v2 == 6)
    {
      return;
    }

    v20 = _s10CallsAppUI21RecentsViewControllerC14navigationItemSo012UINavigationH0Cvg_0();
    [v20 setTitleView_];
    v3 = v20;
  }

  else
  {
    if (*(v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_filterSegmentedControl))
    {
      return;
    }

    v21 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_filterSegmentedControl;
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED760, &qword_1CFCA2690);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1CFCA3B40;
    sub_1CFBA2D80(0, &qword_1EE04CEF8, 0x1E69DC628);
    type metadata accessor for BundleClass();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v7 = objc_opt_self();
    v8 = [v7 bundleForClass_];
    sub_1CFC9BE28();

    v9 = swift_allocObject();
    *(v9 + 16) = sub_1CFC6BC24;
    *(v9 + 24) = v4;

    v18 = v9;
    v10 = v0;
    *(v5 + 32) = sub_1CFC9FDF8();
    v11 = [v7 bundleForClass_];
    sub_1CFC9BE28();

    v12 = swift_allocObject();
    *(v12 + 16) = sub_1CFC6BC24;
    *(v12 + 24) = v4;

    v19 = v12;
    *(v5 + 40) = sub_1CFC9FDF8();
    v13 = objc_allocWithZone(MEMORY[0x1E69DCF38]);
    v14 = sub_1CFC9F898();

    v15 = [v13 initWithFrame:v14 actions:{0.0, 0.0, 0.0, 0.0, 0, 0, 0, sub_1CFC6BC50, v19}];

    [v15 setSelectedSegmentIndex_];
    v16 = _s10CallsAppUI21RecentsViewControllerC14navigationItemSo012UINavigationH0Cvg_0();
    v17 = v15;
    [v16 setTitleView_];

    v3 = *(v10 + v21);
    *(v10 + v21) = v15;
  }
}

id sub_1CFBAD9F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  swift_unknownObjectRetain();
  v7 = v6(a2, a3);

  swift_unknownObjectRelease();

  return v7;
}

uint64_t sub_1CFBADA74(unint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_sections;
    v6 = result;
    swift_beginAccess();
    v7 = *&v6[v5];

    if ((a1 & 0x8000000000000000) != 0 || *(v7 + 16) <= a1)
    {

      return 0;
    }

    else
    {
      v8 = v7 + 16 * a1;
      v9 = *(v8 + 32);
      v10 = *(v8 + 40);
      swift_unknownObjectRetain();

      ObjectType = swift_getObjectType();
      v12 = (*(v10 + 144))(a2, ObjectType, v10);
      swift_unknownObjectRelease();
      return v12;
    }
  }

  return result;
}

void sub_1CFBADB70(void *a1)
{
  v2 = v1;
  v66 = sub_1CFC9CE08();
  v4 = *(v66 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v66);
  v8 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v62 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v62 - v12;
  v14 = *(*(v2 + 32) + 16);
  v63 = a1;
  v64 = v14;
  v65 = [a1 traitCollection];
  sub_1CFC9CD38();
  v15 = v68;
  v16 = objc_opt_self();
  v17 = [v16 currentDevice];
  v18 = [v17 userInterfaceIdiom];

  if (v18 || *(v2 + OBJC_IVAR____TtC10CallsAppUI25FavoriteSectionController_itemsPerRow) > 3)
  {
    sub_1CFC9CDF8();
  }

  else
  {
    sub_1CFC9CDB8();
  }

  sub_1CFC9CDD8();
  v20 = v19;
  v21 = *(v4 + 8);
  v21(v13, v66);
  sub_1CFC9CD38();
  v22 = v68;
  v23 = [v16 currentDevice];
  v24 = [v23 userInterfaceIdiom];

  if (v24 || *(v2 + OBJC_IVAR____TtC10CallsAppUI25FavoriteSectionController_itemsPerRow) > 3)
  {
    sub_1CFC9CDF8();
  }

  else
  {
    sub_1CFC9CDB8();
  }

  sub_1CFC9CDD8();
  v26 = v25;
  v21(v11, v66);
  [objc_msgSend(v63 container)];
  v28 = v27;
  swift_unknownObjectRelease();
  v29 = v64 < 4;
  v30 = sub_1CFC83B40();
  v31 = OBJC_IVAR____TtC10CallsAppUI25FavoriteSectionController_itemsPerRow;
  v32 = *(v2 + OBJC_IVAR____TtC10CallsAppUI25FavoriteSectionController_itemsPerRow);
  if (__OFSUB__(v32, 1))
  {
    __break(1u);
  }

  else
  {
    v33 = v15 - v20;
    v34 = v22 - v26;
    v35 = v28 - v33 - (v22 - v26);
    v36 = (v35 - v30 * (v32 - 1)) / v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFFE0, &qword_1CFCA8DD8);
    sub_1CFC9CD28();
    if ((v69 & 1) != 0 || (v37 = v68, v68 >= v36))
    {
      v37 = v36;
    }

    else
    {
      v29 = 1;
    }

    v38 = *(v2 + OBJC_IVAR____TtC10CallsAppUI25FavoriteSectionController_tileWidth);
    *(v2 + OBJC_IVAR____TtC10CallsAppUI25FavoriteSectionController_tileWidth) = v37;
    sub_1CFBAE528(v38);
    v39 = [v16 currentDevice];
    v40 = [v39 userInterfaceIdiom];

    if (v40 || *(v2 + v31) > 3)
    {
      sub_1CFC9CDF8();
    }

    else
    {
      sub_1CFC9CDB8();
    }

    sub_1CFC9CDC8();
    v42 = v41;
    v21(v8, v66);
    v43 = v37 * v42;
    v44 = objc_opt_self();
    v45 = [v44 absoluteDimension_];
    v46 = [v44 uniformAcrossSiblingsWithEstimate_];
    v47 = objc_opt_self();
    v48 = [v47 sizeWithWidthDimension:v45 heightDimension:v46];

    v49 = [objc_opt_self() itemWithLayoutSize_];
    [v49 setContentInsets_];
    v50 = [v44 fractionalWidthDimension_];
    v51 = [v44 estimatedDimension_];
    v52 = [v47 sizeWithWidthDimension:v50 heightDimension:v51];

    v53 = [objc_opt_self() horizontalGroupWithLayoutSize:v52 repeatingSubitem:v49 count:*(v2 + v31)];
    v54 = objc_opt_self();
    v55 = [v54 fixedSpacing_];
    [v53 setInterItemSpacing_];

    v56 = 0.0;
    if (v29)
    {
      v57 = v37 * v64;
      v58 = (v64 - 1);
      v56 = (v35 - (v57 + sub_1CFC83B40() * v58)) * 0.5;
    }

    [v53 setContentInsets_];
    v59 = [objc_opt_self() sectionWithGroup_];
    v60 = v65;
    sub_1CFC9CD38();
    v61 = v68;
    sub_1CFC9CD38();
    [v59 setContentInsets_];
    [v59 setOrthogonalScrollingBehavior_];
    [v59 setInterGroupSpacing_];
  }
}

uint64_t sub_1CFBAE528(double a1)
{
  v3 = sub_1CFC9CE08();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x1EEE9AC00](v3);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + OBJC_IVAR____TtC10CallsAppUI25FavoriteSectionController_tileWidth);
  if (vabdd_f64(a1, v9) > 0.0000000149011612)
  {
    v10 = *(v1 + 104);
    if (*(v10 + 16) == v9)
    {
      *(v10 + 16) = v9;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      v17[1] = v17;
      MEMORY[0x1EEE9AC00](KeyPath);
      v17[-2] = v10;
      *&v17[-1] = v9;
      v18 = v10;
      sub_1CFBAAE00(&qword_1EE04F8D0, type metadata accessor for FavoriteCellConfig);

      sub_1CFC9C148();
    }

    v12 = *(v1 + 104);
    v13 = objc_opt_self();

    v14 = [v13 currentDevice];
    v15 = [v14 userInterfaceIdiom];

    if (v15 || *(v1 + OBJC_IVAR____TtC10CallsAppUI25FavoriteSectionController_itemsPerRow) > 3)
    {
      sub_1CFC9CDF8();
    }

    else
    {
      sub_1CFC9CDB8();
    }

    v16 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v16);
    v17[-2] = v12;
    v17[-1] = v8;
    v18 = v12;
    sub_1CFBAAE00(&qword_1EE04F8D0, type metadata accessor for FavoriteCellConfig);
    sub_1CFC9C148();

    return (*(v4 + 8))(v8, v3);
  }

  return result;
}

double sub_1CFBAE89C()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 16) = result;
  return result;
}

uint64_t sub_1CFBAE8F0(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC10CallsAppUI18FavoriteCellConfig__tileStyle;
  swift_beginAccess();
  v5 = sub_1CFC9CE08();
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

void *sub_1CFBAE990(void *a1)
{
  v2 = sub_1CFC9DC18();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v4 = sub_1CFC9DC48();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 traitCollection];
  sub_1CFC9CD38();
  sub_1CFC9DC28();

  sub_1CFC9DC38();
  swift_allocObject();
  swift_weakInit();
  sub_1CFC9DC08();
  sub_1CFBA2D80(0, &qword_1EE04CF60, 0x1E6995580);
  v10 = sub_1CFC9FD18();
  if (sub_1CFC779F8())
  {
    v11 = objc_opt_self();
    v12 = [v11 fractionalWidthDimension_];
    v13 = [v11 estimatedDimension_];
    v14 = [objc_opt_self() sizeWithWidthDimension:v12 heightDimension:v13];

    v15 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v14 elementKind:*MEMORY[0x1E69DDC08] alignment:1];
    [v15 setZIndex_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED760, &qword_1CFCA2690);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1CFCA2540;
    *(v16 + 32) = v15;
    sub_1CFBA2D80(0, &qword_1EE04CF58, 0x1E6995548);
    v17 = v15;
    v18 = sub_1CFC9F898();

    [v10 setBoundarySupplementaryItems_];

    [v10 setSupplementaryContentInsetsReference_];
    [v10 contentInsets];
    [v10 setContentInsets_];
  }

  else
  {
    sub_1CFC9CD38();
    v20 = *&v25[1];
    [v10 contentInsets];
    [v10 setContentInsets_];
  }

  sub_1CFC9CD38();
  [v10 contentInsets];
  [v10 setContentInsets_];
  sub_1CFC9CD38();
  [v10 contentInsets];
  [v10 setContentInsets_];
  v22 = [objc_opt_self() currentDevice];
  v23 = [v22 userInterfaceIdiom];

  if (v23 == 6)
  {
    [v10 setInterGroupSpacing_];

    (*(v5 + 8))(v8, v4);
  }

  else
  {
    (*(v5 + 8))(v8, v4);
  }

  return v10;
}

uint64_t sub_1CFBAF0E8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1CFC9DC18();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_1CFBAF154@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69DC248];
  v3 = sub_1CFC9DC18();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

id sub_1CFBAF1C8(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED518, &unk_1CFCA2430);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v66 - v6;
  v8 = sub_1CFC9D9B8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1CFC9D988();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v76 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_1CFC9D958();
  v77 = *(v87 - 8);
  v17 = *(v77 + 64);
  v18 = MEMORY[0x1EEE9AC00](v87);
  v86 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v85 = &v66 - v20;
  v84 = sub_1CFC9D9F8();
  v88 = *(v84 - 8);
  v21 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v84);
  v83 = &v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1CFC9C128();
  v82 = a1;
  v24 = sub_1CFC9C118();
  v25 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_items;
  result = swift_beginAccess();
  if ((v23 & 0x8000000000000000) != 0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v27 = *&v2[v25];
  if (v23 >= *(v27 + 16))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if ((v24 & 0x8000000000000000) != 0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v28 = *(v27 + 8 * v23 + 32);
  if (v24 >= *(v28 + 16))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  sub_1CFBB94B0(v28 + 40 * v24 + 32, &v90);
  v29 = sub_1CFC9C128();
  v30 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_sections;
  result = swift_beginAccess();
  if ((v29 & 0x8000000000000000) != 0)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v74 = v14;
  v75 = v12;
  v31 = *&v2[v30];
  if (v29 >= *(v31 + 16))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v72 = v13;
  v73 = v7;
  v32 = v31 + 16 * v29;
  v34 = *(v32 + 32);
  v33 = *(v32 + 40);
  v35 = v91;
  v81 = __swift_project_boxed_opaque_existential_1(&v90, v91);

  swift_unknownObjectRetain();
  result = [v2 collectionView];
  if (result)
  {
    v36 = result;
    ObjectType = swift_getObjectType();

    v38 = SectionController.anyCell<A>(collectionView:for:at:)(v36, v81, v82, ObjectType, v35, v33);

    swift_unknownObjectRelease();
    objc_opt_self();
    v39 = swift_dynamicCastObjCClass();
    if (v39)
    {
      v71 = v39;
      v70 = v9;
      v40 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_editButtonItems;
      v41 = swift_beginAccess();
      v42 = *&v2[v40];
      MEMORY[0x1EEE9AC00](v41);
      v64 = &v90;
      v43 = v38;

      v44 = sub_1CFBB3B98(sub_1CFBB457C, v63, v42);

      if (v44)
      {
        v68 = v43;
        v69 = v38;
        v67 = v8;
        result = sub_1CFC9FCE8();
        v45 = 0;
        v82 = result;
        v81 = *(result + 2);
        v80 = v88 + 16;
        v79 = *MEMORY[0x1E69DBEE8];
        v78 = (v77 + 104);
        v46 = (v77 + 8);
        v77 = v88 + 8;
        v47 = v87;
        v48 = v88;
        while (1)
        {
          if (v81 == v45)
          {

            v65 = MEMORY[0x1E69E6370];
            LOBYTE(v64) = 2;
            v63[0] = sub_1CFBCCF04;
            v63[1] = 0;
            sub_1CFC9CD28();
            if (v89 == 1)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED520, &qword_1CFCA4A70);
              v55 = *(v88 + 72);
              v56 = (*(v88 + 80) + 32) & ~*(v88 + 80);
              v57 = swift_allocObject();
              *(v57 + 16) = xmmword_1CFCA1DD0;
              v58 = v74;
              v59 = v76;
              v60 = v72;
              (*(v74 + 104))(v76, *MEMORY[0x1E69DBF18], v72);
              v61 = sub_1CFC9D998();
              (*(*(v61 - 8) + 56))(v73, 1, 1, v61);
              v62 = v75;
              sub_1CFC9D9A8();
              sub_1CFC9D968();
              (*(v70 + 8))(v62, v67);
              (*(v58 + 8))(v59, v60);
              v89 = sub_1CFC9FCE8();
              sub_1CFBB4604(v57);
              sub_1CFC9FCF8();
            }

            goto LABEL_19;
          }

          if (v45 >= v82[2])
          {
            break;
          }

          v49 = v83;
          v50 = v84;
          (*(v48 + 16))(v83, v82 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v45++, v84);
          v51 = v85;
          sub_1CFC9D978();
          v52 = v86;
          (*v78)(v86, v79, v47);
          v53 = MEMORY[0x1D386FE80](v51, v52);
          v54 = *v46;
          (*v46)(v52, v47);
          v54(v51, v47);
          result = (*(v48 + 8))(v49, v50);
          if (v53)
          {

LABEL_19:
            v38 = v69;
            goto LABEL_20;
          }
        }

        __break(1u);
        goto LABEL_22;
      }
    }

LABEL_20:
    __swift_destroy_boxed_opaque_existential_1Tm(&v90);
    return v38;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1CFBAFADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35[0] = a3;
  v35[1] = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFFD0, &unk_1CFCA8DB8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED6C0, &unk_1CFCA25F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFFD8, &unk_1CFCA8DC8);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = v35 - v15;
  v17 = sub_1CFC9C608();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for FavoriteSectionController.Item(0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = (v35 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1CFBAAD9C(a2, v25);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v26 = *v25;
    v27 = OBJC_IVAR____TtC10CallsAppUI25FavoriteSectionController_showAllCellRegistration;
    swift_beginAccess();
    sub_1CFBA29FC(v3 + v27, v8, &qword_1EC4EFFD0, &unk_1CFCA8DB8);
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFFC0, &qword_1CFCA8D20);
    v29 = *(v28 - 8);
    result = (*(v29 + 48))(v8, 1, v28);
    if (result != 1)
    {
      v35[2] = v26;
      sub_1CFBA2D80(0, &qword_1EE04CF90, 0x1E69DC7F8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE888, &qword_1CFCA5560);
      v31 = sub_1CFC9FBA8();

      (*(v29 + 8))(v8, v28);
      return v31;
    }

    __break(1u);
  }

  else
  {
    (*(v18 + 32))(v21, v25, v17);
    v32 = OBJC_IVAR____TtC10CallsAppUI25FavoriteSectionController_cellRegistration;
    swift_beginAccess();
    sub_1CFBA29FC(v3 + v32, v16, &qword_1EC4EFFD8, &unk_1CFCA8DC8);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFFB8, &qword_1CFCA8D18);
    v34 = *(v33 - 8);
    result = (*(v34 + 48))(v16, 1, v33);
    if (result != 1)
    {
      (*(v18 + 16))(v12, v21, v17);
      (*(v18 + 56))(v12, 0, 1, v17);
      sub_1CFBA2D80(0, &qword_1EE04CF90, 0x1E69DC7F8);
      v31 = sub_1CFC9FBA8();
      sub_1CFBC2FB0(v12, &qword_1EC4ED6C0, &unk_1CFCA25F0);
      (*(v18 + 8))(v21, v17);
      (*(v34 + 8))(v16, v33);
      return v31;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1CFBAFF94(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F0000, &unk_1CFCA8E50);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v18 - v11;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v14 = result;
    v15 = sub_1CFC9F728();
    [a1 setAccessibilityIdentifier_];

    v16 = *(v14 + 104);
    MEMORY[0x1EEE9AC00](v17);
    v18[-4] = a3;
    v18[-3] = v16;
    v18[-2] = a5;
    type metadata accessor for FavoriteCell(0);
    sub_1CFBAAE00(qword_1EE04FE90, type metadata accessor for FavoriteCell);

    sub_1CFC9E938();
    sub_1CFC9EBB8();
    v18[3] = v8;
    v18[4] = sub_1CFBA57C0(&qword_1EE04D290, &qword_1EC4F0000, &unk_1CFCA8E50);
    __swift_allocate_boxed_opaque_existential_0Tm(v18);
    sub_1CFC9E918();
    (*(v9 + 8))(v12, v8);
    MEMORY[0x1D38721F0](v18);
    if (*(v14 + 40) == 1)
    {
      sub_1CFC9FD78();
    }
  }

  return result;
}

unint64_t sub_1CFBB0230()
{
  result = sub_1CFC9C608();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for FavoriteCellConfig(319);
    if (v2 <= 0x3F)
    {
      result = sub_1CFBB02CC();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_1CFBB02CC()
{
  result = qword_1EE04FF70;
  if (!qword_1EE04FF70)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EE04FF70);
  }

  return result;
}

uint64_t sub_1CFBB0328@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1CFC9C608();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = *(v9 + 16);
  v11(a4, a1, v8);
  v11(&v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  v12 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  (*(v9 + 32))(v13 + v12, &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  v14 = type metadata accessor for FavoriteCell(0);
  *(a4 + *(v14 + 20)) = a2;
  v15 = (a4 + *(v14 + 24));
  *v15 = sub_1CFC84C3C;
  v15[1] = v13;
}

uint64_t sub_1CFBB04A8()
{
  v1 = sub_1CFC9C608();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t *__swift_allocate_boxed_opaque_existential_0Tm(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1CFBB05F4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v48 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF2F0, &qword_1CFCA6BA8);
  v4 = *(v3 - 8);
  v42 = v3 - 8;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v41 = v40 - v6;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF2F8, &qword_1CFCA6BB0);
  v7 = *(*(v44 - 8) + 64);
  MEMORY[0x1EEE9AC00](v44);
  v43 = v40 - v8;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF300, &qword_1CFCA6BB8);
  v46 = *(v47 - 8);
  v9 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v45 = v40 - v10;
  v11 = *(v1 + *(type metadata accessor for FavoriteCell(0) + 20));
  swift_getKeyPath();
  v51 = v11;
  sub_1CFBB0D7C(&qword_1EE04F8D0, type metadata accessor for FavoriteCellConfig);
  sub_1CFC9C158();

  v12 = *(v11 + 16);
  v13 = sub_1CFC9C608();
  v57[3] = v13;
  v57[4] = sub_1CFBB0D7C(&qword_1EE04D698, MEMORY[0x1E6993700]);
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v57);
  (*(*(v13 - 8) + 16))(boxed_opaque_existential_0Tm, v1, v13);
  v50 = v1;
  v49 = v1;
  v40[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF308, &qword_1CFCA6BC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF310, &qword_1CFCA6BC8);
  sub_1CFBB0DC4();
  v15 = type metadata accessor for FavoriteSensitiveBadge(255);
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EF318, &qword_1CFCA6BD0);
  v17 = sub_1CFBB0D7C(&qword_1EC4EF320, type metadata accessor for FavoriteSensitiveBadge);
  v18 = sub_1CFC06888();
  v51 = v15;
  v52 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v51 = v15;
  v52 = &type metadata for NudityDetectionFlagEnabled;
  v53 = v16;
  v54 = v17;
  v20 = v41;
  v55 = v18;
  v56 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_1CFC9CCF8();
  v21 = sub_1CFC9F518();
  v23 = v22;
  v24 = v20 + *(v42 + 44);
  sub_1CFC4922C(v2, v24);
  v25 = (v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF328, &qword_1CFCA6BD8) + 36));
  *v25 = v21;
  v25[1] = v23;
  MEMORY[0x1D3871A90](0.5, 1.0, 0.0);
  v26 = sub_1CFC9F548();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF330, &qword_1CFCA6BE0);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1CFCA1DC0;
  swift_getKeyPath();
  v51 = v11;
  sub_1CFC9C158();

  if (*(v11 + OBJC_IVAR____TtC10CallsAppUI18FavoriteCellConfig__isEditing) == 1)
  {
    v28 = sub_1CFC48E10() ^ 1;
  }

  else
  {
    v28 = 0;
  }

  *(v27 + 32) = v28 & 1;
  *(v27 + 33) = sub_1CFC48E10() & 1;
  v29 = v43;
  sub_1CFBCCE88(v20, v43, &qword_1EC4EF2F0, &qword_1CFCA6BA8);
  v30 = (v29 + *(v44 + 36));
  *v30 = v26;
  v30[1] = v27;
  sub_1CFC49FC8();
  v31 = v45;
  sub_1CFC9EE48();
  sub_1CFBB0CAC(v29);
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  v51 = v11;
  sub_1CFC9C158();

  v33 = OBJC_IVAR____TtC10CallsAppUI18FavoriteCellConfig__tileStyle;
  swift_beginAccess();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF360, &qword_1CFCA6C28);
  v35 = v48;
  v36 = (v48 + *(v34 + 36));
  v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF368, &qword_1CFCA6C30) + 28);
  v38 = sub_1CFC9CE08();
  (*(*(v38 - 8) + 16))(v36 + v37, v11 + v33, v38);
  *v36 = KeyPath;
  return (*(v46 + 32))(v35, v31, v47);
}

uint64_t sub_1CFBB0CAC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF2F8, &qword_1CFCA6BB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CFBB0D7C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1CFBB0DC4()
{
  result = qword_1EE04D548;
  if (!qword_1EE04D548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EF308, &qword_1CFCA6BC0);
    sub_1CFBB0D7C(&qword_1EE04D678, MEMORY[0x1E6995A20]);
    sub_1CFBB0D7C(&qword_1EE04FFC8, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04D548);
  }

  return result;
}

uint64_t FavoriteContact.icon.getter()
{
  v0 = sub_1CFC9C5D8();
  v1 = [v0 actionType];

  v2 = *MEMORY[0x1E695C150];
  v3 = sub_1CFC9F768();
  v5 = v4;
  if (v3 != sub_1CFC9F768() || v5 != v6)
  {
    v8 = sub_1CFCA02B8();

    if (v8)
    {
      goto LABEL_19;
    }

    v10 = *MEMORY[0x1E695C170];
    v11 = sub_1CFC9F768();
    v13 = v12;
    if (v11 != sub_1CFC9F768() || v13 != v14)
    {
      v16 = sub_1CFCA02B8();

      if (v16)
      {
        goto LABEL_19;
      }

      v17 = *MEMORY[0x1E695C178];
      v18 = sub_1CFC9F768();
      v20 = v19;
      if (v18 != sub_1CFC9F768() || v20 != v21)
      {
        v22 = sub_1CFCA02B8();

        if (v22)
        {
LABEL_19:

          return sub_1CFC9F1A8();
        }

        v23 = *MEMORY[0x1E695C190];
        v24 = sub_1CFC9F768();
        v26 = v25;
        if (v24 != sub_1CFC9F768() || v26 != v27)
        {
          v28 = sub_1CFCA02B8();

          if (v28)
          {
            goto LABEL_19;
          }

          v29 = *MEMORY[0x1E695C1A8];
          v30 = sub_1CFC9F768();
          v32 = v31;
          if (v30 != sub_1CFC9F768() || v32 != v33)
          {
            v34 = sub_1CFCA02B8();

            if (v34)
            {
              goto LABEL_19;
            }

            v35 = *MEMORY[0x1E695C1B8];
            v36 = sub_1CFC9F768();
            v38 = v37;
            if (v36 != sub_1CFC9F768() || v38 != v39)
            {
              sub_1CFCA02B8();

              return sub_1CFC9F1A8();
            }
          }
        }
      }
    }
  }

  return sub_1CFC9F1A8();
}

uint64_t FavoriteContact.title.getter()
{
  result = sub_1CFC9C5C8();
  v2 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v2 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {

    v3 = sub_1CFC9C5D8();
    v4 = [v3 name];

    v5 = sub_1CFC9F768();
    return v5;
  }

  return result;
}

uint64_t sub_1CFBB12E8()
{
  v0 = sub_1CFC9C5C8();
  v2 = v1;

  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = v0 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t FavoriteContact.titleLineLimit.getter()
{
  v0 = sub_1CFC9C5C8();
  v2 = v1;

  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = v0 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_1CFBB1498(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFFF8, &qword_1CFCA8E48);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v12 - v7;
  v9 = *a3;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = *(result + 104);
    MEMORY[0x1EEE9AC00](result);
    v12[-2] = v9;
    v12[-1] = v11;
    sub_1CFC84BE8();

    sub_1CFC9E938();
    sub_1CFC9EBB8();
    v12[3] = v4;
    v12[4] = sub_1CFBA57C0(&qword_1EE04D288, &qword_1EC4EFFF8, &qword_1CFCA8E48);
    __swift_allocate_boxed_opaque_existential_0Tm(v12);
    sub_1CFC9E918();
    (*(v5 + 8))(v8, v4);
    MEMORY[0x1D38721F0](v12);
  }

  return result;
}

void *sub_1CFBB1694(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED630, &qword_1CFCA2510);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED638, &qword_1CFCA2518);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1CFBB17DC(void *a1, int64_t a2, char a3)
{
  result = sub_1CFBB1694(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1CFBB1804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_sections;
    v10 = result;
    swift_beginAccess();
    v11 = *&v10[v9];

    v12 = sub_1CFC9C128();
    if ((v12 & 0x8000000000000000) != 0 || v12 >= *(v11 + 16))
    {

      return 0;
    }

    else
    {
      v13 = v11 + 16 * v12;
      v14 = *(v13 + 32);
      v15 = *(v13 + 40);
      swift_unknownObjectRetain();

      ObjectType = swift_getObjectType();
      v17 = (*(v15 + 168))(a1, a2, a3, a4, ObjectType, v15);
      swift_unknownObjectRelease();
      return v17;
    }
  }

  return result;
}

uint64_t sub_1CFBB1930()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE018, &unk_1CFCA4680);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v23 - v5;
  (*(v3 + 16))(&v23 - v5, v0 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_headerRegistration, v2);
  type metadata accessor for SectionHeaderView();
  v24 = sub_1CFC9FBB8();
  (*(v3 + 8))(v6, v2);
  v7 = sub_1CFC77E6C();
  v9 = v8;
  v10 = *(v1 + 64);
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = type metadata accessor for SectionHeaderConfiguration();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  v15 = swift_allocObject();
  *(v15 + 49) = 0;
  *(v15 + 32) = 0;
  *(v15 + 40) = 0;
  *(v15 + 56) = 0;
  *(v15 + 64) = 0;
  *(v15 + 72) = 512;
  sub_1CFC9C188();
  *(v15 + 16) = v7;
  *(v15 + 24) = v9;
  v16 = *(v15 + 40);

  *(v15 + 32) = 0;
  *(v15 + 40) = 0;
  *(v15 + 48) = v10 ^ 1;
  if (*(v15 + 49))
  {
    KeyPath = swift_getKeyPath();
    v23 = &v23;
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v23 - 2) = v15;
    *(&v23 - 8) = 0;
    v25 = v15;
    sub_1CFBB240C(&qword_1EE04EB90, type metadata accessor for SectionHeaderConfiguration);
    sub_1CFC9C148();
  }

  else
  {
    *(v15 + 49) = 0;
  }

  if (v10)
  {
    v18 = sub_1CFC7ECC0;
  }

  else
  {
    v18 = sub_1CFC7ECC8;
  }

  v19 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v19);
  *(&v23 - 4) = v15;
  *(&v23 - 3) = v18;
  *(&v23 - 2) = v11;
  v25 = v15;
  sub_1CFBB240C(&qword_1EE04EB90, type metadata accessor for SectionHeaderConfiguration);
  sub_1CFC9C148();
  sub_1CFBABFA0(v18);

  v20 = *(v1 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_headerConfiguration);
  *(v1 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_headerConfiguration) = v15;

  v21 = v24;
  sub_1CFC882F8(v15);

  return v21;
}

uint64_t sub_1CFBB1D24()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = *(result + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_dataSource);
    v3 = sub_1CFC9C868();

    if (qword_1EE050010 != -1)
    {
      swift_once();
    }

    v4 = sub_1CFC9D938();
    __swift_project_value_buffer(v4, qword_1EE052308);

    v5 = sub_1CFC9D918();
    v6 = sub_1CFC9FAF8();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v12 = v8;
      *v7 = 67240450;
      *(v7 + 4) = v3 & 1;
      *(v7 + 8) = 2080;
      if (*(v1 + 64))
      {
        v9 = 0x5245444E494D4552;
      }

      else
      {
        v9 = 0x53544E45434552;
      }

      if (*(v1 + 64))
      {
        v10 = 0xE900000000000053;
      }

      else
      {
        v10 = 0xE700000000000000;
      }

      v11 = sub_1CFBB531C(v9, v10, &v12);

      *(v7 + 10) = v11;
      _os_log_impl(&dword_1CFB9F000, v5, v6, "RecentsSectionController received recentItems update, hasFinishedFirstLoad: %{BOOL,public}d. Section: %s", v7, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x1D3873280](v8, -1, -1);
      MEMORY[0x1D3873280](v7, -1, -1);
    }

    if ((v3 & 1) != 0 && (sub_1CFC76444(), swift_unknownObjectWeakLoadStrong()))
    {
      RecentsViewController.itemsDidUpdate()();

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

void sub_1CFBB1F70()
{
  if (*&v0[OBJC_IVAR____TtC10CallsAppUI17SectionHeaderView_configuration])
  {
    v1 = v0;
    v2 = OBJC_IVAR____TtC10CallsAppUI17SectionHeaderView_headerView;
    v3 = *&v0[OBJC_IVAR____TtC10CallsAppUI17SectionHeaderView_headerView];

    [v3 removeFromSuperview];
    v4 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F0030, &qword_1CFCA9080));

    v5 = sub_1CFC9E108();
    [v1 addSubview_];
    [v5 setTranslatesAutoresizingMaskIntoConstraints_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED760, &qword_1CFCA2690);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1CFCA3B60;
    v7 = [v5 leadingAnchor];
    v8 = [v1 layoutMarginsGuide];
    v9 = [v8 leadingAnchor];

    v10 = [v7 constraintEqualToAnchor_];
    *(v6 + 32) = v10;
    v11 = [v5 trailingAnchor];

    v12 = [v1 layoutMarginsGuide];
    v13 = [v12 trailingAnchor];

    v14 = [v11 constraintEqualToAnchor_];
    *(v6 + 40) = v14;
    v15 = [v5 topAnchor];

    v16 = [v1 layoutMarginsGuide];
    v17 = [v16 topAnchor];

    v18 = [v15 constraintEqualToAnchor_];
    *(v6 + 48) = v18;
    v19 = [v5 bottomAnchor];

    v20 = [v1 layoutMarginsGuide];
    v21 = [v20 bottomAnchor];

    v22 = [v19 constraintEqualToAnchor_];
    *(v6 + 56) = v22;
    sub_1CFBB2EA4();
    v23 = sub_1CFC9F898();

    [v1 addConstraints_];

    v24 = *&v1[v2];
    *&v1[v2] = v5;
  }
}

size_t sub_1CFBB22BC(size_t a1, int64_t a2, char a3)
{
  result = sub_1CFBA5CC0(a1, a2, a3, *v3, &qword_1EC4ED500, &qword_1CFCA2420, MEMORY[0x1E6993688]);
  *v3 = result;
  return result;
}

uint64_t type metadata accessor for SectionHeaderConfiguration()
{
  result = qword_1EE04EB80;
  if (!qword_1EE04EB80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CFBB234C()
{
  result = sub_1CFC9C198();
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

uint64_t sub_1CFBB240C(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_1CFBB2468(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 16 * v10);
  }

  return v12;
}

uint64_t sub_1CFBB256C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1CFBB257C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  *(a1 + 56) = a2;
  *(a1 + 64) = a3;
  sub_1CFBB2568(a2, a3);
  return sub_1CFBB2564(v3, v4);
}

uint64_t sub_1CFBB25C8(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_1CFC9C448();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1CFBB26AC(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1CFC7E7DC(v3);
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

uint64_t RecentsItem.valuesForHash.getter()
{
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED0B8, &unk_1CFCA49D0);
  v1 = *(*(v49 - 8) + 64);
  v2 = MEMORY[0x1EEE9AC00](v49);
  v48 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v47 = &v45 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED0D8, &qword_1CFCA4220);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v45 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFC50, &qword_1CFCA4600);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1CFCA4C40;
  *&v56 = sub_1CFC9C348();
  *(&v56 + 1) = v13;
  sub_1CFCA0078();
  sub_1CFC9C418();
  sub_1CFBA29FC(v11, v9, &qword_1EC4ED0D8, &qword_1CFCA4220);
  sub_1CFBB2EF0();
  sub_1CFCA0078();
  v14 = sub_1CFC9C428();
  v15 = v14;
  *&v56 = MEMORY[0x1E69E7CC0];
  if (v14 >> 62)
  {
    goto LABEL_41;
  }

  for (i = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1CFC9FFD8())
  {
    v50 = v0;
    if (!i)
    {
      break;
    }

    v45 = v11;
    v46 = v12;
    v17 = 0;
    v12 = v15 & 0xC000000000000001;
    while (1)
    {
      if (v12)
      {
        v18 = MEMORY[0x1D3872640](v17, v15);
      }

      else
      {
        if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_40;
        }

        v18 = *(v15 + 8 * v17 + 32);
      }

      v19 = v18;
      v11 = (v17 + 1);
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if ([v18 hasBeenPersisted])
      {
        v0 = &v56;
        sub_1CFCA0138();
        v20 = *(v56 + 16);
        sub_1CFCA0178();
        sub_1CFCA0188();
        sub_1CFCA0148();
      }

      else
      {
      }

      ++v17;
      if (v11 == i)
      {
        v21 = v56;
        v12 = v46;
        v11 = v45;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    ;
  }

  v21 = MEMORY[0x1E69E7CC0];
LABEL_16:

  sub_1CFBC2FB0(v11, &qword_1EC4ED0D8, &qword_1CFCA4220);
  *&v56 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFE10, &qword_1CFCA8378);
  sub_1CFBB2FC4();
  sub_1CFCA0078();
  v22 = sub_1CFC9C408();
  if (v22)
  {
    v23 = v22;
    v24 = sub_1CFC9D658();

    v25 = v24 & 1;
  }

  else
  {
    v25 = 2;
  }

  v26 = v48;
  LOBYTE(v56) = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFE18, &unk_1CFCA8380);
  sub_1CFC730AC(&qword_1EE04D0F0, &qword_1EC4EFE18, &unk_1CFCA8380);
  sub_1CFCA0078();
  *&v56 = sub_1CFC9C398();
  *(&v56 + 1) = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF7C0, &qword_1CFCA78D8);
  sub_1CFC730AC(&qword_1EE04D120, &qword_1EC4EF7C0, &qword_1CFCA78D8);
  sub_1CFCA0078();
  *&v56 = sub_1CFC9C368();
  *(&v56 + 1) = v28;
  sub_1CFCA0078();
  v29 = v47;
  sub_1CFC9C378();
  sub_1CFBA29FC(v29, v26, &qword_1EC4ED0B8, &unk_1CFCA49D0);
  sub_1CFC73114();
  sub_1CFCA0078();
  sub_1CFBC2FB0(v29, &qword_1EC4ED0B8, &unk_1CFCA49D0);
  v59 = sub_1CFC9C3D8();
  v60 = v30;
  v61 = sub_1CFC9C438();
  v62 = v31;
  if (v60)
  {
    v51 = v59;
    v52 = v60;
    swift_bridgeObjectRetain_n();
    sub_1CFCA0078();
  }

  else
  {
    v55 = 0;
    v53 = 0u;
    v54 = 0u;
  }

  v56 = v53;
  v57 = v54;
  v58 = v55;

  if (*(&v57 + 1))
  {
    v53 = v56;
    v54 = v57;
    v55 = v58;
    v32 = MEMORY[0x1E69E7CC0];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = sub_1CFBB30BC(0, *(v32 + 2) + 1, 1, v32);
    }

    v34 = *(v32 + 2);
    v33 = *(v32 + 3);
    if (v34 >= v33 >> 1)
    {
      v32 = sub_1CFBB30BC((v33 > 1), v34 + 1, 1, v32);
    }

    *(v32 + 2) = v34 + 1;
    v35 = &v32[40 * v34];
    v36 = v53;
    v37 = v54;
    *(v35 + 8) = v55;
    *(v35 + 2) = v36;
    *(v35 + 3) = v37;
    v38 = v62;
    if (v62)
    {
      goto LABEL_28;
    }
  }

  else
  {
    sub_1CFBC2FB0(&v56, &qword_1EC4EFE20, &qword_1CFCA8390);
    v32 = MEMORY[0x1E69E7CC0];
    v38 = v62;
    if (v62)
    {
LABEL_28:
      v51 = v61;
      v52 = v38;
      swift_bridgeObjectRetain_n();
      sub_1CFCA0078();
      goto LABEL_31;
    }
  }

  v55 = 0;
  v53 = 0u;
  v54 = 0u;
LABEL_31:
  v56 = v53;
  v57 = v54;
  v58 = v55;

  if (*(&v57 + 1))
  {
    v53 = v56;
    v54 = v57;
    v55 = v58;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = sub_1CFBB30BC(0, *(v32 + 2) + 1, 1, v32);
    }

    v40 = *(v32 + 2);
    v39 = *(v32 + 3);
    if (v40 >= v39 >> 1)
    {
      v32 = sub_1CFBB30BC((v39 > 1), v40 + 1, 1, v32);
    }

    *(v32 + 2) = v40 + 1;
    v41 = &v32[40 * v40];
    v42 = v53;
    v43 = v54;
    *(v41 + 8) = v55;
    *(v41 + 2) = v42;
    *(v41 + 3) = v43;
  }

  else
  {
    sub_1CFBC2FB0(&v56, &qword_1EC4EFE20, &qword_1CFCA8390);
  }

  swift_arrayDestroy();
  *&v56 = v12;
  sub_1CFBB31DC(v32);
  return v56;
}

unint64_t sub_1CFBB2EA4()
{
  result = qword_1EE04FF78;
  if (!qword_1EE04FF78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE04FF78);
  }

  return result;
}

unint64_t sub_1CFBB2EF0()
{
  result = qword_1EE04D680;
  if (!qword_1EE04D680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4ED0D8, &qword_1CFCA4220);
    sub_1CFBB240C(&qword_1EE04D688, MEMORY[0x1E6993780]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04D680);
  }

  return result;
}

unint64_t sub_1CFBB2FC4()
{
  result = qword_1EE04D0F8;
  if (!qword_1EE04D0F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EFE10, &qword_1CFCA8378);
    sub_1CFC72300(&qword_1EE04CED0, &unk_1EE04CED8, 0x1E695CD58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04D0F8);
  }

  return result;
}

uint64_t sub_1CFBB3074(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_1CFBB30BC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFC50, &qword_1CFCA4600);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1CFBB31DC(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1CFBB30BC(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

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

uint64_t sub_1CFBB32DC(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_1CFC9FEB8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v21[-v9];
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v14 = &v21[-v13];
  sub_1CFBB4598(a1, v21);
  v15 = swift_dynamicCast();
  v16 = *(v11 + 56);
  if (v15)
  {
    v16(v10, 0, 1, AssociatedTypeWitness);
    (*(v11 + 32))(v14, v10, AssociatedTypeWitness);
    v17 = *(a2 + 48);
    v18 = *(a2 + 56);
    v19 = v17(v14);
    (*(v11 + 8))(v14, AssociatedTypeWitness);
  }

  else
  {
    v16(v10, 1, 1, AssociatedTypeWitness);
    (*(v6 + 8))(v10, v5);
    v19 = 0;
  }

  return v19 & 1;
}

uint64_t sub_1CFBB3504@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = sub_1CFC9EA48();
  v40 = *(v3 - 8);
  v41 = v3;
  v4 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v37 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F0038, &qword_1CFCA9220);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v37 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F0040, &qword_1CFCA9228);
  v38 = *(v10 - 8);
  v39 = v10;
  v11 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v37 - v12;
  *v9 = sub_1CFC9E588();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F0048, &qword_1CFCA9230);
  sub_1CFC86DAC(a1, &v9[*(v14 + 44)]);
  v15 = sub_1CFC9EBC8();
  swift_getKeyPath();
  v43 = a1;
  sub_1CFBB3074(&qword_1EE04EB90, type metadata accessor for SectionHeaderConfiguration);
  sub_1CFC9C158();

  v35 = *(a1 + 73);
  sub_1CFC9CD28();
  sub_1CFC9DE18();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F0050, &qword_1CFCA9238) + 36)];
  *v24 = v15;
  *(v24 + 1) = v17;
  *(v24 + 2) = v19;
  *(v24 + 3) = v21;
  *(v24 + 4) = v23;
  v24[40] = 0;
  v25 = sub_1CFC9EBE8();
  swift_getKeyPath();
  v43 = a1;
  sub_1CFC9C158();

  v36 = *(a1 + 73);
  sub_1CFC9CD28();
  sub_1CFC9DE18();
  v26 = &v9[*(v6 + 36)];
  *v26 = v25;
  *(v26 + 1) = v27;
  *(v26 + 2) = v28;
  *(v26 + 3) = v29;
  *(v26 + 4) = v30;
  v26[40] = 0;
  swift_getKeyPath();
  v43 = a1;
  sub_1CFC9C158();

  if (!*(a1 + 40))
  {
    goto LABEL_4;
  }

  swift_getKeyPath();
  v43 = a1;
  sub_1CFC9C158();

  if (!*(a1 + 56))
  {
    goto LABEL_4;
  }

  swift_getKeyPath();
  v43 = a1;
  sub_1CFC9C158();

  if ((*(a1 + 72) & 1) == 0)
  {
    v31 = v37;
    sub_1CFC9EA38();
  }

  else
  {
LABEL_4:
    v31 = v37;
    sub_1CFC9EA28();
  }

  v32 = sub_1CFC88418();
  sub_1CFC9EFB8();
  (*(v40 + 8))(v31, v41);
  sub_1CFBC2FB0(v9, &qword_1EC4F0038, &qword_1CFCA9220);
  v43 = v6;
  v44 = v32;
  swift_getOpaqueTypeConformance2();
  v33 = v39;
  sub_1CFC9F008();
  return (*(v38 + 8))(v13, v33);
}

uint64_t sub_1CFBB3B58(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_1CFC861B8(v2, v3);
}

uint64_t sub_1CFBB3B98(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v7 = (a3 + 32);
    v8 = v5 - 1;
    while (1)
    {
      v9 = v7[5];
      v10 = v7[3];
      v38 = v7[4];
      v39 = v9;
      v11 = v7[5];
      v40 = v7[6];
      v12 = v7[1];
      v35[0] = *v7;
      v35[1] = v12;
      v13 = v7[3];
      v15 = *v7;
      v14 = v7[1];
      v36 = v7[2];
      v37 = v13;
      v31 = v38;
      v32 = v11;
      v33 = v7[6];
      v27 = v15;
      v28 = v14;
      v41 = *(v7 + 14);
      v34 = *(v7 + 14);
      v29 = v36;
      v30 = v10;
      sub_1CFBA29FC(v35, &v19, &qword_1EC4ED5C8, &qword_1CFCA24B0);
      v16 = a1(&v27);
      if (v3)
      {
        break;
      }

      v4 = v16;
      v23 = v31;
      v24 = v32;
      v25 = v33;
      v26 = v34;
      v19 = v27;
      v20 = v28;
      v21 = v29;
      v22 = v30;
      sub_1CFBC2FB0(&v19, &qword_1EC4ED5C8, &qword_1CFCA24B0);
      v17 = v8-- == 0;
      v7 = (v7 + 120);
      if ((v4 | v17))
      {
        return v4 & 1;
      }
    }

    v23 = v31;
    v24 = v32;
    v25 = v33;
    v26 = v34;
    v19 = v27;
    v20 = v28;
    v21 = v29;
    v22 = v30;
    sub_1CFBC2FB0(&v19, &qword_1EC4ED5C8, &qword_1CFCA24B0);
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4 & 1;
}

uint64_t sub_1CFBB3D2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE540, &qword_1CFCA4690);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v60 = v54 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE368, &unk_1CFCA4040);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v58 = v54 - v11;
  v59 = sub_1CFC9CF08();
  v63 = *(v59 - 8);
  v12 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v62 = v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED570, &unk_1CFCA2470);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v54 - v16;
  v18 = sub_1CFC9C448();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE04D610 != -1)
  {
    swift_once();
  }

  v23 = sub_1CFC9D938();
  __swift_project_value_buffer(v23, qword_1EE04D618);
  v24 = *(v19 + 16);
  v56 = v19 + 16;
  v57 = a2;
  v55 = v24;
  v24(v22, a2, v18);
  v25 = sub_1CFC9D918();
  v26 = sub_1CFC9FAF8();
  v27 = os_log_type_enabled(v25, v26);
  v64 = v19;
  if (v27)
  {
    v54[0] = a3;
    v54[1] = a1;
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v65 = v29;
    *v28 = 136315138;
    v30 = sub_1CFC9C408();
    if (v30)
    {
      v31 = v30;
      sub_1CFC9D668();

      v32 = 0;
    }

    else
    {
      v32 = 1;
    }

    v33 = sub_1CFC9C008();
    (*(*(v33 - 8) + 56))(v17, v32, 1, v33);
    v34 = sub_1CFC9F798();
    v36 = v35;
    (*(v64 + 8))(v22, v18);
    v37 = sub_1CFBB531C(v34, v36, &v65);

    *(v28 + 4) = v37;
    _os_log_impl(&dword_1CFB9F000, v25, v26, "Cell is dequeued for callUUID: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
    MEMORY[0x1D3873280](v29, -1, -1);
    MEMORY[0x1D3873280](v28, -1, -1);
  }

  else
  {

    (*(v19 + 8))(v22, v18);
  }

  v38 = OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_currentFilterMode;
  v39 = v61;
  swift_beginAccess();
  v40 = v63;
  v41 = v39 + v38;
  v42 = v62;
  v43 = v59;
  (*(v63 + 16))(v62, v41, v59);
  v44 = (*(v40 + 88))(v42, v43);
  v45 = v60;
  if (v44 != *MEMORY[0x1E6995A90])
  {
    v52 = (v64 + 56);
    v53 = v58;
    if (v44 == *MEMORY[0x1E6995A68])
    {
      v55(v58, v57, v18);
      (*v52)(v53, 0, 1, v18);
      type metadata accessor for RecentsStyleListCell();
      v51 = sub_1CFC9FBA8();
      sub_1CFBC2FB0(v53, &qword_1EC4EE368, &unk_1CFCA4040);
    }

    else
    {
      v55(v58, v57, v18);
      (*v52)(v53, 0, 1, v18);
      type metadata accessor for RecentsStyleListCell();
      v51 = sub_1CFC9FBA8();
      sub_1CFBC2FB0(v53, &qword_1EC4EE368, &unk_1CFCA4040);
      (*(v63 + 8))(v62, v43);
    }

    return v51;
  }

  v46 = OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_requestsCellRegistration;
  swift_beginAccess();
  sub_1CFBA29FC(v39 + v46, v45, &qword_1EC4EE540, &qword_1CFCA4690);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE528, &qword_1CFCA4670);
  v48 = *(v47 - 8);
  result = (*(v48 + 48))(v45, 1, v47);
  if (result != 1)
  {
    v50 = v58;
    v55(v58, v57, v18);
    (*(v64 + 56))(v50, 0, 1, v18);
    type metadata accessor for RecentsStyleListCell();
    v51 = sub_1CFC9FBA8();
    sub_1CFBC2FB0(v50, &qword_1EC4EE368, &unk_1CFCA4040);
    (*(v48 + 8))(v45, v47);
    return v51;
  }

  __break(1u);
  return result;
}

unint64_t sub_1CFBB4460()
{
  result = qword_1EE04FFB0;
  if (!qword_1EE04FFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04FFB0);
  }

  return result;
}

uint64_t sub_1CFBB44B4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1CFBB32DC(a1, v1 + 32);
}

uint64_t sub_1CFBB44C0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1CFBB44D0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 64);
  v2 = *(a1 + 72);
  v4 = a2[3];
  v5 = __swift_project_boxed_opaque_existential_1(a2, v4);
  v8[3] = v4;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v8);
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_0Tm, v5, v4);
  LOBYTE(v2) = v3(v8);
  __swift_destroy_boxed_opaque_existential_1Tm(v8);
  return v2 & 1;
}

uint64_t sub_1CFBB4598(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1CFBB45F4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1CFBB46AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v26 = a2;
  v27 = a1;
  v6 = sub_1CFC9DB68();
  v24 = *(v6 - 8);
  v25 = v6;
  v7 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CFC9CF08();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v24 - v16;
  sub_1CFC9CD28();
  v18 = OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_currentFilterMode;
  swift_beginAccess();
  (*(v11 + 16))(v17, a3 + v18, v10);
  (*(v11 + 104))(v15, *MEMORY[0x1E6995A90], v10);
  sub_1CFBB240C(&qword_1EE04D660, MEMORY[0x1E6995AA8]);
  sub_1CFC9F878();
  sub_1CFC9F878();
  if (v30 == v28 && v31 == v29)
  {
    v19 = *(v11 + 8);
    v19(v15, v10);
    v19(v17, v10);
  }

  else
  {
    v20 = sub_1CFCA02B8();
    v21 = *(v11 + 8);
    v21(v15, v10);
    v21(v17, v10);

    if ((v20 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  sub_1CFC9CD28();
  v32 = v30;
LABEL_6:
  v22 = sub_1CFC9DB78();
  (*(*(v22 - 8) + 16))(a4, v26, v22);
  if (!sub_1CFC9C0F8())
  {
    (*(v24 + 104))(v9, *MEMORY[0x1E69DC178], v25);
    sub_1CFC9DB38();
  }

  sub_1CFC9CD28();
  return sub_1CFC9DB58();
}

Swift::Void __swiftcall RecentsViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_1CFC9CF08();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31.receiver = v2;
  v31.super_class = ObjectType;
  objc_msgSendSuper2(&v31, sel_viewDidAppear_, a1);
  v10 = *&v2[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_recentsDataSource];
  (*(v6 + 104))(v9, *MEMORY[0x1E6995A70], v5);
  sub_1CFC9C788();
  (*(v6 + 8))(v9, v5);
  v11 = [objc_opt_self() currentDevice];
  v12 = [v11 userInterfaceIdiom];

  if (v12)
  {
    sub_1CFBAB5EC();
    [v2 becomeFirstResponder];
  }

  v13 = *&v2[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_layoutManager];
  v14 = CAUILayoutManager.shouldShowTip.getter();

  if (v14)
  {
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v16 = objc_allocWithZone(type metadata accessor for LayoutTipViewController(0));
    v17 = sub_1CFC3B82C(&unk_1CFCA7970, v15);
    v18 = [v17 popoverPresentationController];
    if (v18)
    {
      v19 = v18;
      v20 = sub_1CFC585F4();
      [v19 setSourceItem_];
    }

    v21 = [v17 popoverPresentationController];

    if (v21)
    {
      v22 = [v2 tabBarController];
      if (v22)
      {
        v23 = v22;
        v24 = [v22 tabBar];

        v30 = v24;
        v29 = MEMORY[0x1E69E7CC0];
        if (v24)
        {
          v25 = v24;
          MEMORY[0x1D3871DC0]();
          if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v28[1] = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_1CFC9F8C8();
          }

          sub_1CFC9F8F8();
        }
      }

      else
      {
        v30 = 0;
      }

      sub_1CFBC2FB0(&v30, &unk_1EC4EF8D8, &qword_1CFCA7978);
      sub_1CFBA2D80(0, &qword_1EE04CF30, 0x1E69DD250);
      v26 = sub_1CFC9F898();

      [v21 setPassthroughViews_];
    }

    [v2 presentViewController:v17 animated:1 completion:0];
  }

  v27 = [objc_opt_self() defaultCenter];
  [v27 addObserver:v2 selector:sel_applicationWillResignActive name:*MEMORY[0x1E69DDBC8] object:0];
}

void sub_1CFBB50A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

char *sub_1CFBB510C(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4, uint64_t *a5)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = a5;
    v7 = a4;
    v8 = a3;
    v9 = a2;
    v10 = a1;
    v11 = *v6;
    v12 = *v6 >> 62;
    if (!v12)
    {
      result = *((*v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  result = sub_1CFC9FFD8();
  if (result < v9)
  {
    goto LABEL_13;
  }

LABEL_4:
  v14 = v9 - v10;
  if (__OFSUB__(v9, v10))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v15 = 1 - v14;
  if (__OFSUB__(1, v14))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v12)
  {
    v16 = sub_1CFC9FFD8();
  }

  else
  {
    v16 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v17 = __OFADD__(v16, v15);
  result = (v16 + v15);
  if (!v17)
  {
    sub_1CFBB55A4(result);
    return sub_1CFBB56D4(v10, v9, 1, v8, v7, v5);
  }

LABEL_16:
  __break(1u);
  return result;
}

void sub_1CFBB5204()
{
  sub_1CFBB50A8(319, &qword_1EE04D578, MEMORY[0x1E69CA888], MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_1CFBB50A8(319, &qword_1EE04D6B8, MEMORY[0x1E6993688], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1CFBB02CC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1CFBB531C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1CFBB5498(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
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
    sub_1CFBB4598(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

uint64_t storeEnumTagSinglePayload for AppType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1CFBB5498(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1CFC8D3E4(a5, a6);
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
    result = sub_1CFCA0128();
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

uint64_t sub_1CFBB55A4(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_1CFC9FFD8();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_1CFCA0118();
  *v1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for AppType(unsigned __int8 *a1, unsigned int a2)
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
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

char *sub_1CFBB56D4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, unint64_t *a5, uint64_t *a6)
{
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v10 = a4;
  v6 = a3;
  v9 = a2;
  v14 = *v7;
  v7 = (*v7 & 0xFFFFFFFFFFFFFF8);
  v11 = v7 + 4;
  v8 = &v7[a1 + 4];
  sub_1CFBA2D80(0, a5, a6);
  result = swift_arrayDestroy();
  v16 = __OFSUB__(v6, v13);
  v13 = v6 - v13;
  if (v16)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v13)
  {
    v12 = v14 >> 62;
    if (!(v14 >> 62))
    {
      result = v7[2];
      v17 = &result[-v9];
      if (!__OFSUB__(result, v9))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = sub_1CFC9FFD8();
    v17 = &result[-v9];
    if (!__OFSUB__(result, v9))
    {
LABEL_6:
      v18 = &v8[v6];
      v19 = &v11[v9];
      if (v18 != v19 || v18 >= &v19[8 * v17])
      {
        memmove(v18, v19, 8 * v17);
      }

      if (v12)
      {
        result = sub_1CFC9FFD8();
      }

      else
      {
        result = v7[2];
      }

      if (!__OFADD__(result, v13))
      {
        v7[2] = &result[v13];
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
  if (v6 > 0)
  {
    *v8 = v10;
    result = v10;
    if (v6 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

uint64_t sub_1CFBB5818@<X0>(void *a1@<X8>)
{
  sub_1CFBB5868();
  result = sub_1CFC9E4F8();
  *a1 = v3;
  return result;
}

unint64_t sub_1CFBB5868()
{
  result = qword_1EE04D378;
  if (!qword_1EE04D378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04D378);
  }

  return result;
}

uint64_t sub_1CFBB58BC@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for RecentsEditMode(0);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  result = sub_1CFC9C188();
  *a1 = v5;
  return result;
}

uint64_t sub_1CFBB590C()
{
  v1 = OBJC_IVAR____TtC10CallsAppUI15RecentsEditMode___observationRegistrar;
  v2 = sub_1CFC9C198();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1CFBB59C8(uint64_t *a1)
{
  v2 = *a1;
  sub_1CFBB5868();

  return sub_1CFC9E508();
}

uint64_t sub_1CFBB5A28()
{
  sub_1CFBB67C4();
  sub_1CFC9E4F8();
  v0 = v3;
  if (v3 == 2)
  {
    if (qword_1EE04F6F0 != -1)
    {
      swift_once();
    }

    v1 = qword_1EE052300;
    swift_getKeyPath();
    sub_1CFBB7358();

    sub_1CFC9C158();

    v0 = *(v1 + 24);
  }

  return v0 & 1;
}

uint64_t type metadata accessor for RecentsCellState()
{
  result = qword_1EE04F998;
  if (!qword_1EE04F998)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CFBB5B58@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1CFBB5A28();
  *a1 = result & 1;
  return result;
}

void *sub_1CFBB5B88()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF478, &qword_1CFCA6F58);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x1EEE9AC00](v0 - 8);
  v5 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v72 - v6;
  v8 = sub_1CFC9D7E8();
  v9 = *(v8 - 8);
  v77 = v8;
  v78 = v9;
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v76 = &v72 - v14;
  v15 = sub_1CFC9C688();
  v74 = *(v15 - 8);
  v75 = v15;
  v16 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1CFC9C318();
  v20 = *(v19 - 1);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1CFC9C428();
  if (v24 >> 62)
  {
    v73 = v24;
    v25 = sub_1CFC9FFD8();
  }

  else
  {
    v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v25 == 1)
  {
    v73 = sub_1CFC9C3D8();
    v27 = v26;
  }

  else
  {
    v73 = 0;
    v27 = 0;
  }

  sub_1CFC9C3B8();
  v28 = (*(v20 + 88))(v23, v19);
  if (v28 == *MEMORY[0x1E6993648])
  {

    (*(v20 + 96))(v23, v19);
    v29 = *v23;
    goto LABEL_10;
  }

  if (v28 == *MEMORY[0x1E6993650])
  {

    (*(v20 + 96))(v23, v19);
    v29 = *v23;
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF488, &qword_1CFCA6F70);
    (*(v74 + 8))(&v23[*(v30 + 48)], v75);
    goto LABEL_10;
  }

  if (v28 == *MEMORY[0x1E6993678])
  {
    (*(v20 + 96))(v23, v19);
    v34 = *v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF480, &unk_1CFCA6F60);
    v47 = *(v1 + 72);
    v33 = (*(v1 + 80) + 32) & ~*(v1 + 80);
    v1 = swift_allocObject();
    v48 = sub_1CFC9D5F8();
    if (v48)
    {
      v49 = v48;
      v50 = v27;
      v51 = v49;
      sub_1CFC4BDB0(v49, v73, v50);
      v53 = v77;
      v52 = v78;
      (*(v78 + 56))(v1 + v33, 0, 1, v77);
    }

    else
    {

      v53 = v77;
      v52 = v78;
      (*(v78 + 56))(v1 + v33, 1, 1, v77);
    }

    sub_1CFBA29FC(v1 + v33, v7, &qword_1EC4EF478, &qword_1CFCA6F58);
    sub_1CFBCCE88(v7, v5, &qword_1EC4EF478, &qword_1CFCA6F58);
    if ((*(v52 + 48))(v5, 1, v53) == 1)
    {
      sub_1CFBC2FB0(v5, &qword_1EC4EF478, &qword_1CFCA6F58);
      v19 = MEMORY[0x1E69E7CC0];
LABEL_39:

      swift_setDeallocating();
      sub_1CFBC2FB0(v1 + v33, &qword_1EC4EF478, &qword_1CFCA6F58);
      swift_deallocClassInstance();
      return v19;
    }

    v23 = *(v52 + 32);
    (v23)(v13, v5, v53);
    v19 = MEMORY[0x1E69E7CC0];
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_36:
      v59 = v19[2];
      v58 = v19[3];
      if (v59 >= v58 >> 1)
      {
        v19 = sub_1CFBB6DB4(v58 > 1, v59 + 1, 1, v19);
      }

      v19[2] = v59 + 1;
      (v23)(v19 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v59, v13, v77);
      goto LABEL_39;
    }

LABEL_61:
    v19 = sub_1CFBB6DB4(0, v19[2] + 1, 1, v19);
    goto LABEL_36;
  }

  if (v28 == *MEMORY[0x1E6993660])
  {

    (*(v20 + 96))(v23, v19);
    v29 = *v23;

LABEL_10:
    v31 = [v29 remoteMembers];

    sub_1CFBA2D80(0, &qword_1EC4ED538, 0x1E69D8B80);
    sub_1CFC4CE54(&qword_1EC4EEAC8, &qword_1EC4ED538, 0x1E69D8B80);
    v32 = sub_1CFC9F9D8();

    v13 = sub_1CFC4AEA8(v32);

    if (v13 >> 62)
    {
      v33 = sub_1CFC9FFD8();
      if (v33)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v33 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v33)
      {
LABEL_12:
        v79 = MEMORY[0x1E69E7CC0];
        v34 = &v79;
        sub_1CFBCAAAC(0, v33 & ~(v33 >> 63), 0);
        if ((v33 & 0x8000000000000000) == 0)
        {
          v35 = 0;
          v19 = v79;
          v73 = v78 + 32;
          v74 = v13 & 0xC000000000000001;
          v72 = xmmword_1CFCA1DD0;
          v75 = v13;
          do
          {
            if (v74)
            {
              v36 = MEMORY[0x1D3872640](v35, v13);
            }

            else
            {
              v36 = *(v13 + 8 * v35 + 32);
            }

            v37 = v36;
            v38 = [v36 siriDisplayName];
            if (!v38)
            {
              v38 = [v37 value];
            }

            sub_1CFC9F768();

            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ED0E0, &qword_1CFCA1FF0);
            inited = swift_initStackObject();
            *(inited + 16) = v72;
            v40 = [v37 value];
            v41 = sub_1CFC9F768();
            v43 = v42;

            *(inited + 32) = v41;
            *(inited + 40) = v43;
            sub_1CFBB6864(inited);
            swift_setDeallocating();
            sub_1CFBB6A98(inited + 32);
            v44 = v76;
            sub_1CFC9D7D8();

            v79 = v19;
            v46 = v19[2];
            v45 = v19[3];
            if (v46 >= v45 >> 1)
            {
              sub_1CFBCAAAC(v45 > 1, v46 + 1, 1);
              v19 = v79;
            }

            ++v35;
            v19[2] = v46 + 1;
            (*(v78 + 32))(v19 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v46, v44, v77);
            v13 = v75;
          }

          while (v33 != v35);

          return v19;
        }

        __break(1u);
        goto LABEL_61;
      }
    }

    goto LABEL_57;
  }

  if (v28 == *MEMORY[0x1E6993670])
  {
    v54 = v27;
    (*(v20 + 96))(v23, v19);
    v55 = *v23;
    goto LABEL_30;
  }

  if (v28 == *MEMORY[0x1E6993680])
  {
    v60 = v27;
    (*(v20 + 96))(v23, v19);
    v61 = *v23;
    v62 = [*v23 remoteParticipantHandles];
    if (v62)
    {
      v63 = v62;
      sub_1CFBA2D80(0, &unk_1EE04CF18, 0x1E6993578);
      sub_1CFC4CE54(&qword_1EE04CF10, &unk_1EE04CF18, 0x1E6993578);
      v64 = sub_1CFC9F9D8();

      v19 = sub_1CFC4C884(v64, v73, v60);
    }

    else
    {

      v19 = MEMORY[0x1E69E7CC0];
    }

    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF490, &qword_1CFCA6F78);
    (*(v74 + 8))(&v23[*(v68 + 48)], v75);
    return v19;
  }

  if (v28 == *MEMORY[0x1E6993658])
  {
    v54 = v27;
    (*(v20 + 96))(v23, v19);
    v55 = *v23;

LABEL_30:
    v56 = [v55 remoteParticipantHandles];

    if (v56)
    {
      sub_1CFBA2D80(0, &unk_1EE04CF18, 0x1E6993578);
      sub_1CFC4CE54(&qword_1EE04CF10, &unk_1EE04CF18, 0x1E6993578);
      v57 = sub_1CFC9F9D8();

      v19 = sub_1CFC4C884(v57, v73, v54);

      swift_bridgeObjectRelease_n();
      return v19;
    }

LABEL_57:

    return MEMORY[0x1E69E7CC0];
  }

  if (v28 != *MEMORY[0x1E6993668])
  {
    v69 = *MEMORY[0x1E6993640];
    v70 = v28;

    if (v70 != v69)
    {
      (*(v20 + 8))(v23, v19);
    }

    return MEMORY[0x1E69E7CC0];
  }

  (*(v20 + 96))(v23, v19);
  v66 = v74;
  v65 = v75;
  (*(v74 + 32))(v18, v23, v75);
  v67 = sub_1CFC9C678();
  if (!v67)
  {
    if (MEMORY[0x1E69E7CC0] >> 62)
    {
      if (sub_1CFC9FFD8())
      {
        sub_1CFC72CB4(MEMORY[0x1E69E7CC0]);
      }

      else
      {
        v67 = MEMORY[0x1E69E7CD0];
      }

      v66 = v74;
      v65 = v75;
    }

    else
    {
      v67 = MEMORY[0x1E69E7CD0];
    }
  }

  v19 = sub_1CFC4A974(v67);

  (*(v66 + 8))(v18, v65);
  return v19;
}

unint64_t sub_1CFBB67C4()
{
  result = qword_1EE04EBA0;
  if (!qword_1EE04EBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04EBA0);
  }

  return result;
}

uint64_t sub_1CFBB6824()
{
  v0 = type metadata accessor for ObservableLayoutManager();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1CFBB6B94();
  qword_1EE052300 = result;
  return result;
}

uint64_t sub_1CFBB6864(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EFE00, &unk_1CFCA8350);
    v3 = sub_1CFCA00B8();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_1CFCA0338();

      sub_1CFC9F7C8();
      result = sub_1CFCA0378();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = sub_1CFCA02B8();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t sub_1CFBB69CC()
{
  v0 = sub_1CFC9D938();
  __swift_allocate_value_buffer(v0, qword_1EE04D618);
  __swift_project_value_buffer(v0, qword_1EE04D618);
  return sub_1CFC9D928();
}

uint64_t type metadata accessor for ObservableLayoutManager()
{
  result = qword_1EE04F6D8;
  if (!qword_1EE04F6D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CFBB6AEC()
{
  result = sub_1CFC9C198();
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

uint64_t sub_1CFBB6B94()
{
  v1 = objc_opt_self();
  v2 = [v1 shared];
  v3 = [v2 current];

  *(v0 + 16) = v3;
  v4 = [v1 shared];
  LOBYTE(v3) = [v4 tapRecentsToCall];

  *(v0 + 24) = v3;
  sub_1CFC9C188();
  v5 = [v1 shared];
  v6 = swift_allocObject();
  swift_weakInit();
  v10[4] = sub_1CFBB6F18;
  v10[5] = v6;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1CFBA296C;
  v10[3] = &block_descriptor_4;
  v7 = _Block_copy(v10);

  [v5 addObserver:v0 onUpdate:v7];
  _Block_release(v7);

  v8 = [objc_opt_self() defaultCenter];
  [v8 addObserver:v0 selector:sel_update name:*MEMORY[0x1E69DDBC0] object:0];

  return v0;
}

uint64_t sub_1CFBB6D7C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

unint64_t sub_1CFBB6E30()
{
  result = qword_1EE04D538;
  if (!qword_1EE04D538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EE200, &qword_1CFCA8720);
    sub_1CFC00928(qword_1EE04FC30, type metadata accessor for RecentsItemCell);
    sub_1CFBA57C0(&qword_1EE04D248, &qword_1EC4EE208, &unk_1CFCA87B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04D538);
  }

  return result;
}

uint64_t sub_1CFBB6F20()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1CFBB711C();
  }

  return result;
}

void sub_1CFBB6F78()
{
  sub_1CFBB50A8(319, &qword_1EE04D570, type metadata accessor for RecentsEditMode, MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_1CFC06FA8(319, &qword_1EE04D568, &type metadata for RecentCellAccessoryType, MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      sub_1CFBB50A8(319, &qword_1EE04D580, MEMORY[0x1E6995A00], MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        sub_1CFC9C448();
        if (v3 <= 0x3F)
        {
          sub_1CFBB02CC();
          if (v4 <= 0x3F)
          {
            sub_1CFBB73B0();
            if (v5 <= 0x3F)
            {
              sub_1CFC06FA8(319, &qword_1EE04FFC0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
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

void sub_1CFBB711C()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = [v2 shared];
  v4 = [v3 current];

  if (*(v1 + 16) != v4)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1CFBB7358();
    sub_1CFC9C148();
  }

  v6 = [v2 shared];
  v7 = [v6 tapRecentsToCall];

  if (v7 == *(v1 + 24))
  {
    *(v1 + 24) = v7;
  }

  else
  {
    v8 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v8);
    sub_1CFBB7358();
    sub_1CFC9C148();
  }
}

unint64_t sub_1CFBB7358()
{
  result = qword_1EE04F6E8;
  if (!qword_1EE04F6E8)
  {
    type metadata accessor for ObservableLayoutManager();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04F6E8);
  }

  return result;
}

unint64_t sub_1CFBB73B0()
{
  result = qword_1EE04D648;
  if (!qword_1EE04D648)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE04D648);
  }

  return result;
}

uint64_t sub_1CFBB7418(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1CFBB7460()
{
  result = qword_1EE04D1A8;
  if (!qword_1EE04D1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04D1A8);
  }

  return result;
}

uint64_t sub_1CFBB74B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CFBB74FC(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1CFBB44C0(result, a2, a3 & 1);
  }

  return result;
}

void sub_1CFBB7540()
{
  sub_1CFC9C448();
  if (v0 <= 0x3F)
  {
    sub_1CFBC2ED4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1CFBB75CC()
{
  result = qword_1EE04D540;
  if (!qword_1EE04D540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EE308, &qword_1CFCA3F48);
    sub_1CFC06190(&qword_1EE04D640, MEMORY[0x1E6995CC8]);
    sub_1CFBA57C0(&qword_1EE04FFD8, &qword_1EC4EE2C0, &qword_1CFCA3F00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04D540);
  }

  return result;
}

unint64_t sub_1CFBB76B4()
{
  result = qword_1EE04D208;
  if (!qword_1EE04D208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4ED7C0, &qword_1CFCA3EB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04D208);
  }

  return result;
}

void sub_1CFBB7780(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for RecentsItemCell(0) + 28);
  v4 = sub_1CFC9C408();
  if (v4 && (v5 = v4, sub_1CFC9D678(), v7 = v6, v5, v8 = [objc_opt_self() shared], v9 = objc_msgSend(v8, sel_current), v8, !v9))
  {
    v13 = [objc_allocWithZone(MEMORY[0x1E696AB70]) init];
    [v13 setAllowedUnits_];
    [v13 setZeroFormattingBehavior_];
    if (v7 >= 0.0)
    {
      v14 = 0;
    }

    else
    {
      v14 = 45;
    }

    v15 = 0xE000000000000000;
    if (v7 >= 0.0)
    {
      v16 = 0xE000000000000000;
    }

    else
    {
      v16 = 0xE100000000000000;
    }

    v17 = [v13 stringFromTimeInterval_];
    if (v17)
    {
      v18 = v17;
      v19 = sub_1CFC9F768();
      v15 = v20;
    }

    else
    {
      v19 = 0;
    }

    MEMORY[0x1D3871D30](v19, v15);

    v10 = v14;
    v11 = v16;
    v12 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
  }

  *a2 = v10;
  a2[1] = v11;
  a2[2] = 0;
  a2[3] = v12;
}

uint64_t sub_1CFBB791C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE360, &unk_1CFCA5700);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE368, &unk_1CFCA4040);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1CFBB7A64()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED0D8, &qword_1CFCA4220);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v24 - v3;
  v5 = sub_1CFC9C3D8();
  if (v6)
  {
    v7 = v5;
    v8 = v6;

    v9 = sub_1CFC9C408();
    if (!v9 || (v9, *(v0 + *(type metadata accessor for RecentsCellState() + 20)) == 1))
    {
      sub_1CFC9C418();
      v10 = sub_1CFC9CC18();
      v11 = *(v10 - 8);
      if ((*(v11 + 48))(v4, 1, v10) == 1)
      {
        sub_1CFBC2FB0(v4, &qword_1EC4ED0D8, &qword_1CFCA4220);
      }

      else
      {
        v13 = sub_1CFC9CBF8();
        (*(v11 + 8))(v4, v10);
        if (v13)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ED0E0, &qword_1CFCA1FF0);
          v14 = swift_allocObject();
          *(v14 + 16) = xmmword_1CFCA1DC0;
          *(v14 + 32) = v7;
          *(v14 + 40) = v8;
          type metadata accessor for BundleClass();
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          v16 = [objc_opt_self() bundleForClass_];
          v17 = sub_1CFC9BE28();
          v19 = v18;

          *(v14 + 48) = v17;
          *(v14 + 56) = v19;
          v25 = v14;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED0F0, &unk_1CFCA2000);
          sub_1CFBA57C0(&qword_1EE04D108, &qword_1EC4ED0F0, &unk_1CFCA2000);
          v20 = sub_1CFC9F6E8();
          v22 = v21;

LABEL_10:
          v25 = v20;
          v26 = v22;
          sub_1CFBB4460();
          v12 = sub_1CFC9ED88();

          return v12;
        }
      }
    }

    v20 = v7;
    v22 = v8;
    goto LABEL_10;
  }

  return 0;
}

uint64_t sub_1CFBB7D90(uint64_t a1)
{
  v2 = sub_1CFBB74B4(&unk_1EE04F9A8, type metadata accessor for RecentsCellState);

  return MEMORY[0x1EEDF6B58](a1, v2);
}

uint64_t sub_1CFBB7DFC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED0D8, &qword_1CFCA4220);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - v5;
  v7 = sub_1CFC9C408();
  if (!v7 || (v7, *(v1 + *(a1 + 20)) == 1))
  {
    sub_1CFC9C418();
    v8 = sub_1CFC9CC18();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(v6, 1, v8) != 1)
    {
      v10 = sub_1CFC9CBF8();
      (*(v9 + 8))(v6, v8);
      return v10 & 1;
    }

    sub_1CFBC2FB0(v6, &qword_1EC4ED0D8, &qword_1CFCA4220);
  }

  v10 = 0;
  return v10 & 1;
}

uint64_t sub_1CFBB7F3C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED0D8, &qword_1CFCA4220);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = v45 - v2;
  if (qword_1EC4ECFE0 != -1)
  {
    swift_once();
  }

  if (byte_1EC4ECFE8 != 1 || (result = sub_1CFC9C368(), !v5))
  {
    v6 = sub_1CFC9C398();
    if (v7)
    {
      v8 = v6;
      v9 = v7;
      type metadata accessor for BundleClass();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v11 = objc_opt_self();
      v12 = [v11 bundleForClass_];
      v13 = sub_1CFC9BE28();
      v15 = v14;

      v46 = v13;
      v47 = v15;

      MEMORY[0x1D3871D30](v8, v9);

      v17 = v46;
      v16 = v47;
      v18 = [v11 bundleForClass_];
      v19 = sub_1CFC9BE28();
      v21 = v20;

      v46 = v17;
      v47 = v16;

      MEMORY[0x1D3871D30](v19, v21);

      return v46;
    }

    else
    {
      v22 = sub_1CFC9C438();
      if (!v23)
      {
        return 0;
      }

      v24 = v23;
      v25 = v22;
      sub_1CFC9C418();
      v26 = sub_1CFC9CC18();
      v27 = *(v26 - 8);
      if ((*(v27 + 48))(v3, 1, v26) == 1)
      {
        sub_1CFBC2FB0(v3, &qword_1EC4ED0D8, &qword_1CFCA4220);
      }

      else
      {
        v28 = sub_1CFC9CBC8();
        (*(v27 + 8))(v3, v26);
        if (v28 >= 2)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ED0E0, &qword_1CFCA1FF0);
          v29 = swift_allocObject();
          *(v29 + 16) = xmmword_1CFCA1DC0;
          *(v29 + 32) = v25;
          *(v29 + 40) = v24;
          v30 = v24;
          type metadata accessor for BundleClass();
          v31 = swift_getObjCClassFromMetadata();
          v32 = objc_opt_self();

          v33 = [v32 bundleForClass_];
          sub_1CFC9BE28();

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF900, &qword_1CFCA1FF8);
          v34 = swift_allocObject();
          v35 = MEMORY[0x1E69E6530];
          *(v34 + 16) = xmmword_1CFCA1DD0;
          v36 = MEMORY[0x1E69E65A8];
          *(v34 + 56) = v35;
          *(v34 + 64) = v36;
          *(v34 + 32) = v28;
          v37 = sub_1CFC9F778();
          v39 = v38;

          *(v29 + 48) = v37;
          *(v29 + 56) = v39;
          v46 = v29;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED0F0, &unk_1CFCA2000);
          sub_1CFBA57C0(&qword_1EE04D108, &qword_1EC4ED0F0, &unk_1CFCA2000);
          v40 = sub_1CFC9F6E8();
          v42 = v41;

          v46 = v25;
          v47 = v30;
          MEMORY[0x1D3871D30](2662594, 0xA300000000000000);
          v45[1] = v28;
          v43 = sub_1CFCA0288();
          MEMORY[0x1D3871D30](v43);

          MEMORY[0x1D3871D30](41, 0xE100000000000000);
          v46 = v40;
          v47 = v42;
          sub_1CFBB4460();
          v44 = sub_1CFC9ED88();

          return v44;
        }
      }

      return v25;
    }
  }

  return result;
}