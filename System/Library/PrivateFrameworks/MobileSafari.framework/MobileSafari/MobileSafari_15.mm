uint64_t sub_18BA07F2C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5BD0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v13 - v3;
  v5 = *a1;
  v6 = *(a1 + 8);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = sub_18BA0671C();
    v13[1] = v5;
    v14 = v6;
    sub_18BC1FE08();

    v10 = sub_18BC1EDD8();
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(v4, 1, v10) == 1)
    {

      sub_18B988BAC(v4, &unk_1EA9D5BD0);
    }

    else
    {
      sub_18BC1EDC8();
      (*(v11 + 8))(v4, v10);
      if ((sub_18BA03E68() & 1) != 0 && v6 == 1)
      {
        v12 = [v5 isConfigurable];

        return v12;
      }
    }

    return 0;
  }

  return result;
}

void sub_18BA080EC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5CF0);
  v50 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v49 = &v43 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5CF8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v48 = &v43 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v43 - v9;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong + OBJC_IVAR___SFBrowsingAssistantCollection_delegate;
    v13 = Strong;
    v14 = swift_unknownObjectWeakLoadStrong();
    if (v14)
    {
      v44 = v0;
      v45 = v10;
      v46 = v14;
      v47 = v13;
      v43 = *(v12 + 8);
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA9D5D00);
      v15 = sub_18BC1FBB8();
      v16 = v15;
      v57 = *(v15 + 16);
      if (v57)
      {
        v17 = 0;
        v56 = v15 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
        v55 = v3 + 16;
        v51 = @"PageMenuSectionFavorites";
        v52 = v15;
        v53 = v3;
        v54 = (v3 + 8);
        while (v17 < *(v16 + 16))
        {
          (*(v3 + 16))(v5, v56 + *(v3 + 72) * v17, v2);
          sub_18BC1FF48();
          v19 = v58;
          if (v58)
          {
            v20 = v58;
            v21 = sub_18BC20BD8();
            v23 = v22;
            if (v21 == sub_18BC20BD8() && v23 == v24)
            {
              sub_18BA0FEF0(v19);

              v3 = v53;
LABEL_12:

              v25 = *(v3 + 32);
              v26 = v48;
              v25(v48, v5, v2);
              v25(v45, v26, v2);
              v27 = v49;
              sub_18BC1FF38();
              v28 = v44;
              v29 = sub_18BC1FE38();
              (*(v50 + 8))(v27, v28);
              v30 = 0;
              v31 = *(v29 + 16);
              v32 = MEMORY[0x1E69E7CC0];
LABEL_13:
              v33 = (v29 + 40 + 16 * v30);
              while (1)
              {
                if (v31 == v30)
                {

                  v39 = [objc_opt_self() safari_browserDefaults];
                  type metadata accessor for SFBrowsingAssistantMenuAction(0);
                  v40 = sub_18BC20D88();

                  [v39 browsingAssistant:v40 setFavoritedMenuActions:?];

                  ObjectType = swift_getObjectType();
                  v42 = v47;
                  (*(v43 + 8))(v47, ObjectType);

                  swift_unknownObjectRelease();
                  (*v54)(v45, v2);
                  return;
                }

                if (v30 >= *(v29 + 16))
                {
                  break;
                }

                v34 = v33 + 16;
                ++v30;
                v35 = *v33;
                v33 += 16;
                if (v35 == 1)
                {
                  v36 = [*(v34 - 3) menuAction];
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v32 = sub_18B9B5EC4(0, v32[2] + 1, 1, v32);
                  }

                  v38 = v32[2];
                  v37 = v32[3];
                  if (v38 >= v37 >> 1)
                  {
                    v32 = sub_18B9B5EC4((v37 > 1), v38 + 1, 1, v32);
                  }

                  v32[2] = v38 + 1;
                  v32[v38 + 4] = v36;
                  goto LABEL_13;
                }
              }

              __break(1u);
              break;
            }

            v18 = sub_18BC21FD8();
            sub_18BA0FEF0(v19);

            v16 = v52;
            v3 = v53;
            if (v18)
            {
              goto LABEL_12;
            }
          }

          ++v17;
          (*v54)(v5, v2);
          if (v57 == v17)
          {
            goto LABEL_22;
          }
        }

        __break(1u);
      }

      else
      {
LABEL_22:
        swift_unknownObjectRelease();
      }
    }

    else
    {
    }
  }
}

void sub_18BA08698()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69DC810]) init];
  v2 = OBJC_IVAR___SFBrowsingAssistantCollection_isPresentedInActionsSheet;
  if (v0[OBJC_IVAR___SFBrowsingAssistantCollection_isPresentedInActionsSheet] & 1) != 0 || (v0[OBJC_IVAR___SFBrowsingAssistantCollection_isShowingOnStartPage])
  {
    goto LABEL_23;
  }

  v3 = objc_opt_self();
  v4 = [v3 fractionalWidthDimension_];
  if (qword_1EA9D2190 != -1)
  {
    swift_once();
  }

  v5 = *&qword_1EA9F79B0;
  v6 = [v3 absoluteDimension_];
  v7 = [objc_opt_self() sizeWithWidthDimension:v4 heightDimension:v6];

  v8 = [v0 traitCollection];
  v9 = [v8 _presentationSemanticContext];

  if (v9 == 3)
  {
    v10 = 1;
  }

  else if ([v0 _isInPopoverPresentation])
  {
    v10 = 1;
  }

  else
  {
    v10 = 5;
  }

  v11 = [v0 traitCollection];
  v12 = [v11 _presentationSemanticContext];

  if (v12 == 3 || [v0 _isInPopoverPresentation])
  {
    if (v0[OBJC_IVAR___SFBrowsingAssistantCollection_metrics + 96])
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v13 = -*&v0[OBJC_IVAR___SFBrowsingAssistantCollection_metrics + 16];
  }

  else
  {
    if (v0[OBJC_IVAR___SFBrowsingAssistantCollection_metrics + 96])
    {
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v13 = *&v0[OBJC_IVAR___SFBrowsingAssistantCollection_metrics + 16];
  }

  v14 = v7;
  v15 = sub_18BC20B98();
  v16 = objc_opt_self();
  v17 = [v16 boundarySupplementaryItemWithLayoutSize:v14 elementKind:v15 alignment:v10 absoluteOffset:{0.0, v13}];

  [v17 setZIndex_];
  v18 = &v0[OBJC_IVAR___SFBrowsingAssistantCollection_metrics];
  if (v0[OBJC_IVAR___SFBrowsingAssistantCollection_metrics + 96])
  {
    __break(1u);
    goto LABEL_38;
  }

  [v17 setContentInsets_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_18BC3E3E0;
  *(v19 + 32) = v17;
  sub_18B7B0AC0(0, &qword_1EA9D5BF0);
  v20 = v17;
  v21 = sub_18BC20D88();

  [v1 setBoundarySupplementaryItems_];

  if (![objc_opt_self() isSolariumEnabled] || v0[v2] == 1 || v0[OBJC_IVAR___SFBrowsingAssistantCollection_isReaderModeAvailable] != 1)
  {

LABEL_23:
    v25 = swift_allocObject();
    swift_unknownObjectUnownedInit();
    v26 = objc_allocWithZone(type metadata accessor for CompositionalLayout());
    v38[4] = sub_18BA10F9C;
    v38[5] = v25;
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 1107296256;
    v38[2] = sub_18B9B53C0;
    v38[3] = &block_descriptor_121;
    v27 = _Block_copy(v38);
    sub_18BC1E1A8();
    [v26 initWithSectionProvider:v27 configuration:v1];

    _Block_release(v27);

    return;
  }

  v22 = [v0 traitCollection];
  v23 = [v22 _presentationSemanticContext];

  if (v23 == 3)
  {
    v24 = 1;
  }

  else if ([v0 _isInPopoverPresentation])
  {
    v24 = 1;
  }

  else
  {
    v24 = 5;
  }

  v28 = [v0 traitCollection];
  v29 = [v28 _presentationSemanticContext];

  if (v29 == 3 || [v0 _isInPopoverPresentation])
  {
    if (v18[12])
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v30 = v18[7] * -2.0 - v5;
    goto LABEL_33;
  }

  if ((v18[12] & 1) == 0)
  {
    v30 = v5 + v18[7] + v18[7];
LABEL_33:
    v31 = v14;
    v32 = sub_18BC20B98();
    v33 = [v16 boundarySupplementaryItemWithLayoutSize:v31 elementKind:v32 alignment:v24 absoluteOffset:{0.0, v30}];

    [v33 setZIndex_];
    [v33 setPinToVisibleBounds_];
    if ((v18[12] & 1) == 0)
    {
      [v33 setContentInsets_];
      v34 = v33;
      v35 = [v1 boundarySupplementaryItems];
      v36 = sub_18BC20D98();

      MEMORY[0x18CFFC270]();
      if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_18BC20DD8();
      }

      sub_18BC20E18();
      v37 = sub_18BC20D88();

      [v1 setBoundarySupplementaryItems_];

      goto LABEL_23;
    }

    goto LABEL_40;
  }

LABEL_42:
  __break(1u);
}

void sub_18BA08D68(char *a1, uint64_t a2)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v5 = sub_18BA0671C();

  sub_18BC1FD38();
  if (!v23)
  {
    v6 = swift_unknownObjectUnownedLoadStrong();
    v7 = sub_18BA10C40();
    goto LABEL_6;
  }

  if (v23 != 1)
  {
    v6 = swift_unknownObjectUnownedLoadStrong();
    v7 = sub_18BA08F3C(a2, v24, v25);
LABEL_6:
    v8 = v7;

    v9 = swift_unknownObjectUnownedLoadStrong();
    v10 = *&v9[OBJC_IVAR___SFBrowsingAssistantCollection_collectionView];
    v11 = v10;
    v12 = v8;

    if (v10)
    {
      v13 = [v11 numberOfSections];

      v14 = __OFSUB__(v13, 1);
      v15 = v13 - 1;
      if (!v14)
      {
        v16 = swift_unknownObjectUnownedLoadStrong();
        v17 = *&v16[OBJC_IVAR___SFBrowsingAssistantCollection_metrics + 32];
        v18 = *&v16[OBJC_IVAR___SFBrowsingAssistantCollection_metrics + 48];
        v19 = v16[OBJC_IVAR___SFBrowsingAssistantCollection_metrics + 96];

        if ((v19 & 1) == 0)
        {
          v20 = 0.0;
          if (v15 == a1 || (v21 = swift_unknownObjectUnownedLoadStrong(), v20 = *&v21[OBJC_IVAR___SFBrowsingAssistantCollection_metrics + 56], v22 = v21[OBJC_IVAR___SFBrowsingAssistantCollection_metrics + 96], v21, (v22 & 1) == 0))
          {
            [v12 setContentInsets_];
            sub_18BA0FEE0(v23);

            return;
          }

          goto LABEL_15;
        }

LABEL_14:
        __break(1u);
LABEL_15:
        __break(1u);
        return;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_14;
  }
}

uint64_t sub_18BA08F3C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v23 = a2;
  v22[1] = a1;
  v4 = sub_18BC1FEB8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_18BC1FEA8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_18BC1FF18();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 104))(v11, *MEMORY[0x1E69DC238], v8, v14);
  sub_18BC1FEC8();
  if (qword_1EA9D2188 != -1)
  {
    swift_once();
  }

  sub_18BC1FEE8();
  v17 = [objc_opt_self() clearColor];
  sub_18BC1FEF8();
  v18 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v18 = v23 & 0xFFFFFFFFFFFFLL;
  }

  if (v18)
  {
    v19 = MEMORY[0x1E69DC280];
  }

  else
  {
    v19 = MEMORY[0x1E69DC290];
  }

  (*(v5 + 104))(v7, *v19, v4);
  result = sub_18BC1FED8();
  if (*(v24 + OBJC_IVAR___SFBrowsingAssistantCollection_metrics + 96))
  {
    __break(1u);
  }

  else
  {
    sub_18BC1FF08();
    sub_18B7B0AC0(0, &unk_1EA9D7FE0);
    v21 = sub_18BC21498();
    (*(v13 + 8))(v16, v12);
    return v21;
  }

  return result;
}

