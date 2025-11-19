id sub_21EA90BEC(void *a1)
{
  v3 = OBJC_IVAR____TtC15ControlCenterUI28IconListRootFolderController_stretchApplier;
  *&v1[OBJC_IVAR____TtC15ControlCenterUI28IconListRootFolderController_stretchApplier] = 0;
  v4 = [objc_opt_self() rootSettings];
  v5 = [v4 invokeSettings];
  *&v1[OBJC_IVAR____TtC15ControlCenterUI28IconListRootFolderController_invokeSettings] = v5;
  v6 = v5;
  v7 = [v4 fluidPagingSettings];
  *&v1[OBJC_IVAR____TtC15ControlCenterUI28IconListRootFolderController_fluidPagingSettings] = v7;
  v8 = v7;
  v9 = sub_21EA9234C([a1 listLayoutProvider], v6, v8);
  swift_unknownObjectRelease();
  v10 = *&v1[v3];
  *&v1[v3] = v9;

  v11 = [objc_opt_self() hashTableWithOptions_];
  *&v1[OBJC_IVAR____TtC15ControlCenterUI28IconListRootFolderController_stretchedIconViews] = v11;
  v12 = [objc_opt_self() mapTableWithKeyOptions:0 valueOptions:0];
  *&v1[OBJC_IVAR____TtC15ControlCenterUI28IconListRootFolderController_stretchablesByPlatterView] = v12;
  v16.receiver = v1;
  v16.super_class = type metadata accessor for IconListRootFolderController();
  v13 = objc_msgSendSuper2(&v16, sel_initWithConfiguration_, a1);
  [v6 addKeyObserver_];
  [v8 addKeyObserver_];
  v14 = [objc_opt_self() defaultCenter];
  [v14 addObserver:v13 selector:sel_handleReduceMotionStateChangedNotification_ name:*MEMORY[0x277D764C0] object:0];

  return v13;
}

void sub_21EA90E30()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ControlCenterUI28IconListRootFolderController_stretchablesByPlatterView);
}

id sub_21EA90EA0()
{
  [*&v0[OBJC_IVAR____TtC15ControlCenterUI28IconListRootFolderController_invokeSettings] removeKeyObserver_];
  [*&v0[OBJC_IVAR____TtC15ControlCenterUI28IconListRootFolderController_fluidPagingSettings] removeKeyObserver_];
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for IconListRootFolderController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_21EA91018(uint64_t a1)
{
  v13.receiver = v1;
  v13.super_class = type metadata accessor for IconListRootFolderController();
  v3 = objc_msgSendSuper2(&v13, sel__makeContentViewWithConfiguration_, a1);
  v4 = sub_21EAA8DC0();
  [v3 setAccessibilityIdentifier_];

  type metadata accessor for IconListRootFolderView();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = *&v1[OBJC_IVAR____TtC15ControlCenterUI28IconListRootFolderController_stretchApplier];
    v7 = *(v5 + OBJC_IVAR____TtC15ControlCenterUI18IconListFolderView_moduleStretchApplier);
    *(v5 + OBJC_IVAR____TtC15ControlCenterUI18IconListFolderView_moduleStretchApplier) = v6;
    v8 = v3;
    v9 = v6;
    v10 = v8;
    v11 = v9;

    sub_21EA8E69C();
    sub_21EA8DF68();
  }

  return v3;
}

void sub_21EA91194(void *a1)
{
  sub_21EA59C28(a1);
  v3 = *(v1 + OBJC_IVAR____TtC15ControlCenterUI28IconListRootFolderController_stretchApplier);
  v11 = v3;
  v4 = [a1 customIconImageViewController];
  if (v4)
  {
    v10 = v4;
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v6 = [v5 containerViewPlatters];
      if (v6)
      {
        v7 = v6;
        sub_21E9F8880(0, &unk_28125B720);
        v8 = sub_21EAA8EC0();
      }

      else
      {
        v8 = 0;
      }

      sub_21EA914CC(a1, v8, v3);

      return;
    }

    v9 = v10;
  }

  else
  {
    v9 = v11;
  }
}

uint64_t sub_21EA912E0(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v4 = result;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v5 = v4;
      v6 = [v5 parentViewController];
      if (v6)
      {
        v7 = v6;

        v5 = v7;
      }

      else
      {
        [v5 ccui:0 safelyBeginAppearanceTransitionForChildViewControllers:0 animated:?];
        [v5 ccui_safelyEndAppearanceTransitionForChildViewControllers];
      }
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v9 = Strong;
      swift_beginAccess();
      v10 = swift_unknownObjectWeakLoadStrong();
      if (v10)
      {
        v11 = v10;
        v12 = v4;
        [v11 pagingViewController:v9 willRemove:v12];
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }

    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      v13 = result;
      v14 = v4;
      v15 = [v13 containerViewPlatters];
      if (v15)
      {
        v16 = v15;
        sub_21E9F8880(0, &unk_28125B720);
        v17 = sub_21EAA8EC0();
      }

      else
      {
        v17 = 0;
      }

      v18 = *(v2 + OBJC_IVAR____TtC15ControlCenterUI28IconListRootFolderController_stretchApplier);
      v19 = v18;
      sub_21EA9167C(a2, v17, v18);
    }
  }

  return result;
}

void sub_21EA914CC(uint64_t a1, unint64_t a2, void *a3)
{
  if (!a3)
  {
    return;
  }

  v6 = *(v3 + OBJC_IVAR____TtC15ControlCenterUI28IconListRootFolderController_stretchedIconViews);
  v14 = a3;
  [v6 addObject_];
  if (!a2)
  {
    goto LABEL_15;
  }

  if (!(a2 >> 62))
  {
    v7 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7 > 1)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

  if (sub_21EAA9380() < 2)
  {
LABEL_15:
    [v14 beginApplyingStretchToStretchable_];
    goto LABEL_16;
  }

  v13 = sub_21EAA9380();
  if (v13)
  {
    v7 = v13;
    if (v13 >= 1)
    {
LABEL_5:
      v8 = 0;
      v9 = *(v3 + OBJC_IVAR____TtC15ControlCenterUI28IconListRootFolderController_stretchablesByPlatterView);
      do
      {
        if ((a2 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x223D67210](v8, a2);
        }

        else
        {
          v10 = *(a2 + 8 * v8 + 32);
        }

        v11 = v10;
        ++v8;
        v12 = [objc_allocWithZone(CCUIIconSubviewStretchable) initWithIconView:a1 subview:v10];
        [v9 setObject:v12 forKey:v11];
        [v14 beginApplyingStretchToStretchable_];
      }

      while (v7 != v8);
      goto LABEL_16;
    }

    __break(1u);
    goto LABEL_15;
  }

LABEL_16:
}

void sub_21EA9167C(uint64_t a1, unint64_t a2, void *a3)
{
  if (!a3)
  {
    return;
  }

  v14 = a3;
  [v14 endApplyingStretchToStretchable_];
  [*(v3 + OBJC_IVAR____TtC15ControlCenterUI28IconListRootFolderController_stretchedIconViews) removeObject_];
  if (a2)
  {
    if (a2 >> 62)
    {
      if (sub_21EAA9380() >= 2)
      {
        v13 = sub_21EAA9380();
        if (v13)
        {
          v6 = v13;
          if (v13 >= 1)
          {
LABEL_5:
            v7 = 0;
            v8 = *(v3 + OBJC_IVAR____TtC15ControlCenterUI28IconListRootFolderController_stretchablesByPlatterView);
            do
            {
              if ((a2 & 0xC000000000000001) != 0)
              {
                v9 = MEMORY[0x223D67210](v7, a2);
              }

              else
              {
                v9 = *(a2 + 8 * v7 + 32);
              }

              v10 = v9;
              v11 = [v8 objectForKey_];
              if (v11)
              {
                v12 = v11;
                [v14 endApplyingStretchToStretchable_];
                [v8 removeObjectForKey_];

                v10 = v12;
              }

              ++v7;
            }

            while (v6 != v7);
            goto LABEL_17;
          }

          __break(1u);
        }
      }
    }

    else
    {
      v6 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6 > 1)
      {
        goto LABEL_5;
      }
    }
  }

LABEL_17:
}

void sub_21EA91824()
{
  v1 = v0;
  v2 = sub_21EAA83E0();
  v59 = *(v2 - 8);
  v60 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = OBJC_IVAR____TtC15ControlCenterUI28IconListRootFolderController_stretchApplier;
  v5 = *&v0[OBJC_IVAR____TtC15ControlCenterUI28IconListRootFolderController_stretchApplier];
  v63 = v5;
  v6 = 0;
  if (!UIAccessibilityIsReduceMotionEnabled())
  {
    v7 = [v1 listLayoutProvider];
    v6 = sub_21EA9234C(v7, *&v1[OBJC_IVAR____TtC15ControlCenterUI28IconListRootFolderController_invokeSettings], *&v1[OBJC_IVAR____TtC15ControlCenterUI28IconListRootFolderController_fluidPagingSettings]);
    swift_unknownObjectRelease();
  }

  v64 = v6;
  if (v5)
  {
    v8 = *&v1[OBJC_IVAR____TtC15ControlCenterUI28IconListRootFolderController_stretchedIconViews];
    v9 = v63;
    v65 = v8;
    v66 = v9;
    [v8 copy];
    sub_21EAA9320();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDDB18);
    swift_dynamicCast();
    v56 = v68;
    v10 = [v68 objectEnumerator];
    sub_21EAA8FB0();

    v62 = OBJC_IVAR____TtC15ControlCenterUI28IconListRootFolderController_stretchablesByPlatterView;
    sub_21EAA83D0();
    if (v71)
    {
      v11 = &off_278383000;
      v57 = v4;
      v58 = v1;
      while (1)
      {
        sub_21EA51D48(&aBlock, &v68);
        sub_21E9F8880(0, &unk_27CEDDB20);
        if (!swift_dynamicCast())
        {
          (*(v59 + 8))(v4, v60);

          v54 = v66;
          return;
        }

        v12 = v67;
        v13 = v66;
        v14 = [v12 v11[419]];
        if (v14)
        {
          break;
        }

LABEL_34:

        v29 = [v12 v11[419]];
        if (v29)
        {
          v30 = v29;
          objc_opt_self();
          v31 = swift_dynamicCastObjCClass();
          if (v31)
          {
            v32 = [v31 containerViewPlatters];
            if (v32)
            {
              v33 = v32;
              sub_21E9F8880(0, &unk_28125B720);
              v34 = sub_21EAA8EC0();

              if (v6)
              {
                goto LABEL_38;
              }
            }

            else
            {
              v34 = 0;
              if (v6)
              {
LABEL_38:
                v35 = v6;
                [v65 addObject_];
                if (!v34)
                {
                  goto LABEL_54;
                }

                if (v34 >> 62)
                {
                  if (sub_21EAA9380() < 2)
                  {
                    goto LABEL_54;
                  }

                  v42 = sub_21EAA9380();
                  if (v42)
                  {
                    v36 = v42;
                    if (v42 < 1)
                    {
                      goto LABEL_66;
                    }

LABEL_41:
                    v37 = 0;
                    v38 = *&v1[v62];
                    do
                    {
                      if ((v34 & 0xC000000000000001) != 0)
                      {
                        v39 = MEMORY[0x223D67210](v37, v34);
                      }

                      else
                      {
                        v39 = *(v34 + 8 * v37 + 32);
                      }

                      v40 = v39;
                      ++v37;
                      v41 = [objc_allocWithZone(CCUIIconSubviewStretchable) initWithIconView:v12 subview:v39];
                      [v38 setObject:v41 forKey:v40];
                      [v35 beginApplyingStretchToStretchable_];
                    }

                    while (v36 != v37);

                    v4 = v57;
                    v1 = v58;
                    v6 = v64;
                  }

                  else
                  {
                  }
                }

                else
                {
                  v36 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  if (v36 > 1)
                  {
                    goto LABEL_41;
                  }

LABEL_54:
                  [v35 beginApplyingStretchToStretchable_];
                }

                v11 = &off_278383000;
                goto LABEL_7;
              }
            }
          }

          else
          {
          }
        }

        else
        {
        }

LABEL_7:
        sub_21EAA83D0();
        if (!v71)
        {
          goto LABEL_58;
        }
      }

      v15 = v14;
      objc_opt_self();
      v16 = swift_dynamicCastObjCClass();
      if (!v16)
      {
LABEL_33:

        goto LABEL_34;
      }

      v17 = v16;
      v15 = v15;
      v18 = [v17 containerViewPlatters];
      if (v18)
      {
        v19 = v18;
        sub_21E9F8880(0, &unk_28125B720);
        v20 = sub_21EAA8EC0();
      }

      else
      {
        v20 = 0;
      }

      v13 = v13;
      [v13 endApplyingStretchToStretchable_];
      [v65 removeObject_];
      if (v20)
      {
        if (v20 >> 62)
        {
          if (sub_21EAA9380() > 1)
          {
            v28 = sub_21EAA9380();
            if (v28)
            {
              v21 = v28;
              if (v28 < 1)
              {
                __break(1u);
                goto LABEL_65;
              }

              goto LABEL_17;
            }

            v15 = v13;
LABEL_32:
            v11 = &off_278383000;
            goto LABEL_33;
          }
        }

        else
        {
          v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v21 > 1)
          {
LABEL_17:
            v22 = 0;
            v23 = *&v1[v62];
            do
            {
              if ((v20 & 0xC000000000000001) != 0)
              {
                v24 = MEMORY[0x223D67210](v22, v20);
              }

              else
              {
                v24 = *(v20 + 8 * v22 + 32);
              }

              v25 = v24;
              v26 = [v23 objectForKey_];
              if (v26)
              {
                v27 = v26;
                [v13 endApplyingStretchToStretchable_];
                [v23 removeObjectForKey_];

                v25 = v27;
              }

              ++v22;
            }

            while (v21 != v22);

            v15 = v13;
            v4 = v57;
            v1 = v58;
            v6 = v64;
            goto LABEL_32;
          }
        }
      }

      else
      {
      }

      v13 = v15;
      goto LABEL_32;
    }

LABEL_58:
    v43 = v6;
    (*(v59 + 8))(v4, v60);

    v44 = 0;
    goto LABEL_61;
  }

  v45 = swift_allocObject();
  *(v45 + 16) = v1;
  *(v45 + 24) = v6;
  v46 = swift_allocObject();
  v44 = sub_21EA924DC;
  *(v46 + 16) = sub_21EA924DC;
  *(v46 + 24) = v45;
  v72 = sub_21E9FEBF8;
  v73 = v46;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v70 = sub_21E9FEC38;
  v71 = &block_descriptor_13;
  v47 = _Block_copy(&aBlock);
  v43 = v6;
  v48 = v1;

  [v48 enumerateDisplayedIconViewsUsingBlock_];
  _Block_release(v47);
  LOBYTE(v47) = swift_isEscapingClosureAtFileLocation();

  if ((v47 & 1) == 0)
  {
    v6 = v64;
LABEL_61:
    v49 = *&v1[v61];
    *&v1[v61] = v6;
    v50 = v43;

    v51 = [v1 folderView];
    v52 = *&v51[OBJC_IVAR____TtC15ControlCenterUI18IconListFolderView_moduleStretchApplier];
    *&v51[OBJC_IVAR____TtC15ControlCenterUI18IconListFolderView_moduleStretchApplier] = v6;
    v53 = v50;

    sub_21EA8E69C();
    sub_21EA8DF68();

    sub_21EA4C674(v44);
    return;
  }

LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
}

void sub_21EA920E8(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = [a1 customIconImageViewController];
  if (v6)
  {
    v11 = v6;
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      v8 = [v7 containerViewPlatters];
      if (v8)
      {
        v9 = v8;
        sub_21E9F8880(0, &unk_28125B720);
        v10 = sub_21EAA8EC0();
      }

      else
      {
        v10 = 0;
      }

      sub_21EA914CC(a1, v10, a4);
    }

    else
    {
    }
  }
}

id sub_21EA9234C(void *a1, id a2, void *a3)
{
  [a2 maxOverscrollStretchScaleMagnitudeForModules];
  v7 = v6;
  [a2 maxVelocityStretchScaleMagnitudeForModules];
  v9 = v8;
  [a3 maxVelocityStretchScaleMagnitudeForModules];
  v11 = v10;
  [a2 maxVelocityStretchScaleScalarMagnitudeForModules];
  v13 = v12;
  [a3 maxVelocityStretchScaleScalarMagnitudeForModules];
  v15 = v14;
  v16 = 0.0;
  if (a1)
  {
    if (qword_28125B828 != -1)
    {
      swift_once();
    }

    v17 = [a1 layoutForIconLocation_];
    if (v17)
    {
      v18 = [v17 numberOfRowsForOrientation_];
      swift_unknownObjectRelease();
      v16 = v18;
    }
  }

  if (v13 <= v15)
  {
    v13 = v15;
  }

  if (v7 + v9 > v11)
  {
    v19 = v7 + v9;
  }

  else
  {
    v19 = v11;
  }

  [a2 maxOverscrollRubberbandModuleSpreadDistance];
  v21 = v16 * v20;
  [a3 maxVelocityModuleSpreadDistance];
  v23 = v21 + v22;
  v24 = objc_allocWithZone(CCUIStretchApplier);

  return [v24 initWithParameters_];
}

id PowerButtonGlyphView.__allocating_init(symbolConfiguration:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = objc_allocWithZone(type metadata accessor for PowerButtonGlyphView());
  v5 = sub_21EA92644(a1, 0.0, 0.0, 0.0, 0.0);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v5;
}

id PowerButtonGlyphView.init(symbolConfiguration:)(void *a1)
{
  v2 = objc_allocWithZone(type metadata accessor for PowerButtonGlyphView());
  v3 = sub_21EA92644(a1, 0.0, 0.0, 0.0, 0.0);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v3;
}

id sub_21EA92644(void *a1, double a2, double a3, double a4, double a5)
{
  v11 = sub_21EAA8DC0();
  v12 = [objc_opt_self() _systemImageNamed_withConfiguration_];

  v13 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
  *&v5[OBJC_IVAR___CCUIPowerButtonGlyphView_imageView] = v13;
  v17.receiver = v5;
  v17.super_class = type metadata accessor for PowerButtonGlyphView();
  v14 = v13;
  v15 = objc_msgSendSuper2(&v17, sel_initWithFrame_, a2, a3, a4, a5);
  [v15 addSubview_];

  return v15;
}

id PowerButtonGlyphView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id PowerButtonGlyphView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PowerButtonGlyphView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *DynamicControlsViewController.init(delegate:)()
{
  v1 = v0;
  swift_unknownObjectWeakInit();
  v2 = OBJC_IVAR___CCUIDynamicControlsViewController_buttonViewModel;
  type metadata accessor for DynamicControlsViewModel();
  swift_allocObject();
  *&v0[v2] = sub_21EA44E24();
  swift_unknownObjectWeakAssign();
  sub_21EA92B40();

  sub_21EAA8950();
  v14[1] = v3;
  sub_21EA92B98();

  v4 = sub_21EAA8C70();
  v5 = type metadata accessor for HostingViewController();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR____TtC15ControlCenterUI21HostingViewController_rootView] = v4;
  v14[0] = v4;
  v7 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDDBC0));
  swift_retain_n();
  *&v6[OBJC_IVAR____TtC15ControlCenterUI21HostingViewController_hostingController] = sub_21EAA8A30();
  v16.receiver = v6;
  v16.super_class = v5;
  v8 = objc_msgSendSuper2(&v16, sel_initWithNibName_bundle_, 0, 0);

  *&v1[OBJC_IVAR___CCUIDynamicControlsViewController_hostingViewController] = v8;
  v9 = type metadata accessor for DynamicControlsViewController();
  v15.receiver = v1;
  v15.super_class = v9;
  v10 = objc_msgSendSuper2(&v15, sel_initWithNibName_bundle_, 0, 0);
  v11 = *&v10[OBJC_IVAR___CCUIDynamicControlsViewController_buttonViewModel];
  v14[3] = v9;
  v14[4] = &off_28301A988;
  v12 = v10;

  swift_unknownObjectRelease();

  v14[0] = v12;
  swift_beginAccess();
  sub_21EA9416C(v14, v11 + 16);
  swift_endAccess();

  return v12;
}

unint64_t sub_21EA92B40()
{
  result = qword_27CEDDBB0;
  if (!qword_27CEDDBB0)
  {
    type metadata accessor for DynamicControlsViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEDDBB0);
  }

  return result;
}

unint64_t sub_21EA92B98()
{
  result = qword_27CEDDBB8;
  if (!qword_27CEDDBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEDDBB8);
  }

  return result;
}

uint64_t sub_21EA92E14()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDDBD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21EAB6000;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21EAA88C0();

  *(inited + 32) = v3;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21EAA88C0();

  *(inited + 33) = v3;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21EAA88C0();

  *(inited + 34) = v3;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21EAA88C0();

  *(inited + 35) = v3;
  if (*(inited + 32) & 1) != 0 || (*(inited + 33))
  {
    v1 = 1;
  }

  else
  {
    v1 = *(inited + 34) | v3;
  }

  return v1 & 1;
}

uint64_t sub_21EA93008(unint64_t a1, unint64_t a2)
{
  v111 = a2;
  v4 = sub_21EAA8580();
  v103 = *(v4 - 8);
  v104 = v4;
  MEMORY[0x28223BE20](v4);
  v102 = &v99 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_21EAA85A0();
  v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v99 = &v99 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDDBD8);
  MEMORY[0x28223BE20](v7 - 8);
  v105 = &v99 - v8;
  v9 = sub_21EAA8790();
  v108 = *(v9 - 8);
  v109 = v9;
  MEMORY[0x28223BE20](v9);
  v107 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_21EAA9370();
    sub_21E9F8880(0, &qword_28125B790);
    sub_21E9F84D4();
    sub_21EAA8F90();
    a1 = v119;
    v11 = v120;
    v12 = v121;
    KeyPath = v122;
    v14 = v123;
  }

  else
  {
    v15 = -1 << *(a1 + 32);
    v11 = a1 + 56;
    v12 = ~v15;
    v16 = -v15;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v14 = (v17 & *(a1 + 56));

    KeyPath = 0;
  }

  v18 = 0;
  LODWORD(v114) = 0;
  LODWORD(v113) = 0;
  v19 = 0;
  v106 = v12;
  v112 = a1;
  if ((a1 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v20 = KeyPath;
    v21 = v14;
    v22 = KeyPath;
    if (!v14)
    {
      break;
    }

LABEL_12:
    v2 = ((v21 - 1) & v21);
    v23 = *(*(a1 + 48) + ((v22 << 9) | (8 * __clz(__rbit64(v21)))));
    if (!v23)
    {
      goto LABEL_18;
    }

    while (1)
    {
      v19 = ([v23 sensorType] == 0) | v19;
      v25 = [v23 sensorType] == 1;
      LODWORD(v113) = v25 | v113;
      v26 = [v23 sensorType] == 2;
      LODWORD(v114) = v26 | v114;
      v27 = [v23 sensorType];

      v18 = (v27 == 3) | v18;
      KeyPath = v22;
      v14 = v2;
      a1 = v112;
      if ((v112 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      v24 = sub_21EAA93A0();
      if (v24)
      {
        v115 = v24;
        sub_21E9F8880(0, &qword_28125B790);
        swift_dynamicCast();
        v23 = v117;
        v22 = KeyPath;
        v2 = v14;
        if (v117)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v22 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
      goto LABEL_76;
    }

    if (v22 >= ((v12 + 64) >> 6))
    {
      break;
    }

    v21 = *(v11 + 8 * v22);
    ++v20;
    if (v21)
    {
      goto LABEL_12;
    }
  }

LABEL_18:
  sub_21E9FBFD4();
  KeyPath = v110;
  swift_getKeyPath();
  swift_getKeyPath();
  v28 = v19 & 1;
  LOBYTE(v117) = v19 & 1;

  sub_21EAA88D0();
  swift_getKeyPath();
  swift_getKeyPath();
  v29 = v113 & 1;
  LOBYTE(v117) = v113 & 1;

  sub_21EAA88D0();
  swift_getKeyPath();
  swift_getKeyPath();
  v30 = v114 & 1;
  LOBYTE(v117) = v114 & 1;

  sub_21EAA88D0();
  swift_getKeyPath();
  swift_getKeyPath();
  v18 &= 1u;
  LOBYTE(v117) = v18;

  sub_21EAA88D0();
  v2 = v107;
  sub_21EAA8750();
  v31 = sub_21EAA8760();
  v32 = sub_21EAA9000();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 67109888;
    *(v33 + 4) = v28;
    *(v33 + 8) = 1024;
    *(v33 + 10) = v29;
    *(v33 + 14) = 1024;
    *(v33 + 16) = v30;
    *(v33 + 20) = 1024;
    *(v33 + 22) = v18;
    _os_log_impl(&dword_21E9F5000, v31, v32, "showCamera: %{BOOL}d, showMicrophone: %{BOOL}d, showLocation: %{BOOL}d, showGameMode: %{BOOL}d", v33, 0x1Au);
    MEMORY[0x223D68580](v33, -1, -1);
  }

  (*(v108 + 8))(v2, v109);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v35 = [Strong bundleIdentifierUsingAudioVideoControls], swift_unknownObjectRelease(), v35))
  {
    v19 = sub_21EAA8E00();
    v37 = v36;
  }

  else
  {
    v19 = 0;
    v37 = 0xE000000000000000;
  }

  v38 = HIBYTE(v37) & 0xF;
  if ((v37 & 0x2000000000000000) == 0)
  {
    v38 = v19 & 0xFFFFFFFFFFFFLL;
  }

  v39 = v38 != 0;
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v117) = v39;

  sub_21EAA88D0();
  v117 = 0;
  v118 = 0xE000000000000000;
  v40 = v111;
  v41 = v111 >> 62;
  if (!(v111 >> 62))
  {
    v42 = *((v111 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v42)
    {
      goto LABEL_28;
    }

LABEL_80:

    goto LABEL_81;
  }

LABEL_79:
  v42 = sub_21EAA9380();
  if (!v42)
  {
    goto LABEL_80;
  }

LABEL_28:
  v114 = v40 & 0xC000000000000001;
  if ((v40 & 0xC000000000000001) != 0)
  {
    goto LABEL_83;
  }

  if (!*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_85;
  }

  for (i = *(v40 + 32); ; i = MEMORY[0x223D67210](0, v40))
  {
    v44 = i;
    v45 = [i displayNameForCompactView];
    v46 = sub_21EAA8E00();
    v2 = v47;

    if (v41)
    {
      v48 = sub_21EAA9380();
      v41 = v48 - 1;
      if (v48 == 1)
      {
LABEL_49:

        MEMORY[0x223D66C10](v46, v2);

        goto LABEL_81;
      }
    }

    else
    {
      v48 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v41 = v48 - 1;
      if (v48 == 1)
      {
        goto LABEL_49;
      }
    }

    v112 = v44;
    v113 = v46;
    swift_getKeyPath();
    KeyPath = swift_getKeyPath();
    sub_21EAA88C0();

    if (v115 != 1)
    {
      break;
    }

    v18 = 0;
    v113 = v40 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v114)
      {
        v49 = MEMORY[0x223D67210](v18, v40);
        goto LABEL_39;
      }

      if (v18 >= *(v113 + 16))
      {
        break;
      }

      v49 = *(v40 + 8 * v18 + 32);
LABEL_39:
      v50 = v49;
      v40 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_79;
      }

      v2 = [v49 bundleIdentifier];
      v51 = sub_21EAA8E00();
      KeyPath = v52;

      v53 = v51 == v19 && KeyPath == v37;
      if (v53)
      {

LABEL_58:

        v67 = [v50 displayNameForCompactView];
        v68 = sub_21EAA8E00();
        v70 = v69;

        MEMORY[0x223D66C10](v68, v70);
LABEL_59:

        goto LABEL_81;
      }

      v41 = sub_21EAA9530();

      if (v41)
      {
        goto LABEL_58;
      }

      ++v18;
      v53 = v40 == v42;
      v40 = v111;
      if (v53)
      {
        goto LABEL_59;
      }
    }

    __break(1u);
