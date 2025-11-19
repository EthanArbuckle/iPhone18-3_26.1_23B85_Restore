uint64_t sub_215A0D0A4(void *a1, uint64_t a2)
{
  v5 = sub_215A6F960();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &aBlock[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController_tabUUIDToIconRegistration;
  swift_beginAccess();
  v10 = *(v2 + v9);
  if (*(v10 + 16))
  {

    v11 = sub_215A39A94(a2);
    if (v12)
    {
      v13 = *(*(v10 + 56) + 8 * v11);

      aBlock[4] = CGSizeMake;
      aBlock[5] = 0;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_215A44C0C;
      aBlock[3] = &block_descriptor_52;
      v14 = _Block_copy(aBlock);
      [v13 setContentObserver_];
      _Block_release(v14);
    }

    else
    {
    }
  }

  (*(v6 + 16))(v8, a2, v5);
  swift_beginAccess();
  v15 = a1;
  sub_215A2A2F8(a1, v8);
  return swift_endAccess();
}

id sub_215A0D29C()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v1 = sub_21583D558();

  sub_215A70250();
  v2 = [v4 swipeActionsConfiguration];

  return v2;
}

id sub_215A0D320()
{
  v0 = objc_opt_self();
  v1 = [v0 fractionalWidthDimension_];
  v2 = [v0 estimatedDimension_];
  v3 = [objc_opt_self() sizeWithWidthDimension:v1 heightDimension:v2];

  v4 = sub_215A70500();
  v5 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v3 elementKind:v4 alignment:1];

  [v5 setContentInsets_];
  [v5 setPinToVisibleBounds_];
  [v5 setZIndex_];
  return v5;
}