void sub_18BA09250()
{
  ObjectType = swift_getObjectType();
  v2 = sub_18BC1EE48();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BrowsingAssistant();
  v45.receiver = v0;
  v45.super_class = v6;
  objc_msgSendSuper2(&v45, sel_viewDidLoad);
  sub_18BA0975C();
  v7 = [v0 view];
  if (!v7)
  {
    __break(1u);
    goto LABEL_20;
  }

  v8 = v7;
  [v7 frame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  sub_18BA08698();
  v18 = v17;
  v19 = [objc_allocWithZone(MEMORY[0x1E69DC7F0]) initWithFrame:v17 collectionViewLayout:{v10, v12, v14, v16}];

  v20 = OBJC_IVAR___SFBrowsingAssistantCollection_collectionView;
  v21 = *&v0[OBJC_IVAR___SFBrowsingAssistantCollection_collectionView];
  *&v0[OBJC_IVAR___SFBrowsingAssistantCollection_collectionView] = v19;
  v22 = v19;

  if (!v22)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  [v22 setAllowsMultipleSelectionDuringEditing_];

  v23 = *&v0[v20];
  if (!v23)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  [v23 setAlwaysBounceVertical_];
  v24 = *&v0[v20];
  if (!v24)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v44[1] = ObjectType;
  [v24 setAutoresizingMask_];
  v25 = *&v0[v20];
  if (!v25)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v26 = OBJC_IVAR___SFBrowsingAssistantCollection_isPresentedInActionsSheet;
  v27 = v0[OBJC_IVAR___SFBrowsingAssistantCollection_isPresentedInActionsSheet];
  v28 = objc_opt_self();
  v29 = v25;
  v30 = &selRef_systemGroupedBackgroundColor;
  if (!v27)
  {
    v30 = &selRef_clearColor;
  }

  v31 = [v28 *v30];
  [v29 setBackgroundColor_];

  if ([objc_opt_self() isSolariumEnabled])
  {
    v32 = [v0 view];
    if (!v32)
    {
LABEL_29:
      __break(1u);
      return;
    }

    v33 = v32;
    v34 = [objc_opt_self() clearColor];
    [v33 setBackgroundColor_];
  }

  v35 = *&v0[v20];
  if (!v35)
  {
    goto LABEL_24;
  }

  if (v0[OBJC_IVAR___SFBrowsingAssistantCollection_metrics + 96])
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  [v35 setContentInset_];
  v36 = *&v0[v20];
  if (!v36)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  [v36 setDelegate_];
  v37 = [v0 view];
  if (!v37)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (!*&v0[v20])
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v38 = v37;
  [v37 addSubview_];

  sub_18BA098E8();
  if (v0[v26] == 1)
  {
    v39 = [v0 navigationItem];
    sub_18BC1EE38();
    sub_18BC1EE28();
    (*(v3 + 8))(v5, v2);
    v40 = sub_18BC20B98();

    [v39 setTitle_];

    sub_18BA09D28();
  }

  sub_18BA0B840(0, 255, CGRectMake, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D51E0);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_18BC3E410;
  v42 = sub_18BC1FE18();
  v43 = MEMORY[0x1E69DC230];
  *(v41 + 32) = v42;
  *(v41 + 40) = v43;
  sub_18BC212D8();
  swift_unknownObjectRelease();
}

void sub_18BA0975C()
{
  v1 = [v0 traitCollection];
  v2 = [v1 _presentationSemanticContext];

  if (v2 == 3)
  {
    v3 = 1;
  }

  else
  {
    v3 = [v0 _isInPopoverPresentation];
  }

  sub_18B9F0118(v3, v0[OBJC_IVAR___SFBrowsingAssistantCollection_isPresentedInActionsSheet], v14);
  v4 = &v0[OBJC_IVAR___SFBrowsingAssistantCollection_metrics];
  v5 = v14[3];
  *(v4 + 2) = v14[2];
  *(v4 + 3) = v5;
  v6 = v14[5];
  *(v4 + 4) = v14[4];
  *(v4 + 5) = v6;
  v7 = v14[1];
  *v4 = v14[0];
  *(v4 + 1) = v7;
  v4[96] = 0;
  v8 = [v0 view];
  if (v8)
  {
    v9 = v8;
    v10 = [v0 traitCollection];
    v11 = [v10 _presentationSemanticContext];

    v12 = &selRef_clearColor;
    if (v11 != 3 && ![v0 _isInPopoverPresentation])
    {
      v12 = &selRef_systemGroupedBackgroundColor;
    }

    v13 = [objc_opt_self() *v12];
    [v9 setBackgroundColor_];
  }

  else
  {
    __break(1u);
  }
}

void sub_18BA098E8()
{
  v0 = sub_18BC1F688();
  MEMORY[0x1EEE9AC00](v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18BC44480;
  *(inited + 32) = sub_18BA0A284();
  *(inited + 40) = sub_18BA0A2A4();
  *(inited + 48) = sub_18BA0A2C4();
  *(inited + 56) = sub_18BA0A2E4();
  *(inited + 64) = sub_18BA0A304();
  *(inited + 72) = sub_18BA0A324();
  *(inited + 80) = sub_18BA0A344();
  v2 = 0;
  *(inited + 88) = sub_18BA0A3DC();
  while (1)
  {
    if ((inited & 0xC000000000000001) != 0)
    {
      v3 = MEMORY[0x18CFFD010](v2, inited);
      goto LABEL_5;
    }

    if (v2 >= *((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    v3 = *(inited + 8 * v2 + 32);
LABEL_5:
    v4 = v3;
    ++v2;
    sub_18BC21528();
    sub_18BC1F5A8();
    sub_18BC21538();
    [v4 updateTraitsIfNeeded];

    if (v2 == 8)
    {
      swift_setDeallocating();
      swift_arrayDestroy();
      return;
    }
  }

  __break(1u);
}

void sub_18BA09AA4()
{
  v18.receiver = v0;
  v18.super_class = type metadata accessor for BrowsingAssistant();
  objc_msgSendSuper2(&v18, sel_viewWillLayoutSubviews);
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_8;
  }

  v2 = v1;
  [v1 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v19.origin.x = v4;
  v19.origin.y = v6;
  v19.size.width = v8;
  v19.size.height = v10;
  Height = CGRectGetHeight(v19);
  v12 = OBJC_IVAR___SFBrowsingAssistantCollection_collectionView;
  v13 = *&v0[OBJC_IVAR___SFBrowsingAssistantCollection_collectionView];
  if (!v13)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v14 = Height;
  [v13 _visibleRectEdgeInsets];
  if (v14 <= -v15)
  {
    return;
  }

  v16 = *&v0[v12];
  if (!v16)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v17 = v16;
  UIEdgeInsetsMakeWithEdges();
  [v17 _setVisibleRectEdgeInsets_];
}

void sub_18BA09BFC(char a1, char a2)
{
  v6.receiver = v2;
  v6.super_class = type metadata accessor for BrowsingAssistant();
  objc_msgSendSuper2(&v6, sel_setEditing_animated_, a1 & 1, a2 & 1);
  if ((a1 & 1) == 0)
  {
    sub_18BA0B840(0, 255, CGRectMake, 0);
  }

  v5 = *&v2[OBJC_IVAR___SFBrowsingAssistantCollection_collectionView];
  if (v5)
  {
    [v5 setEditing_];
    sub_18BA09D28();
    if (a1)
    {
      sub_18BA0B840(0, 255, CGRectMake, 0);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_18BA09D28()
{
  if (*(v0 + OBJC_IVAR___SFBrowsingAssistantCollection_isPresentedInActionsSheet) == 1)
  {
    v1 = v0;
    v2 = [v0 isEditing];
    sub_18B7B0AC0(0, &unk_1EA9D35A0);
    sub_18B7B0AC0(0, &qword_1EA9D52D0);
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    if (v2)
    {
      sub_18BC215E8();
      v4 = sub_18BC21268();
      v5 = [v0 navigationItem];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_18BC3E3E0;
      v7 = v4;
      *(v6 + 32) = [v7 creatingFixedGroup];
      sub_18B7B0AC0(0, &unk_1EA9D35C0);
      v8 = sub_18BC20D88();

      [v5 setLeadingItemGroups_];

      v9 = [v1 navigationItem];
      v19 = sub_18BC20D88();
      [v9 setTrailingItemGroups_];
    }

    else
    {
      v17 = v3;
      sub_18BC215E8();
      v10 = sub_18BC21268();
      v11 = [v0 navigationItem];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_18BC3E3E0;
      v13 = v10;
      *(v12 + 32) = [v13 creatingFixedGroup];
      sub_18B7B0AC0(0, &unk_1EA9D35C0);
      v14 = sub_18BC20D88();

      [v11 setLeadingItemGroups_];

      v7 = [v1 navigationItem];
      v15 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v18 = v15;
      sub_18BC215E8();
      v9 = sub_18BC21268();
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_18BC3E3E0;
      *(v16 + 32) = [v9 creatingFixedGroup];
      v19 = sub_18BC20D88();

      [v7 setTrailingItemGroups_];
    }
  }
}

void sub_18BA0A1B8(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = a3 & 1;
    v6 = Strong;
    [Strong setEditing:v5 animated:1];
  }
}

void sub_18BA0A220()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }
}

id sub_18BA0A364(uint64_t *a1, void (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    a2(0);
    v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_18BA0A3DC()
{
  v1 = OBJC_IVAR___SFBrowsingAssistantCollection____lazy_storage___sizingHeader;
  v2 = *(v0 + OBJC_IVAR___SFBrowsingAssistantCollection____lazy_storage___sizingHeader);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___SFBrowsingAssistantCollection____lazy_storage___sizingHeader);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DC868]) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_18BA0A450(_BYTE *a1, uint64_t a2)
{
  v2 = &a1[OBJC_IVAR___SFBrowsingAssistantCollection_metrics];
  if (a1[OBJC_IVAR___SFBrowsingAssistantCollection_metrics + 96])
  {
    goto LABEL_21;
  }

  v5 = *v2;
  v6 = *&a1[OBJC_IVAR___SFBrowsingAssistantCollection_globalHeaderFooter];
  if (v6 && (v7 = *(v6 + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant16MainHeaderFooter_stepper)) != 0 && [v7 isFocusedInPageMenu] && ((v8 = objc_msgSend(a1, sel_traitCollection), v9 = objc_msgSend(v8, sel__presentationSemanticContext), v8, v9 == 3) || objc_msgSend(a1, sel__isInPopoverPresentation)))
  {
    if (v2[12])
    {
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }

    if (qword_1EA9D2190 != -1)
    {
      swift_once();
      if (v2[12])
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }
    }

    if ([objc_opt_self() isSolariumEnabled] && (a1[OBJC_IVAR___SFBrowsingAssistantCollection_isPresentedInActionsSheet] & 1) == 0 && (a1[OBJC_IVAR___SFBrowsingAssistantCollection_isShowingOnStartPage] & 1) == 0 && a1[OBJC_IVAR___SFBrowsingAssistantCollection_isReaderModeAvailable] == 1 && (v2[12] & 1) != 0)
    {
      goto LABEL_23;
    }
  }

  else
  {
    sub_18BA0A654(a2, v5);
  }

  v10 = [a1 popoverPresentationController];
  if (v10)
  {
    v11 = v10;
    [v10 _shouldHideArrow];
  }
}

void sub_18BA0A654(uint64_t a1, double a2)
{
  v3 = v2;
  v120 = a1;
  v111 = sub_18BC1FA08();
  v104 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v112 = &v103 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v2 + OBJC_IVAR___SFBrowsingAssistantCollection_metrics;
  if (*(v2 + OBJC_IVAR___SFBrowsingAssistantCollection_metrics + 96))
  {
LABEL_102:
    __break(1u);
    goto LABEL_103;
  }

  v7 = *(v6 + 48);
  v8 = *(v6 + 32);
  v9 = *(v6 + 64);
  v10 = OBJC_IVAR___SFBrowsingAssistantCollection_isPresentedInActionsSheet;
  if ((*(v2 + OBJC_IVAR___SFBrowsingAssistantCollection_isPresentedInActionsSheet) & 1) == 0 && (*(v2 + OBJC_IVAR___SFBrowsingAssistantCollection_isShowingOnStartPage) & 1) == 0)
  {
    if (qword_1EA9D2190 != -1)
    {
      goto LABEL_95;
    }

LABEL_5:
    v9 = v9 + *&qword_1EA9F79B0 + *(v6 + 16);
  }

  if ([objc_opt_self() isSolariumEnabled] && (*(v10 + v3) & 1) == 0 && (*(v3 + OBJC_IVAR___SFBrowsingAssistantCollection_isShowingOnStartPage) & 1) == 0 && *(v3 + OBJC_IVAR___SFBrowsingAssistantCollection_isReaderModeAvailable) == 1)
  {
    if (qword_1EA9D2190 != -1)
    {
      goto LABEL_98;
    }

    if ((*(v6 + 96) & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

LABEL_13:
  sub_18BC1F9E8();
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DA010);
  v11 = sub_18BC1FB18();
  v10 = v11;
  v118 = *(v11 + 16);
  if (v118)
  {
    v12 = 0;
    v116 = 0;
    a2 = a2 - v8 - v7;
    v110 = OBJC_IVAR___SFBrowsingAssistantCollection____lazy_storage___sizingReaderOptionsCardCell;
    v109 = OBJC_IVAR___SFBrowsingAssistantCollection____lazy_storage___sizingReaderCardCell;
    v117 = v11 + 32;
    v108 = (v104 + 16);
    v107 = OBJC_IVAR___SFBrowsingAssistantCollection____lazy_storage___sizingHeader;
    v121 = OBJC_IVAR___SFBrowsingAssistantCollection____lazy_storage___sizingSwitchCell;
    v122 = v6;
    v124 = OBJC_IVAR___SFBrowsingAssistantCollection____lazy_storage___sizingPopUpCell;
    v129 = OBJC_IVAR___SFBrowsingAssistantCollection____lazy_storage___sizingListCell;
    v7 = *(MEMORY[0x1E69DE090] + 8);
    v13 = &selRef_performSearchUsingQuery_;
    v115 = v11;
    v128 = v3;
    while (1)
    {
      if (v12 >= v10[2])
      {
        goto LABEL_94;
      }

      v14 = v117 + 24 * v12;
      v15 = *v14;
      v16 = *(v14 + 8);
      v17 = *(v14 + 16);
      v126 = v17;
      v127 = v16;
      if (!v15)
      {
        break;
      }

      v18 = HIBYTE(v17) & 0xF;
      if ((v17 & 0x2000000000000000) == 0)
      {
        v18 = v16 & 0xFFFFFFFFFFFFLL;
      }

      if (v18)
      {
        sub_18BC1E3F8();
        sub_18BA0FEA0(v15);
        v19 = v112;
        sub_18BC1F9B8();
        v20 = sub_18BA0A3DC();
        v21 = v111;
        v133 = v111;
        v134 = MEMORY[0x1E69DC110];
        boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v130);
        (*v108)(boxed_opaque_existential_0Tm, v19, v21);
        MEMORY[0x18CFFC900](&v130);

        LODWORD(v23) = 1148846080;
        LODWORD(v24) = 1112014848;
        [*(v3 + v107) systemLayoutSizeFittingSize:a2 withHorizontalFittingPriority:v7 verticalFittingPriority:{v23, v24}];
        if (*(v122 + 96))
        {
          goto LABEL_101;
        }

        v9 = v9 + v25 + *(v122 + 8);
      }

      else
      {
        v65 = v15;
        sub_18BC1E3F8();
      }

      v125 = v12;
      v130 = v15;
      v131 = v16;
      v132 = v17;
      v66 = sub_18BC1FAC8();
      v67 = *(v66 + 16);
      if (v67)
      {
        v68 = (v66 + 40);
        while (1)
        {
          v69 = *(v68 - 1);
          v70 = *v68;
          if (v70 != 2)
          {
            if (v70 == 1)
            {
              swift_unknownObjectRetain();
              v71 = sub_18BA0A284();
              sub_18BA10500(v71, v69);

              v72 = *(v3 + v129);
              LODWORD(v73) = 1148846080;
              LODWORD(v74) = 1112014848;
              [v72 systemLayoutSizeFittingSize:a2 withHorizontalFittingPriority:v7 verticalFittingPriority:{v73, v74}];
              v76 = v75;
              sub_18B9B8894(v69, 1);

              v9 = v9 + v76;
            }

            goto LABEL_65;
          }

          if (![swift_unknownObjectRetain() v13[7]])
          {
            break;
          }

          if ([v69 v13[7]] == 1)
          {
            v77 = sub_18BA0A2C4();
            v78 = [v69 displayName];
            v79 = sub_18BC20BD8();
            v81 = v80;

            v82 = &v77[OBJC_IVAR____SFBrowsingAssistantSwitchCell_title];
            v83 = *&v77[OBJC_IVAR____SFBrowsingAssistantSwitchCell_title];
            v84 = *&v77[OBJC_IVAR____SFBrowsingAssistantSwitchCell_title + 8];
            *v82 = v79;
            v82[1] = v81;
            if (!v84 || (v79 == v83 ? (v85 = v84 == v81) : (v85 = 0), !v85 && (sub_18BC21FD8() & 1) == 0))
            {
              [v77 setNeedsUpdateConfiguration];
            }

            v86 = [v69 BOOLValue];
            [*&v77[OBJC_IVAR____SFBrowsingAssistantSwitchCell_switch] setOn_];

            v89 = v121;
LABEL_87:
            LODWORD(v87) = 1148846080;
            LODWORD(v88) = 1112014848;
            [*(v3 + v89) systemLayoutSizeFittingSize:a2 withHorizontalFittingPriority:v7 verticalFittingPriority:{v87, v88}];
            v102 = v101;
            sub_18B9B8894(v69, 2);
            v9 = v9 + v102;
            v13 = &selRef_performSearchUsingQuery_;
            goto LABEL_65;
          }

          sub_18B9B8894(v69, 2);
LABEL_65:
          v68 += 16;
          if (!--v67)
          {
            goto LABEL_88;
          }
        }

        v90 = sub_18BA0A2A4();
        v91 = [v69 displayName];
        v92 = sub_18BC20BD8();
        v94 = v93;

        v95 = &v90[OBJC_IVAR____SFBrowsingAssistantPopUpCell_title];
        v96 = *&v90[OBJC_IVAR____SFBrowsingAssistantPopUpCell_title];
        v97 = *&v90[OBJC_IVAR____SFBrowsingAssistantPopUpCell_title + 8];
        *v95 = v92;
        v95[1] = v94;
        if (!v97 || (v92 == v96 ? (v98 = v97 == v94) : (v98 = 0), !v98 && (sub_18BC21FD8() & 1) == 0))
        {
          [v90 setNeedsUpdateConfiguration];
        }

        v99 = [v69 actions];
        sub_18B7B0AC0(0, &qword_1EA9D52D0);
        v100 = sub_18BC20D98();

        *&v90[OBJC_IVAR____SFBrowsingAssistantPopUpCell_actions] = v100;

        sub_18BB80120();

        v89 = v124;
        goto LABEL_87;
      }

LABEL_88:

      v6 = v122;
      if (*(v122 + 96))
      {
        goto LABEL_100;
      }

      v8 = *(v122 + 56);
      sub_18BA0FEF0(v15);
      v9 = v9 + v8;
      v10 = v115;
      v12 = v125;
LABEL_16:
      if (++v12 == v118)
      {
        goto LABEL_91;
      }
    }

    v130 = 0;
    v131 = v16;
    v132 = v17;
    v26 = sub_18BC1FAC8();
    v27 = v26;
    v3 = *(v26 + 16);
    if (!v3)
    {

      v3 = v128;
      goto LABEL_16;
    }

    v125 = v12;
    v28 = 0;
    v29 = (v26 + 40);
    while (1)
    {
      if (v28 >= *(v27 + 16))
      {
        __break(1u);
LABEL_94:
        __break(1u);
LABEL_95:
        swift_once();
        if ((*(v6 + 96) & 1) == 0)
        {
          goto LABEL_5;
        }

        __break(1u);
LABEL_97:
        __break(1u);
LABEL_98:
        swift_once();
        if (*(v6 + 96))
        {
          goto LABEL_99;
        }

LABEL_12:
        v9 = v9 + *&qword_1EA9F79B0 + *(v6 + 56);
        goto LABEL_13;
      }

      if (!*v29)
      {
        break;
      }

LABEL_30:
      ++v28;
      v29 += 16;
      if (v3 == v28)
      {

        sub_18BA0FEF0(0);
        v3 = v128;
        v10 = v115;
        v12 = v125;
        v13 = &selRef_performSearchUsingQuery_;
        goto LABEL_16;
      }
    }

    v35 = *(v29 - 1);
    v36 = v35;
    v37 = [v36 type];
    if (v37 <= 1)
    {
      if (v37)
      {
        if (v37 != 1)
        {
          goto LABEL_28;
        }

        v47 = [v36 customBodyView];
        if (!v47)
        {
          v8 = 0.0;
          goto LABEL_48;
        }

        LODWORD(v48) = 1148846080;
        LODWORD(v49) = 1112014848;
        v10 = v47;
        [v47 systemLayoutSizeFittingSize:a2 withHorizontalFittingPriority:v7 verticalFittingPriority:{v48, v49}];
LABEL_47:
        v8 = v50;

LABEL_48:
        v9 = v9 + v8;
        goto LABEL_28;
      }

      v51 = sub_18BA0A2E4();
    }

    else
    {
      if (v37 != 2)
      {
        if (v37 == 3)
        {
          v30 = v128;
          v10 = sub_18BA0A324();
          sub_18BA10794(v10, v36);

          v33 = *(v30 + v109);
LABEL_27:
          LODWORD(v31) = 1148846080;
          LODWORD(v32) = 1112014848;
          [v33 systemLayoutSizeFittingSize:a2 withHorizontalFittingPriority:v7 verticalFittingPriority:{v31, v32}];
          v9 = v9 + v34;
LABEL_28:
          if (*(v6 + 96))
          {
            goto LABEL_97;
          }

          v8 = *(v6 + 56);
          sub_18B9B8894(v35, 0);
          v9 = v9 + v8;
          goto LABEL_30;
        }

        if (v37 != 4)
        {
          goto LABEL_28;
        }

        v38 = sub_18BA0A344();
        v39 = [v36 readerContext];
        *&v38[OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant21ReaderOptionsCardCell_readerContext] = v39;
        swift_unknownObjectRetain();
        swift_unknownObjectRelease();
        if (!v39)
        {
LABEL_60:
          sub_18BBAEA40();
          swift_unknownObjectRelease();
          v61 = [v36 primaryAction];
          v62 = *&v38[OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant21ReaderOptionsCardCell_hideReaderAction];
          *&v38[OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant21ReaderOptionsCardCell_hideReaderAction] = v61;

          v63 = [v36 secondaryAction];
          v10 = *&v38[OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant21ReaderOptionsCardCell_listenToPageAction];
          *&v38[OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant21ReaderOptionsCardCell_listenToPageAction] = v63;
          v64 = v63;
          sub_18BBAFE90(v10);

          v33 = *(v128 + v110);
          goto LABEL_27;
        }

        v40 = *&v38[OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant21ReaderOptionsCardCell_themePicker];
        v41 = [swift_unknownObjectRetain() configurationManager];
        v42 = v39;
        v43 = v41;
        v114 = v42;
        v44 = [v41 themeForAppearance_];

        v45 = v40;
        v46 = *(v40 + OBJC_IVAR____TtC12MobileSafari26SFReaderThemePickerControl__clientIsChangingSelection);
        v123 = v40;
        v113 = OBJC_IVAR____TtC12MobileSafari26SFReaderThemePickerControl__clientIsChangingSelection;
        if (v46 == 1)
        {
          *(v40 + OBJC_IVAR____TtC12MobileSafari26SFReaderThemePickerControl__clientIsChangingSelection) = 1;
        }

        else
        {
          KeyPath = swift_getKeyPath();
          v105 = &v103;
          MEMORY[0x1EEE9AC00](KeyPath);
          v106 = v44;
          *(&v103 - 2) = v40;
          *(&v103 - 8) = 1;
          v130 = v123;
          sub_18BA11174();
          v55 = v116;
          sub_18BC1EE68();
          v45 = v123;
          v116 = v55;
          v44 = v106;
        }

        if (*(v45 + OBJC_IVAR____TtC12MobileSafari26SFReaderThemePickerControl___selectedTheme) == v44)
        {
          swift_getKeyPath();
          v130 = v123;
          sub_18BA11174();
          sub_18BC1EE78();
          v56 = v123;

          v57 = v113;
          if (*(v56 + v113))
          {
            goto LABEL_57;
          }

          [v56 sendActionsForControlEvents_];
        }

        else
        {
          v58 = swift_getKeyPath();
          v106 = &v103;
          MEMORY[0x1EEE9AC00](v58);
          *(&v103 - 2) = v45;
          *(&v103 - 1) = v44;
          v130 = v123;
          sub_18BA11174();
          v59 = v116;
          sub_18BC1EE68();
          v56 = v123;
          v116 = v59;

          v57 = v113;
        }

        if (*(v56 + v57) != 1)
        {
          swift_unknownObjectRelease();
          *(v56 + v57) = 0;
          goto LABEL_59;
        }

LABEL_57:
        v113 = swift_getKeyPath();
        v123 = &v103;
        MEMORY[0x1EEE9AC00](v113);
        *(&v103 - 2) = v56;
        *(&v103 - 8) = 0;
        v130 = v56;
        sub_18BA11174();
        v60 = v116;
        sub_18BC1EE68();
        v116 = v60;

        swift_unknownObjectRelease();
LABEL_59:
        v6 = v122;
        goto LABEL_60;
      }

      v51 = sub_18BA0A304();
    }

    v10 = v51;
    LODWORD(v52) = 1148846080;
    LODWORD(v53) = 1112014848;
    [v51 systemLayoutSizeFittingSize:a2 withHorizontalFittingPriority:v7 verticalFittingPriority:{v52, v53}];
    goto LABEL_47;
  }

LABEL_91:

  if ((*(v6 + 96) & 1) == 0)
  {
    (*(v104 + 8))(v112, v111);
    return;
  }

LABEL_103:
  __break(1u);
}

void sub_18BA0B45C(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DA010);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v40 - v6;
  v8 = *&v1[OBJC_IVAR___SFBrowsingAssistantCollection_globalHeaderFooter];
  if (v8)
  {
    v9 = *(v8 + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant16MainHeaderFooter_stepper);
    if (v9)
    {
      v10 = v5;
      v41 = v9;
      if ([v41 isFocusedInPageMenu] != (a1 & 1))
      {
        [v41 setIsFocusedInPageMenu_];
        v11 = [v1 traitCollection];
        v12 = [v11 _presentationSemanticContext];

        if (v12 == 3 || [v1 _isInPopoverPresentation])
        {
          v13 = sub_18BA0671C();
          sub_18BC1FDF8();

          v14 = &v1[OBJC_IVAR___SFBrowsingAssistantCollection_delegate];
          if (swift_unknownObjectWeakLoadStrong())
          {
            v15 = *(v14 + 1);
            v16 = [v1 traitCollection];
            v17 = [v16 _presentationSemanticContext];

            if (v17 != 3 && ![v1 _isInPopoverPresentation])
            {
              (*(v4 + 8))(v7, v10);
              swift_unknownObjectRelease();
LABEL_11:
              v23 = OBJC_IVAR___SFBrowsingAssistantCollection_collectionView;
              v24 = *&v1[OBJC_IVAR___SFBrowsingAssistantCollection_collectionView];
              if (v24)
              {
                [v24 contentOffset];
                v27 = *&v1[v23];
                if (v27)
                {
                  v28 = v25;
                  v29 = v26;
                  [v27 setScrollEnabled_];
                  v30 = *&v1[v23];
                  if (v30)
                  {
                    [v30 setContentOffset_];
                    v31 = *&v1[v23];
                    if (v31)
                    {
                      if ((v1[OBJC_IVAR___SFBrowsingAssistantCollection_metrics + 96] & 1) == 0)
                      {
                        v32 = *&v1[OBJC_IVAR___SFBrowsingAssistantCollection_metrics + 64];
                        v33 = v31;
                        v34 = [v1 view];
                        if (v34)
                        {
                          v35 = v34;
                          v36 = -v32;
                          [v34 safeAreaInsets];
                          v38 = v37;

                          [v33 setContentOffset:1 animated:{0.0, v36 - v38}];
                          return;
                        }

LABEL_28:
                        __break(1u);
                        return;
                      }

LABEL_27:
                      __break(1u);
                      goto LABEL_28;
                    }

LABEL_26:
                    __break(1u);
                    goto LABEL_27;
                  }

LABEL_25:
                  __break(1u);
                  goto LABEL_26;
                }
              }

              else
              {
                __break(1u);
              }

              __break(1u);
              goto LABEL_25;
            }

            sub_18BA0A450(v1, v7);
            v19 = v18;
            v21 = v20;
            ObjectType = swift_getObjectType();
            (*(v15 + 24))(v1, ObjectType, v15, v19, v21);
            (*(v15 + 32))(v1, ObjectType, v15, v19, v21);
            swift_unknownObjectRelease();
          }

          (*(v4 + 8))(v7, v10);
          goto LABEL_11;
        }
      }

      v39 = v41;
    }
  }
}

uint64_t sub_18BA0B840(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v53 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DA010);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v50 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v50 - v17;
  v19 = &v4[OBJC_IVAR___SFBrowsingAssistantCollection_dataSource];
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v51 = a3;
  v52 = a4;
  v21 = *(v19 + 1);
  v22 = v10;
  v23 = v12;
  v24 = result;
  v25 = sub_18BA0671C();
  v54 = v18;
  sub_18BC1FDF8();

  ObjectType = swift_getObjectType();
  v27 = *(v21 + 24);
  v50 = v24;
  v28 = v23;
  v29 = v22;
  v27(v5, ObjectType, v21);
  if (a2 != -1)
  {
    v30 = v53;
    sub_18B9B8870(v53, a2);
    v31 = sub_18BC1FAD8();
    v55 = v30;
    v56 = a2;
    MEMORY[0x1EEE9AC00](v31);
    *(&v50 - 2) = &v55;
    v32 = sub_18B9B5118(sub_18BA10FF4, (&v50 - 4), v31);

    if (v32)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5C80);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_18BC3E410;
      *(v33 + 32) = v30;
      *(v33 + 40) = a2;
      sub_18B9B8870(v30, a2);
      sub_18BC1FAF8();
    }

    sub_18BA0FE28(v30, a2);
  }

  (*(v29 + 16))(v28, v15, v9);
  v34 = &v5[OBJC_IVAR___SFBrowsingAssistantCollection_delegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v35 = *(v34 + 1);
    v36 = [v5 traitCollection];
    v37 = [v36 _presentationSemanticContext];

    if (v37 == 3 || [v5 _isInPopoverPresentation])
    {
      sub_18BA0A450(v5, v28);
      v39 = v38;
      v41 = v40;
      v42 = swift_getObjectType();
      (*(v35 + 24))(v5, v42, v35, v39, v41);
      v43 = *&v5[OBJC_IVAR___SFBrowsingAssistantCollection____lazy_storage___collectionDataSource];
      sub_18BA0BD18(v15, v51, v52);

      (*(v35 + 32))(v5, v42, v35, v39, v41);
      swift_unknownObjectRelease();
      goto LABEL_12;
    }

    swift_unknownObjectRelease();
  }

  v44 = *&v5[OBJC_IVAR___SFBrowsingAssistantCollection____lazy_storage___collectionDataSource];
  sub_18BA0BD18(v15, v51, v52);

LABEL_12:
  v45 = *(v29 + 8);
  v45(v28, v9);
  result = sub_18BC1FAE8();
  if (result)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v46 = *(v34 + 1);
      v47 = swift_getObjectType();
      (*(v46 + 16))(v5, v47, v46);
      result = swift_unknownObjectRelease();
    }
  }

  v48 = *&v5[OBJC_IVAR___SFBrowsingAssistantCollection_collectionView];
  if (v48)
  {
    v49 = v48;
    sub_18BA0C9C8(v5, v15);
    [v49 setContentInset_];
    swift_unknownObjectRelease();

    v45(v54, v9);
    return (v45)(v15, v9);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_18BA0BD18(char *a1, uint64_t a2, uint64_t a3)
{
  v99 = a3;
  v98 = a2;
  v118 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5C88) - 8);
  MEMORY[0x1EEE9AC00](v118);
  v113 = &v93 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5C90);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v94 = &v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v96 = &v93 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v93 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v93 - v14;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5C98);
  v104 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v17 = &v93 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DA010);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v103 = &v93 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v101 = &v93 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v95 = &v93 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v93 - v26;
  v100 = v3;
  sub_18BC1FDF8();
  v114 = v27;
  v28 = sub_18BC1FB18();
  v115 = a1;
  v119 = sub_18BC1FB18();
  v122 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5CA0);
  sub_18B7B0B08(&qword_1EA9D5CA8, &qword_1EA9D5CA0);
  sub_18BA11038();
  sub_18BC20AA8();

  v102 = v19;
  v29 = v19;
  v30 = v113;
  v31 = *(v29 + 56);
  v109 = v15;
  v31(v15, 1, 1, v18);
  v107 = v29 + 56;
  v108 = v12;
  v116 = v18;
  v106 = v31;
  v31(v12, 1, 1, v18);
  v32 = v110;
  (*(v104 + 16))(v30, v17, v110);
  info_high = SHIDWORD(v118[1].info);
  v34 = sub_18B7B0B08(&qword_1EA9D5CB8, &qword_1EA9D5C98);
  v97 = v17;
  sub_18BC21128();
  sub_18BC21158();
  if (*(v30 + info_high) != v119)
  {
    v105 = (v102 + 16);
    v111 = v34;
    v112 = info_high;
    do
    {
      v43 = sub_18BC211C8();
      v46 = *v44;
      v45 = *(v44 + 8);
      v48 = *(v44 + 16);
      v47 = *(v44 + 24);
      v49 = *(v44 + 40);
      v50 = *(v44 + 41);
      v51 = *v44;
      *&v117 = *(v44 + 32);
      LODWORD(v118) = v49;
      sub_18BA1108C(v51, v45);
      v43(&v119, 0);
      sub_18BC21168();
      if (v50 == 1)
      {
        v119 = v45;
        v120 = v48;
        v121 = v47;
        v52 = sub_18BC1FAC8();
        if (!*(v52 + 16))
        {
          v41 = v46;
          v42 = v45;
LABEL_8:
          sub_18BA1109C(v41, v42);

          goto LABEL_9;
        }

        v53 = *(v52 + 32);
        v54 = *(v52 + 40);
        sub_18B9B8870(v53, v54);

        v119 = v53;
        LOBYTE(v120) = v54;
        sub_18BC1FA48();
        v56 = v55;
        sub_18BA1109C(v46, v45);
        v57 = v54;
        v32 = v110;
        sub_18B9B8894(v53, v57);
        if ((v56 & 1) == 0)
        {
          v58 = v108;
          sub_18B988BAC(v108, &qword_1EA9D5C90);
          v59 = v109;
          sub_18B988BAC(v109, &qword_1EA9D5C90);
          v60 = *v105;
          v61 = v116;
          (*v105)(v59, v114, v116);
          v62 = v106;
          v106(v59, 0, 1, v61);
          v63 = v58;
          v64 = v115;
LABEL_17:
          v60(v63, v64, v61);
          v62(v58, 0, 1, v61);
        }
      }

      else
      {
        v119 = v45;
        v120 = v48;
        v121 = v47;
        v65 = sub_18BC1FAC8();
        if (!*(v65 + 16))
        {
          v41 = v46;
          v42 = v45;
          goto LABEL_8;
        }

        v66 = *(v65 + 32);
        v67 = *(v65 + 40);
        sub_18B9B8870(v66, v67);

        v119 = v66;
        LOBYTE(v120) = v67;
        sub_18BC1FA48();
        v69 = v68;
        sub_18BA1109C(v46, v45);
        v70 = v66;
        v32 = v110;
        sub_18B9B8894(v70, v67);
        if ((v69 & 1) == 0)
        {
          v58 = v108;
          sub_18B988BAC(v108, &qword_1EA9D5C90);
          v71 = v109;
          sub_18B988BAC(v109, &qword_1EA9D5C90);
          v60 = *v105;
          v61 = v116;
          (*v105)(v71, v115, v116);
          v62 = v106;
          v106(v71, 0, 1, v61);
          v63 = v58;
          v64 = v114;
          goto LABEL_17;
        }
      }

LABEL_9:
      v30 = v113;
      sub_18BC21158();
    }

    while (*(v30 + v112) != v119);
  }

  sub_18B988BAC(v30, &qword_1EA9D5C88);
  v35 = v96;
  sub_18B7CA054(v109, v96, &qword_1EA9D5C90);
  v36 = v102;
  v37 = *(v102 + 48);
  v38 = v116;
  if (v37(v35, 1, v116) == 1)
  {
LABEL_5:
    sub_18B988BAC(v35, &qword_1EA9D5C90);
    goto LABEL_35;
  }

  v39 = *(v36 + 32);
  v40 = v95;
  v39(v95, v35, v38);
  v35 = v94;
  sub_18B7CA054(v108, v94, &qword_1EA9D5C90);
  if (v37(v35, 1, v38) == 1)
  {
    (*(v36 + 8))(v40, v38);
    goto LABEL_5;
  }

  v39(v101, v35, v38);
  sub_18BA110AC();
  sub_18BA11100();
  v72 = v103;
  sub_18BC1FB28();
  v113 = sub_18BC1FB18();
  v73 = *(v113 + 2);
  if (v73)
  {
    v74 = (v113 + 48);
    v117 = xmmword_18BC3E410;
    v118 = @"PageMenuSectionWebsiteSettings";
    do
    {
      v75 = *(v74 - 2);
      if (v75)
      {
        v76 = *(v74 - 1);
        v77 = *v74;
        sub_18BA0FEA0(*(v74 - 2));
        v78 = v75;
        v79 = sub_18BC20BD8();
        v81 = v80;
        if (v79 == sub_18BC20BD8() && v81 == v82)
        {

          sub_18BA0FEF0(v75);

          v32 = v110;
          v38 = v116;
        }

        else
        {
          v84 = sub_18BC21FD8();

          if (v84)
          {
            sub_18BA0FEF0(v75);

            v32 = v110;
            v38 = v116;
            v72 = v103;
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5CD0);
            v85 = swift_allocObject();
            *(v85 + 16) = v117;
            *(v85 + 32) = v75;
            *(v85 + 40) = v76;
            *(v85 + 48) = v77;
            v86 = v78;
            sub_18BC1E3F8();
            v87 = v116;
            v88 = v103;
            sub_18BC1FA88();

            v119 = v75;
            v120 = v76;
            v121 = v77;
            sub_18BC1FAA8();
            if (v89)
            {
              sub_18BA0FEF0(v75);
            }

            else
            {
              v119 = v75;
              v120 = v76;
              v121 = v77;
              sub_18BC1FAC8();
              v119 = 1;
              v120 = 0;
              v121 = 0;
              sub_18BC1FA38();
              sub_18BA0FEF0(v75);
            }

            v32 = v110;
            v38 = v87;
            v72 = v88;
          }
        }
      }

      v74 += 3;
      --v73;
    }

    while (v73);
  }

  sub_18BC1FDC8();
  v90 = v72;
  v36 = v102;
  v91 = *(v102 + 8);
  v91(v90, v38);
  v91(v101, v38);
  v91(v95, v38);
LABEL_35:
  sub_18BC1FDC8();
  sub_18B988BAC(v108, &qword_1EA9D5C90);
  sub_18B988BAC(v109, &qword_1EA9D5C90);
  (*(v104 + 8))(v97, v32);
  return (*(v36 + 8))(v114, v38);
}

void sub_18BA0C9C8(_BYTE *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DA010);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - v7;
  v9 = &a1[OBJC_IVAR___SFBrowsingAssistantCollection_metrics];
  if (a1[OBJC_IVAR___SFBrowsingAssistantCollection_metrics + 96])
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  (*(v5 + 16))(v8, a2, v4, v6);
  v10 = sub_18BC1FA78();
  (*(v5 + 8))(v8, v4);
  if (!v10 && (a1[OBJC_IVAR___SFBrowsingAssistantCollection_isPresentedInActionsSheet] & 1) == 0)
  {
    v11 = [a1 traitCollection];
    v12 = [v11 _presentationSemanticContext];

    if (v12 != 3 && ([a1 _isInPopoverPresentation] & 1) == 0 && (v9[96] & 1) != 0)
    {
      goto LABEL_9;
    }
  }
}