LABEL_83:
    ;
  }

  if (v48 != 2)
  {
    v56 = v112;
    if (v48 >= 3)
    {
      if (qword_28125B658 != -1)
      {
        swift_once();
      }

      v57 = qword_28125C5F8;
      v58 = sub_21EAA8DC0();
      v59 = sub_21EAA8DC0();
      v60 = [v57 localizedStringForKey:v58 value:0 table:v59];

      sub_21EAA8E00();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDDBE0);
      v61 = swift_allocObject();
      *(v61 + 16) = xmmword_21EAB7210;
      *(v61 + 56) = MEMORY[0x277D837D0];
      v62 = sub_21EA94494();
      *(v61 + 32) = v113;
      *(v61 + 40) = v2;
      v63 = MEMORY[0x277D83C10];
      *(v61 + 96) = MEMORY[0x277D83B88];
      *(v61 + 104) = v63;
      *(v61 + 64) = v62;
      *(v61 + 72) = v41;
      v64 = sub_21EAA8DD0();
      v66 = v65;

      MEMORY[0x223D66C10](v64, v66);
    }

    goto LABEL_81;
  }

  if (v114)
  {
    v18 = MEMORY[0x223D67210](1, v40);
    v55 = v105;
    goto LABEL_63;
  }

  v55 = v105;
  if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
  {
    __break(1u);
    return result;
  }

  v18 = *(v40 + 40);
LABEL_63:
  KeyPath = v113;
  v71 = [v18 displayNameForCompactView];
  v19 = sub_21EAA8E00();
  v114 = v72;

  v73 = v99;
  sub_21EAA8560();
  v74 = v102;
  sub_21EAA8590();
  (*(v100 + 8))(v73, v101);
  sub_21EAA8570();
  (*(v103 + 8))(v74, v104);
  v75 = sub_21EAA8550();
  v76 = *(v75 - 8);
  if ((*(v76 + 48))(v55, 1, v75) == 1)
  {
    sub_21EA944E8(v55);
    goto LABEL_65;
  }

  v87 = sub_21EAA8540();
  v89 = v88;
  (*(v76 + 8))(v55, v75);
  if (v87 == 29541 && v89 == 0xE200000000000000 || (sub_21EAA9530() & 1) != 0 || v87 == 25960 && v89 == 0xE200000000000000)
  {

    goto LABEL_73;
  }

LABEL_76:
  v96 = sub_21EAA9530();

  if ((v96 & 1) == 0)
  {
LABEL_65:
    if (qword_28125B658 == -1)
    {
LABEL_66:
      v77 = qword_28125C5F8;
      v78 = sub_21EAA8DC0();
      v79 = sub_21EAA8DC0();
      v80 = [v77 localizedStringForKey:v78 value:0 table:v79];

      sub_21EAA8E00();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDDBE0);
      v81 = swift_allocObject();
      *(v81 + 16) = xmmword_21EAB7210;
      v82 = MEMORY[0x277D837D0];
      *(v81 + 56) = MEMORY[0x277D837D0];
      v83 = sub_21EA94494();
      *(v81 + 32) = KeyPath;
      *(v81 + 40) = v2;
      *(v81 + 96) = v82;
      *(v81 + 104) = v83;
      *(v81 + 64) = v83;
      *(v81 + 72) = v19;
      *(v81 + 80) = v114;
      v84 = sub_21EAA8E10();
      v86 = v85;

      goto LABEL_74;
    }

LABEL_85:
    swift_once();
    goto LABEL_66;
  }

LABEL_73:
  v90 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDC980);
  v91 = swift_allocObject();
  *(v91 + 16) = xmmword_21EAB7210;
  *(v91 + 32) = KeyPath;
  *(v91 + 40) = v2;
  v92 = v114;
  *(v91 + 48) = v19;
  *(v91 + 56) = v92;
  v93 = sub_21EAA8EB0();

  v94 = [v90 localizedStringByJoiningStrings_];

  v84 = sub_21EAA8E00();
  v86 = v95;

LABEL_74:
  MEMORY[0x223D66C10](v84, v86);

LABEL_81:
  v97 = v117;
  v98 = v118;
  swift_getKeyPath();
  swift_getKeyPath();
  v115 = v97;
  v116 = v98;

  return sub_21EAA88D0();
}

id DynamicControlsViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_21EAA8DC0();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id DynamicControlsViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DynamicControlsViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21EA9416C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDC8C8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21EA94290@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21EAA88C0();

  *a1 = v3;
  return result;
}

uint64_t sub_21EA94320()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21EAA88D0();
}

uint64_t sub_21EA94390@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21EAA88C0();

  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_21EA94410()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21EAA88D0();
}

unint64_t sub_21EA94494()
{
  result = qword_27CEDDBE8;
  if (!qword_27CEDDBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEDDBE8);
  }

  return result;
}

uint64_t sub_21EA944E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDDBD8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_21EA945E4(uint64_t a1, void *a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_21EA661C0(a1, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v12;
  }

  else
  {
    v6 = sub_21EA4A554(a2);
    if (v7)
    {
      v8 = v6;
      v9 = swift_isUniquelyReferenced_nonNull_native();
      v10 = *v2;
      v13 = *v3;
      if (!v9)
      {
        sub_21EA65644();
        v10 = v13;
      }

      sub_21EA64A60(v8, v10);
      *v3 = v10;
    }

    else
    {
    }
  }
}

void sub_21EA946E8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

id sub_21EA9475C()
{
  v1 = [objc_allocWithZone(type metadata accessor for IconListLayout()) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDDC28);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21EAB6F50;
  if (qword_28125B828 != -1)
  {
    swift_once();
  }

  v3 = qword_28125C600;
  *(inited + 32) = qword_28125C600;
  *(inited + 40) = v1;
  v4 = v3;
  v5 = v1;
  sub_21EA51708(inited);
  swift_setDeallocating();
  sub_21EA95288(inited + 32);
  type metadata accessor for SBIconLocation(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEDDC18);
  sub_21EA95240(&qword_28125B820, type metadata accessor for SBIconLocation);
  v6 = sub_21EAA8DA0();

  v7 = [v0 initWithListLayouts_];

  return v7;
}

id sub_21EA94B54()
{
  v1 = OBJC_IVAR____TtC15ControlCenterUI14IconListLayout____lazy_storage___iconGridSizeClassSizes;
  v2 = *(v0 + OBJC_IVAR____TtC15ControlCenterUI14IconListLayout____lazy_storage___iconGridSizeClassSizes);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15ControlCenterUI14IconListLayout____lazy_storage___iconGridSizeClassSizes);
  }

  else
  {
    v4 = sub_21EA94FD8(1);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_21EA94C00(void *a1)
{
  CCUIGridSizeClassForSBHIconGridSizeClass();
  v2 = sub_21EAA9010();
  v3 = objc_opt_self();
  v4 = a1;
  v5 = [v3 sbh:v2 valueWithSBHIconGridSize:?];
  swift_beginAccess();
  sub_21EA945E4(v5, v4);
  return swift_endAccess();
}

id sub_21EA94F6C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_21EA94FD8(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = MEMORY[0x277D84F98];
  v3 = [objc_opt_self() controlCenterDomain];
  v4 = [v3 allNonDefaultGridSizeClasses];

  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = v2;
  v11[4] = sub_21EA951EC;
  v11[5] = v5;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_21EA946E8;
  v11[3] = &block_descriptor_14;
  v6 = _Block_copy(v11);

  [v4 enumerateGridSizeClassesUsingBlock_];
  _Block_release(v6);

  swift_beginAccess();
  v7 = objc_allocWithZone(MEMORY[0x277D661C0]);
  type metadata accessor for SBHIconGridSizeClass(0);
  sub_21EA951F4();
  sub_21EA95240(&qword_28125B7B0, type metadata accessor for SBHIconGridSizeClass);

  v8 = sub_21EAA8DA0();

  v9 = [v7 initWithGridSizeClassSizes_];

  return v9;
}

unint64_t sub_21EA951F4()
{
  result = qword_28125B718;
  if (!qword_28125B718)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28125B718);
  }

  return result;
}

uint64_t sub_21EA95240(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21EA95288(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEDDC30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id HostingViewController.__allocating_init(rootView:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC15ControlCenterUI21HostingViewController_rootView] = a1;
  v8 = a1;
  v4 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDDBC0));
  swift_retain_n();
  *&v3[OBJC_IVAR____TtC15ControlCenterUI21HostingViewController_hostingController] = sub_21EAA8A30();
  v7.receiver = v3;
  v7.super_class = v1;
  v5 = objc_msgSendSuper2(&v7, sel_initWithNibName_bundle_, 0, 0);

  return v5;
}

id HostingViewController.init(rootView:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC15ControlCenterUI21HostingViewController_rootView] = a1;
  v6 = a1;
  v2 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDDBC0));
  swift_retain_n();
  *&v1[OBJC_IVAR____TtC15ControlCenterUI21HostingViewController_hostingController] = sub_21EAA8A30();
  v5.receiver = v1;
  v5.super_class = type metadata accessor for HostingViewController();
  v3 = objc_msgSendSuper2(&v5, sel_initWithNibName_bundle_, 0, 0);

  return v3;
}

id HostingViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void sub_21EA95578()
{
  v1 = v0;
  v34.receiver = v0;
  v34.super_class = type metadata accessor for HostingViewController();
  objc_msgSendSuper2(&v34, sel_viewDidLoad);
  v2 = *&v0[OBJC_IVAR____TtC15ControlCenterUI21HostingViewController_hostingController];
  [v2 willMoveToParentViewController_];
  v3 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v4 = [v2 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_10;
  }

  v5 = v4;
  [v3 addSubview_];

  [v2 didMoveToParentViewController_];
  v6 = [v2 view];
  if (!v6)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = v6;
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];

  v8 = [v2 view];
  if (!v8)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = v8;
  v10 = [objc_opt_self() clearColor];
  [v9 setBackgroundColor_];

  [v1 setView_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDCF10);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_21EAB6CF0;
  v12 = [v3 leadingAnchor];
  v13 = [v2 view];
  if (!v13)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v14 = v13;
  v15 = [v13 leadingAnchor];

  v16 = [v12 constraintEqualToAnchor_];
  *(v11 + 32) = v16;
  v17 = [v3 trailingAnchor];
  v18 = [v2 view];
  if (!v18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v19 = v18;
  v20 = [v18 trailingAnchor];

  v21 = [v17 constraintEqualToAnchor_];
  *(v11 + 40) = v21;
  v22 = [v3 topAnchor];
  v23 = [v2 view];
  if (!v23)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v24 = v23;
  v25 = [v23 topAnchor];

  v26 = [v22 constraintEqualToAnchor_];
  *(v11 + 48) = v26;
  v27 = [v3 bottomAnchor];
  v28 = [v2 view];
  if (v28)
  {
    v29 = v28;
    v30 = objc_opt_self();
    v31 = [v29 bottomAnchor];

    v32 = [v27 constraintEqualToAnchor_];
    *(v11 + 56) = v32;
    sub_21EA59878();
    v33 = sub_21EAA8EB0();

    [v30 activateConstraints_];

    return;
  }

LABEL_15:
  __break(1u);
}

id HostingViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_21EAA8DC0();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id HostingViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HostingViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_21EA95B64(void *a1)
{
  v1 = [a1 contentContainerView];

  return v1;
}

id SBIconView.caAnimationContainerView.getter()
{
  v1 = [v0 contentContainerView];

  return v1;
}

id sub_21EA95BD4(void *a1)
{
  v2 = [a1 identity];
  v3 = [v2 extensionIdentity];
  v4 = [v2 kind];
  if (!v4)
  {
    sub_21EAA8E00();
    v4 = sub_21EAA8DC0();
  }

  v5 = [a1 type];
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEDD080);
  sub_21EAA86D0();
  v6 = sub_21EAA8DC0();
  swift_endAccess();

  v7 = *MEMORY[0x277CFA130];
  swift_beginAccess();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDC638);
  if ((*(*(v8 - 8) + 48))(&v3[v7], 1, v8))
  {
    swift_endAccess();
    v9 = 0;
  }

  else
  {
    sub_21EAA86D0();
    swift_endAccess();
    v9 = sub_21EAA8DC0();
  }

  v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithKind:v4 controlType:v5 extensionBundleIdentifier:v6 containerBundleIdentifier:v9];

  return v10;
}

uint64_t getEnumTagSinglePayload for PageIndicatorType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_20;
  }

  v2 = a2 + 6;
  if (a2 + 6 >= 0xFFFF00)
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
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 6;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 6;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 4)
  {
    v8 = v7 - 3;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 4)
  {
    return v8 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PageIndicatorType(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 6;
  if (a3 + 6 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFA)
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_21EA95F48(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 4)
  {
    return v1 - 3;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_21EA95F5C(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 3;
  }

  return result;
}

uint64_t sub_21EA95F7C()
{
  v1 = *v0;
  sub_21EAA95B0();
  if ((v1 - 4) >= 3u)
  {
    MEMORY[0x223D67380](2);
  }

  else
  {
    v1 = qword_21EAB7838[(v1 - 4)];
  }

  MEMORY[0x223D67380](v1);
  return sub_21EAA95D0();
}

uint64_t sub_21EA95FF4()
{
  v1 = *v0;
  if ((v1 - 4) >= 3u)
  {
    MEMORY[0x223D67380](2);
  }

  else
  {
    v1 = qword_21EAB7838[(v1 - 4)];
  }

  return MEMORY[0x223D67380](v1);
}

uint64_t sub_21EA96050()
{
  v1 = *v0;
  sub_21EAA95B0();
  if ((v1 - 4) >= 3u)
  {
    MEMORY[0x223D67380](2);
  }

  else
  {
    v1 = qword_21EAB7838[(v1 - 4)];
  }

  MEMORY[0x223D67380](v1);
  return sub_21EAA95D0();
}

BOOL sub_21EA960C4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  switch(v2)
  {
    case 6:
      return v3 == 6;
    case 5:
      return v3 == 5;
    case 4:
      return v3 == 4;
  }

  if ((v3 - 4) < 3)
  {
    return 0;
  }

  return v2 == v3;
}

uint64_t sub_21EA9612C()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v3 = 1701670760;
    if (v1 != 1)
    {
      v3 = 0x697463656E6E6F63;
    }

    if (*v0)
    {
      return v3;
    }

    else
    {
      return 0x6979616C50776F6ELL;
    }
  }

  else if (*v0 > 4u)
  {
    if (v1 == 6)
    {
      return 0x7974706D65;
    }

    else
    {
      return 0x646578696DLL;
    }
  }

  else if (v1 == 3)
  {
    return 0x65746F6D65527674;
  }

  else
  {
    return 0x657469726F766166;
  }
}

unint64_t sub_21EA96204()
{
  result = qword_27CEDDC50;
  if (!qword_27CEDDC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEDDC50);
  }

  return result;
}