id sub_215A0D500(char a1, char a2)
{
  v5 = a1 & 1;
  result = [v2 isEditing];
  if (result != v5)
  {
    v9.receiver = v2;
    v9.super_class = type metadata accessor for LibraryContentViewController();
    objc_msgSendSuper2(&v9, sel_setEditing_animated_, v5, a2 & 1);
    [v2 loadViewIfNeeded];
    result = *&v2[OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController__collectionView];
    if (result)
    {
      [result setEditing_];
      if ((a1 & 1) == 0)
      {
        sub_21583C554();
      }

      v7 = *&v2[OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController_didUpdateEditingHandler];

      v7(v8);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void *sub_215A0D630()
{
  v1 = v0;
  v2 = sub_215A6FA10();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - v7;
  v9 = *&v1[OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController_hoverRecognizer];
  [v1 loadViewIfNeeded];
  v10 = OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController__collectionView;
  [v9 locationInView_];
  v12 = v11;
  v14 = v13;
  if ([v9 state] - 1 >= 2)
  {
    goto LABEL_7;
  }

  [v1 loadViewIfNeeded];
  result = *&v1[v10];
  if (result)
  {
    v16 = [result indexPathForItemAtPoint_];
    if (v16)
    {
      v17 = v16;
      sub_215A6F9C0();

      (*(v3 + 32))(v8, v6, v2);
      v18 = sub_21583D558();
      sub_215A70250();

      v19 = v22;
      if (v22)
      {
        v20 = [v22 hoverPreviewItem];

        (*(v3 + 8))(v8, v2);
LABEL_8:
        [*&v1[OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController_tabHoverPreviewController] updateWithItem:v20 atLocation:{v12, v14}];
        return swift_unknownObjectRelease();
      }

      (*(v3 + 8))(v8, v2);
    }

LABEL_7:
    v20 = 0;
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

void sub_215A0D8C4()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for LibraryContentViewController();
  objc_msgSendSuper2(&v3, sel_viewWillLayoutSubviews);
  v1 = &v0[OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController_reloadFlags];
  if (v0[OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController_reloadFlags] == 1)
  {
    v2 = v1[1];
    *v1 = 0;
    sub_21583DBA4(1, v2);
  }

  if (v0[OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController_needsUpdateSelection] == 1)
  {
    v0[OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController_needsUpdateSelection] = 0;
    sub_21583C554();
  }
}

id sub_215A0D984(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7E2C8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - v5;
  result = [v1 isViewLoaded];
  if (result)
  {
    v16 = v1;
    sub_2159F7DA8(0, &qword_2811A2570);
    sub_215A12438(&unk_2811A26F0, &qword_2811A2570);
    sub_215A70310();
    v8 = [a1 headerItemController];
    if (v8)
    {
      v9 = v8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7DCF0);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_215A96990;
      *(v10 + 32) = v9;
      v17 = 0;
      v11 = v9;
      sub_215A702E0();
    }

    v12 = [a1 itemControllers];
    v13 = sub_215A705E0();

    v14 = [a1 headerItemController];
    sub_21583E4BC(v13, v14);

    v15 = sub_21583D558();
    v17 = a1;
    sub_215A702B0();

    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

id sub_215A0DBD4(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7DF78);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v17 - v5;
  v7 = sub_215A6FA10();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21583D558();
  v17[1] = a1;
  sub_215A702D0();

  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_21583F14C(v6, &qword_27CA7DF78);
    return 0;
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    result = [v2 loadViewIfNeeded];
    v13 = *&v2[OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController__collectionView];
    if (v13)
    {
      v14 = v13;
      v15 = sub_215A6F9B0();
      v16 = [v14 cellForItemAtIndexPath_];

      (*(v8 + 8))(v10, v7);
      return v16;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

id sub_215A0DDDC()
{
  if (![v0 isViewLoaded])
  {
    return 0;
  }

  result = [v0 loadViewIfNeeded];
  v2 = *&v0[OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController__collectionView];
  if (!v2)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v3 = v2;
  v4 = sub_215A70500();
  v5 = [v3 visibleSupplementaryViewsOfKind_];

  sub_2159F7DA8(0, &qword_27CA7E2C0);
  v6 = sub_215A705E0();

  if (!(v6 >> 62))
  {
    result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_5;
    }

LABEL_11:

    return 0;
  }

  result = sub_215A70CD0();
  if (!result)
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((v6 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x216073710](0, v6);
    goto LABEL_8;
  }

  if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *(v6 + 32);
LABEL_8:
  v8 = v7;

  _s17ProfilePickerCellCMa();
  result = swift_dynamicCastClass();
  if (result)
  {
    return result;
  }

  return 0;
}

uint64_t sub_215A0DF44(uint64_t a1, uint64_t a2)
{
  v5 = sub_215A6FA10();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v2 loadViewIfNeeded];
  v48 = v2;
  result = *&v2[OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController__collectionView];
  if (result)
  {
    v10 = [result indexPathsForSelectedItems];
    v11 = MEMORY[0x277D84F90];
    if (v10)
    {
      v12 = v10;
      v13 = sub_215A705E0();
    }

    else
    {
      v13 = MEMORY[0x277D84F90];
    }

    v45 = a2;
    v50[0] = v11;
    v14 = *(v13 + 16);
    if (v14)
    {
      v46 = a1;
      v17 = *(v6 + 16);
      v15 = v6 + 16;
      v16 = v17;
      v18 = *(v15 + 64);
      v44 = v13;
      v19 = v13 + ((v18 + 32) & ~v18);
      v20 = *(v15 + 56);
      v21 = (v15 - 8);
      v47 = MEMORY[0x277D84F90];
      v17(v8, v19, v5);
      while (1)
      {
        v22 = sub_21583D558();
        sub_215A70250();

        v23 = (*v21)(v8, v5);
        if (v52)
        {
          MEMORY[0x2160730A0](v23);
          if (*((v50[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v47 = *((v50[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_215A70640();
          }

          sub_215A70660();
          v47 = v50[0];
        }

        v19 += v20;
        if (!--v14)
        {
          break;
        }

        v16(v8, v19, v5);
      }

      a1 = v46;
      v24 = v47;
    }

    else
    {

      v24 = MEMORY[0x277D84F90];
    }

    if (sub_215A6FA20())
    {
      v25 = v24 & 0xFFFFFFFFFFFFFF8;
      if (v24 >> 62)
      {
LABEL_50:
        v26 = sub_215A70CD0();
      }

      else
      {
        v26 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v27 = 0;
      while (v26 != v27)
      {
        if ((v24 & 0xC000000000000001) != 0)
        {
          v28 = MEMORY[0x216073710](v27, v24);
        }

        else
        {
          if (v27 >= *(v25 + 16))
          {
            goto LABEL_47;
          }

          v28 = *(v24 + 8 * v27 + 32);
        }

        v29 = v28;
        if (__OFADD__(v27, 1))
        {
          __break(1u);
LABEL_47:
          __break(1u);
          goto LABEL_48;
        }

        v30 = [v28 supportsCopyAction];

        ++v27;
        if (v30)
        {
          goto LABEL_40;
        }
      }

LABEL_39:

      return 0;
    }

    if (sub_215A6FA20())
    {
      v25 = v24 & 0xFFFFFFFFFFFFFF8;
      if (v24 >> 62)
      {
        v31 = sub_215A70CD0();
      }

      else
      {
        v31 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v32 = 0;
      while (v31 != v32)
      {
        if ((v24 & 0xC000000000000001) != 0)
        {
          v33 = MEMORY[0x216073710](v32, v24);
        }

        else
        {
          if (v32 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_49;
          }

          v33 = *(v24 + 8 * v32 + 32);
        }

        v34 = v33;
        if (__OFADD__(v32, 1))
        {
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
          goto LABEL_50;
        }

        v35 = [v33 supportsCloseAction];

        ++v32;
        if (v35)
        {
LABEL_40:

          return 1;
        }
      }

      goto LABEL_39;
    }

    sub_215A07074(v45, v50, &qword_27CA7E2E0);
    v36 = v51;
    if (v51)
    {
      v37 = __swift_project_boxed_opaque_existential_0(v50, v51);
      v38 = *(v36 - 8);
      MEMORY[0x28223BE20](v37);
      v40 = &v44 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v38 + 16))(v40);
      v41 = sub_215A70D80();
      (*(v38 + 8))(v40, v36);
      __swift_destroy_boxed_opaque_existential_0(v50);
    }

    else
    {
      v41 = 0;
    }

    v42 = type metadata accessor for LibraryContentViewController();
    v49.receiver = v48;
    v49.super_class = v42;
    v43 = objc_msgSendSuper2(&v49, sel_canPerformAction_withSender_, a1, v41);
    swift_unknownObjectRelease();
    return v43;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_215A0E4CC()
{
  v2 = sub_215A6FA10();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v0 loadViewIfNeeded];
  v24 = v0;
  v6 = *&v0[OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController__collectionView];
  if (!v6)
  {
    __break(1u);

    __break(1u);
    return;
  }

  v7 = [v6 indexPathsForSelectedItems];
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v9 = v7;
    v10 = sub_215A705E0();

    v26 = v10;

    sub_215A0FE7C(&v26);

    v11 = v26;
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v26 = v8;
  v12 = v11[2];
  if (v12)
  {
    v13 = *(v3 + 16);
    v14 = *(v3 + 80);
    v22 = v11;
    v15 = v11 + ((v14 + 32) & ~v14);
    v16 = *(v3 + 72);
    v23 = MEMORY[0x277D84F90];
    v13(v5, v15, v2);
    while (1)
    {
      v17 = sub_21583D558();
      sub_215A70250();

      v18 = (*(v3 + 8))(v5, v2);
      if (v25)
      {
        MEMORY[0x2160730A0](v18);
        if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v23 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_215A70640();
        }

        sub_215A70660();
        v23 = v26;
      }

      v15 += v16;
      if (!--v12)
      {
        break;
      }

      v13(v5, v15, v2);
    }

    v19 = v23;
    if (!(v23 >> 62))
    {
LABEL_14:
      if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_15:
        v20 = objc_opt_self();
        sub_2159F7DA8(0, &qword_2811A2570);
        v21 = sub_215A705D0();

        [v20 copyLibraryItems_];

        return;
      }

      goto LABEL_18;
    }
  }

  else
  {

    v19 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
      goto LABEL_14;
    }
  }

  if (sub_215A70CD0())
  {
    goto LABEL_15;
  }

LABEL_18:
}

void sub_215A0E7E0()
{
  v2 = sub_215A6FA10();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [*&v0[OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController_configuration] tabGroupProvider];
  if (v6)
  {
    v7 = v6;
    [v0 loadViewIfNeeded];
    v8 = *&v0[OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController__collectionView];
    if (!v8)
    {
      __break(1u);

      __break(1u);
      return;
    }

    v9 = [v8 indexPathsForSelectedItems];
    v10 = MEMORY[0x277D84F90];
    if (v9)
    {
      v11 = v9;
      v12 = sub_215A705E0();

      v30 = v12;

      sub_215A0FE7C(&v30);

      v13 = v30;
    }

    else
    {
      v13 = MEMORY[0x277D84F90];
    }

    v30 = v10;
    v14 = v13[2];
    if (v14)
    {
      v25[1] = v13;
      v26 = v7;
      v15 = v3 + 16;
      v28 = *(v3 + 16);
      v16 = v13 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
      v17 = *(v15 + 56);
      v18 = (v15 - 8);
      v27 = MEMORY[0x277D84F90];
      v28(v5, v16, v2);
      while (1)
      {
        v19 = v0;
        v20 = sub_21583D558();
        sub_215A70250();

        v21 = (*v18)(v5, v2);
        if (v29)
        {
          MEMORY[0x2160730A0](v21);
          if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v27 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_215A70640();
          }

          sub_215A70660();
          v27 = v30;
        }

        v16 += v17;
        --v14;
        v0 = v19;
        if (!v14)
        {
          break;
        }

        v28(v5, v16, v2);
      }

      v7 = v26;
      v22 = v27;
      if (!(v27 >> 62))
      {
LABEL_15:
        if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_16:
          v23 = objc_opt_self();
          sub_2159F7DA8(0, &qword_2811A2570);
          v24 = sub_215A705D0();

          [v23 closeLibraryItems:v24 dataSource:v7];
          swift_unknownObjectRelease();

          return;
        }

        goto LABEL_19;
      }
    }

    else
    {

      v22 = MEMORY[0x277D84F90];
      if (!(MEMORY[0x277D84F90] >> 62))
      {
        goto LABEL_15;
      }
    }

    if (sub_215A70CD0())
    {
      goto LABEL_16;
    }

LABEL_19:
    swift_unknownObjectRelease();
  }
}

uint64_t sub_215A0EB38(void *a1, uint64_t a2, uint64_t a3, void (*a4)(id))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_215A70B70();
    v7 = swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    v7 = a1;
  }

  a4(v7);

  return sub_21583F14C(v9, &qword_27CA7E2E0);
}

void sub_215A0EBC4(void *a1)
{
  [a1 action];
  [v1 loadViewIfNeeded];
  v3 = *&v1[OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController__collectionView];
  if (!v3)
  {
    __break(1u);
    return;
  }

  v4 = [v3 indexPathsForSelectedItems];
  if (v4)
  {
    sub_215A6FA10();
    v5 = sub_215A705E0();

    v4 = *(v5 + 16);
  }

  if ((sub_215A6FA20() & 1) == 0)
  {
    if ((sub_215A6FA20() & 1) == 0)
    {
      return;
    }

    v6 = [objc_opt_self() closeCommandTitleForSelectedItemCount_];
    if (v6)
    {
      goto LABEL_6;
    }

LABEL_9:
    sub_215A70540();
    v8 = sub_215A70500();

    v7 = v8;
    goto LABEL_10;
  }

  v6 = [objc_opt_self() copyCommandTitleForSelectedItemCount_];
  if (!v6)
  {
    goto LABEL_9;
  }

LABEL_6:
  v7 = v6;
LABEL_10:
  v9 = v7;
  [a1 setTitle_];
}

id sub_215A0EDDC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LibraryContentViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_215A0EF64(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(char *))
{
  v8 = sub_215A6FA10();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_215A6F9C0();
  v12 = a3;
  v13 = a1;
  a5(v11);

  return (*(v9 + 8))(v11, v8);
}

id sub_215A0F3F4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v7 = sub_215A6FA10();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_215A6F9C0();
  v11 = a1;
  v12 = sub_21583D558();
  sub_215A70250();

  v13 = v17;
  if (v17)
  {
    v14 = [v17 *a5];

    (*(v8 + 8))(v10, v7);
  }

  else
  {

    (*(v8 + 8))(v10, v7);
    return 0;
  }

  return v14;
}

uint64_t sub_215A0F55C(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v8 = sub_215A6FA10();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_215A6F9C0();
  v12 = a3;
  v13 = a1;
  LOBYTE(a5) = a5(v11);

  (*(v9 + 8))(v11, v8);
  return a5 & 1;
}

uint64_t sub_215A0FE7C(void **a1)
{
  v2 = *(sub_215A6FA10() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_215A3F340(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_215A0FF24(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_215A0FF24(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_215A70D50();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_215A6FA10();
        v6 = sub_215A70650();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_215A6FA10() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_215A10314(v8, v9, a1, v4);
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
    return sub_215A10050(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_215A10050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_215A6FA10();
  v9 = MEMORY[0x28223BE20](v8);
  v41 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v45 = &v31 - v12;
  result = MEMORY[0x28223BE20](v11);
  v44 = &v31 - v15;
  v33 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v42 = *(v14 + 16);
    v43 = v14 + 16;
    v17 = *(v14 + 72);
    v18 = (v14 + 8);
    v39 = (v14 + 32);
    v40 = v16;
    v19 = v16 + v17 * (a3 - 1);
    v38 = -v17;
    v20 = a1 - a3;
    v32 = v17;
    v21 = v16 + v17 * a3;
LABEL_5:
    v36 = v19;
    v37 = a3;
    v34 = v21;
    v35 = v20;
    v22 = v19;
    while (1)
    {
      v23 = v44;
      v24 = v42;
      v42(v44, v21, v8);
      v25 = v45;
      v24(v45, v22, v8);
      sub_215A12538(&qword_27CA7E2B8, MEMORY[0x277CC9AF8]);
      v26 = sub_215A704E0();
      v27 = *v18;
      (*v18)(v25, v8);
      result = v27(v23, v8);
      if ((v26 & 1) == 0)
      {
LABEL_4:
        a3 = v37 + 1;
        v19 = v36 + v32;
        v20 = v35 - 1;
        v21 = v34 + v32;
        if (v37 + 1 == v33)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v40)
      {
        break;
      }

      v28 = *v39;
      v29 = v41;
      (*v39)(v41, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v28)(v22, v29, v8);
      v22 += v38;
      v21 += v38;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_215A10314(int64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v122 = a1;
  v8 = sub_215A6FA10();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v127 = &v119 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v134 = &v119 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v140 = &v119 - v15;
  result = MEMORY[0x28223BE20](v14);
  v139 = &v119 - v17;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = MEMORY[0x277D84F90];
LABEL_94:
    v21 = *v122;
    if (!*v122)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_126:
      result = sub_215A3ED68(v20);
      v20 = result;
    }

    v142 = v20;
    v115 = *(v20 + 2);
    if (v115 >= 2)
    {
      while (*a3)
      {
        v116 = *&v20[16 * v115];
        v117 = *&v20[16 * v115 + 24];
        sub_215A10D3C(*a3 + v9[9] * v116, *a3 + v9[9] * *&v20[16 * v115 + 16], *a3 + v9[9] * v117, v21);
        if (v5)
        {
        }

        if (v117 < v116)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_215A3ED68(v20);
        }

        if (v115 - 2 >= *(v20 + 2))
        {
          goto LABEL_120;
        }

        v118 = &v20[16 * v115];
        *v118 = v116;
        *(v118 + 1) = v117;
        v142 = v20;
        result = sub_215A3ECDC(v115 - 1);
        v20 = v142;
        v115 = *(v142 + 2);
        if (v115 <= 1)
        {
        }
      }

      goto LABEL_130;
    }
  }

  v119 = a4;
  v19 = 0;
  v137 = (v9 + 1);
  v138 = v9 + 2;
  v136 = (v9 + 4);
  v20 = MEMORY[0x277D84F90];
  v124 = v9;
  v141 = v8;
  v120 = a3;
  while (1)
  {
    v21 = v19;
    v125 = v20;
    if (v19 + 1 >= v18)
    {
      v34 = v19 + 1;
    }

    else
    {
      v132 = v18;
      v121 = v5;
      v22 = *a3;
      v23 = v9[9];
      v24 = v19;
      v123 = v19;
      v25 = &v22[v23 * (v19 + 1)];
      v26 = v8;
      v27 = v9[2];
      v28 = v139;
      v27(v139, v25, v26);
      v29 = &v22[v23 * v24];
      v30 = v140;
      v131 = v27;
      v27(v140, v29, v26);
      v130 = sub_215A12538(&qword_27CA7E2B8, MEMORY[0x277CC9AF8]);
      LODWORD(v133) = sub_215A704E0();
      v31 = v9[1];
      v31(v30, v26);
      v129 = v31;
      result = (v31)(v28, v26);
      v32 = v123 + 2;
      v135 = v23;
      v33 = &v22[v23 * (v123 + 2)];
      while (1)
      {
        v34 = v132;
        if (v132 == v32)
        {
          break;
        }

        v35 = v139;
        v36 = v9;
        v37 = v141;
        v38 = v131;
        (v131)(v139, v33, v141);
        v39 = v140;
        v38(v140, v25, v37);
        v40 = sub_215A704E0() & 1;
        v41 = v129;
        (v129)(v39, v37);
        v42 = v37;
        v9 = v36;
        result = v41(v35, v42);
        ++v32;
        v33 += v135;
        v25 += v135;
        if ((v133 & 1) != v40)
        {
          v34 = v32 - 1;
          break;
        }
      }

      v5 = v121;
      v20 = v125;
      v8 = v141;
      a3 = v120;
      v21 = v123;
      if (v133)
      {
        if (v34 < v123)
        {
          goto LABEL_123;
        }

        if (v123 < v34)
        {
          v43 = v34;
          v44 = v135 * (v34 - 1);
          v45 = v34 * v135;
          v132 = v34;
          v46 = v123;
          v47 = v123 * v135;
          do
          {
            if (v46 != --v43)
            {
              v49 = *a3;
              if (!*a3)
              {
                goto LABEL_129;
              }

              v133 = *v136;
              v133(v127, &v49[v47], v141);
              if (v47 < v44 || &v49[v47] >= &v49[v45])
              {
                v48 = v141;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v48 = v141;
                if (v47 != v44)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              result = (v133)(&v49[v44], v127, v48);
              v9 = v124;
              v20 = v125;
            }

            ++v46;
            v44 -= v135;
            v45 -= v135;
            v47 += v135;
          }

          while (v46 < v43);
          v5 = v121;
          v8 = v141;
          v21 = v123;
          v34 = v132;
        }
      }
    }

    v50 = a3[1];
    if (v34 < v50)
    {
      if (__OFSUB__(v34, v21))
      {
        goto LABEL_122;
      }

      if (v34 - v21 < v119)
      {
        if (__OFADD__(v21, v119))
        {
          goto LABEL_124;
        }

        if (v21 + v119 >= v50)
        {
          v51 = a3[1];
        }

        else
        {
          v51 = v21 + v119;
        }

        if (v51 < v21)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v34 != v51)
        {
          break;
        }
      }
    }

    v52 = v34;
    if (v34 < v21)
    {
      goto LABEL_121;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_215A38FAC(0, *(v20 + 2) + 1, 1, v20);
      v20 = result;
    }

    v54 = *(v20 + 2);
    v53 = *(v20 + 3);
    v55 = v54 + 1;
    if (v54 >= v53 >> 1)
    {
      result = sub_215A38FAC((v53 > 1), v54 + 1, 1, v20);
      v20 = result;
    }

    *(v20 + 2) = v55;
    v56 = &v20[16 * v54];
    *(v56 + 4) = v21;
    *(v56 + 5) = v52;
    v21 = *v122;
    if (!*v122)
    {
      goto LABEL_131;
    }

    v128 = v52;
    if (v54)
    {
      while (1)
      {
        v57 = v55 - 1;
        if (v55 >= 4)
        {
          break;
        }

        if (v55 == 3)
        {
          v58 = *(v20 + 4);
          v59 = *(v20 + 5);
          v68 = __OFSUB__(v59, v58);
          v60 = v59 - v58;
          v61 = v68;
LABEL_52:
          if (v61)
          {
            goto LABEL_110;
          }

          v74 = &v20[16 * v55];
          v76 = *v74;
          v75 = *(v74 + 1);
          v77 = __OFSUB__(v75, v76);
          v78 = v75 - v76;
          v79 = v77;
          if (v77)
          {
            goto LABEL_113;
          }

          v80 = &v20[16 * v57 + 32];
          v82 = *v80;
          v81 = *(v80 + 1);
          v68 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v68)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v78, v83))
          {
            goto LABEL_117;
          }

          if (v78 + v83 >= v60)
          {
            if (v60 < v83)
            {
              v57 = v55 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v84 = &v20[16 * v55];
        v86 = *v84;
        v85 = *(v84 + 1);
        v68 = __OFSUB__(v85, v86);
        v78 = v85 - v86;
        v79 = v68;
LABEL_66:
        if (v79)
        {
          goto LABEL_112;
        }

        v87 = &v20[16 * v57];
        v89 = *(v87 + 4);
        v88 = *(v87 + 5);
        v68 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v68)
        {
          goto LABEL_115;
        }

        if (v90 < v78)
        {
          goto LABEL_3;
        }

LABEL_73:
        v95 = v57 - 1;
        if (v57 - 1 >= v55)
        {
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
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v96 = *&v20[16 * v95 + 32];
        v97 = *&v20[16 * v57 + 40];
        sub_215A10D3C(*a3 + v9[9] * v96, *a3 + v9[9] * *&v20[16 * v57 + 32], *a3 + v9[9] * v97, v21);
        if (v5)
        {
        }

        if (v97 < v96)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_215A3ED68(v20);
        }

        if (v95 >= *(v20 + 2))
        {
          goto LABEL_107;
        }

        v98 = &v20[16 * v95];
        *(v98 + 4) = v96;
        *(v98 + 5) = v97;
        v142 = v20;
        result = sub_215A3ECDC(v57);
        v20 = v142;
        v55 = *(v142 + 2);
        v8 = v141;
        if (v55 <= 1)
        {
          goto LABEL_3;
        }
      }

      v62 = &v20[16 * v55 + 32];
      v63 = *(v62 - 64);
      v64 = *(v62 - 56);
      v68 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      if (v68)
      {
        goto LABEL_108;
      }

      v67 = *(v62 - 48);
      v66 = *(v62 - 40);
      v68 = __OFSUB__(v66, v67);
      v60 = v66 - v67;
      v61 = v68;
      if (v68)
      {
        goto LABEL_109;
      }

      v69 = &v20[16 * v55];
      v71 = *v69;
      v70 = *(v69 + 1);
      v68 = __OFSUB__(v70, v71);
      v72 = v70 - v71;
      if (v68)
      {
        goto LABEL_111;
      }

      v68 = __OFADD__(v60, v72);
      v73 = v60 + v72;
      if (v68)
      {
        goto LABEL_114;
      }

      if (v73 >= v65)
      {
        v91 = &v20[16 * v57 + 32];
        v93 = *v91;
        v92 = *(v91 + 1);
        v68 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v68)
        {
          goto LABEL_118;
        }

        if (v60 < v94)
        {
          v57 = v55 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v18 = a3[1];
    v19 = v128;
    if (v128 >= v18)
    {
      goto LABEL_94;
    }
  }

  v121 = v5;
  v99 = *a3;
  v100 = v9[9];
  v135 = v9[2];
  v101 = v99 + v100 * (v34 - 1);
  v102 = -v100;
  v123 = v21;
  v103 = v21 - v34;
  v133 = v99;
  v126 = v100;
  v104 = v99 + v34 * v100;
  v128 = v51;
LABEL_85:
  v131 = v101;
  v132 = v34;
  v129 = v104;
  v130 = v103;
  v105 = v101;
  while (1)
  {
    v106 = v139;
    v107 = v135;
    (v135)(v139, v104, v8);
    v108 = v140;
    v107(v140, v105, v141);
    sub_215A12538(&qword_27CA7E2B8, MEMORY[0x277CC9AF8]);
    v109 = sub_215A704E0();
    v110 = *v137;
    v111 = v108;
    v8 = v141;
    (*v137)(v111, v141);
    result = v110(v106, v8);
    if ((v109 & 1) == 0)
    {
LABEL_84:
      v34 = v132 + 1;
      v101 = &v131[v126];
      v103 = v130 - 1;
      v104 = &v129[v126];
      v52 = v128;
      if (v132 + 1 != v128)
      {
        goto LABEL_85;
      }

      v5 = v121;
      a3 = v120;
      v9 = v124;
      v20 = v125;
      v21 = v123;
      if (v128 < v123)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v133)
    {
      break;
    }

    v112 = *v136;
    v113 = v134;
    (*v136)(v134, v104, v8);
    swift_arrayInitWithTakeFrontToBack();
    v112(v105, v113, v8);
    v105 += v102;
    v104 += v102;
    if (__CFADD__(v103++, 1))
    {
      goto LABEL_84;
    }
  }

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
  return result;
}

uint64_t sub_215A10D3C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v52 = sub_215A6FA10();
  v8 = *(v52 - 8);
  v9 = MEMORY[0x28223BE20](v52);
  v50 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v49 = &v40 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_63;
  }

  v51 = a3;
  v16 = (a2 - a1) / v14;
  v55 = a1;
  v54 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v27 = a4 + v18;
    if (v18 >= 1)
    {
      v28 = -v14;
      v43 = a4;
      v44 = (v8 + 16);
      v41 = (v8 + 8);
      v42 = a1;
      v29 = a4 + v18;
      v30 = v51;
      v45 = v28;
      do
      {
        v40 = v27;
        v31 = a2 + v28;
        v47 = a2 + v28;
        v48 = v27;
        v46 = a2;
        while (1)
        {
          if (a2 <= a1)
          {
            v55 = a2;
            v27 = v40;
            goto LABEL_59;
          }

          v33 = v30;
          v51 = v30 + v28;
          v34 = v29 + v28;
          v35 = *v44;
          v36 = v49;
          v37 = v52;
          (*v44)(v49, v29 + v28, v52);
          v38 = v50;
          v35(v50, v31, v37);
          sub_215A12538(&qword_27CA7E2B8, MEMORY[0x277CC9AF8]);
          LOBYTE(v35) = sub_215A704E0();
          v39 = *v41;
          (*v41)(v38, v37);
          v39(v36, v37);
          if (v35)
          {
            break;
          }

          v30 = v51;
          if (v33 < v29 || v51 >= v29)
          {
            swift_arrayInitWithTakeFrontToBack();
            v31 = v47;
            a1 = v42;
          }

          else
          {
            v31 = v47;
            a1 = v42;
            if (v33 != v29)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v48 = v34;
          v29 = v34;
          v32 = v34 > v43;
          v28 = v45;
          a2 = v46;
          if (!v32)
          {
            v27 = v48;
            goto LABEL_58;
          }
        }

        v30 = v51;
        if (v33 < v46 || v51 >= v46)
        {
          a2 = v47;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v42;
        }

        else
        {
          a2 = v47;
          a1 = v42;
          if (v33 != v46)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v27 = v48;
        v28 = v45;
      }

      while (v29 > v43);
    }

LABEL_58:
    v55 = a2;
LABEL_59:
    v53 = v27;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v48 = a4 + v17;
    v53 = a4 + v17;
    if (v17 >= 1 && a2 < v51)
    {
      v46 = *(v8 + 16);
      v47 = v8 + 16;
      v44 = v14;
      v45 = (v8 + 8);
      do
      {
        v20 = v49;
        v21 = v52;
        v22 = v46;
        v46(v49, a2, v52);
        v23 = v50;
        v22(v50, a4, v21);
        sub_215A12538(&qword_27CA7E2B8, MEMORY[0x277CC9AF8]);
        LOBYTE(v22) = sub_215A704E0();
        v24 = *v45;
        (*v45)(v23, v21);
        v24(v20, v21);
        if (v22)
        {
          v25 = v44;
          if (a1 < a2 || a1 >= v44 + a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v25;
        }

        else
        {
          v25 = v44;
          v26 = v44 + a4;
          if (a1 < a4 || a1 >= v26)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v54 = v26;
          a4 += v25;
        }

        a1 += v25;
        v55 = a1;
      }

      while (a4 < v48 && a2 < v51);
    }
  }

  sub_215A11330(&v55, &v54, &v53);
  return 1;
}

uint64_t sub_215A11330(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_215A6FA10();
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

void sub_215A11414()
{
  *(v0 + OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController__collectionView) = 0;
  *(v0 + OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController_isSelectingItem) = 0;
  *(v0 + OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController_reloadFlags) = 0;
  v1 = OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController_tabUUIDToIconRegistration;
  *(v0 + v1) = sub_215837490(MEMORY[0x277D84F90]);
  v2 = (v0 + OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController_didUpdateEditingHandler);
  *v2 = CGSizeMake;
  v2[1] = 0;
  v3 = (v0 + OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController_selectedItemProvider);
  *v3 = sub_215A0BE7C;
  v3[1] = 0;
  *(v0 + OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController____lazy_storage___collectionDataSource) = 0;
  *(v0 + OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController____lazy_storage___collectionLayout) = 0;
  *(v0 + OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController_needsUpdateSelection) = 0;
  v4 = OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController_hoverRecognizer;
  *(v0 + v4) = [objc_allocWithZone(MEMORY[0x277D755A0]) init];
  v5 = OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController_tabHoverPreviewController;
  *(v0 + v5) = [objc_allocWithZone(MEMORY[0x277D28D88]) init];
  *(v0 + OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController_tabHoverPreviewSnapshotsNeedUpdate) = 0;
  *(v0 + OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController_displayedProfile) = 0;
  *(v0 + OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController_profilePickerMenu) = 0;
  sub_215A70CB0();
  __break(1u);
}

id sub_215A11580()
{
  v1 = v0;
  v2 = sub_21583D558();
  sub_215A70250();

  if (!v6)
  {
    return 0;
  }

  if ([v1 isEditing])
  {
    v3 = [v6 supportsMultipleSelection];
  }

  else
  {
    v3 = [v6 shouldPersistSelection];
  }

  v4 = v3;

  return v4;
}

void sub_215A11618()
{
  v1 = v0;
  v2 = sub_21583D558();
  sub_215A70250();

  if (v4)
  {
    if ([v1 isEditing])
    {
    }

    else
    {
      v3 = OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController_isSelectingItem;
      v1[OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController_isSelectingItem] = 1;
      [v4 didSelectItem];

      v1[v3] = 0;
    }
  }
}

uint64_t sub_215A116B0()
{
  v1 = v0;
  v2 = sub_21583D558();
  sub_215A70250();

  if (!v5)
  {
    return 0;
  }

  if ([v1 isEditing])
  {

    return 0;
  }

  v4 = [v5 shouldPersistSelection];

  return v4 ^ 1;
}

void sub_215A11740()
{
  v1 = v0;
  v2 = sub_21583D558();
  sub_215A70250();

  if (v9)
  {
    v3 = [v9 viewController];
    if (v3)
    {
      v4 = v3;
      v5 = [v1 navigationController];
      if (v5)
      {
        v6 = v5;
        [v5 pushViewController:v4 animated:1];
      }

      v7 = [objc_opt_self() sharedLogger];
      if (v7)
      {
        v8 = v7;
        [v7 didUseSidebarAction_];
      }
    }

    else
    {
      [v9 didSelectItem];
    }
  }
}

void sub_215A1185C()
{
  v0 = sub_215A6F960();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - v5;
  v7 = sub_21583D558();
  sub_215A70250();

  v8 = v12;
  if (v12)
  {
    v9 = [v12 tabUUID];
    if (v9)
    {
      v10 = v9;
      sub_215A6F950();

      (*(v1 + 32))(v6, v4, v0);
      sub_215A0D0A4(0, v6);

      (*(v1 + 8))(v6, v0);
    }

    else
    {
    }
  }
}

id sub_215A119D8(void *a1)
{
  v3 = sub_215A6FA10();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v1;
  result = [*(v1 + OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController_configuration) tabGroupProvider];
  if (result)
  {
    v8 = result;
    v27 = a1;

    sub_215A0FE7C(&v27);
    v9 = v27;
    v27 = MEMORY[0x277D84F90];
    v10 = v9[2];
    if (v10)
    {
      v22[1] = v9;
      v23 = v8;
      v11 = v4 + 16;
      v12 = *(v4 + 16);
      v13 = v9 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
      v14 = *(v4 + 72);
      v15 = (v11 - 8);
      v24 = MEMORY[0x277D84F90];
      v12(v6, v13, v3);
      while (1)
      {
        v16 = sub_21583D558();
        sub_215A70250();

        v17 = (*v15)(v6, v3);
        if (v26)
        {
          MEMORY[0x2160730A0](v17);
          if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v24 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_215A70640();
          }

          sub_215A70660();
          v24 = v27;
        }

        v13 += v14;
        if (!--v10)
        {
          break;
        }

        v12(v6, v13, v3);
      }

      v8 = v23;
      v18 = v24;
      if (!(v24 >> 62))
      {
LABEL_11:
        if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_12:
          v19 = objc_opt_self();
          sub_2159F7DA8(0, &qword_2811A2570);
          v20 = sub_215A705D0();

          v21 = [v19 contextMenuConfigurationForLibraryItems:v20 dataSource:v8];
          swift_unknownObjectRelease();

          return v21;
        }

        goto LABEL_15;
      }
    }

    else
    {

      v18 = MEMORY[0x277D84F90];
      if (!(MEMORY[0x277D84F90] >> 62))
      {
        goto LABEL_11;
      }
    }

    if (sub_215A70CD0())
    {
      goto LABEL_12;
    }

LABEL_15:
    swift_unknownObjectRelease();

    return 0;
  }

  return result;
}

id sub_215A11CC8()
{
  v1 = v0;
  v2 = sub_21583D558();
  sub_215A70250();

  if (!v5)
  {
    return 0;
  }

  if ([v1 isEditing])
  {

    return 0;
  }

  v4 = [v5 selectionFollowsFocus];

  return v4;
}

uint64_t sub_215A11D58(void *a1)
{
  v2 = sub_21583D558();
  sub_215A70250();

  if (!v11)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = [v11 dragItem];
  if (!v3)
  {

    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v5 = sub_215A6F9B0();
  v6 = [a1 cellForItemAtIndexPath_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7DCF0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_215A96990;
  if (v6)
  {
    v8 = [v6 contentView];
  }

  else
  {
    v8 = 0;
  }

  v9 = [v4 safari:v8 itemWithCustomBackgroundForPreviewView:?];

  *(v7 + 32) = v9;
  return v7;
}

uint64_t sub_215A11EA4()
{
  v0 = sub_21583D558();
  sub_215A70250();

  if (v5)
  {
    v1 = [v5 dragItem];
    if (v1)
    {
      v2 = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7DCF0);
      v3 = swift_allocObject();
      *(v3 + 16) = xmmword_215A96990;
      *(v3 + 32) = v2;

      return v3;
    }
  }

  return MEMORY[0x277D84F90];
}

id sub_215A11F60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7DF78);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  v7 = sub_215A6FA10();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_215A07074(a2, v6, &qword_27CA7DF78);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_21583F14C(v6, &qword_27CA7DF78);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v11 = sub_21583D558();
    sub_215A70250();

    v12 = v18;
    if (v18)
    {
      v13 = [v18 dropOperationForSession_];
      v14 = [v12 dropIntentForSession_];
      v15 = [objc_allocWithZone(MEMORY[0x277D752E8]) initWithDropOperation:v13 intent:v14];

      (*(v8 + 8))(v10, v7);
      return v15;
    }

    (*(v8 + 8))(v10, v7);
  }

  return [objc_allocWithZone(MEMORY[0x277D752E8]) initWithDropOperation_];
}

void sub_215A121BC(void *a1)
{
  v2 = v1;
  v4 = sub_215A6FA10();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - v9;
  v11 = [a1 destinationIndexPath];
  if (v11)
  {
    v12 = v11;
    sub_215A6F9C0();

    (*(v5 + 32))(v10, v8, v4);
    v13 = sub_21583D558();
    sub_215A6FA00();
    sub_215A70260();

    v14 = v20;
    if (!v20)
    {
LABEL_5:
      (*(v5 + 8))(v10, v4);
      return;
    }

    v15 = *(v2 + OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController____lazy_storage___collectionDataSource);
    sub_215A70250();

    v16 = v20;
    if (v20)
    {
      v17 = [v14 itemControllerToHandleDropItemsFromSession:objc_msgSend(a1 withProposedDestinationItemController:sel_session) atIndex:{v20, sub_215A6F9D0()}];
      swift_unknownObjectRelease();
      v18 = [a1 proposal];
      [v17 performDropWithProposal:v18 session:objc_msgSend(a1 inViewController:{sel_session), v2}];

      swift_unknownObjectRelease();
      goto LABEL_5;
    }

    (*(v5 + 8))(v10, v4);
  }
}

uint64_t sub_215A12438(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_2159F7DA8(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_215A12498(uint64_t a1)
{
  v3 = *(sub_215A6F960() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);

  sub_215A0C900(a1, v6, v7, v1 + v4, v5);
}

uint64_t sub_215A12538(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_215A12588(uint64_t a1, uint64_t a2, void **a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7E2F0);

  return sub_215A0BE84(a1, a2, a3);
}

uint64_t objectdestroy_67Tm(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

uint64_t sub_215A126B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7E2E8);

  return sub_215A0C0B4(a1, a2, a3);
}

id sub_215A12784(SEL *a1)
{
  v3 = v1;
  v4 = sub_215A6F960();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - v9;
  v11 = [v3 tabUUID];
  if (!v11)
  {
    return 0;
  }

  v12 = v11;
  sub_215A6F950();

  (*(v5 + 32))(v10, v8, v4);
  v13 = [v3 configuration];
  v14 = [v13 *a1];

  if (v14)
  {
    v15 = sub_215A6F940();
    v16 = v14[2](v14, v15);

    _Block_release(v14);
  }

  else
  {
    v16 = 0;
  }

  (*(v5 + 8))(v10, v4);
  return v16;
}

id TabLibraryItemController.swipeActionsConfiguration.getter()
{
  v1 = [v0 configuration];
  v2 = [v1 tabGroupProvider];

  if (!v2)
  {
    return 0;
  }

  v3 = [v0 tab];
  v4 = [v0 tabGroup];
  v5 = [v2 swipeActionsConfigurationForTab:v3 inTabGroup:v4];
  swift_unknownObjectRelease();

  return v5;
}

Swift::Void __swiftcall TabLibraryItemController.updateListContentConfiguration(_:)(UIListContentConfiguration a1)
{
  v3 = [(objc_class *)a1.super.isa imageProperties];
  v4 = objc_opt_self();
  if ([v4 isEnhancedVerticalTabsEnabled])
  {
    v5 = 20.0;
  }

  else
  {
    v5 = 16.0;
  }

  [v3 setMaximumSize_];

  v6 = [(objc_class *)a1.super.isa imageProperties];
  if ([v4 isEnhancedVerticalTabsEnabled])
  {
    v7 = 20.0;
  }

  else
  {
    v7 = 16.0;
  }

  [v6 setReservedLayoutSize_];

  v8 = sub_215A12784(&selRef_tabDocumentProvider);
  if (!v8 || (v9 = v8, v10 = [v8 tabBarTitle], v9, !v10))
  {
    v11 = [v1 tab];
    v10 = [(WBTab *)v11 displayTitle];
  }

  sub_215A70540();

  v12 = sub_215A70500();

  [(objc_class *)a1.super.isa setText:v12];
}

id sub_215A12CE8()
{
  v1 = OBJC_IVAR___TabLibraryItemController____lazy_storage___pinnedAccessory;
  v2 = *(v0 + OBJC_IVAR___TabLibraryItemController____lazy_storage___pinnedAccessory);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___TabLibraryItemController____lazy_storage___pinnedAccessory);
  }

  else
  {
    v4 = v0;
    sub_2159F7DA8(0, &unk_2811A2520);
    v5 = sub_215A70500();
    v6 = [objc_opt_self() systemImageNamed_];

    v7 = sub_215A70A90();
    v8 = [objc_allocWithZone(ActionCellAccessory) initWithAction_];
    v9 = [v8 customView];
    [v9 setUserInteractionEnabled_];

    v10 = [objc_opt_self() configurationWithTextStyle:*MEMORY[0x277D76918] scale:2];
    [v8 setPreferredSymbolConfiguration_];

    v11 = *(v4 + v1);
    *(v4 + v1) = v8;
    v3 = v8;

    v2 = 0;
  }

  v12 = v2;
  return v3;
}

id sub_215A12E98(uint64_t *a1, Class *a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = [objc_allocWithZone(*a2) init];
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_215A12F04()
{
  v1 = OBJC_IVAR___TabLibraryItemController____lazy_storage___participantsAccessory;
  v2 = *(v0 + OBJC_IVAR___TabLibraryItemController____lazy_storage___participantsAccessory);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___TabLibraryItemController____lazy_storage___participantsAccessory);
  }

  else
  {
    v4 = sub_215A12E98(&OBJC_IVAR___TabLibraryItemController____lazy_storage___participantsView, 0x277D28BC8);
    v5 = [objc_allocWithZone(MEMORY[0x277D75250]) initWithCustomView:v4 placement:1];

    [*(v0 + OBJC_IVAR___TabLibraryItemController____lazy_storage___participantsView) setFrame_];
    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_215A12FD8()
{
  v1 = OBJC_IVAR___TabLibraryItemController____lazy_storage___unreadAccessory;
  v2 = *(v0 + OBJC_IVAR___TabLibraryItemController____lazy_storage___unreadAccessory);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___TabLibraryItemController____lazy_storage___unreadAccessory);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D28EB0]) init];
    v5 = [objc_allocWithZone(MEMORY[0x277D75250]) initWithCustomView:v4 placement:1];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_215A13080()
{
  v0 = sub_215A70AF0();
  MEMORY[0x28223BE20](v0 - 8);
  if (![objc_opt_self() isSolariumEnabled])
  {
    return 0;
  }

  result = sub_215A12784(&selRef_tabDocumentProvider);
  if (!result)
  {
    return result;
  }

  v2 = result;
  v3 = [result mediaStateIcon];
  if (!v3)
  {

    return 0;
  }

  v4 = v3;
  sub_215A70AE0();
  v5 = [objc_opt_self() secondaryLabelColor];
  sub_215A70AC0();
  result = _SFImageForMediaStateIcon();
  if (result)
  {
    v6 = result;
    sub_2159F7DA8(0, &unk_2811A26A0);
    v7 = [v6 imageWithRenderingMode_];

    sub_215A70AD0();
    v8 = [objc_opt_self() configurationWithTextStyle:*MEMORY[0x277D76918] scale:2];
    sub_215A70AA0();
    sub_2159F7DA8(0, &unk_2811A2520);
    *(swift_allocObject() + 16) = v2;
    v9 = v2;
    sub_215A70A90();
    v10 = sub_215A70B00();
    [v10 setUserInteractionEnabled_];
    v11 = objc_opt_self();
    v12 = swift_allocObject();
    *(v12 + 16) = v9;
    aBlock[4] = sub_215A16260;
    aBlock[5] = v12;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2159F5A18;
    aBlock[3] = &block_descriptor_18;
    v13 = _Block_copy(aBlock);
    v14 = v9;

    v15 = [v11 safari:v13 menuWithUncachedChildrenProvider:?];
    _Block_release(v13);
    [v10 setMenu_];

    [v10 sf_applyContentSizeCategoryLimitsForToolbarButton];
    v16 = [objc_allocWithZone(MEMORY[0x277D75250]) initWithCustomView:v10 placement:1];

    return v16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_215A133F4(void *a1)
{
  v1 = [a1 mediaStateMuteButtonMenuElements];
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = v1;
  sub_2159F7DA8(0, &unk_2811A25B0);
  v3 = sub_215A705E0();

  return v3;
}

uint64_t TabLibraryItemController.accessories.getter()
{
  v18 = MEMORY[0x277D84F90];
  sub_215A12E98(&OBJC_IVAR___TabLibraryItemController____lazy_storage___multiSelectAccessory, 0x277D75268);
  MEMORY[0x2160730A0]();
  if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_215A70640();
  }

  sub_215A70660();
  v1 = v18;
  v2 = sub_215A13080();
  if (v2)
  {
    v3 = v2;
    MEMORY[0x2160730A0]();
    if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_215A70640();
    }

    sub_215A70660();

    v1 = v18;
  }

  v4 = sub_215A12784(&selRef_collectionViewTabProvider);
  if (v4)
  {
    v5 = [v4 isPinned];
    swift_unknownObjectRelease();
    if (!v5)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v6 = [v0 tab];
    v7 = [v6 isPinned];

    if ((v7 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  sub_215A12CE8();
  MEMORY[0x2160730A0]();
  if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_215A70640();
  }

  sub_215A70660();
  v1 = v18;
LABEL_14:
  v8 = sub_215A12784(&selRef_collectionViewTabProvider);
  if (!v8)
  {
    goto LABEL_24;
  }

  v9 = [v8 shareParticipants];
  swift_unknownObjectRelease();
  v10 = v9;
  if (!v9)
  {
    sub_2159F7DA8(0, &qword_27CA7E3A0);
    sub_215A705E0();
    v10 = sub_215A705D0();
  }

  sub_2159F7DA8(0, &qword_27CA7E3A0);
  v11 = sub_215A705E0();
  if (v11 >> 62)
  {
    v14 = sub_215A70CD0();

    if (v14)
    {
      goto LABEL_19;
    }

LABEL_23:

    goto LABEL_24;
  }

  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v12)
  {
    goto LABEL_23;
  }

LABEL_19:
  v13 = sub_215A12E98(&OBJC_IVAR___TabLibraryItemController____lazy_storage___participantsView, 0x277D28BC8);
  [v13 setShareParticipants_];

  sub_215A12F04();
  MEMORY[0x2160730A0]();
  if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_215A70640();
  }

  sub_215A70660();
  v1 = v18;
LABEL_24:
  v15 = sub_215A12784(&selRef_collectionViewTabProvider);
  if (v15)
  {
    v16 = [v15 isUnread];
    swift_unknownObjectRelease();
    if (v16)
    {
      sub_215A12FD8();
      MEMORY[0x2160730A0]();
      if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_215A70640();
      }

      sub_215A70660();
      return v18;
    }
  }

  return v1;
}

uint64_t TabLibraryItemController.tabUUID.getter()
{
  v1 = [v0 tab];
  v2 = [v1 uuid];

  sub_215A70540();
  sub_215A6F920();
}

Swift::Void __swiftcall TabLibraryItemController.didSelectItem()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7DF80);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v20 - v3;
  v5 = sub_215A6F960();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - v10;
  v12 = [v1 tabUUID];
  if (v12)
  {
    v13 = v12;
    sub_215A6F950();

    (*(v6 + 32))(v11, v9, v5);
    v14 = [v1 configuration];
    v15 = [v14 tabGroupProvider];

    if (v15)
    {
      v16 = sub_215A6F940();
      v17 = [v1 tabGroup];
      v18 = [v17 uuid];

      sub_215A70540();
      sub_215A6F920();

      if ((*(v6 + 48))(v4, 1, v5) == 1)
      {
        v19 = 0;
      }

      else
      {
        v19 = sub_215A6F940();
        (*(v6 + 8))(v4, v5);
      }

      [v15 switchToTabWithUUID:v16 inTabGroupWithUUID:v19];
      swift_unknownObjectRelease();
    }

    (*(v6 + 8))(v11, v5);
  }
}