uint64_t type metadata accessor for BrowsingAssistant()
{
  result = qword_1EA9D5970;
  if (!qword_1EA9D5970)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_18BA0CE74()
{
  sub_18BA0D2AC(319, &qword_1EA9D5980, &qword_1EA9D5988);
  if (v0 <= 0x3F)
  {
    sub_18BA0D2AC(319, &qword_1EA9D5990, &qword_1EA9D5998);
    if (v1 <= 0x3F)
    {
      sub_18BA0D2AC(319, &qword_1EA9D59A0, &qword_1EA9D59A8);
      if (v2 <= 0x3F)
      {
        sub_18BA0D2AC(319, &qword_1EA9D59B0, &qword_1EA9D59B8);
        if (v3 <= 0x3F)
        {
          sub_18BA0D2AC(319, &qword_1EA9D59C0, &qword_1EA9D59C8);
          if (v4 <= 0x3F)
          {
            sub_18BA0D2AC(319, &qword_1EA9D59D0, &qword_1EA9D59D8);
            if (v5 <= 0x3F)
            {
              sub_18BA0D2AC(319, &qword_1EA9D59E0, &qword_1EA9D59E8);
              if (v6 <= 0x3F)
              {
                sub_18BA0D2AC(319, &qword_1EA9D59F0, &qword_1EA9D59F8);
                if (v7 <= 0x3F)
                {
                  sub_18BA0D2AC(319, &unk_1EA9D5A00, &qword_1EA9D3570);
                  if (v8 <= 0x3F)
                  {
                    sub_18BA0D2AC(319, &qword_1EA9D5A10, &qword_1EA9D5A18);
                    if (v9 <= 0x3F)
                    {
                      sub_18BA0D2AC(319, &qword_1EA9D5A20, &qword_1EA9D5A28);
                      if (v10 <= 0x3F)
                      {
                        swift_updateClassMetadata2();
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_18BA0D2AC(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v4 = sub_18BC21848();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_18BA0D428(void *a1)
{
  v2 = sub_18BA0671C();
  sub_18BC1FD18();

  if (v9 == 255)
  {
    return 0;
  }

  if ([a1 isEditing])
  {
    v3 = v8;
    v4 = v9;
LABEL_10:
    sub_18BA0FE28(v3, v4);
    return 0;
  }

  if (v9)
  {
    if (v9 == 1)
    {
      v5 = [v8 isEnabled];
      sub_18BA0FE28(v8, 1);
      return v5;
    }

    v3 = v8;
    v4 = 2;
    goto LABEL_10;
  }

  v7 = [v8 selectionHandler];
  sub_18BA0FE28(v8, 0);
  if (v7)
  {
    _Block_release(v7);
    return 1;
  }

  return 0;
}

void sub_18BA0D6F4(void *a1)
{
  v2 = sub_18BA0671C();
  sub_18BC1FD18();

  if (v19 != 255)
  {
    if ([a1 isEditing])
    {
      v3 = sub_18BC1ED68();
      [a1 deselectItemAtIndexPath:v3 animated:0];

      v4 = v18;
      v5 = v19;
LABEL_21:
      sub_18BA0FE28(v4, v5);
      return;
    }

    if (!v19)
    {
      v14 = [v18 selectionHandler];
      if (v14)
      {
        v15 = v14;
        (*(v14 + 2))(v14);
        _Block_release(v15);
      }

      v4 = v18;
      v5 = 0;
      goto LABEL_21;
    }

    if (v19 != 1)
    {
      v4 = v18;
      v5 = 2;
      goto LABEL_21;
    }

    sub_18B9B8870(v18, 1);
    v6 = [v18 popUpMenu];
    if (v6)
    {

      v7 = sub_18BC1ED68();
      v8 = [a1 cellForItemAtIndexPath_];

      if (v8)
      {
        _s8ListCellCMa();
        v9 = swift_dynamicCastClass();
        if (v9)
        {
          v10 = OBJC_IVAR____SFBrowsingAssistantListCell_menuButton;
          if (*(v9 + OBJC_IVAR____SFBrowsingAssistantListCell_menuButton))
          {
            v11 = v9;
            [*(v9 + OBJC_IVAR____SFBrowsingAssistantListCell_menuButton) setMenu_];
            v12 = *(v11 + v10);
            if (v12)
            {
              v13 = v12;
              [v13 performPrimaryAction];

              sub_18BA0FE28(v18, 1);
              sub_18BA0FE28(v18, 1);

              return;
            }
          }

          goto LABEL_20;
        }
      }
    }

    v16 = [v18 selectionHandler];
    if (v16)
    {
      v17 = v16;
      (*(v16 + 2))(v16);
      _Block_release(v17);
    }

LABEL_20:
    sub_18BA0FE28(v18, 1);
    v4 = v18;
    v5 = 1;
    goto LABEL_21;
  }
}

uint64_t sub_18BA0DA40@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  sub_18BC1EDC8();
  if (sub_18BA03E68())
  {
    v6 = sub_18BC1EDC8();
    if (v6 < sub_18BC1EDC8())
    {
      v7 = sub_18BA0671C();
      v8 = sub_18BC1FCF8();

      if (__OFSUB__(v8, 1))
      {
        __break(1u);
        goto LABEL_15;
      }

LABEL_10:

LABEL_15:
      JUMPOUT(0x18CFFA290);
    }

    if (sub_18BC1EDC8() < v6)
    {
      goto LABEL_10;
    }

    v15 = sub_18BC1EDD8();
    v10 = *(*(v15 - 8) + 16);
    v11 = v15;
    v12 = a3;
    v13 = a2;
  }

  else
  {
    v9 = sub_18BC1EDD8();
    v10 = *(*(v9 - 8) + 16);
    v11 = v9;
    v12 = a3;
    v13 = a1;
  }

  return v10(v12, v13, v11);
}

uint64_t sub_18BA0DED4(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DA010);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v35 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5BD0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v35 - v9;
  v11 = sub_18BC1EDD8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_18BA0671C();
  v39 = a1;
  v40 = 1;
  swift_unknownObjectRetain();
  sub_18BC1FE08();
  swift_unknownObjectRelease();

  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_18B988BAC(v10, &unk_1EA9D5BD0);
  }

  v38 = v5;
  result = (*(v12 + 32))(v14, v10, v11);
  v17 = *&v2[OBJC_IVAR___SFBrowsingAssistantCollection_collectionView];
  if (v17)
  {
    v18 = v17;
    v19 = sub_18BC1ED68();
    v20 = [v18 cellForItemAtIndexPath_];

    if (v20)
    {
      _s8ListCellCMa();
      v21 = swift_dynamicCastClass();
      v22 = v38;
      if (!v21)
      {
        goto LABEL_14;
      }

      sub_18BA10500(v21, a1);
      v23 = *&v2[OBJC_IVAR___SFBrowsingAssistantCollection____lazy_storage___collectionDataSource];
      sub_18BC1FDF8();

      v24 = &v2[OBJC_IVAR___SFBrowsingAssistantCollection_delegate];
      if (swift_unknownObjectWeakLoadStrong())
      {
        v36 = *(v24 + 1);
        v37 = v4;
        v25 = [v2 traitCollection];
        v26 = [v25 _presentationSemanticContext];

        if (v26 == 3 || [v2 _isInPopoverPresentation])
        {
          sub_18BA0A450(v2, v7);
          v28 = v27;
          v30 = v29;
          ObjectType = swift_getObjectType();
          v32 = v36;
          (*(v36 + 24))(v2, ObjectType, v36, v28, v30);
          (*(v32 + 32))(v2, ObjectType, v32, v28, v30);
          swift_unknownObjectRelease();
          (*(v38 + 8))(v7, v37);
        }

        else
        {
          (*(v38 + 8))(v7, v37);
          swift_unknownObjectRelease();
        }
      }

      else
      {
        (*(v22 + 8))(v7, v4);
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v33 = *(v24 + 1);
        v34 = swift_getObjectType();
        (*(v33 + 16))(v2, v34, v33);

        swift_unknownObjectRelease();
      }

      else
      {
LABEL_14:
      }
    }

    return (*(v12 + 8))(v14, v11);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_18BA0E360(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5BD0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v19 - v5;
  v7 = sub_18BC1EDD8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_18BA0671C();
  v19 = a1;
  v20 = 0;
  v12 = a1;
  sub_18BC1FE08();

  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_18B988BAC(v6, &unk_1EA9D5BD0);
  }

  result = (*(v8 + 32))(v10, v6, v7);
  v14 = *(v2 + OBJC_IVAR___SFBrowsingAssistantCollection_collectionView);
  if (v14)
  {
    v15 = v14;
    v16 = sub_18BC1ED68();
    v17 = [v15 cellForItemAtIndexPath_];

    if (v17)
    {
      _s14ReaderCardCellCMa();
      v18 = swift_dynamicCastClass();
      if (v18)
      {
        sub_18BA10794(v18, v12);
      }
    }

    sub_18BA0B840(a1, 0, CGRectMake, 0);
    return (*(v8 + 8))(v10, v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_18BA0E620(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5BD0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v27 - v5;
  v7 = sub_18BC1EDD8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_18BA0671C();
  v27 = a1;
  v28 = 2;
  swift_unknownObjectRetain();
  sub_18BC1FE08();
  swift_unknownObjectRelease();

  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_18B988BAC(v6, &unk_1EA9D5BD0);
    return;
  }

  (*(v8 + 32))(v10, v6, v7);
  if (![a1 displayOption])
  {
    v19 = *(v2 + OBJC_IVAR___SFBrowsingAssistantCollection_collectionView);
    if (!v19)
    {
      goto LABEL_18;
    }

    v20 = v19;
    v21 = sub_18BC1ED68();
    v22 = [v20 cellForItemAtIndexPath_];

    if (v22)
    {
      _s9PopUpCellCMa();
      v23 = swift_dynamicCastClass();
      if (v23)
      {
        v24 = v23;
        v25 = [a1 actions];
        sub_18B7B0AC0(0, &qword_1EA9D52D0);
        v26 = sub_18BC20D98();

        *(v24 + OBJC_IVAR____SFBrowsingAssistantPopUpCell_actions) = v26;

        sub_18BB80120();

        goto LABEL_14;
      }
    }
  }

  if ([a1 displayOption] == 1)
  {
    v12 = *(v2 + OBJC_IVAR___SFBrowsingAssistantCollection_collectionView);
    if (v12)
    {
      v13 = v12;
      v14 = sub_18BC1ED68();
      v15 = [v13 cellForItemAtIndexPath_];

      if (v15)
      {
        _s10SwitchCellCMa();
        v16 = swift_dynamicCastClass();
        if (v16)
        {
          v17 = v16;
          v18 = [a1 BOOLValue];
          [*(v17 + OBJC_IVAR____SFBrowsingAssistantSwitchCell_switch) setOn_];
          (*(v8 + 8))(v10, v7);

          return;
        }
      }

      goto LABEL_14;
    }

    __break(1u);
LABEL_18:
    __break(1u);
    return;
  }

LABEL_14:
  (*(v8 + 8))(v10, v7);
}

void sub_18BA0E9C4(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v7 = a1;
  a4(a3);
  swift_unknownObjectRelease();
}

void sub_18BA0EA3C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_18BC1EDD8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = MEMORY[0x1EEE9AC00](v8).n128_u64[0];
  v11 = &v29 - v10;
  v12 = OBJC_IVAR___SFBrowsingAssistantCollection_collectionView;
  v13 = *&v2[OBJC_IVAR___SFBrowsingAssistantCollection_collectionView];
  if (!v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = [v13 indexPathForCell_];
  if (!v14)
  {
    return;
  }

  v15 = v14;
  sub_18BC1ED88();

  (*(v5 + 32))(v11, v7, v4);
  sub_18BC1EDC8();
  if (sub_18BA03E68())
  {
    v16 = sub_18BA0671C();
    sub_18BC1FD18();

    v17 = v30;
    if (v30 != 255)
    {
      v18 = v29;
      if (v30 != 1)
      {
        v28 = v29;
LABEL_12:
        sub_18BA0FE28(v28, v17);
        goto LABEL_13;
      }

      v19 = *&v2[v12];
      if (v19)
      {
        sub_18B9B8870(v29, 1);
        v20 = [v19 collectionViewLayout];
        type metadata accessor for CompositionalLayout();
        *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC12MobileSafariP33_DA0FD1D9453FFEF6CCD88A7A825CA7EA19CompositionalLayout_isMovingItemDown) = 1;

        v21 = *&v2[v12];
        if (v21)
        {
          v22 = [v21 collectionViewLayout];
          [swift_dynamicCastClassUnconditional() invalidateLayout];

          [v18 setFavorited_];
          v23 = &v2[OBJC_IVAR___SFBrowsingAssistantCollection_delegate];
          if (swift_unknownObjectWeakLoadStrong())
          {
            v24 = *(v23 + 1);
            ObjectType = swift_getObjectType();
            (*(v24 + 8))(v2, ObjectType, v24);
            swift_unknownObjectRelease();
          }

          v26 = swift_allocObject();
          *(v26 + 16) = v2;
          v27 = v2;
          sub_18BA0B840(v18, 1, sub_18BA0FF30, v26);

          sub_18BA0FE28(v18, 1);
          v28 = v18;
          v17 = 1;
          goto LABEL_12;
        }

LABEL_17:
        __break(1u);
        return;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

LABEL_13:
  (*(v5 + 8))(v11, v4);
}

void sub_18BA0EDC8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_18BC1EDD8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = MEMORY[0x1EEE9AC00](v8).n128_u64[0];
  v11 = &v29 - v10;
  v12 = OBJC_IVAR___SFBrowsingAssistantCollection_collectionView;
  v13 = *&v2[OBJC_IVAR___SFBrowsingAssistantCollection_collectionView];
  if (!v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = [v13 indexPathForCell_];
  if (!v14)
  {
    return;
  }

  v15 = v14;
  sub_18BC1ED88();

  (*(v5 + 32))(v11, v7, v4);
  sub_18BC1EDC8();
  if ((sub_18BA03E68() & 1) == 0)
  {
    v16 = sub_18BA0671C();
    sub_18BC1FD18();

    v17 = v30;
    if (v30 != 255)
    {
      v18 = v29;
      if (v30 != 1)
      {
        v28 = v29;
LABEL_12:
        sub_18BA0FE28(v28, v17);
        goto LABEL_13;
      }

      v19 = *&v2[v12];
      if (v19)
      {
        sub_18B9B8870(v29, 1);
        v20 = [v19 collectionViewLayout];
        type metadata accessor for CompositionalLayout();
        *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC12MobileSafariP33_DA0FD1D9453FFEF6CCD88A7A825CA7EA19CompositionalLayout_isMovingItemUp) = 1;

        v21 = *&v2[v12];
        if (v21)
        {
          v22 = [v21 collectionViewLayout];
          [swift_dynamicCastClassUnconditional() invalidateLayout];

          [v18 setFavorited_];
          v23 = &v2[OBJC_IVAR___SFBrowsingAssistantCollection_delegate];
          if (swift_unknownObjectWeakLoadStrong())
          {
            v24 = *(v23 + 1);
            ObjectType = swift_getObjectType();
            (*(v24 + 8))(v2, ObjectType, v24);
            swift_unknownObjectRelease();
          }

          v26 = swift_allocObject();
          *(v26 + 16) = v2;
          v27 = v2;
          sub_18BA0B840(v18, 1, sub_18BA0FE7C, v26);

          sub_18BA0FE28(v18, 1);
          v28 = v18;
          v17 = 1;
          goto LABEL_12;
        }

LABEL_17:
        __break(1u);
        return;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

LABEL_13:
  (*(v5 + 8))(v11, v4);
}

void sub_18BA0F0EC(uint64_t a1, void *a2)
{
  v2 = *(a1 + OBJC_IVAR___SFBrowsingAssistantCollection_collectionView);
  if (v2)
  {
    v4 = [v2 collectionViewLayout];
    type metadata accessor for CompositionalLayout();
    *(swift_dynamicCastClassUnconditional() + *a2) = 0;
  }

  else
  {
    __break(1u);
  }
}

id sub_18BA0F1E4(uint64_t a1)
{
  v3 = sub_18BC1EDD8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = MEMORY[0x1EEE9AC00](v7).n128_u64[0];
  v10 = &v20 - v9;
  result = *&v1[OBJC_IVAR___SFBrowsingAssistantCollection_collectionView];
  if (result)
  {
    result = [result indexPathForCell_];
    if (result)
    {
      v12 = result;
      sub_18BC1ED88();

      (*(v4 + 32))(v10, v6, v3);
      v13 = v1;
      v14 = sub_18BA0671C();
      sub_18BC1FD18();

      v15 = v21;
      if (v21 != 255)
      {
        v16 = v20;
        if (v21 == 2)
        {
          v17 = [v20 confirmationAlertForSwitchCell_];
          if (v17)
          {
            v18 = v17;
            [v13 presentViewController:v17 animated:1 completion:0];
          }

          else
          {
            [v16 setBoolValue_];
          }

          v19 = v16;
          v15 = 2;
        }

        else
        {
          v19 = v20;
        }

        sub_18BA0FE28(v19, v15);
      }

      return (*(v4 + 8))(v10, v3);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_18BA0F534(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v30 = sub_18BC1EDD8();
  v10 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for CompositionalLayout();
  v31.receiver = v5;
  v31.super_class = v13;
  v14 = objc_msgSendSuper2(&v31, sel_layoutAttributesForElementsInRect_, a1, a2, a3, a4);
  if (v14)
  {
    v15 = v14;
    sub_18B7B0AC0(0, &qword_1EA9D5BC8);
    v16 = sub_18BC20D98();

    if (v16 >> 62)
    {
      goto LABEL_23;
    }

    for (i = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_18BC219A8())
    {
      if (i < 1)
      {
        __break(1u);
        return;
      }

      v18 = 0;
      v19 = v16 & 0xC000000000000001;
      v28 = OBJC_IVAR____TtC12MobileSafariP33_DA0FD1D9453FFEF6CCD88A7A825CA7EA19CompositionalLayout_isMovingItemUp;
      v29 = OBJC_IVAR____TtC12MobileSafariP33_DA0FD1D9453FFEF6CCD88A7A825CA7EA19CompositionalLayout_isMovingItemDown;
      v20 = v10 + 1;
      v21 = v16;
      while (1)
      {
        v22 = v19 ? MEMORY[0x18CFFD010](v18, v16) : *(v16 + 8 * v18 + 32);
        v10 = v22;
        v23 = [v22 indexPath];
        sub_18BC1ED88();

        v24 = sub_18BC1EDC8();
        v16 = 100 * v24;
        if ((v24 * 100) >> 64 != (100 * v24) >> 63)
        {
          break;
        }

        v25 = sub_18BC1EDB8();
        v26 = v16 + v25;
        if (__OFADD__(v16, v25))
        {
          goto LABEL_21;
        }

        v16 = v21;
        if ((*(v5 + v29) & 1) == 0)
        {
          if ((*(v5 + v28) & 1) == 0)
          {
            goto LABEL_7;
          }

          if (__OFSUB__(0, v26))
          {
            goto LABEL_22;
          }

          if (__OFADD__(-v26, 1000))
          {
            __break(1u);
            return;
          }
        }

        [v10 setZIndex_];
LABEL_7:
        ++v18;

        (*v20)(v12, v30);
        if (i == v18)
        {
          return;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      ;
    }
  }
}

uint64_t sub_18BA0F87C(void *a1)
{
  v2 = v1;
  v4 = sub_18BC1EDD8();
  v5 = *(v4 - 8);
  *&v6 = MEMORY[0x1EEE9AC00](v4).n128_u64[0];
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 indexPath];
  sub_18BC1ED88();

  result = sub_18BC1EDC8();
  v11 = 100 * result;
  if ((result * 100) >> 64 != (100 * result) >> 63)
  {
    __break(1u);
    goto LABEL_10;
  }

  result = sub_18BC1EDB8();
  v12 = v11 + result;
  if (__OFADD__(v11, result))
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (*(v2 + OBJC_IVAR____TtC12MobileSafariP33_DA0FD1D9453FFEF6CCD88A7A825CA7EA19CompositionalLayout_isMovingItemDown))
  {
LABEL_7:
    [a1 setZIndex_];
    return (*(v5 + 8))(v8, v4);
  }

  if (*(v2 + OBJC_IVAR____TtC12MobileSafariP33_DA0FD1D9453FFEF6CCD88A7A825CA7EA19CompositionalLayout_isMovingItemUp) != 1)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v13 = -v12;
  if (__OFSUB__(0, v12))
  {
    goto LABEL_11;
  }

  v12 = 1000 - v12;
  if (!__OFADD__(v13, 1000))
  {
    goto LABEL_7;
  }

LABEL_12:
  __break(1u);
  return result;
}

id sub_18BA0FDC4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_18BA0FE28(id a1, char a2)
{
  if (a2 != -1)
  {
    sub_18B9B8894(a1, a2);
  }
}

id sub_18BA0FE3C()
{
  v1 = (*(*(v0 + 16) + 16))();

  return v1;
}

void *sub_18BA0FEA0(void *result)
{
  if (result)
  {
    v1 = result;

    return sub_18BC1E3F8();
  }

  return result;
}

void *sub_18BA0FEE0(void *result)
{
  if (result != 1)
  {
    return sub_18BA0FEF0(result);
  }

  return result;
}

void *sub_18BA0FEF0(void *result)
{
  if (result)
  {
  }

  return result;
}

void sub_18BA0FF54(uint64_t a1, id a2)
{
  if ([a2 _presentationSemanticContext] >= 2)
  {
    sub_18BA0975C();
    v3 = *(a1 + OBJC_IVAR___SFBrowsingAssistantCollection_collectionView);
    if (v3)
    {
      v4 = v3;
      sub_18BA08698();
      v6 = v5;
      [v4 setCollectionViewLayout_];

      sub_18BA0B840(0, 255, CGRectMake, 0);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_18BA10000()
{
  *(v0 + OBJC_IVAR___SFBrowsingAssistantCollection_isReaderModeAvailable) = 0;
  *(v0 + OBJC_IVAR___SFBrowsingAssistantCollection_dataSource + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR___SFBrowsingAssistantCollection_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR___SFBrowsingAssistantCollection_isPresentedInActionsSheet) = 0;
  v1 = OBJC_IVAR___SFBrowsingAssistantCollection____lazy_storage___listCellRegistration;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5988);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR___SFBrowsingAssistantCollection____lazy_storage___popUpCellRegistration;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5998);
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  v5 = OBJC_IVAR___SFBrowsingAssistantCollection____lazy_storage___switchCellRegistration;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D59A8);
  (*(*(v6 - 8) + 56))(v0 + v5, 1, 1, v6);
  v7 = OBJC_IVAR___SFBrowsingAssistantCollection____lazy_storage___consentCardCellRegistration;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D59B8);
  (*(*(v8 - 8) + 56))(v0 + v7, 1, 1, v8);
  v9 = OBJC_IVAR___SFBrowsingAssistantCollection____lazy_storage___entityCardCellRegistration;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D59C8);
  (*(*(v10 - 8) + 56))(v0 + v9, 1, 1, v10);
  v11 = OBJC_IVAR___SFBrowsingAssistantCollection____lazy_storage___listenToPageCardCellRegistration;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D59D8);
  (*(*(v12 - 8) + 56))(v0 + v11, 1, 1, v12);
  v13 = OBJC_IVAR___SFBrowsingAssistantCollection____lazy_storage___readerCardCellRegistration;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D59E8);
  (*(*(v14 - 8) + 56))(v0 + v13, 1, 1, v14);
  v15 = OBJC_IVAR___SFBrowsingAssistantCollection____lazy_storage___readerOptionsCardCellRegistration;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D59F8);
  (*(*(v16 - 8) + 56))(v0 + v15, 1, 1, v16);
  v17 = OBJC_IVAR___SFBrowsingAssistantCollection____lazy_storage___sectionHeaderRegistration;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D3570);
  (*(*(v18 - 8) + 56))(v0 + v17, 1, 1, v18);
  v19 = OBJC_IVAR___SFBrowsingAssistantCollection____lazy_storage___readerButtonFooterRegistration;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5A18);
  (*(*(v20 - 8) + 56))(v0 + v19, 1, 1, v20);
  *(v0 + OBJC_IVAR___SFBrowsingAssistantCollection_globalHeaderFooter) = 0;
  v21 = OBJC_IVAR___SFBrowsingAssistantCollection____lazy_storage___globalHeaderFooterRegistration;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5A28);
  (*(*(v22 - 8) + 56))(v0 + v21, 1, 1, v22);
  *(v0 + OBJC_IVAR___SFBrowsingAssistantCollection____lazy_storage___collectionDataSource) = 0;
  v23 = v0 + OBJC_IVAR___SFBrowsingAssistantCollection_metrics;
  *v23 = 0u;
  *(v23 + 16) = 0u;
  *(v23 + 32) = 0u;
  *(v23 + 48) = 0u;
  *(v23 + 64) = 0u;
  *(v23 + 80) = 0u;
  *(v23 + 96) = 1;
  *(v0 + OBJC_IVAR___SFBrowsingAssistantCollection_collectionView) = 0;
  *(v0 + OBJC_IVAR___SFBrowsingAssistantCollection____lazy_storage___sizingListCell) = 0;
  *(v0 + OBJC_IVAR___SFBrowsingAssistantCollection____lazy_storage___sizingPopUpCell) = 0;
  *(v0 + OBJC_IVAR___SFBrowsingAssistantCollection____lazy_storage___sizingSwitchCell) = 0;
  *(v0 + OBJC_IVAR___SFBrowsingAssistantCollection____lazy_storage___sizingConsentCardCell) = 0;
  *(v0 + OBJC_IVAR___SFBrowsingAssistantCollection____lazy_storage___sizingListenToPageCardCell) = 0;
  *(v0 + OBJC_IVAR___SFBrowsingAssistantCollection____lazy_storage___sizingReaderCardCell) = 0;
  *(v0 + OBJC_IVAR___SFBrowsingAssistantCollection____lazy_storage___sizingReaderOptionsCardCell) = 0;
  *(v0 + OBJC_IVAR___SFBrowsingAssistantCollection____lazy_storage___sizingHeader) = 0;
  *(v0 + OBJC_IVAR___SFBrowsingAssistantCollection_hasDisplayedStepper) = 0;
  sub_18BC21CF8();
  __break(1u);
}

void sub_18BA10500(uint64_t a1, id a2)
{
  if ([a2 isEnabled])
  {
    v4 = &selRef_overrideColor;
    v5 = a2;
  }

  else
  {
    v5 = objc_opt_self();
    v4 = &selRef_secondaryLabelColor;
  }

  v6 = [v5 *v4];
  v7 = *(a1 + OBJC_IVAR____SFBrowsingAssistantListCell_overrideColor);
  *(a1 + OBJC_IVAR____SFBrowsingAssistantListCell_overrideColor) = v6;
  v8 = v6;
  sub_18BBD0F38(v7);

  v9 = [a2 title];
  if (v9)
  {
    v10 = v9;
    v11 = sub_18BC20BD8();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  sub_18BBD10C8(v11, v13);
  v14 = [a2 subtitle];
  if (v14)
  {
    v15 = v14;
    v16 = sub_18BC20BD8();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  sub_18BBD10D4(v16, v18);
  v19 = [a2 badgeText];
  if (v19)
  {
    v20 = v19;
    v21 = sub_18BC20BD8();
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0;
  }

  v24 = (a1 + OBJC_IVAR____SFBrowsingAssistantListCell_badgeText);
  v25 = *(a1 + OBJC_IVAR____SFBrowsingAssistantListCell_badgeText);
  v26 = *(a1 + OBJC_IVAR____SFBrowsingAssistantListCell_badgeText + 8);
  *v24 = v21;
  v24[1] = v23;
  sub_18BBD1C14(v25, v26);

  v27 = [a2 showsStatusAlert];
  v28 = *(a1 + OBJC_IVAR____SFBrowsingAssistantListCell_showsStatusAlert);
  *(a1 + OBJC_IVAR____SFBrowsingAssistantListCell_showsStatusAlert) = v27;
  sub_18BBD1DE4(v28);
  v29 = [a2 popUpMenu];
  v30 = *(a1 + OBJC_IVAR____SFBrowsingAssistantListCell_popUpMenu);
  *(a1 + OBJC_IVAR____SFBrowsingAssistantListCell_popUpMenu) = v29;

  v31 = [a2 icon];
  v32 = *(a1 + OBJC_IVAR____SFBrowsingAssistantListCell_icon);
  *(a1 + OBJC_IVAR____SFBrowsingAssistantListCell_icon) = v31;
  v33 = v31;
  sub_18BBD28E0(v32);

  v34 = [a2 showsSpinner];
  v35 = *(a1 + OBJC_IVAR____SFBrowsingAssistantListCell_showsSpinner);
  *(a1 + OBJC_IVAR____SFBrowsingAssistantListCell_showsSpinner) = v34;
  sub_18BBD30D4(v35);
  v36 = [a2 showsIndicatorDot];
  v37 = *(a1 + OBJC_IVAR____SFBrowsingAssistantListCell_showsIndicatorDot);
  *(a1 + OBJC_IVAR____SFBrowsingAssistantListCell_showsIndicatorDot) = v36;
  sub_18BBD2574(v37);
}

void sub_18BA10794(uint64_t a1, id a2)
{
  v4 = [a2 readerContext];
  v5 = *(a1 + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant14ReaderCardCell_readerContext);
  *(a1 + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant14ReaderCardCell_readerContext) = v4;
  if (v4)
  {
    if (v4 == v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (v5)
  {
LABEL_3:
    swift_unknownObjectRetain();
    sub_18B9F3F24();
    swift_unknownObjectRelease();
  }

LABEL_4:
  swift_unknownObjectRelease();
  v6 = [a2 title];
  if (v6)
  {
    v7 = v6;
    v8 = sub_18BC20BD8();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  sub_18B9F4310(v8, v10);
  v11 = [a2 bodyText];
  if (v11)
  {
    v12 = v11;
    v13 = sub_18BC20BD8();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  sub_18B9F48E8(v13, v15);
  v16 = [a2 disclaimerText];
  if (v16)
  {
    v17 = v16;
    v18 = sub_18BC20BD8();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0;
  }

  sub_18B9F524C(v18, v20);
  v21 = [a2 readerContext];
  if (v21 && (v22 = [v21 isReaderAvailable], swift_unknownObjectRelease(), v22))
  {
    v23 = [a2 primaryAction];
    v24 = 1;
  }

  else
  {
    v23 = 0;
    v24 = 0;
  }

  v25 = OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant14ReaderCardCell_showReaderAction;
  v26 = *(a1 + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant14ReaderCardCell_showReaderAction);
  *(a1 + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant14ReaderCardCell_showReaderAction) = v23;
  v27 = objc_opt_self();
  v28 = v23;
  if ([v27 isSolariumEnabled] && v26 && (v29 = *(a1 + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant14ReaderCardCell_showReaderButton), sub_18B7B0AC0(0, &qword_1EA9D5BE0), v30 = v29, v26 = v26, v31 = sub_18BC215C8(), v30, v26, (v31 & 1) != 0))
  {

    if ((v24 & 1) == 0)
    {
LABEL_23:
      v32 = 0;
      goto LABEL_26;
    }
  }

  else
  {
    [*(a1 + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant14ReaderCardCell_showReaderButton) setHidden_];
    sub_18B9F5DE0();

    if (!v24)
    {
      goto LABEL_23;
    }
  }

  v32 = [a2 secondaryAction];
LABEL_26:
  v34 = *(a1 + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant14ReaderCardCell_listenToPageAction);
  *(a1 + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant14ReaderCardCell_listenToPageAction) = v32;
  v33 = v32;
  sub_18B9F5B38(v34);
}

void sub_18BA10AC4(uint64_t a1, id a2)
{
  v4 = [a2 readerContext];
  *(a1 + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant21ReaderOptionsCardCell_readerContext) = v4;
  swift_unknownObjectRetain_n();
  swift_unknownObjectRelease();
  if (v4)
  {
    v5 = [v4 configurationManager];
    v6 = [v5 themeForAppearance_];

    sub_18BB6E098(v6);
    swift_unknownObjectRelease();
  }

  sub_18BBAEA40();
  swift_unknownObjectRelease();
  v7 = [a2 primaryAction];
  v8 = *(a1 + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant21ReaderOptionsCardCell_hideReaderAction);
  *(a1 + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant21ReaderOptionsCardCell_hideReaderAction) = v7;

  v9 = [a2 secondaryAction];
  v11 = *(a1 + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant21ReaderOptionsCardCell_listenToPageAction);
  *(a1 + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant21ReaderOptionsCardCell_listenToPageAction) = v9;
  v10 = v9;
  sub_18BBAFE90(v11);
}

id sub_18BA10C40()
{
  v1 = objc_opt_self();
  v2 = [v1 fractionalWidthDimension_];
  v3 = [v1 estimatedDimension_];
  v4 = objc_opt_self();
  v5 = [v4 sizeWithWidthDimension:v2 heightDimension:v3];

  v6 = [objc_opt_self() itemWithLayoutSize_];
  v7 = [v1 fractionalWidthDimension_];
  v8 = [v5 heightDimension];
  v9 = [v4 sizeWithWidthDimension:v7 heightDimension:v8];

  v10 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_18BC3E3E0;
  *(v11 + 32) = v6;
  sub_18B7B0AC0(0, &qword_1EA9D5BF8);
  v12 = v6;
  v13 = sub_18BC20D88();

  v14 = [v10 horizontalGroupWithLayoutSize:v9 subitems:v13];

  result = [objc_opt_self() sectionWithGroup_];
  if (*(v0 + OBJC_IVAR___SFBrowsingAssistantCollection_metrics + 96))
  {
    __break(1u);
  }

  else
  {
    v16 = *(v0 + OBJC_IVAR___SFBrowsingAssistantCollection_metrics + 56);
    v17 = result;
    [result setInterGroupSpacing_];

    return v17;
  }

  return result;
}

uint64_t sub_18BA10E98(uint64_t result, uint64_t a2)
{
  v3 = OBJC_IVAR___SFBrowsingAssistantCollection_hasDisplayedStepper;
  if ((*(v2 + OBJC_IVAR___SFBrowsingAssistantCollection_hasDisplayedStepper) & 1) == 0)
  {
    if (result == 0xD000000000000012 && 0x800000018BC64060 == a2 || (result = sub_18BC21FD8(), (result & 1) != 0))
    {
      v4 = *(v2 + OBJC_IVAR___SFBrowsingAssistantCollection_globalHeaderFooter);
      if (v4)
      {
        result = *(v4 + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant16MainHeaderFooter_stepper);
        if (result)
        {
          *(v2 + v3) = 1;

          return [result setNeedsInitialBlink_];
        }
      }
    }
  }

  return result;
}

unint64_t sub_18BA11038()
{
  result = qword_1EA9D5CB0;
  if (!qword_1EA9D5CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D5CB0);
  }

  return result;
}

unint64_t sub_18BA110AC()
{
  result = qword_1EA9D5CC0;
  if (!qword_1EA9D5CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D5CC0);
  }

  return result;
}

unint64_t sub_18BA11100()
{
  result = qword_1EA9DA040;
  if (!qword_1EA9DA040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DA040);
  }

  return result;
}

unint64_t sub_18BA11174()
{
  result = qword_1EA9DAE20;
  if (!qword_1EA9DAE20)
  {
    type metadata accessor for SFReaderThemePickerControl();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DAE20);
  }

  return result;
}

uint64_t sub_18BA11234(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
LABEL_6:
      v12 = 0;
      return v12 & 1;
    }

LABEL_5:
    (*(v7 + 8))(v10, a1);
    goto LABEL_6;
  }

  if (!EnumCaseMultiPayload)
  {
    goto LABEL_5;
  }

  (*(v3 + 32))(v5, v10, v2);
  v12 = (*(*(a1 + 48) + 24))(v2);
  (*(v3 + 8))(v5, v2);
  return v12 & 1;
}

BOOL SFFluidCollectionView.Element.isItem.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = MEMORY[0x1EEE9AC00](a1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v3);
  v6 = swift_getEnumCaseMultiPayload() == 1;
  (*(v2 + 8))(v5, a1);
  return v6;
}

uint64_t SFFluidCollectionView.Element.description.getter(uint64_t a1)
{
  v36 = *(a1 + 32);
  v35 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v34 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v3 + 16);
  v33 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 + 24);
  v32 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = (&v31 - v17);
  v19 = *(v12 + 16);
  v19(&v31 - v17, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v33 = *v18;
      v23 = v36;
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v25 = swift_projectBox();
      v26 = *(TupleTypeMetadata2 + 48);
      v27 = v34;
      v28 = v35;
      (*(v35 + 16))(v34, v25, v23);
      (v19)(v14, v25 + v26, a1);
      v37 = 0;
      v38 = 0xE000000000000000;
      sub_18BC21AD8();
      MEMORY[0x18CFFC150](0xD000000000000011, 0x800000018BC64120);
      sub_18BC21F88();
      MEMORY[0x18CFFC150](0x657265666572202CLL, 0xEE00203A7365636ELL);
      swift_getWitnessTable();
      sub_18BC21F98();
      MEMORY[0x18CFFC150](32032, 0xE200000000000000);
      v22 = v37;
      (*(v12 + 8))(v14, a1);
      (*(v28 + 8))(v27, v23);
    }

    else
    {
      return 0x63656C6C6F63207BLL;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v29 = v32;
    (*(v32 + 32))(v10, v18, v8);
    v37 = 0;
    v38 = 0xE000000000000000;
    MEMORY[0x18CFFC150](0x203A6D657469207BLL, 0xE800000000000000);
    sub_18BC21F88();
    MEMORY[0x18CFFC150](32032, 0xE200000000000000);
    v22 = v37;
    (*(v29 + 8))(v10, v8);
  }

  else
  {
    v21 = v33;
    (*(v33 + 32))(v6, v18, v4);
    v37 = 0;
    v38 = 0xE000000000000000;
    MEMORY[0x18CFFC150](0x6F6974636573207BLL, 0xEB00000000203A6ELL);
    sub_18BC21F88();
    MEMORY[0x18CFFC150](32032, 0xE200000000000000);
    v22 = v37;
    (*(v21 + 8))(v6, v4);
  }

  return v22;
}

uint64_t SFFluidCollectionView.Element.hashValue.getter(uint64_t a1)
{
  sub_18BC22158();
  SFFluidCollectionView.Element.hash(into:)(v3, a1);
  return sub_18BC221A8();
}

uint64_t sub_18BA11A30(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  v4 = *(*(a3 + 24) - 8);
  if (*(v4 + 64) > v3)
  {
    v3 = *(v4 + 64);
  }

  v5 = 8;
  if (v3 > 8)
  {
    v5 = v3;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_27;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if ((v5 + 1) <= 3)
  {
    v10 = ((a2 + ~(-1 << v7) - 252) >> v7) + 1;
    if (HIWORD(v10))
    {
      v8 = *(a1 + v6);
      if (!v8)
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v10 > 0xFF)
    {
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v10 < 2)
    {
LABEL_27:
      v12 = *(a1 + v5);
      if (v12 >= 4)
      {
        return (v12 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_27;
  }

LABEL_16:
  v11 = (v8 - 1) << v7;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return (v6 | v11) + 253;
}

void sub_18BA11B64(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (*(*(*(a4 + 24) - 8) + 64) > v5)
  {
    v5 = *(*(*(a4 + 24) - 8) + 64);
  }

  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  if (a3 < 0xFD)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 252) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFC)
  {
    v8 = a2 - 253;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_41;
      }

      goto LABEL_38;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_41:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_41;
          }
        }

LABEL_38:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_41;
    }

    goto LABEL_38;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_27:
      a1[v5] = -a2;
      return;
    }

LABEL_26:
    if (!a2)
    {
      return;
    }

    goto LABEL_27;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_26;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_27;
  }
}

uint64_t sub_18BA11D38()
{
  v1 = sub_18BC21628();
  v28 = *(v1 - 8);
  v29 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_18BC21808();
  v30 = *(v4 - 8);
  v31 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - v8;
  sub_18BC1FC98();
  v10 = *(v0 + 32);
  sub_18BC1FCA8();
  sub_18BC1E3F8();
  sub_18BC1FBE8();
  sub_18BC1E3F8();
  sub_18BC1FC88();
  v11 = objc_opt_self();
  v12 = [v11 secondaryLabelColor];
  v13 = sub_18BC1FC18();
  sub_18BC1FC08();
  v13(v32, 0);
  v14 = [objc_opt_self() preferredFontForTextStyle_];
  v15 = sub_18BC1FC18();
  sub_18BC1FBF8();
  v15(v32, 0);
  result = sub_18BC1FC78();
  if (*(v0 + 40) == 1)
  {
    v17 = [objc_opt_self() configurationWithPointSize:6 weight:3 scale:60.0];
    v18 = sub_18BC1FC48();
    sub_18BC1FC28();
    v18(v32, 0);
    v19 = [v11 placeholderTextColor];
    v20 = sub_18BC1FC48();
    sub_18BC1FC38();
    result = v20(v32, 0);
  }

  v21 = *(v0 + 8);
  if (v21)
  {
    v22 = v21;
    sub_18BC216D8();
    sub_18BC21678();
    (*(v28 + 104))(v3, *MEMORY[0x1E69DC508], v29);
    sub_18BC21638();
    v23 = [v22 title];
    sub_18BC20BD8();

    sub_18BC217A8();
    v25 = v30;
    v24 = v31;
    (*(v30 + 16))(v6, v9, v31);
    sub_18BC1FCB8();
    v26 = v22;
    v27 = sub_18BC1FC68();
    sub_18BC1FC58();
    v27(v32, 0);

    return (*(v25 + 8))(v9, v24);
  }

  return result;
}

double sub_18BA121A0()
{
  v0 = sub_18BC1EE48();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_18BC20B98();
  v5 = [objc_opt_self() systemImageNamed_];

  sub_18BC1EE38();
  v6 = sub_18BC1EE28();
  v8 = v7;
  (*(v1 + 8))(v3, v0);
  LOBYTE(xmmword_1EA9F7DD0) = 1;
  *(&xmmword_1EA9F7DD0 + 1) = *v12;
  DWORD1(xmmword_1EA9F7DD0) = *&v12[3];
  result = 0.0;
  *(&xmmword_1EA9F7DD0 + 8) = xmmword_18BC447F0;
  qword_1EA9F7DE8 = 0xE600000000000000;
  *&xmmword_1EA9F7DF0 = v5;
  WORD4(xmmword_1EA9F7DF0) = 0;
  BYTE10(xmmword_1EA9F7DF0) = 0;
  *(&xmmword_1EA9F7DF0 + 11) = v10[1];
  HIBYTE(xmmword_1EA9F7DF0) = v11;
  qword_1EA9F7E00 = 0;
  unk_1EA9F7E08 = 0;
  *&xmmword_1EA9F7E10 = v6;
  *(&xmmword_1EA9F7E10 + 1) = v8;
  return result;
}

uint64_t sub_18BA12344()
{
  sub_18BC22158();
  sub_18BC20C28();
  return sub_18BC221A8();
}

uint64_t sub_18BA12390()
{
  sub_18BC22158();
  sub_18BC20C28();
  return sub_18BC221A8();
}

unint64_t sub_18BA123FC()
{
  result = qword_1EA9D5D98;
  if (!qword_1EA9D5D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D5D98);
  }

  return result;
}

unint64_t sub_18BA12454()
{
  result = qword_1EA9D5DA0;
  if (!qword_1EA9D5DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D5DA0);
  }

  return result;
}

uint64_t sub_18BA124D4()
{
  v0 = sub_18BC1F2C8();
  __swift_allocate_value_buffer(v0, qword_1EA9F7E38);
  __swift_project_value_buffer(v0, qword_1EA9F7E38);
  return sub_18BC1F2B8();
}

uint64_t sub_18BA12554()
{
  v0 = sub_18BC1F2C8();
  __swift_allocate_value_buffer(v0, qword_1EA9F7E50);
  __swift_project_value_buffer(v0, qword_1EA9F7E50);
  return sub_18BC1F2B8();
}

uint64_t sub_18BA12618()
{
  v0 = sub_18BC1F2C8();
  __swift_allocate_value_buffer(v0, qword_1EA9F7EE0);
  __swift_project_value_buffer(v0, qword_1EA9F7EE0);
  return sub_18BC1F2B8();
}

uint64_t sub_18BA126B0()
{
  v1 = *v0;
  if (*(v1 + 16) && (v2 = sub_18B7C4104(0xD000000000000012, 0x800000018BC62780), (v3 & 1) != 0) && (sub_18B7B193C(*(v1 + 56) + 32 * v2, v6), swift_dynamicCast()))
  {
    return v5;
  }

  else
  {
    return 256;
  }
}

unint64_t sub_18BA1274C()
{
  result = sub_18B82E2EC(MEMORY[0x1E69E7CC0]);
  qword_1EA9F7F10 = result;
  *algn_1EA9F7F18 = 0;
  qword_1EA9F7F20 = 0;
  unk_1EA9F7F28 = 0;
  qword_1EA9F7F30 = 1;
  unk_1EA9F7F38 = 0;
  qword_1EA9F7F40 = 0;
  unk_1EA9F7F48 = 0;
  return result;
}

uint64_t _s18ItemScrollPositionOwet(uint64_t a1, unsigned int a2)
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

uint64_t _s18ItemScrollPositionOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_18BA1288C(uint64_t a1)
{
  v2 = (v1 + OBJC_IVAR____SFFloatingTabBarItemView_configuration);
  v3 = *(v1 + OBJC_IVAR____SFFloatingTabBarItemView_configuration);
  v4 = *(v1 + OBJC_IVAR____SFFloatingTabBarItemView_configuration + 1);
  v5 = *(v1 + OBJC_IVAR____SFFloatingTabBarItemView_configuration + 2);
  v6 = *(v1 + OBJC_IVAR____SFFloatingTabBarItemView_configuration + 8);
  v7 = *(v1 + OBJC_IVAR____SFFloatingTabBarItemView_configuration + 16);
  v9 = *(v1 + OBJC_IVAR____SFFloatingTabBarItemView_configuration + 24);
  v8 = *(v1 + OBJC_IVAR____SFFloatingTabBarItemView_configuration + 32);
  v10 = *(a1 + 16);
  *v2 = *a1;
  *(v2 + 1) = v10;
  v11 = *(a1 + 32);
  *(v2 + 4) = v11;
  if (v3 != *v2 || ((v4 ^ v2[1]) & 1) != 0 || ((v5 ^ v2[2]) & 1) != 0 || ((v12 = *(v2 + 3), *(v2 + 1) == v6) ? (v13 = *(v2 + 2) == v7) : (v13 = 0), !v13 && (sub_18BC21FD8() & 1) == 0 || (v12 == v9 ? (v14 = v11 == v8) : (v14 = 0), !v14 && (sub_18BC21FD8() & 1) == 0)))
  {
    sub_18BA1307C();
  }
}

char *sub_18BA12978(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____SFFloatingTabBarItemView_configuration];
  *v9 = 0;
  v9[2] = 0;
  *(v9 + 1) = 0;
  *(v9 + 2) = 0xE000000000000000;
  *(v9 + 3) = 0;
  *(v9 + 4) = 0xE000000000000000;
  v10 = &v4[OBJC_IVAR____SFFloatingTabBarItemView_metrics];
  v11 = [objc_opt_self() preferredFontForTextStyle_];
  v12 = *(MEMORY[0x1E69DDCE0] + 16);
  *v10 = *MEMORY[0x1E69DDCE0];
  *(v10 + 1) = v12;
  *(v10 + 4) = v11;
  *(v10 + 40) = xmmword_18BC44A70;
  *(v10 + 56) = xmmword_18BC44A80;
  v13 = OBJC_IVAR____SFFloatingTabBarItemView_titleTextField;
  *&v4[v13] = [objc_allocWithZone(MEMORY[0x1E69DD0B0]) init];
  v14 = &v4[OBJC_IVAR____SFFloatingTabBarItemView_didBeginRetitling];
  *v14 = CGRectMake;
  *(v14 + 1) = 0;
  v15 = &v4[OBJC_IVAR____SFFloatingTabBarItemView_editingChangedHandler];
  *v15 = CGRectMake;
  *(v15 + 1) = 0;
  v16 = &v4[OBJC_IVAR____SFFloatingTabBarItemView_retitleHandler];
  *v16 = CGRectMake;
  *(v16 + 1) = 0;
  v17 = &v4[OBJC_IVAR____SFFloatingTabBarItemView_tapHandler];
  *v17 = CGRectMake;
  *(v17 + 1) = 0;
  v23.receiver = v4;
  v23.super_class = _s8ItemViewCMa();
  v18 = objc_msgSendSuper2(&v23, sel_initWithFrame_, a1, a2, a3, a4);
  v19 = *&v18[OBJC_IVAR____SFFloatingTabBarItemView_titleTextField];
  v20 = v18;
  [v19 setAdjustsFontForContentSizeCategory_];
  [v19 setAutocapitalizationType_];
  [v19 setAutoresizingMask_];
  [v19 setDelegate_];
  [v19 setEnablesReturnKeyAutomatically_];
  [v19 setFont_];
  [v20 bounds];
  [v19 setFrame_];
  [v19 setReturnKeyType_];
  [v19 setTextAlignment_];
  [v19 addTarget:v20 action:sel_editingChanged forControlEvents:0x20000];
  v21 = [objc_allocWithZone(MEMORY[0x1E69DD060]) initWithTarget:v20 action:sel_didReceiveTap];
  [v20 addGestureRecognizer_];

  [v20 addSubview_];
  sub_18BA1307C();

  return v20;
}

char *sub_18BA12C94(void *a1)
{
  v3 = &v1[OBJC_IVAR____SFFloatingTabBarItemView_configuration];
  *v3 = 0;
  v3[2] = 0;
  *(v3 + 1) = 0;
  *(v3 + 2) = 0xE000000000000000;
  *(v3 + 3) = 0;
  *(v3 + 4) = 0xE000000000000000;
  v4 = &v1[OBJC_IVAR____SFFloatingTabBarItemView_metrics];
  v5 = [objc_opt_self() preferredFontForTextStyle_];
  v6 = *(MEMORY[0x1E69DDCE0] + 16);
  *v4 = *MEMORY[0x1E69DDCE0];
  *(v4 + 1) = v6;
  *(v4 + 4) = v5;
  *(v4 + 40) = xmmword_18BC44A70;
  *(v4 + 56) = xmmword_18BC44A80;
  v7 = OBJC_IVAR____SFFloatingTabBarItemView_titleTextField;
  *&v1[v7] = [objc_allocWithZone(MEMORY[0x1E69DD0B0]) init];
  v8 = &v1[OBJC_IVAR____SFFloatingTabBarItemView_didBeginRetitling];
  *v8 = CGRectMake;
  *(v8 + 1) = 0;
  v9 = &v1[OBJC_IVAR____SFFloatingTabBarItemView_editingChangedHandler];
  *v9 = CGRectMake;
  *(v9 + 1) = 0;
  v10 = &v1[OBJC_IVAR____SFFloatingTabBarItemView_retitleHandler];
  *v10 = CGRectMake;
  *(v10 + 1) = 0;
  v11 = &v1[OBJC_IVAR____SFFloatingTabBarItemView_tapHandler];
  *v11 = CGRectMake;
  *(v11 + 1) = 0;
  v18.receiver = v1;
  v18.super_class = _s8ItemViewCMa();
  v12 = objc_msgSendSuper2(&v18, sel_initWithCoder_, a1);
  v13 = v12;
  if (v12)
  {
    v14 = *&v12[OBJC_IVAR____SFFloatingTabBarItemView_titleTextField];
    v15 = v12;
    [v14 setAdjustsFontForContentSizeCategory_];
    [v14 setAutocapitalizationType_];
    [v14 setAutoresizingMask_];
    [v14 setDelegate_];
    [v14 setEnablesReturnKeyAutomatically_];
    [v14 setFont_];
    [v15 bounds];
    [v14 setFrame_];
    [v14 setReturnKeyType_];
    [v14 setTextAlignment_];
    [v14 addTarget:v15 action:sel_editingChanged forControlEvents:0x20000];
    v16 = [objc_allocWithZone(MEMORY[0x1E69DD060]) initWithTarget:v15 action:sel_didReceiveTap];
    [v15 addGestureRecognizer_];

    [v15 addSubview_];
    sub_18BA1307C();
  }

  return v13;
}

uint64_t sub_18BA12FA0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  result = 0;
  if (*a1 == *a2 && ((a1[1] ^ a2[1]) & 1) == 0 && ((a1[2] ^ a2[2]) & 1) == 0)
  {
    if (v4 = *(a1 + 3), v5 = *(a1 + 4), v6 = *(a2 + 3), v7 = *(a2 + 4), *(a1 + 1) == *(a2 + 1)) && *(a1 + 2) == *(a2 + 2) || (v8 = sub_18BC21FD8(), result = 0, (v8))
    {
      if (v4 == v6 && v5 == v7)
      {
        return 1;
      }

      else
      {

        return sub_18BC21FD8();
      }
    }
  }

  return result;
}

void sub_18BA1307C()
{
  v1 = *(v0 + OBJC_IVAR____SFFloatingTabBarItemView_titleTextField);
  v2 = (v0 + OBJC_IVAR____SFFloatingTabBarItemView_configuration);
  [v1 setUserInteractionEnabled_];
  sub_18BC1E3F8();
  v3 = sub_18BC20B98();

  [v1 setPlaceholder_];

  if ((v2[1] & 1) == 0)
  {
    sub_18BC1E3F8();
    v4 = sub_18BC20B98();

    [v1 setText_];
  }

  if (v2[2] == 1)
  {
    v5 = objc_opt_self();
    v6 = &selRef_labelColor;
  }

  else
  {
    v7 = *v2;
    v5 = objc_opt_self();
    v6 = &selRef_secondaryLabelColor;
    if (v7)
    {
      v6 = &selRef_tertiaryLabelColor;
    }
  }

  v8 = [v5 *v6];
  [v1 setTextColor_];

  if (v2[1] == 1)
  {
    v16 = sub_18BC20B98();
    [v1 setAccessibilityIdentifier_];
  }

  else
  {
    v9 = sub_18BC20B98();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5DF0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18BC3E410;
    *(inited + 32) = 0x7463656C65537369;
    v11 = inited + 32;
    *(inited + 40) = 0xEA00000000006465;
    v12 = 1702195828;
    if (!v2[2])
    {
      v12 = 0x65736C6166;
    }

    v13 = 0xE500000000000000;
    if (v2[2])
    {
      v13 = 0xE400000000000000;
    }

    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 48) = v12;
    *(inited + 56) = v13;
    sub_18BA64DB8(inited);
    swift_setDeallocating();
    sub_18BA13828(v11);
    v14 = sub_18BC20998();

    v15 = WBSMakeAccessibilityIdentifier();

    if (!v15)
    {
      sub_18BC20BD8();
      v15 = sub_18BC20B98();
    }

    [v1 setAccessibilityIdentifier_];
  }
}

void sub_18BA133A0(char *a1, uint64_t a2, void *a3)
{
  v3 = *&a1[*a3];
  v5 = a1;
  v4 = sub_18BC1E1A8();
  v3(v4);
}

void *sub_18BA134C0(void *result)
{
  v2 = v1 + OBJC_IVAR____SFFloatingTabBarItemView_configuration;
  if (*(v1 + OBJC_IVAR____SFFloatingTabBarItemView_configuration + 1) == 1)
  {
    v3 = [result text];
    if (v3)
    {
      v4 = v3;
      v5 = sub_18BC20BD8();
      v7 = v6;
    }

    else
    {
      v5 = 0;
      v7 = 0xE000000000000000;
    }

    v8 = *(v2 + 2);
    v10 = *(v2 + 8);
    v9 = *(v2 + 16);
    v11 = *(v2 + 24);
    v12 = *(v2 + 32);
    v14[0] = *v2;
    v14[1] = 0;
    v14[2] = v8;
    v15 = v10;
    v16 = v9;
    v17 = v11;
    v18 = v12;
    sub_18BC1E3F8();
    sub_18BC1E3F8();
    sub_18BA1288C(v14);
    v13 = *(v1 + OBJC_IVAR____SFFloatingTabBarItemView_retitleHandler);
    sub_18BC1E1A8();
    v13(v5, v7);
  }

  return result;
}

id sub_18BA13670()
{
  v2.receiver = v0;
  v2.super_class = _s8ItemViewCMa();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_18BA13788(uint64_t a1, int a2)
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

uint64_t sub_18BA137D0(uint64_t result, int a2, int a3)
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

uint64_t sub_18BA13828(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5320);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy62_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 46) = *(a2 + 46);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

double sub_18BA138AC()
{
  if (qword_1EA9D2300 != -1)
  {
    swift_once();
  }

  v0 = byte_1EA9D5F37;
  if (qword_1EA9D2310 != -1)
  {
    swift_once();
  }

  v1 = byte_1EA9D5F39;
  if (qword_1EA9D22F8 != -1)
  {
    swift_once();
  }

  LOBYTE(xmmword_1EA9D5E38) = byte_1EA9D5F36;
  BYTE1(xmmword_1EA9D5E38) = v0;
  BYTE2(xmmword_1EA9D5E38) = 1;
  *(&xmmword_1EA9D5E38 + 1) = &unk_1EFF1A0F0;
  byte_1EA9D5E48 = 1;
  unk_1EA9D5E49 = 0;
  unk_1EA9D5E4D = 65793;
  unk_1EA9D5E51 = 257;
  result = 0.5;
  xmmword_1EA9D5E58 = xmmword_18BC44B40;
  qword_1EA9D5E68 = 0x4020000000000000;
  dword_1EA9D5E70 = 0;
  byte_1EA9D5E74 = v1;
  byte_1EA9D5E75 = 0;
  return result;
}

double sub_18BA139D0()
{
  if (qword_1EA9D2300 != -1)
  {
    swift_once();
  }

  v0 = byte_1EA9D5F37;
  if (qword_1EA9D2310 != -1)
  {
    swift_once();
  }

  v1 = byte_1EA9D5F39;
  if (qword_1EA9D22F8 != -1)
  {
    swift_once();
  }

  LOBYTE(xmmword_1EA9D5E78) = byte_1EA9D5F36;
  *(&xmmword_1EA9D5E78 + 1) = v0;
  *(&xmmword_1EA9D5E78 + 1) = &unk_1EFF1A118;
  byte_1EA9D5E88 = 1;
  unk_1EA9D5E89 = 0x101010100000000;
  unk_1EA9D5E91 = 257;
  result = 0.5;
  xmmword_1EA9D5E98 = xmmword_18BC44B40;
  qword_1EA9D5EA8 = 0x4020000000000000;
  dword_1EA9D5EB0 = 0;
  byte_1EA9D5EB4 = v1;
  byte_1EA9D5EB5 = 1;
  return result;
}

double sub_18BA13AF0()
{
  LOWORD(xmmword_1EA9D5EB8) = 0;
  BYTE2(xmmword_1EA9D5EB8) = 0;
  *(&xmmword_1EA9D5EB8 + 1) = MEMORY[0x1E69E7CC0];
  qword_1EA9D5EC8 = 0x1000001010000;
  word_1EA9D5ED0 = 257;
  byte_1EA9D5ED2 = 0;
  xmmword_1EA9D5ED8 = xmmword_18BC44B50;
  qword_1EA9D5EE8 = 0x403E000000000000;
  result = 7.29290211e-304;
  dword_1EA9D5EF0 = 16777472;
  word_1EA9D5EF4 = 1;
  return result;
}

double sub_18BA13B4C()
{
  if (qword_1EA9D2318 != -1)
  {
    swift_once();
  }

  v0 = byte_1EA9D5F3A;
  if (qword_1EA9D2328 != -1)
  {
    swift_once();
  }

  v1 = byte_1EA9D5F3C;
  if (qword_1EA9D2320 != -1)
  {
    swift_once();
  }

  v2 = byte_1EA9D5F3B;
  if (qword_1EA9D22F8 != -1)
  {
    swift_once();
  }

  LOBYTE(xmmword_1EA9D5EF8) = byte_1EA9D5F36;
  *(&xmmword_1EA9D5EF8 + 1) = 0;
  *(&xmmword_1EA9D5EF8 + 1) = MEMORY[0x1E69E7CC0];
  dword_1EA9D5F08 = 0x1000000;
  word_1EA9D5F0C = 1;
  byte_1EA9D5F0E = 0;
  byte_1EA9D5F0F = v0 ^ 1;
  byte_1EA9D5F10 = 0;
  byte_1EA9D5F11 = v1 ^ 1;
  byte_1EA9D5F12 = 0;
  result = 0.4;
  xmmword_1EA9D5F18 = xmmword_18BC44B50;
  qword_1EA9D5F28 = 0x403E000000000000;
  word_1EA9D5F30 = 256;
  byte_1EA9D5F32 = v2;
  unk_1EA9D5F33 = 256;
  byte_1EA9D5F35 = 0;
  return result;
}

void sub_18BA13CC0()
{
  if (qword_1EA9D22F8 != -1)
  {
    swift_once();
  }

  if (byte_1EA9D5F36 == 1)
  {
    v0 = [objc_opt_self() standardUserDefaults];
    v1 = sub_18BC20B98();
    v2 = [v0 BOOLForKey_];
  }

  else
  {
    v2 = 0;
  }

  byte_1EA9D5F37 = v2;
}

void sub_18BA13D98()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_18BC20B98();
  v2 = [v0 BOOLForKey_];

  byte_1EA9D5F38 = v2;
}

void sub_18BA13E28()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_18BC20B98();
  v2 = [v0 BOOLForKey_];

  byte_1EA9D5F3A = v2;
}

void sub_18BA13EB8()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_18BC20B98();
  v2 = [v0 BOOLForKey_];

  byte_1EA9D5F3B = v2;
}