uint64_t sub_21EA96258()
{
  v1 = 0x6979616C50776F6ELL;
  v2 = 0x697463656E6E6F63;
  if (*v0 != 2)
  {
    v2 = 0x65746F6D65527674;
  }

  if (*v0)
  {
    v1 = 1701670760;
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

uint64_t sub_21EA962D8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD00000000000002ELL && 0x800000021EABF670 == a2;
  if (v3 || (sub_21EAA9530() & 1) != 0)
  {

    return 0;
  }

  else if (sub_21EAA8E80())
  {

    return 1;
  }

  else if (a1 == 0xD00000000000002BLL && 0x800000021EABF6A0 == a2 || (sub_21EAA9530() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000002CLL && 0x800000021EABF6D0 == a2 || (sub_21EAA9530() & 1) != 0 || a1 == 0xD00000000000001BLL && 0x800000021EABE520 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_21EAA9530();

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

unint64_t sub_21EA96480()
{
  result = qword_27CEDDC58;
  if (!qword_27CEDDC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEDDC58);
  }

  return result;
}

id sub_21EA964D4(void *a1, double a2, double a3)
{
  if (a1)
  {
    v7 = a1;
    if ([v7 type] == 9)
    {
      v10.receiver = v3;
      v10.super_class = type metadata accessor for EmptyGridCell();
      v8 = objc_msgSendSuper2(&v10, sel_hitTest_withEvent_, v7, a2, a3);

      return v8;
    }
  }

  v11.receiver = v3;
  v11.super_class = type metadata accessor for EmptyGridCell();
  result = objc_msgSendSuper2(&v11, sel_hitTest_withEvent_, a1, a2, a3);
  if (result)
  {
    if (result == v3)
    {

      return 0;
    }
  }

  return result;
}

id sub_21EA96718()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EmptyGridCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21EA96770(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  v3 = a2 != 0;

  v2(v3);
}

void SensorAttributionExpandedViewController.init(moduleInstanceManager:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___CCUISensorAttributionExpandedViewController_audioControlsContentViewController] = 0;
  *&v1[OBJC_IVAR___CCUISensorAttributionExpandedViewController_audioControlsContainerView] = 0;
  *&v1[OBJC_IVAR___CCUISensorAttributionExpandedViewController_videoControlsContentViewController] = 0;
  *&v1[OBJC_IVAR___CCUISensorAttributionExpandedViewController_videoControlsContainerView] = 0;
  *&v1[OBJC_IVAR___CCUISensorAttributionExpandedViewController_stackViewLeadingConstraint] = 0;
  *&v1[OBJC_IVAR___CCUISensorAttributionExpandedViewController_stackViewTrailingConstraint] = 0;
  *&v1[OBJC_IVAR___CCUISensorAttributionExpandedViewController_stackViewWidthConstraint] = 0;
  v3 = &v1[OBJC_IVAR___CCUISensorAttributionExpandedViewController_edgeInsets];
  v4 = *(MEMORY[0x277D768C8] + 16);
  *v3 = *MEMORY[0x277D768C8];
  v3[1] = v4;
  v1[OBJC_IVAR___CCUISensorAttributionExpandedViewController_audioControlsEnabled] = 0;
  v1[OBJC_IVAR___CCUISensorAttributionExpandedViewController_videoControlsEnabled] = 0;
  v5 = &v1[OBJC_IVAR___CCUISensorAttributionExpandedViewController_audioModuleIdentifier];
  *v5 = 0xD000000000000036;
  v5[1] = 0x800000021EABF730;
  v6 = &v1[OBJC_IVAR___CCUISensorAttributionExpandedViewController_videoModuleIdentifier];
  *v6 = 0xD000000000000036;
  v6[1] = 0x800000021EABF770;
  *&v1[OBJC_IVAR___CCUISensorAttributionExpandedViewController_audioModuleInstance] = 0;
  *&v1[OBJC_IVAR___CCUISensorAttributionExpandedViewController_videoModuleInstance] = 0;
  *&v1[OBJC_IVAR___CCUISensorAttributionExpandedViewController_sensorActivityData] = MEMORY[0x277D84FA0];
  v7 = &v1[OBJC_IVAR___CCUISensorAttributionExpandedViewController_audioVideoHeaderTrailingText];
  *v7 = 0;
  v7[1] = 0;
  *&v1[OBJC_IVAR___CCUISensorAttributionExpandedViewController_gameModeActivityDataProvider] = 0;
  v1[OBJC_IVAR___CCUISensorAttributionExpandedViewController__isExpanded] = 0;
  sub_21E9FE6EC(a1, aBlock);
  sub_21E9F8880(0, &unk_28125B770);
  swift_dynamicCast();
  *&v1[OBJC_IVAR___CCUISensorAttributionExpandedViewController_moduleInstanceManager] = aBlock[6];
  if (qword_28125B658 != -1)
  {
    swift_once();
  }

  v8 = qword_28125C5F8;
  v9 = sub_21EAA8DC0();
  aBlock[4] = sub_21EA96C7C;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21EA96C88;
  aBlock[3] = &block_descriptor_15;
  v10 = _Block_copy(aBlock);

  v11 = [objc_opt_self() materialViewWithRecipeNamed:v9 inBundle:v8 options:0 initialWeighting:v10 scaleAdjustment:1.0];
  _Block_release(v10);

  if (v11)
  {
    *&v1[OBJC_IVAR___CCUISensorAttributionExpandedViewController_materialView] = v11;
    v12 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
    *&v1[OBJC_IVAR___CCUISensorAttributionExpandedViewController_stackView] = v12;
    v27.receiver = v1;
    v27.super_class = type metadata accessor for SensorAttributionExpandedViewController();
    v13 = objc_msgSendSuper2(&v27, sel_initWithNibName_bundle_, 0, 0);
    v14 = OBJC_IVAR___CCUISensorAttributionExpandedViewController_moduleInstanceManager;
    v15 = *&v13[OBJC_IVAR___CCUISensorAttributionExpandedViewController_moduleInstanceManager];
    v16 = v13;
    v17 = v15;

    v18 = sub_21EAA8DC0();

    v19 = sub_21EAA8DC0();

    v20 = [v17 obtainModuleWithBundleIdentifier:v18 uniqueIdentifier:v19];

    v21 = *&v16[OBJC_IVAR___CCUISensorAttributionExpandedViewController_audioModuleInstance];
    *&v16[OBJC_IVAR___CCUISensorAttributionExpandedViewController_audioModuleInstance] = v20;

    v22 = *&v13[v14];

    v23 = sub_21EAA8DC0();

    v24 = sub_21EAA8DC0();

    v25 = [v22 obtainModuleWithBundleIdentifier:v23 uniqueIdentifier:v24];

    __swift_destroy_boxed_opaque_existential_1(a1);
    v26 = *&v16[OBJC_IVAR___CCUISensorAttributionExpandedViewController_videoModuleInstance];
    *&v16[OBJC_IVAR___CCUISensorAttributionExpandedViewController_videoModuleInstance] = v25;
  }

  else
  {
    __break(1u);
  }
}

double sub_21EA96C88(uint64_t a1, double a2)
{
  v3 = *(a1 + 32);

  v5 = v3(v4, a2);

  return v5;
}

void sub_21EA96D5C()
{
  v84.receiver = v0;
  v84.super_class = type metadata accessor for SensorAttributionExpandedViewController();
  objc_msgSendSuper2(&v84, sel_viewDidLoad);
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_15;
  }

  v2 = v1;
  [v1 setAlpha_];

  v3 = OBJC_IVAR___CCUISensorAttributionExpandedViewController_materialView;
  [*&v0[OBJC_IVAR___CCUISensorAttributionExpandedViewController_materialView] setUseBuiltInAlphaTransformerAndBackdropScaleAdjustment_];
  v4 = *&v0[v3];
  v5 = [v0 view];
  if (!v5)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v6 = v5;
  [v5 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  [v4 setFrame_];
  [*&v0[v3] setAutoresizingMask_];
  v15 = [v0 view];
  if (!v15)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v16 = v15;
  [v15 addSubview_];

  v17 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v0 action:sel_recognizedDismissTapGesture];
  [v17 setDelegate_];
  v18 = [v0 view];
  if (!v18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19 = v18;
  [v18 addGestureRecognizer_];

  v20 = [objc_allocWithZone(MEMORY[0x277CF0D88]) init];
  v21 = [v0 view];
  if (!v21)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v22 = v21;
  v23 = v20;
  [v22 addSubview_];

  [v23 setTranslatesAutoresizingMaskIntoConstraints_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDCF10);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_21EAB6CF0;
  v25 = [v23 topAnchor];

  v26 = [v0 view];
  if (!v26)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v27 = v26;
  v28 = [v26 topAnchor];

  v29 = [v25 constraintEqualToAnchor_];
  *(v24 + 32) = v29;
  v30 = [v23 leadingAnchor];

  v31 = [v0 view];
  if (!v31)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v32 = v31;
  v33 = [v31 leadingAnchor];

  v34 = [v30 constraintEqualToAnchor_];
  *(v24 + 40) = v34;
  v35 = [v23 trailingAnchor];

  v36 = [v0 view];
  if (!v36)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v37 = v36;
  v83 = v17;
  v38 = [v36 trailingAnchor];

  v39 = [v35 constraintEqualToAnchor_];
  *(v24 + 48) = v39;
  v40 = [v23 bottomAnchor];

  v41 = [v0 view];
  if (!v41)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v42 = v41;
  v43 = objc_opt_self();
  v44 = [v42 bottomAnchor];

  v45 = [v40 &selRef:v44 enumerateOverlayModuleViewsWithBlock:? + 5];
  *(v24 + 56) = v45;
  sub_21E9F8880(0, &qword_28125B7C8);
  v46 = sub_21EAA8EB0();

  v82 = v43;
  [v43 activateConstraints_];

  v47 = OBJC_IVAR___CCUISensorAttributionExpandedViewController_stackView;
  [*&v0[OBJC_IVAR___CCUISensorAttributionExpandedViewController_stackView] setAxis_];
  [*&v0[v47] setSpacing_];
  [v23 addSubview_];
  [*&v0[v47] setTranslatesAutoresizingMaskIntoConstraints_];
  v48 = [*&v0[v47] leadingAnchor];
  v49 = v23;
  v50 = [v49 contentLayoutGuide];
  v51 = [v50 leadingAnchor];

  v52 = [v48 constraintEqualToAnchor:v51 constant:0.0];
  v53 = OBJC_IVAR___CCUISensorAttributionExpandedViewController_stackViewLeadingConstraint;
  v54 = *&v0[OBJC_IVAR___CCUISensorAttributionExpandedViewController_stackViewLeadingConstraint];
  *&v0[OBJC_IVAR___CCUISensorAttributionExpandedViewController_stackViewLeadingConstraint] = v52;

  v55 = [*&v0[v47] trailingAnchor];
  v56 = [v49 &selRef_noteRootFolderDidMutate + 5];
  v57 = [v56 trailingAnchor];

  v58 = [v55 &selRef:v57 eventStreamWithEventActions:0.0 + 6];
  v59 = OBJC_IVAR___CCUISensorAttributionExpandedViewController_stackViewTrailingConstraint;
  v60 = *&v0[OBJC_IVAR___CCUISensorAttributionExpandedViewController_stackViewTrailingConstraint];
  *&v0[OBJC_IVAR___CCUISensorAttributionExpandedViewController_stackViewTrailingConstraint] = v58;

  v61 = [*&v0[v47] widthAnchor];
  v62 = [v61 constraintEqualToConstant_];

  v63 = OBJC_IVAR___CCUISensorAttributionExpandedViewController_stackViewWidthConstraint;
  v64 = *&v0[OBJC_IVAR___CCUISensorAttributionExpandedViewController_stackViewWidthConstraint];
  *&v0[OBJC_IVAR___CCUISensorAttributionExpandedViewController_stackViewWidthConstraint] = v62;

  v65 = swift_allocObject();
  *(v65 + 16) = xmmword_21EAB7870;
  v66 = [*&v0[v47] topAnchor];
  v67 = [v49 contentLayoutGuide];
  v68 = [v67 topAnchor];

  v69 = [v66 constraintEqualToAnchor:v68 constant:80.0];
  *(v65 + 32) = v69;
  v70 = *&v0[v53];
  if (!v70)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  *(v65 + 40) = v70;
  v71 = *&v0[v59];
  if (!v71)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  *(v65 + 48) = v71;
  v72 = *&v0[v47];
  v73 = v71;
  v74 = v70;
  v75 = [v72 bottomAnchor];
  v76 = [v49 contentLayoutGuide];

  v77 = [v76 bottomAnchor];
  v78 = [v75 constraintEqualToAnchor_];

  *(v65 + 56) = v78;
  v79 = *&v0[v63];
  if (v79)
  {
    *(v65 + 64) = v79;
    v80 = v79;
    v81 = sub_21EAA8EB0();

    [v82 activateConstraints_];

    sub_21EA9766C();
    return;
  }

LABEL_25:
  __break(1u);
}

uint64_t sub_21EA9766C()
{
  v3 = v0;
  v178 = OBJC_IVAR___CCUISensorAttributionExpandedViewController_stackView;
  v4 = [*(v0 + OBJC_IVAR___CCUISensorAttributionExpandedViewController_stackView) arrangedSubviews];
  sub_21E9F8880(0, &unk_28125B720);
  v5 = sub_21EAA8EC0();

  v6 = v5;
  v172 = v5;
  if (v5 >> 62)
  {
    v13 = sub_21EAA9380();
    v6 = v5;
    v7 = v13;
    v179 = v3;
    if (v13)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v179 = v3;
    if (v7)
    {
LABEL_3:
      if (v7 < 1)
      {
        __break(1u);
        goto LABEL_132;
      }

      v8 = 0;
      v9 = v6 & 0xC000000000000001;
      do
      {
        if (v9)
        {
          v10 = MEMORY[0x223D67210](v8);
        }

        else
        {
          v10 = *(v6 + 8 * v8 + 32);
        }

        v11 = v10;
        v12 = [v10 constraints];
        if (!v12)
        {
          sub_21E9F8880(0, &qword_28125B7C8);
          sub_21EAA8EC0();
          v12 = sub_21EAA8EB0();
          v3 = v179;
        }

        ++v8;
        [v11 removeConstraints_];

        [*(v3 + v178) removeArrangedSubview_];
        [v11 removeFromSuperview];

        v6 = v172;
      }

      while (v7 != v8);
    }
  }

  sub_21E9F8880(0, &qword_28125B790);
  sub_21E9F84D4();

  v14 = sub_21EAA8F50();

  v15 = CCUIUniqueSensorAttributionEntitiesForSensorActivityData(v14, 1);

  v16 = v15;
  if (!v15)
  {
    sub_21E9F8880(0, &unk_28125B750);
    sub_21EAA8EC0();
    v16 = sub_21EAA8EB0();
  }

  sub_21E9F8880(0, &unk_28125B750);
  v17 = sub_21EAA8EC0();
  if (v17 >> 62)
  {
    goto LABEL_130;
  }

  v2 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v168 = v17;
    v171 = v2;
    if (v2)
    {
      v160 = v16;
      v173 = 0;
      v18 = 0;
      v16 = 0;
      v169 = v17 & 0xC000000000000001;
      v161 = v17 + 32;
      v166 = v17 & 0xFFFFFFFFFFFFFF8;
      do
      {
        if (v169)
        {
          v17 = MEMORY[0x223D67210](v16, v168);
        }

        else
        {
          if (v16 >= *(v166 + 16))
          {
            goto LABEL_127;
          }

          v17 = *(v161 + 8 * v16);
        }

        v19 = v17;
        v20 = __OFADD__(v16++, 1);
        if (v20)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        v21 = sub_21EAA8F50();

        v22 = CCUISortedAttributionsForEntity(v19, v21);

        v1 = sub_21EAA8EC0();
        LOBYTE(v23) = v1 & 0xF8;
        if (v1 >> 62)
        {
          v3 = sub_21EAA9380();
          v175 = v19;
          if (v3)
          {
LABEL_27:
            v24 = 0;
            v2 = v1 & 0xC000000000000001;
            v25 = v1 + 32;
            while (1)
            {
              if (v2)
              {
                v26 = MEMORY[0x223D67210](v24, v1);
              }

              else
              {
                if (v24 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_118;
                }

                v26 = *(v25 + 8 * v24);
              }

              v27 = v26;
              v28 = v24 + 1;
              if (__OFADD__(v24, 1))
              {
                break;
              }

              v29 = CCUISectionForSensorType([v26 sensorType]);
              if (!v29)
              {
                if (v29)
                {
                  goto LABEL_138;
                }

                if (v28 == v3)
                {
LABEL_18:
                  v18 = 1;
                  goto LABEL_19;
                }

                v30 = v24 + 5;
                while (1)
                {
                  v31 = v30 - 4;
                  if (v2)
                  {
                    v32 = MEMORY[0x223D67210](v30 - 4, v1);
                  }

                  else
                  {
                    if (v31 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      goto LABEL_118;
                    }

                    v32 = *(v1 + 8 * v30);
                  }

                  v27 = v32;
                  v28 = v30 - 3;
                  if (__OFADD__(v31, 1))
                  {
                    goto LABEL_117;
                  }

                  v33 = CCUISectionForSensorType([v32 sensorType]);
                  if (v33)
                  {
                    if (!v33)
                    {
                      goto LABEL_138;
                    }

                    v18 = 1;
                    break;
                  }

                  ++v30;
                  if (v28 == v3)
                  {
                    goto LABEL_18;
                  }
                }
              }

              v173 = 1;
              v24 = v28;
              if (v28 == v3)
              {
                goto LABEL_19;
              }
            }

LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:

            if (v23)
            {
              goto LABEL_63;
            }

            goto LABEL_80;
          }
        }

        else
        {
          v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v175 = v19;
          if (v3)
          {
            goto LABEL_27;
          }
        }

LABEL_19:

        v2 = v171;
        v3 = v179;
      }

      while (v16 != v171);
      v1 = v179 + OBJC_IVAR___CCUISensorAttributionExpandedViewController_audioControlsEnabled;
      v16 = v160;
      if (*(v179 + OBJC_IVAR___CCUISensorAttributionExpandedViewController_audioControlsEnabled))
      {
        if ((v18 & 1) == 0)
        {
          goto LABEL_55;
        }

        v23 = 1;
      }

      else
      {
        v23 = *(v179 + OBJC_IVAR___CCUISensorAttributionExpandedViewController_videoControlsEnabled);
        v25 = v168;
        if ((v18 & 1) == 0)
        {
          goto LABEL_119;
        }
      }

      if (qword_28125B658 != -1)
      {
        swift_once();
      }

      v34 = qword_28125C5F8;
      v35 = sub_21EAA8DC0();
      v36 = sub_21EAA8DC0();
      v37 = [v34 localizedStringForKey:v35 value:0 table:v36];

      if (!v37)
      {
        sub_21EAA8E00();
        v37 = sub_21EAA8DC0();
      }

      v162 = v1;
      v38 = objc_allocWithZone(CCUISensorAttributionPrivacyHeaderView);
      v39 = sub_21EAA8DC0();
      v40 = [v38 initWithTitle:v37 systemImageName:v39];

      v41 = *(v179 + v178);
      v16 = v40;
      [v41 addArrangedSubview_];
      v42 = *(v179 + OBJC_IVAR___CCUISensorAttributionExpandedViewController_stackViewWidthConstraint);
      if (!v42)
      {
LABEL_135:

        __break(1u);
        goto LABEL_136;
      }

      [v42 constant];
      v44 = v43;

      sub_21EA98C94(v45);

      v46 = objc_allocWithZone(CCUISensorAttributionExpandedPrivacySectionView);
      v47 = sub_21EAA8F50();

      v48 = [v46 initWithWidth:v160 appsUsingSensors:v47 sensorActivityData:v44];

      v49 = *(v179 + v178);
      v50 = v48;
      [v49 addArrangedSubview_];
      v51 = objc_opt_self();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDCF10);
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_21EAB6F60;
      v53 = [v50 topAnchor];

      v54 = [v16 bottomAnchor];
      v55 = [v53 constraintEqualToAnchor:v54 constant:8.0];

      *(v52 + 32) = v55;
      v3 = v179;
      sub_21E9F8880(0, &qword_28125B7C8);
      v56 = sub_21EAA8EB0();

      [v51 activateConstraints_];

      v25 = v168;
      v1 = v162;
      if (!v23)
      {
        goto LABEL_80;
      }
    }

    else
    {
      v1 = v3 + OBJC_IVAR___CCUISensorAttributionExpandedViewController_audioControlsEnabled;
      if (*(v3 + OBJC_IVAR___CCUISensorAttributionExpandedViewController_audioControlsEnabled))
      {
        v173 = 0;
LABEL_55:
      }

      else
      {
        v25 = v17;
        v110 = *(v3 + OBJC_IVAR___CCUISensorAttributionExpandedViewController_videoControlsEnabled);

        v173 = 0;
        if ((v110 & 1) == 0)
        {
LABEL_80:
          [*(v3 + OBJC_IVAR___CCUISensorAttributionExpandedViewController_audioControlsContainerView) setHidden_];
          v17 = [*(v3 + OBJC_IVAR___CCUISensorAttributionExpandedViewController_videoControlsContainerView) setHidden_];
          v109 = v25;
          if (!v2 || (v173 & 1) == 0)
          {
            goto LABEL_116;
          }

          goto LABEL_82;
        }
      }
    }

LABEL_63:
    if (qword_28125B658 != -1)
    {
LABEL_132:
      swift_once();
    }

    v57 = qword_28125C5F8;
    v58 = sub_21EAA8DC0();
    v59 = sub_21EAA8DC0();
    v60 = [v57 localizedStringForKey:v58 value:0 table:v59];

    if (!v60)
    {
      sub_21EAA8E00();
      v60 = sub_21EAA8DC0();
    }

    v61 = objc_allocWithZone(CCUISensorAttributionPrivacyHeaderView);
    v62 = sub_21EAA8DC0();
    v63 = [v61 initWithTitle:v60 systemImageName:v62];

    swift_beginAccess();

    v64 = sub_21EAA8DC0();

    [v63 setTrailingText_];

    [*(v3 + v178) addArrangedSubview_];
    v65 = sub_21EA9B604();
    [*(v3 + v178) addArrangedSubview_];
    v66 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDCF10);
    v67 = swift_allocObject();
    *(v67 + 16) = xmmword_21EAB6F60;
    v68 = [v65 heightAnchor];
    v69 = [v68 constraintEqualToConstant_];

    *(v67 + 32) = v69;
    sub_21E9F8880(0, &qword_28125B7C8);
    v70 = sub_21EAA8EB0();

    v176 = v66;
    [v66 activateConstraints_];

    if (*(v3 + OBJC_IVAR___CCUISensorAttributionExpandedViewController_videoControlsEnabled) == 1)
    {
      v71 = *(v3 + OBJC_IVAR___CCUISensorAttributionExpandedViewController_videoControlsContainerView);
      if (v71)
      {
        v72 = *(v3 + OBJC_IVAR___CCUISensorAttributionExpandedViewController_videoControlsContentViewController);
        if (v72)
        {
          break;
        }
      }
    }

LABEL_71:
    v16 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
    [*(v3 + v178) addArrangedSubview_];
    if (*v1 == 1)
    {
      v89 = *(v3 + OBJC_IVAR___CCUISensorAttributionExpandedViewController_audioControlsContainerView);
      if (v89)
      {
        v90 = *(v3 + OBJC_IVAR___CCUISensorAttributionExpandedViewController_audioControlsContentViewController);
        if (v90)
        {
          v91 = v90;
          v92 = v89;
          [v92 setHidden_];
          [*(v3 + v178) addArrangedSubview_];
          v164 = v91;
          v93 = [v91 view];
          if (!v93)
          {
            goto LABEL_137;
          }

          v94 = v93;
          [v93 intrinsicContentSize];
          v96 = v95;

          v97 = swift_allocObject();
          *(v97 + 16) = xmmword_21EAB7880;
          v98 = [v92 heightAnchor];
          v99 = [v98 constraintEqualToConstant_];

          *(v97 + 32) = v99;
          v100 = [v92 leadingAnchor];
          v101 = [*(v3 + v178) leadingAnchor];
          v102 = [v100 constraintEqualToAnchor_];

          *(v97 + 40) = v102;
          v103 = [v92 trailingAnchor];
          v104 = [*(v179 + v178) trailingAnchor];
          v105 = [v103 constraintEqualToAnchor_];

          *(v97 + 48) = v105;
          v3 = v179;
          v106 = sub_21EAA8EB0();

          [v176 activateConstraints_];

          v2 = v171;
        }
      }
    }

    v107 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];

    v108 = *(v3 + v178);
    [v108 addArrangedSubview_];

    v109 = v168;
    if (!v2 || ((v173 ^ 1) & 1) != 0)
    {
LABEL_116:
    }

