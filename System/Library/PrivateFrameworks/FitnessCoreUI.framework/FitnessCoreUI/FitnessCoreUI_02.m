uint64_t sub_20C3B7430(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000017 && 0x800000020C3F2D30 == a2 || (sub_20C3E93EC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x800000020C3F2D50 == a2 || (sub_20C3E93EC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x800000020C3F2D70 == a2 || (sub_20C3E93EC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x800000020C3F2D90 == a2 || (sub_20C3E93EC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E65646469487369 && a2 == 0xE800000000000000 || (sub_20C3E93EC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000 || (sub_20C3E93EC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6572726566657270 && a2 == 0xEE00656C79745364 || (sub_20C3E93EC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6D496D6574737973 && a2 == 0xEF656D614E656761 || (sub_20C3E93EC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000)
  {

    return 8;
  }

  else
  {
    v5 = sub_20C3E93EC();

    if (v5)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t DynamicTypeSize.init(_:)(uint64_t a1)
{
  v2 = sub_20C3E844C();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 88))(a1, v2);
  if (v4 == *MEMORY[0x277CDF9F8])
  {
    return 1;
  }

  if (v4 == *MEMORY[0x277CDF9E0])
  {
    return 2;
  }

  if (v4 == *MEMORY[0x277CDF9E8])
  {
    return 3;
  }

  if (v4 == *MEMORY[0x277CDF9D8])
  {
    return 4;
  }

  if (v4 == *MEMORY[0x277CDF9F0])
  {
    return 5;
  }

  if (v4 == *MEMORY[0x277CDFA00])
  {
    return 6;
  }

  if (v4 == *MEMORY[0x277CDFA10])
  {
    return 7;
  }

  if (v4 == *MEMORY[0x277CDF988])
  {
    return 8;
  }

  if (v4 == *MEMORY[0x277CDF998])
  {
    return 9;
  }

  if (v4 == *MEMORY[0x277CDF9A8])
  {
    return 10;
  }

  if (v4 == *MEMORY[0x277CDF9B8])
  {
    return 11;
  }

  if (v4 == *MEMORY[0x277CDF9D0])
  {
    return 12;
  }

  (*(v3 + 8))(a1, v2);
  return 0;
}

uint64_t static BarButtonItemFactory.systemItem(role:action:title:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v21[0] = a5;
  v21[1] = a6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7AD9C0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v21 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7AD9C8);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v21 - v15;
  v17 = sub_20C3E833C();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v12, a1, v17);
  (*(v18 + 56))(v12, 0, 1, v17);
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  v21[10] = a4;
  v21[11] = v21[0];

  sub_20C3E8A7C();
  sub_20C3E8B1C();
  v21[4] = a1;
  v21[5] = a2;
  v21[6] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7AD9D0);
  sub_20C3B7E80(&qword_27C7AD9D8, &qword_27C7AD9C8);
  sub_20C3B7E80(&unk_27C7AD9E0, &qword_27C7AD9D0);
  sub_20C3E89FC();
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_20C3B7C18@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X8>)
{
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v5 = a1(isCurrentExecutor);
  v7 = v6;
  v9 = v8;
  v11 = v10;

  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = v9 & 1;
  *(a2 + 24) = v11;
  return result;
}

uint64_t sub_20C3B7CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_20C3E833C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v8 + 16))(v10, a2, v7);
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;

  MEMORY[0x20F2F8EC0](v10, sub_20C3B7F98, v11);
}

uint64_t sub_20C3B7E80(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_20C3B7EE4(void (*a1)(uint64_t))
{
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  a1(isCurrentExecutor);
}

uint64_t sub_20C3B8044(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC13FitnessCoreUI16FloatingTabsView_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*sub_20C3B80B0(uint64_t *a1))()
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
  v5 = OBJC_IVAR____TtC13FitnessCoreUI16FloatingTabsView_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_20C3963E8;
}

uint64_t sub_20C3B8150(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC13FitnessCoreUI16FloatingTabsView_itemDescriptors;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t sub_20C3B8200(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13FitnessCoreUI16FloatingTabsView_itemDescriptors;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id FloatingTabsView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

uint64_t sub_20C3B8420()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return MEMORY[0x277D84F90];
  }

  v1 = Strong;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7ADAA8);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_20C3EBA20;
  v3 = *(*&v1[OBJC_IVAR____TtC13FitnessCoreUI16FloatingTabsView_tabsViewController] + OBJC_IVAR____TtC13FitnessCoreUI26FloatingTabsViewController_collectionView);
  *(v2 + 56) = sub_20C38BD08(0, &qword_2810F2120);
  *(v2 + 32) = v3;
  v4 = v3;

  return v2;
}

id sub_20C3B84F8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    v4 = sub_20C3E8D9C();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_20C3B8728(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v6 = OBJC_IVAR____TtC13FitnessCoreUI16FloatingTabsView_itemDescriptors;
  swift_beginAccess();
  *(v4 + v6) = a1;

  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = *(a1 + 96);
    v9 = *(a1 + 112);
    v10 = *(a1 + 64);
    v41 = *(a1 + 80);
    v42 = v8;
    v43 = v9;
    v11 = *(a1 + 48);
    v38 = *(a1 + 32);
    v12 = a1 + 32;
    v44 = *(a1 + 128);
    v39 = v11;
    v40 = v10;
    type metadata accessor for FloatingTabItemCell();
    v13 = objc_allocWithZone(swift_getObjCClassFromMetadata());

    sub_20C39AF38(&v38, v36);
    v14 = [v13 init];
    v36[4] = v42;
    v36[5] = v43;
    v36[0] = v38;
    v36[1] = v39;
    v37 = v44;
    v36[2] = v40;
    v36[3] = v41;
    sub_20C3CA2A8(v36);

    result = sub_20C39AF94(&v38);
    v16 = 0;
    v17 = MEMORY[0x277D84F90];
    v32 = a1 + 32;
    do
    {
      v18 = v12 + 104 * v16;
      v19 = v16;
      while (1)
      {
        if (v19 >= v7)
        {
          __break(1u);
LABEL_22:
          __break(1u);
          return result;
        }

        v20 = *(v18 + 64);
        v21 = *(v18 + 80);
        v22 = *(v18 + 32);
        v41 = *(v18 + 48);
        v42 = v20;
        v43 = v21;
        v23 = *(v18 + 16);
        v38 = *v18;
        v44 = *(v18 + 96);
        v39 = v23;
        v40 = v22;
        v16 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          goto LABEL_22;
        }

        sub_20C3E8E3C();
        sub_20C39AF38(&v38, v36);
        sub_20C3E8E2C();
        sub_20C3E8E1C();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        if ((v42 & 1) == 0)
        {
          break;
        }

        result = sub_20C39AF94(&v38);
        ++v19;
        v18 += 104;
        if (v16 == v7)
        {
          goto LABEL_18;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_20C3BA1F0(0, *(v17 + 16) + 1, 1);
      }

      v25 = *(v17 + 16);
      v24 = *(v17 + 24);
      if (v25 >= v24 >> 1)
      {
        result = sub_20C3BA1F0((v24 > 1), v25 + 1, 1);
      }

      *(v17 + 16) = v25 + 1;
      v26 = v17 + 104 * v25;
      v27 = v38;
      v28 = v40;
      *(v26 + 48) = v39;
      *(v26 + 64) = v28;
      *(v26 + 32) = v27;
      v29 = v41;
      v30 = v42;
      v31 = v43;
      *(v26 + 128) = v44;
      *(v26 + 96) = v30;
      *(v26 + 112) = v31;
      *(v26 + 80) = v29;
      v12 = v32;
    }

    while (v16 != v7);
  }

  else
  {

    v17 = MEMORY[0x277D84F90];
  }

LABEL_18:
  LOBYTE(v38) = 0;
  sub_20C3D248C(v17, &v38, a4 & 1);

  if ((a3 & 1) == 0)
  {
    return sub_20C3D2D14(a2, a4 & 1);
  }

  return result;
}

id FloatingTabsView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FloatingTabsView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void __swiftcall FloatingTabsView.animationAnchorView()(UIView_optional *__return_ptr retstr)
{
  v2 = [v1 superview];

  v3 = v2;
}

id sub_20C3B8B10()
{
  v1 = [v0 superview];

  return v1;
}