uint64_t TabLibraryItemController.isSelected.getter()
{
  v1 = v0;
  v2 = [v0 configuration];
  v3 = [v2 tabGroupProvider];

  if (!v3)
  {
    v12 = 0;
    return v12 & 1;
  }

  sub_2159F7DA8(0, &unk_2811A2530);
  v4 = [v1 tab];
  v5 = [v1 tabGroup];
  v6 = [v3 defaultTabToSelectInTabGroup_];

  v7 = sub_215A70A80();
  v8 = [v1 tabGroup];
  v9 = [v3 activeTabGroupOrTabGroupVisibleInSwitcher];
  v10 = v9;
  if (v8)
  {
    if (v9)
    {
      sub_2159F7DA8(0, &qword_27CA7E3A8);
      v11 = sub_215A70A80();
    }

    else
    {
      v11 = 0;
    }

    goto LABEL_9;
  }

  if (v9)
  {
    v11 = 0;
    v8 = v9;
LABEL_9:

    goto LABEL_10;
  }

  v11 = 1;
LABEL_10:
  if ([objc_opt_self() isEnhancedVerticalTabsEnabled])
  {
    swift_unknownObjectRelease();
    v12 = v7 & v11;
  }

  else
  {
    v13 = [v1 tabGroup];
    v14 = [v13 uuid];

    if (!v14)
    {
      sub_215A70540();
      v14 = sub_215A70500();
    }

    v15 = [v3 isTabGroupUUIDExpanded_];
    swift_unknownObjectRelease();

    v12 = v7 & v11 & v15;
  }

  return v12 & 1;
}

Swift::Void __swiftcall TabLibraryItemController.willDisplay(_:)(UICollectionViewCell *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7E3B0);
  MEMORY[0x28223BE20](v2);
  v4 = &v47 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7DF80);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v51 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v47 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v47 - v11;
  v13 = sub_215A6F960();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v50 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v47 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v47 - v20;
  objc_opt_self();
  v22 = swift_dynamicCastObjCClass();
  if (!v22)
  {
    return;
  }

  v23 = v22;
  v52 = a1;
  v24 = [v54 tabUUID];
  if (v24)
  {
    v25 = v24;
    sub_215A6F950();

    v47 = v14[4];
    v47(v21, v19, v13);
    v26 = v14[2];
    v49 = v21;
    v26(v12, v21, v13);
    v53 = v14;
    v27 = v14[7];
    v28 = 1;
    v27(v12, 0, 1, v13);
    v48 = v23;
    v29 = [v23 tabIconRegistration];
    if (v29)
    {
      v30 = v29;
      v31 = [v29 identifier];

      sub_215A6F950();
      v28 = 0;
    }

    v27(v10, v28, 1, v13);
    v32 = *(v2 + 48);
    sub_215A07074(v12, v4, &unk_27CA7DF80);
    sub_215A07074(v10, &v4[v32], &unk_27CA7DF80);
    v33 = v53[6];
    if (v33(v4, 1, v13) == 1)
    {
      sub_21583F14C(v10, &unk_27CA7DF80);
      sub_21583F14C(v12, &unk_27CA7DF80);
      v34 = v33(&v4[v32], 1, v13);
      v35 = v49;
      if (v34 == 1)
      {
        sub_21583F14C(v4, &unk_27CA7DF80);
        (v53[1])(v35, v13);
LABEL_18:

        return;
      }
    }

    else
    {
      v37 = v51;
      sub_215A07074(v4, v51, &unk_27CA7DF80);
      if (v33(&v4[v32], 1, v13) != 1)
      {
        v42 = v50;
        v47(v50, &v4[v32], v13);
        sub_215A146E0();
        v43 = v37;
        v44 = sub_215A704F0();
        v45 = v53[1];
        v45(v42, v13);
        sub_21583F14C(v10, &unk_27CA7DF80);
        sub_21583F14C(v12, &unk_27CA7DF80);
        v45(v43, v13);
        sub_21583F14C(v4, &unk_27CA7DF80);
        v35 = v49;
        if (v44)
        {
          v45(v49, v13);
          goto LABEL_18;
        }

        goto LABEL_14;
      }

      sub_21583F14C(v10, &unk_27CA7DF80);
      sub_21583F14C(v12, &unk_27CA7DF80);
      (v53[1])(v37, v13);
      v35 = v49;
    }

    sub_21583F14C(v4, &qword_27CA7E3B0);
LABEL_14:
    v38 = [v54 configuration];
    v39 = [v38 tabIconPool];

    if (v39)
    {
      v40 = sub_215A6F940();
      v41 = [v39 makeRegistrationForIdentifier_];
    }

    else
    {
      v41 = 0;
    }

    v46 = v53;
    [v48 setTabIconRegistration_];

    (v46[1])(v35, v13);
    return;
  }

  v36 = v52;
}

unint64_t sub_215A146E0()
{
  result = qword_27CA7EB90;
  if (!qword_27CA7EB90)
  {
    sub_215A6F960();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA7EB90);
  }

  return result;
}

id TabLibraryItemController.dragItem.getter()
{
  v1 = [v0 configuration];
  v2 = [v1 tabGroupProvider];

  if (!v2)
  {
    return 0;
  }

  v3 = [v0 tabGroup];
  v4 = [v3 isPrivateBrowsing];

  if (!v4)
  {
    goto LABEL_7;
  }

  result = [objc_opt_self() sharedApplication];
  if (result)
  {
    v6 = result;
    v7 = [result isPrivateBrowsingLocked];

    if (v7)
    {
      swift_unknownObjectRelease();
      return 0;
    }

LABEL_7:
    v8 = [v0 tab];
    v9 = [v2 dragItemForTab:v8 tabItem:0];
    swift_unknownObjectRelease();

    return v9;
  }

  __break(1u);
  return result;
}

void TabLibraryItemController.dropOperation(for:)(unint64_t a1)
{
  v3 = [v1 tabGroup];
  v4 = [v3 isPrivateBrowsing];

  if (v4)
  {
    v5 = [objc_opt_self() sharedApplication];
    if (!v5)
    {
LABEL_38:
      __break(1u);
      return;
    }

    v6 = v5;
    v7 = [v5 isPrivateBrowsingLocked];

    if (v7)
    {
      return;
    }
  }

  v8 = &selRef_isAllowFavoritesInFrequentlyVisitedEnabled;
  v9 = [a1 items];
  sub_2159F7DA8(0, &qword_27CA7E2B0);
  v10 = sub_215A705E0();

  if (v10 >> 62)
  {
    goto LABEL_33;
  }

  for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_215A70CD0())
  {

    if (!i)
    {
      break;
    }

    v12 = [a1 v8[324]];
    v13 = sub_215A705E0();

    if ((v13 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x216073710](0, v13);
    }

    else
    {
      if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_38;
      }

      v14 = *(v13 + 32);
    }

    v15 = v14;

    v16 = sub_215A14CDC(v15);

    v17 = [a1 v8[324]];
    a1 = sub_215A705E0();

    if (a1 >> 62)
    {
      v18 = sub_215A70CD0();
      if (!v18)
      {
LABEL_29:

        return;
      }
    }

    else
    {
      v18 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v18)
      {
        goto LABEL_29;
      }
    }

    v19 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x216073710](v19, a1);
      }

      else
      {
        if (v19 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_32;
        }

        v20 = *(a1 + 8 * v19 + 32);
      }

      v21 = v20;
      v22 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      v23 = [(SEL *)v20 safari_localWBTab];
      if (v23)
      {
        v24 = v23;
        if ([v23 isPinned])
        {

          goto LABEL_29;
        }

        v25 = [v24 isPrivateBrowsing];
        v8 = [v29 tabGroup];
        v26 = [(SEL *)v8 isPrivateBrowsing];

        if (v25 != v26 || v16 != 3)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v27 = [(SEL *)v21 itemProvider];
        sub_2159F7DA8(0, &qword_27CA7E3B8);
        v28 = [v27 canLoadObjectOfClass_];

        if ((v28 & 1) == 0)
        {
          v8 = [(SEL *)v21 _sf_localBookmark];

          v21 = v8;
          if (!v8)
          {
            goto LABEL_29;
          }
        }

        if (v16 != 2)
        {
          goto LABEL_29;
        }
      }

      ++v19;
      if (v22 == v18)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    ;
  }
}

uint64_t sub_215A14CDC(void *a1)
{
  v3 = [a1 safari_localWBTab];
  if (v3)
  {
    v4 = v3;
    if ([v3 isPinned])
    {

      return 0;
    }

    else
    {
      v8 = [v4 isPrivateBrowsing];
      v9 = [v1 tabGroup];
      v10 = [v9 isPrivateBrowsing];

      if (v8 != v10)
      {
        return 0;
      }

      else
      {
        return 3;
      }
    }
  }

  else
  {
    v6 = [a1 itemProvider];
    sub_2159F7DA8(0, &qword_27CA7E3B8);
    v7 = [v6 canLoadObjectOfClass_];

    if ((v7 & 1) == 0)
    {
      result = [a1 _sf_localBookmark];
      if (!result)
      {
        return result;
      }
    }

    return 2;
  }
}

void sub_215A14ECC(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v7 = *(sub_215A6F870() - 8);
    v8 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v9 = *(v7 + 72);
    do
    {
      v10 = sub_215A6F840();
      v11 = [a3 tabGroup];
      [a2 openURL:v10 inTabGroup:v11];

      v8 += v9;
      --v3;
    }

    while (v3);
  }
}

uint64_t sub_215A14FC4(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_215A6F870();
  v2 = sub_215A705E0();

  v1(v2);
}

void (*TabLibraryItemController.closeHandler.getter())()
{
  v1 = [v0 configuration];
  v2 = [v1 tabGroupProvider];

  if (v2)
  {
    v3 = [v0 tab];
    v4 = [v2 canCloseWBTab_];

    if (v4)
    {
      v5 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v6 = swift_allocObject();
      *(v6 + 16) = v5;
      *(v6 + 24) = v2;
      return sub_215A161D0;
    }

    swift_unknownObjectRelease();
  }

  return 0;
}

void sub_215A152B4(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [Strong tab];
    v6 = [a2 canCloseWBTab_];

    if (v6)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7DCF0);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_215A96990;
      *(v7 + 32) = [v4 tab];
      sub_2159F7DA8(0, &qword_2811A2710);
      v8 = sub_215A705D0();

      [a2 closeWBTabs_];
    }
  }
}

uint64_t TabLibraryItemController.hash.getter()
{
  v1 = [v0 tab];
  v2 = [v1 uuid];

  v3 = sub_215A70540();
  v5 = v4;

  v6 = MEMORY[0x216073090](v3, v5);

  return v6;
}

uint64_t TabLibraryItemController.description.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7E220);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_215A96D40;
  type metadata accessor for TabLibraryItemController(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7E420);
  v2 = sub_215A70560();
  v4 = v3;
  *(v1 + 56) = MEMORY[0x277D837D0];
  v5 = sub_2159F501C();
  *(v1 + 32) = v2;
  *(v1 + 40) = v4;
  v6 = MEMORY[0x277D83C10];
  *(v1 + 96) = MEMORY[0x277D83B88];
  *(v1 + 104) = v6;
  *(v1 + 64) = v5;
  *(v1 + 72) = v0;
  v7 = [v0 tab];
  *(v1 + 136) = sub_2159F7DA8(0, &qword_2811A2710);
  *(v1 + 144) = sub_215A161D8();
  *(v1 + 112) = v7;
  return sub_215A70550();
}

uint64_t TabLibraryItemController.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 tabUUID];
  if (v3)
  {
    v4 = v3;
    sub_215A6F950();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_215A6F960();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

uint64_t TabLibraryItemController.title.getter()
{
  v1 = [v0 tab];
  v2 = [v1 title];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_215A70540();

  return v3;
}

BOOL _sSo24TabLibraryItemControllerC14MobileSafariUIE10dropIntent3forSo020UICollectionViewDropI0VSo13UIDropSession_p_tF_0(void *a1)
{
  v2 = [a1 items];
  sub_2159F7DA8(0, &qword_27CA7E2B0);
  v3 = sub_215A705E0();

  if (v3 >> 62)
  {
LABEL_23:
    v4 = sub_215A70CD0();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    v6 = v5;
    if (v4 == v5)
    {
      break;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x216073710](v5, v3);
    }

    else
    {
      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      v7 = *(v3 + 8 * v5 + 32);
    }

    v8 = v7;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v9 = [v7 safari_localWBTab];

    v5 = v6 + 1;
    if (v9)
    {

      goto LABEL_13;
    }
  }

LABEL_13:
  v10 = [a1 items];
  v11 = sub_215A705E0();

  if (v11 >> 62)
  {
    v12 = sub_215A70CD0();
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v4 == v6 || v12 < 2;
}

void sub_215A15C28(void *a1)
{
  v3 = [v1 configuration];
  v4 = [v3 tabGroupProvider];

  if (!v4)
  {
    return;
  }

  v5 = [a1 items];
  sub_2159F7DA8(0, &qword_27CA7E2B0);
  v6 = sub_215A705E0();

  if (v6 >> 62)
  {
LABEL_32:
    v7 = sub_215A70CD0();
    if (v7)
    {
      goto LABEL_4;
    }

LABEL_33:
    swift_unknownObjectRelease();

    return;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    goto LABEL_33;
  }

LABEL_4:
  v8 = 0;
  v41 = v45;
  v40 = xmmword_215A96990;
  v9 = &selRef_setShadowBookmarkList_;
  v42 = v7;
  v43 = v4;
  while (1)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x216073710](v8, v6);
    }

    else
    {
      if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_31;
      }

      v12 = *(v6 + 8 * v8 + 32);
    }

    v11 = v12;
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v14 = [v12 _sf_localTabGroup];
    if (v14)
    {
      break;
    }

    v15 = [v11 _sf_localBookmark];
    if (v15)
    {
      v16 = v15;
      v17 = [v1 tabGroup];
      [v4 openBookmark:v16 inTabGroup:v17];

      v18 = [objc_opt_self() v9[455]];
      if (v18)
      {
        v19 = v18;
        [v18 didUseSidebarAction_];
      }
    }

    else
    {
      v20 = [v11 safari_localWBTab];
      if (v20)
      {
        v21 = v20;
        v22 = [v20 tabGroupUUID];
        if (v22)
        {
          v23 = v22;
          v24 = [v1 tabGroup];
          v16 = [v24 uuid];

          if (!v16)
          {
            sub_215A70540();
            v16 = sub_215A70500();
          }

          v10 = [v1 tab];
          v4 = v43;
          [v43 moveTab:v21 fromTabGroupWithUUID:v23 toTabGroupWithUUID:v16 afterTab:v10];

          v11 = v10;
          v7 = v42;
          v9 = &selRef_setShadowBookmarkList_;
          goto LABEL_6;
        }

        v7 = v42;
        v4 = v43;
      }

      v25 = [v11 itemProvider];
      sub_2159F7DA8(0, &qword_27CA7E3B8);
      v26 = [v25 canLoadObjectOfClass_];

      if (!v26)
      {
        v9 = &selRef_setShadowBookmarkList_;
        goto LABEL_7;
      }

      v27 = objc_opt_self();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7DCF0);
      v28 = swift_allocObject();
      *(v28 + 16) = v40;
      *(v28 + 32) = v11;
      v11 = v11;
      v29 = v4;
      v30 = sub_215A705D0();

      v31 = swift_allocObject();
      *(v31 + 16) = v29;
      *(v31 + 24) = v1;
      v45[2] = sub_215A16248;
      v45[3] = v31;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      v45[0] = sub_215A14FC4;
      v45[1] = &block_descriptor_9_1;
      v32 = _Block_copy(aBlock);
      v33 = v1;
      swift_unknownObjectRetain();

      [v27 _sf_urlsFromDragItems_completionHandler_];
      _Block_release(v32);

      v9 = &selRef_setShadowBookmarkList_;
      v34 = [objc_opt_self() sharedLogger];
      if (!v34)
      {
        v7 = v42;
        v4 = v43;
        goto LABEL_7;
      }

      v16 = v34;
      [v34 didUseSidebarAction_];
      v7 = v42;
      v4 = v43;
    }

LABEL_6:

LABEL_7:
    ++v8;
    if (v13 == v7)
    {
      goto LABEL_33;
    }
  }

  v35 = v9;
  v36 = v14;

  v37 = [v1 tabGroup];
  [v4 moveTabGroup:v36 beforeOrAfterTabGroup:v37];

  v38 = [objc_opt_self() v35 + 2773];
  if (v38)
  {
    v39 = v38;
    [v38 didUseSidebarAction_];
  }

  swift_unknownObjectRelease();
}

unint64_t sub_215A161D8()
{
  result = qword_27CA7E428;
  if (!qword_27CA7E428)
  {
    sub_2159F7DA8(255, &qword_2811A2710);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA7E428);
  }

  return result;
}

id sub_215A16278(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  return v3;
}

void sub_215A16500(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, a3);
}

void sub_215A16650(void *a1)
{
  v2 = v1;
  v4 = sub_215A6FA60();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - v9;
  sub_2159F7DA8(0, &unk_2811A2520);
  sub_215A6FA50();
  sub_215A6FA50();
  sub_215A6FA30();
  v11 = *(v5 + 8);
  v23 = v11;
  v24 = v4;
  v11(v8, v4);
  v11(v10, v4);
  v12 = sub_215A70500();
  v13 = [objc_opt_self() systemImageNamed_];

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = sub_215A70A90();
  [a1 addAction:v14 forControlEvents:0x2000];

  v15 = objc_opt_self();
  v16 = swift_allocObject();
  *(v16 + 16) = v2;
  *(v16 + 24) = a1;
  aBlock[4] = sub_215A18070;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2159F92E8;
  aBlock[3] = &block_descriptor_7;
  v17 = _Block_copy(aBlock);
  v18 = v2;
  v19 = a1;

  v20 = [v15 elementWithUncachedProvider_];
  _Block_release(v17);
  sub_2159F7DA8(0, &unk_2811A26B0);
  sub_215A6FA50();
  sub_215A6FA40();
  v23(v10, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7DCF0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_215A96990;
  *(v21 + 32) = v20;
  v22 = sub_215A70A50();
  [v19 setMenu_];
}

void sub_215A16AC8()
{
  v1 = [v0 currentTabProvider];
  v2 = v1[2]();
  _Block_release(v1);
  if (v2)
  {
    if ([v2 isBlank])
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v3 = [v2 titleForNewBookmark];
      if (v3)
      {
        v1 = v3;
        v4 = [v2 addressForNewBookmark];
        if (v4)
        {
          v5 = v4;
          [objc_allocWithZone(MEMORY[0x277D7B5A0]) initWithTitle:v1 address:v4 collectionType:0];
          swift_unknownObjectRelease();

          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
    }
  }
}

void sub_215A16BD8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong sendAction:sel_addToReadingList_ to:0 forEvent:0];
  }
}

void sub_215A16C44(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v6 = sub_215A6FA60();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v23 - v11;
  v13 = [objc_opt_self() mainBookmarkCollection];
  if (v13)
  {
    v14 = v13;
    v23[0] = a3;
    v23[1] = a2;
    v24 = a1;
    v25 = MEMORY[0x277D84F90];
    sub_2159F7DA8(0, &unk_2811A2520);
    sub_215A6FA50();
    sub_215A6FA50();
    sub_215A6FA30();
    v15 = *(v7 + 8);
    v15(v10, v6);
    v15(v12, v6);
    v16 = sub_215A70500();
    v17 = [objc_opt_self() systemImageNamed_];

    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_215A70A90();
    MEMORY[0x2160730A0]();
    if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_215A70640();
    }

    sub_215A70660();
    v18 = [v14 favoritesFolder];
    v19 = v23[0];
    sub_215A17078(v18, v14);

    MEMORY[0x2160730A0]();
    if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_215A70640();
    }

    sub_215A70660();
    v20 = [v19 syntheticBookmarkProvider];
    if (v20)
    {
      v21 = sub_215A17518(v20);
      sub_215A2A6D8(v21);
      swift_unknownObjectRelease();
    }

    v22 = [v14 rootBookmark];
    sub_215A17078(v22, v14);

    MEMORY[0x2160730A0]();
    if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_215A70640();
    }

    sub_215A70660();
    v24(v25);
  }

  else
  {
    a1(MEMORY[0x277D84F90]);
  }
}