void sub_18BA13F48()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_18BC20B98();
  v2 = [v0 BOOLForKey_];

  byte_1EA9D5F3C = v2;
}

uint64_t sub_18BA13FD8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6[0] = a1[2];
  *(v6 + 14) = *(a1 + 46);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8[0] = a2[2];
  *(v8 + 14) = *(a2 + 46);
  return sub_18B7EB864(v5, v7) & 1;
}

uint64_t sub_18BA14034(uint64_t a1)
{
  v2 = OBJC_IVAR___SFTabThumbnailView_iconRegistration;
  *(v1 + OBJC_IVAR___SFTabThumbnailView_iconRegistration) = a1;
  sub_18BC1E1A8();

  v3 = *(v1 + OBJC_IVAR___SFTabThumbnailView_pinnedTitleView);
  if (v3)
  {
    v4 = *(v1 + v2);
    sub_18BC1E1A8();
    v5 = v3;
    sub_18BAB7E78(v4);
  }
}

id sub_18BA140D0(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleViewRegistration];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 2) = 0u;
  *(v9 + 3) = 0u;
  *(v9 + 57) = 0u;
  v10 = &v4[OBJC_IVAR___SFTabThumbnailView_closeHandler];
  *v10 = CGRectMake;
  *(v10 + 1) = 0;
  v11 = &v4[OBJC_IVAR___SFTabThumbnailView_configuration];
  *v11 = 0;
  *(v11 + 1) = 0;
  *(v11 + 2) = 0;
  *(v11 + 3) = 1;
  *(v11 + 4) = MEMORY[0x1E69E7CC0];
  *(v11 + 5) = 1;
  *(v11 + 3) = 0u;
  *(v11 + 4) = 0u;
  *(v11 + 10) = 0;
  *&v4[OBJC_IVAR___SFTabThumbnailView_iconRegistration] = 0;
  v12 = &v4[OBJC_IVAR___SFTabThumbnailView_unpinHandler];
  *v12 = CGRectMake;
  *(v12 + 1) = 0;
  v13 = OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleContainerView;
  *&v4[v13] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v14 = OBJC_IVAR___SFTabThumbnailView_borrowedContentContainerView;
  *&v4[v14] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  *&v4[OBJC_IVAR___SFTabThumbnailView_borrowedContentView] = 0;
  v15 = OBJC_IVAR___SFTabThumbnailView_borrowedContentMatchMoveReferenceView;
  *&v4[v15] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v16 = OBJC_IVAR___SFTabThumbnailView_capsuleMatchMoveReferenceView;
  *&v4[v16] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v17 = OBJC_IVAR___SFTabThumbnailView_contentView;
  *&v4[v17] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v18 = OBJC_IVAR___SFTabThumbnailView_controlsContainerView;
  type metadata accessor for BlurrableView();
  *&v4[v18] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v19 = OBJC_IVAR___SFTabThumbnailView_leadingCornerButton;
  _s12CornerButtonCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v4[v19] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v21 = OBJC_IVAR___SFTabThumbnailView_participantsView;
  *&v4[v21] = [objc_allocWithZone(SFAvatarStackView) init];
  *&v4[OBJC_IVAR___SFTabThumbnailView_pinnedTitleView] = 0;
  v22 = OBJC_IVAR___SFTabThumbnailView_shadowView;
  *&v4[v22] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v23 = OBJC_IVAR___SFTabThumbnailView_snapshotContainerView;
  *&v4[v23] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v24 = OBJC_IVAR___SFTabThumbnailView_snapshotImageView;
  *&v4[v24] = [objc_allocWithZone(SFSnapshotImageView) init];
  v25 = OBJC_IVAR___SFTabThumbnailView_trailingCornerButton;
  *&v4[v25] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v4[OBJC_IVAR___SFTabThumbnailView_contentScale] = 0x3FF0000000000000;
  *&v4[OBJC_IVAR___SFTabThumbnailView_controlsVisibility] = 0;
  swift_unknownObjectWeakInit();
  v26 = OBJC_IVAR___SFTabThumbnailView_matchMovedViews;
  *&v4[v26] = [objc_opt_self() weakObjectsHashTable];
  *&v4[OBJC_IVAR___SFTabThumbnailView____lazy_storage___attachedCapsuleVisibility] = 0;
  v27 = &v4[OBJC_IVAR___SFTabThumbnailView_borrowedContentMetrics];
  v28 = *(MEMORY[0x1E69DDCE0] + 16);
  *v27 = *MEMORY[0x1E69DDCE0];
  *(v27 + 1) = v28;
  *(v27 + 4) = 0;
  *(v27 + 5) = 0;
  v29 = &v4[OBJC_IVAR___SFTabThumbnailView_metrics];
  v35 = 1;
  v34 = 1;
  *v29 = 0u;
  *(v29 + 1) = 0u;
  v29[32] = 1;
  *(v29 + 5) = 0;
  *(v29 + 6) = 0;
  v29[56] = 1;
  *(v29 + 4) = xmmword_18BC42B90;
  *(v29 + 5) = xmmword_18BC44BC0;
  *(v29 + 6) = vdupq_n_s64(0x404E000000000000uLL);
  *(v29 + 7) = xmmword_18BC3FC80;
  *(v29 + 8) = xmmword_18BC42BC0;
  *(v29 + 9) = xmmword_18BC42BD0;
  *(v29 + 20) = 0x403E000000000000;
  v30 = &v4[OBJC_IVAR___SFTabThumbnailView_restingSize];
  *v30 = 0;
  *(v30 + 1) = 0;
  v30[16] = 1;
  *&v4[OBJC_IVAR___SFTabThumbnailView_snapshotRegistration] = 0;
  v33.receiver = v4;
  v33.super_class = type metadata accessor for TabThumbnailView();
  v31 = objc_msgSendSuper2(&v33, sel_initWithFrame_, a1, a2, a3, a4);
  sub_18BA1489C();

  return v31;
}

id sub_18BA144C0(void *a1)
{
  v3 = &v1[OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleViewRegistration];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 2) = 0u;
  *(v3 + 3) = 0u;
  *(v3 + 57) = 0u;
  v4 = &v1[OBJC_IVAR___SFTabThumbnailView_closeHandler];
  *v4 = CGRectMake;
  *(v4 + 1) = 0;
  v5 = &v1[OBJC_IVAR___SFTabThumbnailView_configuration];
  *v5 = 0;
  *(v5 + 1) = 0;
  *(v5 + 2) = 0;
  *(v5 + 3) = 1;
  *(v5 + 4) = MEMORY[0x1E69E7CC0];
  *(v5 + 5) = 1;
  *(v5 + 3) = 0u;
  *(v5 + 4) = 0u;
  *(v5 + 10) = 0;
  *&v1[OBJC_IVAR___SFTabThumbnailView_iconRegistration] = 0;
  v6 = &v1[OBJC_IVAR___SFTabThumbnailView_unpinHandler];
  *v6 = CGRectMake;
  *(v6 + 1) = 0;
  v7 = OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleContainerView;
  *&v1[v7] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v8 = OBJC_IVAR___SFTabThumbnailView_borrowedContentContainerView;
  *&v1[v8] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  *&v1[OBJC_IVAR___SFTabThumbnailView_borrowedContentView] = 0;
  v9 = OBJC_IVAR___SFTabThumbnailView_borrowedContentMatchMoveReferenceView;
  *&v1[v9] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v10 = OBJC_IVAR___SFTabThumbnailView_capsuleMatchMoveReferenceView;
  *&v1[v10] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v11 = OBJC_IVAR___SFTabThumbnailView_contentView;
  *&v1[v11] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v12 = OBJC_IVAR___SFTabThumbnailView_controlsContainerView;
  type metadata accessor for BlurrableView();
  *&v1[v12] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v13 = OBJC_IVAR___SFTabThumbnailView_leadingCornerButton;
  _s12CornerButtonCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v1[v13] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v15 = OBJC_IVAR___SFTabThumbnailView_participantsView;
  *&v1[v15] = [objc_allocWithZone(SFAvatarStackView) init];
  *&v1[OBJC_IVAR___SFTabThumbnailView_pinnedTitleView] = 0;
  v16 = OBJC_IVAR___SFTabThumbnailView_shadowView;
  *&v1[v16] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v17 = OBJC_IVAR___SFTabThumbnailView_snapshotContainerView;
  *&v1[v17] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v18 = OBJC_IVAR___SFTabThumbnailView_snapshotImageView;
  *&v1[v18] = [objc_allocWithZone(SFSnapshotImageView) init];
  v19 = OBJC_IVAR___SFTabThumbnailView_trailingCornerButton;
  *&v1[v19] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v1[OBJC_IVAR___SFTabThumbnailView_contentScale] = 0x3FF0000000000000;
  *&v1[OBJC_IVAR___SFTabThumbnailView_controlsVisibility] = 0;
  swift_unknownObjectWeakInit();
  v20 = OBJC_IVAR___SFTabThumbnailView_matchMovedViews;
  *&v1[v20] = [objc_opt_self() weakObjectsHashTable];
  *&v1[OBJC_IVAR___SFTabThumbnailView____lazy_storage___attachedCapsuleVisibility] = 0;
  v21 = &v1[OBJC_IVAR___SFTabThumbnailView_borrowedContentMetrics];
  v22 = *(MEMORY[0x1E69DDCE0] + 16);
  *v21 = *MEMORY[0x1E69DDCE0];
  *(v21 + 1) = v22;
  *(v21 + 4) = 0;
  *(v21 + 5) = 0;
  v23 = &v1[OBJC_IVAR___SFTabThumbnailView_metrics];
  v31 = 1;
  v30 = 1;
  *v23 = 0u;
  *(v23 + 1) = 0u;
  v23[32] = 1;
  *(v23 + 5) = 0;
  *(v23 + 6) = 0;
  v23[56] = 1;
  *(v23 + 4) = xmmword_18BC42B90;
  *(v23 + 5) = xmmword_18BC44BC0;
  *(v23 + 6) = vdupq_n_s64(0x404E000000000000uLL);
  *(v23 + 7) = xmmword_18BC3FC80;
  *(v23 + 8) = xmmword_18BC42BC0;
  *(v23 + 9) = xmmword_18BC42BD0;
  *(v23 + 20) = 0x403E000000000000;
  v24 = &v1[OBJC_IVAR___SFTabThumbnailView_restingSize];
  *v24 = 0;
  *(v24 + 1) = 0;
  v24[16] = 1;
  *&v1[OBJC_IVAR___SFTabThumbnailView_snapshotRegistration] = 0;
  v29.receiver = v1;
  v29.super_class = type metadata accessor for TabThumbnailView();
  v25 = objc_msgSendSuper2(&v29, sel_initWithCoder_, a1);
  v26 = v25;
  if (v25)
  {
    v27 = v25;
    sub_18BA1489C();
  }

  return v26;
}