Swift::Int_optional __swiftcall FloatingTabsView.selectedIndexForExpansion()()
{
  v1 = OBJC_IVAR____TtC13FitnessCoreUI16FloatingTabsView_itemDescriptors;
  swift_beginAccess();
  v37 = v1;
  v2 = *(v0 + v1);
  v3 = *(v2 + 16);

  if (v3)
  {
    v6 = 0;
    v7 = v2 + 32;
    v8 = MEMORY[0x277D84F90];
    do
    {
      v9 = (v7 + 104 * v6);
      v10 = v6;
      while (1)
      {
        if (v10 >= *(v2 + 16))
        {
          __break(1u);
          goto LABEL_28;
        }

        v11 = *v9;
        v12 = v9[2];
        v41 = v9[1];
        v42 = v12;
        v40 = v11;
        v13 = v9[3];
        v14 = v9[4];
        v15 = v9[5];
        v46 = *(v9 + 12);
        v44 = v14;
        v45 = v15;
        v43 = v13;
        sub_20C3E8E3C();
        sub_20C39AF38(&v40, v38);
        sub_20C3E8E2C();
        sub_20C3E8E1C();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        if ((v44 & 1) == 0)
        {
          break;
        }

        ++v10;
        isUniquelyReferenced_nonNull_native = sub_20C39AF94(&v40);
        v9 = (v9 + 104);
        if (v3 == v10)
        {
          goto LABEL_17;
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v39 = v8;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_20C3BA1F0(0, *(v8 + 16) + 1, 1);
        v8 = v39;
      }

      v17 = *(v8 + 16);
      v16 = *(v8 + 24);
      if (v17 >= v16 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_20C3BA1F0((v16 > 1), v17 + 1, 1);
        v8 = v39;
      }

      v6 = v10 + 1;
      *(v8 + 16) = v17 + 1;
      v18 = v8 + 104 * v17;
      v19 = v40;
      v20 = v42;
      *(v18 + 48) = v41;
      *(v18 + 64) = v20;
      *(v18 + 32) = v19;
      v21 = v43;
      v22 = v44;
      v23 = v45;
      *(v18 + 128) = v46;
      *(v18 + 96) = v22;
      *(v18 + 112) = v23;
      *(v18 + 80) = v21;
      v7 = v2 + 32;
    }

    while (v3 - 1 != v10);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

LABEL_17:

  v24 = *(v0 + OBJC_IVAR____TtC13FitnessCoreUI16FloatingTabsView_tabsViewController) + OBJC_IVAR____TtC13FitnessCoreUI26FloatingTabsViewController_selectedIndex;
  if (*(v24 + 8))
  {
    v25 = 0;
  }

  else
  {
    v25 = *v24;
  }

  v26 = *(v8 + 16);
  if (v25 < v26)
  {
    if (v25 < 0)
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v27 = v8 + 104 * v25;
    v28 = *(v27 + 32);
    v29 = *(v27 + 64);
    v41 = *(v27 + 48);
    v42 = v29;
    v40 = v28;
    v30 = *(v27 + 80);
    v31 = *(v27 + 96);
    v32 = *(v27 + 112);
    v46 = *(v27 + 128);
    v44 = v31;
    v45 = v32;
    v43 = v30;
    sub_20C39AF38(&v40, v38);

    v33 = *(v0 + v37);

    v34 = sub_20C3AA6FC(&v40, v33);
    v36 = v35;

    sub_20C39AF94(&v40);
    if (v36)
    {
      isUniquelyReferenced_nonNull_native = 0;
    }

    else
    {
      isUniquelyReferenced_nonNull_native = v34;
    }
  }

  else
  {

    isUniquelyReferenced_nonNull_native = 0;
  }

  v5 = v25 >= v26;
LABEL_29:
  result.value = isUniquelyReferenced_nonNull_native;
  result.is_nil = v5;
  return result;
}

Swift::Void __swiftcall FloatingTabsView.updateSearchBarPlaceholder(_:)(Swift::String_optional a1)
{
  v2 = *(*(v1 + OBJC_IVAR____TtC13FitnessCoreUI16FloatingTabsView_tabsViewController) + OBJC_IVAR____TtC13FitnessCoreUI26FloatingTabsViewController_searchBar);
  if (a1.value._object)
  {
    v3 = sub_20C3E8BFC();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setPlaceholder_];
}

uint64_t (*sub_20C3B8F24(uint64_t *a1))()
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
  v5 = OBJC_IVAR____TtC13FitnessCoreUI16FloatingTabsView_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_20C39B0E8;
}

void sub_20C3B90B8(uint64_t a1, uint64_t a2)
{
  v3 = *(*(v2 + OBJC_IVAR____TtC13FitnessCoreUI16FloatingTabsView_tabsViewController) + OBJC_IVAR____TtC13FitnessCoreUI26FloatingTabsViewController_searchBar);
  if (a2)
  {
    v4 = sub_20C3E8BFC();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [v3 setPlaceholder_];
}

void FloatingTabsView.collectionView(_:didSelectItemAt:)(void *a1, void *a2)
{
  v63 = a2;
  v60 = a1;
  v57 = sub_20C3E809C();
  v56 = *(v57 - 8);
  v3 = MEMORY[0x28223BE20](v57);
  v54 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v55 = &v53 - v5;
  v6 = OBJC_IVAR____TtC13FitnessCoreUI16FloatingTabsView_itemDescriptors;
  swift_beginAccess();
  v62 = v2;
  v61 = v6;
  v7 = *(v2 + v6);
  v8 = *(v7 + 16);

  if (v8)
  {
    v9 = 0;
    v10 = v7 + 32;
    v11 = MEMORY[0x277D84F90];
    v58 = v8 - 1;
    v59 = v7 + 32;
    do
    {
      v12 = (v10 + 104 * v9);
      v13 = v9;
      while (1)
      {
        if (v13 >= *(v7 + 16))
        {
          __break(1u);
          goto LABEL_30;
        }

        v14 = *v12;
        v15 = v12[2];
        v67 = v12[1];
        v68 = v15;
        v66 = v14;
        v16 = v12[3];
        v17 = v12[4];
        v18 = v12[5];
        v72 = *(v12 + 12);
        v70 = v17;
        v71 = v18;
        v69 = v16;
        sub_20C3E8E3C();
        sub_20C39AF38(&v66, v64);
        sub_20C3E8E2C();
        sub_20C3E8E1C();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        if ((v70 & 1) == 0)
        {
          break;
        }

        ++v13;
        sub_20C39AF94(&v66);
        v12 = (v12 + 104);
        if (v8 == v13)
        {
          goto LABEL_17;
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v65 = v11;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_20C3BA1F0(0, *(v11 + 16) + 1, 1);
        v11 = v65;
      }

      v21 = *(v11 + 16);
      v20 = *(v11 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_20C3BA1F0((v20 > 1), v21 + 1, 1);
        v11 = v65;
      }

      v9 = v13 + 1;
      *(v11 + 16) = v21 + 1;
      v22 = v11 + 104 * v21;
      v23 = v66;
      v24 = v68;
      *(v22 + 48) = v67;
      *(v22 + 64) = v24;
      *(v22 + 32) = v23;
      v25 = v69;
      v26 = v70;
      v27 = v71;
      *(v22 + 128) = v72;
      *(v22 + 96) = v26;
      *(v22 + 112) = v27;
      *(v22 + 80) = v25;
      v10 = v59;
    }

    while (v58 != v13);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

LABEL_17:

  v28 = v63;
  v29 = sub_20C3E807C();
  if ((v29 & 0x8000000000000000) != 0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v29 >= *(v11 + 16))
  {
LABEL_31:
    __break(1u);
    return;
  }

  v30 = v11 + 104 * v29;
  v31 = *(v30 + 32);
  v32 = *(v30 + 64);
  v67 = *(v30 + 48);
  v68 = v32;
  v66 = v31;
  v33 = *(v30 + 80);
  v34 = *(v30 + 96);
  v35 = *(v30 + 112);
  v72 = *(v30 + 128);
  v70 = v34;
  v71 = v35;
  v69 = v33;
  sub_20C39AF38(&v66, v64);

  v36 = v62;
  v37 = *(v62 + v61);

  v38 = sub_20C3AA6FC(&v66, v37);
  v40 = v39;

  sub_20C39AF94(&v66);
  if ((v40 & 1) == 0)
  {
    if (BYTE1(v70) == 2)
    {
      v41 = v60;
      v42 = [v60 indexPathsForSelectedItems];
      if (v42)
      {
        v43 = v42;
        v44 = v57;
        v45 = sub_20C3E8DAC();

        if (*(v45 + 16))
        {
          v46 = v56;
          v47 = v54;
          (*(v56 + 16))(v54, v45 + ((*(v46 + 80) + 32) & ~*(v46 + 80)), v44);

          v48 = v55;
          (*(v46 + 32))(v55, v47, v44);
          v49 = sub_20C3E804C();
          [v41 deselectItemAtIndexPath:v49 animated:1];

          (*(v46 + 8))(v48, v44);
        }

        else
        {
        }
      }

      FloatingTabsViewController.transitionToSearch(indexPath:completion:)(v28, 0, 0);
    }

    else
    {
      v50 = v36 + OBJC_IVAR____TtC13FitnessCoreUI16FloatingTabsView_delegate;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v51 = *(v50 + 8);
        ObjectType = swift_getObjectType();
        (*(v51 + 24))(v36, &protocol witness table for FloatingTabsView, v38, ObjectType, v51);
        swift_unknownObjectRelease();
      }
    }
  }
}

unint64_t FloatingTabsView.collectionView(_:shouldSelectItemAt:)(void *a1, void *a2)
{
  v64 = a2;
  v61 = a1;
  v58 = sub_20C3E809C();
  v57 = *(v58 - 8);
  v3 = MEMORY[0x28223BE20](v58);
  v55 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v56 = &v54 - v5;
  v6 = OBJC_IVAR____TtC13FitnessCoreUI16FloatingTabsView_itemDescriptors;
  swift_beginAccess();
  v63 = v2;
  v62 = v6;
  v7 = *&v2[v6];
  v8 = *(v7 + 16);

  if (v8)
  {
    v10 = 0;
    v11 = v7 + 32;
    v12 = MEMORY[0x277D84F90];
    v59 = v8 - 1;
    v60 = v7 + 32;
    do
    {
      v13 = (v11 + 104 * v10);
      v14 = v10;
      while (1)
      {
        if (v14 >= *(v7 + 16))
        {
          __break(1u);
          goto LABEL_32;
        }

        v15 = *v13;
        v16 = v13[2];
        v68 = v13[1];
        v69 = v16;
        v67 = v15;
        v17 = v13[3];
        v18 = v13[4];
        v19 = v13[5];
        v73 = *(v13 + 12);
        v71 = v18;
        v72 = v19;
        v70 = v17;
        sub_20C3E8E3C();
        sub_20C39AF38(&v67, v65);
        sub_20C3E8E2C();
        sub_20C3E8E1C();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        if ((v71 & 1) == 0)
        {
          break;
        }

        ++v14;
        result = sub_20C39AF94(&v67);
        v13 = (v13 + 104);
        if (v8 == v14)
        {
          goto LABEL_17;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v66 = v12;
      if ((result & 1) == 0)
      {
        result = sub_20C3BA1F0(0, *(v12 + 16) + 1, 1);
        v12 = v66;
      }

      v21 = *(v12 + 16);
      v20 = *(v12 + 24);
      if (v21 >= v20 >> 1)
      {
        result = sub_20C3BA1F0((v20 > 1), v21 + 1, 1);
        v12 = v66;
      }

      v10 = v14 + 1;
      *(v12 + 16) = v21 + 1;
      v22 = v12 + 104 * v21;
      v23 = v67;
      v24 = v69;
      *(v22 + 48) = v68;
      *(v22 + 64) = v24;
      *(v22 + 32) = v23;
      v25 = v70;
      v26 = v71;
      v27 = v72;
      *(v22 + 128) = v73;
      *(v22 + 96) = v26;
      *(v22 + 112) = v27;
      *(v22 + 80) = v25;
      v11 = v60;
    }

    while (v59 != v14);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

LABEL_17:

  v28 = v64;
  result = sub_20C3E807C();
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (result >= *(v12 + 16))
  {
LABEL_33:
    __break(1u);
    return result;
  }

  v29 = v12 + 104 * result;
  v30 = *(v29 + 32);
  v31 = *(v29 + 64);
  v68 = *(v29 + 48);
  v69 = v31;
  v67 = v30;
  v32 = *(v29 + 80);
  v33 = *(v29 + 96);
  v34 = *(v29 + 112);
  v73 = *(v29 + 128);
  v71 = v33;
  v72 = v34;
  v70 = v32;
  sub_20C39AF38(&v67, v65);

  v35 = v63;
  v36 = *&v63[v62];

  v37 = sub_20C3AA6FC(&v67, v36);
  v39 = v38;

  sub_20C39AF94(&v67);
  if (v39)
  {
    return 0;
  }

  if (BYTE1(v71) == 2)
  {
    v40 = v61;
    v41 = [v61 indexPathsForSelectedItems];
    if (v41)
    {
      v42 = v41;
      v43 = v58;
      v44 = sub_20C3E8DAC();

      if (*(v44 + 16))
      {
        v45 = v57;
        v46 = v55;
        (*(v57 + 16))(v55, v44 + ((*(v45 + 80) + 32) & ~*(v45 + 80)), v43);

        v47 = v56;
        (*(v45 + 32))(v56, v46, v43);
        v48 = sub_20C3E804C();
        [v40 deselectItemAtIndexPath:v48 animated:1];

        (*(v45 + 8))(v47, v43);
      }

      else
      {
      }
    }

    v52 = swift_allocObject();
    *(v52 + 16) = v35;
    *(v52 + 24) = v37;
    v53 = v35;
    FloatingTabsViewController.transitionToSearch(indexPath:completion:)(v28, sub_20C3BADC4, v52);

    return 0;
  }

  result = BYTE1(v71) != 0;
  if (!BYTE1(v71))
  {
    v49 = &v35[OBJC_IVAR____TtC13FitnessCoreUI16FloatingTabsView_delegate];
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v50 = *(v49 + 1);
      ObjectType = swift_getObjectType();
      (*(v50 + 8))(v35, &protocol witness table for FloatingTabsView, v37, ObjectType, v50);
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

uint64_t sub_20C3B9F24(uint64_t a1, uint64_t a2)
{
  v4 = a1 + OBJC_IVAR____TtC13FitnessCoreUI16FloatingTabsView_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    (*(v6 + 24))(a1, &protocol witness table for FloatingTabsView, a2, ObjectType, v6);
    return swift_unknownObjectRelease();
  }

  return result;
}

char *sub_20C3BA150(char *a1, int64_t a2, char a3)
{
  result = sub_20C3BA210(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_20C3BA170(char *a1, int64_t a2, char a3)
{
  result = sub_20C3BA32C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_20C3BA190(char *a1, int64_t a2, char a3)
{
  result = sub_20C3BA430(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_20C3BA1B0(char *a1, int64_t a2, char a3)
{
  result = sub_20C3BA534(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_20C3BA1D0(char *a1, int64_t a2, char a3)
{
  result = sub_20C3BA660(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_20C3BA1F0(char *a1, int64_t a2, char a3)
{
  result = sub_20C3BA788(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_20C3BA210(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7ADAD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 48 * v8);
  }

  return v10;
}

char *sub_20C3BA32C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7ADAC0);
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
    v10 = MEMORY[0x277D84F90];
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
    memcpy(v13, v14, v8 << 6);
  }

  return v10;
}

char *sub_20C3BA430(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7ADAC8);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_20C3BA534(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7ADAB8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 168);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[168 * v8])
    {
      memmove(v12, v13, 168 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_20C3BA660(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7ADA88);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[104 * v8])
    {
      memmove(v12, v13, 104 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_20C3BA788(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7ADAA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[104 * v8])
    {
      memmove(v12, v13, 104 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_20C3BA8B0(uint64_t a1)
{
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = [*(*(a1 + OBJC_IVAR____TtC13FitnessCoreUI16FloatingTabsView_tabsViewController) + OBJC_IVAR____TtC13FitnessCoreUI26FloatingTabsViewController_collectionView) collectionViewLayout];
  [v2 invalidateLayout];
}

void sub_20C3BA994()
{
  *(v0 + OBJC_IVAR____TtC13FitnessCoreUI16FloatingTabsView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC13FitnessCoreUI16FloatingTabsView_itemDescriptors) = MEMORY[0x277D84F90];
  v1 = v0 + OBJC_IVAR____TtC13FitnessCoreUI16FloatingTabsView_selectedIndex;
  *v1 = 0;
  *(v1 + 8) = 1;
  v2 = (v0 + OBJC_IVAR____TtC13FitnessCoreUI16FloatingTabsView_layout);
  *v2 = xmmword_20C3EDB50;
  v2[1] = xmmword_20C3EDB60;
  v3 = OBJC_IVAR____TtC13FitnessCoreUI16FloatingTabsView_sizingCell;
  type metadata accessor for FloatingTabItemCell();
  *(v0 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = OBJC_IVAR____TtC13FitnessCoreUI16FloatingTabsView_tabsViewController;
  type metadata accessor for FloatingTabsViewController();
  *(v0 + v4) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_20C3E921C();
  __break(1u);
}

uint64_t sub_20C3BAAA8(void *a1)
{
  v2 = v1;
  if ([a1 dataSource])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7AD770);
    if (swift_dynamicCastClass())
    {
      sub_20C3E825C();
      v4 = v22;
      v3 = v23;
      v32 = v26;
      v33 = v27;
      v34 = v28;
      v35 = v29;
      v30 = v24;
      v31 = v25;
      if (v23)
      {
        v5 = *&v1[OBJC_IVAR____TtC13FitnessCoreUI16FloatingTabsView_sizingCell];
        v6 = [v2 traitCollection];
        v7 = OBJC_IVAR____TtC13FitnessCoreUI19FloatingTabItemCell_sizingTraitCollection;
        swift_beginAccess();
        v8 = *&v5[v7];
        *&v5[v7] = v6;

        [v5 prepareForReuse];
        *&v13 = v4;
        *(&v13 + 1) = v3;
        v16 = v32;
        v17 = v33;
        v18 = v34;
        v19 = v35;
        v14 = v30;
        v15 = v31;
        sub_20C3CA2A8(&v13);
        v20[4] = v17;
        v20[5] = v18;
        v21 = v19;
        v20[0] = v13;
        v20[1] = v14;
        v20[2] = v15;
        v20[3] = v16;
        sub_20C39AF94(v20);
        LODWORD(v9) = 1112014848;
        LODWORD(v10) = 1112014848;
        [v5 systemLayoutSizeFittingSize:*MEMORY[0x277D76C78] withHorizontalFittingPriority:*(MEMORY[0x277D76C78] + 8) verticalFittingPriority:{v9, v10}];
        swift_unknownObjectRelease();
        return swift_beginAccess();
      }

      v22 = 0;
      v23 = 0xE000000000000000;
      sub_20C3E90FC();
      MEMORY[0x20F2F90D0](0xD000000000000040, 0x800000020C3F35D0);
      sub_20C3E809C();
      sub_20C3BAF64(&qword_27C7ADA98, MEMORY[0x277CC9AF8]);
      v12 = sub_20C3E93BC();
      MEMORY[0x20F2F90D0](v12);
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  result = sub_20C3E921C();
  __break(1u);
  return result;
}

uint64_t sub_20C3BAF64(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20C3BAFB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7ADBA0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

unint64_t sub_20C3BB03C()
{
  result = qword_2810F2630;
  if (!qword_2810F2630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810F2630);
  }

  return result;
}

unint64_t sub_20C3BB0BC()
{
  result = qword_2810F2168;
  if (!qword_2810F2168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7ADBA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810F2168);
  }

  return result;
}

uint64_t sub_20C3BB178(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7ADBA8);
  v67 = a2;
  v6 = sub_20C3E927C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v65 = (v5 + 64);
    v66 = v5;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 64);
    v64 = (v9 + 63) >> 6;
    v12 = v6 + 64;
    while (v11)
    {
      v20 = __clz(__rbit64(v11));
      v21 = (v11 - 1) & v11;
LABEL_15:
      v25 = v20 | (v8 << 6);
      v72 = v21;
      v26 = *(v5 + 48) + 104 * v25;
      if (v67)
      {
        v27 = *v26;
        v28 = *(v26 + 8);
        v30 = *(v26 + 16);
        v29 = *(v26 + 32);
        v31 = *(v26 + 48);
        v32 = *(v26 + 64);
        v33 = *(v26 + 65);
        v34 = *(v26 + 66);
        v35 = *(v26 + 72);
        v37 = *(v26 + 88);
        v36 = *(v26 + 96);
        v38 = *(v5 + 56) + 48 * v25;
        v70 = *v38;
        v71 = *(v38 + 16);
        v39 = *(v38 + 32);
        v40 = *(v38 + 40);
      }

      else
      {
        v41 = *(v26 + 48);
        v42 = *(v26 + 64);
        v43 = *(v26 + 80);
        v87 = *(v26 + 96);
        v44 = v87;
        *v86 = v42;
        *&v86[16] = v43;
        v85 = v41;
        v45 = *v26;
        v46 = *(v26 + 16);
        v84 = *(v26 + 32);
        v82 = v45;
        v83 = v46;
        v47 = *(v5 + 56) + 48 * v25;
        v70 = *v47;
        v71 = *(v47 + 16);
        v39 = *(v47 + 32);
        v40 = *(v47 + 40);
        v68 = *(&v43 + 1);
        v48 = v86[2];
        v49 = v86[1];
        v50 = v7;
        v51 = v86[0];
        v77 = v85;
        v79 = *&v86[8];
        v73 = v46;
        v75 = v84;
        v28 = *(&v45 + 1);
        v27 = v45;
        sub_20C39AF38(&v82, v81);
        v30 = v73;
        v29 = v75;
        v31 = v77;
        v35 = v79;
        v36 = v44;
        v37 = v68;
        v34 = v48;
        v32 = v51;
        v7 = v50;
        v33 = v49;
      }

      *&v82 = v27;
      *(&v82 + 1) = v28;
      v74 = v30;
      v76 = v29;
      v83 = v30;
      v84 = v29;
      v85 = v31;
      v78 = v31;
      v80 = v35;
      v69 = v32;
      v86[0] = v32;
      v52 = v33;
      v86[1] = v33;
      v53 = v34;
      v86[2] = v34;
      *&v86[8] = v35;
      v54 = v37;
      *&v86[24] = v37;
      v87 = v36;
      v55 = v36;
      sub_20C3E94BC();
      TabItemDescriptor.hash(into:)();
      result = sub_20C3E950C();
      v56 = -1 << *(v7 + 32);
      v57 = result & ~v56;
      v58 = v57 >> 6;
      if (((-1 << v57) & ~*(v12 + 8 * (v57 >> 6))) == 0)
      {
        v59 = 0;
        v60 = (63 - v56) >> 6;
        v15 = v78;
        v14 = v80;
        v17 = v74;
        v16 = v76;
        while (++v58 != v60 || (v59 & 1) == 0)
        {
          v61 = v58 == v60;
          if (v58 == v60)
          {
            v58 = 0;
          }

          v59 |= v61;
          v62 = *(v12 + 8 * v58);
          if (v62 != -1)
          {
            v13 = __clz(__rbit64(~v62)) + (v58 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v57) & ~*(v12 + 8 * (v57 >> 6)))) | v57 & 0x7FFFFFFFFFFFFFC0;
      v15 = v78;
      v14 = v80;
      v17 = v74;
      v16 = v76;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v18 = *(v7 + 48) + 104 * v13;
      *v18 = v27;
      *(v18 + 8) = v28;
      *(v18 + 16) = v17;
      *(v18 + 32) = v16;
      *(v18 + 48) = v15;
      *(v18 + 64) = v69;
      *(v18 + 65) = v52;
      *(v18 + 66) = v53;
      *(v18 + 72) = v14;
      *(v18 + 88) = v54;
      *(v18 + 96) = v55;
      v19 = *(v7 + 56) + 48 * v13;
      *v19 = v70;
      *(v19 + 16) = v71;
      *(v19 + 32) = v39;
      *(v19 + 40) = v40;
      ++*(v7 + 16);
      v5 = v66;
      v11 = v72;
    }

    v22 = v8;
    result = v65;
    while (1)
    {
      v8 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v64)
      {
        break;
      }

      v24 = v65[v8];
      ++v22;
      if (v24)
      {
        v20 = __clz(__rbit64(v24));
        v21 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v67 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v63 = 1 << *(v5 + 32);
    v3 = v2;
    if (v63 >= 64)
    {
      bzero(v65, ((v63 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v65 = -1 << v63;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

void *sub_20C3BB584()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7ADBA8);
  v2 = *v0;
  v3 = sub_20C3E926C();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; result = sub_20C39AF38(v31, v30))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = 104 * v16;
      v18 = (*(v2 + 48) + 104 * v16);
      v19 = v18[3];
      v20 = v18[4];
      v21 = v18[5];
      v32 = *(v18 + 12);
      v31[4] = v20;
      v31[5] = v21;
      v31[3] = v19;
      v23 = v18[1];
      v22 = v18[2];
      v31[0] = *v18;
      v31[1] = v23;
      v31[2] = v22;
      v24 = 48 * v16;
      v25 = (*(v2 + 56) + 48 * v16);
      v28 = v25[1];
      v29 = *v25;
      v27 = v25[2];
      memmove((*(v4 + 48) + v17), v18, 0x68uLL);
      v26 = (*(v4 + 56) + v24);
      *v26 = v29;
      v26[1] = v28;
      v26[2] = v27;
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 64 + 8 * v8);
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

    *v1 = v4;
  }

  return result;
}

void sub_20C3BB760(uint64_t a1, void *a2)
{
  v3 = *(a1 + 66);
  if (v3 != 2 && *(a1 + 80) != 0)
  {
    v5 = [objc_opt_self() _preferredFontForTextStyle_maximumContentSizeCategory_compatibleWithTraitCollection_];
    if (!v5)
    {
      __break(1u);
      return;
    }

    v6 = v5;
    [v5 pointSize];
    v8 = v7;

    v9 = [objc_opt_self() configurationWithPointSize:5 weight:2 scale:v8];
    v10 = sub_20C3E8BFC();
    v11 = [objc_opt_self() _systemImageNamed_withConfiguration_];

    if (v11)
    {
      [v11 size];
      [a2 displayScale];
      [a2 displayScale];
    }
  }

  if (v3 != 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7ADBB0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20C3EBA20;
    v13 = *MEMORY[0x277D740A8];
    *(inited + 32) = *MEMORY[0x277D740A8];
    v14 = objc_opt_self();
    v15 = *MEMORY[0x277D76988];
    v16 = *MEMORY[0x277D76838];
    v17 = v13;
    v18 = [v14 _preferredFontForTextStyle_maximumContentSizeCategory_compatibleWithTraitCollection_];
    *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7ADBB8);
    *(inited + 40) = v18;
    sub_20C3DDF80(inited);
    swift_setDeallocating();
    sub_20C3BC278(inited + 32);
    v19 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v20 = sub_20C3E8BFC();
    type metadata accessor for Key(0);
    sub_20C3BC2E0();
    v21 = sub_20C3E8B8C();

    v22 = [v19 initWithString:v20 attributes:v21];

    [v22 boundingRectWithSize:0 options:0 context:{INFINITY, INFINITY}];
    [a2 displayScale];
    [a2 displayScale];
  }
}

uint64_t _s13FitnessCoreUI28FloatingTabBarLayoutProviderC21itemSizesByDescriptor3for2in14compatibleWithSDyAA0e4ItemL0VAA0eQ4SizeVGShyAIG_So6CGRectVSo17UITraitCollectionCtF_0(uint64_t a1, void *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v9 = sub_20C3DDDD0(MEMORY[0x277D84F90]);
  v10 = 1 << *(a1 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a1 + 56);
  v13 = (v10 + 63) >> 6;

  v14 = 0;
  while (v12)
  {
    v16 = v14;
LABEL_11:
    v17 = *(a1 + 48) + 104 * (__clz(__rbit64(v12)) | (v16 << 6));
    v19 = *(v17 + 16);
    v18 = *(v17 + 32);
    v65 = *v17;
    v66 = v19;
    v67 = v18;
    v21 = *(v17 + 64);
    v20 = *(v17 + 80);
    v22 = *(v17 + 48);
    v71 = *(v17 + 96);
    v69 = v21;
    v70 = v20;
    v68 = v22;
    v23 = *(v17 + 80);
    v63[4] = *(v17 + 64);
    v63[5] = v23;
    v64 = *(v17 + 96);
    v24 = *(v17 + 16);
    v63[0] = *v17;
    v63[1] = v24;
    v25 = *(v17 + 48);
    v63[2] = *(v17 + 32);
    v63[3] = v25;

    sub_20C39AF38(&v65, v62);
    sub_20C3BB760(v63, a2);
    v27 = v26;
    v29 = v28;
    v30 = BYTE2(v69);
    v72.origin.x = a3;
    v72.origin.y = a4;
    v72.size.width = a5;
    v72.size.height = a6;
    Width = CGRectGetWidth(v72);
    v32 = Width < 335.0;
    if (Width >= 335.0)
    {
      v33 = 16.0;
    }

    else
    {
      v33 = 8.0;
    }

    v34 = 14.0;
    if (v32)
    {
      v34 = 8.0;
    }

    v35 = 10.0;
    if (!v32)
    {
      v35 = 16.0;
    }

    if (v30 == 1)
    {
      v36 = v34;
    }

    else
    {
      v36 = v35;
    }

    if (v30 == 1)
    {
      v37 = v33;
    }

    else
    {
      v37 = v35;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v63[0] = v9;
    v39 = sub_20C3DD928(&v65);
    v41 = *(v9 + 16);
    v42 = (v40 & 1) == 0;
    v43 = __OFADD__(v41, v42);
    v44 = v41 + v42;
    if (v43)
    {
      goto LABEL_35;
    }

    v45 = v40;
    if (*(v9 + 24) >= v44)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v57 = v39;
        sub_20C3BB584();
        v39 = v57;
      }
    }

    else
    {
      sub_20C3BB178(v44, isUniquelyReferenced_nonNull_native);
      v39 = sub_20C3DD928(&v65);
      if ((v45 & 1) != (v46 & 1))
      {
        goto LABEL_37;
      }
    }

    v12 &= v12 - 1;
    v47 = *&v63[0];
    if (v45)
    {
      v15 = *(*&v63[0] + 56) + 48 * v39;
      *v15 = v27;
      *(v15 + 8) = v29;
      *(v15 + 16) = 0x4018000000000000;
      *(v15 + 24) = v36;
      *(v15 + 32) = 0x4018000000000000;
      *(v15 + 40) = v37;
      sub_20C39AF94(&v65);
    }

    else
    {
      *(*&v63[0] + 8 * (v39 >> 6) + 64) |= 1 << v39;
      v48 = v47[6] + 104 * v39;
      v50 = v66;
      v49 = v67;
      *v48 = v65;
      *(v48 + 16) = v50;
      *(v48 + 32) = v49;
      v51 = v68;
      v52 = v69;
      v53 = v70;
      *(v48 + 96) = v71;
      *(v48 + 64) = v52;
      *(v48 + 80) = v53;
      *(v48 + 48) = v51;
      v54 = v47[7] + 48 * v39;
      *v54 = v27;
      *(v54 + 8) = v29;
      *(v54 + 16) = 0x4018000000000000;
      *(v54 + 24) = v36;
      *(v54 + 32) = 0x4018000000000000;
      *(v54 + 40) = v37;

      v55 = v47[2];
      v43 = __OFADD__(v55, 1);
      v56 = v55 + 1;
      if (v43)
      {
        goto LABEL_36;
      }

      v47[2] = v56;
    }

    v14 = v16;
    v9 = v47;
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= v13)
    {

      return v9;
    }

    v12 = *(a1 + 56 + 8 * v16);
    ++v14;
    if (v12)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  result = sub_20C3E941C();
  __break(1u);
  return result;
}

uint64_t _s13FitnessCoreUI28FloatingTabBarLayoutProviderC9itemSizes3for2inSayAA0E8ItemSizeVGSayAA0eM10DescriptorVG_SDyAkHGtF_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v26 = MEMORY[0x277D84F90];
  sub_20C3BA150(0, v2, 0);
  v3 = v26;
  for (i = a1 + 32; ; i += 104)
  {
    v7 = *(i + 80);
    v27[4] = *(i + 64);
    v28 = v7;
    v8 = *(i + 96);
    v29 = v8;
    v9 = *(i + 16);
    v27[0] = *i;
    v27[1] = v9;
    v10 = *(i + 48);
    v27[2] = *(i + 32);
    v27[3] = v10;
    v11 = *(&v28 + 1);
    if (!*(a2 + 16))
    {
      break;
    }

    sub_20C39AF38(v27, &v24);
    sub_20C39AF38(v27, &v24);
    v12 = sub_20C3DD928(v27);
    v14 = v13;
    sub_20C39AF94(v27);
    if ((v14 & 1) == 0)
    {
      goto LABEL_10;
    }

    v15 = *(a2 + 56) + 48 * v12;
    v22 = *(v15 + 16);
    v23 = *v15;
    v16 = *(v15 + 32);
    v17 = *(v15 + 40);
    sub_20C39AF94(v27);
    v26 = v3;
    v19 = *(v3 + 16);
    v18 = *(v3 + 24);
    if (v19 >= v18 >> 1)
    {
      sub_20C3BA150((v18 > 1), v19 + 1, 1);
      v3 = v26;
    }

    *(v3 + 16) = v19 + 1;
    v20 = v3 + 48 * v19;
    *(v20 + 32) = v23;
    *(v20 + 48) = v22;
    *(v20 + 64) = v16;
    *(v20 + 72) = v17;
    if (!--v2)
    {
      return v3;
    }
  }

  sub_20C39AF38(v27, &v24);
LABEL_10:
  v24 = 0;
  v25 = 0xE000000000000000;
  sub_20C3E90FC();

  v24 = 0xD00000000000002DLL;
  v25 = 0x800000020C3F36B0;
  MEMORY[0x20F2F90D0](v11, v8);
  result = sub_20C3E921C();
  __break(1u);
  return result;
}

char *_s13FitnessCoreUI28FloatingTabBarLayoutProviderC11minimumSize5using14compatibleWithSo6CGSizeVSayAA0e4ItemJ0VG_So17UITraitCollectionCSgtF_0(char *result, id a2)
{
  v2 = *(result + 2);
  if (v2)
  {
    v4 = result;
    v5 = *(result + 4);
    v6 = *(result + 7);
    v7 = *(result + 9);
    v8 = v2 - 1;
    if (v2 == 1)
    {
      if (v6 < 0.0)
      {
        v6 = 0.0;
      }

      v9 = v5 + v6;
      if (v7 < 0.0)
      {
        v7 = 0.0;
      }
    }

    else
    {
      if (v6 < 0.0)
      {
        v6 = 0.0;
      }

      v9 = v5 + v6;
      if (*(result + 13) > v7)
      {
        v7 = *(result + 13);
      }
    }

    v10 = v7 + v9;
    v11 = *(result + 5) + *(result + 6) + *(result + 8);
    if (a2)
    {
      [a2 displayScale];
      if (v12 > 0.0)
      {
        v10 = ceil(v10 * v12) / v12;
      }

      result = [a2 displayScale];
      if (v13 > 0.0)
      {
        v11 = ceil(v11 * v13) / v13;
      }
    }

    if (v11 <= 0.0)
    {
      v11 = 0.0;
    }

    v14 = v10 + 0.0;
    if (v2 != 1)
    {
      v15 = (v4 + 80);
      v16 = 2;
      do
      {
        v17 = v15[5];
        if (v8 == 1)
        {
          if (v17 < 0.0)
          {
            v17 = 0.0;
          }
        }

        else
        {
          if (v16 >= v2)
          {
            __break(1u);
            return result;
          }

          if (v15[9] > v17)
          {
            v17 = v15[9];
          }
        }

        v18 = v17 + *v15;
        v19 = v15[1] + v15[2] + v15[4];
        if (a2)
        {
          [a2 displayScale];
          if (v20 > 0.0)
          {
            v18 = ceil(v18 * v20) / v20;
          }

          result = [a2 displayScale];
          if (v21 > 0.0)
          {
            v19 = ceil(v19 * v21) / v21;
          }
        }

        if (v19 > v11)
        {
          v11 = v19;
        }

        v14 = v14 + v18;
        ++v16;
        v15 += 6;
        --v8;
      }

      while (v8);
    }
  }

  return result;
}

uint64_t sub_20C3BC278(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7ADBC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_20C3BC2E0()
{
  result = qword_2810F20F0;
  if (!qword_2810F20F0)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810F20F0);
  }

  return result;
}

uint64_t MarqueeLabel.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  return result;
}

uint64_t MarqueeLabel.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_20C3E802C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C38BD08(0, &qword_27C7ADBC8);
  (*(v5 + 16))(v7, a1, v4);
  v8 = sub_20C3E8F8C();
  result = (*(v5 + 8))(a1, v4);
  *a2 = v8;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  return result;
}

uint64_t MarqueeLabel.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  return result;
}

id MarqueeLabel.makeUIView(context:)()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v0 setMarqueeEnabled_];
  [v0 setNumberOfLines_];
  return v0;
}

double MarqueeLabel.sizeThatFits(_:uiView:context:)(uint64_t a1, char a2, uint64_t a3, char a4, id a5)
{
  v5 = 10.0;
  if (a2)
  {
    v6 = 10.0;
  }

  else
  {
    v6 = *&a1;
  }

  if ((a4 & 1) == 0)
  {
    v5 = *&a3;
  }

  [a5 sizeThatFits_];
  if (v6 < result)
  {
    return v6;
  }

  return result;
}

uint64_t MarqueeLabel.updateUIView(_:context:)(void *a1, uint64_t a2)
{
  v40 = a1;
  v35 = sub_20C3E88BC();
  v4 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20C3E857C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v34 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v34 - v15;
  v17 = *(v2 + 8);
  v37 = *v2;
  v34 = v17;
  v36 = *(v2 + 16);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7ADBD0);
  v45 = a2;
  sub_20C3E877C();
  v18 = sub_20C3E852C();
  v19 = v16;
  v20 = v18;
  v43 = *(v8 + 8);
  v44 = v7;
  v41 = v8 + 8;
  v43(v19, v7);
  if (!v20)
  {
    v20 = sub_20C3E887C();
  }

  sub_20C3E877C();
  sub_20C3E850C();
  v38 = v14;
  v22 = v43;
  v21 = v44;
  v43(v14, v44);
  v39 = v20;
  v23 = sub_20C3E886C();
  (*(v4 + 8))(v6, v35);
  v24 = v40;
  [v40 setFont_];

  v25 = sub_20C3E877C();
  v26 = MEMORY[0x20F2F8940](v25);
  v22(v11, v21);
  if (v26)
  {
    sub_20C3E8E3C();

    sub_20C3E8E2C();
    sub_20C3E8E1C();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    sub_20C38BD08(0, &qword_27C7ADBD8);
    v27 = sub_20C3E901C();

    v24 = v40;
  }

  else
  {
    v27 = 0;
  }

  v28 = v38;
  [v24 setTextColor_];

  if (v36)
  {
    [v24 setAttributedText_];
  }

  else
  {
    v29 = v34;

    v30 = v37;
    v31 = sub_20C3E8BFC();
    sub_20C3BC964(v30, v29, 0);
    [v24 setText_];
  }

  sub_20C3E877C();
  v32 = sub_20C3E853C();
  v43(v28, v44);
  [v24 setMarqueeRunning_];
}

void sub_20C3BC964(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_20C3BC978()
{
  result = qword_27C7ADBE0;
  if (!qword_27C7ADBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7ADBE0);
  }

  return result;
}

id sub_20C3BC9CC()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v0 setMarqueeEnabled_];
  [v0 setNumberOfLines_];
  return v0;
}

double sub_20C3BCA40(uint64_t a1, char a2, uint64_t a3, char a4, id a5)
{
  v5 = 10.0;
  if (a2)
  {
    v6 = 10.0;
  }

  else
  {
    v6 = *&a1;
  }

  if ((a4 & 1) == 0)
  {
    v5 = *&a3;
  }

  [a5 sizeThatFits_];
  if (v6 < result)
  {
    return v6;
  }

  return result;
}

uint64_t sub_20C3BCABC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20C3BCC84();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_20C3BCB20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20C3BCC84();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_20C3BCB84()
{
  sub_20C3BCC84();
  sub_20C3E869C();
  __break(1u);
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_20C3BCBDC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_20C3BCC24(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_20C3BCC84()
{
  result = qword_27C7ADBE8;
  if (!qword_27C7ADBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7ADBE8);
  }

  return result;
}

uint64_t Text.init(localizing:bundle:locale:comment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16[1] = a4;
  v16[2] = a5;
  v7 = sub_20C3E803C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C3E8BEC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  (*(v12 + 16))(v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v11);
  (*(v8 + 16))(v10, a3, v7);
  v14 = sub_20C3E8C5C();
  (*(v8 + 8))(a3, v7);
  (*(v12 + 8))(a1, v11);
  return v14;
}

uint64_t sub_20C3BCF0C(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  MEMORY[0x28223BE20](TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return sub_20C3E8B7C();
}

uint64_t sub_20C3BD0DC()
{
  v1 = *(v0 + 2);
  v5 = *v0;
  v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7ADC08);
  MEMORY[0x20F2F8EF0](&v4, v2);
  return v4;
}

uint64_t sub_20C3BD134()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7ADC08);
  sub_20C3E8AEC();
  return v1;
}

uint64_t PagingTabView.init(currentPage:items:showPageControl:viewForItem:footerHeightChanged:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  sub_20C3E8A4C();
  *(a9 + 24) = v20;
  *(a9 + 32) = v21;
  result = sub_20C3E8A4C();
  *(a9 + 40) = v20;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 48) = v21;
  *(a9 + 56) = a4;
  *(a9 + 64) = a5;
  *(a9 + 72) = a6;
  *(a9 + 80) = a7;
  *(a9 + 88) = a8;
  *(a9 + 96) = a10;
  return result;
}

uint64_t PagingTabView.body.getter@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v41 = a2;
  *&v40 = a1 + 5;
  v3 = a1[3];
  swift_getTupleTypeMetadata2();
  sub_20C3E8DCC();
  v4 = a1[6];
  v36 = v3;
  v37 = v4;
  swift_getAssociatedTypeWitness();
  v39 = a1;
  v5 = a1[4];
  *&v47 = a1[2];
  v34 = v47;
  *&v35 = v5;
  swift_getOpaqueTypeMetadata2();
  swift_getWitnessTable();
  *&v49 = swift_getAssociatedConformanceWitness();
  sub_20C3E8B0C();
  v46[15] = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_20C3E8ABC();
  swift_getWitnessTable();
  sub_20C3E835C();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_20C3BDA00();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7ADBF0);
  sub_20C3E845C();
  sub_20C3E875C();
  v46[13] = swift_getOpaqueTypeConformance2();
  v46[14] = sub_20C3960C8(&qword_2810F2198, &qword_27C7ADBF0);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  v30[1] = swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v30[0] = sub_20C3E84AC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7ADBF8);
  v6 = v47;
  swift_getTupleTypeMetadata2();
  v7 = sub_20C3E8B6C();
  WitnessTable = swift_getWitnessTable();
  v31 = swift_getWitnessTable();
  *&v47 = v30[0];
  *(&v47 + 1) = v7;
  *&v48 = WitnessTable;
  *(&v48 + 1) = v31;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v9 = *(OpaqueTypeMetadata2 - 8);
  v10 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v30 - v13;
  v15 = v38[5];
  v51 = v38[4];
  v52 = v15;
  v53 = *(v38 + 12);
  v16 = v38[1];
  v47 = *v38;
  v48 = v16;
  v17 = v38[3];
  v18 = v38;
  v49 = v38[2];
  v50 = v17;
  v19 = swift_allocObject();
  v20 = v18[2];
  *(v19 + 104) = v18[3];
  v21 = v18[5];
  *(v19 + 120) = v18[4];
  *(v19 + 136) = v21;
  v22 = v18[1];
  *(v19 + 56) = *v18;
  *&v23 = v35;
  v24 = v39;
  *(&v23 + 1) = *v40;
  v35 = v23;
  *(v19 + 72) = v22;
  *&v22 = v6;
  v25 = v37;
  *(&v22 + 1) = v36;
  v40 = v22;
  *(v19 + 16) = v22;
  *(v19 + 32) = v23;
  *(v19 + 48) = v25;
  *(v19 + 152) = *(v18 + 12);
  *(v19 + 88) = v20;
  (*(*(v24 - 1) + 16))(v46, &v47);
  swift_checkMetadataState();
  v46[0] = sub_20C3E849C();
  v46[1] = v26;
  v42 = v40;
  v43 = v35;
  v44 = v25;
  v45 = &v47;
  swift_checkMetadataState();
  swift_checkMetadataState();
  sub_20C3E89AC();

  v27 = *(v9 + 16);
  v27(v14, v12, OpaqueTypeMetadata2);
  v28 = *(v9 + 8);
  v28(v12, OpaqueTypeMetadata2);
  v27(v41, v14, OpaqueTypeMetadata2);
  return (v28)(v14, OpaqueTypeMetadata2);
}