void *sub_215A17078(void *a1, void *a2)
{
  [a1 identifier];
  v5 = [a2 favoritesFolder];
  [v5 &selRef_initWithFolder_inCollection_];

  v6 = sub_215A70500();

  v7 = [objc_opt_self() systemImageNamed_];

  sub_2159F7DA8(0, &unk_2811A2520);
  v8 = [a1 localizedTitle];
  sub_215A70540();

  v9 = swift_allocObject();
  *(v9 + 16) = v2;
  *(v9 + 24) = a1;
  v2;
  v10 = a1;
  v11 = v7;
  v12 = sub_215A70A90();
  v27 = v10;
  v13 = [a2 listWithID_];
  if (v13)
  {
    v14 = v13;
    v15 = [v13 bookmarkArray];
    sub_2159F7DA8(0, &unk_2811A28A0);
    v16 = sub_215A705E0();

    v28 = MEMORY[0x277D84F90];
    if (v16 >> 62)
    {
LABEL_20:
      v17 = sub_215A70CD0();
      v26 = v11;
      if (v17)
      {
LABEL_4:
        v25 = a2;
        v11 = 0;
        a2 = (v16 & 0xC000000000000001);
        v18 = MEMORY[0x277D84F90];
        do
        {
          v19 = v11;
          while (1)
          {
            if (a2)
            {
              v20 = MEMORY[0x216073710](v19, v16);
            }

            else
            {
              if (v19 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_19;
              }

              v20 = *(v16 + 8 * v19 + 32);
            }

            v21 = v20;
            v11 = (v19 + 1);
            if (__OFADD__(v19, 1))
            {
              __break(1u);
LABEL_19:
              __break(1u);
              goto LABEL_20;
            }

            if ([v20 isFolder])
            {
              break;
            }

            ++v19;
            if (v11 == v17)
            {
              goto LABEL_22;
            }
          }

          sub_215A17078(v21, v25);

          MEMORY[0x2160730A0]();
          if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_215A70640();
          }

          sub_215A70660();
          v18 = v28;
        }

        while (v11 != v17);
LABEL_22:

        if (v18 >> 62)
        {
          v11 = v26;
          if (sub_215A70CD0())
          {
            goto LABEL_24;
          }
        }

        else
        {
          v11 = v26;
          if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
LABEL_24:
            sub_2159F7DA8(0, &unk_2811A26B0);
            v22 = [v27 localizedTitle];
            sub_215A70540();

            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7DCF0);
            v23 = swift_allocObject();
            *(v23 + 16) = xmmword_215A96980;
            *(v23 + 32) = v12;
            v11 = v12;
            *(v23 + 40) = sub_215A70A50();
            v12 = sub_215A70A50();
LABEL_27:

            goto LABEL_28;
          }
        }

        goto LABEL_27;
      }
    }

    else
    {
      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v26 = v11;
      if (v17)
      {
        goto LABEL_4;
      }
    }

    v18 = MEMORY[0x277D84F90];
    goto LABEL_22;
  }

LABEL_28:

  return v12;
}

uint64_t sub_215A17518(void *a1)
{
  v2 = sub_215A6FA60();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [a1 hasNamedTabGroups];
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v8 = [a1 activeTabGroup];
    v9 = v8;
    if (!v8)
    {
      v11 = 0;
      v45 = v7;
      v22 = 1;
      goto LABEL_10;
    }

    v10 = [v8 supportsTabGroupFavorites];
    v45 = v7;
    if (!v10)
    {
      v11 = 0;
      v22 = 1;
      goto LABEL_10;
    }

    v11 = v9;
    v12 = [a1 syntheticBookmarkFolderForTabGroup:v11 withAttribution:1];
    if (!v12)
    {

      v22 = 0;
      v11 = 1;
      goto LABEL_10;
    }

    v13 = v12;
    v40 = v5;
    v14 = v3;
    v42 = sub_2159F7DA8(0, &unk_2811A2520);
    v15 = [v13 title];
    v41 = sub_215A70540();

    v16 = sub_215A70500();
    v17 = [objc_opt_self() systemImageNamed_];

    v18 = swift_allocObject();
    v19 = v43;
    *(v18 + 16) = v43;
    *(v18 + 24) = v13;
    v20 = v19;
    v21 = v13;
    sub_215A70A90();
    MEMORY[0x2160730A0]();
    if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_26;
    }

    while (1)
    {
      sub_215A70660();

      v22 = 0;
      v11 = 1;
      v3 = v14;
      v5 = v40;
LABEL_10:
      v23 = [a1 syntheticBookmarkFoldersIncludingActiveTabGroup_];
      sub_2159F7DA8(0, &unk_2811A2750);
      v14 = sub_215A705E0();

      if (v14 >> 62)
      {
        v21 = sub_215A70CD0();
        if (!v21)
        {
LABEL_20:

          goto LABEL_21;
        }
      }

      else
      {
        v21 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v21)
        {
          goto LABEL_20;
        }
      }

      v44 = v7;
      sub_215A70C80();
      if ((v21 & 0x8000000000000000) == 0)
      {
        break;
      }

      __break(1u);
LABEL_26:
      sub_215A70640();
    }

    v36[1] = v11;
    v39 = v9;
    v40 = v5;
    v37 = v3;
    v38 = v2;
    v42 = sub_2159F7DA8(0, &unk_2811A2520);
    v41 = objc_opt_self();
    v24 = 0;
    v25 = v14 & 0xC000000000000001;
    v26 = v14;
    do
    {
      if (v25)
      {
        v27 = MEMORY[0x216073710](v24, v14);
      }

      else
      {
        v27 = *(v14 + 8 * v24 + 32);
      }

      v28 = v27;
      ++v24;
      v29 = [v27 title];
      sub_215A70540();

      v30 = sub_215A70500();
      v31 = [v41 systemImageNamed_];

      v32 = swift_allocObject();
      v33 = v43;
      *(v32 + 16) = v43;
      *(v32 + 24) = v28;
      v34 = v33;
      sub_215A70A90();
      sub_215A70C60();
      sub_215A70C90();
      sub_215A70CA0();
      sub_215A70C70();
      v14 = v26;
    }

    while (v21 != v24);

    v2 = v38;
    v9 = v39;
    v3 = v37;
    v5 = v40;
LABEL_21:
    sub_215A6FA50();
    sub_215A6FA40();
    (*(v3 + 8))(v5, v2);
    sub_2159F7DA8(0, &unk_2811A26B0);
    sub_215A70A50();
    MEMORY[0x2160730A0]();
    if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_215A70640();
    }

    sub_215A70660();

    return v45;
  }

  return v7;
}

id sub_215A17B60(uint64_t a1, void *a2)
{
  result = [objc_opt_self() mainBookmarkCollection];
  if (result)
  {
    v6 = result;
    v7 = [v2 syntheticBookmarkProvider];
    v8 = [objc_allocWithZone(MEMORY[0x277CDB6C8]) initWithCollection:v6 syntheticBookmarkProvider:v7];

    swift_unknownObjectRelease();
    sub_215A16AC8();
    if (v9)
    {
      v10 = v9;
      v11 = [v8 saveBookmark:v9 inFolder:a1];

      v12 = v11;
      v13 = [v2 didSaveBookmark];
      if ([a2 sender])
      {
        sub_215A70B70();
        swift_unknownObjectRelease();
      }

      else
      {
        v16 = 0u;
        v17 = 0u;
      }

      v18[0] = v16;
      v18[1] = v17;
      if (*(&v17 + 1))
      {
        sub_2159F7DA8(0, qword_2811A2380);
        if (swift_dynamicCast())
        {
          v14 = v15;
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        sub_21583FDA0(v18);
        v14 = 0;
      }

      v13[2](v13, v12, v14);

      _Block_release(v13);
    }

    else
    {

      return 0;
    }

    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_215A17D48(void *a1, void *a2, uint64_t a3)
{
  v6 = [objc_opt_self() mainBookmarkCollection];
  if (v6)
  {
    v7 = v6;
    v8 = [a2 syntheticBookmarkProvider];
    v15 = [objc_allocWithZone(MEMORY[0x277CDB6C8]) initWithCollection:v7 syntheticBookmarkProvider:v8];

    swift_unknownObjectRelease();
    sub_215A16AC8();
    if (v9)
    {
      v10 = v9;
      v11 = [v15 saveBookmark:v9 inSyntheticFolder:a3];

      v12 = v11;
      v13 = [a2 didSaveBookmark];
      if ([a1 sender])
      {
        sub_215A70B70();
        swift_unknownObjectRelease();
      }

      else
      {
        v17 = 0u;
        v18 = 0u;
      }

      v19[0] = v17;
      v19[1] = v18;
      if (*(&v18 + 1))
      {
        sub_2159F7DA8(0, qword_2811A2380);
        if (swift_dynamicCast())
        {
          v14 = v16;
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        sub_21583FDA0(v19);
        v14 = 0;
      }

      v13[2](v13, v12, v14);

      _Block_release(v13);
    }

    else
    {
    }
  }

  else
  {
    __break(1u);
  }
}

id OneStepBookmarkingController.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

void sub_215A18088(void *a1)
{
  v2 = sub_215A17B60(*(v1 + 24), a1);
}

id sub_215A180DC()
{
  v1 = (*(*(v0 + 16) + 16))();

  return v1;
}

uint64_t sub_215A1814C()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[3] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_215A18244;
  v4 = MEMORY[0x277D839B0];

  return MEMORY[0x2822007B8](v0 + 5, 0, 0, 0xD000000000000011, 0x8000000215AC25F0, sub_215A18498, v2, v4);
}

uint64_t sub_215A18244()
{

  return MEMORY[0x2822009F8](sub_215A1835C, 0, 0);
}

void sub_215A18374(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + OBJC_IVAR____TtC14MobileSafariUI29ScreenTimePasscodeAsyncHelper_protectedContinuationState);
  v4 = *(*v3 + *MEMORY[0x277D841D0] + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v3 + v5));
  sub_215A1A204(v3 + v4);
  os_unfair_lock_unlock((v3 + v5));

  [objc_opt_self() activateRemotePINUI];
  v6 = [objc_opt_self() defaultCenter];
  [v6 addObserver:a2 selector:sel_handleScreenTimePinCompletionNotificationWithNotification_ name:*MEMORY[0x277D4BDE8] object:0];
}

uint64_t sub_215A184A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScreenTimePasscodeAsyncHelper.ContinuationState();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_215A195EC(a1, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7E4F8);
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_215A19650(a1);
    sub_215A19650(v6);
    (*(v8 + 16))(a1, a2, v7);
    return (*(v8 + 56))(a1, 0, 1, v7);
  }

  else
  {
    sub_215A19650(v6);
    v10[15] = 0;
    return sub_215A70680();
  }
}

uint64_t sub_215A1877C(const void *a1, void *a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);
  v4 = a2;

  return MEMORY[0x2822009F8](sub_215A187F4, 0, 0);
}

uint64_t sub_215A187F4()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_215A188EC;
  v4 = MEMORY[0x277D839B0];

  return MEMORY[0x2822007B8](v0 + 6, 0, 0, 0xD000000000000011, 0x8000000215AC25F0, sub_215A1A220, v2, v4);
}

uint64_t sub_215A188EC()
{

  return MEMORY[0x2822009F8](sub_215A18A04, 0, 0);
}

uint64_t sub_215A18A04()
{
  v1 = *(v0 + 24);

  v1[2](v1, *(v0 + 48));
  _Block_release(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_215A18A80(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for ScreenTimePasscodeAsyncHelper.ContinuationState();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v24[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7E4F8);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24[-v9 - 8];
  v11 = [objc_opt_self() defaultCenter];
  [v11 removeObserver:v2 name:*MEMORY[0x277D4BDE8] object:0];

  v12 = [a1 userInfo];
  if (!v12)
  {
    goto LABEL_8;
  }

  v13 = v12;
  v14 = sub_215A704B0();

  *&v25 = sub_215A70540();
  *(&v25 + 1) = v15;
  sub_215A70BD0();
  if (!*(v14 + 16) || (v16 = sub_215A39B98(v24), (v17 & 1) == 0))
  {

    sub_215A19D58(v24);
LABEL_8:
    v25 = 0u;
    v26 = 0u;
    goto LABEL_9;
  }

  sub_215A07378(*(v14 + 56) + 32 * v16, &v25);
  sub_215A19D58(v24);

  if (!*(&v26 + 1))
  {
LABEL_9:
    sub_21583F14C(&v25, &qword_27CA7E2E0);
    goto LABEL_10;
  }

  if (swift_dynamicCast())
  {
    v18 = v24[0];
    goto LABEL_11;
  }

LABEL_10:
  v18 = 0;
LABEL_11:
  v19 = *(v2 + OBJC_IVAR____TtC14MobileSafariUI29ScreenTimePasscodeAsyncHelper_protectedContinuationState);
  v20 = *(*v19 + *MEMORY[0x277D841D0] + 16);
  v21 = (*(*v19 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v19 + v21));
  sub_215A195EC(v19 + v20, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_215A19650(v6);
  }

  else
  {
    sub_215A19650(v19 + v20);
    (*(v8 + 32))(v10, v6, v7);
    (*(v8 + 56))(v19 + v20, 1, 1, v7);
    v24[0] = v18;
    sub_215A70680();
    (*(v8 + 8))(v10, v7);
  }

  os_unfair_lock_unlock((v19 + v21));
}

id ScreenTimePasscodeAsyncHelper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ScreenTimePasscodeAsyncHelper.init()()
{
  v1 = type metadata accessor for ScreenTimePasscodeAsyncHelper.ContinuationState();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = OBJC_IVAR____TtC14MobileSafariUI29ScreenTimePasscodeAsyncHelper_protectedContinuationState;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7E4F8);
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7E500);
  v6 = swift_allocObject();
  *(v6 + ((*(*v6 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_215A1907C(v3, v6 + *(*v6 + *MEMORY[0x277D841D0] + 16));
  *&v0[v4] = v6;
  v7 = type metadata accessor for ScreenTimePasscodeAsyncHelper();
  v9.receiver = v0;
  v9.super_class = v7;
  return objc_msgSendSuper2(&v9, sel_init);
}

uint64_t type metadata accessor for ScreenTimePasscodeAsyncHelper.ContinuationState()
{
  result = qword_27CA7E508;
  if (!qword_27CA7E508)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_215A1907C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScreenTimePasscodeAsyncHelper.ContinuationState();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id ScreenTimePasscodeAsyncHelper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScreenTimePasscodeAsyncHelper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t dispatch thunk of ScreenTimePasscodeAsyncHelper.requestPinEntry()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x70);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_215A19410;

  return v5();
}

uint64_t sub_215A19410(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_215A19534()
{
  sub_215A1958C();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_215A1958C()
{
  if (!qword_27CA7E518)
  {
    v0 = sub_215A70690();
    if (!v1)
    {
      atomic_store(v0, &qword_27CA7E518);
    }
  }
}

uint64_t sub_215A195EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScreenTimePasscodeAsyncHelper.ContinuationState();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_215A19650(uint64_t a1)
{
  v2 = type metadata accessor for ScreenTimePasscodeAsyncHelper.ContinuationState();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_215A196AC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_215A0763C;

  return v6();
}

uint64_t sub_215A19794(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_215A07214;

  return v7();
}

uint64_t sub_215A1987C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7E060);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  sub_215A1A024(a3, v23 - v10);
  v12 = sub_215A706E0();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_21583F14C(v11, &qword_27CA7E060);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_215A706D0();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_215A70670();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_215A70570() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_21583F14C(a3, &qword_27CA7E060);

    return v21;
  }

LABEL_8:
  sub_21583F14C(a3, &qword_27CA7E060);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_215A19B68(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_215A19C60;

  return v6(a1);
}

uint64_t sub_215A19C60()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_215A19DAC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_215A07214;

  return sub_215A1877C(v2, v3);
}

uint64_t sub_215A19E58()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_215A0763C;

  return sub_215A196AC(v2, v3, v4);
}

uint64_t objectdestroy_12Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_215A19F58(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_215A0763C;

  return sub_215A19794(a1, v4, v5, v6);
}

uint64_t sub_215A1A024(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7E060);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_215A1A094(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_215A0763C;

  return sub_215A19B68(a1, v4);
}

uint64_t sub_215A1A14C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_215A07214;

  return sub_215A19B68(a1, v4);
}

uint64_t sub_215A1A2A4()
{
  v1 = v0;
  if (qword_27CA7D9A0 != -1)
  {
    swift_once();
  }

  v2 = sub_215A70000();
  __swift_project_value_buffer(v2, qword_27CA804A8);
  v3 = sub_215A6FFE0();
  v4 = sub_215A70810();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_215819000, v3, v4, "Sending deferred notifications", v5, 2u);
    MEMORY[0x216075690](v5, -1, -1);
  }

  v6 = OBJC_IVAR___TabControllerNotificationManager_deferredNotifications;
  swift_beginAccess();
  v7 = *(v1 + v6);
  v8 = *(v7 + 16);
  if (v8)
  {

    v9 = v7 + 40;
    do
    {
      v10 = *(v9 - 8);
      if (v10)
      {

        v10(v11);
        sub_21584BA0C(v10);
      }

      v9 += 16;
      --v8;
    }

    while (v8);
  }

  *(v1 + v6) = MEMORY[0x277D84F90];
}

void sub_215A1A594(void *a1)
{
  [*(v1 + OBJC_IVAR___TabControllerNotificationManager_observers) addObject_];
  if (*(v1 + OBJC_IVAR___TabControllerNotificationManager_updateCount))
  {
    v3 = *(v1 + OBJC_IVAR___TabControllerNotificationManager_observersToReceiveUpdatesDidEnd);
    if (v3)
    {
      [v3 addObject_];
    }

    if ([a1 respondsToSelector_])
    {
      Strong = swift_unknownObjectUnownedLoadStrong();
      [a1 tabControllerWillBeginUpdates_];
    }
  }
}

void sub_215A1A794(void *a1, void *a2)
{
  [v2 willSwitchFrom:a1 to:a2];
  if (a1)
  {
    v5 = a1 == a2;
  }

  else
  {
    v5 = 0;
  }

  v6 = !v5;
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = a1;
  v9 = a2;
  sub_215A1BFC4(v6, 0xD000000000000013, 0x8000000215AC28A0, v2, v7, a1, v9);
}

void sub_215A1A880(uint64_t a1, void *a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = *(Strong + OBJC_IVAR___TabControllerNotificationManager_observers);
    v7 = Strong;
    v8 = a2;
    v9 = a3;
    v10 = v6;
    sub_215A1BE58(v10, v7, a2, v9, &selRef_tabController_didSwitchFromTabDocument_toTabDocument_);
  }
}

void sub_215A1A9B0(void *a1, void *a2, char a3)
{
  v7 = a1 != a2;
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = a1;
  v10 = a2;
  sub_215A1C668(a3 & v7, 0xD000000000000025, 0x8000000215AC2870, v3, v8, v9, v10);
}

uint64_t sub_215A1AB10()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR___TabControllerNotificationManager_observers);
    v2 = result;

    v3 = v1;
    sub_215A1CCFC(v3);
  }

  return result;
}

void sub_215A1AD44(uint64_t a1, void *a2, void *a3, SEL *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = *(Strong + OBJC_IVAR___TabControllerNotificationManager_observers);
    v9 = Strong;
    v10 = a2;
    v11 = a3;
    v12 = v8;
    sub_215A1BE58(v12, v9, v10, v11, a4);
  }
}

void sub_215A1AEC4(uint64_t a1, SEL *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v11 = *(Strong + OBJC_IVAR___TabControllerNotificationManager_observers);
    v5 = [v11 allObjects];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7E5C0);
    v6 = sub_215A705E0();

    if (v6 >> 62)
    {
      v7 = sub_215A70CD0();
      if (v7)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7)
      {
LABEL_4:
        if (v7 < 1)
        {
          __break(1u);
          return;
        }

        for (i = 0; i != v7; ++i)
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v9 = MEMORY[0x216073710](i, v6);
          }

          else
          {
            v9 = *(v6 + 8 * i + 32);
            swift_unknownObjectRetain();
          }

          v10 = swift_unknownObjectUnownedLoadStrong();
          if ([v9 respondsToSelector_])
          {
            [v9 *a2];
            swift_unknownObjectRelease();
          }

          else
          {

            swift_unknownObjectRelease();
          }
        }
      }
    }
  }
}

void sub_215A1B10C(uint64_t a1, void *a2, SEL *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = *(Strong + OBJC_IVAR___TabControllerNotificationManager_observers);
    v7 = Strong;
    v8 = a2;
    v9 = v6;
    sub_215A1E7F8(v9, v7, v8, a3);
  }
}

void sub_215A1B254()
{
  v1 = *&v0[OBJC_IVAR___TabControllerNotificationManager_updateCount];
  v2 = __OFADD__(v1, 1);
  v3 = v1 + 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    *&v0[OBJC_IVAR___TabControllerNotificationManager_updateCount] = v3;
    if (v3 == 1)
    {
      v4 = OBJC_IVAR___TabControllerNotificationManager_observers;
      v5 = [*&v0[OBJC_IVAR___TabControllerNotificationManager_observers] copy];
      if (v5)
      {
        v6 = v5;
        v7 = [*&v0[v4] copy];
        v8 = *&v0[OBJC_IVAR___TabControllerNotificationManager_observersToReceiveUpdatesDidEnd];
        *&v0[OBJC_IVAR___TabControllerNotificationManager_observersToReceiveUpdatesDidEnd] = v7;

        v9 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v10 = v6;
        sub_215A1EFC8(0, 0xD000000000000012, 0x8000000215AC27B0, v0, v9, v10);
      }
    }
  }
}

void sub_215A1B3BC()
{
  v1 = *&v0[OBJC_IVAR___TabControllerNotificationManager_updateCount];
  v2 = __OFSUB__(v1, 1);
  v3 = v1 - 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    *&v0[OBJC_IVAR___TabControllerNotificationManager_updateCount] = v3;
    if (!v3)
    {
      v4 = *&v0[OBJC_IVAR___TabControllerNotificationManager_observersToReceiveUpdatesDidEnd];
      if (v4)
      {
        *&v0[OBJC_IVAR___TabControllerNotificationManager_observersToReceiveUpdatesDidEnd] = 0;
        v5 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v6 = v4;
        sub_215A1F5EC(0, 0x7055646E45646964, 0xEF29287365746164, v0, v5, v6);
      }
    }
  }
}

void sub_215A1B4B4(uint64_t a1, void *a2, SEL *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [a2 allObjects];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7E5C0);
    v8 = sub_215A705E0();

    if (v8 >> 62)
    {
      v9 = sub_215A70CD0();
      if (v9)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v9)
      {
LABEL_4:
        if (v9 < 1)
        {
          __break(1u);
          return;
        }

        for (i = 0; i != v9; ++i)
        {
          if ((v8 & 0xC000000000000001) != 0)
          {
            v11 = MEMORY[0x216073710](i, v8);
          }

          else
          {
            v11 = *(v8 + 8 * i + 32);
            swift_unknownObjectRetain();
          }

          v12 = swift_unknownObjectUnownedLoadStrong();
          if ([v11 respondsToSelector_])
          {
            [v11 *a3];
            swift_unknownObjectRelease();
          }

          else
          {

            swift_unknownObjectRelease();
          }
        }
      }
    }
  }
}

id TabControllerNotificationManager.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

void sub_215A1B73C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_215A1A2A4();
  }
}