LABEL_82:
    v111 = 0;
    v165 = v109 & 0xC000000000000001;
    v174 = OBJC_IVAR___CCUISensorAttributionExpandedViewController_gameModeActivityDataProvider;
    v177 = OBJC_IVAR___CCUISensorAttributionExpandedViewController_stackViewWidthConstraint;
    v156 = v109 + 32;
    v157 = v109 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v165)
      {
        v17 = MEMORY[0x223D67210](v111);
      }

      else
      {
        if (v111 >= *(v157 + 16))
        {
          goto LABEL_129;
        }

        v17 = *(v156 + 8 * v111);
      }

      v112 = v17;
      v20 = __OFADD__(v111, 1);
      v113 = v111 + 1;
      if (v20)
      {
        break;
      }

      v167 = v113;

      v114 = sub_21EAA8F50();

      v170 = v112;
      v115 = CCUISortedAttributionsForEntity(v112, v114);

      v116 = sub_21EAA8EC0();
      v16 = v116 & 0xFFFFFFFFFFFFFF8;
      if (v116 >> 62)
      {
        v17 = sub_21EAA9380();
        v117 = v17;
      }

      else
      {
        v117 = *((v116 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v118 = 0;
      v119 = v116 & 0xC000000000000001;
      while (v117 != v118)
      {
        if (v119)
        {
          v17 = MEMORY[0x223D67210](v118, v116);
        }

        else
        {
          if (v118 >= *((v116 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_122;
          }

          v17 = *(v116 + 8 * v118 + 32);
        }

        v120 = v17;
        if (__OFADD__(v118, 1))
        {
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        v121 = CCUISectionForSensorType([v17 sensorType]);

        ++v118;
        if (v121)
        {
          v122 = *&v177[v3];
          if (!v122)
          {
LABEL_134:
            __break(1u);
            goto LABEL_135;
          }

          [v122 constant];
          v124 = v123;
          v125 = objc_opt_self();
          [v125 iconSize];
          v127 = v126;
          v17 = [v125 maximumNumberOfLines];
          if (__OFADD__(v17, 1))
          {
            goto LABEL_128;
          }

          v128 = [objc_allocWithZone(CCUISensorEntityHeaderView) initWithSensorEntity:v170 maxSize:{v124, v127 * (v17 + 1)}];
          v129 = objc_allocWithZone(MEMORY[0x277D756C8]);
          v130 = v128;
          v131 = [v129 init];
          [v130 addInteraction_];

          [*(v3 + v178) addArrangedSubview_];
          v132 = sub_21EA9B604();
          [*(v3 + v178) addArrangedSubview_];
          v160 = objc_opt_self();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDCF10);
          v133 = swift_allocObject();
          *(v133 + 16) = xmmword_21EAB7890;
          v134 = v132;
          v135 = [v132 topAnchor];
          v136 = [v130 bottomAnchor];
          v159 = v130;

          v137 = [v135 constraintEqualToAnchor:v136 constant:8.0];
          v3 = v179;
          *(v133 + 32) = v137;
          v158 = v134;
          v138 = [v134 heightAnchor];
          v139 = [v138 constraintEqualToConstant_];

          *(v133 + 40) = v139;
          sub_21E9F8880(0, &qword_28125B7C8);
          v140 = sub_21EAA8EB0();

          [v160 activateConstraints_];

          v17 = swift_beginAccess();
          v141 = 0;
          while (1)
          {
            if (v119)
            {
              v17 = MEMORY[0x223D67210](v141, v116);
            }

            else
            {
              if (v141 >= *((v116 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_124;
              }

              v17 = *(v116 + 8 * v141 + 32);
            }

            v142 = v17;
            v143 = v141 + 1;
            if (__OFADD__(v141, 1))
            {
              goto LABEL_123;
            }

            if ([v17 sensorType] == 3)
            {
              v144 = *&v177[v3];
              if (!v144)
              {
                __break(1u);
                goto LABEL_134;
              }

              [v144 constant];
              v146 = *(v3 + v174);
              if (v146)
              {
                v147 = v145;
                v148 = objc_allocWithZone(type metadata accessor for GameModeControlsView());
                v149 = v146;
                GameModeControlsView.init(provider:activityData:frame:)(v149, v142, 0.0, 0.0, v147);
                v151 = v150;
                v152 = [objc_allocWithZone(MEMORY[0x277D756C8]) init];
                [v151 addInteraction_];

                v153 = *(v179 + v178);
                [v153 addArrangedSubview_];

                v3 = v179;
              }
            }

            ++v141;
            if (v143 == v117)
            {

              goto LABEL_84;
            }
          }
        }
      }

LABEL_84:
      v111 = v167;
      if (v167 == v171)
      {
        goto LABEL_116;
      }
    }

LABEL_126:
    __break(1u);
LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
LABEL_130:
    v155 = v17;
    v2 = sub_21EAA9380();
    v17 = v155;
  }

  v163 = v1;
  v73 = v72;
  v74 = v71;
  [v74 setHidden_];
  [*(v3 + v178) addArrangedSubview_];
  v160 = v73;
  v75 = [v73 view];
  if (v75)
  {
    v76 = v75;
    [v75 intrinsicContentSize];
    v78 = v77;

    v79 = swift_allocObject();
    *(v79 + 16) = xmmword_21EAB7880;
    v80 = [v74 heightAnchor];
    v81 = [v80 constraintEqualToConstant_];

    *(v79 + 32) = v81;
    v82 = [v74 leadingAnchor];
    v83 = [*(v3 + v178) leadingAnchor];
    v84 = [v82 constraintEqualToAnchor_];

    *(v79 + 40) = v84;
    v85 = [v74 trailingAnchor];
    v86 = [*(v179 + v178) trailingAnchor];
    v87 = [v85 constraintEqualToAnchor_];

    *(v79 + 48) = v87;
    v3 = v179;
    v88 = sub_21EAA8EB0();

    [v66 &selRef:v88 addModuleStretchSourceWithParameters:? + 3];

    v2 = v171;
    v1 = v163;
    goto LABEL_71;
  }

LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:

  result = sub_21EAA94A0();
  __break(1u);
  return result;
}

uint64_t sub_21EA98C94(uint64_t a1)
{
  v1 = a1;
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (sub_21EAA9380())
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = MEMORY[0x277D84FA0];
    if (v2)
    {
      goto LABEL_4;
    }

LABEL_7:
    v9 = -1 << *(v1 + 32);
    v5 = v1 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v1 + 56);

    v7 = 0;
    goto LABEL_11;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDDD18);
  v3 = sub_21EAA9420();
  if (!v2)
  {
    goto LABEL_7;
  }

LABEL_4:

  sub_21EAA9370();
  sub_21E9F8880(0, &qword_28125B790);
  sub_21E9F84D4();
  result = sub_21EAA8F90();
  v1 = v30;
  v5 = v31;
  v6 = v32;
  v7 = v33;
  v8 = v34;
LABEL_11:
  v12 = v3 + 56;
  while (v1 < 0)
  {
    v16 = sub_21EAA93A0();
    if (!v16)
    {
LABEL_34:
      sub_21E9FBFD4();

      return v3;
    }

    *&v27 = v16;
    sub_21E9F8880(0, &qword_28125B790);
    swift_dynamicCast();
LABEL_25:
    sub_21E9F8880(0, &qword_28125B790);
    swift_dynamicCast();
    result = sub_21EAA93C0();
    v20 = -1 << *(v3 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) != 0)
    {
      v13 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v23 = 0;
      v24 = (63 - v20) >> 6;
      do
      {
        if (++v22 == v24 && (v23 & 1) != 0)
        {
          __break(1u);
          goto LABEL_35;
        }

        v25 = v22 == v24;
        if (v22 == v24)
        {
          v22 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v22);
      }

      while (v26 == -1);
      v13 = __clz(__rbit64(~v26)) + (v22 << 6);
    }

    *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
    v14 = *(v3 + 48) + 40 * v13;
    *(v14 + 32) = v29;
    *v14 = v27;
    *(v14 + 16) = v28;
    ++*(v3 + 16);
  }

  if (v8)
  {
    v15 = v7;
LABEL_24:
    v18 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v19 = *(*(v1 + 48) + ((v15 << 9) | (8 * v18)));
    goto LABEL_25;
  }

  v17 = v7;
  while (1)
  {
    v15 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v15 >= ((v6 + 64) >> 6))
    {
      goto LABEL_34;
    }

    v8 = *(v5 + 8 * v15);
    ++v17;
    if (v8)
    {
      v7 = v15;
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

void sub_21EA99010(char a1, char a2)
{
  v5 = sub_21EAA8530();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2[OBJC_IVAR___CCUISensorAttributionExpandedViewController_audioControlsEnabled] = a1;
  v2[OBJC_IVAR___CCUISensorAttributionExpandedViewController_videoControlsEnabled] = a2;
  if (a1 & 1) != 0 || (a2)
  {
    v10 = OBJC_IVAR___CCUISensorAttributionExpandedViewController_audioControlsContentViewController;
    if (!*&v2[OBJC_IVAR___CCUISensorAttributionExpandedViewController_audioControlsContentViewController] || !*&v2[OBJC_IVAR___CCUISensorAttributionExpandedViewController_videoControlsContentViewController])
    {
      v11 = v7;
      CCUIPortraitMainListGridGeometryInfo();
      v12 = MEMORY[0x223D675B0](5);
      v13 = [v2 traitCollection];
      [v13 displayScale];
      v15 = v14;

      v16 = *&v2[OBJC_IVAR___CCUISensorAttributionExpandedViewController_audioModuleInstance];
      if (v16)
      {
        v17 = [v16 module];
        if (v17)
        {
          v18 = v17;
          sub_21EAA8520();
          v19 = objc_opt_self();
          swift_unknownObjectRetain();
          v20 = [v19 defaultControlCenterPresentationContext];
          v21 = objc_allocWithZone(CCUIContentModuleContainerViewController);
          v22 = sub_21EAA8DC0();
          v23 = sub_21EAA84F0();
          v24 = [v21 initWithModuleIdentifier:v22 uniqueIdentifier:v23 contentModule:v18 presentationContext:v20 contentRenderingMode:0];
          swift_unknownObjectRelease();

          (*(v6 + 8))(v9, v11);
          [v24 setDelegate_];
          v25 = v24;
          v26 = [v25 view];
          if (!v26)
          {
            __break(1u);
            goto LABEL_20;
          }

          v27 = v26;
          [v26 setTranslatesAutoresizingMaskIntoConstraints_];

          v28 = [v25 contentViewController];
          v29 = *&v2[v10];
          *&v2[v10] = v28;

          v30 = [v25 view];
          v31 = OBJC_IVAR___CCUISensorAttributionExpandedViewController_audioControlsContainerView;
          v32 = *&v2[OBJC_IVAR___CCUISensorAttributionExpandedViewController_audioControlsContainerView];
          *&v2[OBJC_IVAR___CCUISensorAttributionExpandedViewController_audioControlsContainerView] = v30;

          [v2 bs:v25 addChildViewController:?];
          v33 = *&v2[v31];
          if (v33)
          {
            [v33 setHidden_];
          }

          [v25 setIconImageInfo_];
          swift_unknownObjectRelease();
        }
      }

      v34 = *&v2[OBJC_IVAR___CCUISensorAttributionExpandedViewController_videoModuleInstance];
      if (!v34 || (v35 = [v34 module]) == 0)
      {
LABEL_17:
        sub_21EA9766C();
        return;
      }

      v36 = v35;
      sub_21EAA8520();
      v37 = objc_opt_self();
      swift_unknownObjectRetain();
      v38 = [v37 defaultControlCenterPresentationContext];
      v39 = objc_allocWithZone(CCUIContentModuleContainerViewController);
      v40 = sub_21EAA8DC0();
      v41 = sub_21EAA84F0();
      v42 = [v39 initWithModuleIdentifier:v40 uniqueIdentifier:v41 contentModule:v36 presentationContext:v38 contentRenderingMode:0];
      swift_unknownObjectRelease();

      (*(v6 + 8))(v9, v11);
      [v42 setDelegate_];
      v43 = v42;
      v44 = [v43 view];
      if (v44)
      {
        v45 = v44;
        [v44 setTranslatesAutoresizingMaskIntoConstraints_];

        v46 = [v43 contentViewController];
        v47 = *&v2[OBJC_IVAR___CCUISensorAttributionExpandedViewController_videoControlsContentViewController];
        *&v2[OBJC_IVAR___CCUISensorAttributionExpandedViewController_videoControlsContentViewController] = v46;

        v48 = [v43 view];
        v49 = OBJC_IVAR___CCUISensorAttributionExpandedViewController_videoControlsContainerView;
        v50 = *&v2[OBJC_IVAR___CCUISensorAttributionExpandedViewController_videoControlsContainerView];
        *&v2[OBJC_IVAR___CCUISensorAttributionExpandedViewController_videoControlsContainerView] = v48;

        [v2 bs:v43 addChildViewController:?];
        v51 = *&v2[v49];
        if (v51)
        {
          [v51 setHidden_];
        }

        [v43 setIconImageInfo_];
        swift_unknownObjectRelease();

        goto LABEL_17;
      }

LABEL_20:
      __break(1u);
    }
  }
}

uint64_t sub_21EA99640()
{
  v1 = (v0 + OBJC_IVAR___CCUISensorAttributionExpandedViewController_audioVideoHeaderTrailingText);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_21EA99714(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___CCUISensorAttributionExpandedViewController_audioVideoHeaderTrailingText);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_21EA99774(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR___CCUISensorAttributionExpandedViewController_audioVideoHeaderTrailingText);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

void *sub_21EA9988C()
{
  v1 = OBJC_IVAR___CCUISensorAttributionExpandedViewController_gameModeActivityDataProvider;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_21EA99938(uint64_t a1)
{
  v3 = OBJC_IVAR___CCUISensorAttributionExpandedViewController_gameModeActivityDataProvider;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_21EA99990(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___CCUISensorAttributionExpandedViewController_gameModeActivityDataProvider;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

uint64_t sub_21EA99A84()
{
  sub_21E9F8880(0, &qword_28125B790);
  sub_21E9F84D4();

  v0 = sub_21EAA8F50();

  v1 = CCUIUniqueSensorAttributionEntitiesForSensorActivityData(v0, 1);

  sub_21E9F8880(0, &unk_28125B750);
  v2 = sub_21EAA8EC0();

  if (v2 >> 62)
  {
LABEL_44:
    v3 = sub_21EAA9380();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_45:

    goto LABEL_46;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_45;
  }

LABEL_3:
  v25 = 0;
  v4 = 0;
LABEL_4:
  v5 = v4;
  do
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x223D67210](v5, v2);
    }

    else
    {
      if (v5 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_42;
      }

      v6 = *(v2 + 8 * v5 + 32);
    }

    v7 = v6;
    v4 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v8 = sub_21EAA8F50();

    v9 = CCUISortedAttributionsForEntity(v7, v8);

    v10 = sub_21EAA8EC0();
    if (v10 >> 62)
    {
      v11 = sub_21EAA9380();
      if (v11)
      {
LABEL_15:
        v12 = 0;
        v26 = v10 & 0xC000000000000001;
        while (1)
        {
          if (v26)
          {
            v13 = MEMORY[0x223D67210](v12, v10);
          }

          else
          {
            if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v13 = *(v10 + 32 + 8 * v12);
          }

          v14 = v13;
          v15 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            goto LABEL_41;
          }

          v16 = [v13 sensorType];

          if (v16 == 3)
          {
            if (v15 != v11)
            {
              v17 = v12 + 5;
              do
              {
                v18 = v17 - 4;
                if (v26)
                {
                  v19 = MEMORY[0x223D67210](v17 - 4, v10);
                }

                else
                {
                  if (v18 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_43;
                  }

                  v19 = *(v10 + 8 * v17);
                }

                v20 = v19;
                v21 = __OFADD__(v18, 1);
                v15 = v17 - 3;
                if (v21)
                {
                  goto LABEL_41;
                }

                v22 = [v19 sensorType];

                if (v22 != 3)
                {
                  LOBYTE(v25) = 1;
                  goto LABEL_17;
                }

                ++v17;
              }

              while (v15 != v11);
            }

            LOBYTE(v25) = 1;
            if (v4 != v3)
            {
              goto LABEL_4;
            }

            goto LABEL_39;
          }

LABEL_17:
          BYTE4(v25) = 1;
          v12 = v15;
          if (v15 == v11)
          {

            BYTE4(v25) = 1;
            if (v4 != v3)
            {
              goto LABEL_4;
            }

            if (v25)
            {
              BYTE4(v25) = 1;
              goto LABEL_39;
            }

            goto LABEL_46;
          }
        }
      }
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11)
      {
        goto LABEL_15;
      }
    }

    ++v5;
  }

  while (v4 != v3);

  if (v25)
  {
LABEL_39:
    v23 = BYTE4(v25) ^ 1;
    return v23 & 1;
  }

LABEL_46:
  v23 = 0;
  return v23 & 1;
}

uint64_t sub_21EA99E7C(char a1, char a2)
{
  v3 = v2;
  v6 = sub_21EAA8CD0();
  v28 = *(v6 - 8);
  v29 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21EAA8D10();
  v26 = *(v9 - 8);
  v27 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21EAA8CE0();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = a1;
  *(v17 + 25) = a2;
  if (a1)
  {
    sub_21E9F8880(0, &qword_28125B7F0);
    (*(v13 + 104))(v15, *MEMORY[0x277D851B8], v12);
    v18 = sub_21EAA90F0();
    (*(v13 + 8))(v15, v12);
    v19 = swift_allocObject();
    v19[2] = v3;
    v19[3] = sub_21EA9B158;
    v19[4] = v17;
    aBlock[4] = sub_21EA9B168;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21EA87FF0;
    aBlock[3] = &block_descriptor_9;
    v20 = _Block_copy(aBlock);
    v21 = v3;

    sub_21EAA8CF0();
    v30 = MEMORY[0x277D84F90];
    sub_21EA51E2C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEDCC40);
    sub_21EA51E84();
    v22 = v29;
    sub_21EAA9340();
    MEMORY[0x223D66E90](0, v11, v8, v20);
    _Block_release(v20);

    (*(v28 + 8))(v8, v22);
    (*(v26 + 8))(v11, v27);
  }

  else
  {

    sub_21EA9A4B8(v24, 0, a2 & 1);
  }
}

char *sub_21EA9A290(uint64_t a1, char a2, char a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    result[OBJC_IVAR___CCUISensorAttributionExpandedViewController__isExpanded] = a2 & 1;
    v7 = OBJC_IVAR___CCUISensorAttributionExpandedViewController_audioControlsContentViewController;
    v8 = *&result[OBJC_IVAR___CCUISensorAttributionExpandedViewController_audioControlsContentViewController];
    if (v8)
    {
      [v8 ccui:a2 & 1 safelyBeginAppearanceTransition:1 animated:?];
    }

    v9 = OBJC_IVAR___CCUISensorAttributionExpandedViewController_videoControlsContentViewController;
    v10 = *&v6[OBJC_IVAR___CCUISensorAttributionExpandedViewController_videoControlsContentViewController];
    if (v10)
    {
      [v10 ccui:a2 & 1 safelyBeginAppearanceTransition:1 animated:?];
    }

    v11 = swift_allocObject();
    *(v11 + 16) = v6;
    *(v11 + 24) = a2 & 1;
    if (a3)
    {
      v12 = objc_opt_self();
      aBlock[4] = sub_21EA9B470;
      aBlock[5] = v11;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21EA87FF0;
      aBlock[3] = &block_descriptor_67;
      v13 = _Block_copy(aBlock);
      v14 = v6;

      [v12 animateWithDuration:4 delay:v13 usingSpringWithDamping:0 initialSpringVelocity:0.3 options:0.0 animations:50.0 completion:0.0];
      _Block_release(v13);
    }

    else
    {
      result = [v6 view];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v15 = result;
      v16 = 0.0;
      if (a2)
      {
        v16 = 1.0;
      }

      [result setAlpha_];
    }

    v17 = *&v6[v7];
    if (v17)
    {
      [v17 ccui_safelyEndAppearanceTransition];
    }

    v18 = *&v6[v9];
    if (v18)
    {
      [v18 ccui_safelyEndAppearanceTransition];
    }

    sub_21EA9766C();
  }

  return result;
}

char *sub_21EA9A4B8(uint64_t a1, char a2, char a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    result[OBJC_IVAR___CCUISensorAttributionExpandedViewController__isExpanded] = a2 & 1;
    v7 = OBJC_IVAR___CCUISensorAttributionExpandedViewController_audioControlsContentViewController;
    v8 = *&result[OBJC_IVAR___CCUISensorAttributionExpandedViewController_audioControlsContentViewController];
    if (v8)
    {
      [v8 ccui:a2 & 1 safelyBeginAppearanceTransition:1 animated:?];
    }

    v9 = OBJC_IVAR___CCUISensorAttributionExpandedViewController_videoControlsContentViewController;
    v10 = *&v6[OBJC_IVAR___CCUISensorAttributionExpandedViewController_videoControlsContentViewController];
    if (v10)
    {
      [v10 ccui:a2 & 1 safelyBeginAppearanceTransition:1 animated:?];
    }

    v11 = swift_allocObject();
    *(v11 + 16) = v6;
    *(v11 + 24) = a2 & 1;
    if (a3)
    {
      v12 = objc_opt_self();
      aBlock[4] = sub_21EA9B77C;
      aBlock[5] = v11;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21EA87FF0;
      aBlock[3] = &block_descriptor_81;
      v13 = _Block_copy(aBlock);
      v14 = v6;

      [v12 animateWithDuration:4 delay:v13 usingSpringWithDamping:0 initialSpringVelocity:0.3 options:0.0 animations:50.0 completion:0.0];
      _Block_release(v13);
    }

    else
    {
      result = [v6 view];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v15 = result;
      v16 = 0.0;
      if (a2)
      {
        v16 = 1.0;
      }

      [result setAlpha_];
    }

    v17 = *&v6[v7];
    if (v17)
    {
      [v17 ccui_safelyEndAppearanceTransition];
    }

    v18 = *&v6[v9];
    if (v18)
    {
      [v18 ccui_safelyEndAppearanceTransition];
    }

    sub_21EA9766C();
  }

  return result;
}

void sub_21EA9A6E4(void *a1, char a2)
{
  v3 = [a1 view];
  if (v3)
  {
    v4 = 0.0;
    if (a2)
    {
      v4 = 1.0;
    }

    v5 = v3;
    [v3 setAlpha_];
  }

  else
  {
    __break(1u);
  }
}

void sub_21EA9A75C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = a2;
  v6[4] = a3;
  v8[4] = sub_21EA9B5F8;
  v8[5] = v6;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_21EA96770;
  v8[3] = &block_descriptor_74;
  v7 = _Block_copy(v8);

  SBSRequestPasscodeUnlockAlertUI();
  _Block_release(v7);
}

void sub_21EA9A85C(char a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    if (a1)
    {
      a3();
    }
  }
}

uint64_t sub_21EA9A924(uint64_t a1)
{
  *(v1 + OBJC_IVAR___CCUISensorAttributionExpandedViewController_sensorActivityData) = a1;
}

void sub_21EA9A9E8(double a1, double a2, double a3, double a4)
{
  v9 = [v4 traitCollection];
  v10 = [v9 userInterfaceIdiom];

  if (v10 == 1)
  {
    CCUIPortraitMainListGridGeometryInfo();
    v12 = v11;
    v13 = [v4 view];
    if (!v13)
    {
LABEL_15:
      __break(1u);
      return;
    }

    v14 = v13;
    [v13 bounds];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;

    v41.origin.x = v16;
    v41.origin.y = v18;
    v41.size.width = v20;
    v41.size.height = v22;
    Width = CGRectGetWidth(v41);
    CCUIDefaultExpandedContentModuleWidth();
    a2 = Width + v24 * -1.3;
    a4 = v12 + v12;
    a3 = 0.0;
    a1 = 0.0;
  }

  v25 = &v4[OBJC_IVAR___CCUISensorAttributionExpandedViewController_edgeInsets];
  *v25 = a1;
  v25[1] = a2;
  v25[2] = a3;
  v25[3] = a4;
  v26 = *&v4[OBJC_IVAR___CCUISensorAttributionExpandedViewController_stackViewLeadingConstraint];
  if (!v26)
  {
    __break(1u);
    goto LABEL_12;
  }

  [v26 setConstant_];
  v27 = *&v4[OBJC_IVAR___CCUISensorAttributionExpandedViewController_stackViewTrailingConstraint];
  if (!v27)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  [v27 setConstant_];
  v28 = *&v4[OBJC_IVAR___CCUISensorAttributionExpandedViewController_stackViewWidthConstraint];
  if (!v28)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v39 = v28;
  v29 = [v4 view];
  if (!v29)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v30 = v29;
  [v29 bounds];
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;

  v42.origin.x = v32;
  v42.origin.y = v34;
  v42.size.width = v36;
  v42.size.height = v38;
  [v39 setConstant_];
}

id SensorAttributionExpandedViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_21EAA8DC0();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id SensorAttributionExpandedViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SensorAttributionExpandedViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Bool __swiftcall SensorAttributionExpandedViewController.gestureRecognizer(_:shouldReceive:)(UIGestureRecognizer *_, UITouch shouldReceive)
{
  v3 = [(objc_class *)shouldReceive.super.isa view];
  if (!v3)
  {
    return 1;
  }

  v4 = v3;
  v5 = *(v2 + OBJC_IVAR___CCUISensorAttributionExpandedViewController_stackView);
  v6 = [v4 isDescendantOfView_];

  return v6 ^ 1;
}

void __swiftcall SensorAttributionExpandedViewController.compactModeSourceView(for:)(UIView_optional *__return_ptr retstr, CCUIContentModuleContainerViewController *a2)
{
  v3 = [v2 view];

  v4 = v3;
}

__C::CGRect __swiftcall SensorAttributionExpandedViewController.compactModeFrame(for:)(CCUIContentModuleContainerViewController *a1)
{
  v1 = 0.0;
  v2 = 0.0;
  v3 = 0.0;
  v4 = 0.0;
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

__C::CGRect __swiftcall SensorAttributionExpandedViewController.expandedModeFrame(for:)(CCUIContentModuleContainerViewController *a1)
{
  v1 = 0.0;
  v2 = 0.0;
  v3 = 0.0;
  v4 = 0.0;
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGSize __swiftcall SensorAttributionExpandedViewController.controlCenterGridSize(for:)(CCUIContentModuleContainerViewController *a1)
{
  v1 = 0.0;
  v2 = 0.0;
  result.height = v2;
  result.width = v1;
  return result;
}

void sub_21EA9B47C()
{
  *(v0 + OBJC_IVAR___CCUISensorAttributionExpandedViewController_audioControlsContentViewController) = 0;
  *(v0 + OBJC_IVAR___CCUISensorAttributionExpandedViewController_audioControlsContainerView) = 0;
  *(v0 + OBJC_IVAR___CCUISensorAttributionExpandedViewController_videoControlsContentViewController) = 0;
  *(v0 + OBJC_IVAR___CCUISensorAttributionExpandedViewController_videoControlsContainerView) = 0;
  *(v0 + OBJC_IVAR___CCUISensorAttributionExpandedViewController_stackViewLeadingConstraint) = 0;
  *(v0 + OBJC_IVAR___CCUISensorAttributionExpandedViewController_stackViewTrailingConstraint) = 0;
  *(v0 + OBJC_IVAR___CCUISensorAttributionExpandedViewController_stackViewWidthConstraint) = 0;
  v1 = (v0 + OBJC_IVAR___CCUISensorAttributionExpandedViewController_edgeInsets);
  v2 = *(MEMORY[0x277D768C8] + 16);
  *v1 = *MEMORY[0x277D768C8];
  v1[1] = v2;
  *(v0 + OBJC_IVAR___CCUISensorAttributionExpandedViewController_audioControlsEnabled) = 0;
  *(v0 + OBJC_IVAR___CCUISensorAttributionExpandedViewController_videoControlsEnabled) = 0;
  v3 = (v0 + OBJC_IVAR___CCUISensorAttributionExpandedViewController_audioModuleIdentifier);
  *v3 = 0xD000000000000036;
  v3[1] = 0x800000021EABF730;
  v4 = (v0 + OBJC_IVAR___CCUISensorAttributionExpandedViewController_videoModuleIdentifier);
  *v4 = 0xD000000000000036;
  v4[1] = 0x800000021EABF770;
  *(v0 + OBJC_IVAR___CCUISensorAttributionExpandedViewController_audioModuleInstance) = 0;
  *(v0 + OBJC_IVAR___CCUISensorAttributionExpandedViewController_videoModuleInstance) = 0;
  *(v0 + OBJC_IVAR___CCUISensorAttributionExpandedViewController_sensorActivityData) = MEMORY[0x277D84FA0];
  v5 = (v0 + OBJC_IVAR___CCUISensorAttributionExpandedViewController_audioVideoHeaderTrailingText);
  *v5 = 0;
  v5[1] = 0;
  *(v0 + OBJC_IVAR___CCUISensorAttributionExpandedViewController_gameModeActivityDataProvider) = 0;
  *(v0 + OBJC_IVAR___CCUISensorAttributionExpandedViewController__isExpanded) = 0;
  sub_21EAA94A0();
  __break(1u);
}

id sub_21EA9B604()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v0 setAlpha_];
  v1 = [objc_opt_self() whiteColor];
  [v0 setBackgroundColor_];

  v2 = [v0 layer];
  [v2 setCornerCurve_];

  v3 = [v0 layer];
  [v3 setCornerRadius_];

  v4 = [v0 layer];
  [v4 setCompositingFilter_];

  v5 = [v0 layer];
  [v5 setAllowsGroupBlending_];

  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  return v0;
}

id sub_21EA9B790()
{
  _s2__CMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_28125C5F8 = result;
  return result;
}

void sub_21EA9B81C(void *a1, void (*a2)(void, char *), uint64_t a3)
{
  if (![a1 intent])
  {
LABEL_9:

    sub_21EA9BBC8(a1, a2, a3);
    return;
  }

  if ([a1 intent] == 2)
  {
    v6 = sub_21EA9C2EC(a1);
    if (v6)
    {

      if (qword_28125B8C0 != -1)
      {
        swift_once();
      }

      v7 = sub_21EAA8790();
      __swift_project_value_buffer(v7, qword_28125B8C8);
      v8 = sub_21EAA8760();
      v9 = sub_21EAA9000();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_21E9F5000, v8, v9, "Skipped adding iconElement:<%%@> because it is already in ControlCenter", v10, 2u);
        MEMORY[0x223D68580](v10, -1, -1);
      }

      goto LABEL_16;
    }

    goto LABEL_9;
  }

  if ([a1 intent] != 1)
  {
LABEL_16:
    v11 = sub_21EA9D794();
    a2(0, v11);

    return;
  }

  sub_21EA9CAA0(a1, a2, a3);
}