unint64_t sub_20C3BDA00()
{
  result = qword_2810F2660;
  if (!qword_2810F2660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810F2660);
  }

  return result;
}

uint64_t sub_20C3BDA54@<X0>(void (*a1)(void *, __int128 *)@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, char *a8@<X8>)
{
  v175 = a6;
  v179 = a3;
  v170 = a8;
  v171 = a1;
  v13 = sub_20C3E86EC();
  v168 = *(v13 - 8);
  v169 = v13;
  MEMORY[0x28223BE20](v13);
  v167 = v128 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_20C3E873C();
  v165 = *(v15 - 8);
  v166 = v15;
  MEMORY[0x28223BE20](v15);
  v164 = v128 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = sub_20C3E875C();
  v163 = *(v174 - 8);
  MEMORY[0x28223BE20](v174);
  v162 = v128 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = sub_20C3E847C();
  v158 = *(v160 - 8);
  MEMORY[0x28223BE20](v160);
  v140 = v18;
  v154 = v128 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getTupleTypeMetadata2();
  v19 = sub_20C3E8DCC();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *&v181 = a3;
  *(&v181 + 1) = a5;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  WitnessTable = swift_getWitnessTable();
  v177 = a7;
  v178 = a4;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v181 = v19;
  *(&v181 + 1) = AssociatedTypeWitness;
  *&v182 = OpaqueTypeMetadata2;
  *(&v182 + 1) = WitnessTable;
  *&v183 = AssociatedConformanceWitness;
  sub_20C3E8B0C();
  *&v181 = v179;
  *(&v181 + 1) = a5;
  v133 = a5;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  v24 = sub_20C3E8ABC();
  v25 = swift_getWitnessTable();
  v176 = v24;
  v128[1] = v25;
  v26 = sub_20C3E835C();
  v129 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v172 = v128 - v27;
  v28 = swift_getWitnessTable();
  *&v181 = v26;
  v29 = MEMORY[0x277D83B88];
  *(&v181 + 1) = MEMORY[0x277D83B88];
  v30 = MEMORY[0x277D83BA8];
  *&v182 = v28;
  *(&v182 + 1) = MEMORY[0x277D83BA8];
  v31 = swift_getOpaqueTypeMetadata2();
  v135 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v131 = v26;
  v132 = v128 - v32;
  *&v181 = v26;
  *(&v181 + 1) = v29;
  v128[2] = v28;
  *&v182 = v28;
  *(&v182 + 1) = v30;
  v33 = swift_getOpaqueTypeConformance2();
  *&v181 = v31;
  *(&v181 + 1) = v33;
  v34 = swift_getOpaqueTypeMetadata2();
  v145 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v173 = v128 - v35;
  v136 = v31;
  *&v181 = v31;
  *(&v181 + 1) = v33;
  v128[4] = v33;
  v36 = swift_getOpaqueTypeConformance2();
  v37 = sub_20C3BDA00();
  v38 = MEMORY[0x277D85048];
  *&v181 = v34;
  *(&v181 + 1) = MEMORY[0x277D85048];
  *&v182 = v36;
  *(&v182 + 1) = v37;
  v39 = swift_getOpaqueTypeMetadata2();
  v147 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v139 = v128 - v40;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7ADBF0);
  v150 = v39;
  v41 = sub_20C3E845C();
  v143 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v137 = v128 - v42;
  v148 = v34;
  *&v181 = v34;
  *(&v181 + 1) = v38;
  v134 = v36;
  *&v182 = v36;
  *(&v182 + 1) = v37;
  v130 = v37;
  v43 = swift_getOpaqueTypeConformance2();
  v44 = sub_20C3960C8(&qword_2810F2198, &qword_27C7ADBF0);
  v128[5] = v43;
  v188 = v43;
  v189 = v44;
  v45 = swift_getWitnessTable();
  v46 = v174;
  *&v181 = v41;
  *(&v181 + 1) = v174;
  v47 = MEMORY[0x277CDE3A8];
  *&v182 = v45;
  *(&v182 + 1) = MEMORY[0x277CDE3A8];
  v48 = swift_getOpaqueTypeMetadata2();
  v159 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v156 = v128 - v49;
  v146 = v41;
  *&v181 = v41;
  *(&v181 + 1) = v46;
  v128[3] = v45;
  *&v182 = v45;
  *(&v182 + 1) = v47;
  v50 = swift_getOpaqueTypeConformance2();
  *&v181 = v48;
  *(&v181 + 1) = v50;
  v51 = swift_getOpaqueTypeMetadata2();
  v155 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v153 = v128 - v52;
  v161 = v48;
  *&v181 = v48;
  *(&v181 + 1) = v50;
  v149 = v50;
  v53 = swift_getOpaqueTypeConformance2();
  v157 = v51;
  *&v181 = v51;
  *(&v181 + 1) = v53;
  v142 = v53;
  v54 = swift_getOpaqueTypeMetadata2();
  v151 = *(v54 - 8);
  v152 = v54;
  v55 = MEMORY[0x28223BE20](v54);
  v141 = v128 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v55);
  v144 = v128 - v57;
  sub_20C3E8E3C();
  v138 = sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v58 = sub_20C3E87FC();
  MEMORY[0x28223BE20](v58);
  v59 = v179;
  v128[-6] = v179;
  v60 = v59;
  v61 = v178;
  v62 = v133;
  v128[-5] = v178;
  v128[-4] = v62;
  v63 = v175;
  v64 = v177;
  v128[-3] = v175;
  v126 = v64;
  v65 = v64;
  v127 = a2;
  sub_20C3E836C();
  v66 = a2[5];
  v185 = a2[4];
  v186 = v66;
  v187 = *(a2 + 12);
  v67 = a2[1];
  v181 = *a2;
  v182 = v67;
  v68 = a2[3];
  v183 = a2[2];
  v184 = v68;
  v180[0] = v60;
  v180[1] = v61;
  v180[2] = v62;
  v180[3] = v63;
  v69 = v63;
  v180[4] = v65;
  v176 = type metadata accessor for PagingTabView();
  v180[13] = sub_20C3BD0DC();
  v70 = v158;
  v71 = v154;
  v72 = v160;
  (*(v158 + 16))(v154, v171, v160);
  v73 = (*(v70 + 80) + 160) & ~*(v70 + 80);
  v74 = swift_allocObject();
  v75 = a2[2];
  *(v74 + 104) = a2[3];
  v76 = a2[5];
  *(v74 + 120) = a2[4];
  *(v74 + 136) = v76;
  v77 = a2[1];
  *(v74 + 56) = *a2;
  *(v74 + 72) = v77;
  v78 = v178;
  *(v74 + 16) = v179;
  *(v74 + 24) = v78;
  *(v74 + 32) = v62;
  *(v74 + 40) = v69;
  *(v74 + 48) = v65;
  *(v74 + 152) = *(a2 + 12);
  *(v74 + 88) = v75;
  (*(v70 + 32))(v74 + v73, v71, v72);
  v79 = *(v176 - 1);
  v171 = *(v79 + 16);
  v80 = v79 + 16;
  v171(v180, a2);
  v160 = v80;
  v82 = v131;
  v81 = v132;
  v83 = v172;
  sub_20C3E89DC();

  (*(v129 + 8))(v83, v82);
  v84 = swift_allocObject();
  v85 = a2[2];
  *(v84 + 104) = a2[3];
  v86 = a2[5];
  *(v84 + 120) = a2[4];
  *(v84 + 136) = v86;
  v87 = a2[1];
  *(v84 + 56) = *a2;
  *(v84 + 72) = v87;
  v88 = v178;
  v89 = v179;
  *(v84 + 16) = v179;
  *(v84 + 24) = v88;
  v90 = v62;
  *(v84 + 32) = v62;
  v92 = v175;
  v91 = v176;
  v93 = v177;
  *(v84 + 40) = v175;
  *(v84 + 48) = v93;
  *(v84 + 152) = *(a2 + 12);
  *(v84 + 88) = v85;
  (v171)(&v181, a2, v91);
  v94 = v136;
  sub_20C3E894C();

  (*(v135 + 8))(v81, v94);
  v95 = swift_allocObject();
  v96 = a2[2];
  *(v95 + 104) = a2[3];
  v97 = a2[5];
  *(v95 + 120) = a2[4];
  *(v95 + 136) = v97;
  v98 = a2[1];
  *(v95 + 56) = *a2;
  *(v95 + 72) = v98;
  *(v95 + 16) = v89;
  *(v95 + 24) = v88;
  *(v95 + 32) = v90;
  *(v95 + 40) = v92;
  v99 = v176;
  v100 = v177;
  *(v95 + 48) = v177;
  *(v95 + 152) = *(a2 + 12);
  *(v95 + 88) = v96;
  (v171)(&v181, a2, v99);
  v126 = v130;
  v101 = v139;
  v102 = v148;
  v103 = v173;
  sub_20C3E898C();

  (*(v145 + 8))(v103, v102);
  v104 = sub_20C3E8B3C();
  v176 = v128;
  MEMORY[0x28223BE20](v104);
  v105 = v178;
  v128[-6] = v179;
  v128[-5] = v105;
  v128[-4] = v90;
  v128[-3] = v92;
  v126 = v100;
  v127 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7ADC10);
  sub_20C3C09B0(&qword_2810F21B0, &qword_27C7ADC10, &unk_20C3EE028, sub_20C3C0A2C);
  v106 = v137;
  v107 = v150;
  sub_20C3E89BC();
  (*(v147 + 8))(v101, v107);
  v108 = v162;
  sub_20C3E874C();
  v109 = v156;
  v110 = v146;
  v111 = v174;
  sub_20C3E896C();
  (*(v163 + 8))(v108, v111);
  (*(v143 + 8))(v106, v110);
  v112 = v164;
  sub_20C3E86DC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7ADC30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C3EDB70;
  LOBYTE(v110) = sub_20C3E881C();
  *(inited + 32) = v110;
  v114 = sub_20C3E87FC();
  *(inited + 33) = v114;
  sub_20C3E880C();
  sub_20C3E880C();
  if (sub_20C3E880C() != v110)
  {
    sub_20C3E880C();
  }

  sub_20C3E880C();
  if (sub_20C3E880C() != v114)
  {
    sub_20C3E880C();
  }

  v115 = v153;
  v116 = v161;
  sub_20C3E893C();
  (*(v165 + 8))(v112, v166);
  (*(v159 + 8))(v109, v116);
  v117 = v167;
  sub_20C3E86DC();
  sub_20C3E87FC();
  v118 = v141;
  v119 = v157;
  sub_20C3E895C();
  (*(v168 + 8))(v117, v169);
  (*(v155 + 8))(v115, v119);
  v121 = v151;
  v120 = v152;
  v122 = *(v151 + 16);
  v123 = v144;
  v122(v144, v118, v152);
  v124 = *(v121 + 8);
  v124(v118, v120);
  v122(v170, v123, v120);
  v124(v123, v120);
}