id sub_215A1B790()
{
  v1 = OBJC_IVAR___TabControllerNotificationManager_observersToReceiveUpdatesDidEnd;
  *&v0[OBJC_IVAR___TabControllerNotificationManager_observersToReceiveUpdatesDidEnd] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectUnownedInit();
  v2 = [objc_opt_self() weakObjectsHashTable];
  *&v0[OBJC_IVAR___TabControllerNotificationManager_observers] = v2;
  v3 = *&v0[v1];
  *&v0[v1] = 0;

  *&v0[OBJC_IVAR___TabControllerNotificationManager_updateCount] = 0;
  *&v0[OBJC_IVAR___TabControllerNotificationManager_deferredNotifications] = MEMORY[0x277D84F90];
  v5.receiver = v0;
  v5.super_class = TabControllerNotificationManager;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_215A1B868(char a1, uint64_t a2, unint64_t a3, char *a4, uint64_t a5)
{

  v10 = [a4 delegate];
  if (v10)
  {
    v11 = v10;
    if ([v10 tabControllerNotificationManagerShouldDeferNotifications_])
    {
      v12 = OBJC_IVAR___TabControllerNotificationManager_deferredNotifications;
      swift_beginAccess();
      if (*(*&a4[v12] + 16))
      {
        if (qword_27CA7D9A0 != -1)
        {
          swift_once();
        }

        v13 = sub_215A70000();
        __swift_project_value_buffer(v13, qword_27CA804A8);

        v14 = sub_215A6FFE0();
        v15 = sub_215A70810();

        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          v17 = swift_slowAlloc();
          aBlock[0] = v17;
          *v16 = 136315138;
          *(v16 + 4) = sub_215A39474(a2, a3, aBlock);
          _os_log_impl(&dword_215819000, v14, v15, "Adding deferred notification from %s", v16, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v17);
          MEMORY[0x216075690](v17, -1, -1);
          MEMORY[0x216075690](v16, -1, -1);
        }

        v18 = swift_allocObject();
        *(v18 + 16) = sub_215A1FDA8;
        *(v18 + 24) = a5;
        swift_beginAccess();
        v19 = *&a4[v12];

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&a4[v12] = v19;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v19 = sub_215A390B0(0, v19[2] + 1, 1, v19);
          *&a4[v12] = v19;
        }

        v22 = v19[2];
        v21 = v19[3];
        if (v22 >= v21 >> 1)
        {
          v19 = sub_215A390B0((v21 > 1), v22 + 1, 1, v19);
        }

        v19[2] = v22 + 1;
        v23 = &v19[2 * v22];
        v23[4] = sub_215A1FE18;
        v23[5] = v18;
        *&a4[v12] = v19;
        swift_endAccess();
      }

      else if (a1)
      {
        if (qword_27CA7D9A0 != -1)
        {
          swift_once();
        }

        v25 = sub_215A70000();
        __swift_project_value_buffer(v25, qword_27CA804A8);

        v26 = sub_215A6FFE0();
        v27 = sub_215A70810();

        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          aBlock[0] = v29;
          *v28 = 136315138;
          *(v28 + 4) = sub_215A39474(a2, a3, aBlock);
          _os_log_impl(&dword_215819000, v26, v27, "Starting deferring notifications from %s", v28, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v29);
          MEMORY[0x216075690](v29, -1, -1);
          MEMORY[0x216075690](v28, -1, -1);
        }

        v30 = swift_allocObject();
        *(v30 + 16) = sub_215A1FDA8;
        *(v30 + 24) = a5;
        swift_beginAccess();
        v31 = *&a4[v12];

        v32 = swift_isUniquelyReferenced_nonNull_native();
        *&a4[v12] = v31;
        if ((v32 & 1) == 0)
        {
          v31 = sub_215A390B0(0, v31[2] + 1, 1, v31);
          *&a4[v12] = v31;
        }

        v34 = v31[2];
        v33 = v31[3];
        if (v34 >= v33 >> 1)
        {
          v31 = sub_215A390B0((v33 > 1), v34 + 1, 1, v31);
        }

        v31[2] = v34 + 1;
        v35 = &v31[2 * v34];
        v35[4] = sub_215A1FE18;
        v35[5] = v30;
        *&a4[v12] = v31;
        swift_endAccess();
        v36 = swift_allocObject();
        swift_unknownObjectWeakInit();
        aBlock[4] = sub_215A1FDF0;
        aBlock[5] = v36;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_2159F7E08;
        aBlock[3] = &block_descriptor_158;
        v37 = _Block_copy(aBlock);

        [v11 tabControllerNotificationManager:a4 sendDeferredNotificationsWithBlock:v37];
        _Block_release(v37);
      }

      else
      {
        sub_215A1AEC4(a5, &selRef_tabControllerDocumentCountDidChange_);
      }

      return swift_unknownObjectRelease();
    }

    else
    {
      sub_215A1AEC4(a5, &selRef_tabControllerDocumentCountDidChange_);

      return swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_215A1AEC4(a5, &selRef_tabControllerDocumentCountDidChange_);
  }
}

void sub_215A1BE58(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = [a1 allObjects];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7E5C0);
  v7 = sub_215A705E0();

  if (v7 >> 62)
  {
    v8 = sub_215A70CD0();
    if (!v8)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      goto LABEL_12;
    }
  }

  if (v8 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v8; ++i)
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x216073710](i, v7);
    }

    else
    {
      v10 = *(v7 + 8 * i + 32);
      swift_unknownObjectRetain();
    }

    Strong = swift_unknownObjectUnownedLoadStrong();
    if ([v10 respondsToSelector_])
    {
      [v10 *a5];
    }

    swift_unknownObjectRelease();
  }

LABEL_12:
}

void sub_215A1BFC4(char a1, uint64_t a2, unint64_t a3, char *a4, uint64_t a5, void *a6, void *a7)
{
  v13 = swift_allocObject();
  v13[2] = a5;
  v13[3] = a6;
  v13[4] = a7;
  v14 = a6;

  v15 = a7;
  v16 = [a4 delegate];
  if (v16)
  {
    v17 = v16;
    if ([v16 tabControllerNotificationManagerShouldDeferNotifications_])
    {
      v18 = OBJC_IVAR___TabControllerNotificationManager_deferredNotifications;
      swift_beginAccess();
      v55 = v18;
      if (*(*&a4[v18] + 16))
      {
        if (qword_27CA7D9A0 != -1)
        {
          swift_once();
        }

        v19 = sub_215A70000();
        __swift_project_value_buffer(v19, qword_27CA804A8);

        v20 = sub_215A6FFE0();
        v21 = sub_215A70810();

        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          v23 = swift_slowAlloc();
          aBlock[0] = v23;
          *v22 = 136315138;
          *(v22 + 4) = sub_215A39474(a2, a3, aBlock);
          _os_log_impl(&dword_215819000, v20, v21, "Adding deferred notification from %s", v22, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v23);
          MEMORY[0x216075690](v23, -1, -1);
          MEMORY[0x216075690](v22, -1, -1);
        }

        v24 = swift_allocObject();
        *(v24 + 16) = sub_215A1FD9C;
        *(v24 + 24) = v13;
        swift_beginAccess();
        v25 = *&a4[v55];

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&a4[v55] = v25;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v25 = sub_215A390B0(0, v25[2] + 1, 1, v25);
          *&a4[v55] = v25;
        }

        v28 = v25[2];
        v27 = v25[3];
        if (v28 >= v27 >> 1)
        {
          v25 = sub_215A390B0((v27 > 1), v28 + 1, 1, v25);
        }

        v25[2] = v28 + 1;
        v29 = &v25[2 * v28];
        v29[4] = sub_215A1FE18;
        v29[5] = v24;
        *&a4[v55] = v25;
        swift_endAccess();
LABEL_28:

        swift_unknownObjectRelease();
        return;
      }

      if (a1)
      {
        if (qword_27CA7D9A0 != -1)
        {
          swift_once();
        }

        v36 = sub_215A70000();
        __swift_project_value_buffer(v36, qword_27CA804A8);

        v37 = sub_215A6FFE0();
        v38 = sub_215A70810();

        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          v40 = swift_slowAlloc();
          aBlock[0] = v40;
          *v39 = 136315138;
          *(v39 + 4) = sub_215A39474(a2, a3, aBlock);
          _os_log_impl(&dword_215819000, v37, v38, "Starting deferring notifications from %s", v39, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v40);
          MEMORY[0x216075690](v40, -1, -1);
          MEMORY[0x216075690](v39, -1, -1);
        }

        v41 = swift_allocObject();
        *(v41 + 16) = sub_215A1FD9C;
        *(v41 + 24) = v13;
        swift_beginAccess();
        v42 = *&a4[v55];

        v43 = swift_isUniquelyReferenced_nonNull_native();
        *&a4[v55] = v42;
        if ((v43 & 1) == 0)
        {
          v42 = sub_215A390B0(0, v42[2] + 1, 1, v42);
          *&a4[v55] = v42;
        }

        v45 = v42[2];
        v44 = v42[3];
        if (v45 >= v44 >> 1)
        {
          v42 = sub_215A390B0((v44 > 1), v45 + 1, 1, v42);
        }

        v42[2] = v45 + 1;
        v46 = &v42[2 * v45];
        v46[4] = sub_215A1FE18;
        v46[5] = v41;
        *&a4[v55] = v42;
        swift_endAccess();
        v47 = swift_allocObject();
        swift_unknownObjectWeakInit();
        aBlock[4] = sub_215A1FDF0;
        aBlock[5] = v47;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_2159F7E08;
        aBlock[3] = &block_descriptor_144;
        v48 = _Block_copy(aBlock);

        [v17 tabControllerNotificationManager:a4 sendDeferredNotificationsWithBlock:v48];
        _Block_release(v48);
        goto LABEL_28;
      }
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v50 = *(Strong + OBJC_IVAR___TabControllerNotificationManager_observers);
      v51 = Strong;
      v52 = v15;
      v53 = v14;
      v54 = v50;
      sub_215A1BE58(v54, v51, a6, v52, &selRef_tabController_didSwitchFromTabDocument_toTabDocument_);

      swift_unknownObjectRelease();

      return;
    }

    goto LABEL_28;
  }

  swift_beginAccess();
  v30 = swift_unknownObjectWeakLoadStrong();
  if (v30)
  {
    v31 = *(v30 + OBJC_IVAR___TabControllerNotificationManager_observers);
    v32 = v30;
    v33 = v15;
    v34 = v14;
    v35 = v31;
    sub_215A1BE58(v35, v32, a6, v33, &selRef_tabController_didSwitchFromTabDocument_toTabDocument_);
  }

  else
  {
  }
}

void sub_215A1C668(char a1, uint64_t a2, unint64_t a3, char *a4, uint64_t a5, void *a6, void *a7)
{
  v14 = swift_allocObject();
  v14[2] = a5;
  v14[3] = a6;
  v14[4] = a7;

  v15 = a6;
  v16 = a7;
  v17 = [a4 delegate];
  if (v17)
  {
    v18 = v17;
    if ([v17 tabControllerNotificationManagerShouldDeferNotifications_])
    {
      v19 = OBJC_IVAR___TabControllerNotificationManager_deferredNotifications;
      swift_beginAccess();
      if (*(*&a4[v19] + 16))
      {
        if (qword_27CA7D9A0 != -1)
        {
          swift_once();
        }

        v20 = sub_215A70000();
        __swift_project_value_buffer(v20, qword_27CA804A8);

        v21 = sub_215A6FFE0();
        v22 = sub_215A70810();

        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          v24 = swift_slowAlloc();
          aBlock[0] = v24;
          *v23 = 136315138;
          *(v23 + 4) = sub_215A39474(a2, a3, aBlock);
          _os_log_impl(&dword_215819000, v21, v22, "Adding deferred notification from %s", v23, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v24);
          MEMORY[0x216075690](v24, -1, -1);
          MEMORY[0x216075690](v23, -1, -1);
        }

        v25 = swift_allocObject();
        *(v25 + 16) = sub_215A1FD2C;
        *(v25 + 24) = v14;
        swift_beginAccess();
        v26 = *&a4[v19];

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&a4[v19] = v26;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v26 = sub_215A390B0(0, v26[2] + 1, 1, v26);
          *&a4[v19] = v26;
        }

        v29 = v26[2];
        v28 = v26[3];
        if (v29 >= v28 >> 1)
        {
          v26 = sub_215A390B0((v28 > 1), v29 + 1, 1, v26);
        }

        v26[2] = v29 + 1;
        v30 = &v26[2 * v29];
        v30[4] = sub_215A1FE18;
        v30[5] = v25;
        *&a4[v19] = v26;
        swift_endAccess();
LABEL_28:

        swift_unknownObjectRelease();
        return;
      }

      if (a1)
      {
        if (qword_27CA7D9A0 != -1)
        {
          swift_once();
        }

        v37 = sub_215A70000();
        __swift_project_value_buffer(v37, qword_27CA804A8);

        v38 = sub_215A6FFE0();
        v39 = sub_215A70810();

        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          aBlock[0] = v41;
          *v40 = 136315138;
          *(v40 + 4) = sub_215A39474(a2, a3, aBlock);
          _os_log_impl(&dword_215819000, v38, v39, "Starting deferring notifications from %s", v40, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v41);
          MEMORY[0x216075690](v41, -1, -1);
          MEMORY[0x216075690](v40, -1, -1);
        }

        v42 = swift_allocObject();
        *(v42 + 16) = sub_215A1FD2C;
        *(v42 + 24) = v14;
        swift_beginAccess();
        v43 = *&a4[v19];

        v44 = swift_isUniquelyReferenced_nonNull_native();
        *&a4[v19] = v43;
        if ((v44 & 1) == 0)
        {
          v43 = sub_215A390B0(0, v43[2] + 1, 1, v43);
          *&a4[v19] = v43;
        }

        v46 = v43[2];
        v45 = v43[3];
        if (v46 >= v45 >> 1)
        {
          v43 = sub_215A390B0((v45 > 1), v46 + 1, 1, v43);
        }

        v43[2] = v46 + 1;
        v47 = &v43[2 * v46];
        v47[4] = sub_215A1FE18;
        v47[5] = v42;
        *&a4[v19] = v43;
        swift_endAccess();
        v48 = swift_allocObject();
        swift_unknownObjectWeakInit();
        aBlock[4] = sub_215A1FDF0;
        aBlock[5] = v48;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_2159F7E08;
        aBlock[3] = &block_descriptor_127;
        v49 = _Block_copy(aBlock);

        [v18 tabControllerNotificationManager:a4 sendDeferredNotificationsWithBlock:v49];
        _Block_release(v49);
        goto LABEL_28;
      }
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v51 = *(Strong + OBJC_IVAR___TabControllerNotificationManager_observers);
      v52 = Strong;
      v53 = v15;
      v54 = v16;
      v55 = v51;
      sub_215A1BE58(v55, v52, v53, v54, &selRef_tabController_didReplaceTabDocument_withTabDocument_);

      swift_unknownObjectRelease();

      return;
    }

    goto LABEL_28;
  }

  swift_beginAccess();
  v31 = swift_unknownObjectWeakLoadStrong();
  if (v31)
  {
    v32 = *(v31 + OBJC_IVAR___TabControllerNotificationManager_observers);
    v33 = v31;
    v34 = v15;
    v35 = v16;
    v36 = v32;
    sub_215A1BE58(v36, v33, v34, v35, &selRef_tabController_didReplaceTabDocument_withTabDocument_);
  }

  else
  {
  }
}

void sub_215A1CCFC(void *a1)
{
  v1 = [a1 allObjects];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7E5C0);
  v2 = sub_215A705E0();

  if (v2 >> 62)
  {
    v3 = sub_215A70CD0();
    if (!v3)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_12;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
    return;
  }

  v4 = 0;
  v5 = &selRef_moveCurrentTabToNewWindow_;
  do
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x216073710](v4, v2);
    }

    else
    {
      v6 = *(v2 + 8 * v4 + 32);
      swift_unknownObjectRetain();
    }

    Strong = swift_unknownObjectUnownedLoadStrong();
    if ([v6 v5[202]])
    {
      sub_2159F7DA8(0, &qword_27CA7E5C8);
      v8 = v5;
      swift_unknownObjectRetain();
      v9 = sub_215A705D0();
      [v6 tabController:Strong didCloseTabDocuments:v9];

      swift_unknownObjectRelease();
      Strong = v9;
      v5 = v8;
    }

    ++v4;
    swift_unknownObjectRelease();
  }

  while (v3 != v4);
LABEL_12:
}

uint64_t sub_215A1CEBC(char a1, uint64_t a2, unint64_t a3, char *a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a5;
  *(v12 + 24) = a6;

  v13 = [a4 delegate];
  if (!v13)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
    }

    v28 = *(Strong + OBJC_IVAR___TabControllerNotificationManager_observers);
    v29 = Strong;

    v30 = v28;
    sub_215A1CCFC(v30);
  }

  v14 = v13;
  if ([v13 tabControllerNotificationManagerShouldDeferNotifications_])
  {
    v15 = OBJC_IVAR___TabControllerNotificationManager_deferredNotifications;
    swift_beginAccess();
    if (*(*&a4[v15] + 16))
    {
      if (qword_27CA7D9A0 != -1)
      {
        swift_once();
      }

      v16 = sub_215A70000();
      __swift_project_value_buffer(v16, qword_27CA804A8);

      v17 = sub_215A6FFE0();
      v18 = sub_215A70810();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        aBlock[0] = v20;
        *v19 = 136315138;
        *(v19 + 4) = sub_215A39474(a2, a3, aBlock);
        _os_log_impl(&dword_215819000, v17, v18, "Adding deferred notification from %s", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v20);
        MEMORY[0x216075690](v20, -1, -1);
        MEMORY[0x216075690](v19, -1, -1);
      }

      v21 = swift_allocObject();
      *(v21 + 16) = sub_215A1FD24;
      *(v21 + 24) = v12;
      swift_beginAccess();
      v22 = *&a4[v15];

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&a4[v15] = v22;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v22 = sub_215A390B0(0, v22[2] + 1, 1, v22);
        *&a4[v15] = v22;
      }

      v25 = v22[2];
      v24 = v22[3];
      if (v25 >= v24 >> 1)
      {
        v22 = sub_215A390B0((v24 > 1), v25 + 1, 1, v22);
      }

      v22[2] = v25 + 1;
      v26 = &v22[2 * v25];
      v26[4] = sub_215A1FE18;
      v26[5] = v21;
      *&a4[v15] = v22;
      swift_endAccess();
      goto LABEL_29;
    }

    if (a1)
    {
      if (qword_27CA7D9A0 != -1)
      {
        swift_once();
      }

      v32 = sub_215A70000();
      __swift_project_value_buffer(v32, qword_27CA804A8);

      v33 = sub_215A6FFE0();
      v34 = sub_215A70810();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        aBlock[0] = v36;
        *v35 = 136315138;
        *(v35 + 4) = sub_215A39474(a2, a3, aBlock);
        _os_log_impl(&dword_215819000, v33, v34, "Starting deferring notifications from %s", v35, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v36);
        MEMORY[0x216075690](v36, -1, -1);
        MEMORY[0x216075690](v35, -1, -1);
      }

      v37 = swift_allocObject();
      *(v37 + 16) = sub_215A1FD24;
      *(v37 + 24) = v12;
      swift_beginAccess();
      v38 = *&a4[v15];

      v39 = swift_isUniquelyReferenced_nonNull_native();
      *&a4[v15] = v38;
      if ((v39 & 1) == 0)
      {
        v38 = sub_215A390B0(0, v38[2] + 1, 1, v38);
        *&a4[v15] = v38;
      }

      v41 = v38[2];
      v40 = v38[3];
      if (v41 >= v40 >> 1)
      {
        v38 = sub_215A390B0((v40 > 1), v41 + 1, 1, v38);
      }

      v38[2] = v41 + 1;
      v42 = &v38[2 * v41];
      v42[4] = sub_215A1FE18;
      v42[5] = v37;
      *&a4[v15] = v38;
      swift_endAccess();
      v43 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_215A1FDF0;
      aBlock[5] = v43;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2159F7E08;
      aBlock[3] = &block_descriptor_110;
      v44 = _Block_copy(aBlock);

      [v14 tabControllerNotificationManager:a4 sendDeferredNotificationsWithBlock:v44];
      _Block_release(v44);
      goto LABEL_29;
    }
  }

  swift_beginAccess();
  v45 = swift_unknownObjectWeakLoadStrong();
  if (v45)
  {
    v46 = *(v45 + OBJC_IVAR___TabControllerNotificationManager_observers);
    v47 = v45;

    v48 = v46;
    sub_215A1CCFC(v48);

    swift_unknownObjectRelease();
  }

LABEL_29:

  return swift_unknownObjectRelease();
}

void sub_215A1D510(char a1, uint64_t a2, unint64_t a3, char *a4, uint64_t a5, void *a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a5;
  *(v12 + 24) = a6;

  v13 = a6;
  v14 = [a4 delegate];
  if (v14)
  {
    v15 = v14;
    if ([v14 tabControllerNotificationManagerShouldDeferNotifications_])
    {
      v16 = OBJC_IVAR___TabControllerNotificationManager_deferredNotifications;
      swift_beginAccess();
      if (*(*&a4[v16] + 16))
      {
        if (qword_27CA7D9A0 != -1)
        {
          swift_once();
        }

        v17 = sub_215A70000();
        __swift_project_value_buffer(v17, qword_27CA804A8);

        v18 = sub_215A6FFE0();
        v19 = sub_215A70810();

        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          v21 = swift_slowAlloc();
          aBlock[0] = v21;
          *v20 = 136315138;
          *(v20 + 4) = sub_215A39474(a2, a3, aBlock);
          _os_log_impl(&dword_215819000, v18, v19, "Adding deferred notification from %s", v20, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v21);
          MEMORY[0x216075690](v21, -1, -1);
          MEMORY[0x216075690](v20, -1, -1);
        }

        v22 = swift_allocObject();
        *(v22 + 16) = sub_215A1FD00;
        *(v22 + 24) = v12;
        swift_beginAccess();
        v23 = *&a4[v16];

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&a4[v16] = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v23 = sub_215A390B0(0, v23[2] + 1, 1, v23);
          *&a4[v16] = v23;
        }

        v26 = v23[2];
        v25 = v23[3];
        if (v26 >= v25 >> 1)
        {
          v23 = sub_215A390B0((v25 > 1), v26 + 1, 1, v23);
        }

        v23[2] = v26 + 1;
        v27 = &v23[2 * v26];
        v27[4] = sub_215A1FE18;
        v27[5] = v22;
        *&a4[v16] = v23;
        swift_endAccess();
LABEL_28:

        swift_unknownObjectRelease();
        return;
      }

      if (a1)
      {
        if (qword_27CA7D9A0 != -1)
        {
          swift_once();
        }

        v33 = sub_215A70000();
        __swift_project_value_buffer(v33, qword_27CA804A8);

        v34 = sub_215A6FFE0();
        v35 = sub_215A70810();

        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          v37 = swift_slowAlloc();
          aBlock[0] = v37;
          *v36 = 136315138;
          *(v36 + 4) = sub_215A39474(a2, a3, aBlock);
          _os_log_impl(&dword_215819000, v34, v35, "Starting deferring notifications from %s", v36, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v37);
          MEMORY[0x216075690](v37, -1, -1);
          MEMORY[0x216075690](v36, -1, -1);
        }

        v38 = swift_allocObject();
        *(v38 + 16) = sub_215A1FD00;
        *(v38 + 24) = v12;
        swift_beginAccess();
        v39 = *&a4[v16];

        v40 = swift_isUniquelyReferenced_nonNull_native();
        *&a4[v16] = v39;
        if ((v40 & 1) == 0)
        {
          v39 = sub_215A390B0(0, v39[2] + 1, 1, v39);
          *&a4[v16] = v39;
        }

        v42 = v39[2];
        v41 = v39[3];
        if (v42 >= v41 >> 1)
        {
          v39 = sub_215A390B0((v41 > 1), v42 + 1, 1, v39);
        }

        v39[2] = v42 + 1;
        v43 = &v39[2 * v42];
        v43[4] = sub_215A1FE18;
        v43[5] = v38;
        *&a4[v16] = v39;
        swift_endAccess();
        v44 = swift_allocObject();
        swift_unknownObjectWeakInit();
        aBlock[4] = sub_215A1FDF0;
        aBlock[5] = v44;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_2159F7E08;
        aBlock[3] = &block_descriptor_93;
        v45 = _Block_copy(aBlock);

        [v15 tabControllerNotificationManager:a4 sendDeferredNotificationsWithBlock:v45];
        _Block_release(v45);
        goto LABEL_28;
      }
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v47 = *(Strong + OBJC_IVAR___TabControllerNotificationManager_observers);
      v48 = Strong;
      v49 = v13;
      v50 = v47;
      sub_215A1E7F8(v50, v48, v49, &selRef_tabController_didInsertTabDocument_);

      swift_unknownObjectRelease();

      return;
    }

    goto LABEL_28;
  }

  swift_beginAccess();
  v28 = swift_unknownObjectWeakLoadStrong();
  if (v28)
  {
    v29 = *(v28 + OBJC_IVAR___TabControllerNotificationManager_observers);
    v30 = v28;
    v31 = v13;
    v32 = v29;
    sub_215A1E7F8(v32, v30, v31, &selRef_tabController_didInsertTabDocument_);
  }

  else
  {
  }
}