void sub_21EA9B9FC(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_21EAA83B0();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

uint64_t sub_21EA9BA6C(void *a1, uint64_t (*a2)(uint64_t, void))
{
  if (!sub_21EA9CDE0(a1))
  {
LABEL_10:
    v9 = sub_21EA9C2EC(a1);
    if (v9)
    {

      v10 = 1;
    }

    else
    {
      v10 = 2;
    }

    return a2(v10, 0);
  }

  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (!v4)
  {
    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  v5 = v4;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = [*(Strong + OBJC_IVAR___CCUIPagingViewController_controlDescriptorProvider) descriptorFor_];
    swift_unknownObjectRelease();
    if (v7)
    {
      swift_unknownObjectRelease();

      goto LABEL_10;
    }
  }

  a2(3, 0);

  return swift_unknownObjectRelease();
}

dispatch_semaphore_t sub_21EA9BBA4()
{
  result = dispatch_semaphore_create(0);
  qword_27CEDDD20 = result;
  return result;
}

void sub_21EA9BBC8(void *a1, void (*a2)(void, char *), uint64_t a3)
{
  v6 = sub_21EAA8D30();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v54 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v55 = &v44 - v10;
  v50 = sub_21EAA8CD0();
  v53 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21EAA8D10();
  v51 = *(v13 - 8);
  v52 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_21EA9CDE0(a1);
  if (v16)
  {
    v17 = v16;
    v49 = a3;
    objc_opt_self();
    v18 = swift_dynamicCastObjCClass();
    v47 = v7;
    v48 = v6;
    if (!v18)
    {
      goto LABEL_6;
    }

    v19 = v18;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v21 = *(Strong + OBJC_IVAR___CCUIPagingViewController_controlDescriptorProvider);
      swift_unknownObjectRetain();
      v22 = [v21 descriptorFor_];
      swift_unknownObjectRelease();
      if (v22)
      {
        swift_unknownObjectRelease();

LABEL_6:
        sub_21E9F8880(0, &unk_27CEDCDA0);
        v23 = sub_21EAA8FA0();
        [v23 addIconDataSource_];
        v24 = v23;
        _sSo17CCUIGridSizeClassV15ControlCenterUIE06moduleB0ABSo09CCSModuleB0V_tcfC_0([a1 moduleSize]);
        v25 = sub_21EAA9120();
        [v24 setGridSizeClass_];

        sub_21E9F8880(0, &qword_28125B7F0);
        v26 = sub_21EAA90C0();
        v27 = swift_allocObject();
        swift_weakInit();
        v28 = swift_allocObject();
        v28[2] = v27;
        v28[3] = a1;
        v28[4] = v17;
        v28[5] = v24;
        v28[6] = a2;
        v28[7] = v49;
        aBlock[4] = sub_21EA9E84C;
        aBlock[5] = v28;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_21EA87FF0;
        aBlock[3] = &block_descriptor_24_0;
        v29 = _Block_copy(aBlock);
        v46 = v17;
        swift_unknownObjectRetain();
        v45 = v24;
        v30 = a1;

        sub_21EAA8CF0();
        aBlock[0] = MEMORY[0x277D84F90];
        sub_21EA51E2C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEDCC40);
        sub_21EA51E84();
        v31 = v50;
        sub_21EAA9340();
        MEMORY[0x223D66E90](0, v15, v12, v29);
        _Block_release(v29);

        (*(v53 + 8))(v12, v31);
        (*(v51 + 8))(v15, v52);
        if (qword_27CEDBC20 != -1)
        {
          swift_once();
        }

        v32 = v54;
        sub_21EAA8D20();
        v33 = v55;
        sub_21EAA8D60();
        v34 = *(v47 + 8);
        v35 = v32;
        v36 = v48;
        v34(v35, v48);
        sub_21EAA9140();
        v34(v33, v36);
        if (sub_21EAA8CC0())
        {
          if (qword_28125B8C0 != -1)
          {
            swift_once();
          }

          v37 = sub_21EAA8790();
          __swift_project_value_buffer(v37, qword_28125B8C8);
          v38 = sub_21EAA8760();
          v39 = sub_21EAA9000();
          if (!os_log_type_enabled(v38, v39))
          {
            goto LABEL_19;
          }

          v40 = swift_slowAlloc();
          *v40 = 0;
          v41 = "Semaphore signaled";
        }

        else
        {
          if (qword_28125B8C0 != -1)
          {
            swift_once();
          }

          v42 = sub_21EAA8790();
          __swift_project_value_buffer(v42, qword_28125B8C8);
          v38 = sub_21EAA8760();
          v39 = sub_21EAA9000();
          if (!os_log_type_enabled(v38, v39))
          {
            goto LABEL_19;
          }

          v40 = swift_slowAlloc();
          *v40 = 0;
          v41 = "Semaphore timeout";
        }

        _os_log_impl(&dword_21E9F5000, v38, v39, v41, v40, 2u);
        MEMORY[0x223D68580](v40, -1, -1);
LABEL_19:

        swift_unknownObjectRelease();
        return;
      }
    }

    else
    {
      swift_unknownObjectRetain();
    }

    v55 = sub_21EA9D794();
    a2(0, v55);
    swift_unknownObjectRelease_n();
  }

  else
  {
    v55 = sub_21EA9D794();
    a2(0, v55);
  }

  v43 = v55;
}

char *sub_21EA9C2EC(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = Strong;
  if (!Strong)
  {
    return v4;
  }

  [Strong loadViewIfNeeded];
  result = *&v4[OBJC_IVAR___CCUIPagingViewController___rootFolderController];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v74 = a1;
  v6 = [result folder];
  if (!v6)
  {
    swift_unknownObjectRelease();
    v9 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
      goto LABEL_6;
    }

LABEL_66:
    v10 = sub_21EAA9380();
    v11 = v74;
    if (v10)
    {
      goto LABEL_7;
    }

LABEL_67:

    return 0;
  }

  v7 = v6;
  v8 = [v6 iconsInLists];

  sub_21E9F8880(0, &qword_28125B730);
  v9 = sub_21EAA8EC0();
  swift_unknownObjectRelease();

  if (v9 < 0 || (v9 & 0x4000000000000000) != 0)
  {
    goto LABEL_66;
  }

LABEL_6:
  v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v11 = v74;
  if (!v10)
  {
    goto LABEL_67;
  }

LABEL_7:
  v70 = v1;
  v12 = 0;
  v13 = v9 & 0xC000000000000001;
  v75 = v9 & 0xC000000000000001;
  v76 = v9 & 0xFFFFFFFFFFFFFF8;
  v14 = 0x277D66000uLL;
  v15 = &selRef_addIcon_;
  v72 = v9;
  v73 = v10;
  while (1)
  {
    if (v13)
    {
      v16 = MEMORY[0x223D67210](v12, v9);
    }

    else
    {
      if (v12 >= *(v76 + 16))
      {
        __break(1u);
LABEL_81:

        goto LABEL_82;
      }

      v16 = *(v9 + 8 * v12 + 32);
    }

    v4 = v16;
    v17 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    objc_opt_self();
    v18 = swift_dynamicCastObjCClass();
    if (v18)
    {
      v19 = v18;
      v4 = v4;
      if ([v11 v15[276]] == 2)
      {
        if (![v19 activeDataSource])
        {
          goto LABEL_29;
        }

        objc_opt_self();
        v20 = swift_dynamicCastObjCClass();
        if (!v20)
        {

          swift_unknownObjectRelease();
          goto LABEL_63;
        }

        v14 = v20;
        v21 = [v20 containerBundleIdentifier];
        if (!v21)
        {
          swift_unknownObjectRelease();

          goto LABEL_63;
        }

        v22 = v21;
        v71._countAndFlagsBits = sub_21EAA8E00();
        v71._object = v23;

        v24 = [v11 extensionBundleIdentifier];
        if (v24)
        {
          v25 = v24;
          v26 = sub_21EAA8E00();
          v28 = v27;
        }

        else
        {
          v26 = 0;
          v28 = 0;
        }

        v41 = [v14 extensionBundleIdentifier];
        v42 = sub_21EAA8E00();
        v44 = v43;

        if (!v28)
        {
          goto LABEL_60;
        }

        if (v26 == v42 && v28 == v44)
        {

          goto LABEL_47;
        }

        v45 = sub_21EAA9530();

        if (v45)
        {
LABEL_47:
          v11 = v74;
          v46 = [v74 containerBundleIdentifier];
          v10 = v73;
          v13 = v75;
          if (!v46)
          {
            goto LABEL_53;
          }

          v47 = v46;
          v48 = sub_21EAA8E00();
          v50 = v49;

          if (__PAIR128__(v50, v48) == v71)
          {

            v11 = v74;
            goto LABEL_51;
          }

          v51 = sub_21EAA9530();

          v11 = v74;
          if ((v51 & 1) == 0)
          {
LABEL_53:

            swift_unknownObjectRelease();

            v9 = v72;
            goto LABEL_63;
          }

LABEL_51:
          v52 = [v11 controlKind];
          if (v52)
          {
            v53 = v52;
            v54 = sub_21EAA8E00();
            v56 = v55;
          }

          else
          {
            v54 = 0;
            v56 = 0;
          }

          v57 = [v14 kind];
          v58 = sub_21EAA8E00();
          v60 = v59;

          if (v56)
          {
            if (v54 == v58 && v56 == v60)
            {
              goto LABEL_73;
            }

            v61 = sub_21EAA9530();

            if (v61)
            {
              goto LABEL_74;
            }

            goto LABEL_61;
          }

LABEL_60:
        }

LABEL_61:

        swift_unknownObjectRelease();

        v11 = v74;
        goto LABEL_62;
      }

      if (![v11 v15[276]] || objc_msgSend(v11, v15[276]) == 1)
      {
        if ([v19 activeDataSource])
        {
          objc_opt_self();
          v29 = swift_dynamicCastObjCClass();
          if (v29)
          {
            v30 = v29;
            v31 = [v11 moduleIdentifier];
            if (v31)
            {
              v32 = v31;
              v33 = sub_21EAA8E00();
              v35 = v34;
            }

            else
            {
              v33 = 0;
              v35 = 0;
            }

            v36 = [v30 moduleIdentifier];
            v37 = sub_21EAA8E00();
            v39 = v38;

            if (v35)
            {
              if (v33 == v37 && v35 == v39)
              {

                goto LABEL_71;
              }

              v40 = sub_21EAA9530();

              swift_unknownObjectRelease();

              if (v40)
              {

                return v4;
              }
            }

            else
            {

              swift_unknownObjectRelease();
            }

LABEL_62:
            v9 = v72;
            v10 = v73;
            v13 = v75;
LABEL_63:
            v14 = 0x277D66000;
          }

          else
          {

            swift_unknownObjectRelease();
            v13 = v75;
          }

LABEL_64:
          v15 = &selRef_addIcon_;
          goto LABEL_10;
        }

LABEL_29:

        goto LABEL_64;
      }
    }

LABEL_10:
    ++v12;
    if (v17 == v10)
    {
      goto LABEL_67;
    }
  }

  __break(1u);
LABEL_73:

LABEL_74:

  v62 = [v74 intentConfiguration];
  if (!v62)
  {
LABEL_71:

    swift_unknownObjectRelease();

    return v4;
  }

  v9 = v62;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_81;
  }

  v63 = [v14 uniqueIdentifier];
  v64 = sub_21EAA8E00();
  v66 = v65;

  swift_getObjectType();
  v67._countAndFlagsBits = v64;
  v67._object = v66;
  v68 = ControlIntentStorage.intent(bundleIdentifier:dataSourceIdentifier:)(v71, v67);
  swift_unknownObjectRelease();

  if (!v68)
  {
LABEL_82:

    swift_unknownObjectRelease();
    return v4;
  }

  sub_21E9F8880(0, &qword_28125B640);
  v69 = sub_21EAA9210();

  swift_unknownObjectRelease();
  if (v69)
  {
    return v4;
  }

  return 0;
}

void sub_21EA9CAA0(void *a1, void (*a2)(void, uint64_t), uint64_t a3)
{
  v6 = sub_21EAA8CD0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_21EAA8D10();
  v10 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21EA9C2EC(a1);
  if (v13)
  {
    v14 = v13;
    sub_21E9F8880(0, &qword_28125B7F0);
    v21 = sub_21EAA90C0();
    v15 = swift_allocObject();
    swift_weakInit();
    v16 = swift_allocObject();
    v16[2] = v15;
    v16[3] = v14;
    v16[4] = a2;
    v16[5] = a3;
    aBlock[4] = sub_21EA9E864;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21EA87FF0;
    aBlock[3] = &block_descriptor_43;
    v17 = _Block_copy(aBlock);
    v18 = v14;

    sub_21EAA8CF0();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_21EA51E2C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEDCC40);
    sub_21EA51E84();
    sub_21EAA9340();
    v19 = v21;
    MEMORY[0x223D66E90](0, v12, v9, v17);
    _Block_release(v17);

    (*(v7 + 8))(v9, v6);
    (*(v10 + 8))(v12, v22);
  }

  else
  {
    v22 = sub_21EA9D794();
    a2(0, v22);
    v20 = v22;
  }
}

id sub_21EA9CDE0(void *a1)
{
  if ([a1 elementType] && objc_msgSend(a1, sel_elementType) != 1)
  {
    if ([a1 elementType] != 2)
    {
      return 0;
    }

    result = [a1 controlKind];
    if (!result)
    {
      return result;
    }

    v3 = result;
    v14 = [a1 extensionBundleIdentifier];
    if (v14)
    {
      v15 = v14;
      v16 = [a1 controlType];
      v17 = [a1 containerBundleIdentifier];
      if (v17)
      {
        v18 = v17;
        sub_21EAA8E00();

        v8 = sub_21EAA8DC0();
      }

      else
      {
        v8 = 0;
      }

      v19 = [objc_allocWithZone(MEMORY[0x277CFC9D8]) initWithKind:v3 controlType:v16 extensionBundleIdentifier:v15 containerBundleIdentifier:v8];

      goto LABEL_26;
    }

LABEL_17:

    return 0;
  }

  result = [a1 moduleIdentifier];
  if (!result)
  {
    return result;
  }

  v3 = result;
  v4 = [a1 containerBundleIdentifier];
  if (!v4)
  {

    goto LABEL_17;
  }

  v5 = v4;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

    return 0;
  }

  v7 = *(Strong + OBJC_IVAR___CCUIPagingViewController_moduleInstanceManager);
  swift_unknownObjectRelease();
  CCUIDefaultSupportedGridSizeClassesForChronoControls();
  v8 = SBHIconGridSizeClassSetForCCUIGridSizeClassMask();
  v9 = sub_21EAA8DC0();
  v10 = [v7 obtainModuleWithBundleIdentifier:v3 uniqueIdentifier:v9];

  if (v10)
  {
    v11 = [v10 module];
    if ([v11 respondsToSelector_])
    {
      [v11 supportedGridSizeClasses];
      v12 = SBHIconGridSizeClassSetForCCUIGridSizeClassMask();

      v8 = v12;
    }

    if ([v11 respondsToSelector_])
    {
      v13 = [v11 expandsGridSizeClassesForAccessibility];
    }

    else
    {
      v13 = 0;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0;
  }

  v19 = [objc_allocWithZone(MEMORY[0x277CFC9E0]) initWithModuleIdentifier:v3 containerBundleIdentifier:v5 standardSupportedGridSizeClasses:v8 expandsGridSizeClassesForAccessibility:v13];

LABEL_26:
  return v19;
}

id sub_21EA9D0F0(uint64_t a1, void *a2, void *a3, void *a4, void (*a5)(uint64_t, void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = [a2 intentConfiguration];
    if (v10)
    {
      v11 = v10;
      v12 = [a3 containerBundleIdentifier];
      if (v12)
      {
        v13 = v12;
        if ([a3 respondsToSelector_])
        {
          v14 = [a3 uniqueIdentifier];
          sub_21EAA8E00();

          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            v16 = *(Strong + OBJC_IVAR___CCUIPagingViewController_controlIntentStore);
            v17 = sub_21EAA8DC0();

            [v16 storeIntent:v11 bundleIdentifier:v13 dataSourceIdentifier:v17];
            swift_unknownObjectRelease();

            v11 = v13;
            v13 = v17;
          }

          else
          {
          }
        }

        v11 = v13;
      }
    }

    v18 = swift_unknownObjectWeakLoadStrong();
    if (v18)
    {
      v19 = v18;
      result = [v18 loadViewIfNeeded];
      v20 = *&v19[OBJC_IVAR___CCUIPagingViewController___rootFolderController];
      if (!v20)
      {
        __break(1u);
        return result;
      }

      v21 = v20;
      v22 = [v21 folderView];
      v23 = [v21 folderView];
      v24 = [v23 currentPageIndex];

      v25 = [v22 iconListModelIndexForPageIndex_];
      v26 = [v21 folder];
      if (v26)
      {
        v27 = v26;

        [v21 layoutIconListsWithAnimationType:-1 forceRelayout:0];
        v28 = [v27 indexOfListContainingIcon_];
        v29 = [v21 folderView];
        v30 = [v29 pageIndexForIconListViewIndex_];

        v31 = [v21 folderView];
        v32 = [v31 currentPageIndex];

        if (v32 == v30)
        {
          swift_unknownObjectRelease();

          v21 = v27;
        }

        else
        {
          v33 = [v21 folderView];
          v34 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v35 = swift_allocObject();
          v35[2] = 0;
          v35[3] = 0;
          v35[4] = v34;
          v35[5] = a4;
          aBlock[4] = sub_21EA5BBF0;
          aBlock[5] = v35;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_21EA87FF0;
          aBlock[3] = &block_descriptor_16_0;
          v36 = _Block_copy(aBlock);
          v37 = a4;

          [v33 setCurrentPageIndex:v30 animated:1 completion:v36];

          _Block_release(v36);
          swift_unknownObjectRelease();

          v21 = v33;
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    a5(1, 0);
    if (qword_27CEDBC20 != -1)
    {
      swift_once();
    }

    sub_21EAA9150();
  }

  return result;
}

uint64_t sub_21EA9D56C(uint64_t a1, void *a2, void (*a3)(uint64_t, void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = swift_dynamicCastObjCProtocolConditional();
    if (v6)
    {
      v7 = v6;
      v8 = a2;
      v9 = [v7 containerBundleIdentifier];
      if (v9)
      {
        v10 = v9;
        if ([v7 respondsToSelector_])
        {
          v11 = [v7 uniqueIdentifier];
          sub_21EAA8E00();

          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            v13 = *(Strong + OBJC_IVAR___CCUIPagingViewController_controlIntentStore);
            v14 = sub_21EAA8DC0();

            [v13 deleteIntentWithBundleIdentifier:v10 dataSourceIdentifier:v14];

            swift_unknownObjectRelease();
            v10 = v14;
          }

          else
          {
          }
        }

        else
        {
        }
      }

      else
      {
        v10 = v8;
      }
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_21EA73EF0(a2);
      swift_unknownObjectRelease();
    }

    a3(1, 0);
  }

  return result;
}

uint64_t sub_21EA9D738()
{
  sub_21EA01354(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

id sub_21EA9D794()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEDDD30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21EAB6F50;
  *(inited + 32) = sub_21EAA8E00();
  *(inited + 40) = v1;
  v2 = @"CCSIconElementRequestErrorDomain";
  v3 = NSStringFromIconElementRequestErrorCode();
  v4 = sub_21EAA8E00();
  v6 = v5;

  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v4;
  *(inited + 56) = v6;
  sub_21EA515F8(inited);
  swift_setDeallocating();
  sub_21EA9E7D4(inited + 32);
  v7 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  v8 = sub_21EAA8DA0();

  v9 = [v7 initWithDomain:@"CCSIconElementRequestErrorDomain" code:0 userInfo:v8];

  return v9;
}

void sub_21EA9D8D8(void *a1, uint64_t a2, void (**a3)(void, void, void))
{
  v5 = sub_21EAA8D30();
  v6 = *(v5 - 1);
  MEMORY[0x28223BE20](v5);
  v51 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v52 = &v45 - v9;
  v10 = sub_21EAA8CD0();
  v49 = *(v10 - 8);
  v50 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21EAA8D10();
  v47 = *(v13 - 8);
  v48 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  _Block_copy(a3);
  v17 = sub_21EA9CDE0(a1);
  if (v17)
  {
    v18 = v17;
    objc_opt_self();
    v19 = swift_dynamicCastObjCClass();
    v46 = v6;
    if (!v19)
    {
      goto LABEL_6;
    }

    v20 = v19;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v45 = v5;
      v22 = *(Strong + OBJC_IVAR___CCUIPagingViewController_controlDescriptorProvider);
      swift_unknownObjectRetain();
      v23 = [v22 descriptorFor_];
      swift_unknownObjectRelease();
      if (v23)
      {
        swift_unknownObjectRelease();

        v5 = v45;
LABEL_6:
        sub_21E9F8880(0, &unk_27CEDCDA0);
        v24 = sub_21EAA8FA0();
        [v24 addIconDataSource_];
        v25 = v24;
        _sSo17CCUIGridSizeClassV15ControlCenterUIE06moduleB0ABSo09CCSModuleB0V_tcfC_0([a1 moduleSize]);
        v26 = sub_21EAA9120();
        [v25 setGridSizeClass_];

        sub_21E9F8880(0, &qword_28125B7F0);
        v27 = sub_21EAA90C0();
        v28 = swift_allocObject();
        swift_weakInit();
        v29 = swift_allocObject();
        v29[2] = v28;
        v29[3] = a1;
        v29[4] = v18;
        v29[5] = v25;
        v29[6] = sub_21EA9E70C;
        v29[7] = v16;
        aBlock[4] = sub_21EA9E714;
        aBlock[5] = v29;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_21EA87FF0;
        aBlock[3] = &block_descriptor_16;
        v30 = _Block_copy(aBlock);
        swift_unknownObjectRetain();
        v45 = v25;
        v31 = a1;

        sub_21EAA8CF0();
        aBlock[0] = MEMORY[0x277D84F90];
        sub_21EA51E2C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEDCC40);
        sub_21EA51E84();
        v32 = v50;
        sub_21EAA9340();
        MEMORY[0x223D66E90](0, v15, v12, v30);
        _Block_release(v30);

        (*(v49 + 8))(v12, v32);
        (*(v47 + 8))(v15, v48);
        if (qword_27CEDBC20 != -1)
        {
          swift_once();
        }

        v33 = v51;
        sub_21EAA8D20();
        v34 = v52;
        sub_21EAA8D60();
        v35 = *(v46 + 8);
        v35(v33, v5);
        sub_21EAA9140();
        v35(v34, v5);
        if (sub_21EAA8CC0())
        {
          if (qword_28125B8C0 != -1)
          {
            swift_once();
          }

          v36 = sub_21EAA8790();
          __swift_project_value_buffer(v36, qword_28125B8C8);
          v37 = sub_21EAA8760();
          v38 = sub_21EAA9000();
          if (!os_log_type_enabled(v37, v38))
          {
            goto LABEL_19;
          }

          v39 = swift_slowAlloc();
          *v39 = 0;
          v40 = "Semaphore signaled";
        }

        else
        {
          if (qword_28125B8C0 != -1)
          {
            swift_once();
          }

          v42 = sub_21EAA8790();
          __swift_project_value_buffer(v42, qword_28125B8C8);
          v37 = sub_21EAA8760();
          v38 = sub_21EAA9000();
          if (!os_log_type_enabled(v37, v38))
          {
            goto LABEL_19;
          }

          v39 = swift_slowAlloc();
          *v39 = 0;
          v40 = "Semaphore timeout";
        }

        _os_log_impl(&dword_21E9F5000, v37, v38, v40, v39, 2u);
        MEMORY[0x223D68580](v39, -1, -1);
LABEL_19:

        swift_unknownObjectRelease();
        return;
      }
    }

    else
    {
      swift_unknownObjectRetain();
    }

    v43 = sub_21EA9D794();
    v52 = sub_21EAA83B0();
    (a3)[2](a3, 0, v52);

    swift_unknownObjectRelease_n();
  }

  else
  {
    v41 = sub_21EA9D794();
    v52 = sub_21EAA83B0();
    (a3)[2](a3, 0, v52);
  }

  v44 = v52;
}