uint64_t sub_20C3BEBF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v29 = a1;
  v30 = a5;
  v32 = a7;
  swift_getTupleTypeMetadata2();
  sub_20C3E8DCC();
  swift_getAssociatedTypeWitness();
  v31 = a6;
  v26 = a3;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_20C3E8B0C();
  v27 = a2;
  v28 = a4;
  v34 = a2;
  v35 = a4;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  v11 = sub_20C3E8ABC();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v25 - v16;
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);
  v19 = v26;
  *(&v25 - 6) = v27;
  *(&v25 - 5) = v19;
  v21 = v30;
  v20 = v31;
  *(&v25 - 4) = v28;
  *(&v25 - 3) = v21;
  *(&v25 - 2) = v20;
  *(&v25 - 1) = v29;
  sub_20C3E85AC();
  sub_20C3E8AAC();
  swift_getWitnessTable();
  v22 = *(v12 + 16);
  v22(v17, v15, v11);
  v23 = *(v12 + 8);
  v23(v15, v11);
  v22(v32, v17, v11);
  v23(v17, v11);
}

uint64_t sub_20C3BEF68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v40 = a5;
  v41 = a7;
  swift_getTupleTypeMetadata2();
  v38 = a4;
  v39 = a6;
  v43 = sub_20C3E8DCC();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v37 = AssociatedTypeWitness;
  v45 = OpaqueTypeMetadata2;
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = sub_20C3E8B0C();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v34 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v35 = &v33 - v16;
  sub_20C3E8E3C();
  v33 = sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v17 = *(a1 + 56);
  v18 = swift_allocObject();
  v19 = *(a1 + 32);
  *(v18 + 104) = *(a1 + 48);
  v20 = *(a1 + 80);
  *(v18 + 120) = *(a1 + 64);
  *(v18 + 136) = v20;
  v21 = *(a1 + 16);
  *(v18 + 56) = *a1;
  *(v18 + 72) = v21;
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;
  v22 = a2;
  v24 = v38;
  v23 = v39;
  v25 = v40;
  *(v18 + 32) = v38;
  *(v18 + 40) = v25;
  *(v18 + 48) = v23;
  *(v18 + 152) = *(a1 + 96);
  *(v18 + 88) = v19;

  v43 = v22;
  AssociatedTypeWitness = a3;
  v45 = v24;
  WitnessTable = v25;
  AssociatedConformanceWitness = v23;
  v26 = type metadata accessor for PagingTabView();
  (*(*(v26 - 8) + 16))(&v43, a1, v26);
  v43 = v22;
  AssociatedTypeWitness = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v28 = v34;
  ForEach<>.init<A>(enumerating:content:)(v17, sub_20C3C0C1C, v18, v37, OpaqueTypeMetadata2, a3, OpaqueTypeConformance2, v25, v23);
  v42 = OpaqueTypeConformance2;
  swift_getWitnessTable();
  v29 = *(v13 + 16);
  v30 = v35;
  v29(v35, v28, v12);
  v31 = *(v13 + 8);
  v31(v28, v12);
  v29(v41, v30, v12);
  v31(v30, v12);
}

uint64_t sub_20C3BF354@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, char *a6@<X8>)
{
  v24[1] = a5;
  v25 = a2;
  v26 = a6;
  v9 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = v12;
  v28 = v13;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v15 = *(OpaqueTypeMetadata2 - 8);
  v16 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v18 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = v24 - v19;
  (*(a3 + 72))(v25, a1);
  sub_20C3E87FC();
  sub_20C3E8B4C();
  sub_20C3E897C();
  (*(v9 + 8))(v11, a4);
  v21 = *(v15 + 16);
  v21(v20, v18, OpaqueTypeMetadata2);
  v22 = *(v15 + 8);
  v22(v18, OpaqueTypeMetadata2);
  v21(v26, v20, OpaqueTypeMetadata2);
  return (v22)(v20, OpaqueTypeMetadata2);
}

uint64_t sub_20C3BF598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v28 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v26 = *(AssociatedTypeWitness - 8);
  v27 = AssociatedTypeWitness;
  v15 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v25 = &v24 - v16;
  v24 = *(a6 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v19 = *(a3 + 24);
  v20 = *(a3 + 32);
  *&v32 = a5;
  *(&v32 + 1) = a6;
  v33 = a7;
  v34 = a8;
  v35 = a9;
  type metadata accessor for PagingTabView();
  LOBYTE(v32) = v19 & 1;
  *(&v32 + 1) = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7ADC38);
  sub_20C3E8A5C();
  if (v30 == 1)
  {
    v31 = *(a3 + 56);
    sub_20C3E8DCC();
    swift_getWitnessTable();
    sub_20C3E8EDC();
    v30 = v32;
    v29 = sub_20C3BD0DC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7ADC40);
    if (sub_20C3E8F0C())
    {
      sub_20C3BD0DC();
      sub_20C3E8E0C();
      v21 = v25;
      sub_20C3E910C();
      (*(v24 + 8))(v18, a6);
      v22 = v27;
      swift_getAssociatedConformanceWitness();
      sub_20C3E846C();
      (*(v26 + 8))(v21, v22);
    }
  }
}

uint64_t sub_20C3BF8E4(uint64_t a1, char a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v25 = *a4;
  v26 = *(a4 + 2);
  v24 = *(a4 + 24);
  *v23 = *(a4 + 25);
  *&v23[3] = *(a4 + 7);
  if (a2)
  {
    v15 = *(a4 + 4);
    v19 = *(a4 + 40);
    v20 = *(a4 + 56);
    v21 = *(a4 + 72);
    v22 = *(a4 + 88);
    *&v27 = a5;
    *(&v27 + 1) = a6;
    v28 = a7;
    v29 = a8;
    v30 = a9;
    v16 = type metadata accessor for PagingTabView();
    v17 = *(v16 - 8);
    (*(v17 + 16))(&v27, a4, v16);
    LOBYTE(v27) = v24;
    *(&v27 + 1) = v15;
    v35 = 0;
  }

  else
  {
    v15 = *(a4 + 4);
    v19 = *(a4 + 40);
    v20 = *(a4 + 56);
    v21 = *(a4 + 72);
    v22 = *(a4 + 88);
    *&v27 = a5;
    *(&v27 + 1) = a6;
    v28 = a7;
    v29 = a8;
    v30 = a9;
    v16 = type metadata accessor for PagingTabView();
    v17 = *(v16 - 8);
    (*(v17 + 16))(&v27, a4, v16);
    LOBYTE(v27) = v24;
    *(&v27 + 1) = v15;
    v35 = 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7ADC38);
  sub_20C3E8A6C();
  v27 = v25;
  v31 = v19;
  v32 = v20;
  v33 = v21;
  v28 = v26;
  LOBYTE(v29) = v24;
  *(&v29 + 1) = *v23;
  HIDWORD(v29) = *&v23[3];
  v30 = v15;
  v34 = v22;
  (*(v17 + 8))(&v27, v16);
}

double sub_20C3BFBAC@<D0>(double *a1@<X8>)
{
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_20C3E843C();
  v3 = v2;
  sub_20C3E842C();
  v5 = v4;

  result = v3 / v5;
  *a1 = v3 / v5;
  return result;
}

uint64_t sub_20C3BFC68(uint64_t a1, double *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *a2;
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  result = swift_task_isCurrentExecutor();
  if ((result & 1) == 0)
  {
    result = swift_task_reportUnexpectedExecutor();
  }

  v16 = round(v14);
  if ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v17 = a8;
    v18 = *a3;
    v19 = a3[1];
    v20 = a3[2];
    v26 = *(a3 + 7);
    v27 = *(a3 + 9);
    v28 = *(a3 + 11);
    v24 = *(a3 + 3);
    v25 = *(a3 + 5);
    if (v16 <= -9.22337204e18)
    {
      __break(1u);
    }

    else if (v16 < 9.22337204e18)
    {
      v21 = v16;
      v29 = a4;
      v30 = a5;
      v31 = a6;
      *&v32 = a7;
      *(&v32 + 1) = v17;
      v22 = type metadata accessor for PagingTabView();
      v23 = *(v22 - 8);
      (*(v23 + 16))(&v29, a3, v22);
      v29 = v18;
      v30 = v19;
      v31 = v20;
      v37 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7ADC08);
      sub_20C3E8ADC();
      v29 = v18;
      v30 = v19;
      v31 = v20;
      v33 = v25;
      v34 = v26;
      v35 = v27;
      v36 = v28;
      v32 = v24;
      (*(v23 + 8))(&v29, v22);
    }

    __break(1u);
  }

  else
  {
  }

  return result;
}

uint64_t sub_20C3BFEBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if ((*(a1 + 64) & 1) != 0 && (v14 = sub_20C3E8DBC(), v14 > 1))
  {
    v15 = v14;
    v16 = *(a1 + 80);
    v47[4] = *(a1 + 64);
    v47[5] = v16;
    v48 = *(a1 + 96);
    v17 = *(a1 + 16);
    v47[0] = *a1;
    v47[1] = v17;
    v18 = *(a1 + 48);
    v47[2] = *(a1 + 32);
    v47[3] = v18;
    v45 = type metadata accessor for PagingTabView();
    v19 = sub_20C3BD134();
    v44 = a6;
    v21 = v20;
    v42 = a5;
    v23 = v22;
    v46 = sub_20C3E884C();
    sub_20C3E834C();
    *(&v25 + 1) = v24;
    v43 = v25;
    *(&v27 + 1) = v26;
    v41 = v27;
    v28 = swift_allocObject();
    v29 = a2;
    v30 = v28;
    v31 = *(a1 + 32);
    *(v28 + 104) = *(a1 + 48);
    v32 = *(a1 + 80);
    *(v28 + 120) = *(a1 + 64);
    *(v28 + 136) = v32;
    v33 = *(a1 + 16);
    *(v28 + 56) = *a1;
    *(v28 + 72) = v33;
    *(v28 + 16) = v29;
    *(v28 + 24) = a3;
    *(v28 + 32) = a4;
    *(v28 + 40) = v42;
    *(v28 + 48) = v44;
    *(v28 + 152) = *(a1 + 96);
    *(v28 + 88) = v31;
    (*(*(v45 - 8) + 16))(v47, a1);

    v35 = v43;
    v36 = v41;
    v37 = v46;
    v38 = sub_20C3C0B70;
    v39 = sub_20C3C0144;
    v40 = 2;
  }

  else
  {

    v15 = 0;
    v19 = 0;
    v21 = 0;
    v23 = 0;
    v40 = 0;
    v39 = 0;
    v38 = 0;
    v30 = 0;
    v37 = 0;
    v36 = 0uLL;
    v35 = 0uLL;
  }

  *a7 = v15;
  *(a7 + 8) = v19;
  *(a7 + 16) = v21;
  *(a7 + 24) = v23;
  *(a7 + 32) = v40;
  *(a7 + 40) = v37;
  *(a7 + 48) = v36;
  *(a7 + 64) = v35;
  *(a7 + 80) = 0;
  *(a7 + 88) = v39;
  *(a7 + 96) = 0;
  *(a7 + 104) = v38;
  *(a7 + 112) = v30;
  return result;
}

double sub_20C3C0144@<D0>(double *a1@<X8>)
{
  v2 = sub_20C3E86FC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C3E871C();
  sub_20C3E83EC();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  (*(v3 + 8))(v5, v2);
  v16.origin.x = v7;
  v16.origin.y = v9;
  v16.size.width = v11;
  v16.size.height = v13;
  result = ceil(CGRectGetHeight(v16));
  *a1 = result;
  return result;
}

uint64_t sub_20C3C0264(double *a1, uint64_t a2)
{
  v3 = *a1;
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  (*(a2 + 88))(isCurrentExecutor, v3);
}

uint64_t sub_20C3C0318@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v37[0] = a5;
  v37[2] = a6;
  v38 = a3;
  v9 = *(a2 - 8);
  v10 = MEMORY[0x28223BE20](a1);
  v12 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = v13;
  v42 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v10);
  v39 = v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v41 = v37 - v16;
  sub_20C3E8E3C();
  v37[1] = sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v17 = *(a1 + 72);
  v18 = v40;
  v47 = v40;
  v48 = a2;
  v49 = v38;
  v50 = a4;
  v51 = v37[0];
  type metadata accessor for PagingTabView();
  sub_20C3BD0DC();
  sub_20C3E8E0C();
  v19 = sub_20C3BD0DC();
  v20 = v39;
  v17(v12, v19);
  (*(v9 + 8))(v12, a2);
  v21 = v42;
  v22 = *(v42 + 16);
  (v22)(v41, v20, v18);
  v23 = *(v21 + 8);
  v42 = v21 + 8;
  v37[0] = v23;
  v23(v20, v18);
  v24 = sub_20C3E8DBC();
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  if (v24 >= 2)
  {
    v30 = v24;
    v26 = sub_20C3BD134();
    v27 = v31;
    v28 = v32;
    v29 = 2;
    v25 = v30;
  }

  v33 = v40;
  v34 = v39;
  v22();
  v47 = v25;
  v48 = v26;
  v49 = v27;
  v50 = v28;
  v51 = v29;
  v46[0] = v34;
  v46[1] = &v47;
  sub_20C3C07B4(v25, v26, v27);
  v45[0] = v33;
  v45[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7ADBF8);
  v43 = v38;
  v44 = sub_20C3C09B0(&qword_27C7ADC00, &qword_27C7ADBF8, &unk_20C3EDF20, sub_20C3C07F8);
  sub_20C3BCF0C(v46, 2uLL, v45);
  sub_20C3C084C(v25, v26, v27);
  v35 = v37[0];
  (v37[0])(v41, v33);
  sub_20C3C084C(v47, v48, v49);
  v35(v34, v33);
}

uint64_t sub_20C3C0754()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_20C3C07B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_20C3C07F8()
{
  result = qword_2810F2508;
  if (!qword_2810F2508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810F2508);
  }

  return result;
}

uint64_t sub_20C3C084C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_20C3C08A8(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = *(sub_20C3E847C() - 8);
  return sub_20C3BF598(a1, a2, (v2 + 7), v2 + ((*(v10 + 80) + 160) & ~*(v10 + 80)), v5, v6, v7, v8, v9);
}

uint64_t sub_20C3C09B0(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_20C3C0A2C()
{
  result = qword_2810F21B8;
  if (!qword_2810F21B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7ADC18);
    sub_20C3C0AE4();
    sub_20C3960C8(&qword_2810F2160, &qword_27C7ADC28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810F21B8);
  }

  return result;
}

unint64_t sub_20C3C0AE4()
{
  result = qword_2810F21F0;
  if (!qword_2810F21F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7ADC20);
    sub_20C3C07F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810F21F0);
  }

  return result;
}

uint64_t objectdestroyTm_1()
{

  return MEMORY[0x2821FE8E8](v0, 160, 7);
}

uint64_t PageControlView.init(numberOfPages:currentPage:style:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

id PageControlView.makeCoordinator()()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = type metadata accessor for PageControlView.Coordinator();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR____TtCV13FitnessCoreUI15PageControlView11Coordinator_control];
  *v8 = v2;
  *(v8 + 1) = v1;
  *(v8 + 2) = v3;
  *(v8 + 3) = v4;
  *(v8 + 4) = v5;
  v10.receiver = v7;
  v10.super_class = v6;

  return objc_msgSendSuper2(&v10, sel_init);
}

id PageControlView.makeUIView(context:)()
{
  v1 = *v0;
  v2 = v0[4];
  v3 = [objc_allocWithZone(MEMORY[0x277D757E0]) init];
  [v3 setBackgroundStyle_];
  [v3 setNumberOfPages_];
  [v3 setHidesForSinglePage_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7ADC50);
  sub_20C3E876C();
  [v3 addTarget:v5 action:sel_updateCurrentPageWithSender_ forControlEvents:4096];

  return v3;
}

id PageControlView.updateUIView(_:context:)(void *a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v8 = *(v1 + 8);
  v9 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7ADC08);
  MEMORY[0x20F2F8EF0](&v7, v5);
  [a1 setCurrentPage_];
  return [a1 setBackgroundStyle_];
}

id PageControlView.Coordinator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PageControlView.Coordinator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PageControlView.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_20C3C1114(void *a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v8 = *(v1 + 8);
  v9 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7ADC08);
  MEMORY[0x20F2F8EF0](&v7, v5);
  [a1 setCurrentPage_];
  return [a1 setBackgroundStyle_];
}

id sub_20C3C119C@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = type metadata accessor for PageControlView.Coordinator();
  v9 = objc_allocWithZone(v8);
  v10 = &v9[OBJC_IVAR____TtCV13FitnessCoreUI15PageControlView11Coordinator_control];
  *v10 = v4;
  *(v10 + 1) = v3;
  *(v10 + 2) = v5;
  *(v10 + 3) = v6;
  *(v10 + 4) = v7;
  v12.receiver = v9;
  v12.super_class = v8;

  result = objc_msgSendSuper2(&v12, sel_init);
  *a1 = result;
  return result;
}

uint64_t sub_20C3C126C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20C3C1414();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_20C3C12D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20C3C1414();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_20C3C1334()
{
  sub_20C3C1414();
  sub_20C3E869C();
  __break(1u);
}

uint64_t sub_20C3C135C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_20C3C13A4(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_20C3C1414()
{
  result = qword_2810F2500;
  if (!qword_2810F2500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810F2500);
  }

  return result;
}

uint64_t sub_20C3C15D8(unint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7AD750);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = (&v30 - v8);
  MEMORY[0x28223BE20](v7);
  v11 = &v30 - v10;
  v12 = sub_20C3E809C();
  v34 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v41 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C3C2818();
  v14 = sub_20C3E8D9C();
  v15 = type metadata accessor for FloatingLayout();
  v31 = v1;
  v42.receiver = v1;
  v42.super_class = v15;
  objc_msgSendSuper2(&v42, sel_prepareForCollectionViewUpdates_, v14);

  if (a1 >> 62)
  {
    goto LABEL_34;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20C3E924C())
  {
    v32 = v9;
    v33 = v6;
    v17 = 0;
    v39 = a1 & 0xFFFFFFFFFFFFFF8;
    v40 = a1 & 0xC000000000000001;
    v36 = (v34 + 48);
    v37 = (v34 + 56);
    v9 = MEMORY[0x277D84F90];
    v35 = (v34 + 32);
    v38 = i;
    while (1)
    {
      if (v40)
      {
        v18 = MEMORY[0x20F2F9550](v17, a1);
      }

      else
      {
        if (v17 >= *(v39 + 16))
        {
          goto LABEL_33;
        }

        v18 = *(a1 + 8 * v17 + 32);
      }

      v19 = v18;
      v6 = (v17 + 1);
      if (__OFADD__(v17, 1))
      {
        break;
      }

      sub_20C3E8E3C();
      sub_20C3E8E2C();
      sub_20C3E8E1C();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v20 = [v19 updateAction];
      if ((v20 - 2) >= 3)
      {
        if (!v20)
        {
          v21 = [v19 indexPathAfterUpdate];
          if (v21)
          {
            v22 = v33;
LABEL_20:
            v23 = v21;
            sub_20C3E805C();

            v24 = 0;
          }

          else
          {
            v24 = 1;
            v22 = v33;
          }

          goto LABEL_24;
        }

        if (v20 == 1)
        {
          v21 = [v19 indexPathBeforeUpdate];
          if (v21)
          {
            v22 = v32;
            goto LABEL_20;
          }

          v24 = 1;
          v22 = v32;
LABEL_24:

          (*v37)(v22, v24, 1, v12);
          sub_20C3B1FE8(v22, v11);
          goto LABEL_25;
        }
      }

      (*v37)(v11, 1, 1, v12);
LABEL_25:

      if ((*v36)(v11, 1, v12) == 1)
      {
        sub_20C3C2864(v11);
      }

      else
      {
        v25 = *v35;
        (*v35)(v41, v11, v12);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_20C3E0778(0, v9[2] + 1, 1, v9);
        }

        v27 = v9[2];
        v26 = v9[3];
        if (v27 >= v26 >> 1)
        {
          v9 = sub_20C3E0778(v26 > 1, v27 + 1, 1, v9);
        }

        v9[2] = v27 + 1;
        v25(v9 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v27, v41, v12);
      }

      ++v17;
      if (v6 == v38)
      {
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    ;
  }

  v9 = MEMORY[0x277D84F90];
LABEL_36:
  v28 = sub_20C3C4288(v9);

  *&v31[OBJC_IVAR____TtC13FitnessCoreUI14FloatingLayout_animatableIndexPaths] = v28;
}