void sub_215A1DB74(char a1, uint64_t a2, unint64_t a3, char *a4, uint64_t a5, void *a6, void *a7)
{
  v14 = swift_allocObject();
  v14[2] = a5;
  v14[3] = a6;
  v14[4] = a7;

  v15 = a6;
  v16 = a7;
  v17 = [a4 delegate];
  if (v17)
  {
    v18 = v17;
    if ([v17 tabControllerNotificationManagerShouldDeferNotifications_])
    {
      v19 = OBJC_IVAR___TabControllerNotificationManager_deferredNotifications;
      swift_beginAccess();
      if (*(*&a4[v19] + 16))
      {
        if (qword_27CA7D9A0 != -1)
        {
          swift_once();
        }

        v20 = sub_215A70000();
        __swift_project_value_buffer(v20, qword_27CA804A8);

        v21 = sub_215A6FFE0();
        v22 = sub_215A70810();

        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          v24 = swift_slowAlloc();
          aBlock[0] = v24;
          *v23 = 136315138;
          *(v23 + 4) = sub_215A39474(a2, a3, aBlock);
          _os_log_impl(&dword_215819000, v21, v22, "Adding deferred notification from %s", v23, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v24);
          MEMORY[0x216075690](v24, -1, -1);
          MEMORY[0x216075690](v23, -1, -1);
        }

        v25 = swift_allocObject();
        *(v25 + 16) = sub_215A1FCD8;
        *(v25 + 24) = v14;
        swift_beginAccess();
        v26 = *&a4[v19];

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&a4[v19] = v26;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v26 = sub_215A390B0(0, v26[2] + 1, 1, v26);
          *&a4[v19] = v26;
        }

        v29 = v26[2];
        v28 = v26[3];
        if (v29 >= v28 >> 1)
        {
          v26 = sub_215A390B0((v28 > 1), v29 + 1, 1, v26);
        }

        v26[2] = v29 + 1;
        v30 = &v26[2 * v29];
        v30[4] = sub_215A1FE18;
        v30[5] = v25;
        *&a4[v19] = v26;
        swift_endAccess();
LABEL_28:

        swift_unknownObjectRelease();
        return;
      }

      if (a1)
      {
        if (qword_27CA7D9A0 != -1)
        {
          swift_once();
        }

        v37 = sub_215A70000();
        __swift_project_value_buffer(v37, qword_27CA804A8);

        v38 = sub_215A6FFE0();
        v39 = sub_215A70810();

        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          aBlock[0] = v41;
          *v40 = 136315138;
          *(v40 + 4) = sub_215A39474(a2, a3, aBlock);
          _os_log_impl(&dword_215819000, v38, v39, "Starting deferring notifications from %s", v40, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v41);
          MEMORY[0x216075690](v41, -1, -1);
          MEMORY[0x216075690](v40, -1, -1);
        }

        v42 = swift_allocObject();
        *(v42 + 16) = sub_215A1FCD8;
        *(v42 + 24) = v14;
        swift_beginAccess();
        v43 = *&a4[v19];

        v44 = swift_isUniquelyReferenced_nonNull_native();
        *&a4[v19] = v43;
        if ((v44 & 1) == 0)
        {
          v43 = sub_215A390B0(0, v43[2] + 1, 1, v43);
          *&a4[v19] = v43;
        }

        v46 = v43[2];
        v45 = v43[3];
        if (v46 >= v45 >> 1)
        {
          v43 = sub_215A390B0((v45 > 1), v46 + 1, 1, v43);
        }

        v43[2] = v46 + 1;
        v47 = &v43[2 * v46];
        v47[4] = sub_215A1FE18;
        v47[5] = v42;
        *&a4[v19] = v43;
        swift_endAccess();
        v48 = swift_allocObject();
        swift_unknownObjectWeakInit();
        aBlock[4] = sub_215A1FDF0;
        aBlock[5] = v48;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_2159F7E08;
        aBlock[3] = &block_descriptor_76;
        v49 = _Block_copy(aBlock);

        [v18 tabControllerNotificationManager:a4 sendDeferredNotificationsWithBlock:v49];
        _Block_release(v49);
        goto LABEL_28;
      }
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v51 = *(Strong + OBJC_IVAR___TabControllerNotificationManager_observers);
      v52 = Strong;
      v53 = v15;
      v54 = v16;
      v55 = v51;
      sub_215A1BE58(v55, v52, v53, v54, &selRef_tabController_didMoveTabDocument_overTabDocument_);

      swift_unknownObjectRelease();

      return;
    }

    goto LABEL_28;
  }

  swift_beginAccess();
  v31 = swift_unknownObjectWeakLoadStrong();
  if (v31)
  {
    v32 = *(v31 + OBJC_IVAR___TabControllerNotificationManager_observers);
    v33 = v31;
    v34 = v15;
    v35 = v16;
    v36 = v32;
    sub_215A1BE58(v36, v33, v34, v35, &selRef_tabController_didMoveTabDocument_overTabDocument_);
  }

  else
  {
  }
}

uint64_t sub_215A1E208(char a1, uint64_t a2, unint64_t a3, char *a4, uint64_t a5)
{

  v10 = [a4 delegate];
  if (v10)
  {
    v11 = v10;
    if ([v10 tabControllerNotificationManagerShouldDeferNotifications_])
    {
      v12 = OBJC_IVAR___TabControllerNotificationManager_deferredNotifications;
      swift_beginAccess();
      if (*(*&a4[v12] + 16))
      {
        if (qword_27CA7D9A0 != -1)
        {
          swift_once();
        }

        v13 = sub_215A70000();
        __swift_project_value_buffer(v13, qword_27CA804A8);

        v14 = sub_215A6FFE0();
        v15 = sub_215A70810();

        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          v17 = swift_slowAlloc();
          aBlock[0] = v17;
          *v16 = 136315138;
          *(v16 + 4) = sub_215A39474(a2, a3, aBlock);
          _os_log_impl(&dword_215819000, v14, v15, "Adding deferred notification from %s", v16, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v17);
          MEMORY[0x216075690](v17, -1, -1);
          MEMORY[0x216075690](v16, -1, -1);
        }

        v18 = swift_allocObject();
        *(v18 + 16) = sub_215A1FCB4;
        *(v18 + 24) = a5;
        swift_beginAccess();
        v19 = *&a4[v12];

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&a4[v12] = v19;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v19 = sub_215A390B0(0, v19[2] + 1, 1, v19);
          *&a4[v12] = v19;
        }

        v22 = v19[2];
        v21 = v19[3];
        if (v22 >= v21 >> 1)
        {
          v19 = sub_215A390B0((v21 > 1), v22 + 1, 1, v19);
        }

        v19[2] = v22 + 1;
        v23 = &v19[2 * v22];
        v23[4] = sub_215A1FE18;
        v23[5] = v18;
        *&a4[v12] = v19;
        swift_endAccess();
      }

      else if (a1)
      {
        if (qword_27CA7D9A0 != -1)
        {
          swift_once();
        }

        v25 = sub_215A70000();
        __swift_project_value_buffer(v25, qword_27CA804A8);

        v26 = sub_215A6FFE0();
        v27 = sub_215A70810();

        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          aBlock[0] = v29;
          *v28 = 136315138;
          *(v28 + 4) = sub_215A39474(a2, a3, aBlock);
          _os_log_impl(&dword_215819000, v26, v27, "Starting deferring notifications from %s", v28, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v29);
          MEMORY[0x216075690](v29, -1, -1);
          MEMORY[0x216075690](v28, -1, -1);
        }

        v30 = swift_allocObject();
        *(v30 + 16) = sub_215A1FCB4;
        *(v30 + 24) = a5;
        swift_beginAccess();
        v31 = *&a4[v12];

        v32 = swift_isUniquelyReferenced_nonNull_native();
        *&a4[v12] = v31;
        if ((v32 & 1) == 0)
        {
          v31 = sub_215A390B0(0, v31[2] + 1, 1, v31);
          *&a4[v12] = v31;
        }

        v34 = v31[2];
        v33 = v31[3];
        if (v34 >= v33 >> 1)
        {
          v31 = sub_215A390B0((v33 > 1), v34 + 1, 1, v31);
        }

        v31[2] = v34 + 1;
        v35 = &v31[2 * v34];
        v35[4] = sub_215A1FE18;
        v35[5] = v30;
        *&a4[v12] = v31;
        swift_endAccess();
        v36 = swift_allocObject();
        swift_unknownObjectWeakInit();
        aBlock[4] = sub_215A1FDF0;
        aBlock[5] = v36;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_2159F7E08;
        aBlock[3] = &block_descriptor_59;
        v37 = _Block_copy(aBlock);

        [v11 tabControllerNotificationManager:a4 sendDeferredNotificationsWithBlock:v37];
        _Block_release(v37);
      }

      else
      {
        sub_215A1AEC4(a5, &selRef_tabControllerDidChangeCurrentTabDocuments_);
      }

      return swift_unknownObjectRelease();
    }

    else
    {
      sub_215A1AEC4(a5, &selRef_tabControllerDidChangeCurrentTabDocuments_);

      return swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_215A1AEC4(a5, &selRef_tabControllerDidChangeCurrentTabDocuments_);
  }
}

void sub_215A1E7F8(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v5 = [a1 allObjects];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7E5C0);
  v6 = sub_215A705E0();

  if (v6 >> 62)
  {
    v7 = sub_215A70CD0();
    if (!v7)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      goto LABEL_12;
    }
  }

  if (v7 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v7; ++i)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x216073710](i, v6);
    }

    else
    {
      v9 = *(v6 + 8 * i + 32);
      swift_unknownObjectRetain();
    }

    Strong = swift_unknownObjectUnownedLoadStrong();
    if ([v9 respondsToSelector_])
    {
      [v9 *a4];
    }

    swift_unknownObjectRelease();
  }

LABEL_12:
}

void sub_215A1E964(char a1, uint64_t a2, unint64_t a3, char *a4, uint64_t a5, void *a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a5;
  *(v12 + 24) = a6;

  v13 = a6;
  v14 = [a4 delegate];
  if (v14)
  {
    v15 = v14;
    if ([v14 tabControllerNotificationManagerShouldDeferNotifications_])
    {
      v16 = OBJC_IVAR___TabControllerNotificationManager_deferredNotifications;
      swift_beginAccess();
      if (*(*&a4[v16] + 16))
      {
        if (qword_27CA7D9A0 != -1)
        {
          swift_once();
        }

        v17 = sub_215A70000();
        __swift_project_value_buffer(v17, qword_27CA804A8);

        v18 = sub_215A6FFE0();
        v19 = sub_215A70810();

        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          v21 = swift_slowAlloc();
          aBlock[0] = v21;
          *v20 = 136315138;
          *(v20 + 4) = sub_215A39474(a2, a3, aBlock);
          _os_log_impl(&dword_215819000, v18, v19, "Adding deferred notification from %s", v20, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v21);
          MEMORY[0x216075690](v21, -1, -1);
          MEMORY[0x216075690](v20, -1, -1);
        }

        v22 = swift_allocObject();
        *(v22 + 16) = sub_215A1FC90;
        *(v22 + 24) = v12;
        swift_beginAccess();
        v23 = *&a4[v16];

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&a4[v16] = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v23 = sub_215A390B0(0, v23[2] + 1, 1, v23);
          *&a4[v16] = v23;
        }

        v26 = v23[2];
        v25 = v23[3];
        if (v26 >= v25 >> 1)
        {
          v23 = sub_215A390B0((v25 > 1), v26 + 1, 1, v23);
        }

        v23[2] = v26 + 1;
        v27 = &v23[2 * v26];
        v27[4] = sub_215A1FE18;
        v27[5] = v22;
        *&a4[v16] = v23;
        swift_endAccess();
LABEL_28:

        swift_unknownObjectRelease();
        return;
      }

      if (a1)
      {
        if (qword_27CA7D9A0 != -1)
        {
          swift_once();
        }

        v33 = sub_215A70000();
        __swift_project_value_buffer(v33, qword_27CA804A8);

        v34 = sub_215A6FFE0();
        v35 = sub_215A70810();

        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          v37 = swift_slowAlloc();
          aBlock[0] = v37;
          *v36 = 136315138;
          *(v36 + 4) = sub_215A39474(a2, a3, aBlock);
          _os_log_impl(&dword_215819000, v34, v35, "Starting deferring notifications from %s", v36, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v37);
          MEMORY[0x216075690](v37, -1, -1);
          MEMORY[0x216075690](v36, -1, -1);
        }

        v38 = swift_allocObject();
        *(v38 + 16) = sub_215A1FC90;
        *(v38 + 24) = v12;
        swift_beginAccess();
        v39 = *&a4[v16];

        v40 = swift_isUniquelyReferenced_nonNull_native();
        *&a4[v16] = v39;
        if ((v40 & 1) == 0)
        {
          v39 = sub_215A390B0(0, v39[2] + 1, 1, v39);
          *&a4[v16] = v39;
        }

        v42 = v39[2];
        v41 = v39[3];
        if (v42 >= v41 >> 1)
        {
          v39 = sub_215A390B0((v41 > 1), v42 + 1, 1, v39);
        }

        v39[2] = v42 + 1;
        v43 = &v39[2 * v42];
        v43[4] = sub_215A1FE18;
        v43[5] = v38;
        *&a4[v16] = v39;
        swift_endAccess();
        v44 = swift_allocObject();
        swift_unknownObjectWeakInit();
        aBlock[4] = sub_215A1FDF0;
        aBlock[5] = v44;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_2159F7E08;
        aBlock[3] = &block_descriptor_45;
        v45 = _Block_copy(aBlock);

        [v15 tabControllerNotificationManager:a4 sendDeferredNotificationsWithBlock:v45];
        _Block_release(v45);
        goto LABEL_28;
      }
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v47 = *(Strong + OBJC_IVAR___TabControllerNotificationManager_observers);
      v48 = Strong;
      v49 = v13;
      v50 = v47;
      sub_215A1E7F8(v50, v48, v49, &selRef_tabController_didSwitchFromTabGroup_);

      swift_unknownObjectRelease();

      return;
    }

    goto LABEL_28;
  }

  swift_beginAccess();
  v28 = swift_unknownObjectWeakLoadStrong();
  if (v28)
  {
    v29 = *(v28 + OBJC_IVAR___TabControllerNotificationManager_observers);
    v30 = v28;
    v31 = v13;
    v32 = v29;
    sub_215A1E7F8(v32, v30, v31, &selRef_tabController_didSwitchFromTabGroup_);
  }

  else
  {
  }
}

uint64_t sub_215A1EFC8(char a1, uint64_t a2, unint64_t a3, char *a4, uint64_t a5, void *a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a5;
  *(v12 + 24) = a6;

  v13 = a6;
  v14 = [a4 delegate];
  if (v14)
  {
    v15 = v14;
    if ([v14 tabControllerNotificationManagerShouldDeferNotifications_])
    {
      v16 = OBJC_IVAR___TabControllerNotificationManager_deferredNotifications;
      swift_beginAccess();
      if (*(*&a4[v16] + 16))
      {
        if (qword_27CA7D9A0 != -1)
        {
          swift_once();
        }

        v17 = sub_215A70000();
        __swift_project_value_buffer(v17, qword_27CA804A8);

        v18 = sub_215A6FFE0();
        v19 = sub_215A70810();

        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          v21 = swift_slowAlloc();
          aBlock[0] = v21;
          *v20 = 136315138;
          *(v20 + 4) = sub_215A39474(a2, a3, aBlock);
          _os_log_impl(&dword_215819000, v18, v19, "Adding deferred notification from %s", v20, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v21);
          MEMORY[0x216075690](v21, -1, -1);
          MEMORY[0x216075690](v20, -1, -1);
        }

        v22 = swift_allocObject();
        *(v22 + 16) = sub_215A1FC6C;
        *(v22 + 24) = v12;
        swift_beginAccess();
        v23 = *&a4[v16];

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&a4[v16] = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v23 = sub_215A390B0(0, v23[2] + 1, 1, v23);
          *&a4[v16] = v23;
        }

        v26 = v23[2];
        v25 = v23[3];
        if (v26 >= v25 >> 1)
        {
          v23 = sub_215A390B0((v25 > 1), v26 + 1, 1, v23);
        }

        v23[2] = v26 + 1;
        v27 = &v23[2 * v26];
        v27[4] = sub_215A1FE18;
        v27[5] = v22;
        *&a4[v16] = v23;
        swift_endAccess();
      }

      else if (a1)
      {
        if (qword_27CA7D9A0 != -1)
        {
          swift_once();
        }

        v29 = sub_215A70000();
        __swift_project_value_buffer(v29, qword_27CA804A8);

        v30 = sub_215A6FFE0();
        v31 = sub_215A70810();

        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          v33 = swift_slowAlloc();
          aBlock[0] = v33;
          *v32 = 136315138;
          *(v32 + 4) = sub_215A39474(a2, a3, aBlock);
          _os_log_impl(&dword_215819000, v30, v31, "Starting deferring notifications from %s", v32, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v33);
          MEMORY[0x216075690](v33, -1, -1);
          MEMORY[0x216075690](v32, -1, -1);
        }

        v34 = swift_allocObject();
        *(v34 + 16) = sub_215A1FC6C;
        *(v34 + 24) = v12;
        swift_beginAccess();
        v35 = *&a4[v16];

        v36 = swift_isUniquelyReferenced_nonNull_native();
        *&a4[v16] = v35;
        if ((v36 & 1) == 0)
        {
          v35 = sub_215A390B0(0, v35[2] + 1, 1, v35);
          *&a4[v16] = v35;
        }

        v38 = v35[2];
        v37 = v35[3];
        if (v38 >= v37 >> 1)
        {
          v35 = sub_215A390B0((v37 > 1), v38 + 1, 1, v35);
        }

        v35[2] = v38 + 1;
        v39 = &v35[2 * v38];
        v39[4] = sub_215A1FE18;
        v39[5] = v34;
        *&a4[v16] = v35;
        swift_endAccess();
        v40 = swift_allocObject();
        swift_unknownObjectWeakInit();
        aBlock[4] = sub_215A1FDF0;
        aBlock[5] = v40;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_2159F7E08;
        aBlock[3] = &block_descriptor_28_0;
        v41 = _Block_copy(aBlock);

        [v15 tabControllerNotificationManager:a4 sendDeferredNotificationsWithBlock:v41];
        _Block_release(v41);
      }

      else
      {
        sub_215A1B4B4(a5, v13, &selRef_tabControllerWillBeginUpdates_);
      }

      return swift_unknownObjectRelease();
    }

    else
    {
      sub_215A1B4B4(a5, v13, &selRef_tabControllerWillBeginUpdates_);

      return swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_215A1B4B4(a5, v13, &selRef_tabControllerWillBeginUpdates_);
  }
}

uint64_t sub_215A1F5EC(char a1, uint64_t a2, unint64_t a3, char *a4, uint64_t a5, void *a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a5;
  *(v12 + 24) = a6;

  v13 = a6;
  v14 = [a4 delegate];
  if (v14)
  {
    v15 = v14;
    if ([v14 tabControllerNotificationManagerShouldDeferNotifications_])
    {
      v16 = OBJC_IVAR___TabControllerNotificationManager_deferredNotifications;
      swift_beginAccess();
      if (*(*&a4[v16] + 16))
      {
        if (qword_27CA7D9A0 != -1)
        {
          swift_once();
        }

        v17 = sub_215A70000();
        __swift_project_value_buffer(v17, qword_27CA804A8);

        v18 = sub_215A6FFE0();
        v19 = sub_215A70810();

        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          v21 = swift_slowAlloc();
          aBlock[0] = v21;
          *v20 = 136315138;
          *(v20 + 4) = sub_215A39474(a2, a3, aBlock);
          _os_log_impl(&dword_215819000, v18, v19, "Adding deferred notification from %s", v20, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v21);
          MEMORY[0x216075690](v21, -1, -1);
          MEMORY[0x216075690](v20, -1, -1);
        }

        v22 = swift_allocObject();
        *(v22 + 16) = sub_215A1FC10;
        *(v22 + 24) = v12;
        swift_beginAccess();
        v23 = *&a4[v16];

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&a4[v16] = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v23 = sub_215A390B0(0, v23[2] + 1, 1, v23);
          *&a4[v16] = v23;
        }

        v26 = v23[2];
        v25 = v23[3];
        if (v26 >= v25 >> 1)
        {
          v23 = sub_215A390B0((v25 > 1), v26 + 1, 1, v23);
        }

        v23[2] = v26 + 1;
        v27 = &v23[2 * v26];
        v27[4] = sub_215A1FE18;
        v27[5] = v22;
        *&a4[v16] = v23;
        swift_endAccess();
      }

      else if (a1)
      {
        if (qword_27CA7D9A0 != -1)
        {
          swift_once();
        }

        v29 = sub_215A70000();
        __swift_project_value_buffer(v29, qword_27CA804A8);

        v30 = sub_215A6FFE0();
        v31 = sub_215A70810();

        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          v33 = swift_slowAlloc();
          aBlock[0] = v33;
          *v32 = 136315138;
          *(v32 + 4) = sub_215A39474(a2, a3, aBlock);
          _os_log_impl(&dword_215819000, v30, v31, "Starting deferring notifications from %s", v32, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v33);
          MEMORY[0x216075690](v33, -1, -1);
          MEMORY[0x216075690](v32, -1, -1);
        }

        v34 = swift_allocObject();
        *(v34 + 16) = sub_215A1FC10;
        *(v34 + 24) = v12;
        swift_beginAccess();
        v35 = *&a4[v16];

        v36 = swift_isUniquelyReferenced_nonNull_native();
        *&a4[v16] = v35;
        if ((v36 & 1) == 0)
        {
          v35 = sub_215A390B0(0, v35[2] + 1, 1, v35);
          *&a4[v16] = v35;
        }

        v38 = v35[2];
        v37 = v35[3];
        if (v38 >= v37 >> 1)
        {
          v35 = sub_215A390B0((v37 > 1), v38 + 1, 1, v35);
        }

        v35[2] = v38 + 1;
        v39 = &v35[2 * v38];
        v39[4] = sub_215A1FC34;
        v39[5] = v34;
        *&a4[v16] = v35;
        swift_endAccess();
        v40 = swift_allocObject();
        swift_unknownObjectWeakInit();
        aBlock[4] = sub_215A1FC5C;
        aBlock[5] = v40;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_2159F7E08;
        aBlock[3] = &block_descriptor_8;
        v41 = _Block_copy(aBlock);

        [v15 tabControllerNotificationManager:a4 sendDeferredNotificationsWithBlock:v41];
        _Block_release(v41);
      }

      else
      {
        sub_215A1B4B4(a5, v13, &selRef_tabControllerDidEndUpdates_);
      }

      return swift_unknownObjectRelease();
    }

    else
    {
      sub_215A1B4B4(a5, v13, &selRef_tabControllerDidEndUpdates_);

      return swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_215A1B4B4(a5, v13, &selRef_tabControllerDidEndUpdates_);
  }
}

uint64_t objectdestroy_62Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void sub_215A1FE2C(void *a1)
{
  v3 = objc_opt_self();
  v4 = *(v1 + OBJC_IVAR____TtC14MobileSafariUI32CloudDeviceLibraryItemController_device);
  v5 = [v4 deviceTypeIdentifier];
  v6 = [v3 deviceIconForIdentifier_];

  if (!v6)
  {
    v7 = sub_215A70500();
    v6 = [objc_opt_self() systemImageNamed_];
  }

  [a1 setImage_];

  v8 = [v4 disambiguatedName];
  [a1 setText_];
}