void sub_21EA9E054(void *a1, uint64_t a2, void (**a3)(void, void, void))
{
  v5 = sub_21EAA8CD0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_21EAA8D10();
  v9 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  _Block_copy(a3);
  v13 = sub_21EA9C2EC(a1);
  if (v13)
  {
    v14 = v13;
    sub_21E9F8880(0, &qword_28125B7F0);
    v22 = sub_21EAA90C0();
    v15 = swift_allocObject();
    swift_weakInit();
    v16 = swift_allocObject();
    v16[2] = v15;
    v16[3] = v14;
    v16[4] = sub_21EA9E850;
    v16[5] = v12;
    aBlock[4] = sub_21EA9E780;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21EA87FF0;
    aBlock[3] = &block_descriptor_35;
    v17 = _Block_copy(aBlock);
    v18 = v14;

    sub_21EAA8CF0();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_21EA51E2C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEDCC40);
    sub_21EA51E84();
    sub_21EAA9340();
    v19 = v22;
    MEMORY[0x223D66E90](0, v11, v8, v17);
    _Block_release(v17);

    (*(v6 + 8))(v8, v5);
    (*(v9 + 8))(v11, v23);
  }

  else
  {
    v20 = sub_21EA9D794();
    v23 = sub_21EAA83B0();
    a3[2](a3, 0, v23);

    v21 = v23;
  }
}

void sub_21EA9E3E4(void *a1, uint64_t a2, void *aBlock)
{
  _Block_copy(aBlock);
  _Block_copy(aBlock);
  _Block_copy(aBlock);
  if (![a1 intent])
  {
LABEL_9:
    _Block_copy(aBlock);
    sub_21EA9D8D8(a1, a2, aBlock);
LABEL_12:
    _Block_release(aBlock);
    goto LABEL_14;
  }

  if ([a1 intent] == 2)
  {
    v6 = sub_21EA9C2EC(a1);
    if (v6)
    {

      if (qword_28125B8C0 != -1)
      {
        swift_once();
      }

      v7 = sub_21EAA8790();
      __swift_project_value_buffer(v7, qword_28125B8C8);
      v8 = sub_21EAA8760();
      v9 = sub_21EAA9000();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_21E9F5000, v8, v9, "Skipped adding iconElement:<%%@> because it is already in ControlCenter", v10, 2u);
        MEMORY[0x223D68580](v10, -1, -1);
      }

      goto LABEL_13;
    }

    goto LABEL_9;
  }

  if ([a1 intent] == 1)
  {
    _Block_copy(aBlock);
    sub_21EA9E054(a1, a2, aBlock);
    goto LABEL_12;
  }

LABEL_13:
  v11 = sub_21EA9D794();
  v12 = sub_21EAA83B0();
  (*(aBlock + 2))(aBlock, 0, v12);

LABEL_14:
  _Block_release(aBlock);
  _Block_release(aBlock);

  _Block_release(aBlock);
}

uint64_t sub_21EA9E5CC(void *a1, uint64_t a2, uint64_t a3)
{
  if (!sub_21EA9CDE0(a1))
  {
LABEL_10:
    v10 = sub_21EA9C2EC(a1);
    if (v10)
    {

      v11 = 1;
    }

    else
    {
      v11 = 2;
    }

    v12 = *(a3 + 16);

    return v12(a3, v11, 0);
  }

  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (!v5)
  {
    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  v6 = v5;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = [*(Strong + OBJC_IVAR___CCUIPagingViewController_controlDescriptorProvider) descriptorFor_];
    swift_unknownObjectRelease();
    if (v8)
    {
      swift_unknownObjectRelease();

      goto LABEL_10;
    }
  }

  (*(a3 + 16))(a3, 3, 0);

  return swift_unknownObjectRelease();
}

uint64_t objectdestroy_6Tm()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t objectdestroy_31Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_21EA9E7D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDCC10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21EA9E868()
{
  result = sub_21EAA8DC0();
  qword_28125C600 = result;
  return result;
}

uint64_t sub_21EA9E8D0(uint64_t a1, void *a2)
{
  v4 = sub_21EAA85F0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  sub_21EAA85E0();
  v9 = a2;
  v8();

  return (*(v5 + 8))(v7, v4);
}

void *sub_21EA9EA04()
{
  v1 = v0;
  v35 = *MEMORY[0x277D85DE8];
  v2 = sub_21EAA4308();
  v3 = [objc_allocWithZone(MEMORY[0x277D661F0]) initWithStore_];
  [v3 setDelegate_];
  v33[0] = 0;
  v4 = [v2 loadCurrentIconState_];
  v5 = v33[0];
  if (v4)
  {
    v6 = v4;
    v7 = sub_21EAA8DB0();
    v8 = v5;

    LOBYTE(v32) = 8;
    sub_21EAA6198();
    sub_21EAA93E0();
    if (*(v7 + 16) && (v9 = sub_21EA4A05C(v33), (v10 & 1) != 0))
    {
      sub_21E9FE6EC(*(v7 + 56) + 32 * v9, v34);
      sub_21EA4A3FC(v33);

      sub_21E9F8880(0, &unk_28125B648);
      if (swift_dynamicCast())
      {
        v11 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
        v12 = sub_21EAA9210();

        if ((v12 & 1) == 0)
        {
          *(v1 + OBJC_IVAR____TtC15ControlCenterUI23ControlsIconModelLoader_iconStateDirty) = 1;
        }
      }
    }

    else
    {

      sub_21EA4A3FC(v33);
    }

    [v3 layout];
    if (*(v1 + OBJC_IVAR____TtC15ControlCenterUI23ControlsIconModelLoader_iconStateDirty) == 1)
    {
      *(v1 + OBJC_IVAR____TtC15ControlCenterUI23ControlsIconModelLoader_iconStateDirty) = 0;
      v13 = [v3 rootFolder];
      if (v13)
      {
        v14 = v13;
        [v13 markIconStateDirty];
      }

      [v3 saveIconStateIfNeeded];
    }

    sub_21EAA0CAC(v3);
  }

  else
  {
    v15 = v33[0];
    v16 = sub_21EAA83C0();

    swift_willThrow();
    if (qword_28125B8A0 != -1)
    {
      swift_once();
    }

    v17 = sub_21EAA8790();
    __swift_project_value_buffer(v17, qword_28125B8A8);
    v18 = v16;
    v19 = sub_21EAA8760();
    v20 = sub_21EAA9000();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      v23 = v16;
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 4) = v24;
      *v22 = v24;
      _os_log_impl(&dword_21E9F5000, v19, v20, "Did not find controls icon state plist; %@", v21, 0xCu);
      sub_21EA488A0(v22, &unk_27CEDCC30);
      MEMORY[0x223D68580](v22, -1, -1);
      MEMORY[0x223D68580](v21, -1, -1);
    }

    else
    {
    }

    v25 = [*(v1 + OBJC_IVAR____TtC15ControlCenterUI23ControlsIconModelLoader_moduleSettingsManager) orderedEnabledModuleIdentifiersFromSettingsApp];
    v26 = sub_21EAA8EC0();

    v27 = sub_21EAA294C(v3, v26);

    if (v27)
    {
      if ([objc_opt_self() areAnyAccessoriesConfigured])
      {
        sub_21EAA0678(v3);
      }

      sub_21EAA0CAC(v27);

      v2 = v3;
      v3 = v27;
    }

    else
    {
      v28 = sub_21EAA8760();
      v29 = sub_21EAA8FE0();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_21E9F5000, v28, v29, "Cannot build icon model from user-enabled Legacy module identifiers", v30, 2u);
        MEMORY[0x223D68580](v30, -1, -1);
      }
    }
  }

  return v3;
}

id sub_21EA9EEDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26[2] = a4;
  v27 = a5;
  v26[1] = a3;
  v6 = sub_21EAA8530();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  CCUIDefaultSupportedGridSizeClassesForChronoControls();
  v10 = SBHIconGridSizeClassSetForCCUIGridSizeClassMask();
  v11 = *(v5 + OBJC_IVAR____TtC15ControlCenterUI23ControlsIconModelLoader_moduleInstanceManager);
  v12 = sub_21EAA8DC0();
  sub_21EAA8520();
  sub_21EAA84E0();
  (*(v7 + 8))(v9, v6);
  v13 = sub_21EAA8DC0();

  v14 = [v11 obtainModuleWithBundleIdentifier:v12 uniqueIdentifier:v13];

  if (v14)
  {
    v15 = [v14 module];
    if ([v15 respondsToSelector_])
    {
      [v15 supportedGridSizeClasses];
      v16 = SBHIconGridSizeClassSetForCCUIGridSizeClassMask();

      v10 = v16;
    }

    if ([v15 respondsToSelector_])
    {
      v17 = [v15 expandsGridSizeClassesForAccessibility];
    }

    else
    {
      v17 = 0;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0;
  }

  v18 = objc_allocWithZone(MEMORY[0x277CFC9E0]);
  v19 = v10;
  v20 = sub_21EAA8DC0();
  v21 = sub_21EAA8DC0();
  v22 = [v18 initWithModuleIdentifier:v20 containerBundleIdentifier:v21 standardSupportedGridSizeClasses:v19 expandsGridSizeClassesForAccessibility:v17];

  sub_21E9F8880(0, &unk_27CEDCDA0);
  v23 = sub_21EAA8FA0();
  [v23 addIconDataSource_];
  v24 = v23;
  [v24 setGridSizeClass_];

  return v24;
}

void *sub_21EA9F1AC()
{
  v1 = v0;
  v2 = sub_21EAA83F0();
  v3 = *(v2 - 8);
  v37 = v2;
  v38 = v3;
  MEMORY[0x28223BE20](v2);
  v5 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21EAA8440();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v31 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = v31 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = v31 - v17;
  v19 = objc_opt_self();
  v20 = [v19 _configurationFileURL];
  sub_21EAA8410();

  sub_21EAA508C();
  v34 = v9;
  v35 = *(v7 + 8);
  v36 = v1;
  v35(v18, v6);
  v21 = [v19 _configurationDirectoryURL];
  sub_21EAA8410();

  v39 = 0xD000000000000017;
  v40 = 0x800000021EABFDC0;
  v22 = v37;
  v23 = v38;
  v24 = *(v38 + 104);
  v33 = *MEMORY[0x277CC91D8];
  v32 = v24;
  v24(v5);
  v31[1] = sub_21EA4800C();
  sub_21EAA8430();
  v25 = *(v23 + 8);
  v38 = v23 + 8;
  v31[0] = v25;
  v25(v5, v22);
  v26 = v35;
  v35(v12, v6);
  sub_21EAA508C();
  v26(v15, v6);
  v27 = [v19 _configurationDirectoryURL];
  sub_21EAA8410();

  v39 = 0xD00000000000001FLL;
  v40 = 0x800000021EABFE50;
  v28 = v37;
  v32(v5, v33, v37);
  v29 = v34;
  sub_21EAA8430();
  (v31[0])(v5, v28);
  v26(v12, v6);
  sub_21EAA508C();
  v26(v29, v6);
  return sub_21EA9EA04();
}

unint64_t sub_21EA9F6E4(char a1)
{
  result = 0x54746E656D656C65;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000019;
      break;
    case 2:
      result = 0xD000000000000019;
      break;
    case 3:
      result = 0xD00000000000001ALL;
      break;
    case 4:
      return result;
    case 5:
      result = 0x546C6F72746E6F63;
      break;
    case 6:
      result = 0x4B6C6F72746E6F63;
      break;
    case 7:
      result = 0x73746E656D656C65;
      break;
    case 8:
      result = 0x6556746567646977;
      break;
    case 9:
      result = 0xD00000000000001DLL;
      break;
    case 10:
      result = 0xD000000000000021;
      break;
    case 11:
    case 12:
      result = 0xD000000000000020;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_21EA9F874(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_21EA9F6E4(*a1);
  v5 = v4;
  if (v3 == sub_21EA9F6E4(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_21EAA9530();
  }

  return v8 & 1;
}

uint64_t sub_21EA9F8FC()
{
  v1 = *v0;
  sub_21EAA95B0();
  sub_21EA9F6E4(v1);
  sub_21EAA8E40();

  return sub_21EAA95D0();
}

uint64_t sub_21EA9F960()
{
  sub_21EA9F6E4(*v0);
  sub_21EAA8E40();
}

uint64_t sub_21EA9F9B4()
{
  v1 = *v0;
  sub_21EAA95B0();
  sub_21EA9F6E4(v1);
  sub_21EAA8E40();

  return sub_21EAA95D0();
}

uint64_t sub_21EA9FA14@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21EAA5A50();
  *a1 = result;
  return result;
}

unint64_t sub_21EA9FA44@<X0>(unint64_t *a1@<X8>)
{
  result = sub_21EA9F6E4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_21EA9FA70(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDCF20);
    v2 = sub_21EAA94E0();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = (*(a1 + 48) + ((v12 << 10) | (16 * v13)));
        v16 = *v14;
        v15 = v14[1];

        swift_dynamicCast();
        sub_21EA51D48(&v22, v24);
        sub_21EA51D48(v24, v25);
        sub_21EA51D48(v25, &v23);
        result = sub_21EA49DF4(v16, v15);
        if (v17)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v16;
          v9[1] = v15;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          __swift_destroy_boxed_opaque_existential_1(v11);
          result = sub_21EA51D48(&v23, v11);
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v18 = (v2[6] + 16 * result);
          *v18 = v16;
          v18[1] = v15;
          result = sub_21EA51D48(&v23, (v2[7] + 32 * result));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_21EA9FCC8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDDE38);
    v2 = sub_21EAA94E0();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_21E9FE6EC(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_21EA51D48(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_21EA51D48(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_21EA51D48(v31, v32);
    result = sub_21EAA93C0();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_21EA51D48(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_21EA9FF90(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 + 16);

  if (v6)
  {
    v7 = sub_21EA49DF4(0xD000000000000020, 0x800000021EABA8B0);
    if (v8)
    {
      sub_21E9FE6EC(*(a2 + 56) + 32 * v7, &aBlock);
      if (swift_dynamicCast())
      {
        if (v28[0] == __PAIR128__(0xE100000000000000, 49))
        {

LABEL_7:
          if (qword_28125B8A0 != -1)
          {
            swift_once();
          }

          v10 = sub_21EAA8790();
          __swift_project_value_buffer(v10, qword_28125B8A8);
          v11 = sub_21EAA8760();
          v12 = sub_21EAA9000();
          if (os_log_type_enabled(v11, v12))
          {
            v13 = swift_slowAlloc();
            *v13 = 0;
            _os_log_impl(&dword_21E9F5000, v11, v12, "Visual intelligence control has already been cleaned.", v13, 2u);
            MEMORY[0x223D68580](v13, -1, -1);
          }

          return a2;
        }

        v9 = sub_21EAA9530();

        if (v9)
        {
          goto LABEL_7;
        }
      }
    }
  }

  v14 = [a1 rootFolder];
  if (!v14)
  {
    return a2;
  }

  v15 = v14;
  v34 = MEMORY[0x277D84F90];
  v16 = swift_allocObject();
  *(v16 + 16) = &v34;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_21EAA6168;
  *(v17 + 24) = v16;
  v32 = sub_21EAA6170;
  v33 = v17;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v30 = sub_21EA9E8D0;
  v31 = &block_descriptor_52;
  v18 = _Block_copy(&aBlock);

  [v15 enumerateAllIconsWithOptions:1 usingBlock:v18];
  _Block_release(v18);
  LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

  if (v18)
  {
    __break(1u);
LABEL_24:
    if (sub_21EAA9380() < 1)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (v34 >> 62)
  {
    goto LABEL_24;
  }

  if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
  {
LABEL_16:
    sub_21E9F8880(0, &qword_28125B730);

    v19 = sub_21EAA8EB0();

    [v15 removeIcons:v19 options:0];
  }

LABEL_17:
  if (qword_28125B8A0 != -1)
  {
    swift_once();
  }

  v20 = sub_21EAA8790();
  __swift_project_value_buffer(v20, qword_28125B8A8);
  v21 = v3;
  v22 = sub_21EAA8760();
  v23 = sub_21EAA9000();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *&aBlock = v25;
    *v24 = 136315138;
    *(v24 + 4) = sub_21E9FE748(49, 0xE100000000000000, &aBlock);
    _os_log_impl(&dword_21E9F5000, v22, v23, "Write visual intelligence control cleaned key to %s.", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v25);
    MEMORY[0x223D68580](v25, -1, -1);
    MEMORY[0x223D68580](v24, -1, -1);
  }

  v31 = MEMORY[0x277D837D0];
  *&aBlock = 49;
  *(&aBlock + 1) = 0xE100000000000000;
  sub_21EA51D48(&aBlock, v28);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_21EA66070(v28, 0xD000000000000020, 0x800000021EABA8B0, isUniquelyReferenced_nonNull_native);

  return a2;
}

void sub_21EAA048C(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6)
  {
    return;
  }

  v7 = v6;
  v16 = a1;
  if (![v7 activeDataSource])
  {
    goto LABEL_10;
  }

  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    v9 = [v8 kind];
    v10 = sub_21EAA8E00();
    v12 = v11;

    if (v10 == 0xD000000000000027 && 0x800000021EABFE90 == v12)
    {
    }

    else
    {
      v14 = sub_21EAA9530();

      if ((v14 & 1) == 0)
      {
        swift_unknownObjectRelease();
LABEL_10:

        return;
      }
    }

    v15 = v16;
    MEMORY[0x223D66C60]();
    if (*((*a4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21EAA8EE0();
    }

    sub_21EAA8EF0();
  }

  else
  {
  }

  swift_unknownObjectRelease();
}

void sub_21EAA0678(void *a1)
{
  v2 = [a1 rootFolder];
  if (!v2)
  {
    goto LABEL_7;
  }

  v3 = v2;
  v4 = [v2 firstList];
  if (!v4)
  {

LABEL_7:
    v10 = 0;
    goto LABEL_18;
  }

  v5 = v4;
  v25 = 0;
  v24 = 0;
  v6 = swift_allocObject();
  *(v6 + 16) = &v24;
  *(v6 + 24) = &v25;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_21EAA6160;
  *(v7 + 24) = v6;
  v23[4] = sub_21EA4EA24;
  v23[5] = v7;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 1107296256;
  v23[2] = sub_21EA4D078;
  v23[3] = &block_descriptor_43_0;
  v8 = _Block_copy(v23);

  [v5 enumerateIconsUsingBlock_];
  _Block_release(v8);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
    return;
  }

  if (v24 == 1)
  {

    v9 = v25;

    return;
  }

  v11 = sub_21EAA9120();
  v12 = sub_21EA9EEDC(0xD00000000000001CLL, 0x800000021EABFE00, 0x6C7070612E6D6F63, 0xEE00656D6F482E65, v11);

  if (v25)
  {
    v13 = v25;
  }

  else
  {
    v14 = [v3 firstList];
    if (v14)
    {
      v15 = v14;
      v16 = [v14 lastIcon];
      if (v16)
      {
        v17 = v16;
        v18 = [v15 gridSize];
        v19 = HIWORD(v18);
        v20 = v18;
        v21 = [v15 gridCellInfoWithOptions_];
        v22 = [v15 iconAtCoordinate:v20 gridCellInfo:{v19, v21}];

        if (v22)
        {
        }

        else
        {
        }
      }
    }
  }

  v10 = sub_21EAA6160;
LABEL_18:
  [a1 saveIconStateIfNeeded];
  sub_21E9FFAF0(v10);
}

void sub_21EAA0A40(void *a1, uint64_t a2, _BYTE *a3, _BYTE *a4, id *a5)
{
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (!v9)
  {
    return;
  }

  v10 = v9;
  v27 = a1;
  if (![v10 activeDataSource])
  {
    v19 = v27;
LABEL_21:

    return;
  }

  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (v11)
  {
    v12 = v11;
    v13 = [v11 moduleIdentifier];
    v14 = sub_21EAA8E00();
    v16 = v15;

    if (v14 == 0xD00000000000001CLL && 0x800000021EABFE00 == v16)
    {
    }

    else
    {
      v18 = sub_21EAA9530();

      if ((v18 & 1) == 0)
      {
LABEL_16:
        v20 = [v12 moduleIdentifier];
        v21 = sub_21EAA8E00();
        v23 = v22;

        if (v21 == 0xD000000000000017 && 0x800000021EABFE70 == v23)
        {

          swift_unknownObjectRelease();
        }

        else
        {
          v24 = sub_21EAA9530();

          swift_unknownObjectRelease();

          if ((v24 & 1) == 0)
          {
            return;
          }
        }

        v26 = *a5;
        *a5 = v27;
        v25 = v27;
        v19 = v26;
        goto LABEL_21;
      }
    }

    *a4 = 1;
    *a3 = 1;
    goto LABEL_16;
  }

  swift_unknownObjectRelease();
}

uint64_t sub_21EAA0CAC(void *a1)
{
  v2 = v1;
  v4 = 0;
  v5 = sub_21EAA46A0();
  if (!v5)
  {
    v5 = sub_21EA515F8(MEMORY[0x277D84F90]);
  }

  v6 = "lements";
  if (*(v5 + 16) && (v7 = sub_21EA49DF4(0xD00000000000001DLL, 0x800000021EABA860), (v8 & 1) != 0) && (sub_21E9FE6EC(*(v5 + 56) + 32 * v7, &aBlock), (swift_dynamicCast() & 1) != 0))
  {
    if (v105[0] == __PAIR128__(0xE100000000000000, 49))
    {

      LOBYTE(v9) = 1;
    }

    else
    {
      LOBYTE(v9) = sub_21EAA9530();
    }
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  if (qword_28125B8A0 != -1)
  {
LABEL_66:
    swift_once();
  }

  v10 = sub_21EAA8790();
  __swift_project_value_buffer(v10, qword_28125B8A8);
  v11 = a1;
  v12 = sub_21EAA8760();
  v13 = sub_21EAA9000();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = v2;
    v15 = v11;
    v16 = swift_slowAlloc();
    v17 = v4;
    v18 = v6;
    v19 = swift_slowAlloc();
    *v16 = 67109378;
    *(v16 + 4) = v9 & 1;
    *(v16 + 8) = 2112;
    v20 = [v15 rootFolder];
    *(v16 + 10) = v20;
    *v19 = v20;
    _os_log_impl(&dword_21E9F5000, v12, v13, "Has migrated %{BOOL}d with folder %@", v16, 0x12u);
    sub_21EA488A0(v19, &unk_27CEDCC30);
    v21 = v19;
    v6 = v18;
    v4 = v17;
    MEMORY[0x223D68580](v21, -1, -1);
    v22 = v16;
    v11 = v15;
    v2 = v14;
    MEMORY[0x223D68580](v22, -1, -1);
  }

  if ((v9 & 1) != 0 || (v97 = [v11 rootFolder]) == 0)
  {
    v72 = sub_21EAA8760();
    v73 = sub_21EAA8FE0();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      *v74 = 0;
      _os_log_impl(&dword_21E9F5000, v72, v73, "Skipped device dependent module migration", v74, 2u);
      MEMORY[0x223D68580](v74, -1, -1);
    }

    v75 = 0;
  }

  else
  {
    v23 = sub_21EAA8760();
    v24 = sub_21EAA9000();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_21E9F5000, v23, v24, "Starting device dependent module migration...", v25, 2u);
      MEMORY[0x223D68580](v25, -1, -1);
    }

    v95 = v2;
    v26 = [*(v2 + OBJC_IVAR____TtC15ControlCenterUI23ControlsIconModelLoader_moduleInstanceManager) loadableModuleIdentifiers];
    v2 = sub_21EAA8F60();

    v27 = [v97 firstList];
    v94 = v6;
    if (v27)
    {
      v28 = v27;
      v91 = v11;
      v92 = v5;
      v93 = v4;
      v29 = v27;
      v30 = sub_21EAA8760();
      v31 = sub_21EAA9000();
      v96 = v29;

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        *v32 = 138412290;
        *(v32 + 4) = v29;
        *v33 = v28;
        v34 = v29;
        _os_log_impl(&dword_21E9F5000, v30, v31, "Migrate first page %@.", v32, 0xCu);
        sub_21EA488A0(v33, &unk_27CEDCC30);
        MEMORY[0x223D68580](v33, -1, -1);
        MEMORY[0x223D68580](v32, -1, -1);
      }

      v98 = 0;
      v5 = 0;
      v4 = (v2 + 56);
      while (1)
      {
        v35 = &unk_283017738 + 16 * v5;
        v36 = *(v35 + 4);
        v9 = *(v35 + 5);
        swift_bridgeObjectRetain_n();
        v37 = sub_21EAA8760();
        v38 = sub_21EAA9000();

        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          v40 = swift_slowAlloc();
          *&aBlock = v40;
          *v39 = 136315138;
          *(v39 + 4) = sub_21E9FE748(v36, v9, &aBlock);
          _os_log_impl(&dword_21E9F5000, v37, v38, "Migrate %s.", v39, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v40);
          MEMORY[0x223D68580](v40, -1, -1);
          MEMORY[0x223D68580](v39, -1, -1);
        }

        if (*(v2 + 16) && (sub_21EAA95B0(), sub_21EAA8E40(), v41 = sub_21EAA95D0(), v42 = -1 << *(v2 + 32), v43 = v41 & ~v42, ((*&v4[(v43 >> 3) & 0xFFFFFFFFFFFFFF8] >> v43) & 1) != 0))
        {
          v44 = ~v42;
          while (1)
          {
            v45 = (*(v2 + 48) + 16 * v43);
            v46 = *v45 == v36 && v45[1] == v9;
            if (v46 || (sub_21EAA9530() & 1) != 0)
            {
              break;
            }

            v43 = (v43 + 1) & v44;
            if (((*&v4[(v43 >> 3) & 0xFFFFFFFFFFFFFF8] >> v43) & 1) == 0)
            {
              goto LABEL_34;
            }
          }

          LOBYTE(v105[0]) = 0;
          a1 = swift_allocObject();
          a1[2] = v36;
          a1[3] = v9;
          a1[4] = v105;

          sub_21E9FFAF0(v98);
          v52 = swift_allocObject();
          *(v52 + 16) = sub_21EAA6154;
          *(v52 + 24) = a1;
          v102 = sub_21EA4E84C;
          v103 = v52;
          *&aBlock = MEMORY[0x277D85DD0];
          *(&aBlock + 1) = 1107296256;
          v100 = sub_21EA4D078;
          v101 = &block_descriptor_17;
          v53 = _Block_copy(&aBlock);
          v6 = v103;

          [v96 enumerateIconsUsingBlock_];
          _Block_release(v53);
          LOBYTE(v53) = swift_isEscapingClosureAtFileLocation();

          if (v53)
          {
            __break(1u);
            goto LABEL_66;
          }

          if (LOBYTE(v105[0]) == 1)
          {
          }

          else
          {
            v54 = sub_21EAA9120();
            v55 = sub_21EA9EEDC(v36, v9, 0xD000000000000015, 0x800000021EABE1E0, v54);

            v56 = [v97 firstList];
            if (v56)
            {
              v57 = v56;
              v58 = [v56 lastIcon];
              if (v58)
              {
                v59 = v58;
                v60 = [v57 gridSize];
                v61 = HIWORD(v60);
                v62 = v60;
                v63 = [v57 gridCellInfoWithOptions_];
                v64 = [v57 iconAtCoordinate:v62 gridCellInfo:{v61, v63}];

                if (v64)
                {

                  v65 = v59;
                  v59 = v64;
                }

                else
                {
                  v65 = [v97 insertIcon:v55 afterIcon:v59 options:0x1000000 listGridCellInfoOptions:0];
                }
              }
            }

            v66 = v55;
            v67 = sub_21EAA8760();
            v68 = sub_21EAA9000();

            if (os_log_type_enabled(v67, v68))
            {
              v69 = swift_slowAlloc();
              v70 = swift_slowAlloc();
              *v69 = 138412290;
              *(v69 + 4) = v66;
              *v70 = v66;
              v71 = v66;
              _os_log_impl(&dword_21E9F5000, v67, v68, "Migration added module %@.", v69, 0xCu);
              sub_21EA488A0(v70, &unk_27CEDCC30);
              MEMORY[0x223D68580](v70, -1, -1);
              MEMORY[0x223D68580](v69, -1, -1);
            }
          }

          v98 = sub_21EAA6154;
        }

        else
        {
LABEL_34:

          v47 = sub_21EAA8760();
          v48 = sub_21EAA9000();

          if (os_log_type_enabled(v47, v48))
          {
            v49 = swift_slowAlloc();
            v50 = swift_slowAlloc();
            *&aBlock = v50;
            *v49 = 136315138;
            v51 = sub_21E9FE748(v36, v9, &aBlock);

            *(v49 + 4) = v51;
            _os_log_impl(&dword_21E9F5000, v47, v48, "Skip migration because %s is not loadable.", v49, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v50);
            MEMORY[0x223D68580](v50, -1, -1);
            MEMORY[0x223D68580](v49, -1, -1);
          }

          else
          {
          }
        }

        if (++v5 == 3)
        {

          swift_arrayDestroy();
          v5 = v92;
          v4 = v93;
          v11 = v91;
          v75 = v98;
          goto LABEL_55;
        }
      }
    }

    v75 = 0;