uint64_t sub_18BA1489C()
{
  v1 = *&v0[OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleContainerView];
  v37 = v1;
  [v1 setClipsToBounds_];
  [v1 setHidden_];
  v2 = *&v0[OBJC_IVAR___SFTabThumbnailView_borrowedContentContainerView];
  [v2 setClipsToBounds_];
  v36 = *&v0[OBJC_IVAR___SFTabThumbnailView_borrowedContentMatchMoveReferenceView];
  [v36 setUserInteractionEnabled_];
  v3 = *&v0[OBJC_IVAR___SFTabThumbnailView_capsuleMatchMoveReferenceView];
  [v3 setUserInteractionEnabled_];
  v4 = *&v0[OBJC_IVAR___SFTabThumbnailView_participantsView];
  [v4 setAlignment_];
  [v4 setAvatarDiameter_];
  v35 = *&v0[OBJC_IVAR___SFTabThumbnailView_trailingCornerButton];
  [v35 addTarget:v0 action:sel_trailingCornerButtonReceivedTap forControlEvents:64];
  v5 = *&v0[OBJC_IVAR___SFTabThumbnailView_shadowView];
  v6 = [v5 layer];
  [v6 setShadowOffset_];
  LODWORD(v7) = 1045220557;
  [v6 setShadowOpacity_];
  [v6 setShadowPathIsBounds_];
  [v6 setShadowRadius_];
  v8 = *&v0[OBJC_IVAR___SFTabThumbnailView_snapshotImageView];
  [v8 setClipsToBounds_];
  [v8 setContentMode_];
  v9 = [v8 &selRef_is2024ReadingListEnabled];
  [v9 setMinificationFilter_];

  v10 = [objc_opt_self() configurationWithTextStyle:*MEMORY[0x1E69DDD58] scale:3];
  [v8 setPreferredSymbolConfiguration_];

  v11 = objc_opt_self();
  v12 = [v11 systemFillColor];
  [v8 setTintColor_];

  v13 = *&v0[OBJC_IVAR___SFTabThumbnailView_snapshotContainerView];
  v14 = [v11 systemBackgroundColor];
  [v13 setBackgroundColor_];

  [v0 addSubview_];
  v15 = *&v0[OBJC_IVAR___SFTabThumbnailView_contentView];
  [v0 addSubview_];
  [v15 addSubview_];
  v16 = *&v0[OBJC_IVAR___SFTabThumbnailView_controlsContainerView];
  [v15 addSubview_];
  [v15 addSubview_];
  [v2 addSubview_];
  [v16 addSubview_];
  [v16 addSubview_];
  [v16 addSubview_];
  [v13 addSubview_];
  [v13 addSubview_];
  [v13 addSubview_];
  [v13 addSubview_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D51E0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_18BC3E410;
  v18 = sub_18BC1F6A8();
  v19 = MEMORY[0x1E69DC050];
  *(v17 + 32) = v18;
  *(v17 + 40) = v19;
  v40 = type metadata accessor for TabThumbnailView();
  v39[0] = v0;
  v20 = v0;
  MEMORY[0x18CFFCA50](v17, v39, sel_displayScaleDidChange);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm(v39);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_18BC3E410;
  v22 = sub_18BC1FF28();
  v23 = MEMORY[0x1E69DC2B0];
  *(v21 + 32) = v22;
  *(v21 + 40) = v23;
  MEMORY[0x18CFFCA40](v21, sel_contentSizeCategoryDidChange);
  swift_unknownObjectRelease();

  memset(v39, 0, sizeof(v39));
  v40 = 1;
  v41 = MEMORY[0x1E69E7CC0];
  v42 = 1;
  v43 = 0u;
  v44 = 0u;
  v45 = 0;
  sub_18BA15244(v39);
  sub_18BA1A688(v39);
  sub_18BA165F8();
  sub_18BA15D30();
  v24 = [v20 traitCollection];
  [v24 displayScale];
  v26 = v25;

  v27 = [v8 layer];
  [v27 setRasterizationScale_];

  v28 = swift_allocObject();
  *(v28 + 16) = v20;
  v29 = objc_opt_self();
  v30 = swift_allocObject();
  *(v30 + 16) = sub_18BA1A904;
  *(v30 + 24) = v28;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_18B9D53AC;
  *(v31 + 24) = v30;
  aBlock[4] = sub_18B9D53B0;
  aBlock[5] = v31;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_18B7E3BF4;
  aBlock[3] = &block_descriptor_206;
  v32 = _Block_copy(aBlock);
  v33 = v20;
  sub_18BC1E1A8();
  sub_18BC1E1A8();

  [v29 performWithoutAnimation_];
  _Block_release(v32);
  LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

  if (v20)
  {
    __break(1u);
  }

  return result;
}

void sub_18BA14FAC(void *a1)
{
  v2 = v1;
  v3 = a1;
  v4 = OBJC_IVAR___SFTabThumbnailView_borrowedContentView;
  v5 = *(v1 + OBJC_IVAR___SFTabThumbnailView_borrowedContentView);
  if (v5)
  {
    if (!a1)
    {
      goto LABEL_7;
    }

    sub_18B7B0AC0(0, &qword_1EA9D46F0);
    v6 = v5;
    v3 = v3;
    v7 = sub_18BC215C8();

    if (v7)
    {
      return;
    }
  }

  else if (!a1)
  {
    return;
  }

  v8 = v3;
  v9 = [v8 layer];
  v10 = sub_18BC20B98();
  [v9 removeAnimationForKey_];

  v11 = [v8 layer];
  [v11 setMinificationFilter_];

  v5 = *(v2 + v4);
  if (!v5)
  {
    v17 = 1;
    goto LABEL_9;
  }

LABEL_7:
  v12 = *(v2 + OBJC_IVAR___SFTabThumbnailView_borrowedContentMatchMoveReferenceView);
  v13 = v5;
  v14 = [v13 layer];
  v15 = [v12 layer];
  sub_18BAE31BC(v15);

  v16 = [v13 layer];
  [v16 setMinificationFilter_];
  [*(v2 + OBJC_IVAR___SFTabThumbnailView_borrowedContentContainerView) addSubview_];

  v17 = *(v2 + v4) == 0;
LABEL_9:
  v18 = *(v2 + OBJC_IVAR___SFTabThumbnailView_borrowedContentContainerView);

  [v18 setHidden_];
}

BOOL sub_18BA151D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v7[4] = *(a1 + 64);
  v8 = *(a1 + 80);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v9[4] = *(a2 + 64);
  v10 = *(a2 + 80);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_18BA1A010(v7, v9);
}

__CFString *sub_18BA15244(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR___SFTabThumbnailView_configuration];
  v5 = *&v1[OBJC_IVAR___SFTabThumbnailView_configuration + 48];
  *v79 = *&v1[OBJC_IVAR___SFTabThumbnailView_configuration + 32];
  *&v79[16] = v5;
  v80 = *&v1[OBJC_IVAR___SFTabThumbnailView_configuration + 64];
  v81 = *&v1[OBJC_IVAR___SFTabThumbnailView_configuration + 80];
  v6 = *&v1[OBJC_IVAR___SFTabThumbnailView_configuration + 16];
  v77 = *&v1[OBJC_IVAR___SFTabThumbnailView_configuration];
  v78 = v6;
  v7 = v77;
  if (v77)
  {
    v8 = objc_opt_self();
    sub_18BA1A650(&v77, &v67);
    v9 = [v8 systemRedColor];
    result = SFSystemImageNameForMediaStateIcon(v7);
    if (!result)
    {
LABEL_24:
      __break(1u);
      return result;
    }

    v11 = result;
    v12 = [objc_opt_self() systemImageNamed_];

    v13 = [v8 systemWhiteColor];
    v67 = v9;
    v68 = v12;
    v69 = 0;
    v70 = v13;
    v71 = 0;
    sub_18BA6F474(&v67);
  }

  else
  {
    sub_18BA1A650(&v77, &v67);
  }

  v60 = v2;
  v14 = *&v79[8];
  if (*&v79[8] != 1)
  {
    v16 = *(&v80 + 1);
    v15 = v81;
    v17 = v7;
    v19 = *&v79[24];
    v18 = v80;
    v20 = a1;
    v21 = *&v79[16];
    v72 = *&v79[8];
    v73 = *&v79[24];
    v74 = v80 & 0x101;
    v75 = *(&v80 + 1);
    v76 = v81;
    sub_18BA1A898(*&v79[8], *&v79[16], *&v79[24], v80, *(&v80 + 1), v81);
    sub_18BA6F474(&v72);
    v22 = v21;
    a1 = v20;
    v23 = v18;
    v7 = v17;
    sub_18BA1A4DC(v14, v22, v19, v23, v16, v15);
  }

  v24 = *(v4 + 3);
  if (v24 == 1)
  {
    v25 = v60;
    v26 = *&v60[OBJC_IVAR___SFTabThumbnailView_pinnedTitleView];
    if (v26)
    {
      *&v60[OBJC_IVAR___SFTabThumbnailView_pinnedTitleView] = 0;
      v27 = objc_opt_self();
      v28 = swift_allocObject();
      *(v28 + 16) = v26;
      v65 = sub_18BA1A808;
      v66 = v28;
      aBlock = MEMORY[0x1E69E9820];
      v62 = 1107296256;
      v63 = sub_18B7B0DB0;
      v64 = &block_descriptor_166;
      v29 = _Block_copy(&aBlock);
      v30 = v26;

      v31 = swift_allocObject();
      *(v31 + 16) = v30;
      v65 = sub_18BA1A81C;
      v66 = v31;
      aBlock = MEMORY[0x1E69E9820];
      v62 = 1107296256;
      v63 = sub_18BA89100;
      v64 = &block_descriptor_172;
      v32 = _Block_copy(&aBlock);
      v33 = v30;
      v25 = v60;

      [v27 _animateUsingDefaultTimingWithOptions_animations_completion_];

      _Block_release(v32);
      _Block_release(v29);
    }

    goto LABEL_15;
  }

  v35 = *(v4 + 1);
  v34 = *(v4 + 2);
  v36 = OBJC_IVAR___SFTabThumbnailView_pinnedTitleView;
  v25 = v60;
  v37 = *&v60[OBJC_IVAR___SFTabThumbnailView_pinnedTitleView];
  if (v37)
  {
    sub_18BC1E3F8();
    goto LABEL_14;
  }

  v55 = v35;
  v57 = v34;
  v58 = v7;
  v59 = a1;
  _s15PinnedTitleViewCMa();
  v38 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_18BC1E3F8();
  v39 = [v38 init];
  v40 = sub_18BC1E1A8();
  sub_18BAB7E78(v40);

  v41 = *&v60[v36];
  v56 = v36;
  *&v60[v36] = v39;
  v42 = v39;

  [*&v60[OBJC_IVAR___SFTabThumbnailView_controlsContainerView] addSubview_];
  v43 = swift_allocObject();
  *(v43 + 16) = v60;
  *(v43 + 24) = v42;
  v35 = objc_opt_self();
  v44 = swift_allocObject();
  *(v44 + 16) = sub_18BA1A82C;
  *(v44 + 24) = v43;
  v45 = swift_allocObject();
  *(v45 + 16) = sub_18B9D53AC;
  *(v45 + 24) = v44;
  v65 = sub_18B9D53B0;
  v66 = v45;
  aBlock = MEMORY[0x1E69E9820];
  v62 = 1107296256;
  v63 = sub_18B7E3BF4;
  v64 = &block_descriptor_186;
  v46 = _Block_copy(&aBlock);
  v47 = v42;
  v48 = v60;
  sub_18BC1E1A8();
  sub_18BC1E1A8();

  [v35 performWithoutAnimation_];
  _Block_release(v46);
  LOBYTE(v41) = swift_isEscapingClosureAtFileLocation();

  if (v41)
  {
    __break(1u);
    goto LABEL_24;
  }

  v49 = swift_allocObject();
  *(v49 + 16) = v47;
  v65 = sub_18BA1A884;
  v66 = v49;
  aBlock = MEMORY[0x1E69E9820];
  v62 = 1107296256;
  v63 = sub_18B7B0DB0;
  v64 = &block_descriptor_192;
  v50 = _Block_copy(&aBlock);
  v51 = v47;

  [v35 _animateUsingDefaultTimingWithOptions_animations_completion_];

  _Block_release(v50);
  v34 = v57;
  v37 = *&v60[v56];
  v7 = v58;
  a1 = v59;
  LOBYTE(v35) = v55;
  if (!v37)
  {
    sub_18BA1A6B8(v55, v57, v24);
    goto LABEL_15;
  }

LABEL_14:
  v52 = v37;
  sub_18BAB6E04(v35 & 1, v34, v24);

LABEL_15:
  if ((v7 != 0) == (*a1 == 0))
  {
    sub_18BA159E0(*&v25[OBJC_IVAR___SFTabThumbnailView_leadingCornerButton], v7 != 0);
  }

  if ((v14 != 1) == (a1[5] == 1))
  {
    sub_18BA159E0(*&v25[OBJC_IVAR___SFTabThumbnailView_trailingCornerButton], v14 != 1);
  }

  if ((*(&v78 + 1) != 1) == (a1[3] == 1))
  {
    sub_18BA15D30();
  }

  sub_18BA15E70();
  v53 = *&v25[OBJC_IVAR___SFTabThumbnailView_participantsView];
  sub_18B7B0AC0(0, &qword_1ED6511A8);
  v54 = sub_18BC20D88();
  [v53 setShareParticipants_];

  return sub_18BA1A688(&v77);
}

uint64_t sub_18BA159E0(void *a1, char a2)
{
  type metadata accessor for AnimationSettings();
  inited = swift_initStaticObject();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = v2;
  v7 = objc_opt_self();
  v8 = swift_allocObject();
  v8[2] = inited;
  v8[3] = sub_18BA1A7F8;
  v8[4] = v6;
  v18 = sub_18B7D80AC;
  v19 = v8;
  v14 = MEMORY[0x1E69E9820];
  v15 = 1107296256;
  v16 = sub_18B7B0DB0;
  v17 = &block_descriptor_157;
  v9 = _Block_copy(&v14);
  swift_retain_n();
  v10 = a1;
  v11 = v2;
  sub_18BC1E1A8();

  v18 = CGRectMake;
  v19 = 0;
  v14 = MEMORY[0x1E69E9820];
  v15 = 1107296256;
  v16 = sub_18B8043A0;
  v17 = &block_descriptor_160;
  v12 = _Block_copy(&v14);

  [v7 _animateUsingSpringBehavior_tracking_animations_completion_];
  _Block_release(v12);
  _Block_release(v9);
}

id sub_18BA15BE8(void *a1, char a2, uint64_t a3)
{
  v6 = sub_18BA6D1C4();
  v7 = v6;
  if (a2)
  {
    v8 = 0.0;
    v9 = 1.0;
  }

  else
  {
    v8 = *(a3 + OBJC_IVAR___SFTabThumbnailView_metrics + 88);
    v9 = 0.0;
  }

  [v6 setValue_];

  return [a1 setAlpha_];
}

id sub_18BA15C80(uint64_t a1, CGFloat a2)
{
  *(a1 + OBJC_IVAR___SFTabThumbnailView_contentScale) = a2;
  CGAffineTransformMakeScale(&v11, a2, a2);
  a = v11.a;
  b = v11.b;
  c = v11.c;
  d = v11.d;
  tx = v11.tx;
  ty = v11.ty;
  [*(a1 + OBJC_IVAR___SFTabThumbnailView_shadowView) setTransform_];
  v9 = *(a1 + OBJC_IVAR___SFTabThumbnailView_contentView);
  v11.a = a;
  v11.b = b;
  v11.c = c;
  v11.d = d;
  v11.tx = tx;
  v11.ty = ty;
  return [v9 setTransform_];
}

id sub_18BA15D30()
{
  v1 = v0;
  v2 = OBJC_IVAR___SFTabThumbnailView_controlsVisibility;
  [*(v0 + OBJC_IVAR___SFTabThumbnailView_controlsContainerView) setAlpha_];
  v3 = sub_18B7DE654();
  v4 = 1.0;
  [v3 setValue_];

  v5 = *(v1 + OBJC_IVAR___SFTabThumbnailView_snapshotImageView);
  if (*(v1 + OBJC_IVAR___SFTabThumbnailView_configuration + 24) != 1)
  {
    v4 = 1.0 - *(v1 + v2);
  }

  return [v5 setAlpha_];
}