id sub_20C3C1BAC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_20C3E804C();
  v9.receiver = v2;
  v9.super_class = type metadata accessor for FloatingLayout();
  v5 = objc_msgSendSuper2(&v9, sel_initialLayoutAttributesForAppearingItemAtIndexPath_, v4);

  v6 = *&v2[OBJC_IVAR____TtC13FitnessCoreUI14FloatingLayout_animatableIndexPaths];

  LOBYTE(a1) = sub_20C3C1CAC(a1, v6);

  if ((a1 & 1) != 0 && v5)
  {
    [v5 setAlpha_];
    CGAffineTransformMakeScale(&v8, 0.2, 0.2);
    [v5 setTransform_];
    [v5 setZIndex_];
  }

  return v5;
}

uint64_t sub_20C3C1CAC(uint64_t a1, uint64_t a2)
{
  v3 = sub_20C3E809C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_20C3C27D4(&unk_2810F2670), v7 = sub_20C3E8BAC(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_20C3C27D4(&qword_27C7ADCD8);
      v15 = sub_20C3E8BDC();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

BOOL sub_20C3C1E9C(uint64_t a1, double a2, double a3)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  sub_20C3E94BC();
  sub_20C39C15C(a2, a3);
  v6 = sub_20C3E950C();
  v7 = -1 << *(a1 + 32);
  v8 = v6 & ~v7;
  if (((*(a1 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  do
  {
    v10 = (*(a1 + 48) + 16 * v8);
    v11 = v10[1];
    v12 = *v10 == a2;
    result = v11 == a3 && v12;
    if (result)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
  }

  while (((*(a1 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  return result;
}

id sub_20C3C2298(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = v5(a2, a3);

  swift_unknownObjectRelease();

  return v6;
}

id sub_20C3C2724()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FloatingLayout();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_20C3C278C()
{
  v1 = (*(*(v0 + 16) + 16))();

  return v1;
}

uint64_t sub_20C3C27D4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_20C3E809C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_20C3C2818()
{
  result = qword_2810F20D0;
  if (!qword_2810F20D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2810F20D0);
  }

  return result;
}

uint64_t sub_20C3C2864(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7AD750);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20C3C28CC(uint64_t a1, __int128 *a2)
{
  v3 = v2;
  v5 = a2[3];
  v6 = a2[5];
  v61 = a2[4];
  v62 = v6;
  v7 = a2[1];
  v57 = *a2;
  v58 = v7;
  v8 = a2[3];
  v10 = *a2;
  v9 = a2[1];
  v59 = a2[2];
  v60 = v8;
  v11 = *v2;
  v12 = a2[5];
  v68 = v61;
  v69 = v12;
  v64 = v10;
  v65 = v9;
  v63 = *(a2 + 12);
  v70 = *(a2 + 12);
  v66 = v59;
  v67 = v5;
  sub_20C3E94BC();
  TabItemDescriptor.hash(into:)();
  v13 = sub_20C3E950C();
  v14 = -1 << *(v11 + 32);
  v15 = v13 & ~v14;
  if ((*(v11 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v16 = ~v14;
    while (1)
    {
      v17 = *(v11 + 48) + 104 * v15;
      v19 = *(v17 + 16);
      v18 = *(v17 + 32);
      v55[0] = *v17;
      v55[1] = v19;
      v55[2] = v18;
      v20 = *(v17 + 48);
      v21 = *(v17 + 64);
      v22 = *(v17 + 80);
      v56 = *(v17 + 96);
      v55[4] = v21;
      v55[5] = v22;
      v55[3] = v20;
      v23 = *v17;
      v24 = *(v17 + 32);
      v49 = *(v17 + 16);
      v50 = v24;
      v48 = v23;
      v25 = *(v17 + 48);
      v26 = *(v17 + 64);
      v27 = *(v17 + 80);
      v54 = *(v17 + 96);
      v52 = v26;
      v53 = v27;
      v51 = v25;
      v28 = _s13FitnessCoreUI17TabItemDescriptorV2eeoiySbAC_ACtFZ_0(&v48, &v57);
      v68 = v52;
      v69 = v53;
      v70 = v54;
      v64 = v48;
      v65 = v49;
      v66 = v50;
      v67 = v51;
      sub_20C39AF38(v55, v46);
      sub_20C39AF94(&v64);
      if (v28)
      {
        break;
      }

      v15 = (v15 + 1) & v16;
      if (((*(v11 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v46[4] = v61;
    v46[5] = v62;
    v47 = v63;
    v46[0] = v57;
    v46[1] = v58;
    v46[2] = v59;
    v46[3] = v60;
    sub_20C39AF94(v46);
    v34 = *(v11 + 48) + 104 * v15;
    v35 = *(v34 + 48);
    v36 = *(v34 + 64);
    v37 = *(v34 + 80);
    v54 = *(v34 + 96);
    v52 = v36;
    v53 = v37;
    v51 = v35;
    v38 = *v34;
    v39 = *(v34 + 32);
    v49 = *(v34 + 16);
    v50 = v39;
    v48 = v38;
    v40 = *(v34 + 16);
    *a1 = *v34;
    *(a1 + 16) = v40;
    v41 = *(v34 + 32);
    v42 = *(v34 + 48);
    v43 = *(v34 + 64);
    v44 = *(v34 + 80);
    *(a1 + 96) = *(v34 + 96);
    *(a1 + 64) = v43;
    *(a1 + 80) = v44;
    *(a1 + 32) = v41;
    *(a1 + 48) = v42;
    sub_20C39AF38(&v48, v45);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v68 = v61;
    v69 = v62;
    v70 = v63;
    v64 = v57;
    v65 = v58;
    v66 = v59;
    v67 = v60;
    *&v48 = *v3;
    sub_20C39AF38(&v64, v55);
    sub_20C3C33D0(&v64, v15, isUniquelyReferenced_nonNull_native);
    *v3 = v48;
    v30 = v62;
    *(a1 + 64) = v61;
    *(a1 + 80) = v30;
    *(a1 + 96) = v63;
    v31 = v58;
    *a1 = v57;
    *(a1 + 16) = v31;
    v32 = v60;
    result = 1;
    *(a1 + 32) = v59;
    *(a1 + 48) = v32;
  }

  return result;
}

uint64_t sub_20C3C2B80(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_20C3E809C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_20C3C27D4(&unk_2810F2670);
  v33 = a2;
  v11 = sub_20C3E8BAC();
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
      sub_20C3C27D4(&qword_27C7ADCD8);
      v21 = sub_20C3E8BDC();
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
    sub_20C3C3624(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

unint64_t sub_20C3C2E38()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7ADCF0);
  result = sub_20C3E90DC();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    for (i = (v7 + 63) >> 6; v9; ++*(v4 + 16))
    {
      v11 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_12:
      v14 = *(v2 + 48) + 104 * (v11 | (v5 << 6));
      v21 = *(v14 + 64);
      v22 = *(v14 + 80);
      v17 = *v14;
      v18 = *(v14 + 16);
      v19 = *(v14 + 32);
      v20 = *(v14 + 48);
      v23 = *(v14 + 96);
      sub_20C3E94BC();
      TabItemDescriptor.hash(into:)();
      sub_20C3E950C();
      result = sub_20C3E90BC();
      *(v4 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v15 = *(v4 + 48) + 104 * result;
      *(v15 + 64) = v21;
      *(v15 + 80) = v22;
      *(v15 + 96) = v23;
      *v15 = v17;
      *(v15 + 16) = v18;
      *(v15 + 32) = v19;
      *(v15 + 48) = v20;
    }

    v12 = v5;
    while (1)
    {
      v5 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        return result;
      }

      if (v5 >= i)
      {
        break;
      }

      v13 = v6[v5];
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_12;
      }
    }

    v16 = 1 << *(v2 + 32);
    if (v16 >= 64)
    {
      bzero((v2 + 56), ((v16 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v16;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_20C3C3088()
{
  v1 = v0;
  v35 = sub_20C3E809C();
  v2 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7ADCE0);
  result = sub_20C3E90DC();
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
      sub_20C3C27D4(&unk_2810F2670);
      result = sub_20C3E8BAC();
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

uint64_t sub_20C3C33D0(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(result + 80);
  v59 = *(result + 64);
  v60 = v7;
  v61 = *(result + 96);
  v8 = *(result + 16);
  v55 = *result;
  v56 = v8;
  v9 = *(result + 48);
  v57 = *(result + 32);
  v58 = v9;
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_20C3C2E38();
  }

  else
  {
    if (v11 > v10)
    {
      result = sub_20C3C38A0();
      goto LABEL_12;
    }

    sub_20C3C3C7C();
  }

  v12 = *v3;
  v13 = *(v6 + 80);
  v52 = *(v6 + 64);
  v53 = v13;
  v54 = *(v6 + 96);
  v14 = *(v6 + 16);
  v48 = *v6;
  v49 = v14;
  v15 = *(v6 + 48);
  v50 = *(v6 + 32);
  v51 = v15;
  sub_20C3E94BC();
  TabItemDescriptor.hash(into:)();
  result = sub_20C3E950C();
  v16 = -1 << *(v12 + 32);
  a2 = result & ~v16;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    do
    {
      v18 = *(v12 + 48) + 104 * a2;
      v20 = *(v18 + 16);
      v19 = *(v18 + 32);
      v46[0] = *v18;
      v46[1] = v20;
      v46[2] = v19;
      v21 = *(v18 + 48);
      v22 = *(v18 + 64);
      v23 = *(v18 + 80);
      v47 = *(v18 + 96);
      v46[4] = v22;
      v46[5] = v23;
      v46[3] = v21;
      v24 = *(v18 + 16);
      v39 = *v18;
      v40 = v24;
      v25 = *(v18 + 32);
      v26 = *(v18 + 48);
      v27 = *(v18 + 64);
      v28 = *(v18 + 80);
      v45 = *(v18 + 96);
      v43 = v27;
      v44 = v28;
      v41 = v25;
      v42 = v26;
      v29 = _s13FitnessCoreUI17TabItemDescriptorV2eeoiySbAC_ACtFZ_0(&v39, &v55);
      v52 = v43;
      v53 = v44;
      v54 = v45;
      v48 = v39;
      v49 = v40;
      v50 = v41;
      v51 = v42;
      sub_20C39AF38(v46, v38);
      result = sub_20C39AF94(&v48);
      if (v29)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v30 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v31 = *(v30 + 48) + 104 * a2;
  v32 = v56;
  *v31 = v55;
  *(v31 + 16) = v32;
  *(v31 + 96) = v61;
  v33 = v60;
  *(v31 + 64) = v59;
  *(v31 + 80) = v33;
  v34 = v58;
  *(v31 + 32) = v57;
  *(v31 + 48) = v34;
  v35 = *(v30 + 16);
  v36 = __OFADD__(v35, 1);
  v37 = v35 + 1;
  if (!v36)
  {
    *(v30 + 16) = v37;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_20C3E940C();
  __break(1u);
  return result;
}

uint64_t sub_20C3C3624(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_20C3E809C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_20C3C3088();
  }

  else
  {
    if (v11 > v10)
    {
      sub_20C3C3A44();
      goto LABEL_12;
    }

    sub_20C3C3E9C();
  }

  v12 = *v3;
  sub_20C3C27D4(&unk_2810F2670);
  v13 = sub_20C3E8BAC();
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
      sub_20C3C27D4(&qword_27C7ADCD8);
      v21 = sub_20C3E8BDC();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
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
LABEL_15:
  result = sub_20C3E940C();
  __break(1u);
  return result;
}

void *sub_20C3C38A0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7ADCF0);
  v2 = *v0;
  v3 = sub_20C3E90CC();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; result = sub_20C39AF38(v24, v23))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = 104 * (v13 | (v8 << 6));
      v17 = (*(v2 + 48) + v16);
      v18 = v17[3];
      v19 = v17[4];
      v20 = v17[5];
      v25 = *(v17 + 12);
      v24[4] = v19;
      v24[5] = v20;
      v24[3] = v18;
      v22 = v17[1];
      v21 = v17[2];
      v24[0] = *v17;
      v24[1] = v22;
      v24[2] = v21;
      memmove((*(v4 + 48) + v16), v17, 0x68uLL);
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 56 + 8 * v8);
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

    *v1 = v4;
  }

  return result;
}

void *sub_20C3C3A44()
{
  v1 = v0;
  v2 = sub_20C3E809C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7ADCE0);
  v6 = *v0;
  v7 = sub_20C3E90CC();
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

unint64_t sub_20C3C3C7C()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7ADCF0);
  result = sub_20C3E90DC();
  v3 = result;
  if (*(v1 + 16))
  {
    v4 = 0;
    v5 = 1 << *(v1 + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(v1 + 56);
    for (i = (v5 + 63) >> 6; v7; ++*(v3 + 16))
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_12:
      v12 = *(v1 + 48) + 104 * (v9 | (v4 << 6));
      v14 = *v12;
      v13 = *(v12 + 16);
      v31 = *(v12 + 32);
      v15 = *(v12 + 48);
      v16 = *(v12 + 64);
      v17 = *(v12 + 80);
      v35 = *(v12 + 96);
      v33 = v16;
      v34 = v17;
      v32 = v15;
      v29 = v14;
      v30 = v13;
      v18 = *(v12 + 80);
      v27[15] = *(v12 + 64);
      v27[16] = v18;
      v28 = *(v12 + 96);
      v19 = *(v12 + 16);
      v27[11] = *v12;
      v27[12] = v19;
      v20 = *(v12 + 48);
      v27[13] = *(v12 + 32);
      v27[14] = v20;
      sub_20C3E94BC();
      sub_20C39AF38(&v29, v27);
      TabItemDescriptor.hash(into:)();
      sub_20C3E950C();
      result = sub_20C3E90BC();
      *(v3 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v21 = *(v3 + 48) + 104 * result;
      v23 = v30;
      v22 = v31;
      *v21 = v29;
      *(v21 + 16) = v23;
      *(v21 + 32) = v22;
      v24 = v32;
      v25 = v33;
      v26 = v34;
      *(v21 + 96) = v35;
      *(v21 + 64) = v25;
      *(v21 + 80) = v26;
      *(v21 + 48) = v24;
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= i)
      {
        goto LABEL_14;
      }

      v11 = *(v1 + 56 + 8 * v4);
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

  else
  {
LABEL_14:

    *v0 = v3;
  }

  return result;
}

uint64_t sub_20C3C3E9C()
{
  v1 = v0;
  v32 = sub_20C3E809C();
  v2 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7ADCE0);
  v6 = sub_20C3E90DC();
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
      sub_20C3C27D4(&unk_2810F2670);
      result = sub_20C3E8BAC();
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

uint64_t sub_20C3C41A4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_20C3C4410();
  result = MEMORY[0x20F2F92F0](v2, &type metadata for TabItemDescriptor, v3);
  v13 = result;
  if (v2)
  {
    v5 = a1 + 32;
    do
    {
      v6 = *(v5 + 80);
      v14[4] = *(v5 + 64);
      v14[5] = v6;
      v15 = *(v5 + 96);
      v7 = *(v5 + 16);
      v14[0] = *v5;
      v14[1] = v7;
      v8 = *(v5 + 48);
      v14[2] = *(v5 + 32);
      v14[3] = v8;
      sub_20C39AF38(v14, v11);
      sub_20C3C28CC(v9, v14);
      v11[4] = v9[4];
      v11[5] = v9[5];
      v12 = v10;
      v11[0] = v9[0];
      v11[1] = v9[1];
      v11[2] = v9[2];
      v11[3] = v9[3];
      sub_20C39AF94(v11);
      v5 += 104;
      --v2;
    }

    while (v2);
    return v13;
  }

  return result;
}

uint64_t sub_20C3C4288(uint64_t a1)
{
  v2 = sub_20C3E809C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_20C3C27D4(&unk_2810F2670);
  result = MEMORY[0x20F2F92F0](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v6, v15, v2);
      sub_20C3C2B80(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

unint64_t sub_20C3C4410()
{
  result = qword_2810F23F8[0];
  if (!qword_2810F23F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2810F23F8);
  }

  return result;
}

uint64_t ArtworkCandidate.cropCode.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 36));

  return v2;
}

uint64_t ArtworkCandidate.predicateDescriptor.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 40));

  return v2;
}

uint64_t ArtworkCandidate.init(artwork:cropCode:predicateDescriptor:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  (*(*(a5 - 8) + 32))(a6, a1, a5);
  result = type metadata accessor for ArtworkCandidate();
  v11 = (a6 + *(result + 36));
  *v11 = a2;
  v11[1] = a3;
  *(a6 + *(result + 40)) = a4;
  return result;
}

uint64_t sub_20C3C45A8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6B726F77747261 && a2 == 0xE700000000000000;
  if (v4 || (sub_20C3E93EC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65646F43706F7263 && a2 == 0xE800000000000000 || (sub_20C3E93EC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x800000020C3F3890 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_20C3E93EC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_20C3C4700(unsigned __int8 a1)
{
  sub_20C3E94BC();
  MEMORY[0x20F2F98F0](a1);
  return sub_20C3E950C();
}

uint64_t sub_20C3C4748(char a1)
{
  if (!a1)
  {
    return 0x6B726F77747261;
  }

  if (a1 == 1)
  {
    return 0x65646F43706F7263;
  }

  return 0xD000000000000013;
}

uint64_t sub_20C3C47D0()
{
  sub_20C3E94BC();
  sub_20C3C46D8(v2, *v0);
  return sub_20C3E950C();
}

uint64_t sub_20C3C4824@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_20C3C45A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_20C3C4854@<X0>(_BYTE *a1@<X8>)
{
  result = sub_20C3C55B4();
  *a1 = result;
  return result;
}

uint64_t sub_20C3C4880(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_20C3C48D4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t ArtworkCandidate.encode(to:)(void *a1, uint64_t a2)
{
  v12 = a2;
  v14 = *(a2 + 16);
  type metadata accessor for ArtworkCandidate.CodingKeys();
  swift_getWitnessTable();
  v3 = sub_20C3E93AC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v7 = v13;
  sub_20C3E952C();
  v19 = 0;
  v8 = v15;
  sub_20C3E939C();
  if (!v8)
  {
    v9 = v12;
    v18 = 1;
    sub_20C3E935C();
    v16 = *(v7 + *(v9 + 40));
    v17 = 2;
    sub_20C3C4B30();
    sub_20C3E939C();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_20C3C4B30()
{
  result = qword_27C7ADD00;
  if (!qword_27C7ADD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7ADD00);
  }

  return result;
}

uint64_t ArtworkCandidate.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25 = a4;
  v27 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v29 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ArtworkCandidate.CodingKeys();
  swift_getWitnessTable();
  v30 = sub_20C3E933C();
  v26 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v9 = &v24 - v8;
  v28 = a3;
  v10 = type metadata accessor for ArtworkCandidate();
  v24 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v31 = v9;
  v13 = v32;
  sub_20C3E951C();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v14 = v26;
  v15 = v27;
  v32 = v10;
  v36 = 0;
  sub_20C3E931C();
  v16 = *(v15 + 32);
  v17 = v12;
  v16(v12, v29, a2);
  v35 = 1;
  v18 = sub_20C3E92DC();
  v19 = v32;
  v20 = &v17[*(v32 + 36)];
  *v20 = v18;
  v20[1] = v21;
  v34 = 2;
  sub_20C3C4F7C();
  sub_20C3E931C();
  (*(v14 + 8))(v31, v30);
  *&v17[*(v19 + 40)] = v33;
  v22 = v24;
  (*(v24 + 16))(v25, v17, v19);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return (*(v22 + 8))(v17, v19);
}

unint64_t sub_20C3C4F7C()
{
  result = qword_27C7ADD08[0];
  if (!qword_27C7ADD08[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27C7ADD08);
  }

  return result;
}

uint64_t static ArtworkCandidate.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (sub_20C3E8BDC())
  {
    v4 = *(type metadata accessor for ArtworkCandidate() + 36);
    v5 = (a1 + v4);
    v6 = *(a1 + v4 + 8);
    v7 = (a2 + v4);
    v8 = v7[1];
    if (v6)
    {
      if (v8)
      {
        v9 = *v5 == *v7 && v6 == v8;
        if (v9 || (sub_20C3E93EC() & 1) != 0)
        {
LABEL_9:

          JUMPOUT(0x20F2F8510);
        }
      }
    }

    else if (!v8)
    {
      goto LABEL_9;
    }
  }

  return 0;
}

uint64_t ArtworkCandidate.hash(into:)(uint64_t a1, uint64_t a2)
{
  sub_20C3E8BBC();
  if (*(v2 + *(a2 + 36) + 8))
  {
    sub_20C3E94DC();
    sub_20C3E8C7C();
  }

  else
  {
    sub_20C3E94DC();
  }

  v5 = *(v2 + *(a2 + 40));

  return MEMORY[0x282161538](a1, v5);
}

uint64_t ArtworkCandidate.hashValue.getter(uint64_t a1)
{
  sub_20C3E94BC();
  ArtworkCandidate.hash(into:)(v3, a1);
  return sub_20C3E950C();
}

uint64_t sub_20C3C51D0(uint64_t a1, uint64_t a2)
{
  sub_20C3E94BC();
  ArtworkCandidate.hash(into:)(v4, a2);
  return sub_20C3E950C();
}

uint64_t sub_20C3C523C(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFE)
    {
      return (*(v4 + 48))();
    }

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    if ((v17 + 1) >= 2)
    {
      return v17;
    }

    else
    {
      return 0;
    }
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

unsigned int *sub_20C3C5388(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v13)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFE)
      {
        v19 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
        if (a2 > 0x7FFFFFFE)
        {
          *v19 = 0;
          v19[1] = 0;
          *v19 = a2 - 0x7FFFFFFF;
        }

        else
        {
          v19[1] = a2;
        }
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

uint64_t sub_20C3C55D4()
{
  if (*v0)
  {
    return 0x6C61636974726576;
  }

  else
  {
    return 0x746E6F7A69726F68;
  }
}

uint64_t sub_20C3C5614@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746E6F7A69726F68 && a2 == 0xEA00000000006C61;
  if (v6 || (sub_20C3E93EC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C61636974726576 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_20C3E93EC();

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

uint64_t sub_20C3C5704(uint64_t a1)
{
  v2 = sub_20C3C5B1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C3C5740(uint64_t a1)
{
  v2 = sub_20C3C5B1C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C3C577C(uint64_t a1)
{
  v2 = sub_20C3C5BC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C3C57B8(uint64_t a1)
{
  v2 = sub_20C3C5BC4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C3C57F4(uint64_t a1)
{
  v2 = sub_20C3C5B70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C3C5830(uint64_t a1)
{
  v2 = sub_20C3C5B70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GridAxis.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7ADD90);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x28223BE20](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7ADD98);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7ADDA0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C3C5B1C();
  sub_20C3E952C();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_20C3C5B70();
    v14 = v18;
    sub_20C3E934C();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_20C3C5BC4();
    sub_20C3E934C();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

unint64_t sub_20C3C5B1C()
{
  result = qword_27C7ADDA8;
  if (!qword_27C7ADDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7ADDA8);
  }

  return result;
}

unint64_t sub_20C3C5B70()
{
  result = qword_27C7ADDB0;
  if (!qword_27C7ADDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7ADDB0);
  }

  return result;
}

unint64_t sub_20C3C5BC4()
{
  result = qword_27C7ADDB8;
  if (!qword_27C7ADDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7ADDB8);
  }

  return result;
}

uint64_t GridAxis.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7ADDC0);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7ADDC8);
  v26 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7ADDD0);
  v30 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C3C5B1C();
  v12 = v31;
  sub_20C3E951C();
  if (v12)
  {
    v13 = a1;
  }

  else
  {
    v25 = v6;
    v31 = a1;
    v14 = v28;
    v15 = v29;
    v16 = sub_20C3E932C();
    v17 = (2 * *(v16 + 16)) | 1;
    v32 = v16;
    v33 = v16 + 32;
    v34 = 0;
    v35 = v17;
    v18 = sub_20C39FE10();
    if (v18 == 2 || v34 != v35 >> 1)
    {
      v20 = sub_20C3E915C();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7AD840);
      *v22 = &type metadata for GridAxis;
      sub_20C3E92CC();
      sub_20C3E914C();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D84160], v20);
      swift_willThrow();
      (*(v30 + 8))(v11, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = v18;
      if (v18)
      {
        v37 = 1;
        sub_20C3C5B70();
        sub_20C3E92BC();
        v19 = v30;
        (*(v27 + 8))(v5, v14);
      }

      else
      {
        v37 = 0;
        sub_20C3C5BC4();
        sub_20C3E92BC();
        v19 = v30;
        (*(v26 + 8))(v8, v25);
      }

      (*(v19 + 8))(v11, v9);
      swift_unknownObjectRelease();
      *v15 = v36 & 1;
    }

    v13 = v31;
  }

  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t GridAxis.hashValue.getter()
{
  v1 = *v0;
  sub_20C3E94BC();
  MEMORY[0x20F2F98F0](v1);
  return sub_20C3E950C();
}

unint64_t sub_20C3C617C()
{
  result = qword_27C7ADDD8;
  if (!qword_27C7ADDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7ADDD8);
  }

  return result;
}

unint64_t sub_20C3C6214()
{
  result = qword_27C7ADDE0;
  if (!qword_27C7ADDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7ADDE0);
  }

  return result;
}

unint64_t sub_20C3C626C()
{
  result = qword_27C7ADDE8;
  if (!qword_27C7ADDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7ADDE8);
  }

  return result;
}

unint64_t sub_20C3C62C4()
{
  result = qword_27C7ADDF0;
  if (!qword_27C7ADDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7ADDF0);
  }

  return result;
}

unint64_t sub_20C3C631C()
{
  result = qword_27C7ADDF8;
  if (!qword_27C7ADDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7ADDF8);
  }

  return result;
}

unint64_t sub_20C3C6374()
{
  result = qword_27C7ADE00;
  if (!qword_27C7ADE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7ADE00);
  }

  return result;
}

unint64_t sub_20C3C63CC()
{
  result = qword_27C7ADE08;
  if (!qword_27C7ADE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7ADE08);
  }

  return result;
}

unint64_t sub_20C3C6424()
{
  result = qword_27C7ADE10;
  if (!qword_27C7ADE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7ADE10);
  }

  return result;
}

char *sub_20C3C6498(double a1, double a2, double a3, double a4)
{
  v9 = [objc_allocWithZone(MEMORY[0x277D75F68]) init];
  v10 = OBJC_IVAR____TtC13FitnessCoreUI27PlatterlessNonScalingButton_floatingContentView;
  *&v4[OBJC_IVAR____TtC13FitnessCoreUI27PlatterlessNonScalingButton_floatingContentView] = v9;
  [v9 setContentOpaque_];
  [*&v4[v10] setContentScaleFactor_];
  v11 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v12 = OBJC_IVAR____TtC13FitnessCoreUI27PlatterlessNonScalingButton_titleLabel;
  *&v4[OBJC_IVAR____TtC13FitnessCoreUI27PlatterlessNonScalingButton_titleLabel] = v11;
  v13 = objc_opt_self();
  v14 = *MEMORY[0x277D76988];
  v15 = v11;
  v16 = [v13 preferredFontForTextStyle_];
  [v15 setFont_];

  [*&v4[v12] setTextAlignment_];
  [*&v4[v12] setNumberOfLines_];
  v23.receiver = v4;
  v23.super_class = type metadata accessor for PlatterlessNonScalingButton();
  v17 = objc_msgSendSuper2(&v23, sel_initWithFrame_, a1, a2, a3, a4);
  v18 = OBJC_IVAR____TtC13FitnessCoreUI27PlatterlessNonScalingButton_floatingContentView;
  v19 = *&v17[OBJC_IVAR____TtC13FitnessCoreUI27PlatterlessNonScalingButton_floatingContentView];
  v20 = v17;
  [v20 addSubview_];
  result = [*&v17[v18] contentView];
  if (result)
  {
    v22 = result;
    [result addSubview_];

    return v20;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_20C3C6B98(uint64_t a1, void *a2)
{
  v11.receiver = v2;
  v11.super_class = type metadata accessor for PlatterlessNonScalingButton();
  objc_msgSendSuper2(&v11, sel_didUpdateFocusInContext_withAnimationCoordinator_, a1, a2);
  v5 = *&v2[OBJC_IVAR____TtC13FitnessCoreUI27PlatterlessNonScalingButton_floatingContentView];
  if ([v2 isFocused])
  {
    v6 = 8;
  }

  else
  {
    v6 = 0;
  }

  [v5 setControlState:v6 | objc_msgSend(v2 withAnimationCoordinator:{sel_isHighlighted), a2}];
  v7 = swift_allocObject();
  *(v7 + 16) = v2;
  v10[4] = sub_20C3C7014;
  v10[5] = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_20C3AFF18;
  v10[3] = &block_descriptor_3;
  v8 = _Block_copy(v10);
  v9 = v2;

  [a2 addCoordinatedAnimations:v8 completion:0];
  _Block_release(v8);
}

void sub_20C3C6CEC(char *a1)
{
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = *&a1[OBJC_IVAR____TtC13FitnessCoreUI27PlatterlessNonScalingButton_titleLabel];
  v3 = [a1 isFocused];
  v4 = objc_opt_self();
  v5 = &selRef_blackColor;
  if (!v3)
  {
    v5 = &selRef_whiteColor;
  }

  v6 = [v4 *v5];
  [v2 setTextColor_];
}

uint64_t sub_20C3C6F00()
{
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }
}

id PlatterlessNonScalingButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlatterlessNonScalingButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id FloatingCollectionView.__allocating_init(frame:collectionViewLayout:)(void *a1, double a2, double a3, double a4, double a5)
{
  v7 = [objc_allocWithZone(v5) initWithFrame:a1 collectionViewLayout:{a2, a3, a4, a5}];

  return v7;
}

uint64_t sub_20C3C70B0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC13FitnessCoreUI22FloatingCollectionView_onLayoutUpdate);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_20C3C78E0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_20C38EF20(v4);
}