LABEL_55:
    v76 = v95;
    v77 = sub_21EAA8760();
    v78 = sub_21EAA9000();

    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      *&aBlock = v80;
      *v79 = 136315138;
      *(v79 + 4) = sub_21E9FE748(49, 0xE100000000000000, &aBlock);
      _os_log_impl(&dword_21E9F5000, v77, v78, "Write migrationSettingsMigrated to %s.", v79, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v80);
      MEMORY[0x223D68580](v80, -1, -1);
      MEMORY[0x223D68580](v79, -1, -1);
    }

    v101 = MEMORY[0x277D837D0];
    *&aBlock = 49;
    *(&aBlock + 1) = 0xE100000000000000;
    sub_21EA51D48(&aBlock, v105);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v104 = v5;
    sub_21EA66070(v105, 0xD00000000000001DLL, v94 | 0x8000000000000000, isUniquelyReferenced_nonNull_native);

    v5 = v104;
  }

  v82 = sub_21EA9FF90(v11, v5);

  [v11 saveIconStateIfNeeded];
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDDE58);
  *&aBlock = v82;
  sub_21EAA4A94(&aBlock);
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  if (!v4)
  {
    goto LABEL_62;
  }

  v83 = v4;
  v84 = sub_21EAA8760();
  v85 = sub_21EAA8FE0();

  if (!os_log_type_enabled(v84, v85))
  {

LABEL_62:

    return sub_21E9FFAF0(v75);
  }

  v86 = swift_slowAlloc();
  v87 = swift_slowAlloc();
  *v86 = 138412290;
  v88 = v4;
  v89 = _swift_stdlib_bridgeErrorToNSError();
  *(v86 + 4) = v89;
  *v87 = v89;
  _os_log_impl(&dword_21E9F5000, v84, v85, "Migration settings file save error %@", v86, 0xCu);
  sub_21EA488A0(v87, &unk_27CEDCC30);
  MEMORY[0x223D68580](v87, -1, -1);
  MEMORY[0x223D68580](v86, -1, -1);

  return sub_21E9FFAF0(v75);
}

void sub_21EAA1BBC(void *a1, uint64_t a2, _BYTE *a3, uint64_t a4, unint64_t a5, _BYTE *a6)
{
  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (!v11)
  {
    return;
  }

  v12 = v11;
  v25 = a1;
  if (![v12 activeDataSource])
  {
    goto LABEL_21;
  }

  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (v13)
  {
    v14 = [v13 moduleIdentifier];
    v15 = sub_21EAA8E00();
    v17 = v16;

    if (v15 == a4 && v17 == a5)
    {
    }

    else
    {
      v19 = sub_21EAA9530();

      if ((v19 & 1) == 0)
      {
LABEL_20:
        swift_unknownObjectRelease();
LABEL_21:

        return;
      }
    }

    if (qword_28125B8A0 != -1)
    {
      swift_once();
    }

    v20 = sub_21EAA8790();
    __swift_project_value_buffer(v20, qword_28125B8A8);

    v21 = sub_21EAA8760();
    v22 = sub_21EAA9000();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v26 = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_21E9FE748(a4, a5, &v26);
      _os_log_impl(&dword_21E9F5000, v21, v22, "Skip migration because %s is on first page.", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x223D68580](v24, -1, -1);
      MEMORY[0x223D68580](v23, -1, -1);
    }

    *a6 = 1;
    *a3 = 1;
    goto LABEL_20;
  }

  swift_unknownObjectRelease();
}

void sub_21EAA1E70(void *a1, uint64_t a2)
{
  v3 = v2;
  v61 = a1;
  v5 = sub_21EAA8530();
  v56 = *(v5 - 8);
  v57 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v55 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v3 + OBJC_IVAR____TtC15ControlCenterUI23ControlsIconModelLoader_moduleSettingsManager);
  v9 = [*(v3 + OBJC_IVAR____TtC15ControlCenterUI23ControlsIconModelLoader_moduleInstanceManager) loadableModuleIdentifiers];
  v10 = sub_21EAA8F60();

  v59 = 0x800000021EABFE00;
  v11 = *(a2 + 16);
  v62 = v3;
  v63 = v8;
  if (v11)
  {
    v58 = 0;
    v12 = 0;
    v60 = 0x800000021EABF770;
    v13 = a2 + 32;
    v14 = v10 + 56;
    do
    {
      if (*(v10 + 16))
      {
        v15 = (v13 + 16 * v12);
        v16 = *v15;
        v17 = v15[1];
        sub_21EAA95B0();

        sub_21EAA8E40();
        v18 = sub_21EAA95D0();
        v19 = -1 << *(v10 + 32);
        v20 = v18 & ~v19;
        if (((*(v14 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
        {
          goto LABEL_3;
        }

        v21 = ~v19;
        while (1)
        {
          v22 = (*(v10 + 48) + 16 * v20);
          v23 = *v22 == v16 && v22[1] == v17;
          if (v23 || (sub_21EAA9530() & 1) != 0)
          {
            break;
          }

          v20 = (v20 + 1) & v21;
          if (((*(v14 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
          {
            goto LABEL_3;
          }
        }

        if (v16 == 0xD000000000000036 && 0x800000021EABF730 == v17 || (sub_21EAA9530() & 1) != 0 || v16 == 0xD000000000000036 && v60 == v17 || (sub_21EAA9530() & 1) != 0)
        {
LABEL_3:
        }

        else
        {
          if (v16 == 0xD00000000000001CLL && v59 == v17)
          {
            v24 = 1;
          }

          else
          {
            v24 = sub_21EAA9530() | v58;
          }

          v58 = v24;
          v25 = sub_21EAA8DC0();
          v26 = [v63 moduleSettingsForModuleIdentifier_];

          v27 = [v26 gridSizeClass];
          v28 = v16;
          v29 = v27;
          v30 = sub_21EAA254C(v28, v17, v27, v63, v62);

          v31 = [v61 addIcon:v30 options:2];

          if (v31)
          {
          }
        }
      }

      ++v12;
    }

    while (v12 != v11);

    v3 = v62;
    v8 = v63;
    if (v58)
    {
      v32 = 1;
      goto LABEL_31;
    }
  }

  else
  {
  }

  v32 = [objc_opt_self() areAnyAccessoriesConfigured];
LABEL_31:
  v33 = v61;
  v34 = sub_21EAA9120();
  v35 = sub_21EAA254C(0xD00000000000002ELL, 0x800000021EABF670, v34, v8, v3);

  if (v32)
  {
    v36 = sub_21EAA9120();
    v37 = sub_21EAA254C(0xD00000000000001CLL, v59, v36, v8, v3);

    v38 = v55;
    sub_21EAA8520();
    sub_21EAA84E0();
    (*(v56 + 8))(v38, v57);
    v39 = objc_allocWithZone(MEMORY[0x277CFC9D8]);
    v40 = sub_21EAA8DC0();

    v41 = sub_21EAA8DC0();
    v42 = sub_21EAA8DC0();
    v43 = sub_21EAA8DC0();
    v44 = [v39 initWithUniqueIdentifier:v40 kind:v41 controlType:2 extensionBundleIdentifier:v42 containerBundleIdentifier:v43];

    sub_21E9F8880(0, &unk_27CEDCDA0);
    v45 = sub_21EAA8FA0();
    [v45 addIconDataSource_];
    v46 = v45;
    v47 = sub_21EAA9120();
    [v46 setGridSizeClass_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDCF10);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_21EAB7890;
    *(v48 + 32) = v37;
    *(v48 + 40) = v46;
    sub_21E9F8880(0, &qword_28125B730);
    v49 = v37;
    v50 = sub_21EAA8EB0();

    v51 = [v33 addListWithIcons_];

    v8 = v63;
    v3 = v62;
  }

  v52 = sub_21EAA9120();
  v53 = sub_21EAA254C(0xD00000000000002BLL, 0x800000021EABF6A0, v52, v8, v3);

  v54 = [v33 addListWithIcon_];
}

id sub_21EAA254C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v8 = sub_21EAA8530();
  v46 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21EAA8DC0();
  v12 = [a4 moduleSettingsForModuleIdentifier_];

  v13 = [v12 moduleContainerBundleIdentifier];
  if (!v13)
  {
    sub_21EAA8E00();
    v13 = sub_21EAA8DC0();
  }

  v14 = objc_allocWithZone(MEMORY[0x277D661B8]);
  v47 = a3;
  v15 = [v14 initWithGridSizeClass_];
  sub_21E9F8880(0, &unk_27CEDCDA0);
  v16 = sub_21EAA8FA0();
  v17 = *(a5 + OBJC_IVAR____TtC15ControlCenterUI23ControlsIconModelLoader_moduleSettingsManager);
  v18 = sub_21EAA8DC0();
  v19 = [v17 moduleSettingsForModuleIdentifier_];

  v20 = [v19 parityControlExtensionIdentifier];
  if (!v20)
  {
    goto LABEL_12;
  }

  v21 = v20;
  v22 = [v19 parityControlContainerBundleIdentifier];
  if (!v22)
  {
LABEL_11:

LABEL_12:
    v38 = objc_allocWithZone(MEMORY[0x277CFC9E0]);
    v39 = v15;
    v40 = sub_21EAA8DC0();
    v37 = [v38 initWithModuleIdentifier:v40 containerBundleIdentifier:v13 standardSupportedGridSizeClasses:v39 expandsGridSizeClassesForAccessibility:0];

    goto LABEL_13;
  }

  v44 = v8;
  v45 = v15;
  v23 = v22;
  v43[1] = sub_21EAA8E00();
  v25 = v24;

  v26 = [v19 parityControlKind];
  if (!v26)
  {

LABEL_10:
    v15 = v45;
    goto LABEL_11;
  }

  v27 = v26;
  v28 = [v19 parityControlType];
  if (!v28)
  {

    goto LABEL_10;
  }

  v29 = v28;

  v30 = sub_21EAA8E00();
  v32 = v31;

  sub_21EAA8520();
  sub_21EAA84E0();
  (*(v46 + 8))(v10, v44);
  v33 = sub_21EAA4F60(v30, v32);

  v34 = objc_allocWithZone(MEMORY[0x277CFC9D8]);
  v35 = sub_21EAA8DC0();

  v36 = sub_21EAA8DC0();

  v37 = [v34 initWithUniqueIdentifier:v35 kind:v27 controlType:v33 extensionBundleIdentifier:v21 containerBundleIdentifier:v36];

  v15 = v45;
LABEL_13:
  [v16 addIconDataSource_];
  v41 = v16;
  [v41 setGridSizeClass_];

  swift_unknownObjectRelease();
  return v41;
}

void *sub_21EAA294C(void *a1, uint64_t a2)
{
  v71[1] = *MEMORY[0x277D85DE8];
  v5 = sub_21EAA4DC4();
  v7 = v6;
  v70 = v8;
  v10 = v9;
  v11 = objc_allocWithZone(MEMORY[0x277D66418]);
  v12 = v7;
  v13 = sub_21EAA8DC0();
  v14 = v10;
  v15 = sub_21EAA8DC0();
  v16 = [v11 initWithUniqueIdentifier:v13 displayName:v15 maxListCount:15 listGridSize:v5 iconGridSizeClassSizes:v12];

  v17 = v16;
  v69 = v14;
  [v17 setListAllowedGridSizeClasses_];
  v18 = [objc_opt_self() controlCenterDomain];
  [v17 setGridSizeClassDomain_];

  [v17 setListsAllowRotatedLayout_];
  sub_21EAA1E70(v17, a2);
  v19 = [objc_allocWithZone(MEMORY[0x277D66200]) initWithRootNode_];
  [v19 setDelegate_];
  v71[0] = 0;
  v20 = [v19 archiveWithError_];
  v21 = v71[0];
  if (v20)
  {
    v22 = v20;
    sub_21EAA8DB0();
    v23 = v21;

    v24 = sub_21EAA4308();
    v25 = sub_21EAA8DA0();
    v71[0] = 0;
    v26 = [v24 saveCurrentIconState:v25 error:v71];

    if (v26)
    {
      v27 = qword_28125B8A0;
      v28 = v71[0];
      if (v27 != -1)
      {
        swift_once();
      }

      v29 = sub_21EAA8790();
      __swift_project_value_buffer(v29, qword_28125B8A8);
      v30 = sub_21EAA8760();
      v31 = sub_21EAA9000();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_21E9F5000, v30, v31, "Save current icon state to plist succeeded", v32, 2u);
        MEMORY[0x223D68580](v32, -1, -1);
      }
    }

    else
    {
      v39 = v71[0];
      v40 = sub_21EAA83C0();

      swift_willThrow();
      if (qword_28125B8A0 != -1)
      {
        swift_once();
      }

      v41 = sub_21EAA8790();
      __swift_project_value_buffer(v41, qword_28125B8A8);
      v42 = v40;
      v30 = sub_21EAA8760();
      v43 = sub_21EAA8FE0();

      if (!os_log_type_enabled(v30, v43))
      {

LABEL_18:
        v48 = sub_21EAA4308();
        v49 = sub_21EAA8DA0();

        v71[0] = 0;
        v50 = [v48 saveDesiredIconState:v49 error:v71];

        if (v50)
        {
          v51 = qword_28125B8A0;
          v52 = v71[0];
          if (v51 != -1)
          {
            swift_once();
          }

          v53 = sub_21EAA8790();
          __swift_project_value_buffer(v53, qword_28125B8A8);
          v54 = sub_21EAA8760();
          v55 = sub_21EAA9000();
          if (os_log_type_enabled(v54, v55))
          {
            v56 = swift_slowAlloc();
            *v56 = 0;
            _os_log_impl(&dword_21E9F5000, v54, v55, "Save desired icon state to plist succeeded", v56, 2u);
            MEMORY[0x223D68580](v56, -1, -1);
          }
        }

        else
        {
          v57 = v71[0];
          v58 = sub_21EAA83C0();

          swift_willThrow();
          if (qword_28125B8A0 != -1)
          {
            swift_once();
          }

          v59 = sub_21EAA8790();
          __swift_project_value_buffer(v59, qword_28125B8A8);
          v60 = v58;
          v54 = sub_21EAA8760();
          v61 = sub_21EAA8FE0();

          if (!os_log_type_enabled(v54, v61))
          {

            goto LABEL_29;
          }

          v62 = swift_slowAlloc();
          v63 = swift_slowAlloc();
          *v62 = 138412290;
          v64 = v58;
          v65 = _swift_stdlib_bridgeErrorToNSError();
          *(v62 + 4) = v65;
          *v63 = v65;
          _os_log_impl(&dword_21E9F5000, v54, v61, "Save desired icon state to plist failed because %@", v62, 0xCu);
          sub_21EA488A0(v63, &unk_27CEDCC30);
          MEMORY[0x223D68580](v63, -1, -1);
          MEMORY[0x223D68580](v62, -1, -1);
        }

LABEL_29:
        v66 = sub_21EAA4308();
        [a1 setStore_];

        v67 = a1;
        return a1;
      }

      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *v44 = 138412290;
      v46 = v40;
      v47 = _swift_stdlib_bridgeErrorToNSError();
      *(v44 + 4) = v47;
      *v45 = v47;
      _os_log_impl(&dword_21E9F5000, v30, v43, "Save current icon state to plist failed because %@", v44, 0xCu);
      sub_21EA488A0(v45, &unk_27CEDCC30);
      MEMORY[0x223D68580](v45, -1, -1);
      MEMORY[0x223D68580](v44, -1, -1);
    }

    goto LABEL_18;
  }

  v33 = v71[0];
  v34 = sub_21EAA83C0();

  swift_willThrow();
  if (qword_28125B8A0 != -1)
  {
    swift_once();
  }

  v35 = sub_21EAA8790();
  __swift_project_value_buffer(v35, qword_28125B8A8);
  v36 = sub_21EAA8760();
  v37 = sub_21EAA8FE0();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_21E9F5000, v36, v37, "Fail to archive migrated control center folder.", v38, 2u);
    MEMORY[0x223D68580](v38, -1, -1);
  }

  return 0;
}

id sub_21EAA3198(uint64_t a1)
{
  v2 = v1;
  v4 = sub_21EAA8530();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = 0x73746E656D656C65;
  v78 = 0xE800000000000000;
  sub_21EAA93E0();
  if (!*(a1 + 16))
  {
    goto LABEL_56;
  }

  v8 = sub_21EA4A05C(v79);
  if ((v9 & 1) == 0)
  {
    goto LABEL_56;
  }

  sub_21E9FE6EC(*(a1 + 56) + 32 * v8, v80);
  sub_21EA4A3FC(v79);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDDE40);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  if (!*(v77 + 16))
  {
    goto LABEL_78;
  }

  sub_21E9FE6EC(v77 + 32, v79);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEDDE48);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v10 = v80[0];
  v77 = 0x54746E656D656C65;
  v78 = 0xEB00000000657079;
  sub_21EAA93E0();
  if (!*(v10 + 16))
  {
    goto LABEL_55;
  }

  v11 = sub_21EA4A05C(v79);
  if ((v12 & 1) == 0)
  {
    goto LABEL_55;
  }

  sub_21E9FE6EC(*(v10 + 56) + 32 * v11, v80);
  sub_21EA4A3FC(v79);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_78;
  }

  v14 = v77;
  v13 = v78;
  if (v77 == 0x656C75646F6DLL && v78 == 0xE600000000000000 || (sub_21EAA9530() & 1) != 0)
  {

    v77 = 0xD000000000000010;
    v78 = 0x800000021EABA7A0;
    sub_21EAA93E0();
    if (!*(v10 + 16))
    {
      goto LABEL_55;
    }

    v15 = sub_21EA4A05C(v79);
    if ((v16 & 1) == 0)
    {
      goto LABEL_55;
    }

    sub_21E9FE6EC(*(v10 + 56) + 32 * v15, v80);
    sub_21EA4A3FC(v79);
    if (swift_dynamicCast())
    {
      v77 = 0xD000000000000019;
      v78 = 0x800000021EABA7E0;
      sub_21EAA93E0();
      if (!*(v10 + 16))
      {
        goto LABEL_54;
      }

      v17 = sub_21EA4A05C(v79);
      if ((v18 & 1) == 0)
      {
        goto LABEL_54;
      }

      sub_21E9FE6EC(*(v10 + 56) + 32 * v17, v80);
      sub_21EA4A3FC(v79);
      if (swift_dynamicCast())
      {
        v19 = v77;
        v76 = v78;
        v77 = 0xD00000000000001ALL;
        v78 = 0x800000021EABA800;
        sub_21EAA93E0();
        if (*(v10 + 16))
        {
          v20 = sub_21EA4A05C(v79);
          if (v21)
          {
            v74[2] = v19;
            sub_21E9FE6EC(*(v10 + 56) + 32 * v20, v80);
            sub_21EA4A3FC(v79);

            if (swift_dynamicCast())
            {
              v74[1] = v77;
              v22 = *(v2 + OBJC_IVAR____TtC15ControlCenterUI23ControlsIconModelLoader_moduleSettingsManager);
              v23 = sub_21EAA8DC0();
              v24 = [v22 moduleSettingsForModuleIdentifier_];

              v75 = v24;
              v25 = [v24 parityControlExtensionIdentifier];
              if (v25)
              {
                v26 = v25;
                v27 = [v75 parityControlContainerBundleIdentifier];
                if (v27)
                {
                  v28 = v27;
                  v74[0] = [v75 parityControlKind];
                  if (v74[0])
                  {
                    v29 = [v75 parityControlType];
                    if (v29)
                    {
                      v30 = v29;

                      v31 = sub_21EAA8E00();
                      v33 = v32;

                      sub_21EAA8520();
                      sub_21EAA84E0();
                      (*(v5 + 8))(v7, v4);
                      v34 = sub_21EAA4F60(v31, v33);

                      v35 = objc_allocWithZone(MEMORY[0x277CFC9D8]);
                      v36 = sub_21EAA8DC0();

                      v37 = v35;
                      v38 = v74[0];
                      v39 = [v37 initWithUniqueIdentifier:v36 kind:v74[0] controlType:v34 extensionBundleIdentifier:v26 containerBundleIdentifier:v28];

                      result = v39;
                      *(v2 + OBJC_IVAR____TtC15ControlCenterUI23ControlsIconModelLoader_iconStateDirty) = 1;
                      return result;
                    }
                  }
                }

                else
                {
                  v28 = v26;
                }
              }

              CCUIDefaultSupportedGridSizeClassesForChronoControls();
              v62 = SBHIconGridSizeClassSetForCCUIGridSizeClassMask();
              v63 = *(v2 + OBJC_IVAR____TtC15ControlCenterUI23ControlsIconModelLoader_moduleInstanceManager);
              v64 = sub_21EAA8DC0();
              v65 = sub_21EAA8DC0();
              v66 = [v63 obtainModuleWithBundleIdentifier:v64 uniqueIdentifier:v65];

              if (v66)
              {
                v67 = [v66 module];
                if ([v67 respondsToSelector_])
                {
                  [v67 supportedGridSizeClasses];
                  v68 = SBHIconGridSizeClassSetForCCUIGridSizeClassMask();

                  v62 = v68;
                }

                if ([v67 respondsToSelector_])
                {
                  v69 = [v67 expandsGridSizeClassesForAccessibility];
                }

                else
                {
                  v69 = 0;
                }

                swift_unknownObjectRelease();
              }

              else
              {
                v69 = 0;
              }

              v70 = objc_allocWithZone(MEMORY[0x277CFC9E0]);
              v71 = sub_21EAA8DC0();

              v72 = sub_21EAA8DC0();

              v73 = sub_21EAA8DC0();

              v61 = [v70 initWithUniqueIdentifier:v71 moduleIdentifier:v72 containerBundleIdentifier:v73 standardSupportedGridSizeClasses:v62 expandsGridSizeClassesForAccessibility:v69];

              return v61;
            }

            goto LABEL_77;
          }
        }

        goto LABEL_53;
      }

LABEL_77:

      goto LABEL_78;
    }

    goto LABEL_78;
  }

  if (v14 == 0x6C6F72746E6F63 && v13 == 0xE700000000000000)
  {
  }

  else
  {
    v41 = sub_21EAA9530();

    if ((v41 & 1) == 0)
    {
      goto LABEL_78;
    }
  }

  v77 = 0xD00000000000001ALL;
  v78 = 0x800000021EABA800;
  sub_21EAA93E0();
  if (!*(v10 + 16))
  {
    goto LABEL_55;
  }

  v42 = sub_21EA4A05C(v79);
  if ((v43 & 1) == 0)
  {
    goto LABEL_55;
  }

  sub_21E9FE6EC(*(v10 + 56) + 32 * v42, v80);
  sub_21EA4A3FC(v79);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_78:

    return 0;
  }

  v77 = 0xD000000000000019;
  v78 = 0x800000021EABA7C0;
  sub_21EAA93E0();
  if (!*(v10 + 16))
  {
    goto LABEL_54;
  }

  v44 = sub_21EA4A05C(v79);
  if ((v45 & 1) == 0)
  {
    goto LABEL_54;
  }

  sub_21E9FE6EC(*(v10 + 56) + 32 * v44, v80);
  sub_21EA4A3FC(v79);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_77;
  }

  v47 = v77;
  v46 = v78;
  v77 = 0xD000000000000019;
  v78 = 0x800000021EABA7E0;
  sub_21EAA93E0();
  if (!*(v10 + 16) || (v48 = sub_21EA4A05C(v79), (v49 & 1) == 0))
  {
LABEL_53:

LABEL_54:

LABEL_55:

LABEL_56:
    sub_21EA4A3FC(v79);
    return 0;
  }

  sub_21E9FE6EC(*(v10 + 56) + 32 * v48, v80);
  sub_21EA4A3FC(v79);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_76:

    goto LABEL_77;
  }

  v76 = v77;
  v77 = 0x546C6F72746E6F63;
  v78 = 0xEB00000000657079;
  sub_21EAA93E0();
  if (!*(v10 + 16) || (v50 = sub_21EA4A05C(v79), (v51 & 1) == 0))
  {

    goto LABEL_54;
  }

  sub_21E9FE6EC(*(v10 + 56) + 32 * v50, v80);
  sub_21EA4A3FC(v79);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_76;
  }

  v52 = v78;
  v75 = v77;
  v77 = 0x4B6C6F72746E6F63;
  v78 = 0xEB00000000646E69;
  sub_21EAA93E0();
  if (!*(v10 + 16) || (v53 = sub_21EA4A05C(v79), (v54 & 1) == 0))
  {

    goto LABEL_54;
  }

  sub_21E9FE6EC(*(v10 + 56) + 32 * v53, v80);
  sub_21EA4A3FC(v79);

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_78;
  }

  if (v47 == 0xD000000000000022 && 0x800000021EABFD20 == v46 || (sub_21EAA9530() & 1) != 0)
  {

    *(v2 + OBJC_IVAR____TtC15ControlCenterUI23ControlsIconModelLoader_iconStateDirty) = 1;
  }

  v55 = sub_21EAA4F60(v75, v52);

  v56 = objc_allocWithZone(MEMORY[0x277CFC9D8]);
  v57 = sub_21EAA8DC0();

  v58 = sub_21EAA8DC0();

  v59 = sub_21EAA8DC0();

  v60 = sub_21EAA8DC0();

  v61 = [v56 initWithUniqueIdentifier:v57 kind:v58 controlType:v55 extensionBundleIdentifier:v59 containerBundleIdentifier:v60];

  return v61;
}