void sub_18BA15E70()
{
  v1 = sub_18BC1EE48();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v32 - v6;
  v8 = *(v0 + OBJC_IVAR___SFTabThumbnailView_trailingCornerButton);
  if (*(v0 + OBJC_IVAR___SFTabThumbnailView_configuration + 24) == 1)
  {
    v9 = OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView12CornerButton_menu;
    v10 = *&v8[OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView12CornerButton_menu];
    *&v8[OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView12CornerButton_menu] = 0;

    v11 = *&v8[v9] != 0;
    [v8 setContextMenuInteractionEnabled_];

    [v8 setShowsMenuAsPrimaryAction_];
  }

  else
  {
    v12 = *(v0 + OBJC_IVAR___SFTabThumbnailView_closeHandler);
    v35 = *(v0 + OBJC_IVAR___SFTabThumbnailView_closeHandler + 8);
    v36 = v12;
    v13 = *(v0 + OBJC_IVAR___SFTabThumbnailView_unpinHandler);
    v14 = *(v0 + OBJC_IVAR___SFTabThumbnailView_unpinHandler + 8);
    v34 = v13;
    v38 = v14;
    v37 = sub_18B7B0AC0(0, &unk_1EA9DADD0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_18BC41E60;
    v39 = sub_18B7B0AC0(0, &qword_1EA9D52D0);
    sub_18BC1E1A8();
    sub_18BC1E1A8();
    sub_18BC1EE38();
    v32 = sub_18BC1EE28();
    v15 = *(v2 + 8);
    v15(v7, v1);
    v16 = sub_18BC20B98();
    v17 = objc_opt_self();
    v18 = [v17 systemImageNamed_];

    v19 = swift_allocObject();
    *(v19 + 16) = v34;
    *(v19 + 24) = v38;
    sub_18BC1E1A8();
    v20 = sub_18BC215E8();
    v21 = v33;
    *(v33 + 32) = v20;
    sub_18BC1EE38();
    sub_18BC1EE38();
    sub_18BC1EE18();
    v34 = v22;
    v15(v5, v1);
    v15(v7, v1);
    v23 = sub_18BC20B98();
    v24 = [v17 systemImageNamed_];

    v25 = swift_allocObject();
    v26 = v35;
    *(v25 + 16) = v36;
    *(v25 + 24) = v26;
    sub_18BC1E1A8();
    *(v21 + 40) = sub_18BC215E8();
    v27 = sub_18BC214D8();

    v28 = OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView12CornerButton_menu;
    v29 = *&v8[OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView12CornerButton_menu];
    *&v8[OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView12CornerButton_menu] = v27;
    v30 = v27;

    v31 = *&v8[v28] != 0;
    [v8 setContextMenuInteractionEnabled_];
    [v8 setShowsMenuAsPrimaryAction_];
  }
}

void *sub_18BA16374(uint64_t a1, double a2, double a3)
{
  v7 = &v3[OBJC_IVAR___SFTabThumbnailView_configuration];
  if (!*&v3[OBJC_IVAR___SFTabThumbnailView_configuration] || (v8 = *&v3[OBJC_IVAR___SFTabThumbnailView_leadingCornerButton], (UIViewIgnoresTouchEvents() & 1) != 0) || ([v3 convertPoint:v8 toCoordinateSpace:{a2, a3}], (objc_msgSend(v8, sel_pointInside_withEvent_, a1) & 1) == 0))
  {
    if (*(v7 + 5) == 1)
    {
      return 0;
    }

    v8 = *&v3[OBJC_IVAR___SFTabThumbnailView_trailingCornerButton];
    if (UIViewIgnoresTouchEvents())
    {
      return 0;
    }

    [v3 convertPoint:v8 toCoordinateSpace:{a2, a3}];
    if (![v8 pointInside:a1 withEvent:?])
    {
      return 0;
    }
  }

  v9 = v8;
  return v8;
}

id sub_18BA165F8()
{
  v1 = [v0 traitCollection];
  v2 = &v0[OBJC_IVAR___SFTabThumbnailView_metrics];
  v36 = *&v0[OBJC_IVAR___SFTabThumbnailView_metrics + 96];
  v38 = *&v0[OBJC_IVAR___SFTabThumbnailView_metrics + 112];
  v40 = *&v0[OBJC_IVAR___SFTabThumbnailView_metrics + 128];
  v42 = *&v0[OBJC_IVAR___SFTabThumbnailView_metrics + 144];
  v28 = *&v0[OBJC_IVAR___SFTabThumbnailView_metrics + 32];
  v30 = *&v0[OBJC_IVAR___SFTabThumbnailView_metrics + 48];
  v32 = *&v0[OBJC_IVAR___SFTabThumbnailView_metrics + 64];
  v34 = *&v0[OBJC_IVAR___SFTabThumbnailView_metrics + 80];
  v24 = *&v0[OBJC_IVAR___SFTabThumbnailView_metrics];
  v26 = *&v0[OBJC_IVAR___SFTabThumbnailView_metrics + 16];
  if (qword_1EA9D2350 != -1)
  {
    swift_once();
  }

  [qword_1EA9F7FB8 scaledValueForValue:v1 compatibleWithTraitCollection:{30.0, v24, v26, v28, v30, v32, v34, v36, v38, v40, v42}];
  v4 = fmax(v3, 30.0);
  v5 = [v1 preferredContentSizeCategory];
  v6 = sub_18BC21438();

  v7 = 1.0;
  v8 = *(v2 + 7);
  if (v6)
  {
    v7 = 2.0;
  }

  v9 = *(v2 + 9);
  v46[8] = *(v2 + 8);
  v46[9] = v9;
  v10 = *(v2 + 20);
  v12 = *(v2 + 2);
  v11 = *(v2 + 3);
  *(v2 + 2) = v29;
  *(v2 + 3) = v31;
  v14 = *(v2 + 3);
  v13 = *(v2 + 4);
  *(v2 + 4) = v33;
  v16 = *(v2 + 4);
  v15 = *(v2 + 5);
  v46[4] = v13;
  v46[5] = v15;
  *(v2 + 5) = v35;
  v17 = *(v2 + 5);
  v46[6] = *(v2 + 6);
  v46[7] = v8;
  v18 = *(v2 + 1);
  v46[0] = *v2;
  v46[1] = v18;
  v46[2] = v12;
  v46[3] = v11;
  *(v2 + 6) = v37;
  *(v2 + 7) = v39;
  *(v2 + 8) = v41;
  *(v2 + 9) = v43;
  *v2 = v25;
  *(v2 + 1) = v27;
  *(v2 + 20) = v4 * v7;
  v19 = *(v2 + 7);
  v20 = *(v2 + 8);
  v44[6] = v37;
  v44[7] = v19;
  v21 = *(v2 + 9);
  v44[8] = v20;
  v44[9] = v21;
  v47 = v10;
  v44[2] = v29;
  v44[3] = v14;
  v44[4] = v16;
  v44[5] = v17;
  v22 = *(v2 + 1);
  v44[0] = *v2;
  v44[1] = v22;
  v45 = *(v2 + 20);
  if (!sub_18BA1A2E4(v44, v46))
  {
    sub_18BA18DB4();
  }

  return [v0 setNeedsLayout];
}

id sub_18BA168D0()
{
  v1 = *(v0 + OBJC_IVAR___SFTabThumbnailView_borrowedContentContainerView);
  [*(v0 + OBJC_IVAR___SFTabThumbnailView_snapshotContainerView) bounds];
  result = [v1 setFrame_];
  v3 = (v0 + OBJC_IVAR___SFTabThumbnailView_borrowedContentMetrics);
  v4 = *(v0 + OBJC_IVAR___SFTabThumbnailView_borrowedContentMetrics + 32);
  if (v4 != 0.0)
  {
    v5 = v3[5];
    if (v5 != 0.0)
    {
      if ([objc_opt_self() isSolariumEnabled])
      {

        return sub_18BA16A8C(v4, v5);
      }

      else
      {
        v6 = v0 + OBJC_IVAR___SFTabThumbnailView_metrics;
        v7 = (v0 + OBJC_IVAR___SFTabThumbnailView_metrics + 8);
        if (*(v0 + OBJC_IVAR___SFTabThumbnailView_metrics + 32))
        {
          v7 = (MEMORY[0x1E69DDCE0] + 8);
        }

        v8 = *v7;
        if (*(v0 + OBJC_IVAR___SFTabThumbnailView_metrics + 32))
        {
          v9 = (MEMORY[0x1E69DDCE0] + 24);
        }

        else
        {
          v9 = (v0 + OBJC_IVAR___SFTabThumbnailView_metrics + 24);
        }

        v10 = *v9;
        [v1 bounds];
        v11 = CGRectGetWidth(v15) / (v4 - (v8 + v10));
        v12 = _SFInterpolate(-(*v3 * v11), 0.0, *(v6 + 64));
        v13 = *(v0 + OBJC_IVAR___SFTabThumbnailView_borrowedContentMatchMoveReferenceView);

        return [v13 setFrame_];
      }
    }
  }

  return result;
}

id sub_18BA16A8C(double a1, double a2)
{
  v5 = *(v2 + OBJC_IVAR___SFTabThumbnailView_borrowedContentMetrics);
  v6 = *(v2 + OBJC_IVAR___SFTabThumbnailView_borrowedContentMetrics + 8);
  v7 = *(v2 + OBJC_IVAR___SFTabThumbnailView_metrics + 64);
  v8 = 1.0 - _SFInterpolate(v6 + *(v2 + OBJC_IVAR___SFTabThumbnailView_borrowedContentMetrics + 24), 0.0, v7) / a1;
  [*(v2 + OBJC_IVAR___SFTabThumbnailView_borrowedContentContainerView) bounds];
  v9 = CGRectGetWidth(v18) / v8;
  v10 = v9 / (a1 / a2);
  v11 = -(v6 * (v9 / a1));
  v12 = -(v5 * (v9 / a1));
  v13 = _SFInterpolate(v11, 0.0, v7);
  v14 = _SFInterpolate(v12, 0.0, v7);
  v15 = *(v2 + OBJC_IVAR___SFTabThumbnailView_borrowedContentMatchMoveReferenceView);

  return [v15 setFrame_];
}

id sub_18BA16B88()
{
  v1 = v0 + OBJC_IVAR___SFTabThumbnailView_metrics;
  v2 = *(v0 + OBJC_IVAR___SFTabThumbnailView_metrics + 72);
  v3 = *(v0 + OBJC_IVAR___SFTabThumbnailView_leadingCornerButton);
  v4 = *(v0 + OBJC_IVAR___SFTabThumbnailView_controlsContainerView);
  v5 = [v4 effectiveUserInterfaceLayoutDirection];
  [v4 bounds];
  if (v5)
  {
    MaxX = CGRectGetMaxX(*&v6);
    v23.size.width = 22.0;
    v23.size.height = 22.0;
    v23.origin.x = v2;
    v23.origin.y = v2;
    v11 = MaxX - CGRectGetMaxX(v23);
    v24.size.width = 22.0;
    v24.size.height = 22.0;
    v24.origin.x = v2;
    v24.origin.y = v2;
    MinY = CGRectGetMinY(v24);
    v25.size.width = 22.0;
    v25.size.height = 22.0;
    v25.origin.x = v2;
    v25.origin.y = v2;
    Width = CGRectGetWidth(v25);
    v26.size.width = 22.0;
    v26.size.height = 22.0;
    v26.origin.x = v2;
    v26.origin.y = v2;
    Height = CGRectGetHeight(v26);
    v2 = v11;
  }

  else
  {
    Width = 22.0;
    MinY = v2;
    Height = 22.0;
  }

  result = [v3 setFrame_];
  v16 = *(v1 + 96);
  v17 = *(v1 + 104);
  v18 = &v3[OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView12CornerButton_minimumTapTargetSize];
  v19 = *&v3[OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView12CornerButton_minimumTapTargetSize];
  v20 = *&v3[OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView12CornerButton_minimumTapTargetSize + 8];
  *v18 = v16;
  v18[1] = v17;
  if (v16 != v19 || v17 != v20)
  {

    return [v3 setNeedsLayout];
  }

  return result;
}

void sub_18BA16D00()
{
  v1 = *(v0 + OBJC_IVAR___SFTabThumbnailView_controlsContainerView);
  [v1 bounds];
  MaxX = CGRectGetMaxX(v26);
  v3 = *(v0 + OBJC_IVAR___SFTabThumbnailView_pinnedTitleView);
  if (v3)
  {
    v4 = MaxX - *(v0 + OBJC_IVAR___SFTabThumbnailView_metrics + 72) + -22.0;
    v5 = *(v0 + OBJC_IVAR___SFTabThumbnailView_metrics + 160);
    v24 = v3;
    UIEdgeInsetsMakeWithEdges();
    v8 = UIEdgeInsetsInsetRect(0.0, 0.0, v4, v5, v6, v7);
    v10 = v9;
    v12 = v11;
    Height = v13;
    v15 = [v1 effectiveUserInterfaceLayoutDirection];
    [v1 bounds];
    if (v15)
    {
      v20 = CGRectGetMaxX(*&v16);
      v27.origin.x = v8;
      v27.origin.y = v10;
      v27.size.width = v12;
      v27.size.height = Height;
      v21 = v20 - CGRectGetMaxX(v27);
      v28.origin.x = v8;
      v28.origin.y = v10;
      v28.size.width = v12;
      v28.size.height = Height;
      MinY = CGRectGetMinY(v28);
      v29.origin.x = v8;
      v29.origin.y = v10;
      v29.size.width = v12;
      v29.size.height = Height;
      Width = CGRectGetWidth(v29);
      v30.origin.x = v8;
      v30.origin.y = v10;
      v30.size.width = v12;
      v30.size.height = Height;
      Height = CGRectGetHeight(v30);
      v8 = v21;
      v10 = MinY;
      v12 = Width;
    }

    [v24 setFrame_];
  }
}

id sub_18BA16ED4()
{
  [*(v0 + OBJC_IVAR___SFTabThumbnailView_contentView) bounds];
  v5 = v1;
  v6 = v2;
  v7 = v3;
  v8 = v4;
  v9 = (v0 + OBJC_IVAR___SFTabThumbnailView_restingSize);
  if ((*(v0 + OBJC_IVAR___SFTabThumbnailView_restingSize + 16) & 1) != 0 || (v10 = *v9, *v9 == 0.0))
  {
    v11 = *(v0 + OBJC_IVAR___SFTabThumbnailView_controlsContainerView);
    *&v17.a = 0x3FF0000000000000uLL;
    v17.c = 0.0;
    v17.d = 1.0;
    *&v17.tx = 0uLL;
    [v11 setTransform_];
    return [v11 setFrame_];
  }

  else
  {
    v13 = v9[1];
    Width = CGRectGetWidth(*&v1);
    v15 = *(v0 + OBJC_IVAR___SFTabThumbnailView_controlsContainerView);
    v16 = Width / v10;
    v18.origin.x = v5;
    v18.origin.y = v6;
    v18.size.width = v7;
    v18.size.height = v8;
    [v15 setCenter_];
    [v15 setBounds_];
    CGAffineTransformMakeScale(&v17, v16, v16);
    return [v15 setTransform_];
  }
}

unint64_t sub_18BA17060()
{
  v1 = *&v0[OBJC_IVAR___SFTabThumbnailView_snapshotImageView];
  v2 = *&v0[OBJC_IVAR___SFTabThumbnailView_snapshotContainerView];
  [v2 bounds];
  [v1 setFrame_];
  v3 = *&v0[OBJC_IVAR___SFTabThumbnailView_snapshotRegistration];
  if (v3 && (swift_beginAccess(), v4 = v3[1], v5 = v3[2], v6 = v3[4], v72 = v3[3], v73 = v6, v70 = v4, v71 = v5, v7 = v4, v74 = v3[2], v75 = *(v3 + 6), *(&v4 + 1)))
  {
    v8 = *(&v72 + 1);
    v9 = *(&v73 + 1);
    v76[0] = v4;
    v76[1] = v74;
    v77 = v75;
    v78 = *(&v72 + 1);
    v79 = v73;
    v69[0] = v70;
    v69[1] = v71;
    v69[2] = v72;
    v69[3] = v73;
    sub_18BA1A744(v69, v68);
    [*(&v7 + 1) size];
    v12 = v10 / v11;
    if ((~COERCE__INT64(v10 / v11) & 0x7FF0000000000000) != 0 || (COERCE_UNSIGNED_INT64(v10 / v11) & 0xFFFFFFFFFFFFFLL) == 0)
    {
      [v2 bounds];
      v16 = v14;
      v17 = &v0[OBJC_IVAR___SFTabThumbnailView_metrics];
      v18 = v14 / v12;
      if (v0[OBJC_IVAR___SFTabThumbnailView_metrics + 56] & 1) != 0 || (v17[4])
      {
        v19 = *MEMORY[0x1E69DDCE0];
        v20 = *(MEMORY[0x1E69DDCE0] + 8);
        v21 = *(MEMORY[0x1E69DDCE0] + 16);
        v22 = *(MEMORY[0x1E69DDCE0] + 24);
      }

      else
      {
        v35 = v17[5];
        v36 = v14 / v35;
        v37 = *&v7 * (v14 / v35);
        v38 = v8 * v35 * (v14 / v35);
        v64 = v14 / v35 * 0.0;
        v65 = v9 * v35 * (v14 / v35);
        v66 = v15;
        UIEdgeInsetsMakeWithEdges();
        v40 = v36 * v39;
        v42 = v36 * v41;
        v44 = v36 * v43;
        v46 = v36 * v45;
        v47 = v17[8];
        v48 = _SFInterpolate(v37, v40, v47);
        v49 = _SFInterpolate(v38, v42, v47);
        v50 = _SFInterpolate(v64, v44, v47);
        v51 = _SFInterpolate(v65, v46, v47);
        v21 = v50;
        v20 = v49;
        v19 = v48;
        v15 = v66;
        v22 = v51;
      }

      v80.origin.x = sub_18BA17540(v76, 0.0, 0.0, v16, v18, v19, v20, v21, v22, v16, v15);
      x = v80.origin.x;
      y = v80.origin.y;
      width = v80.size.width;
      height = v80.size.height;
      MinX = CGRectGetMinX(v80);
      v81.origin.x = 0.0;
      v81.origin.y = 0.0;
      v81.size.width = v16;
      v81.size.height = v18;
      v67 = MinX / CGRectGetWidth(v81);
      v82.origin.x = x;
      v82.origin.y = y;
      v82.size.width = width;
      v82.size.height = height;
      MinY = CGRectGetMinY(v82);
      v83.origin.x = 0.0;
      v83.origin.y = 0.0;
      v83.size.width = v16;
      v83.size.height = v18;
      v58 = MinY / CGRectGetHeight(v83);
      v84.origin.x = x;
      v84.origin.y = y;
      v84.size.width = width;
      v84.size.height = height;
      v59 = CGRectGetWidth(v84);
      v85.origin.x = 0.0;
      v85.origin.y = 0.0;
      v85.size.width = v16;
      v85.size.height = v18;
      v60 = v59 / CGRectGetWidth(v85);
      v86.origin.x = x;
      v86.origin.y = y;
      v86.size.width = width;
      v86.size.height = height;
      v61 = CGRectGetHeight(v86);
      v87.origin.x = 0.0;
      v87.origin.y = 0.0;
      v87.size.width = v16;
      v87.size.height = v18;
      v62 = v61 / CGRectGetHeight(v87);
      if ([v1 contentMode] == 2)
      {
        v31 = 0x8000000000000008;
      }

      else
      {
        v31 = 0x8000000000000010;
      }

      v32 = swift_allocObject();
      *(v32 + 16) = v0;
      *(v32 + 24) = 2;
      *(v32 + 32) = v67;
      *(v32 + 40) = v58;
      *(v32 + 48) = v60;
      *(v32 + 56) = v62;
      v63 = v0;
    }

    else
    {
      if ([v1 contentMode] == 2)
      {
        v31 = 0x8000000000000008;
      }

      else
      {
        v31 = 0x8000000000000010;
      }

      v32 = swift_allocObject();
      *(v32 + 16) = v0;
      *(v32 + 24) = 2;
      *(v32 + 32) = 0;
      *(v32 + 40) = 0;
      __asm { FMOV            V0.2D, #1.0 }

      *(v32 + 48) = _Q0;
      v34 = v0;
    }

    sub_18B7EAA64(sub_18BA1A938, v32, CGRectMake, 0, v31);

    sub_18B7EBAE8(v31);
    return sub_18B988BAC(&v70, &qword_1EA9D92C0);
  }

  else
  {
    if ([v1 contentMode] == 4)
    {
      v23 = 0x8000000000000008;
    }

    else
    {
      v23 = 0x8000000000000010;
    }

    v24 = swift_allocObject();
    *(v24 + 16) = v0;
    *(v24 + 24) = 4;
    *(v24 + 32) = 0;
    *(v24 + 40) = 0;
    __asm { FMOV            V0.2D, #1.0 }

    *(v24 + 48) = _Q0;
    v29 = v0;
    sub_18B7EAA64(sub_18BA1A740, v24, CGRectMake, 0, v23);

    return sub_18B7EBAE8(v23);
  }
}

double sub_18BA17540(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, double a7, double a8, double a9, double a10, double a11)
{
  v50 = CGRectOffset(*&a2, 0.0, a6);
  x = v50.origin.x;
  y = v50.origin.y;
  width = v50.size.width;
  rect_24 = v50.size.height;
  if ([objc_opt_self() isSolariumEnabled])
  {
    UIEdgeInsetsReplace();
    rect = UIEdgeInsetsInsetRect(x, y, width, rect_24, v23, v24);
    y = v25;
    v27 = v26;
    rect_24 = v28;
  }

  else
  {
    rect = x;
    v27 = width;
  }

  v51.origin.x = a2;
  v51.origin.y = a3;
  v51.size.width = a4;
  v51.size.height = a5;
  v29 = CGRectGetWidth(v51);
  v30 = *(a1 + 8);
  [v30 size];
  v31 = a5;
  v33 = v32;
  [v30 scale];
  v35 = *(a1 + 24) * (v29 / (v33 * v34));
  v52.origin.x = rect;
  v52.origin.y = y;
  v52.size.width = v27;
  v52.size.height = rect_24;
  v53 = CGRectOffset(v52, 0.0, v35);
  v36 = v53.origin.x;
  v37 = v53.origin.y;
  v38 = v53.size.width;
  height = v53.size.height;
  v53.origin.x = a2;
  v53.origin.y = a3;
  v53.size.width = a4;
  v53.size.height = v31;
  v40 = CGRectGetHeight(v53);
  v54.origin.x = v36;
  v54.origin.y = v37;
  v54.size.width = v38;
  v54.size.height = height;
  v41 = (v40 - CGRectGetWidth(v54) / (a10 / a11)) * -0.5;
  v42 = v36;
  v43 = v37;
  v44 = v38;
  v45 = height;

  *&result = CGRectOffset(*&v42, 0.0, v41);
  return result;
}

void sub_18BA17740(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v10 = *(a1 + OBJC_IVAR___SFTabThumbnailView_snapshotImageView);
  [v10 setContentMode_];
  v11 = [v10 layer];
  [v11 setContentsRect_];
}

id sub_18BA177F0()
{
  v1 = v0 + OBJC_IVAR___SFTabThumbnailView_metrics;
  v2 = *(v0 + OBJC_IVAR___SFTabThumbnailView_metrics + 72);
  v3 = *(v0 + OBJC_IVAR___SFTabThumbnailView_trailingCornerButton);
  v4 = *(v0 + OBJC_IVAR___SFTabThumbnailView_controlsContainerView);
  [v4 bounds];
  v5 = CGRectGetMaxX(v24) - v2 + -22.0;
  v6 = [v4 effectiveUserInterfaceLayoutDirection];
  [v4 bounds];
  if (v6)
  {
    MaxX = CGRectGetMaxX(*&v7);
    v25.size.width = 22.0;
    v25.size.height = 22.0;
    v25.origin.x = v5;
    v25.origin.y = v2;
    v12 = MaxX - CGRectGetMaxX(v25);
    v26.size.width = 22.0;
    v26.size.height = 22.0;
    v26.origin.x = v5;
    v26.origin.y = v2;
    MinY = CGRectGetMinY(v26);
    v27.size.width = 22.0;
    v27.size.height = 22.0;
    v27.origin.x = v5;
    v27.origin.y = v2;
    Width = CGRectGetWidth(v27);
    v28.size.width = 22.0;
    v28.size.height = 22.0;
    v28.origin.x = v5;
    v28.origin.y = v2;
    Height = CGRectGetHeight(v28);
    v5 = v12;
    v2 = MinY;
  }

  else
  {
    Width = 22.0;
    Height = 22.0;
  }

  result = [v3 setFrame_];
  v17 = *(v1 + 96);
  v18 = *(v1 + 104);
  v19 = &v3[OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView12CornerButton_minimumTapTargetSize];
  v20 = *&v3[OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView12CornerButton_minimumTapTargetSize];
  v21 = *&v3[OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView12CornerButton_minimumTapTargetSize + 8];
  *v19 = v17;
  v19[1] = v18;
  if (v17 != v20 || v18 != v21)
  {

    return [v3 setNeedsLayout];
  }

  return result;
}

id sub_18BA1799C()
{
  v13.receiver = v0;
  v13.super_class = type metadata accessor for TabThumbnailView();
  objc_msgSendSuper2(&v13, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR___SFTabThumbnailView_contentView];
  [v0 bounds];
  [v1 ss_setUntransformedFrame_];
  sub_18BA16ED4();
  sub_18BA16B88();
  sub_18BA177F0();
  [*&v0[OBJC_IVAR___SFTabThumbnailView_controlsContainerView] bounds];
  x = v14.origin.x;
  y = v14.origin.y;
  width = v14.size.width;
  height = v14.size.height;
  v6 = &v0[OBJC_IVAR___SFTabThumbnailView_metrics];
  v7 = *&v0[OBJC_IVAR___SFTabThumbnailView_metrics + 120];
  v8 = CGRectGetHeight(v14) - v7 - v6[18];
  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  [*&v0[OBJC_IVAR___SFTabThumbnailView_participantsView] setFrame_];
  sub_18BA16D00();
  v9 = *&v0[OBJC_IVAR___SFTabThumbnailView_snapshotContainerView];
  [v1 bounds];
  [v9 setFrame_];
  sub_18BA17060();
  sub_18BA168D0();
  v10 = *&v0[OBJC_IVAR___SFTabThumbnailView_shadowView];
  [v0 bounds];
  v17 = CGRectInset(v16, v6[14], v6[14]);
  [v10 ss:v17.origin.x setUntransformedFrame:{v17.origin.y, v17.size.width, v17.size.height}];
  sub_18BA18614();
  v11 = *&v0[OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleContainerView];
  [v9 bounds];
  return [v11 setFrame_];
}

uint64_t sub_18BA17B94(uint64_t a1)
{
  sub_18B7F40F4(v1);
  v3 = &v1[OBJC_IVAR___SFTabThumbnailView_metrics];
  v4 = *&v1[OBJC_IVAR___SFTabThumbnailView_metrics];
  v5 = *&v1[OBJC_IVAR___SFTabThumbnailView_metrics + 32];
  v6 = *&v1[OBJC_IVAR___SFTabThumbnailView_metrics + 48];
  v55 = *&v1[OBJC_IVAR___SFTabThumbnailView_metrics + 16];
  v56 = v5;
  v57 = v6;
  v7 = *&v1[OBJC_IVAR___SFTabThumbnailView_metrics + 72];
  v8 = *&v1[OBJC_IVAR___SFTabThumbnailView_metrics + 104];
  v9 = *&v1[OBJC_IVAR___SFTabThumbnailView_metrics + 136];
  v51 = *&v1[OBJC_IVAR___SFTabThumbnailView_metrics + 120];
  v52 = v9;
  v53 = *&v1[OBJC_IVAR___SFTabThumbnailView_metrics + 152];
  v54 = v4;
  v49 = *&v1[OBJC_IVAR___SFTabThumbnailView_metrics + 88];
  v50 = v8;
  v10 = sub_18B7F44CC();
  v11 = sub_18BB11B5C();
  v12 = *(v3 + 9);
  v47[8] = *(v3 + 8);
  v47[9] = v12;
  v13 = *(v3 + 5);
  v47[4] = *(v3 + 4);
  v47[5] = v13;
  v14 = *(v3 + 7);
  v47[6] = *(v3 + 6);
  v47[7] = v14;
  v15 = *(v3 + 1);
  v47[0] = *v3;
  v47[1] = v15;
  v16 = *(v3 + 3);
  v47[2] = *(v3 + 2);
  v47[3] = v16;
  v17 = v55;
  v18 = v56;
  v19 = v53;
  *v3 = v54;
  *(v3 + 1) = v17;
  v20 = v57;
  *(v3 + 2) = v18;
  *(v3 + 3) = v20;
  v48 = *(v3 + 20);
  *(v3 + 8) = v11;
  *(v3 + 9) = v7;
  *(v3 + 10) = v10;
  v21 = v52;
  *(v3 + 120) = v51;
  v22 = v49;
  *(v3 + 104) = v50;
  *(v3 + 88) = v22;
  *(v3 + 136) = v21;
  *(v3 + 152) = v19;
  v23 = *(v3 + 1);
  v45[0] = *v3;
  v45[1] = v23;
  v24 = *(v3 + 4);
  v25 = *(v3 + 6);
  v26 = *(v3 + 7);
  v45[5] = *(v3 + 5);
  v45[6] = v25;
  v27 = *(v3 + 2);
  v45[3] = *(v3 + 3);
  v45[4] = v24;
  v45[2] = v27;
  v28 = *(v3 + 8);
  v29 = *(v3 + 9);
  v46 = *(v3 + 20);
  v45[8] = v28;
  v45[9] = v29;
  v45[7] = v26;
  result = sub_18BA1A2E4(v45, v47);
  if ((result & 1) == 0)
  {
    result = sub_18BA18DB4();
  }

  v31 = *&v1[OBJC_IVAR___SFTabThumbnailView_snapshotRegistration];
  if (v31)
  {
    v32 = *(a1 + 104);
    if (*(v32 + 16))
    {
      sub_18BC1E1A8();
      v33 = sub_18B7C4104(0xD000000000000012, 0x800000018BC63340);
      if (v34)
      {
        sub_18B7F44EC(*(v32 + 56) + 40 * v33, v44);
        if (swift_dynamicCast())
        {
          v35 = v42;
          v36 = v43;
LABEL_12:
          v37 = v31 + OBJC_IVAR____TtC12MobileSafari23TabSnapshotRegistration_visibility;
          swift_beginAccess();
          v38 = *v37;
          v39 = *(v37 + 8);
          *v37 = v35;
          *(v37 + 8) = v36;
          if (v35 != v38 || v36 != v39)
          {
            v40 = *(v31 + OBJC_IVAR____TtC12MobileSafari23TabSnapshotRegistration_visibilityDidChangeHandler);
            v41 = sub_18BC1E1A8();
            v40(v41);
          }
        }
      }
    }

    else
    {
      sub_18BC1E1A8();
    }

    if (qword_1EA9D2410 != -1)
    {
      swift_once();
    }

    v35 = *&qword_1EA9D8AE0;
    v36 = qword_1EA9D8AE8;
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_18BA17E30()
{
  v1 = v0;
  v2 = [*&v0[OBJC_IVAR___SFTabThumbnailView_matchMovedViews] allObjects];
  type metadata accessor for TabThumbnailView();
  v3 = sub_18BC20D98();

  if (v3 >> 62)
  {
    result = sub_18BC219A8();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_27:
  }

  result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_27;
  }

LABEL_3:
  v5 = result - 1;
  if (result >= 1)
  {
    v6 = 0;
    v7 = &v1[OBJC_IVAR___SFTabThumbnailView_metrics];
    v37 = xmmword_18BC43C00;
    if ((v3 & 0xC000000000000001) == 0)
    {
      goto LABEL_6;
    }

LABEL_5:
    for (i = MEMORY[0x18CFFD010](v6, v3); ; i = *(v3 + 8 * v6 + 32))
    {
      v9 = i;
      [v1 bounds];
      [v9 setBounds_];
      v10 = v7[32];
      LODWORD(v40) = *(v7 + 33);
      *(&v40 + 3) = *(v7 + 9);
      v12 = *(v7 + 5);
      v11 = *(v7 + 6);
      v13 = v7[56];
      LODWORD(v39) = *(v7 + 57);
      *(&v39 + 3) = *(v7 + 15);
      v14 = *(v7 + 20);
      v15 = &v9[OBJC_IVAR___SFTabThumbnailView_metrics];
      v17 = *v7;
      v16 = *(v7 + 1);
      v19 = *&v9[OBJC_IVAR___SFTabThumbnailView_metrics];
      v18 = *&v9[OBJC_IVAR___SFTabThumbnailView_metrics + 16];
      v20 = v9[OBJC_IVAR___SFTabThumbnailView_metrics + 32];
      v22 = *&v9[OBJC_IVAR___SFTabThumbnailView_metrics + 40];
      v21 = *&v9[OBJC_IVAR___SFTabThumbnailView_metrics + 48];
      v23 = v9[OBJC_IVAR___SFTabThumbnailView_metrics + 56];
      v25 = *(v7 + 4);
      v24 = *(v7 + 5);
      v27 = *&v9[OBJC_IVAR___SFTabThumbnailView_metrics + 64];
      v26 = *&v9[OBJC_IVAR___SFTabThumbnailView_metrics + 80];
      v29 = *(v7 + 6);
      v28 = *(v7 + 7);
      v31 = *&v9[OBJC_IVAR___SFTabThumbnailView_metrics + 96];
      v30 = *&v9[OBJC_IVAR___SFTabThumbnailView_metrics + 112];
      v33 = *(v7 + 8);
      v32 = *(v7 + 9);
      v35 = *&v9[OBJC_IVAR___SFTabThumbnailView_metrics + 128];
      v34 = *&v9[OBJC_IVAR___SFTabThumbnailView_metrics + 144];
      v36 = *&v9[OBJC_IVAR___SFTabThumbnailView_metrics + 160];
      *v15 = *v7;
      *(v15 + 1) = v16;
      v15[32] = v10;
      *(v15 + 33) = v40;
      *(v15 + 9) = *(&v40 + 3);
      *(v15 + 5) = v12;
      *(v15 + 6) = v11;
      v15[56] = v13;
      *(v15 + 15) = *(&v39 + 3);
      *(v15 + 57) = v39;
      *(v15 + 4) = v25;
      *(v15 + 5) = v24;
      *(v15 + 6) = v29;
      *(v15 + 7) = v28;
      *(v15 + 8) = v33;
      *(v15 + 9) = v32;
      *(v15 + 20) = v14;
      if (v10)
      {
        if (!v20)
        {
          goto LABEL_22;
        }
      }

      else if ((v20 & 1) != 0 || (~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(v19, v17), vceqq_f64(v18, v16)), v37)) & 0xF) != 0)
      {
LABEL_22:
        v38 = v24.f64[0];
        [v9 _setContinuousCornerRadius_];
        [*&v9[OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleContainerView] _setContinuousCornerRadius_];
        [*&v9[OBJC_IVAR___SFTabThumbnailView_borrowedContentContainerView] _setContinuousCornerRadius_];
        [*&v9[OBJC_IVAR___SFTabThumbnailView_contentView] _setContinuousCornerRadius_];
        [*&v9[OBJC_IVAR___SFTabThumbnailView_shadowView] _setContinuousCornerRadius_];
        [*&v9[OBJC_IVAR___SFTabThumbnailView_snapshotContainerView] _setContinuousCornerRadius_];
        [*&v9[OBJC_IVAR___SFTabThumbnailView_snapshotImageView] _setContinuousCornerRadius_];
        sub_18BA17E30([v9 setNeedsLayout]);
        goto LABEL_23;
      }

      if (v13)
      {
        if ((v23 & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      else if ((v23 & 1) != 0 || v22 != v12 || v21 != v11)
      {
        goto LABEL_22;
      }

      if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v25, v27), vceqq_f64(v24, v26)))) & 1) == 0 || (~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(v29, v31), vceqq_f64(v28, v30)), v37)) & 0xF) != 0 || (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v33, v35), vceqq_f64(v32, v34)))) & 1) == 0 || v14 != v36)
      {
        goto LABEL_22;
      }

LABEL_23:
      [v9 layoutIfNeeded];

      if (v5 == v6)
      {
        goto LABEL_27;
      }

      ++v6;
      if ((v3 & 0xC000000000000001) != 0)
      {
        goto LABEL_5;
      }

LABEL_6:
      ;
    }
  }

  __break(1u);
  return result;
}

void sub_18BA181B8()
{
  v1 = v0 + OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleViewRegistration;
  v2 = *(v0 + OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleViewRegistration + 16);
  v30[0] = *(v0 + OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleViewRegistration);
  v30[1] = v2;
  v3 = *(v0 + OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleViewRegistration + 48);
  v30[2] = *(v0 + OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleViewRegistration + 32);
  *v31 = v3;
  *&v31[9] = *(v0 + OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleViewRegistration + 57);
  if (*&v30[0])
  {
    v4 = v0;
    if (v31[24])
    {
      v5 = *(v0 + OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleContainerView);
      v6 = *&v30[0];
      [v5 setHidden_];
      [v5 addSubview_];
    }

    else
    {
      v7 = *&v30[0];
    }

    v8 = *(v4 + OBJC_IVAR___SFTabThumbnailView_capsuleMatchMoveReferenceView);
    v9 = *&v30[0];
    v10 = [v9 layer];
    v11 = [v8 layer];
    sub_18BAE31BC(v11);

    sub_18B988BAC(v30, &unk_1EA9D92A0);
    [v9 setHidden_];
    v12 = sub_18BA188F4();
    [v12 presentationValue];
    v14 = v13;

    v15 = _SFUninterpolate(v14, 0.2, 0.9);
    v16 = *(v1 + 16);
    v28[0] = *v1;
    v28[1] = v16;
    v17 = *(v1 + 48);
    v28[2] = *(v1 + 32);
    v29[0] = v17;
    *(v29 + 9) = *(v1 + 57);
    v18 = *&v28[0];
    if (*&v28[0])
    {
      if (v15 <= 0.0)
      {
        v15 = 0.0;
      }

      v22 = *&v28[0];
      if (v15 <= 1.0)
      {
        v19 = v15;
      }

      else
      {
        v19 = 1.0;
      }

      v24 = *(v1 + 24);
      v25 = *(v1 + 40);
      v26 = *(v1 + 56);
      v27 = *(v1 + 72);
      v23 = *(v1 + 8);
      sub_18B7CA054(v28, v21, &unk_1EA9D92A0);
      v20 = v18;
      sub_18B988BAC(&v22, &unk_1EA9D92A0);
      [v20 setAlpha_];
    }

    else
    {
      v22 = 0;
      v24 = *(v1 + 24);
      v25 = *(v1 + 40);
      v26 = *(v1 + 56);
      v27 = *(v1 + 72);
      v23 = *(v1 + 8);
      sub_18B7CA054(v28, v21, &unk_1EA9D92A0);
      sub_18B988BAC(&v22, &unk_1EA9D92A0);
    }

    sub_18BA18614();
    sub_18B988BAC(v30, &unk_1EA9D92A0);
  }
}

void sub_18BA18474()
{
  [*(v0 + OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleContainerView) setHidden_];
  v1 = v0 + OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleViewRegistration;
  v2 = *(v0 + OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleViewRegistration + 16);
  v15[0] = *(v0 + OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleViewRegistration);
  v15[1] = v2;
  v3 = *(v0 + OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleViewRegistration + 48);
  v15[2] = *(v0 + OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleViewRegistration + 32);
  v16[0] = v3;
  *(v16 + 9) = *(v0 + OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleViewRegistration + 57);
  v4 = *&v15[0];
  if (*&v15[0])
  {
    v9 = *&v15[0];
    v11 = *(v1 + 24);
    v12 = *(v1 + 40);
    v13 = *(v1 + 56);
    v14 = *(v1 + 72);
    v10 = *(v1 + 8);
    sub_18B7CA054(v15, v8, &unk_1EA9D92A0);
    v5 = v4;
    sub_18B988BAC(&v9, &unk_1EA9D92A0);
    v6 = [v5 layer];
    v7 = sub_18BC20B98();
    [v6 removeAnimationForKey_];
  }

  else
  {
    v9 = 0;
    v11 = *(v1 + 24);
    v12 = *(v1 + 40);
    v13 = *(v1 + 56);
    v14 = *(v1 + 72);
    v10 = *(v1 + 8);
    sub_18B7CA054(v15, v8, &unk_1EA9D92A0);
    sub_18B988BAC(&v9, &unk_1EA9D92A0);
  }
}

uint64_t sub_18BA18614()
{
  v1 = *(v0 + OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleViewRegistration + 16);
  v35 = *(v0 + OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleViewRegistration);
  v36 = v1;
  v2 = *(v0 + OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleViewRegistration + 48);
  v37 = *(v0 + OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleViewRegistration + 32);
  *v38 = v2;
  *&v38[9] = *(v0 + OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleViewRegistration + 57);
  if (v35)
  {
    v3 = *(v0 + OBJC_IVAR___SFTabThumbnailView_contentView);
    v4 = v35;
    [v3 bounds];
    v6 = v5;
    v32 = v8;
    rect = v7;
    v10 = v9;
    v11 = *(&v35 + 1);
    v12 = v36;
    v13 = *(&v36 + 1);
    v14 = v37;
    MidY = CGRectGetMidY(*&v11);
    v39.origin.x = *(&v37 + 1);
    *&v39.origin.y = *v38;
    v39.size.height = *&v38[16];
    v16 = CGRectGetMidY(v39);
    v40.origin.x = v6;
    v40.size.width = v32;
    v40.origin.y = rect;
    v40.size.height = v10;
    Width = CGRectGetWidth(v40);
    v41.origin.x = *(&v37 + 1);
    *&v41.origin.y = *v38;
    v41.size.height = *&v38[16];
    v31 = MidY;
    v18 = Width / CGRectGetWidth(v41);
    if (MidY >= v16)
    {
      v43.origin.x = *(&v37 + 1);
      *&v43.origin.y = *v38;
      v43.size.height = *&v38[16];
      MaxY = CGRectGetMaxY(v43);
      v44.origin.x = *(&v35 + 1);
      v20 = *(&v36 + 1);
      *&v44.origin.y = v36;
      v21 = *&v37;
      *&v44.size.height = v37;
      v24 = v18 * (MaxY - CGRectGetMidY(v44));
      v45.origin.x = *(&v35 + 1);
      *&v45.origin.y = v36;
      *&v45.size.height = v37;
      MinX = CGRectGetMinX(v45);
      v22 = _SFInterpolate(v18 * (*&v37 * 0.5 + MinX), v24, *(v0 + OBJC_IVAR___SFTabThumbnailView_metrics + 64));
    }

    else
    {
      v19 = _SFInterpolate(-*(v0 + OBJC_IVAR___SFTabThumbnailView_borrowedContentMetrics), 0.0, *(v0 + OBJC_IVAR___SFTabThumbnailView_metrics + 64));
      v42.origin.x = *(&v35 + 1);
      v20 = *(&v36 + 1);
      *&v42.origin.y = v36;
      v21 = *&v37;
      *&v42.size.height = v37;
      v22 = v18 * (v19 + CGRectGetMidY(v42));
    }

    v26 = *(v0 + OBJC_IVAR___SFTabThumbnailView_capsuleMatchMoveReferenceView);
    [v26 setBounds_];
    v46.origin.x = v6;
    v46.origin.y = rect;
    v46.size.width = v32;
    v46.size.height = v10;
    MidX = CGRectGetMidX(v46);
    if (v31 >= v16)
    {
      v28 = MidX;
      v47.origin.x = v6;
      v47.origin.y = rect;
      v47.size.width = v32;
      v47.size.height = v10;
      v29 = CGRectGetMaxY(v47);
      MidX = v28;
      v22 = v29 - v22;
    }

    [v26 setCenter_];
    CGAffineTransformMakeScale(&v34, v18, v18);
    [v26 setTransform_];
    return sub_18B988BAC(&v35, &unk_1EA9D92A0);
  }

  return result;
}