uint64_t sub_215A1FFF8()
{
  v1 = [v0 configuration];
  v2 = [v1 libraryItemOpenHandler];

  if (v2)
  {
    v3 = [v2 activeLibraryType];
    swift_unknownObjectRelease();
    if (!v3)
    {
LABEL_8:
      LOBYTE(v2) = 0;
      return v2 & 1;
    }

    v4 = sub_215A70540();
    v6 = v5;
    if (v4 == sub_215A70540() && v6 == v7)
    {
    }

    else
    {
      v9 = sub_215A70D90();

      if ((v9 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    v10 = [v0 configuration];
    v11 = [v10 libraryItemOpenHandler];

    if (v11)
    {
      v12 = [v11 deviceIDForActiveCloudTabsLibrary];
      swift_unknownObjectRelease();
      if (v12)
      {
        v13 = sub_215A70540();
        v11 = v14;
      }

      else
      {
        v13 = 0;
        v11 = 0;
      }
    }

    else
    {
      v13 = 0;
    }

    v15 = [*&v0[OBJC_IVAR____TtC14MobileSafariUI32CloudDeviceLibraryItemController_device] uuid];
    if (v15)
    {
      v16 = v15;
      v17 = sub_215A70540();
      v19 = v18;

      if (v11)
      {
        if (v19)
        {
          if (v13 == v17 && v11 == v19)
          {

            LOBYTE(v2) = 1;
          }

          else
          {
            LOBYTE(v2) = sub_215A70D90();
          }

          goto LABEL_27;
        }

        goto LABEL_22;
      }

      if (v19)
      {
        LOBYTE(v2) = 0;
        goto LABEL_27;
      }
    }

    else if (v11)
    {
LABEL_22:
      LOBYTE(v2) = 0;
LABEL_27:

      return v2 & 1;
    }

    LOBYTE(v2) = 1;
  }

  return v2 & 1;
}

void sub_215A2024C()
{
  v1 = [v0 configuration];
  v2 = [v1 libraryItemOpenHandler];

  if (v2)
  {
    v3 = [*&v0[OBJC_IVAR____TtC14MobileSafariUI32CloudDeviceLibraryItemController_device] uuid];
    if (v3)
    {
      v4 = v3;
      [v2 openCloudTabsLibraryForDeviceID_];

      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_215A2035C(uint64_t a1)
{
  sub_21583FD1C(a1, v29);
  if (!v30)
  {
    sub_21583FDA0(v29);
    goto LABEL_35;
  }

  type metadata accessor for CloudDeviceLibraryItemController();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_35:
    v26 = 0;
    return v26 & 1;
  }

  v2 = *(v1 + OBJC_IVAR____TtC14MobileSafariUI32CloudDeviceLibraryItemController_device);
  v3 = [v2 uuid];
  if (v3)
  {
    v4 = v3;
    v5 = sub_215A70540();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = OBJC_IVAR____TtC14MobileSafariUI32CloudDeviceLibraryItemController_device;
  v9 = [*&v28[OBJC_IVAR____TtC14MobileSafariUI32CloudDeviceLibraryItemController_device] uuid];
  if (v9)
  {
    v10 = v9;
    v11 = sub_215A70540();
    v13 = v12;

    if (v7)
    {
      if (!v13)
      {
        goto LABEL_17;
      }

      if (v5 == v11 && v7 == v13)
      {
      }

      else
      {
        v15 = sub_215A70D90();

        if ((v15 & 1) == 0)
        {

          goto LABEL_35;
        }
      }
    }

    else if (v13)
    {

      goto LABEL_35;
    }
  }

  else if (v7)
  {
    goto LABEL_17;
  }

  v16 = [v2 disambiguatedName];
  if (v16)
  {
    v17 = v16;
    v18 = sub_215A70540();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0;
  }

  v21 = [*&v28[v8] disambiguatedName];
  if (v21)
  {
    v22 = v21;
    v23 = sub_215A70540();
    v25 = v24;

    if (!v20)
    {

      if (!v25)
      {
        v26 = 1;
        return v26 & 1;
      }

      goto LABEL_34;
    }

    if (v25)
    {
      if (v18 != v23 || v20 != v25)
      {
        v26 = sub_215A70D90();

        return v26 & 1;
      }

      goto LABEL_32;
    }

LABEL_17:

LABEL_34:

    goto LABEL_35;
  }

  if (v20)
  {
    goto LABEL_17;
  }

LABEL_32:

  v26 = 1;
  return v26 & 1;
}

uint64_t sub_215A20688()
{
  v1 = *(v0 + OBJC_IVAR____TtC14MobileSafariUI32CloudDeviceLibraryItemController_device);
  v2 = [v1 uuid];
  if (v2)
  {
    v3 = v2;
    sub_215A70540();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7E640);
  v4 = sub_215A70B40();

  v5 = [v1 disambiguatedName];
  if (v5)
  {
    v6 = v5;
    sub_215A70540();
  }

  v7 = sub_215A70B40();

  return v7 ^ v4;
}

id sub_215A207D0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CloudDeviceLibraryItemController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_215A20838(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
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
          v8 = MEMORY[0x216073710](v5, a3);
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
      v13 = sub_215A70CD0();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_215A20960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7E060);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_215A07074(a3, v25 - v10, &qword_27CA7E060);
  v12 = sub_215A706E0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_21583F14C(v11, &qword_27CA7E060);
  }

  else
  {
    sub_215A706D0();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_215A70670();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_215A70570() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_21583F14C(a3, &qword_27CA7E060);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_21583F14C(a3, &qword_27CA7E060);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

void sub_215A20C68(char a1)
{
  v2 = OBJC_IVAR____TtCE14MobileSafariUICSo32FallbackTabSnapshotCacheProvider15ContentProvider_success;
  if (*(v1 + OBJC_IVAR____TtCE14MobileSafariUICSo32FallbackTabSnapshotCacheProvider15ContentProvider_success) == 2)
  {
    if (qword_2811A21D0 != -1)
    {
      swift_once();
    }

    v4 = sub_215A70000();
    __swift_project_value_buffer(v4, qword_2811A32B0);
    v5 = v1;
    v6 = sub_215A6FFE0();
    v7 = sub_215A70800();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v13 = v9;
      *v8 = 136315138;
      sub_215A6F960();
      sub_215A263AC(&qword_2811A27F8, MEMORY[0x277CC95F0]);
      v10 = sub_215A70D60();
      v12 = sub_215A39474(v10, v11, &v13);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_215819000, v6, v7, "Fallback provider: prepared web view for %s.", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x216075690](v9, -1, -1);
      MEMORY[0x216075690](v8, -1, -1);
    }

    *(v1 + v2) = a1 & 1;
    sub_215A20E40();
  }
}

void sub_215A20E40()
{
  v1 = v0[OBJC_IVAR____TtCE14MobileSafariUICSo32FallbackTabSnapshotCacheProvider15ContentProvider_success];
  if (v1 != 2)
  {
    v2 = &v0[OBJC_IVAR____TtCE14MobileSafariUICSo32FallbackTabSnapshotCacheProvider15ContentProvider_pendingSize];
    if ((v0[OBJC_IVAR____TtCE14MobileSafariUICSo32FallbackTabSnapshotCacheProvider15ContentProvider_pendingSize + 16] & 1) == 0)
    {
      v3 = &v0[OBJC_IVAR____TtCE14MobileSafariUICSo32FallbackTabSnapshotCacheProvider15ContentProvider_pendingCompletion];
      v4 = *&v0[OBJC_IVAR____TtCE14MobileSafariUICSo32FallbackTabSnapshotCacheProvider15ContentProvider_pendingCompletion];
      if (v4)
      {
        v6 = *v2;
        v5 = v2[1];
        v7 = *(v3 + 1);
        *v3 = 0;
        *(v3 + 1) = 0;
        if (v1)
        {
          aBlock[4] = v4;
          aBlock[5] = v7;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_215A211E4;
          aBlock[3] = &block_descriptor_40;
          v8 = _Block_copy(aBlock);

          v9.receiver = v0;
          v9.super_class = _s15ContentProviderCMa();
          objc_msgSendSuper2(&v9, sel_prepareForSnapshotOfSize_completion_, v8, v6, v5);
          sub_21584BA0C(v4);
          _Block_release(v8);
        }

        else
        {
          v4(1);

          sub_21584BA0C(v4);
        }
      }
    }
  }
}

void sub_215A20FB0(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v7 = &v4[OBJC_IVAR____TtCE14MobileSafariUICSo32FallbackTabSnapshotCacheProvider15ContentProvider_pendingCompletion];
  v8 = *&v4[OBJC_IVAR____TtCE14MobileSafariUICSo32FallbackTabSnapshotCacheProvider15ContentProvider_pendingCompletion];
  *v7 = a1;
  *(v7 + 1) = a2;

  sub_21584BA0C(v8);
  v9 = &v4[OBJC_IVAR____TtCE14MobileSafariUICSo32FallbackTabSnapshotCacheProvider15ContentProvider_pendingSize];
  *v9 = a3;
  v9[1] = a4;
  *(v9 + 16) = 0;
  v10 = v4[OBJC_IVAR____TtCE14MobileSafariUICSo32FallbackTabSnapshotCacheProvider15ContentProvider_success];
  if (v10 != 2)
  {
    v11 = *v7;
    if (*v7)
    {
      v12 = *(v7 + 1);
      *v7 = 0;
      *(v7 + 1) = 0;
      if (v10)
      {
        aBlock[4] = v11;
        aBlock[5] = v12;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_215A211E4;
        aBlock[3] = &block_descriptor_46_0;
        v13 = _Block_copy(aBlock);

        v14.receiver = v4;
        v14.super_class = _s15ContentProviderCMa();
        objc_msgSendSuper2(&v14, sel_prepareForSnapshotOfSize_completion_, v13, a3, a4);
        sub_21584BA0C(v11);
        _Block_release(v13);
      }

      else
      {
        v11(1);

        sub_21584BA0C(v11);
      }
    }
  }
}

uint64_t sub_215A211E4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

id sub_215A21268()
{
  v2.receiver = v0;
  v2.super_class = _s15ContentProviderCMa();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_215A21320@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_215A6F870();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

id sub_215A21444(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7E0C0);
  MEMORY[0x28223BE20]();
  v3 = &v15 - v2;
  v4 = sub_215A6F960();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20]();
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  sub_215A6F950();

  v8(v7);

  (*(v5 + 8))(v7, v4);
  v9 = sub_215A6F870();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 48))(v3, 1, v9);
  v12 = 0;
  if (v11 != 1)
  {
    v13 = sub_215A6F840();
    (*(v10 + 8))(v3, v9);
    v12 = v13;
  }

  return v12;
}

uint64_t sub_215A21630@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_215A6F940();
  v5 = (*(a1 + 16))(a1, v4);

  if (v5)
  {
    sub_215A6F850();

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = sub_215A6F870();
  v8 = *(*(v7 - 8) + 56);

  return v8(a2, v6, 1, v7);
}

id FallbackTabSnapshotCacheProvider.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

{
  *&v0[OBJC_IVAR___FallbackTabSnapshotCacheProvider_contentProvider] = 0;
  v1 = &v0[OBJC_IVAR___FallbackTabSnapshotCacheProvider_urlProvider];
  *v1 = sub_215A21320;
  v1[1] = 0;
  v2 = OBJC_IVAR___FallbackTabSnapshotCacheProvider_generator;
  *&v0[v2] = [objc_allocWithZone(TabSnapshotGenerator) init];
  *&v0[OBJC_IVAR___FallbackTabSnapshotCacheProvider____lazy_storage___networkMonitor] = 0;
  v3 = &v0[OBJC_IVAR___FallbackTabSnapshotCacheProvider_sizingProviders];
  *v3 = sub_215A217AC;
  v3[1] = 0;
  v5.receiver = v0;
  v5.super_class = FallbackTabSnapshotCacheProvider;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_215A21730()
{
  v1 = OBJC_IVAR___FallbackTabSnapshotCacheProvider____lazy_storage___networkMonitor;
  if (*(v0 + OBJC_IVAR___FallbackTabSnapshotCacheProvider____lazy_storage___networkMonitor))
  {
    v2 = *(v0 + OBJC_IVAR___FallbackTabSnapshotCacheProvider____lazy_storage___networkMonitor);
  }

  else
  {
    v3 = v0;
    sub_215A70400();
    swift_allocObject();
    v2 = sub_215A703F0();
    *(v3 + v1) = v2;
  }

  return v2;
}

id sub_215A21870(uint64_t a1)
{
  v2 = sub_215A6F960();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 32);
  sub_215A6F950();

  v6(v5);

  (*(v3 + 8))(v5, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7E6F8);
  v7 = sub_215A705D0();

  return v7;
}

uint64_t sub_215A219A8(uint64_t a1, uint64_t a2)
{
  v3 = sub_215A6F940();
  v4 = (*(a2 + 16))(a2, v3);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7E6F8);
  v5 = sub_215A705E0();

  return v5;
}

id sub_215A21A24(uint64_t a1)
{
  v2 = v1;
  v4 = sub_215A6F7F0();
  v94 = *(v4 - 8);
  v95 = v4;
  MEMORY[0x28223BE20](v4);
  v93 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_215A6F960();
  v99 = *(v97 - 8);
  v6 = MEMORY[0x28223BE20](v97);
  v8 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v92 = &v82 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v82 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7E0C0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v82 - v17;
  v19 = sub_215A6F870();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v91 = &v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v82 - v24;
  MEMORY[0x28223BE20](v23);
  v96 = &v82 - v26;
  v90 = v2;
  v27 = [v2 URLProvider];
  v98 = a1;
  v28 = sub_215A6F940();
  v29 = v27[2](v27, v28);

  if (v29)
  {
    sub_215A6F850();

    _Block_release(v27);
    (*(v20 + 56))(v16, 0, 1, v19);
  }

  else
  {
    _Block_release(v27);
    (*(v20 + 56))(v16, 1, 1, v19);
  }

  v30 = v20;
  sub_215A26130(v16, v18, &qword_27CA7E0C0);
  v31 = (*(v20 + 48))(v18, 1, v19);
  v32 = v99;
  v33 = v97;
  if (v31 == 1)
  {
    sub_21583F14C(v18, &qword_27CA7E0C0);
    if (qword_2811A21D0 != -1)
    {
      swift_once();
    }

    v34 = sub_215A70000();
    __swift_project_value_buffer(v34, qword_2811A32B0);
    (*(v32 + 16))(v8, v98, v33);
    v35 = sub_215A6FFE0();
    v36 = sub_215A70820();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v101[0] = v38;
      *v37 = 136315138;
      sub_215A263AC(&qword_2811A27F8, MEMORY[0x277CC95F0]);
      v39 = sub_215A70D60();
      v41 = v40;
      (*(v32 + 8))(v8, v33);
      v42 = sub_215A39474(v39, v41, v101);

      *(v37 + 4) = v42;
      _os_log_impl(&dword_215819000, v35, v36, "Fallback provider: no URL provided for %s.", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v38);
      MEMORY[0x216075690](v38, -1, -1);
      MEMORY[0x216075690](v37, -1, -1);
    }

    else
    {

      (*(v32 + 8))(v8, v33);
    }

    return 0;
  }

  else
  {
    v43 = v96;
    (*(v30 + 32))(v96, v18, v19);
    if (qword_2811A21D0 != -1)
    {
      swift_once();
    }

    v44 = sub_215A70000();
    __swift_project_value_buffer(v44, qword_2811A32B0);
    v85 = *(v32 + 16);
    v86 = v32 + 16;
    v85(v12, v98, v33);
    v87 = *(v30 + 16);
    v88 = v30 + 16;
    v87(v25, v43, v19);
    v45 = sub_215A6FFE0();
    v46 = sub_215A70800();
    v47 = os_log_type_enabled(v45, v46);
    v89 = v30;
    if (v47)
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v101[0] = v49;
      *v48 = 136315395;
      sub_215A263AC(&qword_2811A27F8, MEMORY[0x277CC95F0]);
      v50 = sub_215A70D60();
      v52 = v51;
      v83 = *(v99 + 8);
      v83(v12, v33);
      v53 = sub_215A39474(v50, v52, v101);

      *(v48 + 4) = v53;
      *(v48 + 12) = 2085;
      sub_215A263AC(&qword_2811A2828, MEMORY[0x277CC9260]);
      v54 = sub_215A70D60();
      v56 = v55;
      v84 = *(v89 + 8);
      v84(v25, v19);
      v57 = sub_215A39474(v54, v56, v101);

      *(v48 + 14) = v57;
      _os_log_impl(&dword_215819000, v45, v46, "Fallback provider: preparing web view for %s (%{sensitive}s).", v48, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x216075690](v49, -1, -1);
      MEMORY[0x216075690](v48, -1, -1);
    }

    else
    {

      v84 = *(v30 + 8);
      v84(v25, v19);
      v83 = *(v32 + 8);
      v83(v12, v33);
    }

    v59 = [objc_allocWithZone(MEMORY[0x277CE3858]) init];
    v60 = [objc_opt_self() nonPersistentDataStore];
    [v59 setWebsiteDataStore_];

    result = [v59 defaultWebpagePreferences];
    if (result)
    {
      v61 = result;
      [result setAllowsContentJavaScript_];

      v62 = [objc_allocWithZone(MEMORY[0x277CE3850]) initWithFrame:v59 configuration:{0.0, 0.0, 0.0, 0.0}];
      [v62 setNavigationDelegate_];
      v63 = objc_opt_self();
      v64 = v62;
      v65 = [v63 mainScreen];
      [v65 bounds];
      v67 = v66;
      v69 = v68;

      [v64 setFrame_];
      v70 = v92;
      v71 = v85;
      v85(v92, v98, v33);
      v72 = _s15ContentProviderCMa();
      v73 = objc_allocWithZone(v72);
      v74 = &v73[OBJC_IVAR____TtCE14MobileSafariUICSo32FallbackTabSnapshotCacheProvider15ContentProvider_pendingSize];
      *v74 = 0;
      *(v74 + 1) = 0;
      v74[16] = 1;
      v75 = &v73[OBJC_IVAR____TtCE14MobileSafariUICSo32FallbackTabSnapshotCacheProvider15ContentProvider_pendingCompletion];
      *v75 = 0;
      v75[1] = 0;
      v73[OBJC_IVAR____TtCE14MobileSafariUICSo32FallbackTabSnapshotCacheProvider15ContentProvider_success] = 2;
      v71(&v73[OBJC_IVAR____TtCE14MobileSafariUICSo32FallbackTabSnapshotCacheProvider15ContentProvider_id], v70, v33);
      v76 = v64;
      [v76 bounds];
      v100.receiver = v73;
      v100.super_class = v72;
      v77 = objc_msgSendSuper2(&v100, sel_initWithWebView_contentFrame_, v76);

      v83(v70, v33);
      v78 = v96;
      v87(v91, v96, v19);
      v79 = v93;
      sub_215A6F7E0();
      v80 = sub_215A6F7D0();
      (*(v94 + 8))(v79, v95);
      v81 = [v76 loadRequest_];

      v84(v78, v19);
      return v77;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_215A22554@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v61 = a3;
  v60 = sub_215A6F960();
  v5 = *(v60 - 8);
  v6 = (MEMORY[0x28223BE20])();
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v56 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7E0C0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v56 - v15;
  sub_215A6F930();
  v17 = sub_215A70500();

  v18 = [a2 tabWithUUID_];

  if (v18)
  {
    v19 = v18;
    v20 = [v19 url];

    if (v20)
    {
      sub_215A6F850();

      v21 = sub_215A6F870();
      v22 = *(v21 - 8);
      v23 = *(v22 + 56);
      v58 = v22 + 56;
      v59 = v23;
      v23(v16, 0, 1, v21);
      sub_21583F14C(v16, &qword_27CA7E0C0);
      v24 = [v19 tabGroupUUID];
      if (!v24 || (v25 = v24, v26 = [a2 tabGroupWithUUID_], v25, v26) && (v27 = objc_msgSend(v26, sel_tabs), v26, sub_2159F7DA8(0, &qword_2811A2710), v28 = sub_215A705E0(), v27, v62 = v19, MEMORY[0x28223BE20](v29), *(&v56 - 2) = &v62, LOBYTE(v27) = sub_215A20838(sub_215A26198, (&v56 - 4), v28), , (v27 & 1) != 0))
      {
        v30 = [v19 url];
        if (v30)
        {
          v31 = v30;
          sub_215A6F850();

          v32 = 0;
        }

        else
        {
          v32 = 1;
        }

        v59(v14, v32, 1, v21);
        return sub_215A26130(v14, v61, &qword_27CA7E0C0);
      }

      else
      {
        if (qword_2811A21D0 != -1)
        {
          swift_once();
        }

        v46 = sub_215A70000();
        __swift_project_value_buffer(v46, qword_2811A32B0);
        v47 = v60;
        (*(v5 + 16))(v10, a1, v60);
        v48 = sub_215A6FFE0();
        v49 = sub_215A70800();
        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          v57 = swift_slowAlloc();
          v62 = v57;
          *v50 = 136315138;
          sub_215A263AC(&qword_2811A27F8, MEMORY[0x277CC95F0]);
          v51 = sub_215A70D60();
          v53 = v52;
          (*(v5 + 8))(v10, v47);
          v54 = sub_215A39474(v51, v53, &v62);

          *(v50 + 4) = v54;
          _os_log_impl(&dword_215819000, v48, v49, "Fallback provider: %s is not a member of a tab group.", v50, 0xCu);
          v55 = v57;
          __swift_destroy_boxed_opaque_existential_0(v57);
          MEMORY[0x216075690](v55, -1, -1);
          MEMORY[0x216075690](v50, -1, -1);
        }

        else
        {

          (*(v5 + 8))(v10, v47);
        }

        return (v59)(v61, 1, 1, v21);
      }
    }

    v33 = sub_215A6F870();
    (*(*(v33 - 8) + 56))(v16, 1, 1, v33);
    sub_21583F14C(v16, &qword_27CA7E0C0);
  }

  if (qword_2811A21D0 != -1)
  {
    swift_once();
  }

  v34 = sub_215A70000();
  __swift_project_value_buffer(v34, qword_2811A32B0);
  v35 = v60;
  (*(v5 + 16))(v8, a1, v60);
  v36 = sub_215A6FFE0();
  v37 = sub_215A70800();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v62 = v39;
    *v38 = 136315138;
    sub_215A263AC(&qword_2811A27F8, MEMORY[0x277CC95F0]);
    v40 = sub_215A70D60();
    v42 = v41;
    (*(v5 + 8))(v8, v35);
    v43 = sub_215A39474(v40, v42, &v62);

    *(v38 + 4) = v43;
    _os_log_impl(&dword_215819000, v36, v37, "Fallback provider: %s has no URL.", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v39);
    MEMORY[0x216075690](v39, -1, -1);
    MEMORY[0x216075690](v38, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v8, v35);
  }

  v44 = sub_215A6F870();
  return (*(*(v44 - 8) + 56))(v61, 1, 1, v44);
}

uint64_t FallbackTabSnapshotCacheProvider.tabSnapshotCache(_:requestSnapshotWithIdentifier:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7DF80);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v11 = &v24 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7E060);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v24 - v13;
  v15 = sub_215A706E0();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  sub_215A07074(a2, v11, &unk_27CA7DF80);
  sub_215A706C0();
  v16 = v4;

  v17 = sub_215A706B0();
  v18 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v19 = (v9 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  v21 = MEMORY[0x277D85700];
  v20[2] = v17;
  v20[3] = v21;
  v20[4] = v16;
  sub_215A26130(v11, v20 + v18, &unk_27CA7DF80);
  v22 = (v20 + v19);
  *v22 = v25;
  v22[1] = a4;
  sub_215A20960(0, 0, v14, &unk_215A96E98, v20);
}

uint64_t sub_215A22F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a6;
  v7[4] = a7;
  v7[2] = a4;
  v7[5] = sub_215A706C0();
  v7[6] = sub_215A706B0();
  v9 = swift_task_alloc();
  v7[7] = v9;
  *v9 = v7;
  v9[1] = sub_215A23010;

  return sub_215A23340(a5);
}

uint64_t sub_215A23010(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 64) = a1;
  *(v3 + 72) = a2;

  v5 = sub_215A70670();

  return MEMORY[0x2822009F8](sub_215A23154, v5, v4);
}

uint64_t sub_215A23154()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[3];
  v4 = v0[2];

  v5 = *(v4 + OBJC_IVAR___FallbackTabSnapshotCacheProvider_contentProvider);
  *(v4 + OBJC_IVAR___FallbackTabSnapshotCacheProvider_contentProvider) = 0;

  v3(v1, v2);
  v6 = v0[1];

  return v6();
}

uint64_t sub_215A231F8(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7DF80) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_215A0763C;

  return sub_215A22F4C(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_215A23340(uint64_t a1)
{
  v2[21] = a1;
  v2[22] = v1;
  v3 = sub_215A6F960();
  v2[23] = v3;
  v2[24] = *(v3 - 8);
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7DF80);
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v4 = sub_215A703E0();
  v2[42] = v4;
  v2[43] = *(v4 - 8);
  v2[44] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7E708);
  v2[45] = swift_task_alloc();
  v2[46] = swift_task_alloc();
  v5 = sub_215A70430();
  v2[47] = v5;
  v2[48] = *(v5 - 8);
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();
  v2[51] = sub_215A706C0();
  v2[52] = sub_215A706B0();
  v7 = sub_215A70670();
  v2[53] = v7;
  v2[54] = v6;

  return MEMORY[0x2822009F8](sub_215A23624, v7, v6);
}

uint64_t sub_215A23624()
{
  *(v0 + 440) = sub_215A21730();

  return MEMORY[0x2822009F8](sub_215A23690, 0, 0);
}

uint64_t sub_215A23690()
{
  v0[20] = v0[55];
  sub_215A70400();
  sub_215A263AC(&qword_2811A2810, MEMORY[0x277CD8E78]);

  sub_215A706F0();
  v1 = sub_215A263AC(&unk_2811A2818, MEMORY[0x277CD8E68]);
  v2 = swift_task_alloc();
  v0[56] = v2;
  *v2 = v0;
  v2[1] = sub_215A237E4;
  v3 = v0[45];
  v4 = v0[42];

  return MEMORY[0x282200308](v3, v4, v1);
}