id sub_21EAA3E80()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ControlsIconModelLoader();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_21EAA4220()
{
  v0 = [objc_opt_self() controlCenterDomain];

  return v0;
}

id sub_21EAA4264(void *a1)
{
  swift_unknownObjectRetain();
  v2 = a1;
  v3 = sub_21EAA5A9C();
  swift_unknownObjectRelease();

  if (v3)
  {
    v4 = sub_21EAA8DA0();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id sub_21EAA4308()
{
  v0 = sub_21EAA83F0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_21EAA8440();
  v4 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v27 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v24 - v7;
  MEMORY[0x28223BE20](v9);
  v28 = v24 - v10;
  v11 = objc_opt_self();
  v12 = [v11 _configurationDirectoryURL];
  sub_21EAA8410();

  v30 = 0xD000000000000017;
  v31 = 0x800000021EABFDC0;
  v26 = *MEMORY[0x277CC91D8];
  v25 = *(v1 + 104);
  v25(v3);
  v24[2] = sub_21EA4800C();
  sub_21EAA8430();
  v13 = *(v1 + 8);
  v24[1] = v1 + 8;
  v13(v3, v0);
  v14 = *(v4 + 8);
  v15 = v29;
  v14(v8, v29);
  v16 = [v11 _configurationDirectoryURL];
  v17 = v27;
  sub_21EAA8410();

  v30 = 0xD00000000000001ELL;
  v31 = 0x800000021EABFDE0;
  (v25)(v3, v26, v0);
  sub_21EAA8430();
  v13(v3, v0);
  v14(v17, v15);
  v18 = objc_allocWithZone(MEMORY[0x277D663E0]);
  v19 = v28;
  v20 = sub_21EAA8400();
  v21 = sub_21EAA8400();
  v22 = [v18 initWithIconStateURL:v20 desiredIconStateURL:v21];

  v14(v8, v15);
  v14(v19, v15);
  return v22;
}

uint64_t sub_21EAA46A0()
{
  v27[4] = *MEMORY[0x277D85DE8];
  v1 = sub_21EAA83F0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v27[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21EAA8440();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v27[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v27[-1] - v10;
  v12 = [objc_opt_self() _configurationDirectoryURL];
  sub_21EAA8410();

  v27[0] = 0xD00000000000001FLL;
  v27[1] = 0x800000021EABFE50;
  (*(v2 + 104))(v4, *MEMORY[0x277CC91D8], v1);
  sub_21EA4800C();
  sub_21EAA8430();
  (*(v2 + 8))(v4, v1);
  v13 = *(v6 + 8);
  v13(v8, v5);
  v14 = sub_21EAA8450();
  if (v0)
  {
    return (v13)(v11, v5);
  }

  v17 = v14;
  v18 = v15;
  v13(v11, v5);
  v19 = v18 >> 62;
  if ((v18 >> 62) > 1)
  {
    if (v19 != 2 || *(v17 + 16) == *(v17 + 24))
    {
      goto LABEL_14;
    }
  }

  else if (v19)
  {
    if (v17 == v17 >> 32)
    {
LABEL_14:
      sub_21EA68A04(v17, v18);
      return 0;
    }
  }

  else if ((v18 & 0xFF000000000000) == 0)
  {
    goto LABEL_14;
  }

  v20 = objc_opt_self();
  v21 = sub_21EAA8470();
  v27[0] = 0;
  v22 = [v20 propertyListWithData:v21 options:2 format:0 error:v27];

  if (v22)
  {
    v23 = v27[0];
    sub_21EAA9320();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDDE60);
    if (swift_dynamicCast())
    {
      v24 = sub_21EA9FA70(v26);

      sub_21EA68A04(v17, v18);
      return v24;
    }

    goto LABEL_14;
  }

  v25 = v27[0];
  sub_21EAA83C0();

  swift_willThrow();
  return sub_21EA68A04(v17, v18);
}

uint64_t sub_21EAA4A94(void *a1)
{
  v27[2] = *MEMORY[0x277D85DE8];
  v2 = sub_21EAA83F0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_21EAA8440();
  v6 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - v10;
  v12 = objc_opt_self();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v13 = sub_21EAA9510();
  v27[0] = 0;
  v14 = [v12 dataWithPropertyList:v13 format:100 options:0 error:v27];
  swift_unknownObjectRelease();
  v15 = v27[0];
  if (v14)
  {
    v16 = sub_21EAA8480();
    v18 = v17;

    v19 = [objc_opt_self() _configurationDirectoryURL];
    sub_21EAA8410();

    v27[0] = 0xD00000000000001FLL;
    v27[1] = 0x800000021EABFE50;
    (*(v3 + 104))(v5, *MEMORY[0x277CC91D8], v2);
    sub_21EA4800C();
    sub_21EAA8430();
    (*(v3 + 8))(v5, v2);
    v20 = *(v6 + 8);
    v21 = v8;
    v22 = v26;
    v20(v21, v26);
    sub_21EAA8490();
    v20(v11, v22);
    return sub_21EA68A04(v16, v18);
  }

  else
  {
    v24 = v15;
    sub_21EAA83C0();

    return swift_willThrow();
  }
}

unint64_t sub_21EAA4DC4()
{
  v0 = [type metadata accessor for IconListRootFolderController() iconLocation];
  v1 = [objc_allocWithZone(type metadata accessor for IconListLayoutProvider()) init];
  result = [v1 layoutForIconLocation_];
  if (!result)
  {
    goto LABEL_13;
  }

  v3 = result;
  result = [result numberOfColumnsForOrientation_];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = result;
  if (result >> 16)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = [v3 numberOfRowsForOrientation_];
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v5 = result;
  if (result >> 16)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  result = [v3 respondsToSelector_];
  if ((result & 1) == 0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  [v3 iconGridSizeClassSizes];
  [v3 iconGridSizeClassSizesForOrientation_];
  result = [v3 respondsToSelector_];
  if (result)
  {
    v6 = [v3 supportedIconGridSizeClasses];

    swift_unknownObjectRelease();
    return v4 | (v5 << 16);
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_21EAA4F60(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x6E776F6E6B6E55 && a2 == 0xE700000000000000;
  if (v3 || (sub_21EAA9530() & 1) != 0)
  {
    return 0;
  }

  if (a1 == 0x656C67676F54 && a2 == 0xE600000000000000 || (sub_21EAA9530() & 1) != 0)
  {
    return 1;
  }

  if (a1 == 0x6E6F74747542 && a2 == 0xE600000000000000 || (sub_21EAA9530() & 1) != 0)
  {
    return 2;
  }

  if (a1 == 0x72656B636950 && a2 == 0xE600000000000000)
  {
    return 3;
  }

  if (sub_21EAA9530())
  {
    return 3;
  }

  return 0;
}

void sub_21EAA508C()
{
  v16[1] = *MEMORY[0x277D85DE8];
  v0 = [objc_opt_self() defaultManager];
  v1 = sub_21EAA8420();
  v3 = v2;
  v4 = sub_21EAA8DC0();
  v5 = [v0 fileExistsAtPath_];

  if (v5)
  {
    v6 = sub_21EAA8DC0();

    v16[0] = 0;
    v7 = [v0 removeItemAtPath:v6 error:v16];

    if (v7)
    {
      v8 = v16[0];
    }

    else
    {
      v15 = v16[0];
      sub_21EAA83C0();

      swift_willThrow();
    }
  }

  else
  {
    if (qword_28125B8A0 != -1)
    {
      swift_once();
    }

    v9 = sub_21EAA8790();
    __swift_project_value_buffer(v9, qword_28125B8A8);

    v10 = sub_21EAA8760();
    v11 = sub_21EAA9000();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v16[0] = v13;
      *v12 = 136315138;
      v14 = sub_21E9FE748(v1, v3, v16);

      *(v12 + 4) = v14;
      _os_log_impl(&dword_21E9F5000, v10, v11, "No file found at url: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x223D68580](v13, -1, -1);
      MEMORY[0x223D68580](v12, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_21EAA52F4(uint64_t a1, unint64_t a2)
{
  result = sub_21EAA46A0();
  if (result)
  {
    v13 = result;
    sub_21EA62F24(a1, a2, &v11);
    if (v12)
    {
      sub_21EA488A0(&v11, &qword_27CEDCF40);
      if (qword_28125B8A0 != -1)
      {
        swift_once();
      }

      v5 = sub_21EAA8790();
      __swift_project_value_buffer(v5, qword_28125B8A8);

      v6 = sub_21EAA8760();
      v7 = sub_21EAA9000();

      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        *&v11 = v9;
        *v8 = 136315138;
        *(v8 + 4) = sub_21E9FE748(a1, a2, &v11);
        _os_log_impl(&dword_21E9F5000, v6, v7, "%s migration setting is removed.", v8, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v9);
        MEMORY[0x223D68580](v9, -1, -1);
        MEMORY[0x223D68580](v8, -1, -1);
      }

      v10 = v13;
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDDE58);
      *&v11 = v10;
      sub_21EAA4A94(&v11);
      return __swift_destroy_boxed_opaque_existential_1(&v11);
    }

    else
    {

      return sub_21EA488A0(&v11, &qword_27CEDCF40);
    }
  }

  return result;
}

uint64_t sub_21EAA56A0()
{
  v0 = sub_21EAA83F0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21EAA8440();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - v9;
  v11 = [objc_opt_self() _configurationDirectoryURL];
  sub_21EAA8410();

  v14[2] = 0xD000000000000017;
  v14[3] = 0x800000021EABFEF0;
  (*(v1 + 104))(v3, *MEMORY[0x277CC91D8], v0);
  sub_21EA4800C();
  sub_21EAA8430();
  (*(v1 + 8))(v3, v0);
  v12 = *(v5 + 8);
  v12(v7, v4);
  sub_21EAA508C();
  v12(v10, v4);
  sub_21EAA52F4(0xD000000000000020, 0x800000021EABA8E0);
  return sub_21EAA52F4(0xD000000000000021, 0x800000021EABA880);
}

uint64_t sub_21EAA5A50()
{
  v0 = sub_21EAA9500();

  if (v0 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_21EAA5A9C()
{
  v0 = sub_21EA515F8(MEMORY[0x277D84F90]);
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;
    v3 = MEMORY[0x277D837D0];
    v64 = MEMORY[0x277D837D0];
    *&v63 = 0x656C75646F6DLL;
    *(&v63 + 1) = 0xE600000000000000;
    sub_21EA51D48(&v63, v62);
    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v65 = v0;
    sub_21EA66070(v62, 0x54746E656D656C65, 0xEB00000000657079, isUniquelyReferenced_nonNull_native);
    v5 = v65;
    v6 = [v2 uniqueIdentifier];
    v7 = sub_21EAA8E00();
    v9 = v8;

    v64 = v3;
    *&v63 = v7;
    *(&v63 + 1) = v9;
    sub_21EA51D48(&v63, v62);
    v10 = swift_isUniquelyReferenced_nonNull_native();
    v65 = v5;
    sub_21EA66070(v62, 0xD00000000000001ALL, 0x800000021EABA800, v10);
    v11 = v65;
    v12 = [v2 moduleIdentifier];
    v13 = sub_21EAA8E00();
    v15 = v14;

    v64 = v3;
    *&v63 = v13;
    *(&v63 + 1) = v15;
    sub_21EA51D48(&v63, v62);
    v16 = swift_isUniquelyReferenced_nonNull_native();
    v65 = v11;
    sub_21EA66070(v62, 0xD000000000000010, 0x800000021EABA7A0, v16);
    v17 = v65;
    v18 = [v2 containerBundleIdentifier];
    v19 = sub_21EAA8E00();
    v21 = v20;

    v64 = v3;
    *&v63 = v19;
    *(&v63 + 1) = v21;
    sub_21EA51D48(&v63, v62);
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v65 = v17;
    sub_21EA66070(v62, 0xD000000000000019, 0x800000021EABA7E0, v22);
    swift_unknownObjectRelease();
    v0 = v65;
  }

  else
  {
    objc_opt_self();
    v23 = swift_dynamicCastObjCClass();
    if (v23)
    {
      v24 = v23;
      v25 = MEMORY[0x277D837D0];
      v64 = MEMORY[0x277D837D0];
      *&v63 = 0x6C6F72746E6F63;
      *(&v63 + 1) = 0xE700000000000000;
      sub_21EA51D48(&v63, v62);
      swift_unknownObjectRetain();
      v26 = swift_isUniquelyReferenced_nonNull_native();
      v65 = v0;
      sub_21EA66070(v62, 0x54746E656D656C65, 0xEB00000000657079, v26);
      v27 = v65;
      v28 = [v24 uniqueIdentifier];
      v29 = sub_21EAA8E00();
      v31 = v30;

      v64 = v25;
      *&v63 = v29;
      *(&v63 + 1) = v31;
      sub_21EA51D48(&v63, v62);
      v32 = swift_isUniquelyReferenced_nonNull_native();
      v65 = v27;
      sub_21EA66070(v62, 0xD00000000000001ALL, 0x800000021EABA800, v32);
      v33 = v65;
      v34 = [v24 extensionBundleIdentifier];
      v35 = sub_21EAA8E00();
      v37 = v36;

      v64 = v25;
      *&v63 = v35;
      *(&v63 + 1) = v37;
      sub_21EA51D48(&v63, v62);
      v38 = swift_isUniquelyReferenced_nonNull_native();
      v61 = v33;
      sub_21EA66070(v62, 0xD000000000000019, 0x800000021EABA7C0, v38);
      v65 = v33;
      v39 = [v24 containerBundleIdentifier];
      if (v39)
      {
        v40 = v39;
        v41 = sub_21EAA8E00();
        v43 = v42;

        v64 = v25;
        *&v63 = v41;
        *(&v63 + 1) = v43;
        sub_21EA51D48(&v63, v62);
        v44 = swift_isUniquelyReferenced_nonNull_native();
        v61 = v33;
        sub_21EA66070(v62, 0xD000000000000019, 0x800000021EABA7E0, v44);
        v65 = v33;
      }

      else
      {
        sub_21EA62F24(0xD000000000000019, 0x800000021EABA7E0, &v63);
        sub_21EA488A0(&v63, &qword_27CEDCF40);
      }

      v49 = [v24 controlType];
      if (v49 == 3)
      {
        v50 = 0xE600000000000000;
        v51 = 0x72656B636950;
      }

      else if (v49 == 2)
      {
        v50 = 0xE600000000000000;
        v51 = 0x6E6F74747542;
      }

      else if (v49 == 1)
      {
        v50 = 0xE600000000000000;
        v51 = 0x656C67676F54;
      }

      else
      {
        v50 = 0xE700000000000000;
        v51 = 0x6E776F6E6B6E55;
      }

      v64 = v25;
      *&v63 = v51;
      *(&v63 + 1) = v50;
      sub_21EA51D48(&v63, v62);
      v52 = v65;
      v53 = swift_isUniquelyReferenced_nonNull_native();
      sub_21EA66070(v62, 0x546C6F72746E6F63, 0xEB00000000657079, v53);
      v54 = [v24 kind];
      v55 = sub_21EAA8E00();
      v57 = v56;

      v64 = v25;
      *&v63 = v55;
      *(&v63 + 1) = v57;
      sub_21EA51D48(&v63, v62);
      v58 = swift_isUniquelyReferenced_nonNull_native();
      sub_21EA66070(v62, 0x4B6C6F72746E6F63, 0xEB00000000646E69, v58);
      swift_unknownObjectRelease();
      v0 = v52;
    }

    else
    {
      if (qword_28125B8A0 != -1)
      {
        swift_once();
      }

      v45 = sub_21EAA8790();
      __swift_project_value_buffer(v45, qword_28125B8A8);
      v46 = sub_21EAA8760();
      v47 = sub_21EAA9000();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&dword_21E9F5000, v46, v47, "Unable to archive icon data source.", v48, 2u);
        MEMORY[0x223D68580](v48, -1, -1);
      }
    }
  }

  v59 = sub_21EA9FCC8(v0);

  return v59;
}

unint64_t sub_21EAA6198()
{
  result = qword_28125BA30;
  if (!qword_28125BA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28125BA30);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ControlsIconModelLoader.ArchivingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ControlsIconModelLoader.ArchivingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_21EAA6340()
{
  result = qword_28125BA20;
  if (!qword_28125BA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28125BA20);
  }

  return result;
}

id sub_21EAA644C(void *a1)
{
  v3 = OBJC_IVAR____TtC15ControlCenterUI17ControlDragWindow_platterViews;
  *&v1[v3] = [objc_opt_self() weakObjectsHashTable];
  v9.receiver = v1;
  v9.super_class = type metadata accessor for ControlDragWindow();
  v4 = objc_msgSendSuper2(&v9, sel_initWithWindowScene_, a1);
  type metadata accessor for ControlDragWindow.ControlDragViewController();
  v5 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v6 = v4;
  v7 = [v5 init];
  [v6 setRootViewController_];

  [v6 setWindowLevel_];
  [v6 setUserInteractionEnabled_];

  return v6;
}

id sub_21EAA6898(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void __getGKDaemonProxyClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getGKDaemonProxyClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"CCUIGameOverlayMediator.m" lineNumber:17 description:{@"Unable to find class %s", "GKDaemonProxy"}];

  __break(1u);
}

void GameCenterFoundationLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *GameCenterFoundationLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"CCUIGameOverlayMediator.m" lineNumber:15 description:{@"%s", *a1}];

  __break(1u);
}

void __getGKLocalPlayerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getGKLocalPlayerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"CCUIGameOverlayMediator.m" lineNumber:16 description:{@"Unable to find class %s", "GKLocalPlayer"}];

  __break(1u);
}

void CCUIIconImageForApplicationIdentifier_cold_3(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_21E9F5000, a2, OS_LOG_TYPE_ERROR, "Failed to obtain ISImage for application ID '%{public}@'", &v2, 0xCu);
}

void CCUIIconImageForUntreatedImage_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&dword_21E9F5000, a2, OS_LOG_TYPE_ERROR, "Failed to obtain ISImage for raw input image %p", &v2, 0xCu);
}

void __getWFNetworkListControllerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getWFNetworkListControllerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"CCUIWiFiModuleViewController.m" lineNumber:41 description:{@"Unable to find class %s", "WFNetworkListController"}];

  __break(1u);
}

void __getWFNetworkListControllerClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *WiFiKitLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"CCUIWiFiModuleViewController.m" lineNumber:40 description:{@"%s", *a1}];

  __break(1u);
}

void __getWFScanRecordAlphaSortCompartorSymbolLoc_block_invoke_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *WiFiKitUILibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"CCUIWiFiModuleViewController.m" lineNumber:43 description:{@"%s", *a1}];

  __break(1u);
}

void __getWFControlCenterStateMonitorClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getWFControlCenterStateMonitorClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"CCUIConnectivityManager.m" lineNumber:22 description:{@"Unable to find class %s", "WFControlCenterStateMonitor"}];

  __break(1u);
}

void WiFiKitLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *WiFiKitLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"CCUIConnectivityManager.m" lineNumber:21 description:{@"%s", *a1}];

  __break(1u);
}

void __getWFPersonalHotspotStateMonitorClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getWFPersonalHotspotStateMonitorClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"CCUIConnectivityManager.m" lineNumber:23 description:{@"Unable to find class %s", "WFPersonalHotspotStateMonitor"}];

  __break(1u);
}

CAFrameRateRange CAFrameRateRangeMake(float minimum, float maximum, float preferred)
{
  MEMORY[0x282128850](minimum, maximum, preferred);
  result.preferred = v5;
  result.maximum = v4;
  result.minimum = v3;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x2821115C8](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x2821115D8](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectOffset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x282111608](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x282111618](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}