id sub_18BA188F4()
{
  v1 = OBJC_IVAR___SFTabThumbnailView____lazy_storage___attachedCapsuleVisibility;
  v2 = *(v0 + OBJC_IVAR___SFTabThumbnailView____lazy_storage___attachedCapsuleVisibility);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___SFTabThumbnailView____lazy_storage___attachedCapsuleVisibility);
  }

  else
  {
    v4 = sub_18BA18958();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_18BA18958()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DD268]) init];
  [v0 setValue_];
  v1 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_18BC3E3E0;
  *(v2 + 32) = v0;
  sub_18B7B0AC0(0, &qword_1EA9D50B0);
  v3 = v0;
  v4 = sub_18BC20D88();

  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8[4] = sub_18BA1A738;
  v8[5] = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_18B7B0DB0;
  v8[3] = &block_descriptor_131;
  v6 = _Block_copy(v8);

  [v1 _createTransformerWithInputAnimatableProperties_presentationValueChangedCallback_];
  _Block_release(v6);

  return v3;
}

void sub_18BA18AF4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_18BA188F4();
    [v2 presentationValue];
    v4 = v3;

    v5 = _SFUninterpolate(v4, 0.2, 0.9);
    v26[0] = *&v1[OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleViewRegistration];
    v7 = *&v1[OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleViewRegistration + 32];
    v6 = *&v1[OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleViewRegistration + 48];
    v8 = *&v1[OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleViewRegistration + 16];
    *(v27 + 9) = *&v1[OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleViewRegistration + 57];
    v26[2] = v7;
    v27[0] = v6;
    v26[1] = v8;
    v9 = *&v26[0];
    v10 = *&v1[OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleViewRegistration + 24];
    v11 = *&v1[OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleViewRegistration + 56];
    v23 = *&v1[OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleViewRegistration + 40];
    v24 = v11;
    v25 = v1[OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleViewRegistration + 72];
    v21 = *&v1[OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleViewRegistration + 8];
    v22 = v10;
    if (*&v26[0])
    {
      if (v5 <= 0.0)
      {
        v5 = 0.0;
      }

      if (v5 <= 1.0)
      {
        v12 = v5;
      }

      else
      {
        v12 = 1.0;
      }

      v17 = v22;
      v18 = v23;
      v19 = v24;
      v15 = *&v26[0];
      v20 = v25;
      v16 = v21;
      sub_18B7CA054(v26, &v14, &unk_1EA9D92A0);
      v13 = v9;
      sub_18B988BAC(&v15, &unk_1EA9D92A0);
      [v13 setAlpha_];
    }

    else
    {
      sub_18B7CA054(v26, &v15, &unk_1EA9D92A0);

      v15 = 0;
      v17 = v22;
      v18 = v23;
      v19 = v24;
      v20 = v25;
      v16 = v21;
      sub_18B988BAC(&v15, &unk_1EA9D92A0);
    }
  }
}

BOOL sub_18BA18CD8(float64x2_t *a1, float64x2_t *a2)
{
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(a1[1], a2[1])))) & 1) == 0)
  {
    return 0;
  }

  if (a1[2].f64[1] == a2[2].f64[1])
  {
    return a1[2].f64[0] == a2[2].f64[0];
  }

  return 0;
}

BOOL sub_18BA18D20(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 144);
  v13[8] = *(a1 + 128);
  v13[9] = v2;
  v14 = *(a1 + 160);
  v3 = *(a1 + 80);
  v13[4] = *(a1 + 64);
  v13[5] = v3;
  v4 = *(a1 + 112);
  v13[6] = *(a1 + 96);
  v13[7] = v4;
  v5 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v5;
  v6 = *(a1 + 48);
  v13[2] = *(a1 + 32);
  v13[3] = v6;
  v7 = *(a2 + 144);
  v15[8] = *(a2 + 128);
  v15[9] = v7;
  v16 = *(a2 + 160);
  v8 = *(a2 + 80);
  v15[4] = *(a2 + 64);
  v15[5] = v8;
  v9 = *(a2 + 112);
  v15[6] = *(a2 + 96);
  v15[7] = v9;
  v10 = *(a2 + 16);
  v15[0] = *a2;
  v15[1] = v10;
  v11 = *(a2 + 48);
  v15[2] = *(a2 + 32);
  v15[3] = v11;
  return sub_18BA1A2E4(v13, v15);
}

uint64_t sub_18BA18DB4()
{
  v1 = *&v0[OBJC_IVAR___SFTabThumbnailView_metrics + 80];
  [v0 _setContinuousCornerRadius_];
  [*&v0[OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleContainerView] _setContinuousCornerRadius_];
  [*&v0[OBJC_IVAR___SFTabThumbnailView_borrowedContentContainerView] _setContinuousCornerRadius_];
  [*&v0[OBJC_IVAR___SFTabThumbnailView_contentView] _setContinuousCornerRadius_];
  [*&v0[OBJC_IVAR___SFTabThumbnailView_shadowView] _setContinuousCornerRadius_];
  [*&v0[OBJC_IVAR___SFTabThumbnailView_snapshotContainerView] _setContinuousCornerRadius_];
  [*&v0[OBJC_IVAR___SFTabThumbnailView_snapshotImageView] _setContinuousCornerRadius_];
  [v0 setNeedsLayout];

  return sub_18BA17E30();
}

id sub_18BA18EAC()
{
  v1 = OBJC_IVAR___SFTabThumbnailView_snapshotRegistration;
  v2 = *&v0[OBJC_IVAR___SFTabThumbnailView_snapshotRegistration];
  if (!v2)
  {
    return [*&v0[OBJC_IVAR___SFTabThumbnailView_snapshotImageView] setImage_];
  }

  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  *(v2 + 80) = sub_18B9D4DC8;
  *(v2 + 88) = v3;

  v4 = *&v0[v1];
  if (!v4)
  {
    return [*&v0[OBJC_IVAR___SFTabThumbnailView_snapshotImageView] setImage_];
  }

  swift_beginAccess();
  v5 = v4[2];
  v13[0] = v4[1];
  v13[1] = v5;
  v6 = v4[4];
  v13[2] = v4[3];
  v13[3] = v6;
  v7 = *&v0[OBJC_IVAR___SFTabThumbnailView_snapshotImageView];
  v8 = *(&v13[0] + 1);
  if (*(&v13[0] + 1))
  {
    sub_18BC1E1A8();
  }

  else
  {
    sub_18BC1E1A8();
    v10 = [v0 window];
    if (v10)
    {

      v11 = sub_18BC20B98();
      v8 = [objc_opt_self() systemImageNamed_];
    }

    else
    {
      v8 = 0;
    }
  }

  sub_18B7CA054(v13, v12, &qword_1EA9D92C0);
  sub_18B7CA054(v13, v12, &qword_1EA9D92C0);
  [v7 setImage_];

  [v0 setNeedsLayout];

  return sub_18B988BAC(v13, &qword_1EA9D92C0);
}

void sub_18BA1909C(_OWORD *a1)
{
  v1 = a1[1];
  v10[0] = *a1;
  v10[1] = v1;
  v2 = a1[3];
  v10[2] = a1[2];
  v10[3] = v2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *&Strong[OBJC_IVAR___SFTabThumbnailView_snapshotImageView];
    v6 = *(&v10[0] + 1);
    if (!*(&v10[0] + 1))
    {
      v7 = [Strong window];
      if (v7)
      {

        v8 = sub_18BC20B98();
        v6 = [objc_opt_self() systemImageNamed_];
      }

      else
      {
        v6 = 0;
      }
    }

    sub_18B7CA054(v10, v9, &qword_1EA9D92C0);
    [v5 setImage_];

    [v4 setNeedsLayout];
  }
}

void sub_18BA191C8()
{
  v9.receiver = v0;
  v9.super_class = type metadata accessor for TabThumbnailView();
  objc_msgSendSuper2(&v9, sel_didMoveToWindow);
  v1 = *&v0[OBJC_IVAR___SFTabThumbnailView_snapshotRegistration];
  if (v1)
  {
    sub_18BC1E1A8();
    v2 = [v0 window];
    if (v2)
    {

      swift_beginAccess();
      if (!*(v1 + 24))
      {
        v3 = *&v0[OBJC_IVAR___SFTabThumbnailView_snapshotImageView];
        v4 = [v3 image];
        if (v4)
        {
          v5 = v4;

          return;
        }

        v6 = [v0 window];
        if (v6)
        {

          v7 = sub_18BC20B98();
          v8 = [objc_opt_self() systemImageNamed_];
        }

        else
        {
          v8 = 0;
        }

        [v3 setImage_];

        [v0 setNeedsLayout];
      }
    }
  }
}

void sub_18BA19388(void *a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  v19 = sub_18BA1A6CC;
  v20 = v3;
  v15 = MEMORY[0x1E69E9820];
  v16 = 1107296256;
  v17 = sub_18B7B0DB0;
  v18 = &block_descriptor_10;
  v4 = _Block_copy(&v15);
  v5 = v1;

  [a1 addAnimations_];
  _Block_release(v4);
  if (*&v5[OBJC_IVAR___SFTabThumbnailView_configuration + 24] != 1)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = objc_opt_self();
    v8 = swift_allocObject();
    *(v8 + 16) = sub_18BA1A6EC;
    *(v8 + 24) = v6;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_18B7D1EC4;
    *(v9 + 24) = v8;
    v19 = sub_18B7D1E94;
    v20 = v9;
    v15 = MEMORY[0x1E69E9820];
    v16 = 1107296256;
    v17 = sub_18B7E3BF4;
    v18 = &block_descriptor_107;
    v10 = _Block_copy(&v15);
    v11 = v5;
    sub_18BC1E1A8();
    sub_18BC1E1A8();

    [v7 performWithoutAnimation_];
    _Block_release(v10);
    LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

    if (v7)
    {
      __break(1u);
    }

    else
    {
      v12 = swift_allocObject();
      *(v12 + 16) = v11;
      v19 = sub_18BA1A6F4;
      v20 = v12;
      v15 = MEMORY[0x1E69E9820];
      v16 = 1107296256;
      v17 = sub_18B7B0DB0;
      v18 = &block_descriptor_113;
      v13 = _Block_copy(&v15);
      v14 = v11;

      [a1 addAnimations_];
      _Block_release(v13);
    }
  }
}

uint64_t sub_18BA19694(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR___SFTabThumbnailView_controlsVisibility);
  *(a1 + OBJC_IVAR___SFTabThumbnailView_controlsVisibility) = 0;
  if (v2 != 0.0)
  {
    sub_18BA15D30();
  }

  v3 = *(a1 + OBJC_IVAR___SFTabThumbnailView_controlsContainerView);
  v4 = sub_18B7DE654();
  [v4 value];
  v6 = v5;

  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = v6;
  v8 = objc_opt_self();
  v9 = swift_allocObject();
  *(v9 + 16) = sub_18B7EA1B8;
  *(v9 + 24) = v7;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_18B9D53AC;
  *(v10 + 24) = v9;
  v14[4] = sub_18B9D53B0;
  v14[5] = v10;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_18B7E3BF4;
  v14[3] = &block_descriptor_127;
  v11 = _Block_copy(v14);
  v12 = v3;
  sub_18BC1E1A8();
  sub_18BC1E1A8();

  [v8 performWithoutAnimation_];
  _Block_release(v11);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  return result;
}

id sub_18BA1988C(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR___SFTabThumbnailView_configuration + 24) == 1)
  {
    v2 = *(a1 + OBJC_IVAR___SFTabThumbnailView_controlsVisibility);
    *(a1 + OBJC_IVAR___SFTabThumbnailView_controlsVisibility) = 0;
    if (v2 != 0.0)
    {
      sub_18BA15D30();
    }
  }

  v3 = *(a1 + OBJC_IVAR___SFTabThumbnailView_shadowView);

  return [v3 setAlpha_];
}

uint64_t sub_18BA19908()
{

  v1 = *(v0 + OBJC_IVAR___SFTabThumbnailView_configuration + 40);
  v2 = *(v0 + OBJC_IVAR___SFTabThumbnailView_configuration + 48);
  v3 = *(v0 + OBJC_IVAR___SFTabThumbnailView_configuration + 56);
  v4 = *(v0 + OBJC_IVAR___SFTabThumbnailView_configuration + 64);
  v5 = *(v0 + OBJC_IVAR___SFTabThumbnailView_configuration + 72);
  v6 = *(v0 + OBJC_IVAR___SFTabThumbnailView_configuration + 80);
  sub_18BA1A6B8(*(v0 + OBJC_IVAR___SFTabThumbnailView_configuration + 8), *(v0 + OBJC_IVAR___SFTabThumbnailView_configuration + 16), *(v0 + OBJC_IVAR___SFTabThumbnailView_configuration + 24));

  sub_18BA1A4DC(v1, v2, v3, v4, v5, v6);

  MEMORY[0x18CFFF000](v0 + OBJC_IVAR___SFTabThumbnailView_matchMoveReferenceView);
}

id sub_18BA19AF8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TabThumbnailView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

__n128 __swift_memcpy168_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_18BA19D80(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 168))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18BA19DA0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
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

  *(result + 168) = v3;
  return result;
}

uint64_t get_enum_tag_for_layout_string_12MobileSafari16TabThumbnailViewC011PinnedTitleE0C13ConfigurationVSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t get_enum_tag_for_layout_string_12MobileSafari16TabThumbnailViewC12CornerButtonC13ConfigurationVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_18BA19E80(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18BA19EC8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_18BA19F50(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
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

uint64_t sub_18BA19F98(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

BOOL sub_18BA1A010(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 24);
  v3 = *(a2 + 24);
  if (v2 == 1)
  {
    if (v3 == 1)
    {
      goto LABEL_4;
    }

    return 0;
  }

  v15 = 0;
  if (v3 != 1 && ((*(a1 + 8) ^ *(a2 + 8)) & 1) == 0)
  {
    if (v2)
    {
      if (!v3)
      {
        return 0;
      }

      if (*(a1 + 16) != *(a2 + 16) || v2 != v3)
      {
        v17 = a1;
        v18 = a2;
        v19 = sub_18BC21FD8();
        a2 = v18;
        v20 = v19;
        a1 = v17;
        if ((v20 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else if (v3)
    {
      return 0;
    }

LABEL_4:
    v4 = a1;
    v5 = a2;
    if (sub_18B86E84C(*(a1 + 32), *(a2 + 32)))
    {
      v6 = *(v4 + 56);
      v33 = *(v4 + 40);
      v34 = v6;
      v35 = *(v4 + 72);
      v7 = *(v5 + 56);
      v31[0] = *(v5 + 40);
      v31[1] = v7;
      v32 = *(v5 + 72);
      v8 = v33;
      v9 = *(&v34 + 1);
      v10 = v34;
      v11 = v35;
      v12 = *&v31[0];
      v13 = *(&v7 + 1);
      v14 = *(&v32 + 1);
      if (v33 == 1)
      {
        if (*&v31[0] == 1)
        {
          sub_18B7CA054(&v33, &v40, &qword_1EA9D6020);
          sub_18B7CA054(v31, &v40, &qword_1EA9D6020);
          v15 = 1;
          v16 = 1;
LABEL_23:
          sub_18BA1A4DC(v16, *(&v8 + 1), v10, v9, v11, *(&v11 + 1));
          return v15;
        }
      }

      else if (*&v31[0] != 1)
      {
        v40 = v31[0];
        v41 = v7;
        v42 = WORD4(v7) & 0x101;
        v43 = v32;
        v36 = v33;
        v37 = v34;
        v38 = WORD4(v34) & 0x101;
        v39 = v35;
        v25 = *(&v31[0] + 1);
        v27 = v7;
        v29 = v32;
        sub_18B7CA054(&v33, v30, &qword_1EA9D6020);
        sub_18B7CA054(v31, v30, &qword_1EA9D6020);
        v15 = sub_18BA6EFA0(&v36, &v40);
        sub_18BA1A4DC(v12, v25, v27, v13, v29, v14);
        v16 = v8;
        goto LABEL_23;
      }

      v26 = *(&v7 + 1);
      v28 = *(&v32 + 1);
      v21 = *(&v31[0] + 1);
      v22 = v7;
      v23 = v32;
      sub_18B7CA054(&v33, &v40, &qword_1EA9D6020);
      sub_18B7CA054(v31, &v40, &qword_1EA9D6020);
      sub_18BA1A4DC(v8, *(&v8 + 1), v10, v9, v11, *(&v11 + 1));
      sub_18BA1A4DC(v12, v21, v22, v26, v23, v28);
    }

    return 0;
  }

  return v15;
}

BOOL sub_18BA1A2E4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32))
  {
    if (!*(a2 + 32))
    {
      return 0;
    }
  }

  else
  {
    v2 = 0;
    if ((*(a2 + 32) & 1) != 0 || (~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(*(a1 + 16), *(a2 + 16))), xmmword_18BC43C00)) & 0xF) != 0)
    {
      return v2;
    }
  }

  if (*(a1 + 56))
  {
    if ((*(a2 + 56) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 56))
    {
      return 0;
    }

    if (*(a1 + 40) != *(a2 + 40) || *(a1 + 48) != *(a2 + 48))
    {
      return 0;
    }
  }

  if (*(a1 + 64) != *(a2 + 64) || *(a1 + 72) != *(a2 + 72) || *(a1 + 80) != *(a2 + 80) || *(a1 + 88) != *(a2 + 88) || *(a1 + 96) != *(a2 + 96) || *(a1 + 104) != *(a2 + 104) || *(a1 + 112) != *(a2 + 112) || *(a1 + 120) != *(a2 + 120))
  {
    return 0;
  }

  v2 = 0;
  if (*(a1 + 128) == *(a2 + 128) && *(a1 + 136) == *(a2 + 136) && *(a1 + 144) == *(a2 + 144) && *(a1 + 152) == *(a2 + 152))
  {
    return *(a1 + 160) == *(a2 + 160);
  }

  return v2;
}

id sub_18BA1A450(uint64_t a1)
{
  v2 = OBJC_IVAR___SFTabThumbnailView_snapshotRegistration;
  v3 = *(v1 + OBJC_IVAR___SFTabThumbnailView_snapshotRegistration);
  if (v3)
  {
    v4 = a1;
    swift_beginAccess();
    *(v3 + 80) = CGRectMake;
    *(v3 + 88) = 0;

    a1 = v4;
  }

  *(v1 + v2) = a1;
  sub_18BC1E1A8();

  return sub_18BA18EAC();
}

void sub_18BA1A4DC(void *a1, void *a2, void *a3, uint64_t a4, void *a5, void *a6)
{
  if (a1 != 1)
  {
  }
}

uint64_t sub_18BA1A548(uint64_t a1)
{
  v2 = a1;
  v3 = v1 + OBJC_IVAR___SFTabThumbnailView_configuration;
  v4 = *(v1 + OBJC_IVAR___SFTabThumbnailView_configuration + 32);
  v5 = *(v1 + OBJC_IVAR___SFTabThumbnailView_configuration + 64);
  v14 = *(v1 + OBJC_IVAR___SFTabThumbnailView_configuration + 48);
  v15 = v5;
  v16 = *(v1 + OBJC_IVAR___SFTabThumbnailView_configuration + 80);
  v6 = *(v1 + OBJC_IVAR___SFTabThumbnailView_configuration + 16);
  v13[0] = *(v1 + OBJC_IVAR___SFTabThumbnailView_configuration);
  v13[1] = v6;
  v13[2] = v4;
  v19[0] = v13[0];
  v19[1] = v6;
  v20 = v16;
  v19[2] = v4;
  v19[3] = v14;
  v19[4] = v5;
  v7 = *(a1 + 48);
  *(v3 + 32) = *(a1 + 32);
  *(v3 + 48) = v7;
  *(v3 + 64) = *(a1 + 64);
  *(v3 + 80) = *(a1 + 80);
  v8 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v8;
  sub_18BA1A650(v13, v17);
  sub_18BA1A650(v2, v17);
  sub_18BA1A688(v19);
  v9 = *(v3 + 48);
  v17[2] = *(v3 + 32);
  v17[3] = v9;
  v17[4] = *(v3 + 64);
  v18 = *(v3 + 80);
  v10 = *(v3 + 16);
  v17[0] = *v3;
  v17[1] = v10;
  sub_18BA1A650(v17, v12);
  LOBYTE(v2) = sub_18BA1A010(v17, v13);
  sub_18BA1A688(v17);
  if ((v2 & 1) == 0)
  {
    sub_18BA15244(v13);
  }

  return sub_18BA1A688(v13);
}

uint64_t sub_18BA1A6B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

id sub_18BA1A6F4()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR___SFTabThumbnailView_controlsVisibility);
  *(v1 + OBJC_IVAR___SFTabThumbnailView_controlsVisibility) = 0x3FF0000000000000;
  if (v2 != 1.0)
  {
    return sub_18BA15D30();
  }

  return result;
}

uint64_t objectdestroy_144Tm()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

id sub_18BA1A82C()
{
  v1 = *(v0 + 24);
  sub_18BA16D00();
  [v1 layoutIfNeeded];

  return [v1 setAlpha_];
}

id sub_18BA1A898(id result, void *a2, void *a3, uint64_t a4, void *a5, void *a6)
{
  if (result != 1)
  {
    v9 = result;
    v10 = a6;
    v11 = v9;
    v12 = a2;
    v13 = a3;

    return a5;
  }

  return result;
}

id sub_18BA1A9D0(double a1, double a2, double a3, double a4)
{
  v9 = sub_18BC1F7B8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DAE30);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v21 - v14;
  *&v4[OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant14EntityCardCell_entityView] = 0;
  v16 = _s14EntityCardCellCMa();
  v21.receiver = v4;
  v21.super_class = v16;
  v17 = objc_msgSendSuper2(&v21, sel_initWithFrame_, a1, a2, a3, a4);
  sub_18BC1F798();
  (*(v10 + 16))(v15, v12, v9);
  sub_18BC1F768();
  (*(v10 + 8))(v12, v9);
  (*(v10 + 56))(v15, 0, 1, v9);
  MEMORY[0x18CFFC920](v15);
  v18 = [v17 contentView];
  [v18 _setContinuousCornerRadius_];

  v19 = [v17 contentView];
  [v19 setClipsToBounds_];

  return v17;
}

id sub_18BA1AD0C()
{
  v2.receiver = v0;
  v2.super_class = _s14EntityCardCellCMa();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_18BA1AD74(uint64_t result)
{
  v2 = v1[OBJC_IVAR____TtC12MobileSafari36FloatingTabBarNavigationBarTitleView_hidesTabBarOffscreen];
  v1[OBJC_IVAR____TtC12MobileSafari36FloatingTabBarNavigationBarTitleView_hidesTabBarOffscreen] = result;
  if (v2 != (result & 1))
  {
    [v1 setNeedsLayout];
    type metadata accessor for AnimationSettings();
    inited = swift_initStaticObject();
    v4 = swift_allocObject();
    *(v4 + 16) = v1;
    v5 = objc_opt_self();
    v6 = swift_allocObject();
    v6[2] = inited;
    v6[3] = sub_18B848FAC;
    v6[4] = v4;
    v14 = sub_18B7D80AC;
    v15 = v6;
    v10 = MEMORY[0x1E69E9820];
    v11 = 1107296256;
    v12 = sub_18B7B0DB0;
    v13 = &block_descriptor_11;
    v7 = _Block_copy(&v10);
    v8 = v1;
    sub_18BC1E1A8();

    v14 = CGRectMake;
    v15 = 0;
    v10 = MEMORY[0x1E69E9820];
    v11 = 1107296256;
    v12 = sub_18B8043A0;
    v13 = &block_descriptor_13;
    v9 = _Block_copy(&v10);

    [v5 _animateUsingSpringBehavior_tracking_animations_completion_];
    _Block_release(v9);
    _Block_release(v7);
  }

  return result;
}

double *sub_18BA1AF64(double *result)
{
  v2 = &v1[OBJC_IVAR____TtC12MobileSafari36FloatingTabBarNavigationBarTitleView_metrics];
  v3 = *&v1[OBJC_IVAR____TtC12MobileSafari36FloatingTabBarNavigationBarTitleView_metrics];
  v4 = *result;
  if (v3 != *result)
  {
    return [v1 setNeedsLayout];
  }

  v3 = result[3];
  v4 = v2[3];
  v5 = v2[1] == result[1] && v2[2] == result[2];
  if (!v5 || v4 != v3)
  {
    return [v1 setNeedsLayout];
  }

  v3 = v2[4];
  v4 = result[4];
  if (v3 != v4)
  {
    return [v1 setNeedsLayout];
  }

  v3 = v2[5];
  v4 = v2[6];
  v7 = v3 == result[5] && v4 == result[6];
  if (!v7 || v2[7] != result[7])
  {
    return [v1 setNeedsLayout];
  }

  v3 = v2[8];
  v4 = result[8];
  if (v3 != v4)
  {
    return [v1 setNeedsLayout];
  }

  return result;
}

char *sub_18BA1AFF4(double a1, double a2, double a3, double a4)
{
  v4[OBJC_IVAR____TtC12MobileSafari36FloatingTabBarNavigationBarTitleView_hidesTabBarOffscreen] = 0;
  v9 = &v4[OBJC_IVAR____TtC12MobileSafari36FloatingTabBarNavigationBarTitleView_metrics];
  UIEdgeInsetsMakeWithEdges();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  UIEdgeInsetsMakeWithEdges();
  *v9 = v11;
  v9[1] = v13;
  v9[2] = v15;
  v9[3] = v17;
  v9[4] = v18;
  v9[5] = v19;
  v9[6] = v20;
  v9[7] = v21;
  v9[8] = 0;
  v22 = OBJC_IVAR____TtC12MobileSafari36FloatingTabBarNavigationBarTitleView_tabBar;
  type metadata accessor for FloatingTabBar();
  *&v4[v22] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v30.receiver = v4;
  v30.super_class = type metadata accessor for FloatingTabBarNavigationBarTitleView();
  v23 = objc_msgSendSuper2(&v30, sel_initWithFrame_, a1, a2, a3, a4);
  v24 = OBJC_IVAR____TtC12MobileSafari36FloatingTabBarNavigationBarTitleView_tabBar;
  v25 = *&v23[OBJC_IVAR____TtC12MobileSafari36FloatingTabBarNavigationBarTitleView_tabBar];
  v26 = v23;
  v27 = v25;
  v28 = sub_18B7C2E68(v27);

  [v28 setContentInsetAdjustmentBehavior_];
  [v26 addSubview_];

  return v26;
}

id sub_18BA1B1FC()
{
  v1 = v0;
  v2 = [v0 overlays];
  v3 = MEMORY[0x1E695F050];
  if (!v2 || (v4 = v2, sub_18BC214B8(), v5 = v73, v6 = v74, v7 = v75, v8 = v76, v4, (v77 & 1) != 0))
  {
    v5 = *v3;
    v6 = v3[1];
    v7 = v3[2];
    v8 = v3[3];
  }

  v9 = [v1 overlays];
  if (!v9 || (v10 = v9, sub_18BC214C8(), v12 = v78, v11 = v79, v13 = v80, v14 = v81, v10, (v82 & 1) != 0))
  {
    v12 = *v3;
    v11 = v3[1];
    v13 = v3[2];
    v14 = v3[3];
  }

  v15 = [v1 effectiveUserInterfaceLayoutDirection];
  if (v15)
  {
    v16 = v12;
  }

  else
  {
    v16 = v5;
  }

  if (v15)
  {
    v17 = v11;
  }

  else
  {
    v17 = v6;
  }

  v53 = v17;
  v54 = v16;
  if (v15)
  {
    v18 = v13;
  }

  else
  {
    v18 = v7;
  }

  if (v15)
  {
    v19 = v14;
  }

  else
  {
    v19 = v8;
  }

  v51 = v19;
  v52 = v18;
  if ([v1 effectiveUserInterfaceLayoutDirection])
  {
    v12 = v5;
    v11 = v6;
    v13 = v7;
    v20 = v8;
  }

  else
  {
    v20 = v14;
  }

  v83.origin.x = v54;
  v83.origin.y = v53;
  v83.size.width = v52;
  v83.size.height = v51;
  CGRectIsNull(v83);
  v84.origin.x = v12;
  v84.origin.y = v11;
  v84.size.width = v13;
  v84.size.height = v20;
  CGRectIsNull(v84);
  v85.origin.x = v54;
  v85.origin.y = v53;
  v85.size.width = v52;
  v85.size.height = v51;
  CGRectGetMaxX(v85);
  [v1 bounds];
  CGRectGetWidth(v86);
  v87.origin.x = v12;
  v87.origin.y = v11;
  v87.size.width = v13;
  v87.size.height = v20;
  CGRectGetMinX(v87);
  v21 = &v1[OBJC_IVAR____TtC12MobileSafari36FloatingTabBarNavigationBarTitleView_metrics];
  v55 = 0.0;
  UIEdgeInsetsAdd();
  UIEdgeInsetsReplace();
  [v1 safeAreaInsets];
  UIEdgeInsetsMax();
  UIEdgeInsetsMax();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  if (v1[OBJC_IVAR____TtC12MobileSafari36FloatingTabBarNavigationBarTitleView_hidesTabBarOffscreen] == 1)
  {
    [v1 bounds];
    v55 = -CGRectGetHeight(v88) - v21[8];
  }

  v30 = *&v1[OBJC_IVAR____TtC12MobileSafari36FloatingTabBarNavigationBarTitleView_tabBar];
  v31 = &v30[qword_1EA9F84B0];
  *v31 = v23;
  *(v31 + 1) = v25;
  *(v31 + 2) = v27;
  *(v31 + 3) = v29;
  v32 = sub_18BA474C4();
  v57 = *v31;
  v33 = *(v31 + 1);
  v34 = *(v31 + 2);
  v35 = *(v31 + 3);
  v61 = *(v31 + 8);
  v59 = v34;
  v60 = v35;
  v58 = v33;
  v36 = v32 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_metrics;
  v37 = *(v32 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_metrics + 64);
  v38 = *(v32 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_metrics + 48);
  v39 = *(v32 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_metrics + 16);
  v64 = *(v32 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_metrics + 32);
  v65 = v38;
  v66 = v37;
  v63 = v39;
  v62 = *(v32 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_metrics);
  v41 = *(v32 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_metrics + 32);
  v40 = *(v32 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_metrics + 48);
  v42 = *(v32 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_metrics + 16);
  v68 = *(v32 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_metrics + 64);
  v67[2] = v41;
  v67[3] = v40;
  v67[1] = v42;
  v67[0] = *(v32 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_metrics);
  *v36 = v57;
  v43 = v58;
  v44 = v59;
  v45 = v60;
  *(v36 + 64) = v61;
  *(v36 + 32) = v44;
  *(v36 + 48) = v45;
  *(v36 + 16) = v43;
  sub_18BA1B8A8(&v57, v69);
  sub_18BA1B8A8(&v57, v69);
  sub_18BA1B8A8(&v62, v69);
  sub_18BA1B904(v67);
  v69[0] = *v36;
  v47 = *(v36 + 32);
  v46 = *(v36 + 48);
  v48 = *(v36 + 16);
  v72 = *(v36 + 64);
  v70 = v47;
  v71 = v46;
  v69[1] = v48;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v69[0], v62), vceqq_f64(v48, v63)))) & 1) == 0 || (sub_18B9A2928(), sub_18BA1B8A8(v69, v56), v49 = sub_18BC215C8(), sub_18BA1B904(v69), (v49 & 1) == 0) || *(&v70 + 1) != *(&v64 + 1) || *&v71 != *&v65 || *(&v71 + 1) != *(&v65 + 1) || v72 != v66)
  {
    sub_18BAD4A48();
  }

  sub_18BA1B904(&v62);
  sub_18BA1B904(&v57);

  [v30 setNeedsLayout];
  [v1 bounds];
  return [v30 setFrame_];
}