uint64_t sub_20C3C7150(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_20C3C78A8;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC13FitnessCoreUI22FloatingCollectionView_onLayoutUpdate);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_20C38EF20(v3);
  return sub_20C38F958(v8);
}

uint64_t sub_20C3C7218()
{
  v1 = (v0 + OBJC_IVAR____TtC13FitnessCoreUI22FloatingCollectionView_onLayoutUpdate);
  swift_beginAccess();
  v2 = *v1;
  sub_20C38EF20(*v1);
  return v2;
}

uint64_t sub_20C3C7274(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC13FitnessCoreUI22FloatingCollectionView_onLayoutUpdate);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_20C38F958(v6);
}

id FloatingCollectionView.init(frame:collectionViewLayout:)(void *a1, double a2, double a3, double a4, double a5)
{
  v11 = &v5[OBJC_IVAR____TtC13FitnessCoreUI22FloatingCollectionView_onLayoutUpdate];
  v12 = type metadata accessor for FloatingCollectionView();
  *v11 = 0;
  *(v11 + 1) = 0;
  v15.receiver = v5;
  v15.super_class = v12;
  v13 = objc_msgSendSuper2(&v15, sel_initWithFrame_collectionViewLayout_, a1, a2, a3, a4, a5);

  return v13;
}

id FloatingCollectionView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id FloatingCollectionView.init(coder:)(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC13FitnessCoreUI22FloatingCollectionView_onLayoutUpdate];
  v4 = type metadata accessor for FloatingCollectionView();
  *v3 = 0;
  *(v3 + 1) = 0;
  v7.receiver = v1;
  v7.super_class = v4;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

id FloatingCollectionView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FloatingCollectionView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20C3C78A8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

double static LayoutEdgeInsets.zero.getter@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

void LayoutEdgeInsets.init(top:leading:bottom:trailing:)(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  *a1 = a4;
  a1[1] = a3;
  a1[2] = a2;
  a1[3] = a5;
}

void LayoutEdgeInsets.init(uniform:)(double *a1@<X8>, double a2@<D0>)
{
  *a1 = a2;
  a1[1] = a2;
  a1[2] = a2;
  a1[3] = a2;
}

uint64_t sub_20C3C7950()
{
  v1 = 0x6D6F74746F62;
  v2 = 7368564;
  if (*v0 != 2)
  {
    v2 = 0x676E696C69617274;
  }

  if (*v0)
  {
    v1 = 0x676E696461656CLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_20C3C79C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_20C3C8288(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_20C3C79E8(uint64_t a1)
{
  v2 = sub_20C3C7C7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C3C7A24(uint64_t a1)
{
  v2 = sub_20C3C7C7C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LayoutEdgeInsets.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7ADE30);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  v9 = *v1;
  v8 = v1[1];
  v11 = v1[2];
  v10 = v1[3];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C3C7C7C();
  sub_20C3E952C();
  v14 = v9;
  HIBYTE(v13) = 0;
  sub_20C391770();
  sub_20C3E939C();
  if (!v2)
  {
    v14 = v8;
    HIBYTE(v13) = 1;
    sub_20C3E939C();
    v14 = v11;
    HIBYTE(v13) = 2;
    sub_20C3E939C();
    v14 = v10;
    HIBYTE(v13) = 3;
    sub_20C3E939C();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_20C3C7C7C()
{
  result = qword_27C7ADE38;
  if (!qword_27C7ADE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7ADE38);
  }

  return result;
}

uint64_t LayoutEdgeInsets.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7ADE40);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C3C7C7C();
  sub_20C3E951C();
  if (!v2)
  {
    HIBYTE(v14) = 0;
    sub_20C391AA8();
    sub_20C3E931C();
    v9 = v15;
    HIBYTE(v14) = 1;
    sub_20C3E931C();
    v10 = v15;
    HIBYTE(v14) = 2;
    sub_20C3E931C();
    v12 = v15;
    HIBYTE(v14) = 3;
    sub_20C3E931C();
    (*(v6 + 8))(v8, v5);
    v13 = v15;
    *a2 = v9;
    a2[1] = v10;
    a2[2] = v12;
    a2[3] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t LayoutEdgeInsets.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x20F2F9920](*&v1);
  if (v2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v2;
  }

  MEMORY[0x20F2F9920](*&v5);
  if (v3 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v3;
  }

  MEMORY[0x20F2F9920](*&v6);
  if (v4 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v4;
  }

  return MEMORY[0x20F2F9920](*&v7);
}

uint64_t LayoutEdgeInsets.hashValue.getter()
{
  sub_20C3E94BC();
  LayoutEdgeInsets.hash(into:)();
  return sub_20C3E950C();
}

uint64_t sub_20C3C8030()
{
  sub_20C3E94BC();
  LayoutEdgeInsets.hash(into:)();
  return sub_20C3E950C();
}

uint64_t sub_20C3C8080()
{
  sub_20C3E94BC();
  LayoutEdgeInsets.hash(into:)();
  return sub_20C3E950C();
}

unint64_t sub_20C3C810C()
{
  result = qword_27C7ADE48;
  if (!qword_27C7ADE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7ADE48);
  }

  return result;
}

unint64_t sub_20C3C8184()
{
  result = qword_27C7ADE50;
  if (!qword_27C7ADE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7ADE50);
  }

  return result;
}

unint64_t sub_20C3C81DC()
{
  result = qword_27C7ADE58;
  if (!qword_27C7ADE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7ADE58);
  }

  return result;
}

unint64_t sub_20C3C8234()
{
  result = qword_27C7ADE60;
  if (!qword_27C7ADE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7ADE60);
  }

  return result;
}

uint64_t sub_20C3C8288(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D6F74746F62 && a2 == 0xE600000000000000;
  if (v4 || (sub_20C3E93EC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E696461656CLL && a2 == 0xE700000000000000 || (sub_20C3E93EC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7368564 && a2 == 0xE300000000000000 || (sub_20C3E93EC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x676E696C69617274 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_20C3E93EC();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

CGSize __swiftcall TabItemSize.selectionSize(compatibleWith:)(UITraitCollection_optional compatibleWith)
{
  isa = compatibleWith.value.super.isa;
  v4 = v2[1];
  v10 = *v2;
  v11 = v4;
  v12 = v2[2];
  v9 = 15;
  v7 = TabItemSize.minimumSize(respecting:compatibleWith:)(&v9, *(&v1 - 8));
  height = v7.height;
  width = v7.width;
  result.height = height;
  result.width = width;
  return result;
}

double TabItemSize.paddingToItem(ofSize:at:)(uint64_t a1, _BYTE *a2)
{
  if (*a2 > 1u)
  {
    if (*a2 == 2)
    {
      v3 = v2[2];
      result = *(a1 + 32);
    }

    else
    {
      v3 = v2[5];
      result = *(a1 + 24);
    }
  }

  else if (*a2)
  {
    v3 = v2[3];
    result = *(a1 + 40);
  }

  else
  {
    v3 = v2[4];
    result = *(a1 + 16);
  }

  if (*(a1 + 48))
  {
    result = 0.0;
  }

  if (result <= v3)
  {
    return v3;
  }

  return result;
}

CGSize __swiftcall TabItemSize.minimumSizeBetween(leadingItemSize:trailingItemSize:respecting:compatibleWith:)(FitnessCoreUI::TabItemSize_optional *leadingItemSize, FitnessCoreUI::TabItemSize_optional *trailingItemSize, FitnessCoreUI::TabItemEdge::Set respecting, UITraitCollection_optional compatibleWith)
{
  isa = compatibleWith.value.super.isa;
  leading = trailingItemSize->value.padding.leading;
  v7 = *respecting.rawValue;
  v9 = *v4;
  v8 = v4[1];
  v10 = v4[5];
  if ((*respecting.rawValue & 2) != 0)
  {
    trailing = leadingItemSize->value.padding.trailing;
    v12 = v4[3];
    v13 = 0.0;
    if (v12 >= 0.0)
    {
      v13 = v4[3];
    }

    if (trailing <= v12)
    {
      trailing = v4[3];
    }

    if (leadingItemSize->is_nil)
    {
      trailing = v13;
    }

    v9 = v9 + trailing;
  }

  v14 = 0.0;
  if (v10 >= 0.0)
  {
    v14 = v4[5];
  }

  if (leading <= v10)
  {
    leading = v4[5];
  }

  if (trailingItemSize->is_nil)
  {
    leading = v14;
  }

  v15 = v9 + leading;
  if ((v7 & 8) != 0)
  {
    v16 = v15;
  }

  else
  {
    v16 = v9;
  }

  if ((v7 & 4) != 0)
  {
    v8 = v8 + v4[2];
  }

  if (v7)
  {
    v17 = v8 + v4[4];
  }

  else
  {
    v17 = v8;
  }

  if (compatibleWith.value.super.isa)
  {
    [(objc_class *)compatibleWith.value.super.isa displayScale];
    if (v18 > 0.0)
    {
      v16 = ceil(v16 * v18) / v18;
    }

    [(objc_class *)isa displayScale];
    if (v19 > 0.0)
    {
      v17 = ceil(v17 * v19) / v19;
    }
  }

  v20 = v16;
  v21 = v17;
  result.height = v21;
  result.width = v20;
  return result;
}

CGSize __swiftcall TabItemSize.minimumSize(respecting:compatibleWith:)(FitnessCoreUI::TabItemEdge::Set respecting, UITraitCollection_optional compatibleWith)
{
  v3 = *respecting.rawValue;
  v4 = *v2;
  if ((*respecting.rawValue & 2) != 0)
  {
    v4 = *v2 + v2[3];
  }

  if ((v3 & 8) != 0)
  {
    v5 = v4 + v2[5];
  }

  else
  {
    v5 = v4;
  }

  v6 = v2[1] + v2[2];
  if ((v3 & 4) == 0)
  {
    v6 = v2[1];
  }

  if (v3)
  {
    v7 = v6 + v2[4];
  }

  else
  {
    v7 = v6;
  }

  if (compatibleWith.value.super.isa)
  {
    isa = compatibleWith.value.super.isa;
    [(objc_class *)compatibleWith.value.super.isa displayScale];
    if (v9 > 0.0)
    {
      v5 = ceil(v5 * v9) / v9;
    }

    [(objc_class *)isa displayScale];
    if (v10 > 0.0)
    {
      v7 = ceil(v7 * v10) / v10;
    }
  }

  v11 = v5;
  v12 = v7;
  result.height = v12;
  result.width = v11;
  return result;
}

uint64_t sub_20C3C8664()
{
  if (*v0)
  {
    return 0x676E6964646170;
  }

  else
  {
    return 0x53746E65746E6F63;
  }
}

uint64_t sub_20C3C86A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x53746E65746E6F63 && a2 == 0xEB00000000657A69;
  if (v6 || (sub_20C3E93EC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x676E6964646170 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_20C3E93EC();

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

uint64_t sub_20C3C8788(uint64_t a1)
{
  v2 = sub_20C3C8A14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C3C87C4(uint64_t a1)
{
  v2 = sub_20C3C8A14();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TabItemSize.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7ADE68);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = *(v1 + 1);
  v12 = *(v1 + 2);
  v13 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C3C8A14();
  sub_20C3E952C();
  *&v14 = v8;
  *(&v14 + 1) = v9;
  v16 = 0;
  type metadata accessor for CGSize(0);
  sub_20C3C8CB8(&qword_27C7ADE78, type metadata accessor for CGSize);
  sub_20C3E939C();
  if (!v2)
  {
    v15 = v12;
    v14 = v13;
    v16 = 1;
    type metadata accessor for NSDirectionalEdgeInsets(0);
    sub_20C3C8CB8(&qword_27C7ADE80, type metadata accessor for NSDirectionalEdgeInsets);
    sub_20C3E939C();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_20C3C8A14()
{
  result = qword_27C7ADE70;
  if (!qword_27C7ADE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7ADE70);
  }

  return result;
}

uint64_t TabItemSize.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7ADE88);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C3C8A14();
  sub_20C3E951C();
  if (!v2)
  {
    type metadata accessor for CGSize(0);
    v14 = 0;
    sub_20C3C8CB8(&qword_27C7ADE90, type metadata accessor for CGSize);
    sub_20C3E931C();
    v9 = v13[0];
    type metadata accessor for NSDirectionalEdgeInsets(0);
    v14 = 1;
    sub_20C3C8CB8(&qword_27C7ADE98, type metadata accessor for NSDirectionalEdgeInsets);
    sub_20C3E931C();
    (*(v6 + 8))(v8, v5);
    v10 = v13[0];
    v11 = v13[1];
    *a2 = v9;
    a2[1] = v10;
    a2[2] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_20C3C8CB8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t TabItemSize.hash(into:)()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  sub_20C39C15C(*v0, v0[1]);

  return NSDirectionalEdgeInsets.hash(into:)(v1, v2, v3, v4);
}

uint64_t TabItemSize.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_20C3E94BC();
  sub_20C39C15C(v1, v2);
  NSDirectionalEdgeInsets.hash(into:)(v3, v4, v5, v6);
  return sub_20C3E950C();
}

uint64_t sub_20C3C8E1C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_20C3E94BC();
  sub_20C39C15C(v1, v2);
  NSDirectionalEdgeInsets.hash(into:)(v3, v4, v5, v6);
  return sub_20C3E950C();
}

uint64_t sub_20C3C8EA0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  sub_20C39C15C(*v0, v0[1]);

  return NSDirectionalEdgeInsets.hash(into:)(v1, v2, v3, v4);
}

uint64_t sub_20C3C8F04()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_20C3E94BC();
  sub_20C39C15C(v1, v2);
  NSDirectionalEdgeInsets.hash(into:)(v3, v4, v5, v6);
  return sub_20C3E950C();
}

uint64_t _s13FitnessCoreUI11TabItemSizeV2eeoiySbAC_ACtFZ_0(float64x2_t *a1, float64x2_t *a2)
{
  if (a1->f64[0] == a2->f64[0] && a1->f64[1] == a2->f64[1])
  {
    return vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(a1[1], a2[1]), vceqq_f64(a1[2], a2[2])))) & 1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_20C3C8FD0()
{
  result = qword_27C7ADEA0;
  if (!qword_27C7ADEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7ADEA0);
  }

  return result;
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

uint64_t sub_20C3C9038(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20C3C9058(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 48) = v3;
  return result;
}

unint64_t sub_20C3C90B4()
{
  result = qword_27C7ADEA8;
  if (!qword_27C7ADEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7ADEA8);
  }

  return result;
}

unint64_t sub_20C3C910C()
{
  result = qword_27C7ADEB0;
  if (!qword_27C7ADEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7ADEB0);
  }

  return result;
}