uint64_t sub_215A237E4()
{
  v2 = *v1;

  v3 = v2[44];
  v4 = v2[43];
  v5 = v2[42];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = CGSizeMake;
  }

  else
  {
    (*(v4 + 8))(v3, v5);
    v6 = sub_215A2397C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_215A2397C()
{
  v1 = v0[47];
  v2 = v0[48];
  v3 = v0[45];
  v4 = *(v2 + 48);
  v0[57] = v4;
  v0[58] = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v3, 1, v1) == 1)
  {

    (*(v0[48] + 56))(v0[46], 1, 1, v0[47]);
    v5 = v0[53];
    v6 = v0[54];
    v7 = sub_215A23BCC;
  }

  else
  {
    v8 = v0[49];
    v9 = *(v2 + 32);
    v0[59] = v9;
    v0[60] = (v2 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v9(v8, v3, v1);
    v0[61] = sub_215A706B0();
    v10 = sub_215A70670();
    v12 = v11;
    v7 = sub_215A23AB4;
    v5 = v10;
    v6 = v12;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_215A23AB4()
{

  return MEMORY[0x2822009F8](sub_215A23B1C, 0, 0);
}

uint64_t sub_215A23B1C()
{
  v1 = v0[59];
  v2 = v0[49];
  v4 = v0[46];
  v3 = v0[47];

  v1(v4, v2, v3);
  (*(v0[48] + 56))(v0[46], 0, 1, v0[47]);
  v5 = v0[53];
  v6 = v0[54];

  return MEMORY[0x2822009F8](sub_215A23BCC, v5, v6);
}

uint64_t sub_215A23BCC()
{
  v197 = v0;
  v1 = v0;
  v3 = *(v0 + 368);
  v2 = *(v0 + 376);
  if ((*(v0 + 456))(v3, 1, v2) == 1)
  {

    sub_21583F14C(v3, &qword_27CA7E708);
    if (qword_2811A21D0 != -1)
    {
      goto LABEL_104;
    }

    goto LABEL_3;
  }

  v25 = *(v0 + 400);
  v26 = *(v0 + 384);
  v27 = *(v0 + 176);
  (*(v26 + 32))(v25, v3, v2);
  v28 = OBJC_IVAR___FallbackTabSnapshotCacheProvider_contentProvider;
  if (*(v27 + OBJC_IVAR___FallbackTabSnapshotCacheProvider_contentProvider))
  {

    if (qword_2811A21D0 != -1)
    {
      swift_once();
    }

    v29 = v1[22];
    v30 = sub_215A70000();
    __swift_project_value_buffer(v30, qword_2811A32B0);
    v31 = v29;
    v32 = sub_215A6FFE0();
    v33 = sub_215A70820();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v196 = v35;
      *v34 = 136315138;
      v36 = *(v27 + v28);
      if (v36)
      {
        (*(v1[24] + 16))(v1[32], v36 + OBJC_IVAR____TtCE14MobileSafariUICSo32FallbackTabSnapshotCacheProvider15ContentProvider_id, v1[23]);
        v37 = 0;
      }

      else
      {
        v37 = 1;
      }

      v71 = v1[50];
      v73 = v1[47];
      v72 = v1[48];
      v74 = v1;
      v192 = 1;
      (*(v1[24] + 56))(v1[32], v37, 1, v1[23]);
      v75 = sub_215A70560();
      v77 = sub_215A39474(v75, v76, &v196);

      *(v34 + 4) = v77;
      v1 = v74;
      _os_log_impl(&dword_215819000, v32, v33, "Fallback provider: already handling request for %s.", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x216075690](v35, -1, -1);
      MEMORY[0x216075690](v34, -1, -1);

      (*(v72 + 8))(v71, v73);
      goto LABEL_29;
    }

    v64 = v1[50];
    v65 = v1[47];
    v66 = v1[48];

    goto LABEL_25;
  }

  if (sub_215A70420() & 1) != 0 || (sub_215A70410())
  {

    if (qword_2811A21D0 != -1)
    {
      swift_once();
    }

    v38 = v1[41];
    v39 = v1[21];
    v40 = sub_215A70000();
    __swift_project_value_buffer(v40, qword_2811A32B0);
    sub_215A07074(v39, v38, &unk_27CA7DF80);
    v41 = sub_215A6FFE0();
    v42 = sub_215A70800();
    if (os_log_type_enabled(v41, v42))
    {
      v44 = v1[40];
      v43 = v1[41];
      v46 = v1[23];
      v45 = v1[24];
      v47 = swift_slowAlloc();
      v191 = swift_slowAlloc();
      v196 = v191;
      *v47 = 136315138;
      sub_215A07074(v43, v44, &unk_27CA7DF80);
      v16 = (*(v45 + 48))(v44, 1, v46);
      if (v16 == 1)
      {
        goto LABEL_109;
      }

      v48 = v1[48];
      v186 = v1[47];
      v187 = v1[50];
      v49 = v1[40];
      v183 = v1[41];
      v50 = v1[28];
      v51 = v1;
      v54 = v1 + 23;
      v53 = v1[23];
      v52 = v54[1];
      (*(v52 + 32))(v50, v49, v53);
      sub_215A263AC(&qword_2811A27F8, MEMORY[0x277CC95F0]);
      v55 = sub_215A70D60();
      v57 = v56;
      v58 = v53;
      v1 = v51;
      (*(v52 + 8))(v50, v58);
      sub_21583F14C(v183, &unk_27CA7DF80);
      v59 = sub_215A39474(v55, v57, &v196);

      *(v47 + 4) = v59;
      v60 = "Fallback provider: defer due to constrained network for %s.";
LABEL_20:
      _os_log_impl(&dword_215819000, v41, v42, v60, v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v191);
      MEMORY[0x216075690](v191, -1, -1);
      MEMORY[0x216075690](v47, -1, -1);

      v61 = *(v48 + 8);
      v62 = v187;
LABEL_21:
      v63 = v186;
LABEL_26:
      v61(v62, v63);
      goto LABEL_27;
    }

    v64 = v1[50];
    v65 = v1[47];
    v66 = v1[48];
    v67 = v1[41];
    goto LABEL_24;
  }

  v78 = [objc_opt_self() processInfo];
  v79 = [v78 isLowPowerModeEnabled];

  if (v79)
  {

    if (qword_2811A21D0 != -1)
    {
      swift_once();
    }

    v80 = v1[39];
    v81 = v1[21];
    v82 = sub_215A70000();
    __swift_project_value_buffer(v82, qword_2811A32B0);
    sub_215A07074(v81, v80, &unk_27CA7DF80);
    v41 = sub_215A6FFE0();
    v42 = sub_215A70800();
    if (os_log_type_enabled(v41, v42))
    {
      v84 = v1[38];
      v83 = v1[39];
      v86 = v1[23];
      v85 = v1[24];
      v47 = swift_slowAlloc();
      v191 = swift_slowAlloc();
      v196 = v191;
      *v47 = 136315138;
      sub_215A07074(v83, v84, &unk_27CA7DF80);
      v16 = (*(v85 + 48))(v84, 1, v86);
      if (v16 == 1)
      {
        goto LABEL_112;
      }

      v48 = v1[48];
      v186 = v1[47];
      v187 = v1[50];
      v87 = v1[38];
      v184 = v1[39];
      v88 = v1[27];
      v89 = v1;
      v92 = v1 + 23;
      v91 = v1[23];
      v90 = v92[1];
      (*(v90 + 32))(v88, v87, v91);
      sub_215A263AC(&qword_2811A27F8, MEMORY[0x277CC95F0]);
      v93 = sub_215A70D60();
      v95 = v94;
      v96 = v91;
      v1 = v89;
      (*(v90 + 8))(v88, v96);
      sub_21583F14C(v184, &unk_27CA7DF80);
      v97 = sub_215A39474(v93, v95, &v196);

      *(v47 + 4) = v97;
      v60 = "Fallback provider: defer due to lower power mode for %s.";
      goto LABEL_20;
    }

    v64 = v1[50];
    v65 = v1[47];
    v66 = v1[48];
    v67 = v1[39];
LABEL_24:

    sub_21583F14C(v67, &unk_27CA7DF80);
LABEL_25:
    v61 = *(v66 + 8);
    v62 = v64;
    v63 = v65;
    goto LABEL_26;
  }

  v98 = v1[37];
  v99 = v1[23];
  v100 = v1[24];
  v102 = v1[21];
  v101 = v1[22];
  v103 = [objc_opt_self() mainScreen];
  [v103 bounds];
  v105 = v104;
  v107 = v106;

  v108 = [v101 sizingProviders];
  sub_215A07074(v102, v98, &unk_27CA7DF80);
  v185 = *(v100 + 48);
  v16 = v185(v98, 1, v99);
  if (v16 == 1)
  {
    goto LABEL_110;
  }

  v109 = v1[37];
  v110 = v1[23];
  v111 = v1[24];
  v188 = v1;
  v112 = sub_215A6F940();
  v113 = v108[2](v108, v112);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7E6F8);
  v114 = sub_215A705E0();

  _Block_release(v108);
  v182 = *(v111 + 8);
  v182(v109, v110);
  v1 = (v114 & 0xFFFFFFFFFFFFFF8);
  if (v114 >> 62)
  {
    v115 = sub_215A70CD0();
  }

  else
  {
    v115 = *((v114 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v116 = 0;
  v117 = v114 & 0xC000000000000001;
  v118 = MEMORY[0x277D84F90];
  v193 = MEMORY[0x277D84F90];
  while (v115 != v116)
  {
    if (v117)
    {
      v119 = MEMORY[0x216073710](v116, v114);
      v120 = v116 + 1;
      if (__OFADD__(v116, 1))
      {
        goto LABEL_102;
      }
    }

    else
    {
      if (v116 >= *((v114 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_103;
      }

      v119 = *(v114 + 8 * v116 + 32);
      swift_unknownObjectRetain();
      v120 = v116 + 1;
      if (__OFADD__(v116, 1))
      {
LABEL_102:
        __break(1u);
LABEL_103:
        __break(1u);
LABEL_104:
        swift_once();
LABEL_3:
        v4 = v1[31];
        v5 = v1[21];
        v6 = sub_215A70000();
        __swift_project_value_buffer(v6, qword_2811A32B0);
        sub_215A07074(v5, v4, &unk_27CA7DF80);
        v7 = sub_215A6FFE0();
        v8 = sub_215A70820();
        v9 = os_log_type_enabled(v7, v8);
        v10 = v1[31];
        if (v9)
        {
          v11 = v1[30];
          v13 = v1[23];
          v12 = v1[24];
          v14 = swift_slowAlloc();
          v15 = swift_slowAlloc();
          v196 = v15;
          *v14 = 136315138;
          sub_215A07074(v10, v11, &unk_27CA7DF80);
          v16 = (*(v12 + 48))(v11, 1, v13);
          if (v16 != 1)
          {
            v190 = v1[31];
            v18 = v1[24];
            v17 = v1[25];
            v19 = v1[23];
            (*(v18 + 32))(v17, v1[30], v19);
            sub_215A263AC(&qword_2811A27F8, MEMORY[0x277CC95F0]);
            v20 = sub_215A70D60();
            v21 = v1;
            v23 = v22;
            (*(v18 + 8))(v17, v19);
            sub_21583F14C(v190, &unk_27CA7DF80);
            v24 = sub_215A39474(v20, v23, &v196);
            v1 = v21;

            *(v14 + 4) = v24;
            _os_log_impl(&dword_215819000, v7, v8, "Fallback provider: could not get network path for for %s.", v14, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v15);
            MEMORY[0x216075690](v15, -1, -1);
            MEMORY[0x216075690](v14, -1, -1);

            goto LABEL_27;
          }

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
          return MEMORY[0x282200938](v16);
        }

        sub_21583F14C(v10, &unk_27CA7DF80);
LABEL_27:
        v68 = 1;
LABEL_28:
        v192 = v68;
LABEL_29:

        v69 = v1[1];

        return v69(0, v192);
      }
    }

    v121 = snapshotSizeForSuggestedSize(v119, v105, v107);
    v123 = v122;
    swift_unknownObjectRelease();
    if (v121 == 1.79769313e308)
    {
      ++v116;
      if (v123 == 1.79769313e308)
      {
        continue;
      }
    }

    v124 = v193;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v124 = sub_215A391E4(0, *(v193 + 2) + 1, 1, v193);
    }

    v126 = *(v124 + 2);
    v125 = *(v124 + 3);
    v193 = v124;
    if (v126 >= v125 >> 1)
    {
      v193 = sub_215A391E4((v125 > 1), v126 + 1, 1, v124);
    }

    *(v193 + 2) = v126 + 1;
    v127 = &v193[16 * v126];
    *(v127 + 4) = v121;
    *(v127 + 5) = v123;
    v116 = v120;
  }

  v128 = *(v193 + 2);
  if (!v128)
  {
    v1 = v188;

    if (qword_2811A21D0 == -1)
    {
LABEL_68:
      v135 = v1[34];
      v136 = v1[21];
      v137 = sub_215A70000();
      __swift_project_value_buffer(v137, qword_2811A32B0);
      sub_215A07074(v136, v135, &unk_27CA7DF80);
      v41 = sub_215A6FFE0();
      v138 = sub_215A70800();
      if (os_log_type_enabled(v41, v138))
      {
        v140 = v1[33];
        v139 = v1[34];
        v141 = v1[23];
        v142 = swift_slowAlloc();
        v143 = swift_slowAlloc();
        v196 = v143;
        *v142 = 136315138;
        sub_215A07074(v139, v140, &unk_27CA7DF80);
        v16 = v185(v140, 1, v141);
        if (v16 == 1)
        {
          goto LABEL_114;
        }

        v194 = v1[50];
        v144 = v1[48];
        v186 = v1[47];
        v145 = v1[33];
        v146 = v1[34];
        v147 = v1[26];
        v148 = v1[24];
        v149 = v188[23];
        (*(v148 + 32))(v147, v145, v149);
        sub_215A263AC(&qword_2811A27F8, MEMORY[0x277CC95F0]);
        v150 = sub_215A70D60();
        v152 = v151;
        v153 = v149;
        v1 = v188;
        v182(v147, v153);
        sub_21583F14C(v146, &unk_27CA7DF80);
        v154 = sub_215A39474(v150, v152, &v196);

        *(v142 + 4) = v154;
        _os_log_impl(&dword_215819000, v41, v138, "Fallback provider: no available sizing provider for %s.", v142, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v143);
        MEMORY[0x216075690](v143, -1, -1);
        MEMORY[0x216075690](v142, -1, -1);

        v61 = *(v144 + 8);
        v62 = v194;
        goto LABEL_21;
      }

      v64 = v1[50];
      v65 = v1[47];
      v66 = v1[48];
      v67 = v1[34];
      goto LABEL_24;
    }

LABEL_107:
    swift_once();
    goto LABEL_68;
  }

  v129 = *(v193 + 4);
  v130 = *(v193 + 5);
  v131 = v128 - 1;
  if (v131)
  {
    v132 = (v193 + 56);
    v133 = *(v193 + 4);
    do
    {
      if (v133 < *(v132 - 1))
      {
        v129 = *(v132 - 1);
        v130 = *v132;
        v133 = v129;
      }

      v132 += 2;
      --v131;
    }

    while (v131);
  }

  if (v114 >> 62)
  {
    v134 = sub_215A70CD0();
  }

  else
  {
    v134 = *((v114 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v1 = v188;
  if (!v134)
  {
    v160 = *(v118 + 16);
    if (!v160)
    {

      v164 = 0;
      goto LABEL_95;
    }

    goto LABEL_83;
  }

  v196 = v118;
  sub_215A52C30(0, v134 & ~(v134 >> 63), 0);
  if (v134 < 0)
  {
    __break(1u);
    goto LABEL_107;
  }

  v155 = 0;
  v118 = v196;
  do
  {
    if (v117)
    {
      v156 = MEMORY[0x216073710](v155, v114);
    }

    else
    {
      v156 = *(v114 + 8 * v155 + 32);
      swift_unknownObjectRetain();
    }

    v157 = [v156 prefersTransparentBorderPadding];
    swift_unknownObjectRelease();
    v196 = v118;
    v159 = *(v118 + 16);
    v158 = *(v118 + 24);
    v160 = v159 + 1;
    if (v159 >= v158 >> 1)
    {
      sub_215A52C30((v158 > 1), v159 + 1, 1);
      v118 = v196;
    }

    ++v155;
    *(v118 + 16) = v160;
    *(v118 + v159 + 32) = v157;
    v1 = v188;
  }

  while (v134 != v155);
LABEL_83:
  LOBYTE(v161) = 0;
  v162 = (v118 + 32);
  v163 = v160 - 1;
  while ((v161 & 1) != 0)
  {
    if (!v163)
    {

      v164 = 2;
      goto LABEL_95;
    }

    LOBYTE(v161) = 1;
LABEL_85:
    ++v162;
    --v163;
  }

  v161 = *v162;
  if (v163)
  {
    goto LABEL_85;
  }

  if (v161)
  {
    v164 = 2;
  }

  else
  {
    v164 = 0;
  }

LABEL_95:
  v165 = v1[36];
  v166 = v1[23];
  sub_215A07074(v1[21], v165, &unk_27CA7DF80);
  v16 = v185(v165, 1, v166);
  if (v16 == 1)
  {
    goto LABEL_111;
  }

  v167 = v1[36];
  v168 = v1[23];
  v169 = sub_215A21A24(v167);
  v1[62] = v169;
  v182(v167, v168);
  if (!v169)
  {
    (*(v1[48] + 8))(v1[50], v1[47]);

    v68 = 2;
    goto LABEL_28;
  }

  v189 = v164;
  v170 = v1[35];
  v171 = v1[23];
  v172 = v1[21];
  v173 = *(v27 + v28);
  *(v27 + v28) = v169;
  v195 = v169;

  sub_215A07074(v172, v170, &unk_27CA7DF80);
  v16 = v185(v170, 1, v171);
  if (v16 == 1)
  {
    goto LABEL_113;
  }

  v174 = v1[35];
  v175 = v1[22];
  v176 = v1[23];

  v177 = objc_allocWithZone(TabSnapshotRequest);
  v178 = sub_215A6F940();
  v179 = [v177 initWithSize:v189 options:v178 identifier:{v129, v130}];
  v1[63] = v179;

  v182(v174, v176);
  v180 = *(v175 + OBJC_IVAR___FallbackTabSnapshotCacheProvider_generator);
  v1[2] = v1;
  v1[7] = v1 + 18;
  v1[3] = sub_215A25004;
  v181 = swift_continuation_init();
  v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7E710);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_215A255E4;
  v1[13] = &block_descriptor_61;
  v1[14] = v181;
  [v180 snapshotWithRequest:v179 contentProvider:v195 completion:v1 + 10];
  v16 = (v1 + 2);

  return MEMORY[0x282200938](v16);
}

uint64_t sub_215A25004()
{
  v1 = *(*v0 + 432);
  v2 = *(*v0 + 424);

  return MEMORY[0x2822009F8](sub_215A2510C, v2, v1);
}

uint64_t sub_215A2510C()
{
  v2 = v0[62];
  v1 = v0[63];
  v3 = v0[50];
  v4 = v0[47];
  v5 = v0[48];

  (*(v5 + 8))(v3, v4);
  v9 = v0[18];
  v8 = v0[19];

  v6 = v0[1];

  return v6(v9, v8);
}

uint64_t sub_215A255E4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v6 = *v5;
  v7 = *(*(*v5 + 64) + 40);
  *v7 = a2;
  v7[1] = a3;
  v8 = a2;

  return MEMORY[0x282200948](v6);
}

uint64_t sub_215A259A8(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7DF80);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7E0C0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v23 - v11;
  v13 = [v2 URLProvider];
  sub_215A07074(a1, v6, &unk_27CA7DF80);
  v14 = sub_215A6F960();
  v15 = *(v14 - 8);
  result = (*(v15 + 48))(v6, 1, v14);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v17 = sub_215A6F940();
    v18 = v13[2](v13, v17);

    if (v18)
    {
      sub_215A6F850();

      v19 = 0;
    }

    else
    {
      v19 = 1;
    }

    _Block_release(v13);
    v20 = sub_215A6F870();
    v21 = *(v20 - 8);
    (*(v21 + 56))(v10, v19, 1, v20);
    sub_215A26130(v10, v12, &qword_27CA7E0C0);
    (*(v15 + 8))(v6, v14);
    v22 = (*(v21 + 48))(v12, 1, v20) != 1;
    sub_21583F14C(v12, &qword_27CA7E0C0);
    return v22;
  }

  return result;
}

void sub_215A25C7C(void *a1, char a2)
{
  v3 = v2;
  v5 = OBJC_IVAR___FallbackTabSnapshotCacheProvider_contentProvider;
  v6 = *(v3 + OBJC_IVAR___FallbackTabSnapshotCacheProvider_contentProvider);
  if (v6)
  {
    v8 = [v6 webView];
    if (v8)
    {
      v9 = v8;
      sub_2159F7DA8(0, &unk_2811A2800);
      v10 = a1;
      v11 = sub_215A70A80();

      if (v11)
      {
        v12 = *(v3 + v5);
        if (v12)
        {
          v13 = v12;
          sub_215A20C68(a2 & 1);
        }
      }
    }
  }
}

uint64_t _s15ContentProviderCMa()
{
  result = qword_2811A27C0;
  if (!qword_2811A27C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_215A25DD4()
{
  result = sub_215A6F960();
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

uint64_t objectdestroyTm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7DF80) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();

  v5 = sub_215A6F960();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_215A25FD8(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7DF80) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_215A07214;

  return sub_215A22F4C(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_215A26130(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_215A26224(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_215A0763C;

  return sub_215A19B68(a1, v4);
}

uint64_t sub_215A262DC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_215A07214;

  return sub_215A19B68(a1, v4);
}

uint64_t sub_215A263AC(unint64_t *a1, void (*a2)(uint64_t))
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

Swift::Void __swiftcall NewTabGroupLibraryItemController.didSelectItem()()
{
  v1 = [v0 configuration];
  v2 = [v1 tabGroupProvider];

  if (v2)
  {
    [v2 createNewTabGroup];

    swift_unknownObjectRelease();
  }
}

uint64_t NewTabGroupLibraryItemController.hash.getter()
{
  v1 = [v0 accessibilityIdentifier];
  v2 = sub_215A70540();
  v4 = v3;

  v5 = MEMORY[0x216073090](v2, v4);

  return v5;
}

id NewTabGroupLibraryItemController.init(configuration:)(void *a1)
{
  v4.super_class = NewTabGroupLibraryItemController;
  v2 = objc_msgSendSuper2(&v4, sel_initWithConfiguration_, a1);

  return v2;
}

void _sSo32NewTabGroupLibraryItemControllerC14MobileSafariUIE30updateListContentConfigurationyySo06UIListlM0CF_0(void *a1)
{
  v2 = sub_215A6FA60();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_215A70500();
  v7 = [objc_opt_self() systemImageNamed_];

  [a1 setImage_];
  sub_215A6FA50();
  sub_215A6FA40();
  (*(v3 + 8))(v5, v2);
  v8 = sub_215A70500();

  [a1 setText_];

  v9 = [a1 textProperties];
  v10 = [objc_opt_self() tintColor];
  [v9 setColor_];
}

BOOL _sSo32NewTabGroupLibraryItemControllerC14MobileSafariUIE7isEqualySbypSgF_0(uint64_t a1)
{
  sub_21583FD1C(a1, v5);
  if (!v6)
  {
    sub_21583FDA0(v5);
    goto LABEL_5;
  }

  type metadata accessor for NewTabGroupLibraryItemController();
  if (!swift_dynamicCast())
  {
LABEL_5:
    v1 = 0;
    goto LABEL_6;
  }

  v1 = v4;
LABEL_6:
  v2 = v1 != 0;

  return v2;
}

unint64_t type metadata accessor for NewTabGroupLibraryItemController()
{
  result = qword_27CA7E780;
  if (!qword_27CA7E780)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CA7E780);
  }

  return result;
}

uint64_t sub_215A26B1C()
{
  v0 = sub_215A6FA60();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - v5;
  sub_215A6FA50();
  sub_215A6FA50();
  v7 = sub_215A6FA30();
  v9 = v8;
  v10 = *(v1 + 8);
  v10(v4, v0);
  result = (v10)(v6, v0);
  qword_2811A2830 = v7;
  *algn_2811A2838 = v9;
  return result;
}

void sub_215A26C7C()
{
  v0 = sub_215A70500();
  v1 = [objc_opt_self() systemImageNamed_];

  qword_2811A2840 = v1;
}

OpenNewDocumentMenuProvider __swiftcall OpenNewDocumentMenuProvider.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id sub_215A26DD0()
{
  result = [objc_opt_self() sharedApplication];
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v1 = result;
  result = [result tabGroupManager];
  if (!result)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v2 = result;
  v3 = [v1 lastActiveProfileIdentifier];
  if (!v3 || (v4 = v3, v5 = [v2 profileWithIdentifier_], v4, !v5))
  {
    v5 = [v2 defaultProfile];
  }

  return v5;
}