BOOL sub_18BA1B6D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v8 = *(a1 + 64);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v10 = *(a2 + 64);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_18BA1B82C(v7, v9);
}

id sub_18BA1B734()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FloatingTabBarNavigationBarTitleView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_18BA1B7C0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 72))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18BA1B7E0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
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

  *(result + 72) = v3;
  return result;
}

BOOL sub_18BA1B82C(double *a1, double *a2)
{
  if (*a1 == *a2 && (a1[1] == a2[1] ? (v2 = a1[2] == a2[2]) : (v2 = 0), v2 ? (v3 = a1[3] == a2[3]) : (v3 = 0), v3 && a1[4] == a2[4] && (a1[5] == a2[5] ? (v4 = a1[6] == a2[6]) : (v4 = 0), v4 ? (v5 = a1[7] == a2[7]) : (v5 = 0), v5)))
  {
    return a1[8] == a2[8];
  }

  else
  {
    return 0;
  }
}

void sub_18BA1B958()
{
  *(v0 + OBJC_IVAR____TtC12MobileSafari36FloatingTabBarNavigationBarTitleView_hidesTabBarOffscreen) = 0;
  v1 = (v0 + OBJC_IVAR____TtC12MobileSafari36FloatingTabBarNavigationBarTitleView_metrics);
  UIEdgeInsetsMakeWithEdges();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  UIEdgeInsetsMakeWithEdges();
  *v1 = v3;
  v1[1] = v5;
  v1[2] = v7;
  v1[3] = v9;
  v1[4] = v10;
  v1[5] = v11;
  v1[6] = v12;
  v1[7] = v13;
  v1[8] = 0;
  v14 = OBJC_IVAR____TtC12MobileSafari36FloatingTabBarNavigationBarTitleView_tabBar;
  type metadata accessor for FloatingTabBar();
  *(v0 + v14) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_18BC21CF8();
  __break(1u);
}

void sub_18BA1BA5C()
{
  type metadata accessor for WBSOnboardingIdentifier(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D60F0);
  v0 = sub_18BC20BF8();
  MEMORY[0x18CFFC150](v0);

  if (qword_1EA9D2330 != -1)
  {
    swift_once();
  }

  v1 = qword_1EA9F7F50;
  sub_18BC21C58();

  qword_1EA9F7F58 = 0;
  unk_1EA9F7F60 = 0xE000000000000000;
}

uint64_t sub_18BA1BB4C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6048);
  __swift_allocate_value_buffer(v0, qword_1EA9F7F68);
  __swift_project_value_buffer(v0, qword_1EA9F7F68);
  sub_18BC21AD8();

  if (qword_1EA9D2338 != -1)
  {
    swift_once();
  }

  v1 = qword_1EA9F7F58;
  v2 = unk_1EA9F7F60;
  sub_18BC1E3F8();
  MEMORY[0x18CFFC150](v1, v2);

  return sub_18BC20278();
}

void SFOnboardingMoreButtonTip.controller.setter(void *a1)
{
  swift_unknownObjectWeakAssign();
}

void (*SFOnboardingMoreButtonTip.controller.modify(uint64_t *a1))(id *a1)
{
  a1[1] = v1;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_18BA1BCE4;
}

void sub_18BA1BCE4(id *a1)
{
  v1 = *a1;
  swift_unknownObjectWeakAssign();
}

uint64_t SFOnboardingMoreButtonTip.privacyPreservingDebugDescription.getter()
{
  sub_18BC21AD8();
  type metadata accessor for WBSOnboardingIdentifier(0);
  sub_18BC21C58();
  MEMORY[0x18CFFC150](0xD000000000000011, 0x800000018BC64920);
  if (qword_1EA9D2340 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6048);
  __swift_project_value_buffer(v0, qword_1EA9F7F68);
  sub_18BC20288();

  v1 = sub_18BC21F48();
  MEMORY[0x18CFFC150](v1);

  return 0;
}

uint64_t SFOnboardingMoreButtonTip.imageSize.getter()
{
  v0 = sub_18BC20B98();
  v1 = [objc_opt_self() imageNamed_];

  if (!v1)
  {
    return 0;
  }

  [v1 size];
  v3 = v2;

  return v3;
}

Swift::Void __swiftcall SFOnboardingMoreButtonTip.trigger()()
{
  if (qword_1EA9D2340 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6048);
  __swift_project_value_buffer(v0, qword_1EA9F7F68);
  sub_18BC20268();
}

uint64_t SFOnboardingMoreButtonTip.id.getter()
{
  if (qword_1EA9D2338 != -1)
  {
    swift_once();
  }

  v0 = qword_1EA9F7F58;
  sub_18BC1E3F8();
  return v0;
}

uint64_t SFOnboardingMoreButtonTip.title.getter()
{
  v0 = sub_18BC1EE48();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18BC1EE38();
  v4 = sub_18BC1EE28();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  v8[2] = v4;
  v8[3] = v6;
  sub_18B7B0B50();
  return sub_18BC20668();
}

uint64_t SFOnboardingMoreButtonTip.message.getter()
{
  v0 = sub_18BC204F8();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_18BC1EE48();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18BC1EE38();
  v5 = sub_18BC1EE28();
  v7 = v6;
  (*(v2 + 8))(v4, v1);
  v14 = v5;
  v15 = v7;
  v13[2] = 0xD000000000000011;
  v13[3] = 0x800000018BC64A00;
  sub_18B7B0B50();
  v8 = sub_18BC21878();
  if (*(v8 + 16) == 1)
  {

    v14 = v5;
    v15 = v7;
    return sub_18BC20668();
  }

  v10 = v8;

  v11 = *(v10 + 16);
  if (!v11)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v11 == 1)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  sub_18BC1E3F8();
  sub_18BC1E3F8();

  sub_18BC20738();
  sub_18BC204E8();
  sub_18BC204D8();
  sub_18BC204C8();

  sub_18BC204D8();
  sub_18BC204B8();
  sub_18BC204D8();
  sub_18BC204C8();

  sub_18BC204D8();
  sub_18BC20518();
  v12 = sub_18BC20658();

  return v12;
}

uint64_t SFOnboardingMoreButtonTip.rules.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6048);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v11 - v2;
  v4 = sub_18BC20248();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EA9D2340 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v0, qword_1EA9F7F68);
  (*(v1 + 16))(v3, v8, v0);
  sub_18BC20138();
  sub_18B80B760(&qword_1EA9D6050);
  sub_18B80B760(&qword_1EA9D6058);
  sub_18BC20258();
  sub_18BC20118();
  (*(v5 + 8))(v7, v4);
  v9 = sub_18BC1E3F8();

  return v9;
}

uint64_t sub_18BA1C668@<X0>(uint64_t *a1@<X8>)
{
  v32 = a1;
  v1 = sub_18BC1E838();
  v30 = *(v1 - 8);
  v31 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v29 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6080);
  v4 = *(v3 - 8);
  v33 = v3;
  v34 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v28 = &v26 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6088);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6090);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v26 - v12;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6098);
  v14 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v16 = &v26 - v15;
  sub_18B7B0B08(&qword_1EA9D60A0, &qword_1EA9D6088);
  sub_18BC1E858();
  swift_getKeyPath();
  sub_18BC1E818();

  (*(v7 + 8))(v9, v6);
  swift_getKeyPath();
  sub_18B7B0B08(&qword_1EA9D60A8, &qword_1EA9D6090);
  sub_18BC1E818();

  (*(v11 + 8))(v13, v10);
  v35 = 1;
  v17 = v28;
  sub_18BC1E848();
  v19 = v29;
  v18 = v30;
  v20 = v31;
  (*(v30 + 104))(v29, *MEMORY[0x1E6968C38], v31);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D60B0);
  v22 = v32;
  v32[3] = v21;
  v22[4] = sub_18B80BD84();
  __swift_allocate_boxed_opaque_existential_0Tm(v22);
  sub_18B7B0B08(&qword_1EA9D60E0, &qword_1EA9D6098);
  sub_18B7B0B08(&qword_1EA9D60E8, &qword_1EA9D6080);
  v23 = v27;
  v24 = v33;
  sub_18BC1E828();
  (*(v18 + 8))(v19, v20);
  (*(v34 + 8))(v17, v24);
  return (*(v14 + 8))(v16, v23);
}

uint64_t SFOnboardingMoreButtonTip.options.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6060);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v16 - v2;
  v4 = sub_18BC20188();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6068);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  sub_18BC20198();
  v12 = MEMORY[0x1E6982A88];
  MEMORY[0x18CFFB650](v7, v4, MEMORY[0x1E6982A88]);
  (*(v5 + 8))(v7, v4);
  v16 = v4;
  v17 = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x18CFFB670](v11, v8, OpaqueTypeConformance2);
  v16 = v8;
  v17 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v14 = sub_18BC20168();
  (*(v1 + 8))(v3, v0);
  (*(v9 + 8))(v11, v8);
  return v14;
}

void sub_18BA1CE3C(void *a1)
{
  swift_unknownObjectWeakAssign();
}

void (*sub_18BA1CE7C(uint64_t *a1))(id *)
{
  a1[1] = v1;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_18BA1D860;
}

uint64_t sub_18BA1CED0()
{
  v0 = sub_18BC20B98();
  v1 = [objc_opt_self() imageNamed_];

  if (!v1)
  {
    return 0;
  }

  [v1 size];
  v3 = v2;

  return v3;
}

uint64_t sub_18BA1CF80()
{
  if (qword_1EA9D2340 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6048);
  __swift_project_value_buffer(v0, qword_1EA9F7F68);
  return sub_18BC20268();
}

unint64_t sub_18BA1CFFC(uint64_t a1)
{
  result = sub_18BA1D024();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18BA1D024()
{
  result = qword_1EA9D6070;
  if (!qword_1EA9D6070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D6070);
  }

  return result;
}

unint64_t sub_18BA1D07C()
{
  result = qword_1EA9D6078;
  if (!qword_1EA9D6078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D6078);
  }

  return result;
}

uint64_t sub_18BA1D0D0()
{
  if (qword_1EA9D2338 != -1)
  {
    swift_once();
  }

  v0 = qword_1EA9F7F58;
  sub_18BC1E3F8();
  return v0;
}

uint64_t sub_18BA1D138()
{
  v0 = sub_18BC1EE48();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18BC1EE38();
  v4 = sub_18BC1EE28();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  v8[2] = v4;
  v8[3] = v6;
  sub_18B7B0B50();
  return sub_18BC20668();
}

uint64_t sub_18BA1D290()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6048);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v11 - v2;
  v4 = sub_18BC20248();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EA9D2340 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v0, qword_1EA9F7F68);
  (*(v1 + 16))(v3, v8, v0);
  sub_18BC20138();
  sub_18B80B760(&qword_1EA9D6050);
  sub_18B80B760(&qword_1EA9D6058);
  sub_18BC20258();
  sub_18BC20118();
  (*(v5 + 8))(v7, v4);
  v9 = sub_18BC1E3F8();

  return v9;
}

uint64_t sub_18BA1D4D0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6060);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v16 - v2;
  v4 = sub_18BC20188();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6068);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  sub_18BC20198();
  v12 = MEMORY[0x1E6982A88];
  MEMORY[0x18CFFB650](v7, v4, MEMORY[0x1E6982A88]);
  (*(v5 + 8))(v7, v4);
  v16 = v4;
  v17 = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x18CFFB670](v11, v8, OpaqueTypeConformance2);
  v16 = v8;
  v17 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v14 = sub_18BC20168();
  (*(v1 + 8))(v3, v0);
  (*(v9 + 8))(v11, v8);
  return v14;
}

uint64_t sub_18BA1D774@<X0>(void *a1@<X8>)
{
  if (qword_1EA9D2338 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = unk_1EA9F7F60;
  *a1 = qword_1EA9F7F58;
  a1[1] = v1;

  return sub_18BC1E3F8();
}

uint64_t sub_18BA1D864()
{
  sub_18BC22158();
  sub_18BC215D8();
  sub_18BC20C28();
  return sub_18BC221A8();
}

uint64_t sub_18BA1D8C8()
{
  sub_18BC215D8();

  return sub_18BC20C28();
}

uint64_t sub_18BA1D91C()
{
  sub_18BC22158();
  sub_18BC215D8();
  sub_18BC20C28();
  return sub_18BC221A8();
}

uint64_t sub_18BA1D97C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_18B9A2928();
  if ((sub_18BC215C8() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return sub_18BC21FD8();
}

void sub_18BA1DA28(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6118);
  v89 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v82 = &v80 - v5;
  v95 = sub_18BC1EC08();
  v88 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v86 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D6120);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v97 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v92 = &v80 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v80 - v12;
  swift_beginAccess();
  v14 = *(v1 + 16);
  v15 = (v14 + 64);
  v16 = 1 << *(v14 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & *(v14 + 64);
  v19 = (v16 + 63) >> 6;
  v90 = (a1 + 56);
  *&v96 = v14;
  sub_18BC1E3F8();
  v20 = 0;
  v21 = v4;
  v84 = v4;
  v83 = v13;
  v94 = v15;
  v91 = v2;
  v93 = v19;
  if (!v18)
  {
    goto LABEL_8;
  }

  do
  {
    while (1)
    {
LABEL_12:
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v24 = *(v96 + 48) + 24 * (v23 | (v20 << 6));
      v25 = *v24;
      v26 = *(v24 + 8);
      v27 = *(v24 + 16);
      if (!*(a1 + 16))
      {
        sub_18BC1E3F8();
        v36 = v25;
        goto LABEL_23;
      }

      sub_18BC22158();
      swift_bridgeObjectRetain_n();
      v28 = v25;
      sub_18BC20C28();
      v29 = sub_18BC221A8();
      v30 = -1 << *(a1 + 32);
      v31 = v29 & ~v30;
      v32 = v90;
      if ((*(v90 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31))
      {
        break;
      }

LABEL_21:

      v2 = v91;
LABEL_23:
      swift_beginAccess();
      sub_18BC1E3F8();
      v37 = v25;
      v38 = sub_18BB8B1C4(v37, v26, v27);
      if (v39)
      {
        v40 = v38;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v42 = v2[2];
        v98 = v42;
        v2[2] = 0x8000000000000000;
        v43 = v2;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_18BB294F4();
          v42 = v98;
        }

        v44 = *(*(v42 + 48) + 24 * v40);

        sub_18BB5A8B4(v40, v42);

        v43[2] = v42;
        v2 = v43;
      }

      else
      {
      }

      v19 = v93;
      swift_endAccess();

      v21 = v84;
      v13 = v83;
      v15 = v94;
      if (!v18)
      {
        goto LABEL_8;
      }
    }

    v33 = ~v30;
    while (1)
    {
      v34 = (*(a1 + 48) + 16 * v31);
      v35 = *v34 == v26 && v34[1] == v27;
      if (v35 || (sub_18BC21FD8() & 1) != 0)
      {
        break;
      }

      v31 = (v31 + 1) & v33;
      if (((*(v32 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    swift_bridgeObjectRelease_n();
    v21 = v84;
    v13 = v83;
    v2 = v91;
    v19 = v93;
    v15 = v94;
  }

  while (v18);
  while (1)
  {
LABEL_8:
    v22 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      goto LABEL_50;
    }

    if (v22 >= v19)
    {
      break;
    }

    v18 = v15[v22];
    ++v20;
    if (v18)
    {
      v20 = v22;
      goto LABEL_12;
    }
  }

  swift_beginAccess();
  v45 = v2[4];
  v46 = *(v45 + 8);
  v81 = v45 + 64;
  v47 = 1 << *(v45 + 32);
  v48 = -1;
  if (v47 < 64)
  {
    v48 = ~(-1 << v47);
  }

  v49 = v48 & v46;
  v50 = (v47 + 63) >> 6;
  v94 = (v89 + 56);
  v85 = v88 + 16;
  v91 = (v88 + 32);
  v93 = (v89 + 48);
  v90 = (v88 + 8);
  v87 = v45;
  sub_18BC1E3F8();
  v51 = 0;
  v52 = v21;
  if (!v49)
  {
LABEL_33:
    if (v50 <= v51 + 1)
    {
      v55 = v51 + 1;
    }

    else
    {
      v55 = v50;
    }

    v56 = v55 - 1;
    while (1)
    {
      v54 = v51 + 1;
      if (__OFADD__(v51, 1))
      {
        break;
      }

      if (v54 >= v50)
      {
        v68 = *v94;
        (*v94)(v97, 1, 1, v52);
        v49 = 0;
        goto LABEL_42;
      }

      v49 = *(v81 + 8 * v54);
      ++v51;
      if (v49)
      {
        v53 = v52;
        goto LABEL_41;
      }
    }

    __break(1u);
LABEL_50:
    __break(1u);
    return;
  }

  while (1)
  {
    v53 = v52;
    v54 = v51;
LABEL_41:
    v57 = __clz(__rbit64(v49));
    v49 &= v49 - 1;
    v58 = v57 | (v54 << 6);
    v59 = v87;
    v60 = v88;
    v61 = v86;
    v62 = v95;
    (*(v88 + 16))(v86, *(v87 + 6) + *(v88 + 72) * v58, v95);
    v63 = v53;
    v64 = *(v53 + 48);
    v65 = *(v60 + 32);
    v96 = *(*(v59 + 7) + 16 * v58);
    v66 = v97;
    v67 = v61;
    v52 = v63;
    v65(v97, v67, v62);
    *&v66[v64] = v96;
    v68 = *v94;
    (*v94)(v66, 0, 1, v52);
    sub_18BC1E1A8();
    v56 = v54;
LABEL_42:
    v69 = *v93;
    v70 = 1;
    if ((*v93)(v97, 1, v52) != 1)
    {
      v89 = *(v52 + 48);
      v71 = v68;
      v72 = v97;
      *&v96 = v56;
      v73 = *v91;
      (*v91)(v82, v97, v95);
      v74 = swift_allocObject();
      v75 = v52;
      v76 = v74;
      v77 = *&v72[v89];
      v68 = v71;
      *(v74 + 16) = v77;
      v78 = &v92[*(v75 + 48)];
      v73();
      v56 = v96;
      v70 = 0;
      *v78 = sub_18BA1ED2C;
      v78[1] = v76;
      v13 = v83;
      v52 = v84;
    }

    v79 = v92;
    v68(v92, v70, 1, v52);
    sub_18BA1ECBC(v79, v13);
    if (v69(v13, 1, v52) == 1)
    {
      break;
    }

    (*&v13[*(v52 + 48)])();

    (*v90)(v13, v95);
    v51 = v56;
    if (!v49)
    {
      goto LABEL_33;
    }
  }
}

uint64_t sub_18BA1E284()
{
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6118);
  v1 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v47 = &v46 - v2;
  v61 = sub_18BC1EC08();
  v3 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v49 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D6120);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v58 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v57 = &v46 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v55 = &v46 - v10;
  v11 = sub_18BA648E0(MEMORY[0x1E69E7CC0]);
  swift_beginAccess();
  *(v0 + 16) = v11;

  swift_beginAccess();
  v12 = *(v0 + 32);
  v13 = *(v12 + 64);
  v46 = v12 + 64;
  v14 = 1 << *(v12 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v13;
  v17 = (v14 + 63) >> 6;
  v60 = (v1 + 56);
  v48 = v3 + 16;
  v56 = (v3 + 32);
  v59 = (v1 + 48);
  v50 = v3;
  v51 = v12;
  v54 = (v3 + 8);
  result = sub_18BC1E3F8();
  v19 = 0;
  if (v16)
  {
    while (1)
    {
      v20 = v19;
      v21 = v58;
LABEL_12:
      v24 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v25 = v24 | (v20 << 6);
      v27 = v50;
      v26 = v51;
      v28 = v49;
      v29 = v61;
      (*(v50 + 16))(v49, *(v51 + 48) + *(v50 + 72) * v25, v61);
      v30 = *(v26 + 56);
      v31 = v63;
      v32 = *(v63 + 48);
      v33 = *(v27 + 32);
      v62 = *(v30 + 16 * v25);
      v33(v21, v28, v29);
      *&v21[v32] = v62;
      v34 = *v60;
      (*v60)(v21, 0, 1, v31);
      sub_18BC1E1A8();
      v23 = v20;
LABEL_13:
      v35 = *v59;
      v36 = 1;
      if ((*v59)(v21, 1, v63) != 1)
      {
        v37 = v63;
        v52 = *(v63 + 48);
        v53 = v34;
        *&v62 = v23;
        v38 = *v56;
        v39 = v58;
        (*v56)(v47, v58, v61);
        v40 = swift_allocObject();
        *(v40 + 16) = *&v39[v52];
        v41 = &v57[*(v37 + 48)];
        v38();
        v34 = v53;
        v23 = v62;
        v36 = 0;
        *v41 = sub_18B9FE68C;
        v41[1] = v40;
      }

      v42 = v57;
      v43 = v63;
      v34(v57, v36, 1, v63);
      v44 = v42;
      v45 = v55;
      sub_18BA1ECBC(v44, v55);
      if (v35(v45, 1, v43) == 1)
      {
      }

      (*(v45 + *(v63 + 48)))();

      result = (*v54)(v45, v61);
      v19 = v23;
      if (!v16)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (v17 <= v19 + 1)
    {
      v22 = v19 + 1;
    }

    else
    {
      v22 = v17;
    }

    v23 = v22 - 1;
    v21 = v58;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v20 >= v17)
      {
        v34 = *v60;
        (*v60)(v58, 1, 1, v63);
        v16 = 0;
        goto LABEL_13;
      }

      v16 = *(v46 + 8 * v20);
      ++v19;
      if (v16)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_18BA1E7D8(void *a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [a1 traitCollection];
    v5 = *(v3 + 40);
    *(v3 + 40) = v4;
    v6 = v4;

    sub_18BA1E284();
  }
}

double sub_18BA1E86C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  v8 = *(v3 + 16);
  if (!*(v8 + 16))
  {
    goto LABEL_5;
  }

  sub_18BC1E3F8();
  v9 = sub_18BB8B1C4(a1, a2, a3);
  if ((v10 & 1) == 0)
  {

LABEL_5:
    v12 = [a1 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6100);
    inited = swift_initStackObject();
    v14 = MEMORY[0x1E69DB648];
    *(inited + 16) = xmmword_18BC3E410;
    v15 = *v14;
    *(inited + 32) = v15;
    *(inited + 40) = v12;
    v16 = v15;
    v17 = v12;
    sub_18BA64BEC(inited);
    swift_setDeallocating();
    sub_18BA1EBFC(inited + 32);
    v18 = sub_18BC20B98();
    type metadata accessor for Key(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6110);
    sub_18BA1EC64();
    v19 = sub_18BC20998();

    v20 = CTLineCreateWithString();

    BoundsWithOptions = CTLineGetBoundsWithOptions(v20, 0);
    Width = CGRectGetWidth(BoundsWithOptions);
    v11 = _SFCeilingFloatToPixels(Width);

    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *(v4 + 16);
    *(v4 + 16) = 0x8000000000000000;
    sub_18BAA71D8(a1, a2, a3, isUniquelyReferenced_nonNull_native, v11);
    *(v4 + 16) = v24;
    swift_endAccess();
    return v11;
  }

  v11 = *(*(v8 + 56) + 8 * v9);

  return v11;
}

uint64_t sub_18BA1EA98()
{

  return swift_deallocClassInstance();
}

uint64_t sub_18BA1EB0C(uint64_t *a1, int a2)
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

uint64_t sub_18BA1EB54(uint64_t result, int a2, int a3)
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

unint64_t sub_18BA1EBA8()
{
  result = qword_1EA9D60F8;
  if (!qword_1EA9D60F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D60F8);
  }

  return result;
}

uint64_t sub_18BA1EBFC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6108);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_18BA1EC64()
{
  result = qword_1EA9D3C40;
  if (!qword_1EA9D3C40)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D3C40);
  }

  return result;
}

uint64_t sub_18BA1ECBC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D6120);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_18BA1EE14(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[qword_1EA9D6138] = 0;
  swift_unknownObjectUnownedInit();
  v7.receiver = v1;
  v7.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v7, sel_init);
  v5 = sub_18B8639C4();
  [a1 addInteraction_];

  return v4;
}

void sub_18BA1EEBC(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X4>, unint64_t *a4@<X8>)
{
  ObjectType = swift_getObjectType();
  Strong = swift_unknownObjectUnownedLoadStrong();
  v8 = *(a2 + 16);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D6280);
  v10 = v8(Strong, a1, a3, v9, ObjectType, a2);

  if (!(v10 >> 62))
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_10:
    *a4 = v10;
    return;
  }

  v11 = sub_18BC219A8();
  if (!v11)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v11 >= 1)
  {
    v12 = 0;
    do
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x18CFFD010](v12, v10);
      }

      else
      {
        v13 = *(v10 + 8 * v12 + 32);
      }

      v14 = v13;
      ++v12;
      [v13 safari:sub_18BC21FB8() setFluidCollectionViewSourceItem:?];
      swift_unknownObjectRelease();
      v15 = swift_unknownObjectUnownedLoadStrong();
      [v14 safari:v15 setFluidCollectionViewSourceView:?];
    }

    while (v11 != v12);
    goto LABEL_10;
  }

  __break(1u);
}

id sub_18BA1F090(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = a1;
  sub_18BA1F944(a4);

  swift_unknownObjectRelease();
  sub_18BA209E0();
  v8 = sub_18BC20D88();

  return v8;
}

uint64_t sub_18BA1F124(id *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v52 = a7;
  v57 = a2;
  v9 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v51 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_18BC21848();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v54 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v13 = &v49 - v12;
  v58 = *(v11 - 8);
  v14 = v58;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v49 - v19;
  *&v22 = MEMORY[0x1EEE9AC00](v21).n128_u64[0];
  v24 = &v49 - v23;
  v25 = [*a1 safari_fluidCollectionViewSourceItem];
  v53 = v17;
  v62 = v11;
  if (v25)
  {
    sub_18BC218B8();
    swift_unknownObjectRelease();
    sub_18B7B1AD4(&v60, v61);
  }

  else
  {
    memset(v61, 0, sizeof(v61));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5220);
  v26 = swift_dynamicCast();
  v27 = a4;
  v28 = *(v9 + 56);
  v28(v24, v26 ^ 1u, 1, v27);
  (*(v9 + 16))(v20, v57, v27);
  v28(v20, 0, 1, v27);
  v29 = v9;
  v30 = *(TupleTypeMetadata2 + 48);
  v31 = v14;
  v32 = *(v14 + 16);
  v57 = v24;
  v33 = v24;
  v34 = v62;
  v32(v13, v33, v62);
  v56 = v30;
  v32(&v13[v30], v20, v34);
  v55 = v29;
  v35 = *(v29 + 48);
  if (v35(v13, 1, v27) == 1)
  {
    v36 = *(v14 + 8);
    v37 = v62;
    v36(v20, v62);
    v38 = v13;
    if (v35(&v13[v56], 1, v27) == 1)
    {
      v36(v13, v37);
      v39 = 1;
LABEL_11:
      v42 = v57;
      goto LABEL_12;
    }
  }

  else
  {
    v50 = v20;
    v40 = v53;
    v37 = v62;
    v32(v53, v13, v62);
    v41 = v56;
    v38 = v13;
    if (v35(&v13[v56], 1, v27) != 1)
    {
      v43 = v55;
      v44 = &v13[v41];
      v45 = v51;
      (*(v55 + 32))(v51, v44, v27);
      v46 = v40;
      v39 = sub_18BC20AE8();
      v47 = *(v43 + 8);
      v47(v45, v27);
      v36 = *(v31 + 8);
      v36(v50, v37);
      v47(v46, v27);
      v36(v13, v37);
      goto LABEL_11;
    }

    v36 = *(v31 + 8);
    v36(v50, v37);
    (*(v55 + 8))(v40, v27);
  }

  v42 = v57;
  (*(v54 + 8))(v38, TupleTypeMetadata2);
  v39 = 0;
LABEL_12:
  v36(v42, v37);
  return v39 & 1;
}

id sub_18BA1F66C(void *a1, double a2, double a3, uint64_t a4, void *a5, void *a6)
{
  v10 = a5;
  swift_unknownObjectRetain();
  v11 = a1;
  sub_18BA1FE10(a6, a2, a3);

  swift_unknownObjectRelease();
  sub_18BA209E0();
  v12 = sub_18BC20D88();

  return v12;
}

id sub_18BA1F720(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  swift_unknownObjectRetain();
  v8 = a1;
  v9 = sub_18BA20288(v7);

  swift_unknownObjectRelease();

  return v9;
}

void sub_18BA1F7AC(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v9 = a1;
  sub_18BA2069C(a4, a5);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}