unint64_t sub_20C3C9164()
{
  result = qword_27C7ADEB8;
  if (!qword_27C7ADEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7ADEB8);
  }

  return result;
}

void sub_20C3C91B8(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC13FitnessCoreUI19FloatingTabItemCell_sizingTraitCollection;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *sub_20C3C9218()
{
  v1 = OBJC_IVAR____TtC13FitnessCoreUI19FloatingTabItemCell_sizingTraitCollection;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_20C3C9264(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13FitnessCoreUI19FloatingTabItemCell_sizingTraitCollection;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id FloatingTabItemCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

char *FloatingTabItemCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7ADEC8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v100 - v11;
  *&v5[OBJC_IVAR____TtC13FitnessCoreUI19FloatingTabItemCell_sizingTraitCollection] = 0;
  v13 = OBJC_IVAR____TtC13FitnessCoreUI19FloatingTabItemCell_imageView;
  *&v5[v13] = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v14 = &v5[OBJC_IVAR____TtC13FitnessCoreUI19FloatingTabItemCell_layout];
  *v14 = xmmword_20C3EEC90;
  *(v14 + 1) = xmmword_20C3EEC90;
  v15 = OBJC_IVAR____TtC13FitnessCoreUI19FloatingTabItemCell_stackView;
  *&v5[v15] = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  v16 = OBJC_IVAR____TtC13FitnessCoreUI19FloatingTabItemCell_titleLabel;
  *&v5[v16] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v17 = &v5[OBJC_IVAR____TtC13FitnessCoreUI19FloatingTabItemCell_currentItemDescriptor];
  v18 = type metadata accessor for FloatingTabItemCell();
  *v17 = 0u;
  *(v17 + 1) = 0u;
  *(v17 + 2) = 0u;
  *(v17 + 3) = 0u;
  *(v17 + 4) = 0u;
  *(v17 + 5) = 0u;
  *(v17 + 12) = 0;
  v106.receiver = v5;
  v106.super_class = v18;
  v19 = objc_msgSendSuper2(&v106, sel_initWithFrame_, a1, a2, a3, a4);
  v20 = *MEMORY[0x277D76548];
  v21 = v19;
  v22 = [v21 accessibilityTraits];
  if ((v20 & ~v22) != 0)
  {
    v23 = v20;
  }

  else
  {
    v23 = 0;
  }

  [v21 setAccessibilityTraits_];
  [v21 setIsAccessibilityElement_];
  v24 = v21;
  sub_20C3E822C();
  v25 = sub_20C3E823C();
  (*(*(v25 - 8) + 56))(v12, 0, 1, v25);
  sub_20C3E8FFC();
  v26 = [v24 contentView];
  [v26 setTranslatesAutoresizingMaskIntoConstraints_];

  v27 = OBJC_IVAR____TtC13FitnessCoreUI19FloatingTabItemCell_stackView;
  [*&v24[OBJC_IVAR____TtC13FitnessCoreUI19FloatingTabItemCell_stackView] setAlignment_];
  [*&v24[v27] setAxis_];
  [*&v24[v27] setDistribution_];
  [*&v24[v27] setSpacing_];
  [*&v24[v27] setTranslatesAutoresizingMaskIntoConstraints_];
  v28 = *&v24[v27];
  type metadata accessor for UILayoutPriority(0);
  v103 = 1065353216;
  v104 = 1148846080;
  v29 = sub_20C3CB348(&qword_2810F2118, type metadata accessor for UILayoutPriority);
  v30 = v28;
  sub_20C3E813C();
  LODWORD(v31) = v105;
  [v30 setContentCompressionResistancePriority:0 forAxis:v31];

  v32 = *&v24[v27];
  v103 = 1065353216;
  v104 = 1148846080;
  v33 = v32;
  sub_20C3E813C();
  LODWORD(v34) = v105;
  [v33 setContentCompressionResistancePriority:1 forAxis:v34];

  v35 = [v24 contentView];
  [v35 addSubview_];

  v36 = OBJC_IVAR____TtC13FitnessCoreUI19FloatingTabItemCell_imageView;
  [*&v24[OBJC_IVAR____TtC13FitnessCoreUI19FloatingTabItemCell_imageView] setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v24[v36] setContentMode_];
  v37 = *&v24[v36];
  v103 = 1065353216;
  v104 = 1148846080;
  v38 = v37;
  sub_20C3E813C();
  LODWORD(v39) = v105;
  [v38 setContentCompressionResistancePriority:0 forAxis:v39];

  v40 = *&v24[v36];
  v103 = 1065353216;
  v104 = 1148846080;
  v41 = v40;
  sub_20C3E813C();
  LODWORD(v42) = v105;
  [v41 setContentCompressionResistancePriority:1 forAxis:v42];

  [*&v24[v27] addArrangedSubview_];
  v43 = OBJC_IVAR____TtC13FitnessCoreUI19FloatingTabItemCell_titleLabel;
  [*&v24[OBJC_IVAR____TtC13FitnessCoreUI19FloatingTabItemCell_titleLabel] setNumberOfLines_];
  [*&v24[v43] setTranslatesAutoresizingMaskIntoConstraints_];
  v44 = *&v24[v43];
  v103 = 1065353216;
  v104 = 1148846080;
  v45 = v44;
  sub_20C3E813C();
  LODWORD(v46) = v105;
  [v45 setContentCompressionResistancePriority:0 forAxis:v46];

  v47 = *&v24[v43];
  v103 = 1065353216;
  v104 = 1148846080;
  v48 = v47;
  sub_20C3E813C();
  LODWORD(v49) = v105;
  [v48 setContentCompressionResistancePriority:1 forAxis:v49];

  [*&v24[v27] addArrangedSubview_];
  v101 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7AD8A0);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_20C3EECA0;
  v51 = [v24 contentView];
  v52 = [v51 leadingAnchor];

  v53 = [v24 &selRef_traitCollection + 1];
  v54 = [v52 constraintEqualToAnchor_];

  *(v50 + 32) = v54;
  v55 = [v24 contentView];
  v56 = [v55 trailingAnchor];

  v57 = [v24 &selRef_isEnabled + 4];
  v58 = [v56 constraintEqualToAnchor_];

  v103 = 1065353216;
  v104 = 1148846080;
  v100[1] = v29;
  sub_20C3E813C();
  LODWORD(v59) = v105;
  [v58 setPriority_];
  *(v50 + 40) = v58;
  v60 = [v24 contentView];
  v61 = [v60 topAnchor];

  v62 = [v24 &selRef_setNumberOfPages_];
  v63 = [v61 constraintEqualToAnchor_];

  *(v50 + 48) = v63;
  v64 = [v24 contentView];
  v65 = [v64 bottomAnchor];

  v66 = [v24 &selRef_collectionView_didUnhighlightItemAtIndexPath_ + 5];
  v67 = [v65 constraintEqualToAnchor_];

  v103 = 1065353216;
  v104 = 1148846080;
  sub_20C3E813C();
  LODWORD(v68) = v105;
  [v67 setPriority_];
  *(v50 + 56) = v67;
  v69 = [*&v24[v27] leadingAnchor];
  v70 = [v24 contentView];
  v71 = [v70 leadingAnchor];

  v72 = [v69 constraintEqualToAnchor:v71 constant:15.0];
  *(v50 + 64) = v72;
  v73 = [*&v24[v27] trailingAnchor];
  v74 = [v24 contentView];
  v75 = [v74 trailingAnchor];

  v76 = [v73 constraintEqualToAnchor:v75 constant:-15.0];
  *(v50 + 72) = v76;
  v77 = [*&v24[v27] centerXAnchor];
  v78 = [v24 &selRef_setAlwaysBounceVertical_];
  v79 = [v78 centerXAnchor];

  v80 = [v77 constraintEqualToAnchor_];
  *(v50 + 80) = v80;
  v81 = [*&v24[v27] topAnchor];
  v82 = [v24 &selRef_setAlwaysBounceVertical_];
  v83 = [v82 topAnchor];

  v84 = [v81 constraintEqualToAnchor:v83 constant:11.0];
  v103 = 1065353216;
  v104 = 1148846080;
  sub_20C3E813C();
  LODWORD(v85) = v105;
  [v84 setPriority_];
  *(v50 + 88) = v84;
  v86 = [*&v24[v27] bottomAnchor];
  v87 = [v24 &selRef_setAlwaysBounceVertical_];
  v88 = [v87 bottomAnchor];

  v89 = [v86 constraintEqualToAnchor:v88 constant:-11.0];
  v103 = 1065353216;
  v104 = 1148846080;
  sub_20C3E813C();
  LODWORD(v90) = v105;
  [v89 setPriority_];
  *(v50 + 96) = v89;
  v91 = [*&v24[v27] centerYAnchor];
  v92 = [v24 &selRef_setAlwaysBounceVertical_];

  v93 = [v92 centerYAnchor];
  v94 = [v91 constraintEqualToAnchor_];

  *(v50 + 104) = v94;
  sub_20C38D4A8();
  v95 = sub_20C3E8D9C();

  [v101 activateConstraints_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7AD168);
  v96 = swift_allocObject();
  *(v96 + 16) = xmmword_20C3EBA20;
  v97 = sub_20C3E828C();
  v98 = MEMORY[0x277D74DB8];
  *(v96 + 32) = v97;
  *(v96 + 40) = v98;
  sub_20C3E8FEC();

  swift_unknownObjectRelease();

  return v24;
}

void sub_20C3CA2A8(__int128 *a1)
{
  v2 = a1[3];
  v3 = a1[5];
  v25 = a1[4];
  v4 = v25;
  v26 = v3;
  v5 = a1[1];
  v21 = *a1;
  v22 = v5;
  v6 = a1[3];
  v8 = *a1;
  v7 = a1[1];
  v23 = a1[2];
  v9 = v23;
  v24 = v6;
  v10 = &v1[OBJC_IVAR____TtC13FitnessCoreUI19FloatingTabItemCell_currentItemDescriptor];
  v11 = *&v1[OBJC_IVAR____TtC13FitnessCoreUI19FloatingTabItemCell_currentItemDescriptor + 16];
  v28[0] = *&v1[OBJC_IVAR____TtC13FitnessCoreUI19FloatingTabItemCell_currentItemDescriptor];
  v28[1] = v11;
  v12 = *&v1[OBJC_IVAR____TtC13FitnessCoreUI19FloatingTabItemCell_currentItemDescriptor + 80];
  v28[4] = *&v1[OBJC_IVAR____TtC13FitnessCoreUI19FloatingTabItemCell_currentItemDescriptor + 64];
  v28[5] = v12;
  v13 = *&v1[OBJC_IVAR____TtC13FitnessCoreUI19FloatingTabItemCell_currentItemDescriptor + 48];
  v28[2] = *&v1[OBJC_IVAR____TtC13FitnessCoreUI19FloatingTabItemCell_currentItemDescriptor + 32];
  v28[3] = v13;
  v27 = *(a1 + 12);
  v29 = *&v1[OBJC_IVAR____TtC13FitnessCoreUI19FloatingTabItemCell_currentItemDescriptor + 96];
  *v10 = v8;
  *(v10 + 1) = v7;
  v14 = a1[5];
  *(v10 + 12) = *(a1 + 12);
  *(v10 + 4) = v4;
  *(v10 + 5) = v14;
  *(v10 + 2) = v9;
  *(v10 + 3) = v2;
  sub_20C39AF38(&v21, v20);
  sub_20C3A36B4(v28, &qword_27C7ADEF8);
  if (!*(&v22 + 1))
  {
  }

  v15 = sub_20C3E8BFC();

  [v1 setAccessibilityLabel_];

  if (*(&v23 + 1))
  {
    v16 = sub_20C3E8BFC();
  }

  else
  {
    v16 = 0;
  }

  [v1 setAccessibilityValue_];

  if (*(&v24 + 1))
  {
    v17 = sub_20C3E8BFC();
  }

  else
  {
    v17 = 0;
  }

  [v1 setAccessibilityHint_];

  v18 = *&v1[OBJC_IVAR____TtC13FitnessCoreUI19FloatingTabItemCell_titleLabel];
  if (BYTE2(v25) == 1)
  {
    v19 = 0;
  }

  else
  {

    v19 = sub_20C3E8BFC();
  }

  [v18 setText_];

  sub_20C3CA6C0([v1 isSelected], 0);
}

void sub_20C3CA6C0(char a1, char a2)
{
  v3 = *&v2[OBJC_IVAR____TtC13FitnessCoreUI19FloatingTabItemCell_currentItemDescriptor + 80];
  v30 = *&v2[OBJC_IVAR____TtC13FitnessCoreUI19FloatingTabItemCell_currentItemDescriptor + 64];
  v31 = v3;
  v32 = *&v2[OBJC_IVAR____TtC13FitnessCoreUI19FloatingTabItemCell_currentItemDescriptor + 96];
  v4 = *&v2[OBJC_IVAR____TtC13FitnessCoreUI19FloatingTabItemCell_currentItemDescriptor + 16];
  v29[0] = *&v2[OBJC_IVAR____TtC13FitnessCoreUI19FloatingTabItemCell_currentItemDescriptor];
  v29[1] = v4;
  v5 = *&v2[OBJC_IVAR____TtC13FitnessCoreUI19FloatingTabItemCell_currentItemDescriptor + 48];
  v29[2] = *&v2[OBJC_IVAR____TtC13FitnessCoreUI19FloatingTabItemCell_currentItemDescriptor + 32];
  v29[3] = v5;
  if (!*(&v29[0] + 1))
  {
    return;
  }

  v7 = a1;
  v8 = BYTE2(v30);
  v10 = *(&v30 + 1);
  v9 = v31;
  if (a2)
  {
    v11 = OBJC_IVAR____TtC13FitnessCoreUI19FloatingTabItemCell_sizingTraitCollection;
    swift_beginAccess();
    v12 = *&v2[v11];
    sub_20C3CBAB0(v29, v28);
    v13 = v12;
    if (v12)
    {
      goto LABEL_4;
    }

LABEL_9:
    sub_20C3A36B4(v29, &qword_27C7ADEF8);
    return;
  }

  v10 = *(&v30 + 1);
  v7 = a1;

  v12 = [v2 traitCollection];
  if (!v12)
  {
    goto LABEL_9;
  }

LABEL_4:
  if (v8 >= 2)
  {
    sub_20C3A36B4(v29, &qword_27C7ADEF8);
  }

  else
  {

    sub_20C3A36B4(v29, &qword_27C7ADEF8);
    if (v9)
    {
      v14 = *&v2[OBJC_IVAR____TtC13FitnessCoreUI19FloatingTabItemCell_imageView];
      if (v7)
      {
        sub_20C3CB390(v10, v9, v14, v12);
      }

      else
      {
        sub_20C3CB4EC(v10, v9, v14, v12);
      }

      goto LABEL_13;
    }
  }

  v14 = *&v2[OBJC_IVAR____TtC13FitnessCoreUI19FloatingTabItemCell_imageView];
  [v14 setImage_];
LABEL_13:

  sub_20C3CADD0(v7 & 1, v12);
  if ((a2 & 1) == 0)
  {
    sub_20C3CA9A4(v7 & 1);
    v16 = *MEMORY[0x277D76598];
    v17 = [v2 accessibilityTraits];
    v18 = -1;
    if ((v17 & v16) != 0)
    {
      v18 = ~v16;
    }

    v19 = v18 & v17;
    if ((v17 & v16) == v16)
    {
      v20 = 0;
    }

    else
    {
      v20 = v16;
    }

    v21 = v20 | v17;
    if (v7)
    {
      v22 = v21;
    }

    else
    {
      v22 = v19;
    }

    [v2 setAccessibilityTraits_];
  }

  v23 = [v14 image];
  v24 = v23;
  if (v23)
  {
  }

  [v14 setHidden_];
  v25 = *&v2[OBJC_IVAR____TtC13FitnessCoreUI19FloatingTabItemCell_titleLabel];
  v26 = [v25 text];
  v27 = v26;
  if (v26)
  {
  }

  [v25 setHidden_];
}

uint64_t sub_20C3CA9A4(int a1)
{
  v30 = a1;
  v1 = sub_20C3E829C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_20C3E82DC();
  v29 = *(v31 - 8);
  v5 = MEMORY[0x28223BE20](v31);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v28 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = sub_20C3E831C();
  v32 = *(v11 - 8);
  v33 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v28 - v15;
  v17 = (v2 + 104);
  v18 = (v2 + 8);
  v19 = (v29 + 8);
  if (v30)
  {
    sub_20C3E82BC();
    (*v17)(v4, *MEMORY[0x277D74DE0], v1);
    sub_20C3E82AC();
    (*v18)(v4, v1);
    v20 = *v19;
    v21 = v31;
    (*v19)(v7, v31);
    sub_20C3E82CC();
    v20(v10, v21);
    sub_20C3E832C();
    v22 = [objc_opt_self() whiteColor];
    sub_20C3E82FC();
  }

  else
  {
    sub_20C3E82BC();
    (*v17)(v4, *MEMORY[0x277D74DD8], v1);
    sub_20C3E82AC();
    (*v18)(v4, v1);
    v23 = *v19;
    v24 = v31;
    (*v19)(v7, v31);
    sub_20C3E82CC();
    v23(v10, v24);
    sub_20C3E832C();
    sub_20C3E830C();
  }

  v25 = v33;
  v26 = *(v32 + 8);
  v26(v14, v33);
  v34[3] = v25;
  v34[4] = MEMORY[0x277D74E20];
  __swift_allocate_boxed_opaque_existential_1(v34);
  sub_20C3E82EC();
  v26(v16, v25);
  return sub_20C3E8FDC();
}

void sub_20C3CADD0(char a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC13FitnessCoreUI19FloatingTabItemCell_titleLabel);
  v6 = objc_opt_self();
  if (a1)
  {
    v7 = [v6 blackColor];
    [v5 setTextColor_];

    [v5 _setEnableMonochromaticTreatment_];
    [v5 _setMonochromaticTreatment_];
    v22 = [objc_opt_self() preferredFontForTextStyle:*MEMORY[0x277D76988] compatibleWithTraitCollection:a2];
    [v5 setFont_];
  }

  else
  {
    v8 = [v6 labelColor];
    [v5 setTextColor_];

    [v5 _setEnableMonochromaticTreatment_];
    [v5 _setMonochromaticTreatment_];
    v9 = *MEMORY[0x277D74410];
    v10 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76918] compatibleWithTraitCollection:a2];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7AD558);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20C3EBA20;
    v12 = *MEMORY[0x277D74380];
    *(inited + 32) = *MEMORY[0x277D74380];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7AD560);
    v13 = swift_initStackObject();
    v14 = MEMORY[0x277D74430];
    *(v13 + 16) = xmmword_20C3EBA20;
    v15 = *v14;
    *(v13 + 32) = *v14;
    *(v13 + 40) = v9;
    v16 = v12;
    v17 = v15;
    v18 = sub_20C3DDFA4(v13);
    swift_setDeallocating();
    sub_20C3A36B4(v13 + 32, &qword_27C7AD568);
    *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7AD570);
    *(inited + 40) = v18;
    sub_20C3DE094(inited);
    swift_setDeallocating();
    sub_20C3A36B4(inited + 32, &qword_27C7AD578);
    type metadata accessor for AttributeName(0);
    sub_20C3CB348(&qword_27C7ACF18, type metadata accessor for AttributeName);
    v19 = sub_20C3E8B8C();

    v20 = [v10 fontDescriptorByAddingAttributes_];

    v21 = [objc_opt_self() fontWithDescriptor:v20 size:0.0];
    [v5 setFont_];
  }
}

id FloatingTabItemCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FloatingTabItemCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20C3CB348(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_20C3CB390(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = [objc_opt_self() preferredFontForTextStyle:*MEMORY[0x277D76988] compatibleWithTraitCollection:a4];
  v6 = [objc_opt_self() configurationWithFont:v5 scale:2];

  v7 = v6;
  v8 = sub_20C3E8BFC();
  v9 = [objc_opt_self() _systemImageNamed_withConfiguration_];

  [a3 setImage_];
  v10 = [objc_opt_self() blackColor];
  [a3 setTintColor_];
}

void sub_20C3CB4EC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = *MEMORY[0x277D74410];
  v6 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76918] compatibleWithTraitCollection:a4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7AD558);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C3EBA20;
  v8 = *MEMORY[0x277D74380];
  *(inited + 32) = *MEMORY[0x277D74380];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7AD560);
  v9 = swift_initStackObject();
  v10 = MEMORY[0x277D74430];
  *(v9 + 16) = xmmword_20C3EBA20;
  v11 = *v10;
  *(v9 + 32) = *v10;
  *(v9 + 40) = v5;
  v12 = v8;
  v13 = v11;
  v14 = sub_20C3DDFA4(v9);
  swift_setDeallocating();
  sub_20C3A36B4(v9 + 32, &qword_27C7AD568);
  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7AD570);
  *(inited + 40) = v14;
  sub_20C3DE094(inited);
  swift_setDeallocating();
  sub_20C3A36B4(inited + 32, &qword_27C7AD578);
  type metadata accessor for AttributeName(0);
  sub_20C3CB348(&qword_27C7ACF18, type metadata accessor for AttributeName);
  v15 = sub_20C3E8B8C();

  v16 = [v6 fontDescriptorByAddingAttributes_];

  v17 = [objc_opt_self() fontWithDescriptor:v16 size:0.0];
  v18 = [objc_opt_self() configurationWithFont:v17 scale:2];

  v19 = v18;
  v20 = sub_20C3E8BFC();
  v21 = [objc_opt_self() _systemImageNamed_withConfiguration_];

  [a3 setImage_];
  v22 = [objc_opt_self() labelColor];
  [a3 setTintColor_];
}

void sub_20C3CB820(uint64_t a1)
{
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = *(a1 + OBJC_IVAR____TtC13FitnessCoreUI19FloatingTabItemCell_titleLabel);
  v3 = [objc_opt_self() _preferredFontForTextStyle_weight_];
  [v2 setFont_];
}

void sub_20C3CB920()
{
  *(v0 + OBJC_IVAR____TtC13FitnessCoreUI19FloatingTabItemCell_sizingTraitCollection) = 0;
  v1 = OBJC_IVAR____TtC13FitnessCoreUI19FloatingTabItemCell_imageView;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v2 = (v0 + OBJC_IVAR____TtC13FitnessCoreUI19FloatingTabItemCell_layout);
  *v2 = xmmword_20C3EEC90;
  v2[1] = xmmword_20C3EEC90;
  v3 = OBJC_IVAR____TtC13FitnessCoreUI19FloatingTabItemCell_stackView;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  v4 = OBJC_IVAR____TtC13FitnessCoreUI19FloatingTabItemCell_titleLabel;
  *(v0 + v4) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v5 = v0 + OBJC_IVAR____TtC13FitnessCoreUI19FloatingTabItemCell_currentItemDescriptor;
  *(v5 + 96) = 0;
  *(v5 + 64) = 0u;
  *(v5 + 80) = 0u;
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0u;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  sub_20C3E921C();
  __break(1u);
}

uint64_t sub_20C3CBA2C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_20C3CBAB0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7ADEF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C3CBB44(char a1)
{
  result = 0x6669636570736E75;
  switch(a1)
  {
    case 1:
      result = 0x6C6C616D5378;
      break;
    case 2:
      result = 0x6C6C616D73;
      break;
    case 3:
      result = 0x6D756964656DLL;
      break;
    case 4:
      result = 0x656772616CLL;
      break;
    case 5:
      result = 0x656772614C78;
      break;
    case 6:
      result = 0x656772614C7878;
      break;
    case 7:
      result = 0x656772614C787878;
      break;
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
      result = 0x6269737365636361;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_20C3CBC80(uint64_t a1)
{
  v2 = sub_20C3CD118();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C3CBCBC(uint64_t a1)
{
  v2 = sub_20C3CD118();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C3CBCF8(uint64_t a1)
{
  v2 = sub_20C3CD0C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C3CBD34(uint64_t a1)
{
  v2 = sub_20C3CD0C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C3CBD70(uint64_t a1)
{
  v2 = sub_20C3CD070();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C3CBDAC(uint64_t a1)
{
  v2 = sub_20C3CD070();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C3CBDE8(uint64_t a1)
{
  v2 = sub_20C3CD01C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C3CBE24(uint64_t a1)
{
  v2 = sub_20C3CD01C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C3CBE60(uint64_t a1)
{
  v2 = sub_20C3CCFC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C3CBE9C(uint64_t a1)
{
  v2 = sub_20C3CCFC8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C3CBEE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_20C3CD53C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_20C3CBF14(uint64_t a1)
{
  v2 = sub_20C3CCF74();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C3CBF50(uint64_t a1)
{
  v2 = sub_20C3CCF74();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C3CBF8C(uint64_t a1)
{
  v2 = sub_20C3CD268();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C3CBFC8(uint64_t a1)
{
  v2 = sub_20C3CD268();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C3CC004(uint64_t a1)
{
  v2 = sub_20C3CD2BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C3CC040(uint64_t a1)
{
  v2 = sub_20C3CD2BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C3CC07C(uint64_t a1)
{
  v2 = sub_20C3CD310();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C3CC0B8(uint64_t a1)
{
  v2 = sub_20C3CD310();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C3CC0F4(uint64_t a1)
{
  v2 = sub_20C3CD3B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C3CC130(uint64_t a1)
{
  v2 = sub_20C3CD3B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C3CC16C(uint64_t a1)
{
  v2 = sub_20C3CD214();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C3CC1A8(uint64_t a1)
{
  v2 = sub_20C3CD214();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C3CC1E4(uint64_t a1)
{
  v2 = sub_20C3CD364();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C3CC220(uint64_t a1)
{
  v2 = sub_20C3CD364();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C3CC25C(uint64_t a1)
{
  v2 = sub_20C3CD1C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C3CC298(uint64_t a1)
{
  v2 = sub_20C3CD1C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C3CC2D4(uint64_t a1)
{
  v2 = sub_20C3CD16C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C3CC310(uint64_t a1)
{
  v2 = sub_20C3CD16C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DynamicTypeSize.encode(to:)(void *a1, uint64_t a2)
{
  v79 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7ADF00);
  v77 = *(v3 - 8);
  v78 = v3;
  MEMORY[0x28223BE20](v3);
  v76 = &v43 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7ADF08);
  v74 = *(v5 - 8);
  v75 = v5;
  MEMORY[0x28223BE20](v5);
  v73 = &v43 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7ADF10);
  v71 = *(v7 - 8);
  v72 = v7;
  MEMORY[0x28223BE20](v7);
  v70 = &v43 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7ADF18);
  v68 = *(v9 - 8);
  v69 = v9;
  MEMORY[0x28223BE20](v9);
  v67 = &v43 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7ADF20);
  v65 = *(v11 - 8);
  v66 = v11;
  MEMORY[0x28223BE20](v11);
  v64 = &v43 - v12;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7ADF28);
  v62 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v61 = &v43 - v13;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7ADF30);
  v59 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v58 = &v43 - v14;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7ADF38);
  v56 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v55 = &v43 - v15;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7ADF40);
  v53 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v52 = &v43 - v16;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7ADF48);
  v50 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v49 = &v43 - v17;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7ADF50);
  v47 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v46 = &v43 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7ADF58);
  v45 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v43 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7ADF60);
  v44 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v24 = &v43 - v23;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7ADF68);
  v25 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v27 = &v43 - v26;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C3CCF74();
  v80 = v27;
  sub_20C3E952C();
  v28 = (v25 + 8);
  switch(v79)
  {
    case 1:
      v83 = 1;
      sub_20C3CD364();
      v38 = v80;
      v39 = v81;
      sub_20C3E934C();
      (*(v45 + 8))(v21, v19);
      return (*v28)(v38, v39);
    case 2:
      v84 = 2;
      sub_20C3CD310();
      v35 = v46;
      v30 = v80;
      v29 = v81;
      sub_20C3E934C();
      (*(v47 + 8))(v35, v48);
      return (*v28)(v30, v29);
    case 3:
      v85 = 3;
      sub_20C3CD2BC();
      v36 = v49;
      v30 = v80;
      v29 = v81;
      sub_20C3E934C();
      (*(v50 + 8))(v36, v51);
      return (*v28)(v30, v29);
    case 4:
      v86 = 4;
      sub_20C3CD268();
      v34 = v52;
      v30 = v80;
      v29 = v81;
      sub_20C3E934C();
      (*(v53 + 8))(v34, v54);
      return (*v28)(v30, v29);
    case 5:
      v87 = 5;
      sub_20C3CD214();
      v41 = v55;
      v30 = v80;
      v29 = v81;
      sub_20C3E934C();
      (*(v56 + 8))(v41, v57);
      return (*v28)(v30, v29);
    case 6:
      v88 = 6;
      sub_20C3CD1C0();
      v42 = v58;
      v30 = v80;
      v29 = v81;
      sub_20C3E934C();
      (*(v59 + 8))(v42, v60);
      return (*v28)(v30, v29);
    case 7:
      v89 = 7;
      sub_20C3CD16C();
      v37 = v61;
      v30 = v80;
      v29 = v81;
      sub_20C3E934C();
      (*(v62 + 8))(v37, v63);
      return (*v28)(v30, v29);
    case 8:
      v90 = 8;
      sub_20C3CD118();
      v31 = v64;
      v30 = v80;
      v29 = v81;
      sub_20C3E934C();
      v33 = v65;
      v32 = v66;
      goto LABEL_15;
    case 9:
      v91 = 9;
      sub_20C3CD0C4();
      v31 = v67;
      v30 = v80;
      v29 = v81;
      sub_20C3E934C();
      v33 = v68;
      v32 = v69;
      goto LABEL_15;
    case 10:
      v92 = 10;
      sub_20C3CD070();
      v31 = v70;
      v30 = v80;
      v29 = v81;
      sub_20C3E934C();
      v33 = v71;
      v32 = v72;
      goto LABEL_15;
    case 11:
      v93 = 11;
      sub_20C3CD01C();
      v31 = v73;
      v30 = v80;
      v29 = v81;
      sub_20C3E934C();
      v33 = v74;
      v32 = v75;
      goto LABEL_15;
    case 12:
      v94 = 12;
      sub_20C3CCFC8();
      v31 = v76;
      v30 = v80;
      v29 = v81;
      sub_20C3E934C();
      v33 = v77;
      v32 = v78;
LABEL_15:
      (*(v33 + 8))(v31, v32);
      break;
    default:
      v82 = 0;
      sub_20C3CD3B8();
      v30 = v80;
      v29 = v81;
      sub_20C3E934C();
      (*(v44 + 8))(v24, v22);
      break;
  }

  return (*v28)(v30, v29);
}

unint64_t sub_20C3CCF74()
{
  result = qword_27C7ADF70;
  if (!qword_27C7ADF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7ADF70);
  }

  return result;
}

unint64_t sub_20C3CCFC8()
{
  result = qword_27C7ADF78;
  if (!qword_27C7ADF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7ADF78);
  }

  return result;
}

unint64_t sub_20C3CD01C()
{
  result = qword_27C7ADF80;
  if (!qword_27C7ADF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7ADF80);
  }

  return result;
}

unint64_t sub_20C3CD070()
{
  result = qword_27C7ADF88;
  if (!qword_27C7ADF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7ADF88);
  }

  return result;
}

unint64_t sub_20C3CD0C4()
{
  result = qword_27C7ADF90;
  if (!qword_27C7ADF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7ADF90);
  }

  return result;
}

unint64_t sub_20C3CD118()
{
  result = qword_27C7ADF98;
  if (!qword_27C7ADF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7ADF98);
  }

  return result;
}

unint64_t sub_20C3CD16C()
{
  result = qword_27C7ADFA0;
  if (!qword_27C7ADFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7ADFA0);
  }

  return result;
}

unint64_t sub_20C3CD1C0()
{
  result = qword_27C7ADFA8;
  if (!qword_27C7ADFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7ADFA8);
  }

  return result;
}

unint64_t sub_20C3CD214()
{
  result = qword_27C7ADFB0;
  if (!qword_27C7ADFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7ADFB0);
  }

  return result;
}

unint64_t sub_20C3CD268()
{
  result = qword_27C7ADFB8;
  if (!qword_27C7ADFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7ADFB8);
  }

  return result;
}

unint64_t sub_20C3CD2BC()
{
  result = qword_27C7ADFC0;
  if (!qword_27C7ADFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7ADFC0);
  }

  return result;
}

unint64_t sub_20C3CD310()
{
  result = qword_27C7ADFC8;
  if (!qword_27C7ADFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7ADFC8);
  }

  return result;
}

unint64_t sub_20C3CD364()
{
  result = qword_27C7ADFD0;
  if (!qword_27C7ADFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7ADFD0);
  }

  return result;
}

unint64_t sub_20C3CD3B8()
{
  result = qword_27C7ADFD8;
  if (!qword_27C7ADFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7ADFD8);
  }

  return result;
}

char *sub_20C3CD424@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_20C3CD940(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t DynamicTypeSize.hashValue.getter(unsigned __int8 a1)
{
  sub_20C3E94BC();
  MEMORY[0x20F2F98F0](a1);
  return sub_20C3E950C();
}

uint64_t sub_20C3CD53C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6669636570736E75 && a2 == 0xEB00000000646569;
  if (v4 || (sub_20C3E93EC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6C616D5378 && a2 == 0xE600000000000000 || (sub_20C3E93EC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C6C616D73 && a2 == 0xE500000000000000 || (sub_20C3E93EC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D756964656DLL && a2 == 0xE600000000000000 || (sub_20C3E93EC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656772616CLL && a2 == 0xE500000000000000 || (sub_20C3E93EC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656772614C78 && a2 == 0xE600000000000000 || (sub_20C3E93EC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x656772614C7878 && a2 == 0xE700000000000000 || (sub_20C3E93EC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x656772614C787878 && a2 == 0xE800000000000000 || (sub_20C3E93EC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6269737365636361 && a2 == 0xEE00317974696C69 || (sub_20C3E93EC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6269737365636361 && a2 == 0xEE00327974696C69 || (sub_20C3E93EC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6269737365636361 && a2 == 0xEE00337974696C69 || (sub_20C3E93EC() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6269737365636361 && a2 == 0xEE00347974696C69 || (sub_20C3E93EC() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6269737365636361 && a2 == 0xEE00357974696C69)
  {

    return 12;
  }

  else
  {
    v6 = sub_20C3E93EC();

    if (v6)
    {
      return 12;
    }

    else
    {
      return 13;
    }
  }
}

char *sub_20C3CD940(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7AE0E0);
  v81 = *(v2 - 8);
  v82 = v2;
  MEMORY[0x28223BE20](v2);
  v90 = &v55 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7AE0E8);
  v79 = *(v4 - 8);
  v80 = v4;
  MEMORY[0x28223BE20](v4);
  v89 = &v55 - v5;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7AE0F0);
  v77 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v88 = &v55 - v6;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7AE0F8);
  v75 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v87 = &v55 - v7;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7AE100);
  v73 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v86 = &v55 - v8;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7AE108);
  v71 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v85 = &v55 - v9;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7AE110);
  v70 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v93 = &v55 - v10;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7AE118);
  v68 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v92 = &v55 - v11;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7AE120);
  v66 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v84 = &v55 - v12;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7AE128);
  v64 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v83 = &v55 - v13;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7AE130);
  v62 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v91 = &v55 - v14;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7AE138);
  v59 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v16 = &v55 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7AE140);
  v58 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v55 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7AE148);
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v55 - v22;
  v24 = a1[3];
  v95 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  sub_20C3CCF74();
  v25 = v94;
  sub_20C3E951C();
  if (v25)
  {
    goto LABEL_6;
  }

  v56 = v19;
  v55 = v17;
  v57 = v16;
  v27 = v91;
  v26 = v92;
  v28 = v93;
  v29 = v21;
  v94 = v23;
  v30 = sub_20C3E932C();
  v31 = (2 * *(v30 + 16)) | 1;
  v96 = v30;
  v97 = v30 + 32;
  v98 = 0;
  v99 = v31;
  v32 = sub_20C39FE44();
  if (v98 != v99 >> 1)
  {
LABEL_5:
    v37 = sub_20C3E915C();
    swift_allocError();
    v39 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7AD840);
    *v39 = &type metadata for DynamicTypeSize;
    v40 = v94;
    sub_20C3E92CC();
    sub_20C3E914C();
    (*(*(v37 - 8) + 104))(v39, *MEMORY[0x277D84160], v37);
    swift_willThrow();
    (*(v29 + 8))(v40, v20);
    swift_unknownObjectRelease();
LABEL_6:
    __swift_destroy_boxed_opaque_existential_1(v95);
    return v23;
  }

  v23 = v32;
  v33 = v20;
  v20 = 0;
  v34 = v29;
  switch(v32)
  {
    case 0:
      v100 = 0;
      sub_20C3CD3B8();
      v35 = v56;
      v36 = v94;
      sub_20C3E92BC();
      (*(v58 + 8))(v35, v55);
      (*(v34 + 8))(v36, v33);
      goto LABEL_23;
    case 1:
      v100 = 1;
      sub_20C3CD364();
      v51 = v57;
      v43 = v33;
      v44 = v94;
      sub_20C3E92BC();
      (*(v59 + 8))(v51, v60);
      goto LABEL_22;
    case 2:
      v100 = 2;
      sub_20C3CD310();
      v43 = v33;
      v44 = v94;
      sub_20C3E92BC();
      (*(v62 + 8))(v27, v63);
      goto LABEL_22;
    case 3:
      v100 = 3;
      sub_20C3CD2BC();
      v49 = v83;
      v43 = v33;
      v44 = v94;
      sub_20C3E92BC();
      (*(v64 + 8))(v49, v61);
      goto LABEL_22;
    case 4:
      v100 = 4;
      sub_20C3CD268();
      v47 = v84;
      v43 = v33;
      v44 = v94;
      sub_20C3E92BC();
      (*(v66 + 8))(v47, v65);
      goto LABEL_22;
    case 5:
      v100 = 5;
      sub_20C3CD214();
      v52 = v26;
      v43 = v33;
      v44 = v94;
      sub_20C3E92BC();
      (*(v68 + 8))(v52, v67);
      goto LABEL_22;
    case 6:
      v100 = 6;
      sub_20C3CD1C0();
      v43 = v33;
      v44 = v94;
      sub_20C3E92BC();
      (*(v70 + 8))(v28, v69);
      goto LABEL_22;
    case 7:
      v100 = 7;
      sub_20C3CD16C();
      v50 = v85;
      v43 = v33;
      v44 = v94;
      sub_20C3E92BC();
      (*(v71 + 8))(v50, v72);
      goto LABEL_22;
    case 8:
      v100 = 8;
      sub_20C3CD118();
      v54 = v86;
      v43 = v33;
      v44 = v94;
      sub_20C3E92BC();
      (*(v73 + 8))(v54, v74);
      goto LABEL_22;
    case 9:
      v100 = 9;
      sub_20C3CD0C4();
      v48 = v87;
      v43 = v33;
      v44 = v94;
      sub_20C3E92BC();
      (*(v75 + 8))(v48, v76);
      goto LABEL_22;
    case 10:
      v100 = 10;
      sub_20C3CD070();
      v53 = v88;
      v43 = v33;
      v44 = v94;
      sub_20C3E92BC();
      (*(v77 + 8))(v53, v78);
      goto LABEL_22;
    case 11:
      v100 = 11;
      sub_20C3CD01C();
      v42 = v89;
      v43 = v33;
      v44 = v94;
      sub_20C3E92BC();
      v46 = v79;
      v45 = v80;
      goto LABEL_11;
    case 12:
      v100 = 12;
      sub_20C3CCFC8();
      v42 = v90;
      v43 = v33;
      v44 = v94;
      sub_20C3E92BC();
      v46 = v81;
      v45 = v82;
LABEL_11:
      (*(v46 + 8))(v42, v45);
LABEL_22:
      (*(v34 + 8))(v44, v43);
LABEL_23:
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1(v95);
      break;
    default:
      goto LABEL_5;
  }

  return v23;
}

unint64_t sub_20C3CE838()
{
  result = qword_27C7ADFE0;
  if (!qword_27C7ADFE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7ADFE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7ADFE0);
  }

  return result;
}

unint64_t sub_20C3CE89C()
{
  result = qword_27C7ADFF0;
  if (!qword_27C7ADFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7ADFF0);
  }

  return result;
}

uint64_t sub_20C3CE900(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_20C3CE990(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_20C3CEB24()
{
  result = qword_27C7ADFF8;
  if (!qword_27C7ADFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7ADFF8);
  }

  return result;
}