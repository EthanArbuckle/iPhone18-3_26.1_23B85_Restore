id sub_257DF4F88(void *a1)
{
  v2 = v1;
  result = [a1 tag];
  if (result <= 3)
  {
    v5 = result;
    v6 = v2 + OBJC_IVAR____TtC16MagnifierSupport45ActivityPointSpeakCustomizationViewController_activity;
    memcpy(__dst, (v2 + OBJC_IVAR____TtC16MagnifierSupport45ActivityPointSpeakCustomizationViewController_activity), 0x128uLL);
    result = sub_257C108C4(__dst);
    if (result != 1)
    {
      v7 = v5;
      v8 = *(v6 + 192);

      if ([a1 isOn])
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9A40);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_257ED6D30;
        *(inited + 32) = v7;
        sub_257EB110C(inited);
        sub_257DF514C(v8);
      }

      else
      {
        v10 = *(v8 + 16);
        if (v10)
        {
          v11 = (v8 + 32);
          v12 = MEMORY[0x277D84F90];
          do
          {
            v16 = *v11++;
            v15 = v16;
            if (v16 != v7)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_257BF29A4(0, *(v12 + 16) + 1, 1);
              }

              v14 = *(v12 + 16);
              v13 = *(v12 + 24);
              if (v14 >= v13 >> 1)
              {
                sub_257BF29A4((v13 > 1), v14 + 1, 1);
              }

              *(v12 + 16) = v14 + 1;
              *(v12 + v14 + 32) = v15;
            }

            --v10;
          }

          while (v10);
        }

        else
        {
          v12 = MEMORY[0x277D84F90];
        }

        sub_257DF514C(v12);
      }
    }
  }

  return result;
}

uint64_t sub_257DF514C(uint64_t a1)
{
  sub_257DF2EE4();
  v7 = a1;

  sub_257D6D3A8(&v7);
  v3 = v7;
  v4 = v1 + OBJC_IVAR____TtC16MagnifierSupport45ActivityPointSpeakCustomizationViewController_activity;
  memcpy(__dst, (v1 + OBJC_IVAR____TtC16MagnifierSupport45ActivityPointSpeakCustomizationViewController_activity), 0x128uLL);
  if (sub_257C108C4(__dst) == 1 || (sub_257D7430C(*(v4 + 192), v3) & 1) != 0 || !swift_unknownObjectWeakLoadStrong())
  {
  }

  sub_257CE3CB8(v3);

  return swift_unknownObjectRelease();
}

void sub_257DF52C4(void *a1, uint64_t a2, void *a3, void (*a4)(id))
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = a3;
    v8 = a1;
    a4([v7 isOn]);
    swift_unknownObjectRelease();
  }
}

id sub_257DF53A0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(unint64_t, void))
{
  sub_257DF5CA4(a4, a5);
  if (v5)
  {
    v6 = sub_257ECF4C0();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_257DF54D4(void *a1)
{
  v2 = v1;
  v4 = sub_257ECCDF0();
  v25 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_257ECCEB0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257DF2EE4();
  v11 = sub_257ECCE30();
  v26 = [a1 cellForRowAtIndexPath_];

  if (!v26)
  {
    return;
  }

  v12 = sub_257ECCE30();
  [a1 deselectRowAtIndexPath:v12 animated:1];

  v13 = sub_257ECCEA0();
  if (v13 <= 1)
  {
    goto LABEL_7;
  }

  if (v13 != 2)
  {
    if (v13 == 4 && sub_257ECCE60())
    {
      [v2 presentViewController:*&v2[OBJC_IVAR____TtC16MagnifierSupport45ActivityPointSpeakCustomizationViewController_colorPickerController] animated:1 completion:0];
    }

LABEL_7:
    v14 = v26;

    return;
  }

  v15 = sub_257ECCE60();
  if (!v15)
  {
    v16 = 0;
LABEL_14:
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_257CE37D0(v16);
      swift_unknownObjectRelease();
    }

    goto LABEL_16;
  }

  if (v15 == 1)
  {
    v16 = 1;
    goto LABEL_14;
  }

LABEL_16:
  v17 = (v8 + 8);
  MEMORY[0x259C6F970](byte_2869060E0, 2);
  v18 = sub_257ECCE30();
  v19 = [a1 cellForRowAtIndexPath_];

  if (v19)
  {
    [v19 setAccessoryType_];
  }

  v20 = *v17;
  (*v17)(v10, v7);
  MEMORY[0x259C6F970](byte_2869060E1, 2);
  v21 = sub_257ECCE30();
  v22 = [a1 cellForRowAtIndexPath_];

  if (v22)
  {
    [v22 setAccessoryType_];
  }

  v20(v10, v7);
  [v26 setAccessoryType_];
  [a1 beginUpdates];
  v27 = &unk_2869060E8;
  sub_257BFB0F4(&qword_27F8F58A0, MEMORY[0x277CC9A28]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D80);
  sub_257C10934();
  sub_257ED0180();
  v23 = sub_257ECCDE0();
  (*(v25 + 8))(v6, v4);
  [a1 reloadSections:v23 withRowAnimation:100];

  [a1 endUpdates];
}

void sub_257DF5A3C(void *a1)
{
  v2 = v1;
  v3 = [a1 selectedColor];
  v4 = [v3 CGColor];

  v5 = sub_257ECFB30();
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = &unk_286906110;
  }

  if (!swift_unknownObjectWeakLoadStrong())
  {

    goto LABEL_10;
  }

  v7 = *(v6 + 2);
  if (!v7)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v7 == 1)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v7 < 3)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v8 = v6[4];
  v9 = v6[5];
  v10 = v6[6];

  sub_257CE3A34(v8, v9, v10);
  swift_unknownObjectRelease();
LABEL_10:
  sub_257DF2EE4();
  v11 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport45ActivityPointSpeakCustomizationViewController_tableView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5570);
  sub_257ECCEB0();
  *(swift_allocObject() + 16) = xmmword_257ED6D30;
  MEMORY[0x259C6F990](1, 4);
  v12 = sub_257ECF7F0();

  [v11 reloadRowsAtIndexPaths:v12 withRowAnimation:5];
}

uint64_t sub_257DF5CA4(unint64_t a1, uint64_t (*a2)(unint64_t, void))
{
  if (a1 > 4)
  {
    return 0;
  }

  else
  {
    return a2(a1, a2);
  }
}

uint64_t sub_257DF5CD8(uint64_t a1, unint64_t a2)
{
  v5 = sub_257ECDA30();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [v2 modalTransitionStyle];
  if (v9 > 1)
  {
    if (v9 != 2)
    {
      if (v9 == 3)
      {
        v10 = 0xEB000000006C7275;
        v11 = 0x436C616974726170;
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    v10 = 0xED000065766C6F73;
    v11 = 0x73694473736F7263;
  }

  else
  {
    if (v9)
    {
      if (v9 == 1)
      {
        v10 = 0xEE006C61746E6F7ALL;
        v11 = 0x69726F4870696C66;
        goto LABEL_11;
      }

LABEL_8:
      v32 = 0x65756C6156776172;
      v33 = 0xE90000000000003DLL;
      v31 = [v2 modalTransitionStyle];
      v12 = sub_257ED0600();
      MEMORY[0x259C72150](v12);

      v11 = v32;
      v10 = v33;
      goto LABEL_11;
    }

    v10 = 0xED00006C61636974;
    v11 = 0x7265567265766F63;
  }

LABEL_11:
  v29 = v11;
  v13 = [v2 modalPresentationStyle];
  v30 = a1;
  if (v13 > 3)
  {
    if (v13 != 4)
    {
      if (v13 == 7)
      {
        v14 = 0xE700000000000000;
        v15 = 0x7265766F706F70;
        goto LABEL_21;
      }

      goto LABEL_18;
    }

    v14 = 0xE600000000000000;
    v15 = 0x6D6F74737563;
  }

  else
  {
    if (v13)
    {
      if (v13 == 1)
      {
        v14 = 0xE900000000000074;
        v15 = 0x6565685365676170;
        goto LABEL_21;
      }

LABEL_18:
      v32 = 0x65756C6156776172;
      v33 = 0xE90000000000003DLL;
      v31 = [v2 modalPresentationStyle];
      v16 = sub_257ED0600();
      MEMORY[0x259C72150](v16);

      v15 = v32;
      v14 = v33;
      goto LABEL_21;
    }

    v14 = 0xEA00000000006E65;
    v15 = 0x657263536C6C7566;
  }

LABEL_21:
  sub_257ECD3D0();
  v17 = v2;

  v18 = sub_257ECDA20();
  v19 = sub_257ECFBD0();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v28 = v5;
    v21 = v20;
    v27 = swift_slowAlloc();
    v32 = v27;
    *v21 = 136316674;
    *(v21 + 4) = sub_257BF1FC8(v30, a2, &v32);
    v30 = v8;
    *(v21 + 12) = 2080;
    v22 = sub_257BF1FC8(v29, v10, &v32);

    *(v21 + 14) = v22;
    *(v21 + 22) = 2080;
    v23 = sub_257BF1FC8(v15, v14, &v32);

    *(v21 + 24) = v23;
    *(v21 + 32) = 1024;
    *(v21 + 34) = [v17 isBeingPresented];

    *(v21 + 38) = 1024;
    *(v21 + 40) = [v17 isBeingDismissed];

    *(v21 + 44) = 1024;
    *(v21 + 46) = [v17 isMovingToParentViewController];

    *(v21 + 50) = 1024;
    *(v21 + 52) = [v17 isMovingFromParentViewController];

    _os_log_impl(&dword_257BAC000, v18, v19, "    * * * %s\n    transition:     %s\n    presentation:   %s\n    beingPresented: %{BOOL}d\tbeingDismissed:   %{BOOL}d\n    movingToParent: %{BOOL}d\tmovingFromParent: %{BOOL}d", v21, 0x38u);
    v24 = v27;
    swift_arrayDestroy();
    MEMORY[0x259C74820](v24, -1, -1);
    MEMORY[0x259C74820](v21, -1, -1);

    return (*(v6 + 8))(v30, v28);
  }

  else
  {

    return (*(v6 + 8))(v8, v5);
  }
}

void sub_257DF61F8()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 window];

    if (v3)
    {
      v4 = [v3 rootViewController];

      if (v4)
      {
        v10 = v4;
        v5 = [v10 presentedViewController];
        v6 = v10;
        if (v5)
        {
          v7 = v5;
          type metadata accessor for MFNavigationController();
          v8 = v7;
          v9 = v10;
          while (1)
          {
            v6 = v8;
            if (swift_dynamicCastClass())
            {
              break;
            }

            v8 = [v6 presentedViewController];
            v9 = v6;
            if (!v8)
            {
              goto LABEL_11;
            }
          }

          [v9 dismissViewControllerAnimated:1 completion:0];
        }

LABEL_11:
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_257DF6348()
{
  v1 = sub_257ECF120();
  v49 = *(v1 - 8);
  v50 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F6A10);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v45 - v8;
  v10 = *&v0[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_activitiesNameController];
  *&v10[OBJC_IVAR____TtC16MagnifierSupport32ActivityNameOnBoardingController_createActivityDelegate + 8] = &off_286911DF8;
  swift_unknownObjectWeakAssign();
  v46 = v10;
  *&v10[OBJC_IVAR____TtC16MagnifierSupport32ActivityNameOnBoardingController_delegate + 8] = &off_286911E18;
  swift_unknownObjectWeakAssign();
  v11 = swift_allocObject();
  *(v11 + 16) = v0;
  v57 = 0xD000000000000017;
  v58 = 0x8000000257EFA680;
  v12 = v0;
  sub_257ECEE50();
  v48 = v51;
  v13 = v52;
  v57 = 0;
  v58 = 0xE000000000000000;
  sub_257ECEE50();
  v47 = v51;
  v14 = v52;
  v15 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5FF0));
  *&v51 = sub_257C7E2D8;
  *(&v51 + 1) = v11;
  v52 = v48;
  v53 = v13;
  v54 = v47;
  v55 = v14;
  v56 = 40;
  v16 = sub_257ECE620();
  v17 = [objc_allocWithZone(type metadata accessor for MFNavigationController()) initWithRootViewController_];

  v18 = v17;
  [v18 setModalPresentationStyle_];
  v19 = [v18 navigationBar];
  v20 = objc_opt_self();
  v21 = [v20 systemYellowColor];
  [v19 setTintColor_];

  v22 = v12;
  v23 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_commitActivityButton;
  if (!*&v22[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_commitActivityButton])
  {
    *&v47 = v9;
    v24 = [objc_opt_self() boldButton];
    v25 = *&v22[v23];
    *&v48 = v22;
    *&v22[v23] = v24;
    v26 = v24;

    type metadata accessor for MAGUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v28 = [objc_opt_self() bundleForClass_];
    v29 = sub_257ECF4C0();
    v30 = sub_257ECF4C0();
    v31 = [v28 localizedStringForKey:v29 value:0 table:v30];

    if (v31)
    {
      if (v26)
      {
LABEL_4:
        v32 = v7;
        [v26 setTitle:v31 forState:0];

        v33 = v47;
        sub_257ED0040();
        v34 = sub_257ED0030();
        if ((*(*(v34 - 8) + 48))(v33, 1, v34))
        {
          sub_257C3366C(v33, v32);
          sub_257ED0050();
          sub_257C336DC(v33);
        }

        else
        {
          v35 = [v20 blackColor];
          sub_257ED0000();
          sub_257ED0050();
        }

        v36 = v48;
        [v26 addTarget:v48 action:sel__dismissActivityCustomizationPaneWithText forControlEvents:64];
        v37 = [v20 systemYellowColor];
        [v26 setTintColor_];

        v38 = v26;
        v22 = v36;
        v31 = v38;
        v39 = [v46 buttonTray];
        [v39 addButton_];

        v40 = *&v22[v23];
        if (v40)
        {
          v41 = v40;
          [v41 setEnabled_];
        }

        goto LABEL_12;
      }
    }

    else
    {
      sub_257ECF500();
      v31 = sub_257ECF4C0();

      if (v26)
      {
        goto LABEL_4;
      }
    }

    v22 = v48;
LABEL_12:
  }

  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v42 = qword_281548350 + 136;
  swift_beginAccess();
  LOBYTE(v57) = 1;
  if (qword_2815447E0 != -1)
  {
    swift_once();
  }

  v43 = sub_257ECF110();
  MEMORY[0x28223BE20](v43);
  *(&v45 - 2) = &v57;
  *(&v45 - 1) = v42;
  sub_257ECFD40();
  (*(v49 + 8))(v3, v50);
  swift_endAccess();
  v44 = [v18 presentationController];

  if (v44)
  {
    [v44 setDelegate_];
  }

  [v22 presentViewController:v18 animated:1 completion:0];
}

void sub_257DF6A74(uint64_t a1, uint64_t a2)
{
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  sub_257D665C4(a1, a2);
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = objc_opt_self();
  v6 = [v5 bundleForClass_];
  v7 = sub_257ECF4C0();
  v8 = sub_257ECF4C0();
  v9 = [v6 localizedStringForKey:v7 value:0 table:v8];

  sub_257ECF500();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F58E0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_257ED6D30;
  v11 = [v5 bundleForClass_];
  v12 = sub_257ECF4C0();
  v13 = sub_257ECF4C0();
  v14 = [v11 localizedStringForKey:v12 value:0 table:v13];

  v15 = sub_257ECF500();
  v17 = v16;

  *(v10 + 56) = MEMORY[0x277D837D0];
  *(v10 + 64) = sub_257BFB13C();
  *(v10 + 32) = v15;
  *(v10 + 40) = v17;
  sub_257ECF540();

  sub_257BDAB08();
  v18 = sub_257ED0100();
  v20 = v19;

  v21 = sub_257E003E8();
  v22 = sub_257E00504();
  sub_257DFD370(v18, v20, v21, v22);
}

id sub_257DF6D30()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_activitiesNameController];
  v3 = OBJC_IVAR____TtC16MagnifierSupport32ActivityNameOnBoardingController_activityNameTextField;
  [*(v2 + OBJC_IVAR____TtC16MagnifierSupport32ActivityNameOnBoardingController_activityNameTextField) resignFirstResponder];
  v4 = *&v0[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_currentQuickActivityName + 8];
  if (v4)
  {
    v5 = *&v0[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_currentQuickActivityName];
    v6 = qword_281544FE0;

    if (v6 != -1)
    {
      swift_once();
    }

    sub_257D53434(v5, v4);
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = swift_allocObject();
    v8[2] = v7;
    v8[3] = v5;
    v8[4] = v4;

    sub_257ECC3F0();
    sub_257D61CE8(v5, v4, 1, sub_257DF7AAC, v8);
  }

  v9 = *(v2 + v3);
  v10 = sub_257ECF4C0();
  [v9 setText_];

  [*(v2 + OBJC_IVAR____TtC16MagnifierSupport32ActivityNameOnBoardingController_activityNameTakenLabel) setHidden_];
  v11 = *&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_commitActivityButton];
  if (v11)
  {
    [v11 setEnabled_];
  }

  return [v1 dismissViewControllerAnimated:1 completion:0];
}

uint64_t sub_257DF6F30(uint64_t result)
{
  if (result)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      sub_257E0EF78(1);
    }

    swift_beginAccess();
    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      v4 = v3;
      sub_257BDAB08();
      v5 = sub_257ED0100();
      v7 = v6;
      swift_beginAccess();
      result = swift_unknownObjectWeakLoadStrong();
      if (!result)
      {
        __break(1u);
        return result;
      }

      v8 = result;
      v9 = sub_257E003E8();

      swift_beginAccess();
      v10 = swift_unknownObjectWeakLoadStrong();
      if (v10)
      {
        v11 = v10;
        v12 = sub_257E00504();
      }

      else
      {
        v12 = 0;
      }

      sub_257DFD370(v5, v7, v9, v12);
    }

    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECC3F0();
    return sub_257ECDD70();
  }

  return result;
}

id sub_257DF7144()
{
  v1 = *&v0[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_activitiesNameController];
  v2 = OBJC_IVAR____TtC16MagnifierSupport32ActivityNameOnBoardingController_activityNameTextField;
  [*(v1 + OBJC_IVAR____TtC16MagnifierSupport32ActivityNameOnBoardingController_activityNameTextField) resignFirstResponder];
  v3 = *(v1 + v2);
  v4 = sub_257ECF4C0();
  [v3 setText_];

  [*(v1 + OBJC_IVAR____TtC16MagnifierSupport32ActivityNameOnBoardingController_activityNameTakenLabel) setHidden_];
  v5 = *&v0[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_commitActivityButton];
  if (v5)
  {
    [v5 setEnabled_];
  }

  return [v0 dismissViewControllerAnimated:1 completion:0];
}

void sub_257DF727C(char a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_257ECF120();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (a2 == 0xD000000000000010 && 0x8000000257EFBEB0 == a3 || (sub_257ED0640() & 1) != 0)
    {
      type metadata accessor for MAGUtilities();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v11 = [objc_opt_self() bundleForClass_];
      v12 = sub_257ECF4C0();
      v13 = sub_257ECF4C0();
      v14 = [v11 localizedStringForKey:v12 value:0 table:v13];

      a2 = sub_257ECF500();
      a3 = v15;
    }

    else
    {
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v17 = Strong;
      sub_257E0EF78(1);
    }

    swift_beginAccess();
    v18 = swift_unknownObjectWeakLoadStrong();
    if (v18)
    {
      v19 = v18;
      v32[0] = v6;
      v34 = a2;
      v35 = a3;
      sub_257BDAB08();
      v20 = sub_257ED0100();
      v22 = v21;
      swift_beginAccess();
      v23 = swift_unknownObjectWeakLoadStrong();
      if (!v23)
      {
        __break(1u);
        return;
      }

      v24 = v23;
      v25 = sub_257E003E8();

      swift_beginAccess();
      v26 = swift_unknownObjectWeakLoadStrong();
      if (v26)
      {
        v27 = v26;
        v28 = sub_257E00504();
      }

      else
      {
        v28 = 0;
      }

      sub_257DFD370(v20, v22, v25, v28);

      v6 = v32[0];
    }

    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v34) = 0;
    sub_257ECC3F0();
    sub_257ECDD70();
    v29 = qword_281548350 + 160;
    swift_beginAccess();
    v33 = 1;
    if (qword_2815447E0 != -1)
    {
      swift_once();
    }

    v30 = sub_257ECF110();
    MEMORY[0x28223BE20](v30);
    v32[-2] = &v33;
    v32[-1] = v29;
    sub_257ECFD40();
    (*(v7 + 8))(v9, v6);
    swift_endAccess();
    v31 = sub_257ECF4C0();

    UIAccessibilitySpeakAndDoNotBeInterrupted();
  }
}

void sub_257DF7708()
{
  v0 = sub_257DFF3FC();
  sub_257C7C61C();

  sub_257E0EF78(1);
}

id sub_257DF774C()
{
  result = *(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_commitActivityButton);
  if (result)
  {
    return [result setEnabled_];
  }

  return result;
}

id sub_257DF7774()
{
  result = *(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_commitActivityButton);
  if (result)
  {
    return [result setEnabled_];
  }

  return result;
}

uint64_t sub_257DF779C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_currentQuickActivityName);
  *v5 = a1;
  v5[1] = a2;

  v6 = qword_281544FE0;

  if (v6 != -1)
  {
    swift_once();
  }

  return sub_257D64370(a1, a2, 0, 0);
}

void sub_257DF7874()
{
  v1 = v0;
  type metadata accessor for EditControlsViewController();
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v2[OBJC_IVAR____TtC16MagnifierSupport26EditControlsViewController_delegate + 8] = &off_286912038;
  swift_unknownObjectWeakAssign();
  [v2 setOverrideUserInterfaceStyle_];
  v3 = [objc_allocWithZone(type metadata accessor for MFNavigationController()) initWithRootViewController_];
  [v3 setModalPresentationStyle_];
  v4 = [v3 navigationBar];
  v5 = [objc_opt_self() systemYellowColor];
  [v4 setTintColor_];

  [v3 setOverrideUserInterfaceStyle_];
  v6 = [v3 presentationController];

  if (v6)
  {
    [v6 setDelegate_];
  }

  [v1 presentViewController:v3 animated:1 completion:0];
  sub_257DB1748();
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v7 == 1)
  {
    sub_257D3AA58();
  }
}

uint64_t MAGOUEventHandler.send(_:)(_OWORD *a1)
{
  *(v2 + 448) = v1;
  v4 = sub_257ECDA30();
  *(v2 + 456) = v4;
  *(v2 + 464) = *(v4 - 8);
  *(v2 + 472) = swift_task_alloc();
  *(v2 + 480) = swift_task_alloc();
  v5 = a1[3];
  *(v2 + 48) = a1[2];
  *(v2 + 64) = v5;
  *(v2 + 80) = a1[4];
  *(v2 + 89) = *(a1 + 73);
  v6 = a1[1];
  *(v2 + 16) = *a1;
  *(v2 + 32) = v6;
  sub_257ECF900();
  *(v2 + 488) = sub_257ECF8F0();
  v8 = sub_257ECF8B0();
  *(v2 + 496) = v8;
  *(v2 + 504) = v7;

  return MEMORY[0x2822009F8](sub_257DF7BF4, v8, v7);
}

uint64_t sub_257DF7BF4()
{
  v1 = *(v0 + 448);
  swift_beginAccess();
  v2 = *(v1 + 16);
  *(v0 + 512) = v2;
  v3 = *(v2 + 32);
  *(v0 + 105) = v3;
  v4 = -1;
  v5 = -1 << v3;
  if (-(-1 << v3) < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(v2 + 64);

  if (v6)
  {
    v7 = 0;
LABEL_8:
    *(v0 + 528) = v7;
    *(v0 + 520) = v6;
    v9 = *(v2 + 48);
    v10 = (v7 << 10) | (16 * __clz(__rbit64(v6)));
    v11 = *(v9 + v10);
    *(v0 + 536) = v11;
    v12 = *(v9 + v10 + 8);
    *(v0 + 544) = v12;
    v13 = (*(v2 + 56) + v10);
    v14 = *v13;
    *(v0 + 552) = v13[1];

    sub_257ECC3F0();
    sub_257ECD4A0();

    sub_257C58BFC(v0 + 16, v0 + 112);
    v15 = sub_257ECDA20();
    v16 = sub_257ECFBD0();
    sub_257C58D88(v0 + 16);

    if (os_log_type_enabled(v15, v16))
    {
      v37 = v14;
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 136315394;
      v19 = *(v0 + 104);
      *(v0 + 424) = 0x746E65766520554FLL;
      *(v0 + 432) = 0xE900000000000020;
      *(v0 + 440) = v18;
      v20 = 0xD00000000000001DLL;
      v21 = "rContactWithObject";
      if (v19 == 2)
      {
        v20 = 0xD000000000000022;
        v21 = "activity.updated";
      }

      if (v19 <= 1)
      {
        v22 = 0xD000000000000022;
      }

      else
      {
        v22 = v20;
      }

      if (v19 <= 1)
      {
        v23 = "activity.updated";
      }

      else
      {
        v23 = v21;
      }

      v24 = *(v0 + 464);
      v35 = *(v0 + 456);
      v36 = *(v0 + 480);
      MEMORY[0x259C72150](v22, v23 | 0x8000000000000000);

      v25 = sub_257BF1FC8(*(v0 + 424), *(v0 + 432), (v0 + 440));

      *(v17 + 4) = v25;
      *(v17 + 12) = 2080;
      *(v17 + 14) = sub_257BF1FC8(v11, v12, (v0 + 440));
      _os_log_impl(&dword_257BAC000, v15, v16, "Dispatching %s to %s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C74820](v18, -1, -1);
      MEMORY[0x259C74820](v17, -1, -1);

      v26 = *(v24 + 8);
      v26(v36, v35);
      v14 = v37;
    }

    else
    {
      v27 = *(v0 + 480);
      v29 = *(v0 + 456);
      v28 = *(v0 + 464);

      v26 = *(v28 + 8);
      v26(v27, v29);
    }

    *(v0 + 560) = v26;
    v30 = *(v0 + 32);
    *(v0 + 208) = *(v0 + 16);
    *(v0 + 224) = v30;
    *(v0 + 281) = *(v0 + 89);
    v31 = *(v0 + 80);
    *(v0 + 256) = *(v0 + 64);
    *(v0 + 272) = v31;
    *(v0 + 240) = *(v0 + 48);
    v38 = (v14 + *v14);
    v32 = swift_task_alloc();
    *(v0 + 568) = v32;
    *v32 = v0;
    v32[1] = sub_257DF8054;

    return v38();
  }

  else
  {
    v8 = 0;
    while (((63 - v5) >> 6) - 1 != v8)
    {
      v7 = v8 + 1;
      v6 = *(v2 + 8 * v8++ + 72);
      if (v6)
      {
        goto LABEL_8;
      }
    }

    v34 = *(v0 + 8);

    return v34();
  }
}

uint64_t sub_257DF8054()
{
  v2 = *v1;
  *(*v1 + 576) = v0;

  if (v0)
  {

    v3 = *(v2 + 496);
    v4 = *(v2 + 504);
    v5 = sub_257DF85B0;
  }

  else
  {

    v3 = *(v2 + 496);
    v4 = *(v2 + 504);
    v5 = sub_257DF8184;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

void sub_257DF8184()
{
  v1 = *(v0 + 528);
  v2 = (*(v0 + 520) - 1) & *(v0 + 520);
  if (v2)
  {
    v3 = *(v0 + 512);
LABEL_7:
    *(v0 + 528) = v1;
    *(v0 + 520) = v2;
    v5 = *(v3 + 48);
    v6 = (v1 << 10) | (16 * __clz(__rbit64(v2)));
    v7 = *(v5 + v6);
    *(v0 + 536) = v7;
    v8 = *(v5 + v6 + 8);
    *(v0 + 544) = v8;
    v9 = (*(v3 + 56) + v6);
    v10 = *v9;
    *(v0 + 552) = v9[1];

    sub_257ECC3F0();
    sub_257ECD4A0();

    sub_257C58BFC(v0 + 16, v0 + 112);
    v11 = sub_257ECDA20();
    v12 = sub_257ECFBD0();
    sub_257C58D88(v0 + 16);

    if (os_log_type_enabled(v11, v12))
    {
      v32 = v10;
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 136315394;
      v15 = *(v0 + 104);
      *(v0 + 424) = 0x746E65766520554FLL;
      *(v0 + 432) = 0xE900000000000020;
      *(v0 + 440) = v14;
      v16 = 0xD00000000000001DLL;
      v17 = "rContactWithObject";
      if (v15 == 2)
      {
        v16 = 0xD000000000000022;
        v17 = "activity.updated";
      }

      if (v15 <= 1)
      {
        v18 = 0xD000000000000022;
      }

      else
      {
        v18 = v16;
      }

      if (v15 <= 1)
      {
        v19 = "activity.updated";
      }

      else
      {
        v19 = v17;
      }

      v20 = *(v0 + 464);
      v30 = *(v0 + 456);
      v31 = *(v0 + 480);
      MEMORY[0x259C72150](v18, v19 | 0x8000000000000000);

      v21 = sub_257BF1FC8(*(v0 + 424), *(v0 + 432), (v0 + 440));

      *(v13 + 4) = v21;
      *(v13 + 12) = 2080;
      *(v13 + 14) = sub_257BF1FC8(v7, v8, (v0 + 440));
      _os_log_impl(&dword_257BAC000, v11, v12, "Dispatching %s to %s", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C74820](v14, -1, -1);
      MEMORY[0x259C74820](v13, -1, -1);

      v22 = *(v20 + 8);
      v22(v31, v30);
      v10 = v32;
    }

    else
    {
      v23 = *(v0 + 480);
      v25 = *(v0 + 456);
      v24 = *(v0 + 464);

      v22 = *(v24 + 8);
      v22(v23, v25);
    }

    *(v0 + 560) = v22;
    v26 = *(v0 + 32);
    *(v0 + 208) = *(v0 + 16);
    *(v0 + 224) = v26;
    *(v0 + 281) = *(v0 + 89);
    v27 = *(v0 + 80);
    *(v0 + 256) = *(v0 + 64);
    *(v0 + 272) = v27;
    *(v0 + 240) = *(v0 + 48);
    v33 = (v10 + *v10);
    v28 = swift_task_alloc();
    *(v0 + 568) = v28;
    *v28 = v0;
    v28[1] = sub_257DF8054;

    v33();
  }

  else
  {
    while (1)
    {
      v4 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        __break(1u);
        return;
      }

      v3 = *(v0 + 512);
      if (v4 >= (((1 << *(v0 + 105)) + 63) >> 6))
      {
        break;
      }

      v2 = *(v3 + 8 * v4 + 64);
      ++v1;
      if (v2)
      {
        v1 = v4;
        goto LABEL_7;
      }
    }

    v29 = *(v0 + 8);

    v29();
  }
}

uint64_t sub_257DF85B0()
{
  v25 = v0;

  sub_257ECD4A0();

  sub_257C58BFC(v0 + 16, v0 + 304);
  v1 = sub_257ECDA20();
  v2 = sub_257ECFBE0();

  sub_257C58D88(v0 + 16);
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 560);
  v5 = *(v0 + 544);
  if (v3)
  {
    v6 = *(v0 + 536);
    v7 = *(v0 + 472);
    v8 = *(v0 + 456);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136315394;
    v11 = sub_257BF1FC8(v6, v5, &v19);

    *(v9 + 4) = v11;
    *(v9 + 12) = 2080;
    v12 = *(v0 + 64);
    v22 = *(v0 + 48);
    v23 = v12;
    v24[0] = *(v0 + 80);
    *(v24 + 9) = *(v0 + 89);
    v13 = *(v0 + 32);
    v20 = *(v0 + 16);
    v21 = v13;
    v14 = MAGOUEvent.description.getter();
    v16 = sub_257BF1FC8(v14, v15, &v19);

    *(v9 + 14) = v16;
    _os_log_impl(&dword_257BAC000, v1, v2, "%s failed to handle %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C74820](v10, -1, -1);
    MEMORY[0x259C74820](v9, -1, -1);
  }

  else
  {
    v7 = *(v0 + 472);
    v8 = *(v0 + 456);
  }

  v4(v7, v8);
  swift_willThrow();

  v17 = *(v0 + 8);

  return v17();
}

uint64_t MAGOUEventHandler.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = sub_257BEA57C(MEMORY[0x277D84F90]);
  return v0;
}

uint64_t MAGOUEventHandler.register(_:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;
  swift_beginAccess();

  sub_257ECC3F0();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v5 + 16);
  *(v5 + 16) = 0x8000000000000000;
  sub_257EC7CEC(&unk_257EEAF30, v10, a1, a2, isUniquelyReferenced_nonNull_native);

  *(v5 + 16) = v13;
  return swift_endAccess();
}

Swift::Void __swiftcall MAGOUEventHandler.unregister(_:)(Swift::String a1)
{
  v2 = v1;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  swift_beginAccess();

  v5 = sub_257C03F6C(countAndFlagsBits, object);
  v7 = v6;

  if (v7)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v2 + 16);
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_257C093E8();
    }

    sub_257C09E7C(v5, v9);
    *(v2 + 16) = v9;
  }

  swift_endAccess();
}

uint64_t MAGOUEventHandler.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_257DF8A84(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_257BE3DE0;

  return sub_257C0334C(a1, a2, v6);
}

uint64_t sub_257DF8B9C(uint64_t a1)
{
  v2 = sub_257ED0190();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v4 = sub_257DFC318(v2, *(a1 + 36), 0, a1);

  return v4;
}

uint64_t sub_257DF8C18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_257ED0190();
  v5 = 1;
  if (v4 != 1 << *(a1 + 32))
  {
    sub_257DFC058(v4, *(a1 + 36), a1, a2);
    v5 = 0;
  }

  v6 = type metadata accessor for Occupant();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

uint64_t sub_257DF8CFC(uint64_t a1, unint64_t *a2)
{
  v4 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v5 = sub_257ED01C0();
    v7 = v6;
    v8 = sub_257ED0250();
    v10 = v9;
    v11 = MEMORY[0x259C72D00](v5, v7, v8, v9);
    sub_257C58A64(v8, v10, 1);
    if (v11)
    {
LABEL_3:
      sub_257C58A64(v5, v7, v4 != 0);
      return 0;
    }
  }

  else
  {
    v5 = sub_257ED0190();
    v7 = *(a1 + 36);
    if (v5 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_257DFC100(v5, v7, v4 != 0, a1, a2);
  v14 = v13;
  sub_257C58A64(v5, v7, v4 != 0);
  return v14;
}

uint64_t sub_257DF8E30(uint64_t (*a1)(void **), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v8 = *v6++;
      v13 = v8;
      v9 = v8;
      v10 = a1(&v13);

      if (v3)
      {
        break;
      }

      v11 = v7-- == 0;
    }

    while (((v10 | v11) & 1) == 0);
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10 & 1;
}

uint64_t sub_257DF8ED4(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_257DF8F80(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v12 = *v6;
      v8 = v12;
      v9 = a1(&v12);

      if (v3)
      {
        break;
      }

      v10 = v7-- == 0;
      ++v6;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_257DF9028(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
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
          v8 = MEMORY[0x259C72E20](v5, a3);
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
      v13 = sub_257ED0210();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

id Collection<>.findGroup(containing:from:and:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *a1;
  v44 = *(a1 + 16);
  v45 = *(a1 + 32);
  v46 = *(a1 + 48);
  v47 = *(a1 + 64);
  result = [*a1 type];
  if (!result)
  {
    __break(1u);
    goto LABEL_34;
  }

  v10 = result;
  v11 = sub_257ECF500();
  v13 = v12;
  if (v11 == sub_257ECF500() && v13 == v14)
  {
    goto LABEL_10;
  }

  v16 = sub_257ED0640();

  if ((v16 & 1) == 0)
  {
    result = [v8 type];
    if (result)
    {
      v10 = result;
      v17 = sub_257ECF500();
      v19 = v18;
      if (v17 == sub_257ECF500() && v19 == v20)
      {
        goto LABEL_10;
      }

      v21 = sub_257ED0640();

      if (v21)
      {
        goto LABEL_11;
      }

      result = [v8 type];
      if (result)
      {
        v10 = result;
        v22 = sub_257ECF500();
        v24 = v23;
        if (v22 == sub_257ECF500() && v24 == v25)
        {
          goto LABEL_10;
        }

        v26 = sub_257ED0640();

        if (v26)
        {
          goto LABEL_11;
        }

        result = [v8 type];
        if (result)
        {
          v10 = result;
          v27 = sub_257ECF500();
          v29 = v28;
          if (v27 != sub_257ECF500() || v29 != v30)
          {
            v31 = sub_257ED0640();

            if (v31)
            {
              goto LABEL_11;
            }

            result = [v8 type];
            if (result)
            {
              v32 = result;
              v33 = sub_257ECF500();
              v35 = v34;
              if (v33 == sub_257ECF500() && v35 == v36)
              {
                goto LABEL_25;
              }

              v37 = sub_257ED0640();

              if (v37)
              {
                goto LABEL_27;
              }

              result = [v8 type];
              if (result)
              {
                v32 = result;
                v38 = sub_257ECF500();
                v40 = v39;
                if (v38 != sub_257ECF500() || v40 != v41)
                {
                  v42 = sub_257ED0640();

                  if ((v42 & 1) == 0)
                  {
                    return 0;
                  }

LABEL_27:
                  v48[0] = v8;
                  v49 = v44;
                  v50 = v45;
                  v51 = v46;
                  v52 = v47;
                  return sub_257DF9D40(v48, a3, a4, a5);
                }

LABEL_25:

                goto LABEL_27;
              }

LABEL_38:
              __break(1u);
              return result;
            }

LABEL_37:
            __break(1u);
            goto LABEL_38;
          }

LABEL_10:

          goto LABEL_11;
        }

LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

LABEL_11:
  v48[0] = v8;
  v49 = v44;
  v50 = v45;
  v51 = v46;
  v52 = v47;
  return sub_257DF9918(v48, a2, a4, a5);
}

id Dictionary<>.occupants(of:)(id *a1, uint64_t a2)
{
  v4 = sub_257ECCCF0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6578);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Occupant();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [*a1 identifier];
  if (result)
  {
    v16 = result;
    sub_257ECCCD0();

    if (*(a2 + 16) && (v17 = sub_257C042F8(v7), (v18 & 1) != 0))
    {
      v19 = *(*(a2 + 56) + 8 * v17);
      v20 = *(v5 + 8);

      v20(v7, v4);
      sub_257DF8C18(v19, v10);

      if ((*(v12 + 48))(v10, 1, v11) != 1)
      {
        sub_257C587D8(v10, v14);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F59E8);
        v21 = (*(v5 + 80) + 32) & ~*(v5 + 80);
        v22 = swift_allocObject();
        *(v22 + 16) = xmmword_257ED6D30;
        (*(v5 + 16))(v22 + v21, v14, v4);
        v23 = sub_257BF2F8C(v22);
        swift_setDeallocating();
        v20((v22 + v21), v4);
        swift_deallocClassInstance();
        sub_257CA8124(v14);
        return v23;
      }
    }

    else
    {
      (*(v5 + 8))(v7, v4);
      (*(v12 + 56))(v10, 1, 1, v11);
    }

    sub_257BE4084(v10, &qword_27F8F6578);
    return MEMORY[0x277D84FA0];
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_257DF98A4(char **a1, float32x4_t a2)
{
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_257C67294(v3);
  }

  v4 = *(v3 + 2);
  v6[0] = (v3 + 32);
  v6[1] = v4;
  sub_257DFB0CC(v6, a2);
  *a1 = v3;
}

id sub_257DF9918(id *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_257ECDA30();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_257ECCCF0();
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v51 = &v38 - v18;
  v45 = *(a2 + 16);
  if (v45)
  {
    v41 = a3;
    v42 = a4;
    v43 = v4;
    v44 = v17;
    v38 = v12;
    v39 = v10;
    v40 = v9;
    v19 = 0;
    v46 = *a1;
    v47 = a2 + 32;
    v49 = v17 + 16;
    v20 = (v17 + 8);
    while (1)
    {
      v48 = v19;
      v21 = *(v47 + 8 * v19);

      result = [v46 identifier];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v23 = result;
      sub_257ECCCD0();

      if (*(v21 + 16))
      {
        sub_257DFC36C(&qword_27F8F57B0);
        v24 = sub_257ECF3F0();
        v25 = -1 << *(v21 + 32);
        v26 = v24 & ~v25;
        v50 = v21 + 56;
        if ((*(v21 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26))
        {
          break;
        }
      }

LABEL_3:
      v19 = v48 + 1;

      (*v20)(v51, v13);
      if (v19 == v45)
      {
        return 0;
      }
    }

    v27 = ~v25;
    v28 = *(v44 + 72);
    v29 = *(v44 + 16);
    while (1)
    {
      v29(v16, *(v21 + 48) + v28 * v26, v13);
      sub_257DFC36C(&qword_27F8F57B8);
      v30 = sub_257ECF450();
      v31 = *v20;
      (*v20)(v16, v13);
      if (v30)
      {
        break;
      }

      v26 = (v26 + 1) & v27;
      if (((*(v50 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
      {
        goto LABEL_3;
      }
    }

    v31(v51, v13);
    v32 = sub_257DFA794(v21, v41, v42);

    if (*(v32 + 16))
    {
      v33 = sub_257C56FFC(v32);

      return v33;
    }

    v34 = v38;
    sub_257ECD4A0();
    v35 = sub_257ECDA20();
    v36 = sub_257ECFBE0();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_257BAC000, v35, v36, "Warning: group of found objects is unexpectedly empty", v37, 2u);
      MEMORY[0x259C74820](v37, -1, -1);
    }

    (*(v39 + 8))(v34, v40);
  }

  return 0;
}

id sub_257DF9D40(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v71 = a4;
  v70 = a3;
  v67 = sub_257ECDA30();
  v66 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v65 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_257ECCCF0();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  *&v85 = &v65 - v13;
  MEMORY[0x28223BE20](v12);
  v76 = &v65 - v14;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F6610);
  v15 = MEMORY[0x28223BE20](v79);
  v17 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v77 = &v65 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v68 = &v65 - v21;
  MEMORY[0x28223BE20](v20);
  v69 = &v65 - v22;
  v23 = *a1;
  v24 = a2 + 64;
  v25 = 1 << *(a2 + 32);
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  else
  {
    v26 = -1;
  }

  v27 = v26 & *(a2 + 64);
  v28 = (v25 + 63) >> 6;
  *&v83 = v8 + 16;
  v78 = v8;
  *&v84 = v8 + 8;
  v80 = a2;

  v30 = 0;
  v73 = a2 + 64;
  v75 = v17;
  v74 = v23;
  for (i = v28; ; v28 = i)
  {
    if (!v27)
    {
      while (1)
      {
        v31 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          break;
        }

        if (v31 >= v28)
        {

          return 0;
        }

        v27 = *(v24 + 8 * v31);
        ++v30;
        if (v27)
        {
          v30 = v31;
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      return result;
    }

LABEL_11:
    v32 = __clz(__rbit64(v27)) | (v30 << 6);
    v33 = v80;
    v34 = *(v80 + 48);
    *&v82 = *(v78 + 72);
    v35 = v77;
    v81 = *(v78 + 16);
    v81(v77, v34 + v82 * v32, v7);
    v36 = *(*(v33 + 56) + 8 * v32);
    v37 = v79;
    *(v35 + *(v79 + 48)) = v36;
    sub_257DFC400(v35, v17);
    v38 = *&v17[*(v37 + 48)];

    result = [v23 identifier];
    if (!result)
    {
      goto LABEL_31;
    }

    v39 = result;
    v40 = v76;
    sub_257ECCCD0();

    LOBYTE(v39) = sub_257ECCCC0();
    v41 = *v84;
    (*v84)(v40, v7);
    if (v39)
    {

      goto LABEL_22;
    }

    result = [v23 identifier];
    if (!result)
    {
      goto LABEL_32;
    }

    v42 = result;
    sub_257ECCCD0();

    if (*(v38 + 16))
    {
      sub_257DFC36C(&qword_27F8F57B0);
      v43 = sub_257ECF3F0();
      v44 = -1 << *(v38 + 32);
      v45 = v43 & ~v44;
      if ((*(v38 + 56 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45))
      {
        break;
      }
    }

LABEL_5:
    v27 &= v27 - 1;
    v41(v85, v7);
    v17 = v75;
    result = sub_257BE4084(v75, &unk_27F8F6610);
    v23 = v74;
    v24 = v73;
  }

  v46 = ~v44;
  while (1)
  {
    v81(v11, *(v38 + 48) + v45 * v82, v7);
    sub_257DFC36C(&qword_27F8F57B8);
    v47 = sub_257ECF450();
    v41(v11, v7);
    if (v47)
    {
      break;
    }

    v45 = (v45 + 1) & v46;
    if (((*(v38 + 56 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  v41(v85, v7);

  v17 = v75;
LABEL_22:
  v48 = v68;
  sub_257DFC400(v17, v68);
  v49 = v69;
  v50 = sub_257DFC400(v48, v69);
  MEMORY[0x28223BE20](v50);
  *(&v65 - 2) = v49;
  v51 = v71;
  v52 = v70;
  sub_257ECF750();
  v92 = v87;
  v93 = v88;
  v94 = v89;
  v95 = v90;
  v96 = v91;
  v53 = v87;
  if (v87)
  {
    v85 = v96;
    v84 = v95;
    v83 = v94;
    v82 = v93;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F6A60);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_257ED6D30;
    *(v54 + 32) = v53;
    v55 = v83;
    *(v54 + 48) = v82;
    *(v54 + 64) = v55;
    v56 = v85;
    *(v54 + 80) = v84;
    *(v54 + 96) = v56;
    v57 = *(v49 + *(v79 + 48));
    v58 = v53;
    v59 = sub_257DFA794(v57, v52, v51);
    v86 = v54;
    sub_257EB0DAC(v59);
    v60 = sub_257C56FFC(v86);

    sub_257BE4084(&v92, &qword_27F8F9C90);
    sub_257BE4084(v49, &unk_27F8F6610);
    return v60;
  }

  else
  {
    v61 = v65;
    sub_257ECD4A0();
    v62 = sub_257ECDA20();
    v63 = sub_257ECFBE0();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&dword_257BAC000, v62, v63, "Warning: could not find DetectedObject expected to match given ID", v64, 2u);
      MEMORY[0x259C74820](v64, -1, -1);
    }

    (*(v66 + 8))(v61, v67);
    sub_257BE4084(v49, &unk_27F8F6610);
    return 0;
  }
}

uint64_t Collection<>.closest(to:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, float32x4_t a3@<Q0>)
{
  v18 = a3;
  MEMORY[0x28223BE20](a1);
  (*(v7 + 16))(&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a1);
  v19 = sub_257ECF880();

  sub_257DF98A4(&v19, v18);

  if (v19[1].i64[0])
  {
    v8 = v19[2].i64[0];
    v9 = v19[3];
    v17 = v19[4];
    v18 = v9;
    v10 = v19[5];
    v15 = v19[6];
    v16 = v10;
    v11 = v8;

    v13 = v17;
    *(a2 + 16) = v18;
    *(a2 + 32) = v13;
    v14 = v15;
    *(a2 + 48) = v16;
    *(a2 + 64) = v14;
  }

  else
  {

    v11 = 0;
    *(a2 + 72) = 0;
    *(a2 + 56) = 0u;
    *(a2 + 40) = 0u;
    *(a2 + 24) = 0u;
    *(a2 + 8) = 0u;
  }

  *a2 = v11;
  return result;
}

uint64_t sub_257DFA794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_257ECDA30();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = a2;
  v19 = a3;
  v20 = v3;
  v11 = sub_257C83814(sub_257DFC3B0, v17, a1);
  if (*(v11 + 16) != *(a1 + 16))
  {
    sub_257ECD4A0();

    v12 = sub_257ECDA20();
    v13 = sub_257ECFBE0();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 134218496;
      v15 = *(a1 + 16);
      *(v14 + 4) = v15 - *(v11 + 16);
      *(v14 + 12) = 2048;
      *(v14 + 14) = v15;

      *(v14 + 22) = 2048;
      *(v14 + 24) = *(v11 + 16);

      _os_log_impl(&dword_257BAC000, v12, v13, "Warning: %ld/%ld object IDs did not have a corresponding DetectedObject. Continuing with %ld found objects.", v14, 0x20u);
      MEMORY[0x259C74820](v14, -1, -1);
    }

    else
    {
    }

    (*(v8 + 8))(v10, v7);
  }

  return v11;
}

id sub_257DFA998(id *a1)
{
  v2 = sub_257ECCCF0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [*a1 identifier];
  if (result)
  {
    v7 = result;
    sub_257ECCCD0();

    v8 = sub_257ECCCC0();
    (*(v3 + 8))(v5, v2);
    return (v8 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void Dictionary<>.occupants(of:)(uint64_t a1, uint64_t a2)
{
  v56 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6578);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v47 - v4;
  v55 = sub_257ECCCF0();
  v6 = MEMORY[0x28223BE20](v55);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v48 = &v47 - v10;
  MEMORY[0x28223BE20](v9);
  v51 = &v47 - v12;
  v13 = a1 + 56;
  v14 = 1 << *(a1 + 32);
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a1 + 56);
  v17 = (v14 + 63) >> 6;
  v61 = *MEMORY[0x277D36D38];
  v60 = *MEMORY[0x277D36D68];
  v53 = (v11 + 8);
  v47 = (v11 + 16);
  v49 = v11;
  v50 = (v11 + 32);
  v62 = a1;

  v18 = 0;
  v52 = MEMORY[0x277D84F90];
  v59 = xmmword_257ED9BD0;
  v57 = v17;
  v58 = a1 + 56;
  v54 = v5;
  while (v16)
  {
LABEL_12:
    v20 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v21 = *(*(v62 + 48) + 80 * (v20 | (v18 << 6)));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F65C8);
    inited = swift_initStackObject();
    *(inited + 16) = v59;
    v24 = v60;
    v23 = v61;
    *(inited + 32) = v61;
    *(inited + 40) = v24;
    v25 = v21;
    v26 = v23;
    v27 = v24;
    v28 = [v25 type];
    v63 = v28;
    MEMORY[0x28223BE20](v28);
    *(&v47 - 2) = &v63;
    LOBYTE(v21) = sub_257DF8E30(sub_257C5883C, (&v47 - 4), inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F65D0);
    swift_arrayDestroy();

    if (v21)
    {
      v29 = [v25 identifier];
      if (!v29)
      {
        goto LABEL_28;
      }

      v30 = v29;
      sub_257ECCCD0();

      v31 = v54;
      if (*(v56 + 16) && (v32 = sub_257C042F8(v8), (v33 & 1) != 0))
      {
        v34 = *(*(v56 + 56) + 8 * v32);
        v35 = *v53;

        v35(v8, v55);
        v36 = sub_257ED0190();
        v37 = 1;
        if (v36 != 1 << *(v34 + 32))
        {
          sub_257DFC058(v36, *(v34 + 36), v34, v31);
          v37 = 0;
        }

        v38 = type metadata accessor for Occupant();
        v39 = *(v38 - 8);
        (*(v39 + 56))(v31, v37, 1, v38);

        if ((*(v39 + 48))(v31, 1, v38) == 1)
        {
          sub_257BE4084(v31, &qword_27F8F6578);
        }

        else
        {
          v40 = v48;
          v41 = v55;
          (*v47)(v48, v31, v55);
          sub_257CA8124(v31);
          v42 = *v50;
          (*v50)(v51, v40, v41);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v52 = sub_257BFD690(0, *(v52 + 2) + 1, 1, v52);
          }

          v44 = *(v52 + 2);
          v43 = *(v52 + 3);
          if (v44 >= v43 >> 1)
          {
            v52 = sub_257BFD690(v43 > 1, v44 + 1, 1, v52);
          }

          v45 = v51;
          v46 = v52;
          *(v52 + 2) = v44 + 1;
          v42(&v46[((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v44], v45, v55);
        }
      }

      else
      {

        (*v53)(v8, v55);
      }
    }

    else
    {
    }

    v17 = v57;
    v13 = v58;
  }

  while (1)
  {
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v19 >= v17)
    {

      sub_257C5714C(v52);

      return;
    }

    v16 = *(v13 + 8 * v19);
    ++v18;
    if (v16)
    {
      v18 = v19;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
}

void sub_257DFB0CC(uint64_t *a1, float32x4_t a2)
{
  v3 = a1[1];
  v4 = sub_257ED05F0();
  if (v4 < v3)
  {
    if (v3 >= -1)
    {
      v5 = v4;
      if (v3 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        v6 = sub_257ECF850();
        *(v6 + 16) = v3 / 2;
      }

      v9[0] = v6 + 32;
      v9[1] = v3 / 2;
      v7 = v6;
      sub_257DFB374(v9, a2, v10, a1, v5);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v3 < 0)
  {
    goto LABEL_12;
  }

  if (v3)
  {
    sub_257DFB1D0(0, v3, 1, a1, a2);
  }
}

void sub_257DFB1D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, float32x4_t a5)
{
  if (a3 != a2)
  {
    v5 = a3;
    v6 = *a4;
    v7 = *a4 + 80 * a3;
    v8 = a1 - a3;
LABEL_5:
    v9 = *(v6 + 80 * v5);
    v10 = v8;
    v31 = v7;
    while (1)
    {
      v11 = *(v7 - 80);
      v12 = v9;
      v13 = v11;
      sub_257E4FDE8(a5);
      v28 = v14;
      sub_257E4FDE8(a5);
      v29 = v15;

      v16 = vsubq_f32(v28, a5);
      v17 = vmulq_f32(v16, v16);
      v18 = vsubq_f32(v29, a5);
      v19 = vmulq_f32(v18, v18);
      *v17.i8 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v17, v17, 8uLL), *&vextq_s8(v19, v19, 8uLL)), vadd_f32(vzip1_s32(*v17.i8, *v19.i8), vzip2_s32(*v17.i8, *v19.i8))));
      if ((vcgt_f32(vdup_lane_s32(*v17.i8, 1), *v17.i8).u32[0] & 1) == 0)
      {
LABEL_4:
        ++v5;
        v7 = v31 + 80;
        --v8;
        if (v5 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v9 = *v7;
      v20 = *(v7 + 16);
      v21 = *(v7 + 32);
      v22 = *(v7 + 48);
      v23 = *(v7 + 64);
      v24 = *(v7 - 32);
      *(v7 + 32) = *(v7 - 48);
      *(v7 + 48) = v24;
      *(v7 + 64) = *(v7 - 16);
      v25 = *(v7 - 64);
      *v7 = *(v7 - 80);
      *(v7 + 16) = v25;
      *(v7 - 64) = v20;
      *(v7 - 48) = v21;
      *(v7 - 32) = v22;
      *(v7 - 16) = v23;
      *(v7 - 80) = v9;
      v7 -= 80;
      if (__CFADD__(v10++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_257DFB374(uint64_t *a1, float32x4_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v6 = a4;
  v7 = a4[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_92:
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_130;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_124:
      v9 = sub_257C66E20(v9);
    }

    v110 = *(v9 + 16);
    if (v110 >= 2)
    {
      do
      {
        v111 = *v6;
        if (!*v6)
        {
          goto LABEL_128;
        }

        v6 = (v110 - 1);
        v112 = *(v9 + 16 * v110);
        v113 = v9;
        v114 = *(v9 + 16 * (v110 - 1) + 32);
        v9 = *(v9 + 16 * (v110 - 1) + 40);
        sub_257DFBBE0((v111 + 80 * v112), (v111 + 80 * v114), (v111 + 80 * v9), v7, a2);
        if (v5)
        {
          break;
        }

        if (v9 < v112)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v113 = sub_257C66E20(v113);
        }

        if (v110 - 2 >= *(v113 + 2))
        {
          goto LABEL_118;
        }

        v115 = &v113[16 * v110];
        *v115 = v112;
        *(v115 + 1) = v9;
        sub_257C66D94(v6);
        v9 = v113;
        v110 = *(v113 + 2);
        v6 = a4;
      }

      while (v110 > 1);
    }

LABEL_102:

    return;
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8;
    v11 = v8 + 1;
    if (v8 + 1 < v7)
    {
      v12 = *v6;
      v13 = *(*v6 + 80 * v8);
      v118 = v8;
      v14 = *(*v6 + 80 * v11);
      v15 = v13;
      sub_257E4FDE8(a2);
      v126 = v16;
      sub_257E4FDE8(a2);
      v132 = v17;

      v10 = v118;
      v18 = vsubq_f32(v126, a2);
      v19 = vmulq_f32(v18, v18);
      v20 = vsubq_f32(v132, a2);
      v21 = vmulq_f32(v20, v20);
      *v19.i8 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v19, v19, 8uLL), *&vextq_s8(v21, v21, 8uLL)), vadd_f32(vzip1_s32(*v19.i8, *v21.i8), vzip2_s32(*v19.i8, *v21.i8))));
      v123 = vcgt_f32(vdup_lane_s32(*v19.i8, 1), *v19.i8);
      v11 = v118 + 2;
      if (v118 + 2 < v7)
      {
        v22 = v12 + 80 * v118 + 112;
        while (1)
        {
          v23 = v11;
          v24 = *(v22 - 32);
          v25 = *(v22 + 48);
          v26 = v24;
          sub_257E4FDE8(a2);
          v127 = v27;
          sub_257E4FDE8(a2);
          v133 = v28;

          v29 = vsubq_f32(v127, a2);
          v30 = vmulq_f32(v29, v29);
          v31 = vsubq_f32(v133, a2);
          v32 = vmulq_f32(v31, v31);
          *v30.i8 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v30, v30, 8uLL), *&vextq_s8(v32, v32, 8uLL)), vadd_f32(vzip1_s32(*v30.i8, *v32.i8), vzip2_s32(*v30.i8, *v32.i8))));
          if ((vmvn_s8(veor_s8(vcgt_f32(vdup_lane_s32(*v30.i8, 1), *v30.i8), v123)).u8[0] & 1) == 0)
          {
            break;
          }

          v11 = v23 + 1;
          v22 += 80;
          if (v7 == v23 + 1)
          {
            v11 = v7;
            goto LABEL_11;
          }
        }

        v11 = v23;
LABEL_11:
        v10 = v118;
      }

      if (v123.i8[0])
      {
        if (v11 < v10)
        {
          goto LABEL_121;
        }

        if (v10 < v11)
        {
          v7 = v10;
          v33 = v9;
          v34 = 80 * v11 - 80;
          v35 = 80 * v7 + 64;
          v36 = v11;
          do
          {
            if (v7 != --v36)
            {
              v39 = *v6;
              if (!*v6)
              {
                goto LABEL_127;
              }

              v37 = v39 + v34;
              v131 = *(v39 + v35 - 32);
              v134 = *(v39 + v35 - 48);
              v129 = *(v39 + v35);
              v130 = *(v39 + v35 - 16);
              v38 = *(v39 + v35 - 64);
              memmove((v39 + v35 - 64), (v39 + v34), 0x50uLL);
              *v37 = v38;
              *(v37 + 16) = v134;
              *(v37 + 32) = v131;
              *(v37 + 48) = v130;
              *(v37 + 64) = v129;
              v6 = a4;
            }

            ++v7;
            v34 -= 80;
            v35 += 80;
          }

          while (v7 < v36);
          v9 = v33;
          v10 = v118;
        }
      }
    }

    v40 = v6[1];
    if (v11 < v40)
    {
      if (__OFSUB__(v11, v10))
      {
        goto LABEL_120;
      }

      if (v11 - v10 < a5)
      {
        break;
      }
    }

    v7 = 80;
LABEL_39:
    if (v11 < v10)
    {
      goto LABEL_119;
    }

LABEL_40:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_257BFCB00(0, *(v9 + 16) + 1, 1, v9);
    }

    v64 = *(v9 + 16);
    v63 = *(v9 + 24);
    v65 = v64 + 1;
    if (v64 >= v63 >> 1)
    {
      v9 = sub_257BFCB00((v63 > 1), v64 + 1, 1, v9);
    }

    *(v9 + 16) = v65;
    v66 = v9 + 16 * v64;
    *(v66 + 32) = v10;
    *(v66 + 40) = v11;
    v67 = *a1;
    if (!*a1)
    {
      goto LABEL_129;
    }

    v125 = v11;
    if (v64)
    {
      while (1)
      {
        v68 = v65 - 1;
        if (v65 >= 4)
        {
          break;
        }

        if (v65 == 3)
        {
          v69 = *(v9 + 32);
          v70 = *(v9 + 40);
          v79 = __OFSUB__(v70, v69);
          v71 = v70 - v69;
          v72 = v79;
LABEL_59:
          if (v72)
          {
            goto LABEL_108;
          }

          v85 = (v9 + 16 * v65);
          v87 = *v85;
          v86 = v85[1];
          v88 = __OFSUB__(v86, v87);
          v89 = v86 - v87;
          v90 = v88;
          if (v88)
          {
            goto LABEL_111;
          }

          v91 = (v9 + 32 + 16 * v68);
          v93 = *v91;
          v92 = v91[1];
          v79 = __OFSUB__(v92, v93);
          v94 = v92 - v93;
          if (v79)
          {
            goto LABEL_114;
          }

          if (__OFADD__(v89, v94))
          {
            goto LABEL_115;
          }

          if (v89 + v94 >= v71)
          {
            if (v71 < v94)
            {
              v68 = v65 - 2;
            }

            goto LABEL_80;
          }

          goto LABEL_73;
        }

        v95 = (v9 + 16 * v65);
        v97 = *v95;
        v96 = v95[1];
        v79 = __OFSUB__(v96, v97);
        v89 = v96 - v97;
        v90 = v79;
LABEL_73:
        if (v90)
        {
          goto LABEL_110;
        }

        v98 = v9 + 16 * v68;
        v100 = *(v98 + 32);
        v99 = *(v98 + 40);
        v79 = __OFSUB__(v99, v100);
        v101 = v99 - v100;
        if (v79)
        {
          goto LABEL_113;
        }

        if (v101 < v89)
        {
          goto LABEL_3;
        }

LABEL_80:
        v106 = v68 - 1;
        if (v68 - 1 >= v65)
        {
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
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
          goto LABEL_123;
        }

        if (!*v6)
        {
          goto LABEL_126;
        }

        v107 = *(v9 + 32 + 16 * v106);
        v108 = *(v9 + 32 + 16 * v68 + 8);
        sub_257DFBBE0((*v6 + 80 * v107), (*v6 + 80 * *(v9 + 32 + 16 * v68)), (*v6 + 80 * v108), v67, a2);
        if (v5)
        {
          goto LABEL_102;
        }

        if (v108 < v107)
        {
          goto LABEL_104;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_257C66E20(v9);
        }

        if (v106 >= *(v9 + 16))
        {
          goto LABEL_105;
        }

        v109 = v9 + 16 * v106;
        *(v109 + 32) = v107;
        *(v109 + 40) = v108;
        sub_257C66D94(v68);
        v65 = *(v9 + 16);
        if (v65 <= 1)
        {
          goto LABEL_3;
        }
      }

      v73 = v9 + 32 + 16 * v65;
      v74 = *(v73 - 64);
      v75 = *(v73 - 56);
      v79 = __OFSUB__(v75, v74);
      v76 = v75 - v74;
      if (v79)
      {
        goto LABEL_106;
      }

      v78 = *(v73 - 48);
      v77 = *(v73 - 40);
      v79 = __OFSUB__(v77, v78);
      v71 = v77 - v78;
      v72 = v79;
      if (v79)
      {
        goto LABEL_107;
      }

      v80 = (v9 + 16 * v65);
      v82 = *v80;
      v81 = v80[1];
      v79 = __OFSUB__(v81, v82);
      v83 = v81 - v82;
      if (v79)
      {
        goto LABEL_109;
      }

      v79 = __OFADD__(v71, v83);
      v84 = v71 + v83;
      if (v79)
      {
        goto LABEL_112;
      }

      if (v84 >= v76)
      {
        v102 = (v9 + 32 + 16 * v68);
        v104 = *v102;
        v103 = v102[1];
        v79 = __OFSUB__(v103, v104);
        v105 = v103 - v104;
        if (v79)
        {
          goto LABEL_116;
        }

        if (v71 < v105)
        {
          v68 = v65 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_59;
    }

LABEL_3:
    v7 = v6[1];
    v8 = v125;
    if (v125 >= v7)
    {
      goto LABEL_92;
    }
  }

  v7 = 80;
  if (__OFADD__(v10, a5))
  {
    goto LABEL_122;
  }

  if (v10 + a5 < v40)
  {
    v40 = v10 + a5;
  }

  if (v40 < v10)
  {
LABEL_123:
    __break(1u);
    goto LABEL_124;
  }

  if (v11 == v40)
  {
    goto LABEL_39;
  }

  v116 = v9;
  v41 = *v6;
  v42 = *v6 + 80 * v11;
  v119 = v10;
  v43 = v10 - v11;
  v121 = v40;
LABEL_32:
  v124 = v11;
  v44 = *(v41 + 80 * v11);
  v45 = v43;
  v46 = v42;
  while (1)
  {
    v47 = *(v46 - 80);
    v48 = v44;
    v49 = v47;
    sub_257E4FDE8(a2);
    v128 = v50;
    sub_257E4FDE8(a2);
    v135 = v51;

    v52 = vsubq_f32(v128, a2);
    v53 = vmulq_f32(v52, v52);
    v54 = vsubq_f32(v135, a2);
    v55 = vmulq_f32(v54, v54);
    *v53.i8 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v53, v53, 8uLL), *&vextq_s8(v55, v55, 8uLL)), vadd_f32(vzip1_s32(*v53.i8, *v55.i8), vzip2_s32(*v53.i8, *v55.i8))));
    if ((vcgt_f32(vdup_lane_s32(*v53.i8, 1), *v53.i8).u32[0] & 1) == 0)
    {
LABEL_31:
      v11 = v124 + 1;
      v42 += 80;
      --v43;
      v7 = 80;
      if (v124 + 1 != v121)
      {
        goto LABEL_32;
      }

      v11 = v121;
      v9 = v116;
      v6 = a4;
      v10 = v119;
      if (v121 < v119)
      {
        goto LABEL_119;
      }

      goto LABEL_40;
    }

    if (!v41)
    {
      break;
    }

    v44 = *v46;
    v56 = *(v46 + 16);
    v57 = *(v46 + 32);
    v58 = *(v46 + 48);
    v59 = *(v46 + 64);
    v60 = *(v46 - 32);
    *(v46 + 32) = *(v46 - 48);
    *(v46 + 48) = v60;
    *(v46 + 64) = *(v46 - 16);
    v61 = *(v46 - 64);
    *v46 = *(v46 - 80);
    *(v46 + 16) = v61;
    *(v46 - 64) = v56;
    *(v46 - 48) = v57;
    *(v46 - 32) = v58;
    *(v46 - 16) = v59;
    *(v46 - 80) = v44;
    v46 -= 80;
    if (__CFADD__(v45++, 1))
    {
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
}

uint64_t sub_257DFBBE0(void **__dst, id *__src, id *a3, void **a4, float32x4_t a5)
{
  v5 = a4;
  v6 = a3;
  v7 = __src;
  v8 = __dst;
  v9 = __src - __dst;
  v10 = (__src - __dst) / 80;
  v11 = a3 - __src;
  v12 = (a3 - __src) / 80;
  if (v10 < v12)
  {
    if (a4 != __dst || &__dst[10 * v10] <= a4)
    {
      memmove(a4, __dst, 80 * v10);
    }

    v44 = &v5[10 * v10];
    if (v9 < 80)
    {
LABEL_6:
      v7 = v8;
      goto LABEL_31;
    }

    while (1)
    {
      if (v7 >= v6)
      {
        goto LABEL_6;
      }

      v15 = *v5;
      v16 = *v7;
      v17 = v15;
      sub_257E4FDE8(a5);
      v39 = v18;
      sub_257E4FDE8(a5);
      v41 = v19;

      v20 = vsubq_f32(v39, a5);
      v21 = vmulq_f32(v20, v20);
      v22 = vsubq_f32(v41, a5);
      v23 = vmulq_f32(v22, v22);
      *v21.i8 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v21, v21, 8uLL), *&vextq_s8(v23, v23, 8uLL)), vadd_f32(vzip1_s32(*v21.i8, *v23.i8), vzip2_s32(*v21.i8, *v23.i8))));
      if (vcgt_f32(vdup_lane_s32(*v21.i8, 1), *v21.i8).u32[0])
      {
        break;
      }

      v13 = v5;
      v14 = v8 == v5;
      v5 += 10;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v8 += 10;
      if (v5 >= v44)
      {
        goto LABEL_6;
      }
    }

    v13 = v7;
    v14 = v8 == v7;
    v7 += 10;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    memmove(v8, v13, 0x50uLL);
    goto LABEL_9;
  }

  if (a4 != __src || &__src[10 * v12] <= a4)
  {
    memmove(a4, __src, 80 * v12);
  }

  v44 = &v5[10 * v12];
  if (v11 >= 80 && v7 > v8)
  {
LABEL_20:
    __srca = v7 - 10;
    v6 -= 10;
    v24 = v44;
    do
    {
      v25 = *(v24 - 10);
      v24 -= 10;
      v26 = v6 + 10;
      v27 = *(v7 - 10);
      v28 = v25;
      v29 = v27;
      sub_257E4FDE8(a5);
      v40 = v30;
      sub_257E4FDE8(a5);
      v42 = v31;

      v32 = vsubq_f32(v40, a5);
      v33 = vmulq_f32(v32, v32);
      v34 = vsubq_f32(v42, a5);
      v35 = vmulq_f32(v34, v34);
      *v33.i8 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v33, v33, 8uLL), *&vextq_s8(v35, v35, 8uLL)), vadd_f32(vzip1_s32(*v33.i8, *v35.i8), vzip2_s32(*v33.i8, *v35.i8))));
      if (vcgt_f32(vdup_lane_s32(*v33.i8, 1), *v33.i8).u32[0])
      {
        if (v26 != v7)
        {
          memmove(v6, __srca, 0x50uLL);
        }

        if (v44 <= v5 || (v7 -= 10, __srca <= v8))
        {
          v7 = __srca;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      if (v26 != v44)
      {
        memmove(v6, v24, 0x50uLL);
      }

      v6 -= 10;
      v44 = v24;
    }

    while (v24 > v5);
    v44 = v24;
  }

LABEL_31:
  v36 = (v44 - v5) / 80;
  if (v7 != v5 || v7 >= &v5[10 * v36])
  {
    memmove(v7, v5, 80 * v36);
  }

  return 1;
}

uint64_t sub_257DFBFB0(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = (v2 | *a2) == 0;
  if (v2)
  {
    v4 = *a2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v5 = sub_257ECF500();
    v7 = v6;
    if (v5 == sub_257ECF500() && v7 == v8)
    {
      v3 = 1;
    }

    else
    {
      v3 = sub_257ED0640();
    }
  }

  return v3 & 1;
}

uint64_t sub_257DFC058@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || 1 << *(a3 + 32) <= result)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v5 = *(a3 + 48);
  v6 = v5 + *(*(type metadata accessor for Occupant() - 8) + 72) * result;

  return sub_257CA80C0(v6, a4);
}

void sub_257DFC100(unint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5)
{
  v8 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v9 = a4;
      }

      else
      {
        v9 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x259C72D40](a1, a2, v9);
      sub_257BD2C2C(0, a5);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_257BD2C2C(0, a5);
    if (sub_257ED01F0() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_257ED0200();
    swift_dynamicCast();
    v5 = v17;
    v10 = sub_257ECFF40();
    v11 = -1 << *(a4 + 32);
    v8 = v10 & ~v11;
    if ((*(a4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
    {
      v12 = ~v11;
      do
      {
        v13 = *(*(a4 + 48) + 8 * v8);
        v14 = sub_257ECFF50();

        if (v14)
        {
          goto LABEL_19;
        }

        v8 = (v8 + 1) & v12;
      }

      while (((*(a4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
    }

    __break(1u);
  }

  if ((v8 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v8)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v8 >> 6) + 56) >> v8) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v15 = *(*(a4 + 48) + 8 * v8);

  v16 = v15;
}

uint64_t sub_257DFC318(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 16 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_257DFC36C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_257ECCCF0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_257DFC400(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F6610);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_257DFC4E4(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v22 = a2;
  v24 = sub_257ECF120();
  v27 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v23 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_257ECF190();
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9A68);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - v8;
  v10 = sub_257ECF130();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257BD52CC();
  (*(v11 + 104))(v13, *MEMORY[0x277D851B8], v10);
  v14 = sub_257ECFD90();
  (*(v11 + 8))(v13, v10);
  (*(v7 + 16))(v9, v21, v6);
  v15 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v22;
  (*(v7 + 32))(v16 + v15, v9, v6);
  aBlock[4] = sub_257DFD1C0;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_257D231C0;
  aBlock[3] = &block_descriptor_55;
  v17 = _Block_copy(aBlock);
  sub_257ECC3F0();
  sub_257ECF150();
  v28 = MEMORY[0x277D84F90];
  sub_257BD5668();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
  sub_257BD56C0();
  v19 = v23;
  v18 = v24;
  sub_257ED0180();
  MEMORY[0x259C72880](0, v5, v19, v17);
  _Block_release(v17);

  (*(v27 + 8))(v19, v18);
  (*(v25 + 8))(v5, v26);
}

id sub_257DFC900()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F30);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v11[-v1];
  v3 = swift_projectBox();
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v5 = result;
    swift_beginAccess();
    sub_257C1C614(v3, v2);
    v6 = sub_257ECCB70();
    v7 = *(v6 - 8);
    v8 = 0;
    if ((*(v7 + 48))(v2, 1, v6) != 1)
    {
      v8 = sub_257ECCAE0();
      (*(v7 + 8))(v2, v6);
    }

    sub_257BE9040(MEMORY[0x277D84F90]);
    v9 = sub_257ECF3C0();

    v10 = [v5 openSensitiveURL:v8 withOptions:v9];

    v11[7] = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9A68);
    return sub_257ECF8D0();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_257DFCB40(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F30);
  v1[4] = swift_task_alloc();
  v1[5] = swift_task_alloc();
  v2 = sub_257ECC890();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_257DFCC48, 0, 0);
}

uint64_t sub_257DFCC48()
{
  v1 = v0[2];
  if (v1)
  {
    v2 = v1;
    sub_257EB69B8();
  }

  v3 = swift_allocBox();
  v5 = v4;
  sub_257ECCB60();
  sub_257ECC880();
  if ((".SavoyeLetPlainCC" & 0x2F00000000000000) == 0x2000000000000000)
  {
  }

  else
  {
    v18 = v3;
    v6 = v0[4];
    sub_257ECC870();
    MEMORY[0x259C6F380](7824750, 0xE300000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9A60);
    sub_257ECC830();
    *(swift_allocObject() + 16) = xmmword_257ED9BD0;
    sub_257ECC820();

    sub_257ECC820();
    sub_257ECC840();
    sub_257ECC850();
    v7 = sub_257ECCB70();
    v8 = *(v7 - 8);
    v9 = *(v8 + 48);
    v10 = v9(v6, 1, v7);
    v12 = v0[4];
    v11 = v0[5];
    if (v10 == 1)
    {
      sub_257ECCB60();
      v13 = v9(v12, 1, v7);
      v14 = v5;
      if (v13 != 1)
      {
        sub_257C1C684(v0[4]);
        v14 = v5;
      }
    }

    else
    {
      (*(v8 + 32))(v0[5], v0[4], v7);
      (*(v8 + 56))(v11, 0, 1, v7);
      v14 = v5;
    }

    sub_257CB4B80(v0[5], v14);
    v3 = v18;
  }

  v0[9] = v3;
  v15 = swift_task_alloc();
  v0[10] = v15;
  *v15 = v0;
  v15[1] = sub_257DFD014;
  v16 = MEMORY[0x277D839B0];

  return MEMORY[0x2822007B8](v0 + 11, 0, 0, 0xD000000000000021, 0x8000000257F06910, sub_257DFD1B8, v3, v16);
}

uint64_t sub_257DFD014()
{

  return MEMORY[0x2822009F8](sub_257DFD110, 0, 0);
}

uint64_t sub_257DFD110()
{
  (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));

  v1 = *(v0 + 88);

  v2 = *(v0 + 8);

  return v2(v1);
}

id sub_257DFD1C0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9A68);

  return sub_257DFC900();
}

uint64_t block_copy_helper_55(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_257ECC3F0();
}

MAGSettingsLoader __swiftcall MAGSettingsLoader.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for MAGSettingsLoader()
{
  result = qword_27F8F9A70;
  if (!qword_27F8F9A70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F8F9A70);
  }

  return result;
}

uint64_t sub_257DFD370(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v9 = sub_257ECF120();
  v25 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_257ECF190();
  v12 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257BD2C2C(0, &qword_281543F10);
  v23 = sub_257ECFD30();
  v15 = swift_allocObject();
  v15[2] = v4;
  v15[3] = a1;
  v15[4] = a2;
  v15[5] = a3;
  v15[6] = a4;
  aBlock[4] = sub_257E2876C;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_257D231C0;
  aBlock[3] = &block_descriptor_56;
  v16 = _Block_copy(aBlock);
  v17 = a4;
  v18 = v4;

  v19 = a3;

  sub_257ECF150();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_257E2C2E0(&qword_281544090, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
  sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480);
  sub_257ED0180();
  v20 = v23;
  MEMORY[0x259C72880](0, v14, v11, v16);
  _Block_release(v16);

  (*(v25 + 8))(v11, v9);
  return (*(v12 + 8))(v14, v24);
}

void sub_257DFD6C4()
{
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v0 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__cardPosition;
  swift_beginAccess();
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  aBlock = *v0;
  v55 = v1;
  LOBYTE(v56) = v2;
  v3 = qword_2815447E0;

  if (v3 != -1)
  {
    v4 = swift_once();
  }

  MEMORY[0x28223BE20](v4);
  sub_257ECFD50();

  if (v60 && v60 != 1)
  {

    goto LABEL_12;
  }

  v5 = sub_257ED0640();

  if (v5)
  {
LABEL_12:
    v9 = sub_257DFF054();
    v10 = *&v9[OBJC_IVAR____TtC16MagnifierSupport24MFMainCardViewController_cardContainer];

    v11 = *&v10[OBJC_IVAR____TtC16MagnifierSupport19MFCardContainerView_grabberView];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_257ED9BF0;
    type metadata accessor for MAGUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v14 = [objc_opt_self() bundleForClass_];
    v15 = sub_257ECF4C0();
    v16 = sub_257ECF4C0();
    v17 = [v14 localizedStringForKey:v15 value:0 table:v16];

    if (!v17)
    {
      sub_257ECF500();
      v17 = sub_257ECF4C0();
    }

    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v19 = objc_allocWithZone(MEMORY[0x277D75088]);
    v58 = sub_257E2D170;
    v59 = v18;
    aBlock = MEMORY[0x277D85DD0];
    v55 = 1107296256;
    v20 = &block_descriptor_605;
    goto LABEL_15;
  }

  v7 = *(v0 + 8);
  v8 = *(v0 + 16);
  aBlock = *v0;
  v55 = v7;
  LOBYTE(v56) = v8;
  MEMORY[0x28223BE20](v6);

  sub_257ECFD50();

  if (!v60 || v60 != 1)
  {
    v23 = sub_257ED0640();

    if (v23)
    {
      goto LABEL_17;
    }

    v46 = sub_257DFF054();
    v47 = *&v46[OBJC_IVAR____TtC16MagnifierSupport24MFMainCardViewController_cardContainer];

    v11 = *&v47[OBJC_IVAR____TtC16MagnifierSupport19MFCardContainerView_grabberView];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_257ED9BF0;
    type metadata accessor for MAGUtilities();
    v48 = swift_getObjCClassFromMetadata();
    v49 = [objc_opt_self() bundleForClass_];
    v50 = sub_257ECF4C0();
    v51 = sub_257ECF4C0();
    v17 = [v49 localizedStringForKey:v50 value:0 table:v51];

    if (!v17)
    {
      sub_257ECF500();
      v17 = sub_257ECF4C0();
    }

    v52 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v19 = objc_allocWithZone(MEMORY[0x277D75088]);
    v58 = sub_257E2BC80;
    v59 = v52;
    aBlock = MEMORY[0x277D85DD0];
    v55 = 1107296256;
    v20 = &block_descriptor_593;
LABEL_15:
    v56 = sub_257D96328;
    v57 = v20;
    v21 = _Block_copy(&aBlock);
    sub_257ECC3F0();
    v22 = [v19 initWithName:v17 actionHandler:v21];

    _Block_release(v21);

    *(v12 + 32) = v22;
    goto LABEL_22;
  }

LABEL_17:
  v24 = sub_257DFF054();
  v25 = *&v24[OBJC_IVAR____TtC16MagnifierSupport24MFMainCardViewController_cardContainer];

  v53 = *&v25[OBJC_IVAR____TtC16MagnifierSupport19MFCardContainerView_grabberView];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_257ED9BE0;
  type metadata accessor for MAGUtilities();
  v27 = swift_getObjCClassFromMetadata();
  v28 = objc_opt_self();
  v29 = [v28 bundleForClass_];
  v30 = sub_257ECF4C0();
  v31 = sub_257ECF4C0();
  v32 = [v29 localizedStringForKey:v30 value:0 table:v31];

  if (!v32)
  {
    sub_257ECF500();
    v32 = sub_257ECF4C0();
  }

  v33 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v34 = objc_allocWithZone(MEMORY[0x277D75088]);
  v58 = sub_257E2BCA4;
  v59 = v33;
  aBlock = MEMORY[0x277D85DD0];
  v55 = 1107296256;
  v56 = sub_257D96328;
  v57 = &block_descriptor_597;
  v35 = _Block_copy(&aBlock);
  sub_257ECC3F0();
  v36 = [v34 initWithName:v32 actionHandler:v35];

  _Block_release(v35);

  *(v26 + 32) = v36;
  v37 = [v28 bundleForClass_];
  v38 = sub_257ECF4C0();
  v39 = sub_257ECF4C0();
  v40 = [v37 localizedStringForKey:v38 value:0 table:v39];

  if (!v40)
  {
    sub_257ECF500();
    v40 = sub_257ECF4C0();
  }

  v41 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = objc_allocWithZone(MEMORY[0x277D75088]);
  v58 = sub_257E2BCC8;
  v59 = v41;
  aBlock = MEMORY[0x277D85DD0];
  v55 = 1107296256;
  v56 = sub_257D96328;
  v57 = &block_descriptor_601;
  v43 = _Block_copy(&aBlock);
  sub_257ECC3F0();
  v44 = [v42 initWithName:v40 actionHandler:v43];

  _Block_release(v43);

  *(v26 + 40) = v44;
  v11 = v53;
LABEL_22:
  sub_257BD2C2C(0, &qword_281543E70);
  v45 = sub_257ECF7F0();

  [v11 setAccessibilityCustomActions_];
}

void sub_257DFE168()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectedObjectView);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectedPersonView);
    if (v2)
    {
      v3 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pulseFeedbackProcessor);
      v4 = OBJC_IVAR____TtC16MagnifierSupport25MAGPulseFeedbackProcessor_toneGenerator;
      swift_beginAccess();
      v5 = *(v3 + v4);
      v6 = v1;
      v7 = v2;
      [v5 stopPulse];
      v8 = OBJC_IVAR____TtC16MagnifierSupport25MAGPulseFeedbackProcessor_doorToneGenerator;
      swift_beginAccess();
      [*(v3 + v8) stopPulse];
      v9 = OBJC_IVAR____TtC16MagnifierSupport25MAGPulseFeedbackProcessor_objectUnderstandingToneGenerator;
      swift_beginAccess();
      [*(v3 + v9) stopPulse];
      v10 = OBJC_IVAR____TtC16MagnifierSupport25MAGPulseFeedbackProcessor_pointSpeakDistanceToneGenerator;
      swift_beginAccess();
      [*(v3 + v10) stopPulse];
      v11 = OBJC_IVAR____TtC16MagnifierSupport12DetectedView_isDepthHidden;
      swift_beginAccess();
      v6[v11] = 1;
      v12 = *&v6[OBJC_IVAR____TtC16MagnifierSupport12DetectedView__positionLabel];
      v13 = v6;
      [v12 setHidden_];
      if (v6[v11] == 1)
      {
        [*&v13[OBJC_IVAR____TtC16MagnifierSupport12DetectedView__dottedLineLabel] setHidden_];
      }

      v14 = OBJC_IVAR____TtC16MagnifierSupport12DetectedView_isDepthHidden;
      swift_beginAccess();
      v7[v14] = 1;
      v15 = *&v7[OBJC_IVAR____TtC16MagnifierSupport12DetectedView__positionLabel];
      v16 = v7;
      [v15 setHidden_];
      if (v7[v14] == 1)
      {
        [*&v16[OBJC_IVAR____TtC16MagnifierSupport12DetectedView__dottedLineLabel] setHidden_];
      }

      v17 = (*(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_objectUnderstandingService) + OBJC_IVAR____TtC16MagnifierSupport29MAGObjectUnderstandingService_detectedTargetObject);
      v24[0] = *v17;
      v18 = v17[1];
      v19 = v17[2];
      v20 = v17[4];
      v24[3] = v17[3];
      v24[4] = v20;
      v24[1] = v18;
      v24[2] = v19;
      *v17 = 0u;
      v17[1] = 0u;
      v17[2] = 0u;
      v17[3] = 0u;
      v17[4] = 0u;
      sub_257BE4084(v24, &qword_27F8F9C90);
      v21 = (v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_lastAnnouncement);
      *v21 = 0;
      v21[1] = 0xE000000000000000;

      v22 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectionLabel);
      v23 = sub_257ECF4C0();
      [v22 setText_];
    }
  }
}

uint64_t sub_257DFE438(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  sub_257ECC3F0();
  v3(a2);
}

uint64_t (*sub_257DFE48C(uint64_t **a1, uint64_t a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_257E28C64(v4, a2);
  return sub_257E2D164;
}

uint64_t (*sub_257DFE504(uint64_t **a1, uint64_t a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_257E28D08(v4, a2);
  return sub_257DFE57C;
}

void sub_257DFE580(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

void sub_257DFE5CC()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectedPersonView;
  if (*(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectedPersonView) && UIAccessibilityIsVoiceOverRunning())
  {
    v2 = sub_257DFF59C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_257ED9BF0;
    type metadata accessor for MAGUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v5 = objc_opt_self();
    v27 = ObjCClassFromMetadata;
    v6 = [v5 bundleForClass_];
    v7 = sub_257ECF4C0();
    v8 = sub_257ECF4C0();
    v9 = [v6 localizedStringForKey:v7 value:0 table:v8];

    if (!v9)
    {
      sub_257ECF500();
      v9 = sub_257ECF4C0();
    }

    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v11 = objc_allocWithZone(MEMORY[0x277D75088]);
    v32 = sub_257E2CADC;
    v33 = v10;
    aBlock = MEMORY[0x277D85DD0];
    v29 = 1107296256;
    v30 = sub_257D96328;
    v31 = &block_descriptor_1006;
    v12 = _Block_copy(&aBlock);
    sub_257ECC3F0();
    v13 = [v11 initWithName:v9 actionHandler:v12];

    _Block_release(v12);

    *(v3 + 32) = v13;
    sub_257BD2C2C(0, &qword_281543E70);
    v14 = sub_257ECF7F0();

    [v2 setAccessibilityCustomActions_];

    v15 = *(v0 + v1);
    if (v15)
    {
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_257ED9BF0;
      v17 = v15;
      v18 = [v5 bundleForClass_];
      v19 = sub_257ECF4C0();
      v20 = sub_257ECF4C0();
      v21 = [v18 localizedStringForKey:v19 value:0 table:v20];

      if (!v21)
      {
        sub_257ECF500();
        v21 = sub_257ECF4C0();
      }

      v22 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v23 = objc_allocWithZone(MEMORY[0x277D75088]);
      v32 = sub_257E2CB18;
      v33 = v22;
      aBlock = MEMORY[0x277D85DD0];
      v29 = 1107296256;
      v30 = sub_257D96328;
      v31 = &block_descriptor_1010;
      v24 = _Block_copy(&aBlock);
      sub_257ECC3F0();
      v25 = [v23 initWithName:v21 actionHandler:v24];

      _Block_release(v24);

      *(v16 + 32) = v25;
      v26 = sub_257ECF7F0();

      [v17 setAccessibilityCustomActions_];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_257DFEA6C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_257ED9BE0;
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  v4 = sub_257ECF4C0();
  v5 = sub_257ECF4C0();
  v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

  if (!v6)
  {
    sub_257ECF500();
    v6 = sub_257ECF4C0();
  }

  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = objc_allocWithZone(MEMORY[0x277D75088]);
  v25 = sub_257E2C348;
  v26 = v7;
  aBlock = MEMORY[0x277D85DD0];
  v22 = 1107296256;
  v23 = sub_257D96328;
  v24 = &block_descriptor_847;
  v9 = _Block_copy(&aBlock);
  sub_257ECC3F0();
  v10 = [v8 initWithName:v6 actionHandler:v9];

  _Block_release(v9);

  *(v0 + 32) = v10;
  v11 = [v2 bundleForClass_];
  v12 = sub_257ECF4C0();
  v13 = sub_257ECF4C0();
  v14 = [v11 localizedStringForKey:v12 value:0 table:v13];

  if (!v14)
  {
    sub_257ECF500();
    v14 = sub_257ECF4C0();
  }

  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = objc_allocWithZone(MEMORY[0x277D75088]);
  v25 = sub_257E2C350;
  v26 = v15;
  aBlock = MEMORY[0x277D85DD0];
  v22 = 1107296256;
  v23 = sub_257D96328;
  v24 = &block_descriptor_851;
  v17 = _Block_copy(&aBlock);
  sub_257ECC3F0();
  v18 = [v16 initWithName:v14 actionHandler:v17];

  _Block_release(v17);

  *(v0 + 40) = v18;
  sub_257BD2C2C(0, &qword_281543E70);
  v19 = sub_257ECF7F0();

  [v20 setAccessibilityCustomActions_];
}

uint64_t sub_257DFEEEC()
{
  result = sub_257ECF4C0();
  qword_281548090 = result;
  return result;
}

uint64_t sub_257DFEF24()
{
  result = sub_257ECF4C0();
  qword_281548098 = result;
  return result;
}

id sub_257DFEF64()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___controlContainer;
  v2 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___controlContainer);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___controlContainer);
  }

  else
  {
    type metadata accessor for ControlContainerView();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v5 = qword_281544FE0;
    v6 = v4;
    if (v5 != -1)
    {
      swift_once();
    }

    [v6 setUserInteractionEnabled_];

    *(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_isControlContainerViewLoaded) = 1;
    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

void sub_257DFF074(uint64_t a1)
{
  v2 = sub_257DFEF64();
  v3 = sub_257DFF3FC();
  v4 = [v3 view];

  if (v4)
  {
    v5 = type metadata accessor for MFContainedCardView();
    v6 = objc_allocWithZone(v5);
    *&v6[OBJC_IVAR____TtC16MagnifierSupport19MFContainedCardView_dynamicConstraints] = MEMORY[0x277D84F90];
    v7 = &v6[OBJC_IVAR____TtC16MagnifierSupport19MFContainedCardView_headerView];
    *v7 = v2;
    *(v7 + 1) = &off_28690A258;
    *&v6[OBJC_IVAR____TtC16MagnifierSupport19MFContainedCardView_footerView] = v4;
    v25.receiver = v6;
    v25.super_class = v5;
    v8 = v4;
    v9 = objc_msgSendSuper2(&v25, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    v10 = *&v9[OBJC_IVAR____TtC16MagnifierSupport19MFContainedCardView_headerView];
    v11 = v9;
    [v11 addSubview_];
    [v11 addSubview_];
    sub_257DD0E2C();

    v12 = v11;
    v13 = sub_257ECF4C0();
    [v12 setAccessibilityIdentifier_];

    v14 = objc_allocWithZone(type metadata accessor for MFMainCardViewController());
    v15 = v12;
    v16 = sub_257EB1D60(v15);
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v24[4] = sub_257E2C364;
    v24[5] = v17;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 1107296256;
    v24[2] = sub_257DFF3BC;
    v24[3] = &block_descriptor_863;
    v18 = _Block_copy(v24);
    v19 = v16;

    [v19 setAccessibilityMagicTapBlock_];
    _Block_release(v18);

    v20 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___cameraTrayViewController;
    v21 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___cameraTrayViewController);
    v22 = v19;
    [v22 addChildViewController_];
    v23 = *(a1 + v20);
    [v23 didMoveToParentViewController_];
  }

  else
  {
    __break(1u);
  }
}

void *sub_257DFF31C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = *(Strong + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectionModeView);
  v2 = Strong;
  v3 = v1;

  if (v1)
  {
    v4 = [v3 isHidden];
    if ((v4 & 1) == 0)
    {
      [DetectionModeView toggleDetection]_0();
    }

    v1 = (v4 ^ 1);
  }

  return v1;
}

uint64_t sub_257DFF3BC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_257ECC3F0();
  LOBYTE(v1) = v1(v2);

  return v1 & 1;
}

id sub_257DFF41C(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

char *sub_257DFF480()
{
  type metadata accessor for CameraTrayViewController();
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v0[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_captureDelegate + 8] = &off_28690DFA8;
  swift_unknownObjectWeakAssign();
  *&v0[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_detectionModeDelegate + 8] = &off_286912058;
  swift_unknownObjectWeakAssign();
  *&v0[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_settingsDelegate + 8] = &off_286911E48;
  swift_unknownObjectWeakAssign();
  *&v0[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_switchActivityDelegate + 8] = &off_286911E38;
  swift_unknownObjectWeakAssign();
  *&v0[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_freezeFrameDelegate + 8] = &off_286912000;
  swift_unknownObjectWeakAssign();
  *&v0[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_quickReaderModeDelegate + 8] = &off_286911BD0;
  swift_unknownObjectWeakAssign();
  return v0;
}

id sub_257DFF59C()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___cameraVideoPreviewView;
  v2 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___cameraVideoPreviewView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___cameraVideoPreviewView);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for MFLivePreviewView()) initWithFrame_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_257DFF620()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___doubleTapGesture;
  v2 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___doubleTapGesture);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___doubleTapGesture);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v0 action:sel_didActivateCardVisibilityGesture_];
    [v4 setNumberOfTouchesRequired_];
    [v4 setNumberOfTapsRequired_];
    [v4 setDelegate_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_257DFF708()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_captureAttemptDidSucceed;
  if (*(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_captureAttemptDidSucceed) != 1)
  {
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECC3F0();
    sub_257ECDD70();
    goto LABEL_14;
  }

  v3 = sub_257DFF3FC();
  sub_257D91C68();

  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v12 && v12 == 1)
  {
  }

  else
  {
    v4 = sub_257ED0640();

    if ((v4 & 1) == 0)
    {
LABEL_14:
      v10 = sub_257DFF3FC();
      v11 = sub_257D83290();

      [v11 setUserInteractionEnabled_];
      return;
    }
  }

  v5 = sub_257DFF59C();
  v6 = [v5 layer];
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    v8 = v7;
    [v7 setAutomaticallyDimsOverCaptureRegion_];

    v9 = [v8 connection];
    if (v9)
    {
      [v9 setEnabled_];
    }

    goto LABEL_14;
  }

  sub_257ED0410();
  __break(1u);
}

uint64_t sub_257DFF9F8(char a1)
{
  v2 = v1;
  v4 = sub_257ECF120();
  v16 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_257ECF190();
  v7 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  *(xmmword_281548330 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment8LiveLens_isInCapture) = a1 & 1;
  sub_257BD2C2C(0, &qword_281543F10);
  v10 = sub_257ECFD30();
  v11 = swift_allocObject();
  *(v11 + 16) = v2;
  *(v11 + 24) = a1 & 1;
  aBlock[4] = sub_257E2C358;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_257D231C0;
  aBlock[3] = &block_descriptor_859;
  v12 = _Block_copy(aBlock);
  v13 = v2;

  sub_257ECF150();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_257E2C2E0(&qword_281544090, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
  sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480);
  sub_257ED0180();
  MEMORY[0x259C72880](0, v9, v6, v12);
  _Block_release(v12);

  (*(v16 + 8))(v6, v4);
  return (*(v7 + 8))(v9, v15);
}

void sub_257DFFD40(uint64_t a1, char a2)
{
  v4 = sub_257DFF3FC();
  v5 = sub_257D832B0();

  if (a2)
  {
    v6 = 0;
  }

  else
  {
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    v6 = v11 ^ 1;
  }

  [v5 setEnabled_];

  v7 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___cameraTrayViewController);
  v8 = sub_257D832B0();

  v9 = a2 ^ 1;
  [v8 setUserInteractionEnabled_];

  if (*(a1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_isControlContainerViewLoaded) == 1)
  {
    v10 = sub_257DFEF64();
    [v10 setUserInteractionEnabled_];
  }
}

id sub_257DFFEAC()
{
  v0 = [objc_opt_self() defaultConfiguration];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8FB2D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_257EDBBA0;
  v2 = MEMORY[0x277D837D0];
  sub_257ED0280();
  *(inited + 96) = v2;
  *(inited + 72) = 0x6D6F74737563;
  *(inited + 80) = 0xE600000000000000;
  sub_257ED0280();
  *(inited + 168) = MEMORY[0x277D83E88];
  *(inited + 144) = 29527;
  sub_257ED0280();
  v3 = sub_257BEA014(&unk_286906150);
  sub_257BE4084(&unk_286906170, &qword_27F8F9EF0);
  *(inited + 240) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FB2E0);
  *(inited + 216) = v3;
  sub_257BE88A0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F54A0);
  swift_arrayDestroy();
  v4 = sub_257ECF3C0();

  v5 = [objc_opt_self() feedbackWithDictionaryRepresentation_];

  [v0 setFeedback_];
  [v0 setMinimumInterval_];
  v6 = [objc_allocWithZone(MEMORY[0x277D755F0]) initWithConfiguration_];
  [v6 _setOutputMode_];

  return v6;
}

id sub_257E00134()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___focusIndicator;
  v2 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___focusIndicator);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___focusIndicator);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for FocusIndicatorView()) init];
    [v4 sizeToFit];
    [v4 setAlpha_];

    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_257E001D8()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___coachingLabel;
  v2 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___coachingLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___coachingLabel);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for MFInformationLabel()) init];
    v5 = sub_257CA9DF0();
    [v4 setFont_];

    v6 = [objc_opt_self() whiteColor];
    [v4 setTextColor_];

    v7 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_257E002B8()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___landscapeCoachingLabel;
  v2 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___landscapeCoachingLabel);
  v3 = v2;
  if (v2 == 1)
  {
    if (qword_27F8F4670 != -1)
    {
      swift_once();
    }

    if (byte_27F8F8D89 == 1)
    {
      v3 = [objc_allocWithZone(type metadata accessor for MFInformationLabel()) init];
      v4 = sub_257CA9DF0();
      [v3 setFont_];

      v5 = [objc_opt_self() whiteColor];
      [v3 setTextColor_];
    }

    else
    {
      v3 = 0;
    }

    v6 = *(v0 + v1);
    *(v0 + v1) = v3;
    v7 = v3;
    sub_257CC8CC0(v6);
  }

  sub_257CC9350(v2);
  return v3;
}

id sub_257E00408()
{
  v0 = [objc_allocWithZone(type metadata accessor for MFInformationLabel()) init];
  v1 = sub_257CA9DF0();
  [v0 setFont_];

  v2 = [objc_opt_self() whiteColor];
  [v0 setTextColor_];

  v3 = objc_allocWithZone(MEMORY[0x277D75348]);
  v4 = v0;
  v5 = [v3 initWithWhite:0.1 alpha:1.0];
  [v4 setBackgroundColor_];

  return v4;
}

id sub_257E00504()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___landscapeDetectionInformationLabel;
  v2 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___landscapeDetectionInformationLabel);
  v3 = v2;
  if (v2 == 1)
  {
    if (qword_27F8F4670 != -1)
    {
      swift_once();
    }

    if (byte_27F8F8D89 == 1)
    {
      v4 = [objc_allocWithZone(type metadata accessor for MFInformationLabel()) init];
      v5 = sub_257CA9DF0();
      [v4 setFont_];

      v6 = [objc_opt_self() whiteColor];
      [v4 setTextColor_];

      v7 = objc_allocWithZone(MEMORY[0x277D75348]);
      v3 = v4;
      v8 = [v7 initWithWhite:0.1 alpha:1.0];
      [v3 setBackgroundColor_];
    }

    else
    {
      v3 = 0;
    }

    v9 = *(v0 + v1);
    *(v0 + v1) = v3;
    v10 = v3;
    sub_257CC8CC0(v9);
  }

  sub_257CC9350(v2);
  return v3;
}

uint64_t sub_257E00684@<X0>(uint64_t *a1@<X8>)
{
  result = sub_257D5C5AC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_257E006B0()
{
  v29 = sub_257ECF130();
  v1 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_257ECFD10();
  v33 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v25 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9DD8);
  v30 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v6 = &v25 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9DE0);
  v8 = *(v7 - 8);
  v31 = v7;
  v32 = v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - v9;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9DE8);
  v36 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v26 = &v25 - v11;
  v27 = v0;
  v12 = v0;
  v13 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_activeControlDescriptionPublishers);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9DF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_257ED6D30;
  *(inited + 32) = *(v12 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_freezeFrameModeDescriptionPublisher);
  v37 = v13;

  sub_257ECC3F0();
  sub_257EB0ED4(inited);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9DF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9E00);
  sub_257BD2D4C(&unk_2815441D8, &qword_27F8F9DF8);
  sub_257BD2D4C(&qword_281543FC0, &unk_27F8F9E00);
  sub_257ECDC90();
  v15 = v25;
  sub_257ECFD00();
  sub_257BD2C2C(0, &qword_281543F10);
  v16 = v29;
  (*(v1 + 104))(v3, *MEMORY[0x277D851C0], v29);
  v17 = sub_257ECFD90();
  (*(v1 + 8))(v3, v16);
  v37 = v17;
  sub_257BD2D4C(&qword_281544288, &qword_27F8F9DD8);
  sub_257CA64A0(&qword_281543F20, &qword_281543F10);
  v18 = v28;
  sub_257ECDE00();

  (*(v33 + 8))(v15, v35);
  (*(v30 + 8))(v6, v18);
  sub_257BD2D4C(&qword_281544290, &qword_27F8F9DE0);
  v19 = v26;
  v20 = v31;
  sub_257ECDE10();
  (*(v32 + 8))(v10, v20);
  swift_allocObject();
  v21 = v27;
  swift_unknownObjectWeakInit();
  sub_257BD2D4C(&unk_281544348, &qword_27F8F9DE8);
  v22 = v34;
  v23 = sub_257ECDE50();

  (*(v36 + 8))(v19, v22);
  *(v21 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_informationSubscription) = v23;
}

uint64_t sub_257E00D08(uint64_t *a1)
{
  v2 = sub_257ECF120();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_257ECF190();
  v18 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = a1[1];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = result;
    sub_257BD2C2C(0, &qword_281543F10);
    v17 = sub_257ECFD30();
    v13 = swift_allocObject();
    v13[2] = v9;
    v13[3] = v10;
    v13[4] = v12;
    aBlock[4] = sub_257E2C2D4;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_257D231C0;
    aBlock[3] = &block_descriptor_836;
    v14 = _Block_copy(aBlock);

    v16 = v12;

    sub_257ECF150();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_257E2C2E0(&qword_281544090, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
    sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480);
    sub_257ED0180();
    v15 = v17;
    MEMORY[0x259C72880](0, v8, v5, v14);
    _Block_release(v14);

    (*(v3 + 8))(v5, v2);
    return (*(v18 + 8))(v8, v6);
  }

  return result;
}

void sub_257E01044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v14 == 7 && (v4 = [objc_opt_self() defaultDeviceWithDeviceType:*MEMORY[0x277CE5890] mediaType:*MEMORY[0x277CE5EA8] position:0]) != 0)
  {
    v5 = v4;
    v6 = [v4 localizedName];
    sub_257ECF500();
  }

  else
  {
  }

  sub_257BDAB08();
  v7 = sub_257ED0100();
  v9 = v8;

  v10 = sub_257DFF054();
  v11 = sub_257EB1B80();

  v12 = *(a3 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___mainCardViewController);
  v13 = sub_257EB1BE0();

  sub_257DFD370(v7, v9, v11, v13);
}

unint64_t sub_257E01274()
{
  v0 = sub_257BEA590(MEMORY[0x277D84F90]);
  for (i = 0; i != 16; ++i)
  {
    v2 = sub_257C040E4(*(&unk_286903790 + i + 32));
    if (v3)
    {
      v4 = v2;
      if (!swift_isUniquelyReferenced_nonNull_native())
      {
        sub_257C0956C();
      }

      sub_257C0761C(v4, v0);
    }
  }

  return v0;
}

id sub_257E0131C()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___personDetectionManager;
  v2 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___personDetectionManager);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___personDetectionManager);
  }

  else
  {
    v4 = objc_allocWithZone(PersonDetectionManager);
    LODWORD(v5) = 1017370378;
    LODWORD(v6) = 1209170944;
    LODWORD(v7) = 2.0;
    v8 = [v4 initWithCenterDetectionSize:25.0 labellingTolerance:25.0 significantAreaThresholdMM:v5 closeDetectionFactor:{v6, v7}];
    v9 = *(v0 + v1);
    *(v0 + v1) = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

void *sub_257E013B4()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___anstPersonDetectionManager;
  if (*(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___anstPersonDetectionManager))
  {
    v2 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___anstPersonDetectionManager);
  }

  else
  {
    v3 = v0;
    type metadata accessor for ANSTPersonDetectionManager();
    swift_allocObject();
    v2 = ANSTPersonDetectionManager.init()();
    *(v3 + v1) = v2;
    sub_257ECC3F0();
  }

  sub_257ECC3F0();
  return v2;
}

void sub_257E01458()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_257ED9BF0;
  *(v2 + 32) = sub_257DFF59C();
  v3 = type metadata accessor for MFPassthroughView();
  v4 = objc_allocWithZone(v3);
  v4[OBJC_IVAR____TtC16MagnifierSupport17MFPassthroughView_enabled] = 1;
  *&v4[OBJC_IVAR____TtC16MagnifierSupport17MFPassthroughView_heightOfPanAreaAboveDrawer] = 0x403E000000000000;
  *&v4[OBJC_IVAR____TtC16MagnifierSupport17MFPassthroughView_exemptViews] = v2;
  v14.receiver = v4;
  v14.super_class = v3;
  v5 = objc_msgSendSuper2(&v14, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v6 = *&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_passthroughView];
  *&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_passthroughView] = v5;
  v7 = v5;

  [v1 setView_];
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  sub_257D64014();
  v8 = *&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pipWindowButton];
  if (sub_257E08680())
  {
    v9 = 1.0;
  }

  else
  {
    v9 = 0.0;
  }

  [v8 setAlpha_];

  v10 = *&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_closeImageWellButton];
  if (v10)
  {
    v11 = v10;
    v12 = sub_257E08680();
    v13 = 0.0;
    if (v12)
    {
      v13 = 1.0;
    }

    [v11 setAlpha_];
  }
}

id sub_257E01688(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2();
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_257E016E8()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  v1 = objc_opt_self();
  v2 = [v1 systemRedColor];
  [v0 setBackgroundColor_];

  v3 = [v0 layer];
  [v3 setCornerRadius_];

  v4 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v5 = sub_257ECF4C0();
  [v4 setText_];

  v6 = [objc_opt_self() boldSystemFontOfSize_];
  [v4 setFont_];

  v7 = [v1 whiteColor];
  [v4 setTextColor_];

  v8 = v4;
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 addSubview_];
  v9 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_257EDBE40;
  v11 = [v8 centerXAnchor];
  v12 = [v0 centerXAnchor];
  v13 = [v11 constraintEqualToAnchor_];

  *(v10 + 32) = v13;
  v14 = [v8 centerYAnchor];
  v15 = [v0 centerYAnchor];
  v16 = [v14 constraintEqualToAnchor_];

  *(v10 + 40) = v16;
  v17 = [v8 leadingAnchor];
  v18 = [v0 leadingAnchor];
  v19 = [v17 constraintGreaterThanOrEqualToAnchor:v18 constant:8.0];

  *(v10 + 48) = v19;
  v20 = [v8 trailingAnchor];

  v21 = [v0 trailingAnchor];
  v22 = [v20 constraintLessThanOrEqualToAnchor:v21 constant:-8.0];

  *(v10 + 56) = v22;
  sub_257BD2C2C(0, &qword_281543EF0);
  v23 = sub_257ECF7F0();

  [v9 activateConstraints_];

  return v0;
}

void sub_257E01ACC()
{
  v1 = v0;
  v2 = sub_257ECF130();
  v198 = *(v2 - 8);
  v199 = v2;
  MEMORY[0x28223BE20](v2);
  v197 = &v185 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9E30);
  MEMORY[0x28223BE20](v4 - 8);
  v196 = &v185 - v5;
  v6 = sub_257ECF120();
  v194 = *(v6 - 8);
  v195 = v6;
  MEMORY[0x28223BE20](v6);
  v193 = &v185 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v200 = sub_257ECF190();
  v192 = *(v200 - 8);
  MEMORY[0x28223BE20](v200);
  v191 = &v185 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AppViewController();
  v216.receiver = v0;
  v216.super_class = v9;
  objc_msgSendSuper2(&v216, sel_viewDidLoad);
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v10 = qword_281548348;
  v11 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__storedColorFilter;
  swift_beginAccess();
  v12 = *(v11 + 8);
  v13 = *(v11 + 16);
  v203 = *v11;
  v204 = v12;
  LOBYTE(v205) = v13;
  v14 = qword_2815447E0;

  if (v14 != -1)
  {
    v15 = swift_once();
  }

  MEMORY[0x28223BE20](v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9E70);
  sub_257ECFD50();

  v16 = v215;
  if (v215 != 12)
  {
    goto LABEL_8;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (*(v203 + 2))
  {
    v16 = v203[32];

LABEL_8:
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v203) = v16;
    sub_257ECC3F0();
    sub_257ECDD70();
    goto LABEL_9;
  }

LABEL_9:
  v17 = v10 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__doorDetectionExitStatus;
  v18 = swift_beginAccess();
  v19 = *(v17 + 8);
  v20 = *(v17 + 16);
  v203 = *v17;
  v204 = v19;
  LOBYTE(v205) = v20;
  MEMORY[0x28223BE20](v18);

  sub_257ECFD50();

  LOBYTE(v19) = v214;
  sub_257D71A24(v214);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v203) = v19;
  sub_257ECC3F0();
  sub_257ECDD70();
  v21 = v10 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__peopleDetectionExitStatus;
  v22 = swift_beginAccess();
  v23 = *(v21 + 8);
  v24 = *(v21 + 16);
  v203 = *v21;
  v204 = v23;
  LOBYTE(v205) = v24;
  MEMORY[0x28223BE20](v22);

  sub_257ECFD50();

  LOBYTE(v21) = v213;
  sub_257D71A04(v213);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v203) = v21;
  sub_257ECC3F0();
  sub_257ECDD70();
  v25 = v10 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__imageCaptionExitStatus;
  v26 = swift_beginAccess();
  v27 = *(v25 + 8);
  v28 = *(v25 + 16);
  v203 = *v25;
  v204 = v27;
  LOBYTE(v205) = v28;
  MEMORY[0x28223BE20](v26);

  sub_257ECFD50();

  LOBYTE(v25) = v212;
  sub_257D71A84(v212);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v203) = v25;
  sub_257ECC3F0();
  sub_257ECDD70();
  v29 = v10 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__pointSpeakExitStatus;
  v30 = swift_beginAccess();
  v31 = *(v29 + 8);
  v32 = *(v29 + 16);
  v203 = *v29;
  v204 = v31;
  LOBYTE(v205) = v32;
  MEMORY[0x28223BE20](v30);

  sub_257ECFD50();

  LOBYTE(v29) = v211;
  sub_257D71A44(v211);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v203) = v29;
  sub_257ECC3F0();
  sub_257ECDD70();
  v33 = v10 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__textDetectionExitStatus;
  v34 = swift_beginAccess();
  v35 = *(v33 + 8);
  v36 = *(v33 + 16);
  v203 = *v33;
  v204 = v35;
  LOBYTE(v205) = v36;
  MEMORY[0x28223BE20](v34);

  sub_257ECFD50();

  LOBYTE(v33) = v210;
  sub_257D71A64(v210);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v203) = v33;
  sub_257ECC3F0();
  sub_257ECDD70();
  v37 = v10 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__objectUnderstandingExitStatus;
  v38 = swift_beginAccess();
  v39 = *(v37 + 8);
  v40 = *(v37 + 16);
  v203 = *v37;
  v204 = v39;
  LOBYTE(v205) = v40;
  MEMORY[0x28223BE20](v38);

  sub_257ECFD50();

  v41 = v209;
  sub_257D719C4(v209);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v203) = v41;
  sub_257ECC3F0();
  sub_257ECDD70();
  v42 = [v1 view];
  if (!v42)
  {
    __break(1u);
    goto LABEL_56;
  }

  v43 = v42;
  v41 = sub_257DFF59C();
  [v43 addSubview_];

  v44 = [v1 view];
  if (!v44)
  {
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v45 = v44;
  v46 = sub_257E00134();
  [v45 addSubview_];

  v47 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pipWindowButton;
  v48 = *&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pipWindowButton];
  v49 = objc_opt_self();
  v50 = v48;
  v51 = [v49 systemBlackColor];
  [v50 setBackgroundColor_];

  v201 = v47;
  v41 = *&v1[v47];
  v52 = sub_257ECF4C0();
  v53 = objc_opt_self();
  v54 = [v53 systemImageNamed_];

  if (v54)
  {
    v55 = [objc_opt_self() configurationWithPointSize:4 weight:-1 scale:25.0];
    v56 = [v54 imageByApplyingSymbolConfiguration_];

    if (v56)
    {
      v57 = [v56 imageWithRenderingMode_];

      v58 = [v49 whiteColor];
      v54 = [v57 imageWithTintColor_];
    }

    else
    {
      v54 = 0;
    }
  }

  v59 = OBJC_IVAR____TtC16MagnifierSupport9ImageWell_infiniteSettingsGlyph;
  swift_beginAccess();
  v60 = *&v41[v59];
  *&v41[v59] = v54;
  v61 = v54;

  sub_257E5673C();
  v62 = v201;
  [*&v1[v201] addTarget:v1 action:sel_didTapPipWindowButton_ forControlEvents:64];
  v63 = [v1 view];
  if (!v63)
  {
    goto LABEL_57;
  }

  v64 = v63;
  [v63 addSubview_];

  v65 = [objc_allocWithZone(MEMORY[0x277D75220]) initWithFrame_];
  v66 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_closeImageWellButton;
  v67 = *&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_closeImageWellButton];
  *&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_closeImageWellButton] = v65;
  v68 = v65;

  if (v68)
  {
    [v68 setIsAccessibilityElement_];
  }

  v190 = v66;
  v69 = *&v1[v66];
  v70 = &selRef_imageByApplyingSymbolConfiguration_;
  if (v69)
  {
    v41 = v69;
    [v41 setTranslatesAutoresizingMaskIntoConstraints_];
    v71 = [v49 systemYellowColor];
    [v41 setBackgroundColor_];

    v72 = [v41 layer];
    [v41 frame];
    [v72 setCornerRadius_];

    v73 = [objc_opt_self() &selRef_endUpdates + 2];
    v74 = sub_257ECF4C0();
    v75 = [v53 systemImageNamed:v74 withConfiguration:v73];

    v189 = v73;
    if (v75)
    {
      v76 = [v75 imageWithRenderingMode_];
      v77 = [v49 systemBlackColor];
      v78 = [v76 imageWithTintColor_];

      v70 = &selRef_imageByApplyingSymbolConfiguration_;
    }

    else
    {
      v78 = 0;
    }

    [v41 setImage:v78 forState:0];

    v79 = [v41 imageView];
    if (v79)
    {
      v80 = v79;
      v81 = [v79 v70[2]];

      [v81 setMasksToBounds_];
    }

    v188 = v75;
    [v41 addTarget:v1 action:sel_didTapCloseImageWellButton_ forControlEvents:64];
    v82 = [v1 view];
    if (!v82)
    {
      goto LABEL_59;
    }

    v83 = v82;
    [v82 addSubview_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430);
    v84 = swift_allocObject();
    *(v84 + 16) = xmmword_257EDBE40;
    v85 = [v41 rightAnchor];
    v86 = v201;
    v87 = [*&v1[v201] rightAnchor];
    v88 = [v85 constraintEqualToAnchor:v87 constant:-4.0];

    *(v84 + 32) = v88;
    v89 = [v41 topAnchor];
    v90 = [*&v1[v86] topAnchor];
    v91 = [v89 constraintEqualToAnchor:v90 constant:2.0];

    *(v84 + 40) = v91;
    v92 = [v41 widthAnchor];
    v93 = [v92 constraintGreaterThanOrEqualToConstant_];

    *(v84 + 48) = v93;
    v94 = [v41 heightAnchor];

    v95 = [v94 constraintGreaterThanOrEqualToConstant_];
    *(v84 + 56) = v95;
    v96 = objc_opt_self();
    sub_257BD2C2C(0, &qword_281543EF0);
    v97 = sub_257ECF7F0();

    [v96 activateConstraints_];
  }

  v98 = *&v1[v201];
  if (sub_257E08680())
  {
    v99 = 1.0;
  }

  else
  {
    v99 = 0.0;
  }

  [v98 setAlpha_];

  v100 = *(v190 + v1);
  if (v100)
  {
    v101 = v100;
    if (sub_257E08680())
    {
      v102 = 1.0;
    }

    else
    {
      v102 = 0.0;
    }

    [v101 setAlpha_];
  }

  sub_257E03838();
  *(swift_allocObject() + 16) = v1;
  sub_257ECC3F0();
  v103 = v1;
  sub_257ECD2A0();

  v104 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___cameraVideoPreviewView;
  [*&v103[OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___cameraVideoPreviewView] setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v103[v104] setAutoresizingMask_];
  [*&v103[v104] setClipsToBounds_];
  [*&v103[v104] setAccessibilityTraits_];
  v105 = *&v103[v104];
  v41 = *&v103[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_currentLiveView];
  *&v103[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_currentLiveView] = v105;
  v106 = v105;

  v107 = [v103 view];
  if (!v107)
  {
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v108 = v107;
  [v107 setClipsToBounds_];

  sub_257E1A3A0();
  v109 = *&v103[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_captureService];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  v110 = v203;
  if (v203)
  {
    v111 = [v203 hasTorch];
  }

  else
  {
    v111 = 0;
  }

  *(v10 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls_flashlightIsAvailable) = v111;
  v112 = sub_257DFF3FC();
  v113 = sub_257D832B0();

  [v113 setEnabled_];
  v114 = *&v103[v104];
  v41 = [v114 layer];
  objc_opt_self();
  v115 = swift_dynamicCastObjCClass();
  if (!v115)
  {
    goto LABEL_60;
  }

  v116 = v115;
  [v115 setAutomaticallyDimsOverCaptureRegion_];

  [v116 setVideoGravity_];
  v117 = objc_opt_self();
  v118 = [v117 mainScreen];
  [v118 bounds];
  v120 = v119;
  v122 = v121;
  v124 = v123;
  v126 = v125;

  v218.origin.x = v120;
  v218.origin.y = v122;
  v218.size.width = v124;
  v218.size.height = v126;
  Width = CGRectGetWidth(v218);
  v128 = [v117 mainScreen];
  [v128 scale];
  v130 = v129;

  v131 = Width * v130;
  v132 = [v117 mainScreen];
  [v132 bounds];
  v134 = v133;
  v136 = v135;
  v138 = v137;
  v140 = v139;

  v219.origin.x = v134;
  v219.origin.y = v136;
  v219.size.width = v138;
  v219.size.height = v140;
  Height = CGRectGetHeight(v219);
  v142 = [v117 mainScreen];
  [v142 scale];
  v144 = v143;

  v145 = Height * v144;
  v146 = [objc_opt_self() currentDevice];
  v147 = [v146 orientation];

  if (v145 >= v131)
  {
    v149 = *&v103[v104];
    v41 = [v149 layer];
    objc_opt_self();
    v150 = swift_dynamicCastObjCClass();
    if (v150)
    {
LABEL_45:
      v151 = v145 / v131;
      goto LABEL_48;
    }

LABEL_60:

    sub_257ED0410();
    __break(1u);
    return;
  }

  v148 = v147 - 1;
  v149 = *&v103[v104];
  v41 = [v149 layer];
  objc_opt_self();
  v150 = swift_dynamicCastObjCClass();
  if (v148 <= 1)
  {
    if (!v150)
    {
      goto LABEL_60;
    }

    goto LABEL_45;
  }

  if (!v150)
  {
    goto LABEL_60;
  }

  v151 = v131 / v145;
LABEL_48:
  v152 = v150;
  [v150 setAutomaticallyDimsOverCaptureRegion_];

  [v152 setPrimaryCaptureRectAspectRatio:v151 centerPoint:{0.5, 0.5}];
  v153 = *&v103[v104];
  v41 = [v153 layer];
  objc_opt_self();
  v154 = swift_dynamicCastObjCClass();
  if (!v154)
  {
    goto LABEL_60;
  }

  [v154 setAutomaticallyDimsOverCaptureRegion_];

  swift_unknownObjectWeakAssign();
  [*&v103[v104] setIsAccessibilityElement_];
  v155 = *&v103[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_documentDetectionModePerspectiveFramingLayer];
  v186 = v103;
  Strong = swift_unknownObjectWeakLoadStrong();
  v157 = *(v155 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__videoPreviewLayer);
  *(v155 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__videoPreviewLayer) = Strong;

  sub_257E8845C();
  v158 = *(v109 + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_captureSessionQueue);
  v207 = sub_257E03EE0;
  v208 = 0;
  v203 = MEMORY[0x277D85DD0];
  v204 = 1107296256;
  v190 = &v205;
  v205 = sub_257D231C0;
  v206 = &block_descriptor_1039;
  v159 = _Block_copy(&v203);
  v160 = v158;
  v161 = v191;
  sub_257ECF150();
  v202 = MEMORY[0x277D84F90];
  v188 = sub_257E2C2E0(&qword_281544090, MEMORY[0x277D85198]);
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
  v189 = sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480);
  v162 = v193;
  v163 = v195;
  sub_257ED0180();
  MEMORY[0x259C72880](0, v161, v162, v159);
  _Block_release(v159);

  v194 = *(v194 + 8);
  (v194)(v162, v163);
  v192 = *(v192 + 8);
  (v192)(v161, v200);
  v164 = swift_allocObject();
  v165 = v186;
  swift_unknownObjectWeakInit();
  sub_257ECC3F0();
  sub_257DB05D0(sub_257E2CD7C, v164);

  v201 = sub_257BD2C2C(0, &qword_281543F10);
  v166 = sub_257ECFD30();
  v167 = swift_allocObject();
  *(v167 + 16) = v165;
  v168 = v165;
  v207 = sub_257E2CD84;
  v208 = v167;
  v203 = MEMORY[0x277D85DD0];
  v204 = 1107296256;
  v205 = sub_257D231C0;
  v206 = &block_descriptor_1046;
  v169 = _Block_copy(&v203);
  v170 = v168;

  sub_257ECF150();
  v203 = MEMORY[0x277D84F90];
  sub_257ED0180();
  MEMORY[0x259C72880](0, v161, v162, v169);
  _Block_release(v169);

  (v194)(v162, v163);
  (v192)(v161, v200);
  v171 = [objc_opt_self() sharedApplication];
  [v171 setIdleTimerDisabled_];

  v172 = objc_opt_self();
  v173 = [v172 defaultCenter];
  [v173 addObserver:v170 selector:sel_deviceOrientationDidChange_ name:*MEMORY[0x277D76878] object:0];

  v174 = [v172 defaultCenter];
  [v174 addObserver:v170 selector:sel_applicationWillAddDeactivationReasonWithNotification_ name:*MEMORY[0x277D77338] object:0];

  v175 = [v172 defaultCenter];
  [v175 addObserver:v170 selector:sel_applicationDidRemoveDeactivationReasonWithNotification_ name:*MEMORY[0x277D77308] object:0];

  v176 = [v172 defaultCenter];
  if (qword_281543EE0 != -1)
  {
    swift_once();
  }

  [v176 addObserver:v170 selector:? name:? object:?];

  v177 = [v172 defaultCenter];
  if (qword_281543EE8 != -1)
  {
    swift_once();
  }

  [v177 addObserver:v170 selector:? name:? object:?];

  v178 = sub_257ECC810();
  v179 = v196;
  (*(*(v178 - 8) + 56))(v196, 1, 1, v178);
  sub_257E1A15C();
  sub_257BE4084(v179, &qword_27F8F9E30);
  v180 = [v172 defaultCenter];
  [v180 addObserver:v170 selector:sel_updateAppearanceForReduceTransparency_ name:*MEMORY[0x277D764C8] object:0];

  *(swift_allocObject() + 16) = v170;
  v170;
  sub_257BBD7E4(sub_257E2CD8C);
  sub_257ECDE80();

  v182 = v197;
  v181 = v198;
  v183 = v199;
  (*(v198 + 104))(v197, *MEMORY[0x277D851A8], v199);
  v184 = sub_257ECFD90();
  (*(v181 + 8))(v182, v183);
  sub_257ECDEA0();

  sub_257E07014();
}

void sub_257E03838()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pipWindowButton);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_257ED9BF0;
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = objc_opt_self();
  v5 = v1;
  v6 = [v4 bundleForClass_];
  v7 = sub_257ECF4C0();
  v8 = sub_257ECF4C0();
  v9 = [v6 localizedStringForKey:v7 value:0 table:v8];

  if (!v9)
  {
    sub_257ECF500();
    v9 = sub_257ECF4C0();
  }

  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = objc_allocWithZone(MEMORY[0x277D75088]);
  v15[4] = sub_257E2CE64;
  v15[5] = v10;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 1107296256;
  v15[2] = sub_257D96328;
  v15[3] = &block_descriptor_1161;
  v12 = _Block_copy(v15);
  sub_257ECC3F0();
  v13 = [v11 initWithName:v9 actionHandler:v12];

  _Block_release(v12);

  *(v2 + 32) = v13;
  sub_257BD2C2C(0, &qword_281543E70);
  v14 = sub_257ECF7F0();

  [v5 setAccessibilityCustomActions_];
}

uint64_t sub_257E03AC0(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_257ECDA30();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_257E03B80, 0, 0);
}

uint64_t sub_257E03B80()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_257E03C1C;

  return sub_257CD5940();
}

uint64_t sub_257E03C1C()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_257E03D58, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_257E03D58()
{
  v1 = v0[7];
  sub_257ECD4B0();
  v2 = v1;
  v3 = sub_257ECDA20();
  v4 = sub_257ECFC00();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[7];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_257BAC000, v3, v4, "Video caption service prewarm() failed: %@", v7, 0xCu);
    sub_257BE4084(v8, &unk_27F8F5490);
    MEMORY[0x259C74820](v8, -1, -1);
    MEMORY[0x259C74820](v7, -1, -1);
  }

  else
  {
  }

  (*(v0[4] + 8))(v0[5], v0[3]);

  v11 = v0[1];

  return v11();
}

uint64_t sub_257E03EE0()
{
  v0 = sub_257ECF120();
  v27 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v2 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_257CA930C();
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v4 = qword_281548348;
  v5 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__setCameraType;
  swift_beginAccess();
  v6 = *(v5 + 8);
  v7 = *(v5 + 16);
  v32 = *v5;
  v33 = v6;
  v34 = v7;
  v8 = qword_2815447E0;

  if (v8 != -1)
  {
    v9 = swift_once();
  }

  MEMORY[0x28223BE20](v9);
  *(&v25 - 2) = &v32;
  sub_257ECFD50();

  v10 = &qword_281545000;
  if (v28 == 1)
  {
    v26 = v0;
    v11 = v4 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__cameraType;
    v12 = swift_beginAccess();
    v13 = *(v11 + 8);
    v14 = *(v11 + 16);
    v32 = *v11;
    v33 = v13;
    v34 = v14;
    MEMORY[0x28223BE20](v12);
    *(&v25 - 2) = &v32;

    sub_257ECFD50();

    if (sub_257C592D0(v29[0], v3))
    {

      v10 = &qword_281545000;
      goto LABEL_13;
    }

    v0 = v26;
    v10 = &qword_281545000;
  }

  if (*(v3 + 16))
  {
    v15 = *(v3 + 32);
  }

  else
  {
    v15 = 0;
  }

  v16 = v4 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__cameraType;
  swift_beginAccess();
  LOBYTE(v29[0]) = v15;
  v17 = sub_257ECF110();
  MEMORY[0x28223BE20](v17);
  *(&v25 - 2) = v29;
  *(&v25 - 1) = v16;
  sub_257ECFD40();
  v18 = *(v27 + 8);
  v18(v2, v0);
  swift_endAccess();
  swift_beginAccess();
  LOBYTE(v29[0]) = 1;
  v19 = sub_257ECF110();
  MEMORY[0x28223BE20](v19);
  *(&v25 - 2) = v29;
  *(&v25 - 1) = v5;
  sub_257ECFD40();
  v18(v2, v0);
  swift_endAccess();
LABEL_13:
  v20 = v4 + v10[214];
  v21 = swift_beginAccess();
  v22 = *(v20 + 8);
  v23 = *(v20 + 16);
  v29[0] = *v20;
  v29[1] = v22;
  v30 = v23;
  MEMORY[0x28223BE20](v21);
  *(&v25 - 2) = v29;

  sub_257ECFD50();

  LOBYTE(v20) = v31;
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v29[0]) = v20;
  sub_257ECC3F0();
  return sub_257ECDD70();
}

void sub_257E043B8(uint64_t a1, uint64_t a2)
{
  v83 = sub_257ECF1B0();
  v82 = *(v83 - 8);
  v3 = MEMORY[0x28223BE20](v83);
  v80 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v81 = &v71 - v5;
  v6 = sub_257ECF120();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_257ECF190();
  v86 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v85 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = v9;
    v14 = v6;
    v15 = Strong;
    sub_257ECC3F0();

    swift_beginAccess();
    v16 = swift_unknownObjectWeakLoadStrong();
    if (v16)
    {
      v17 = v16;
      v18 = *(v16 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_captureService);

      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECDD60();

      v19 = aBlock;
    }

    else
    {
      v19 = 0;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    aBlock = v19;
    sub_257ECDD70();
    v6 = v14;
    v9 = v13;
  }

  v87 = v7;
  v78 = sub_257BD2C2C(0, &qword_281543F10);
  v20 = sub_257ECFD30();
  v94 = sub_257E2CE5C;
  v95 = a2;
  aBlock = MEMORY[0x277D85DD0];
  v91 = 1107296256;
  v92 = sub_257D231C0;
  v93 = &block_descriptor_1128;
  v21 = v10;
  v22 = _Block_copy(&aBlock);
  sub_257ECC3F0();

  v84 = a2;
  v23 = v85;
  sub_257ECF150();
  aBlock = MEMORY[0x277D84F90];
  v24 = sub_257E2C2E0(&qword_281544090, MEMORY[0x277D85198]);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
  v26 = sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480);
  v77 = v25;
  v79 = v24;
  sub_257ED0180();
  MEMORY[0x259C72880](0, v23, v9, v22);
  v27 = v22;
  v28 = v21;
  _Block_release(v27);

  v30 = v87 + 8;
  v29 = *(v87 + 8);
  v29(v9, v6);
  v31 = v86 + 8;
  v32 = *(v86 + 8);
  v32(v23, v28);
  swift_beginAccess();
  v33 = swift_unknownObjectWeakLoadStrong();
  if (v33)
  {
    v34 = v33;
    sub_257D45978();
  }

  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v35 = qword_281548348;
  if (*(qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls_launchedReaderFromShortcut) == 1)
  {
    v72 = qword_281548348;
    v73 = v32;
    v74 = v29;
    v75 = v26;
    v86 = v31;
    v76 = v28;
    v36 = v9;
    v87 = v30;
    v37 = v6;
    swift_beginAccess();
    v38 = swift_unknownObjectWeakLoadStrong();
    if (v38)
    {
      v39 = v38;
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(aBlock) = 0;
      sub_257ECC3F0();
      sub_257ECDD70();
      v40 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_readerModeViewController;
      v41 = *&v39[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_readerModeViewController];
      if (v41)
      {
        v42 = v41;
        [v42 willMoveToParentViewController_];
        v43 = objc_opt_self();
        v44 = swift_allocObject();
        *(v44 + 16) = v42;
        v94 = sub_257BEE444;
        v95 = v44;
        aBlock = MEMORY[0x277D85DD0];
        v91 = 1107296256;
        v92 = sub_257D231C0;
        v93 = &block_descriptor_1145;
        v45 = _Block_copy(&aBlock);
        v46 = v42;

        v47 = swift_allocObject();
        *(v47 + 16) = v46;
        v94 = sub_257BEE44C;
        v95 = v47;
        aBlock = MEMORY[0x277D85DD0];
        v91 = 1107296256;
        v92 = sub_257DFE438;
        v93 = &block_descriptor_1151;
        v48 = _Block_copy(&aBlock);
        v49 = v46;

        [v43 animateWithDuration:0x20000 delay:v45 options:v48 animations:0.25 completion:0.0];
        _Block_release(v48);
        _Block_release(v45);

        v50 = *&v39[v40];
        *&v39[v40] = 0;

        v39 = v50;
      }
    }

    v51 = sub_257ECFD30();
    v52 = v80;
    sub_257ECF1A0();
    v53 = v81;
    sub_257ECF220();
    v54 = *(v82 + 8);
    v55 = v83;
    v54(v52, v83);
    v94 = sub_257BEDAC8;
    v95 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v91 = 1107296256;
    v92 = sub_257D231C0;
    v93 = &block_descriptor_1139;
    v56 = _Block_copy(&aBlock);
    v57 = v85;
    sub_257ECF150();
    aBlock = MEMORY[0x277D84F90];
    sub_257ED0180();
    MEMORY[0x259C727E0](v53, v57, v36, v56);
    _Block_release(v56);

    v74(v36, v37);
    v73(v57, v76);
    v54(v53, v55);
    v35 = v72;
  }

  v58 = (v35 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__zoomPercentage);
  swift_beginAccess();
  v59 = v58[1];
  v60 = v58[2];
  v89[0] = *v58;
  v89[1] = v59;
  v89[2] = v60;
  v61 = qword_2815447E0;
  sub_257ECC3F0();

  if (v61 != -1)
  {
    v62 = swift_once();
  }

  MEMORY[0x28223BE20](v62);
  *(&v71 - 2) = v89;
  sub_257ECFD50();

  v63 = v88[0];
  swift_getKeyPath();
  swift_getKeyPath();
  v89[0] = v63;
  sub_257ECDD70();
  swift_beginAccess();
  v64 = swift_unknownObjectWeakLoadStrong();
  if (v64)
  {
    v65 = v64;
    v66 = *(v64 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_captureService);

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    v68 = v88[0];
    if (v88[0])
    {
      v69 = v58[1];
      v70 = v58[2];
      v88[0] = *v58;
      v88[1] = v69;
      v88[2] = v70;
      MEMORY[0x28223BE20](v67);
      *(&v71 - 2) = v88;

      sub_257ECFD50();

      sub_257D337D8(0, *&v88[3]);
    }
  }
}

void sub_257E04F58()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_257DFF3FC();

    v3 = sub_257D832B0();
    [v3 setEnabled_];
  }
}

void sub_257E04FD8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9D40);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = aBlock - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9E78);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = aBlock - v8;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  v10 = aBlock[0];
  sub_257E053D4(aBlock[0]);

  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F7A60);
  sub_257ECDD30();
  swift_endAccess();
  sub_257BD2D4C(&unk_281544160, &unk_27F8F9D40);
  sub_257ECDE10();
  (*(v3 + 8))(v5, v2);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_257BD2D4C(&unk_281544380, &unk_27F8F9E78);
  v11 = sub_257ECDE50();

  (*(v7 + 8))(v9, v6);
  *(a1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_coachingSubscription) = v11;

  sub_257E2AE58();
  v12 = sub_257DFF59C();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_257E2CDA4;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_257E06E58;
  aBlock[3] = &block_descriptor_1063;
  v14 = _Block_copy(aBlock);

  [v12 _setAccessibilityFrameBlock_];
  _Block_release(v14);
}

uint64_t sub_257E053D4(uint64_t a1)
{
  v84 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F8740);
  MEMORY[0x28223BE20](v2 - 8);
  v77 = &v67 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F54D0);
  v73 = *(v4 - 8);
  v74 = v4;
  MEMORY[0x28223BE20](v4);
  v72 = &v67 - v5;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9E88);
  v76 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v75 = &v67 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9E90);
  v80 = *(v7 - 8);
  v81 = v7;
  MEMORY[0x28223BE20](v7);
  v79 = &v67 - v8;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7A48);
  v69 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v68 = &v67 - v9;
  v10 = sub_257ECF120();
  v83 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281544FE0 != -1)
  {
    v66 = v11;
    swift_once();
    v11 = v66;
  }

  v71 = v11;
  v82 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  v14 = v90;
  v85 = qword_281548348;
  v15 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__mode;
  swift_beginAccess();
  v16 = *(v15 + 8);
  v17 = *(v15 + 16);
  v87 = *v15;
  v88 = v16;
  LOBYTE(v89) = v17;
  v18 = qword_2815447E0;

  if (v18 != -1)
  {
    v19 = swift_once();
  }

  MEMORY[0x28223BE20](v19);
  *(&v67 - 2) = &v87;
  sub_257ECFD50();

  if (v14)
  {
    if (v14 == 1)
    {
      v20 = 0x6F685369746C756DLL;
    }

    else
    {
      v20 = 0x746E656D75636F64;
    }

    if (v14 == 1)
    {
      v21 = 0xE900000000000074;
    }

    else
    {
      v21 = 0xE800000000000000;
    }
  }

  else
  {
    v20 = 0x6853656C676E6973;
    v21 = 0xEA0000000000746FLL;
  }

  v22 = 0x6F685369746C756DLL;
  v23 = 0xE900000000000074;
  if (v86 != 1)
  {
    v22 = 0x746E656D75636F64;
    v23 = 0xE800000000000000;
  }

  if (v86)
  {
    v24 = v22;
  }

  else
  {
    v24 = 0x6853656C676E6973;
  }

  if (v86)
  {
    v25 = v23;
  }

  else
  {
    v25 = 0xEA0000000000746FLL;
  }

  if (v20 == v24 && v21 == v25)
  {

LABEL_25:
    v28 = v85;
    v29 = v71;
    goto LABEL_33;
  }

  v26 = sub_257ED0640();

  if (v26)
  {
    goto LABEL_25;
  }

  v30 = *(v15 + 8);
  v31 = *(v15 + 16);
  v87 = *v15;
  v88 = v30;
  LOBYTE(v89) = v31;
  MEMORY[0x28223BE20](v27);
  *(&v67 - 2) = &v87;

  sub_257ECFD50();

  if (v86 && v86 != 1)
  {

    v32 = v85;
    goto LABEL_31;
  }

  v32 = v85;
  v33 = sub_257ED0640();

  if (v33)
  {
LABEL_31:
    swift_beginAccess();
    LOBYTE(v86) = 0;
    v35 = sub_257ECF110();
    MEMORY[0x28223BE20](v35);
    *(&v67 - 2) = &v86;
    *(&v67 - 1) = v15;
    sub_257ECFD40();
    v29 = v71;
    (*(v83 + 8))(v13, v71);
    v34 = swift_endAccess();
    goto LABEL_32;
  }

  v29 = v71;
LABEL_32:
  v36 = *(v15 + 8);
  v37 = *(v15 + 16);
  v87 = *v15;
  v88 = v36;
  LOBYTE(v89) = v37;
  MEMORY[0x28223BE20](v34);
  *(&v67 - 2) = &v87;

  sub_257ECFD50();

  v38 = v86;
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v87) = v38;
  sub_257ECC3F0();
  sub_257ECDD70();
  v28 = v32;
LABEL_33:
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v87) = 0;
  sub_257ECC3F0();
  sub_257ECDD70();
  v39 = v28 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__isReviewing;
  swift_beginAccess();
  LOBYTE(v86) = 0;
  v40 = sub_257ECF110();
  MEMORY[0x28223BE20](v40);
  *(&v67 - 2) = &v86;
  *(&v67 - 1) = v39;
  sub_257ECFD40();
  v41 = *(v83 + 8);
  v41(v13, v29);
  swift_endAccess();
  v42 = v28 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__flashlightPercentage;
  swift_beginAccess();
  LODWORD(v86) = 0;
  v43 = sub_257ECF110();
  MEMORY[0x28223BE20](v43);
  *(&v67 - 2) = &v86;
  *(&v67 - 1) = v42;
  sub_257ECFD40();
  v41(v13, v29);
  v44 = swift_endAccess();
  if (v84)
  {
    v45 = *(v42 + 8);
    v46 = *(v42 + 16);
    v87 = *v42;
    v88 = v45;
    v89 = v46;
    MEMORY[0x28223BE20](v44);
    *(&v67 - 2) = &v87;

    sub_257ECFD50();

    sub_257D32D68(*&v86);
  }

  v47 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_cameraTypeSubscription;
  v48 = v82;
  if (!*(v82 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_cameraTypeSubscription))
  {
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9EA0);
    v49 = v68;
    sub_257ECDD30();
    swift_endAccess();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_257BD2D4C(&unk_281544180, &qword_27F8F7A48);
    v50 = v70;
    v51 = sub_257ECDE50();

    (*(v69 + 8))(v49, v50);
    *(v48 + v47) = v51;
  }

  v52 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_activityZoomPercentageSubscripton;
  if (*(v48 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_activityZoomPercentageSubscripton))
  {
    sub_257ECC3F0();
    sub_257ECDCC0();
  }

  *(v48 + v52) = 0;

  v83 = v52;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9350);
  v53 = v72;
  sub_257ECDD30();
  swift_endAccess();
  sub_257BD2D4C(&unk_281544190, &unk_27F8F54D0);
  v54 = v74;
  v55 = sub_257ECDD90();
  (*(v73 + 8))(v53, v54);
  v86 = *(v48 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_controlsQueue);
  v56 = v86;
  v87 = v55;
  v57 = sub_257ECFCF0();
  v58 = v77;
  (*(*(v57 - 8) + 56))(v77, 1, 1, v57);
  v59 = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9360);
  sub_257BD2C2C(0, &qword_281543F10);
  sub_257BD2D4C(&qword_2815441E8, &qword_27F8F9360);
  sub_257CA64A0(&qword_281543F20, &qword_281543F10);
  v60 = v75;
  sub_257ECDE20();
  sub_257BE4084(v58, &unk_27F8F8740);

  sub_257BD2D4C(&qword_27F8F9EB0, &qword_27F8F9E88);
  v61 = v78;
  v62 = v79;
  sub_257ECDE10();
  (*(v76 + 8))(v60, v61);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_257BD2D4C(&qword_27F8F9EB8, &unk_27F8F9E90);
  v63 = v81;
  v64 = sub_257ECDE50();

  (*(v80 + 8))(v62, v63);
  *(v48 + v83) = v64;

  sub_257D6B520();
  return sub_257E2554C(v84);
}

uint64_t sub_257E06254(char *a1)
{
  v2 = sub_257ECF120();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_257ECF190();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = result;
    sub_257BD2C2C(0, &qword_281543F10);
    v18 = sub_257ECFD30();
    v13 = swift_allocObject();
    *(v13 + 16) = v10;
    *(v13 + 24) = v12;
    aBlock[4] = sub_257E2CDAC;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_257D231C0;
    aBlock[3] = &block_descriptor_1069;
    v14 = _Block_copy(aBlock);
    v17 = v12;

    sub_257ECF150();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_257E2C2E0(&qword_281544090, MEMORY[0x277D85198]);
    v16 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
    sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480);
    sub_257ED0180();
    v15 = v18;
    MEMORY[0x259C72880](0, v9, v5, v14);
    _Block_release(v14);

    (*(v3 + 8))(v5, v2);
    return (*(v7 + 8))(v9, v16);
  }

  return result;
}

void sub_257E06584(char a1, uint64_t a2)
{
  if (a1 == 1)
  {
    type metadata accessor for MAGUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v4 = [objc_opt_self() bundleForClass_];
    v5 = sub_257ECF4C0();
    v6 = sub_257ECF4C0();
    v7 = [v4 localizedStringForKey:v5 value:0 table:v6];

    sub_257ECF500();
    sub_257E067A8();

    v8 = *(a2 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pipWindowButton);
    if (sub_257E08680())
    {
      v9 = 1.0;
    }

    else
    {
      v9 = 0.0;
    }

    [v8 setAlpha_];

    v10 = *(a2 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_closeImageWellButton);
    if (v10)
    {
      v13 = v10;
      if (sub_257E08680())
      {
        v11 = 1.0;
      }

      else
      {
        v11 = 0.0;
      }

      [v13 setAlpha_];
    }
  }

  else
  {
    sub_257E06A24();
    [*(a2 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pipWindowButton) setAlpha_];
    v12 = *(a2 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_closeImageWellButton);
    if (v12)
    {

      [v12 setAlpha_];
    }
  }
}

void sub_257E067A8()
{
  v1 = v0;
  v2 = sub_257E001D8();
  v3 = sub_257ECF4C0();
  [v2 setText_];

  v4 = sub_257E002B8();
  if (v4)
  {
    v5 = v4;
    v6 = sub_257ECF4C0();
    [v5 setText_];
  }

  v7 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___coachingLabel;
  [*(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___coachingLabel) sizeToFit];
  v8 = *(v1 + v7);
  sub_257CF2390();

  v9 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___landscapeCoachingLabel;
  v10 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___landscapeCoachingLabel);
  if (v10)
  {
    [v10 sizeToFit];
    v11 = *(v1 + v9);
    if (v11)
    {
      v12 = v11;
      sub_257CF2390();
      sub_257CC8CC0(v11);
    }
  }

  v13 = objc_opt_self();
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = sub_257E2CDB8;
  v24 = v14;
  v19 = MEMORY[0x277D85DD0];
  v20 = 1107296256;
  v21 = sub_257D231C0;
  v22 = &block_descriptor_1073;
  v15 = _Block_copy(&v19);

  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = sub_257E2CDD8;
  v24 = v16;
  v19 = MEMORY[0x277D85DD0];
  v20 = 1107296256;
  v21 = sub_257E106F4;
  v22 = &block_descriptor_1077;
  v17 = _Block_copy(&v19);

  v18 = [v13 runningPropertyAnimatorWithDuration:0x10000 delay:v15 options:v17 animations:0.2 completion:0.0];
  _Block_release(v17);
  _Block_release(v15);
}

void sub_257E06A24()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_coachingHideAnimator;
  v2 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_coachingHideAnimator);
  if (v2)
  {
    [v2 stopAnimation_];
    v3 = *(v0 + v1);
    if (v3)
    {
      [v3 finishAnimationAtPosition_];
    }
  }

  v4 = objc_opt_self();
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8[4] = sub_257E2CDE0;
  v8[5] = v5;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_257D231C0;
  v8[3] = &block_descriptor_1085;
  v6 = _Block_copy(v8);

  v7 = [v4 runningPropertyAnimatorWithDuration:0x20000 delay:v6 options:0 animations:0.4 completion:0.2];
  _Block_release(v6);
}

void sub_257E06B6C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v1 = Strong;
  v2 = sub_257DFF59C();
  [v2 frame];

  if (qword_27F8F4670 != -1)
  {
    swift_once();
  }

  if (byte_27F8F8D89)
  {
    goto LABEL_5;
  }

  v12 = [*&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___cameraVideoPreviewView] traitCollection];
  if (qword_27F8F4668 != -1)
  {
    swift_once();
  }

  if (byte_27F8F8D88 != 1)
  {
LABEL_21:

    goto LABEL_22;
  }

  if (!*MEMORY[0x277D76620])
  {
LABEL_26:
    __break(1u);
    return;
  }

  v13 = *MEMORY[0x277D76620];
  v14 = sub_257CA7574();
  if (!v14)
  {

    goto LABEL_21;
  }

  v15 = v14;
  [v14 bounds];
  v17 = v16;
  v19 = v18;

  v20 = [v12 horizontalSizeClass];
  if (v20 != 1 || v17 > 375.0 && v17 / v19 > 0.42)
  {
    goto LABEL_22;
  }

LABEL_5:
  if (sub_257ECF030())
  {
LABEL_22:

    return;
  }

  v3 = sub_257DFF054();
  v4 = [v3 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_26;
  }

  v5 = v4;
  [v4 alpha];
  v7 = v6;

  if (v7 == 0.0)
  {
    goto LABEL_22;
  }

  v8 = *(*&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___mainCardViewController] + OBJC_IVAR____TtC16MagnifierSupport24MFMainCardViewController_cardController);
  v9 = *&v8[OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_cardHeightConstraint];
  if (v9)
  {
    v10 = v8;
    v11 = v9;
    [v11 constant];
  }

  else
  {
    v21 = *(*&v8[OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_containerView] + OBJC_IVAR____TtC16MagnifierSupport19MFCardContainerView_draggableView);
    v11 = v8;
    [v21 frame];
    CGRectGetHeight(v22);
  }
}

double sub_257E06E58(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_257ECC3F0();
  v3 = v1(v2);

  return v3;
}

uint64_t sub_257E06EC0(uint64_t a1, uint64_t a2)
{
  v3 = sub_257ECDED0();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  sub_257ECDEE0();
  (*(v4 + 104))(v7, *MEMORY[0x277CD8F78], v3);
  v10 = sub_257ECDEC0();
  v11 = *(v4 + 8);
  v11(v7, v3);
  result = (v11)(v9, v3);
  *(a2 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_wifiConnected) = v10 & 1;
  return result;
}

void sub_257E07014()
{
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v2 = objc_allocWithZone(MEMORY[0x277CB8598]);
  v8[4] = sub_257E2CD94;
  v8[5] = v1;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_257E2D168;
  v8[3] = &block_descriptor_1053;
  v3 = _Block_copy(v8);
  sub_257ECC3F0();
  v4 = [v2 initWithEventHandler_];
  _Block_release(v3);

  v5 = [v0 view];
  if (v5)
  {
    v6 = v5;
    [v5 addInteraction_];

    v7 = *&v0[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_eventInteraction];
    *&v0[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_eventInteraction] = v4;
  }

  else
  {
    __break(1u);
  }
}

void sub_257E071A8()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pipWindowButtonConstraints;
  sub_257BD2C2C(0, &qword_281543EF0);

  v4 = sub_257ECF7F0();

  [v2 deactivateConstraints_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_257EDBE40;
  v6 = sub_257DFF054();
  v7 = [v6 view];
  if (!v7)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = v7;
  [v7 alpha];
  v10 = v9;

  v11 = [*&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pipWindowButton] bottomAnchor];
  v12 = [v1 view];
  v13 = v12;
  if (v10 == 0.0)
  {
    if (!v12)
    {
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v14 = [v12 bottomAnchor];

    v15 = [v11 constraintEqualToAnchor:v14 constant:-10.0];
    goto LABEL_11;
  }

  if (v12)
  {
    v16 = [v12 bottomAnchor];

    v17 = qword_281544FE0;
    v33 = *(*(*(*&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___mainCardViewController] + OBJC_IVAR____TtC16MagnifierSupport24MFMainCardViewController_cardController) + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_containerView) + OBJC_IVAR____TtC16MagnifierSupport19MFCardContainerView_card);
    if (v17 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v18 = qword_2815447E0;

    if (v18 != -1)
    {
      v19 = swift_once();
    }

    MEMORY[0x28223BE20](v19);
    sub_257ECFD50();

    sub_257DD1E80(v34);
    v21 = v20;

    v15 = [v11 &selRef_CIImage + 6];
LABEL_11:
    *(v5 + 32) = v15;
    v22 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pipWindowButton;
    v23 = [*&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pipWindowButton] trailingAnchor];
    v24 = [v1 view];
    if (v24)
    {
      v25 = v24;
      v26 = [v24 trailingAnchor];

      v27 = [v23 &selRef_CIImage + 6];
      *(v5 + 40) = v27;
      v28 = [*&v1[v22] widthAnchor];
      v29 = [v28 constraintEqualToConstant_];

      *(v5 + 48) = v29;
      v30 = [*&v1[v22] heightAnchor];
      v31 = [v30 constraintEqualToConstant_];

      *(v5 + 56) = v31;
      *&v1[v3] = v5;

      v32 = sub_257ECF7F0();

      [v2 activateConstraints_];

      return;
    }

    goto LABEL_14;
  }

LABEL_16:
  __break(1u);
}

void sub_257E0768C()
{
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v2 == 1 && (*(xmmword_281548330 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment8LiveLens_isInCapture) & 1) == 0)
  {
    v0 = sub_257DFF3FC();
    v1 = sub_257D859BC();

    if (v1 >= 1)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECC3F0();
      sub_257ECDD70();
    }
  }
}

void sub_257E07834()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7838);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v73 - v3;
  v5 = sub_257ECCC80();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AppViewController();
  v73.receiver = v0;
  v73.super_class = v9;
  objc_msgSendSuper2(&v73, sel_viewWillLayoutSubviews);
  v10 = *&v0[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pipWindowButton];
  if (sub_257E08680())
  {
    v11 = 1.0;
  }

  else
  {
    v11 = 0.0;
  }

  [v10 setAlpha_];

  v12 = *&v0[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_closeImageWellButton];
  if (v12)
  {
    v13 = v12;
    if (sub_257E08680())
    {
      v14 = 1.0;
    }

    else
    {
      v14 = 0.0;
    }

    [v13 setAlpha_];
  }

  type metadata accessor for ImageCache();
  sub_257C7487C(v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_257BE4084(v4, &qword_27F8F7838);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    sub_257C77984();
    (*(v6 + 8))(v8, v5);
  }

  v15 = sub_257DFF59C();
  v16 = [v1 view];
  if (!v16)
  {
    __break(1u);
    goto LABEL_31;
  }

  v17 = v16;
  [v16 bounds];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  [v15 setFrame_];
  v26 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_arOverlayView;
  v27 = *&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_arOverlayView];
  if (!v27)
  {
    return;
  }

  v28 = *&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectedObjectView];
  if (v28)
  {
    v29 = v27;
    v30 = v28;
    v31 = [v1 view];
    if (v31)
    {
      v32 = v31;
      [v31 bounds];
      v34 = v33;
      v36 = v35;
      v38 = v37;
      v40 = v39;

      [v29 setFrame_];
      v41 = [v30 superview];
      if (v41)
      {
        v42 = v41;
        [v41 bounds];
        [v30 setFrame_];
      }

      goto LABEL_19;
    }

LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

LABEL_19:
  v43 = *&v1[v26];
  if (!v43)
  {
    return;
  }

  v44 = *&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectedPersonView];
  if (v44)
  {
    v45 = v43;
    v46 = v44;
    v47 = [v1 view];
    if (v47)
    {
      v48 = v47;
      [v47 bounds];
      v50 = v49;
      v52 = v51;
      v54 = v53;
      v56 = v55;

      [v45 setFrame_];
      v57 = [v46 superview];
      if (v57)
      {
        v58 = v57;
        [v57 bounds];
        [v46 setFrame_];
      }

      goto LABEL_25;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

LABEL_25:
  v59 = *&v1[v26];
  if (v59)
  {
    v60 = *&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectionModeView];
    if (v60)
    {
      v61 = v59;
      v62 = v60;
      v63 = [v1 view];
      if (v63)
      {
        v64 = v63;
        [v63 bounds];
        v66 = v65;
        v68 = v67;
        v70 = v69;
        v72 = v71;

        [v61 setFrame_];
        sub_257E7DAB4();

        return;
      }

LABEL_33:
      __break(1u);
    }
  }
}

void sub_257E07D5C(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v59 - v4;
  v6 = type metadata accessor for AppViewController();
  v61.receiver = v1;
  v61.super_class = v6;
  objc_msgSendSuper2(&v61, sel_viewWillAppear_, a1 & 1);
  v7 = sub_257ECF930();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  sub_257ECF900();
  v8 = v1;
  v9 = sub_257ECF8F0();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = v8;
  sub_257C3FBD4(0, 0, v5, &unk_257EEBC28, v10);

  sub_257E0E5D4();
  if (v8[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_didSetupCardUI] == 1)
  {
    v8[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_didSetupCardUI] = 0;
    sub_257E0EF78(0);
  }

  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v60 == 1)
  {
    if (qword_27F8F4618 == -1)
    {
      if ((byte_27F8F78A0 & 1) == 0)
      {
LABEL_8:
        swift_getKeyPath();
        swift_getKeyPath();
        v60 = 0;
        sub_257ECC3F0();
        sub_257ECDD70();
        sub_257DE3FF0();
        goto LABEL_9;
      }
    }

    else
    {
      swift_once();
      if ((byte_27F8F78A0 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    if (AXDeviceSupportsBackTap())
    {
      sub_257D231EC();
    }

    goto LABEL_14;
  }

LABEL_9:
  if (qword_27F8F4618 != -1)
  {
    swift_once();
  }

  if (byte_27F8F78A0 == 1)
  {
    goto LABEL_12;
  }

LABEL_14:
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v60 == 1)
  {
    sub_257E1A7A4();
  }

  v12 = *&v8[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_captureEventHandler];
  v13 = v8;
  v14 = [v13 description];
  v15 = sub_257ECF500();
  v17 = v16;

  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = swift_allocObject();
  *(v19 + 16) = &unk_257EEBC30;
  *(v19 + 24) = v18;
  swift_beginAccess();
  swift_retain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v59 = *(v12 + 16);
  *(v12 + 16) = 0x8000000000000000;
  sub_257EC6E08(&unk_257EDB6B8, v19, v15, v17, isUniquelyReferenced_nonNull_native);

  *(v12 + 16) = v59;
  swift_endAccess();

  v21 = *&v13[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_arEventHandler];
  v22 = v13;
  v23 = [v22 description];
  v24 = sub_257ECF500();
  v26 = v25;

  v27 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v28 = swift_allocObject();
  *(v28 + 16) = &unk_257EEBC40;
  *(v28 + 24) = v27;
  swift_beginAccess();
  swift_retain_n();
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v59 = *(v21 + 16);
  *(v21 + 16) = 0x8000000000000000;
  sub_257EC7760(&unk_257EDCE60, v28, v24, v26, v29);

  *(v21 + 16) = v59;
  swift_endAccess();

  v30 = *&v22[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_ouEventHandler];
  v31 = v22;
  v32 = [v31 description];
  v33 = sub_257ECF500();
  v35 = v34;

  v36 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v37 = swift_allocObject();
  *(v37 + 16) = &unk_257EEBC50;
  *(v37 + 24) = v36;
  swift_beginAccess();
  swift_retain_n();
  v38 = swift_isUniquelyReferenced_nonNull_native();
  v59 = *(v30 + 16);
  *(v30 + 16) = 0x8000000000000000;
  sub_257EC7CEC(&unk_257EEAF30, v37, v33, v35, v38);

  *(v30 + 16) = v59;
  swift_endAccess();

  v39 = *&v31[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pointAndSpeakEventHandler];
  v40 = v31;
  v41 = [v40 description];
  v42 = sub_257ECF500();
  v44 = v43;

  v45 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v46 = swift_allocObject();
  *(v46 + 16) = &unk_257EEBC60;
  *(v46 + 24) = v45;
  swift_beginAccess();
  swift_retain_n();
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v59 = *(v39 + 16);
  *(v39 + 16) = 0x8000000000000000;
  sub_257EC6A70(&unk_257EEBC68, v46, v42, v44, v47);

  *(v39 + 16) = v59;
  swift_endAccess();

  v48 = *&v40[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_advancedEventHandler];
  v49 = v40;
  v50 = [v49 description];
  v51 = sub_257ECF500();
  v53 = v52;

  v54 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v55 = swift_allocObject();
  *(v55 + 16) = &unk_257EEBC70;
  *(v55 + 24) = v54;
  swift_beginAccess();
  swift_retain_n();
  v56 = swift_isUniquelyReferenced_nonNull_native();
  v59 = *(v48 + 16);
  *(v48 + 16) = 0x8000000000000000;
  sub_257EC7964(&unk_257EDE220, v55, v51, v53, v56);

  *(v48 + 16) = v59;
  swift_endAccess();

  sub_257E071A8();
  sub_257E2010C();
  v57 = *&v49[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_freezeFrameViewController];
  if (v57)
  {
    v58 = v57;
    sub_257BDB830();
  }

  sub_257E1F554();
  sub_257E1FD28();
}

uint64_t sub_257E08680()
{
  swift_beginAccess();
  v0 = qword_27F8FA070 != 0;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = qword_2815447E0;

  if (v1 != -1)
  {
    v2 = swift_once();
  }

  MEMORY[0x28223BE20](v2);
  sub_257ECFD50();

  if (v7 && v7 == 1)
  {
  }

  else
  {
    v3 = sub_257ED0640();

    if ((v3 & 1) == 0)
    {
      return 0;
    }
  }

  v4 = sub_257DFF3FC();
  v5 = sub_257D859BC();

  if (v5 < 1)
  {
    return 0;
  }

  if (sub_257D71788() & 1) == 0 || (sub_257D71788() & 1) != 0 && (byte_27F912FE8)
  {
    return 1;
  }

  return v0;
}

uint64_t sub_257E088B8(char a1)
{
  v189 = sub_257ECFDF0();
  v188 = *(v189 - 8);
  MEMORY[0x28223BE20](v189);
  v187 = v183 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9E38);
  v192 = *(v193 - 8);
  MEMORY[0x28223BE20](v193);
  v191 = v183 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DB0);
  MEMORY[0x28223BE20](v5 - 8);
  v190 = v183 - v6;
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DC0);
  v185 = *(v186 - 8);
  MEMORY[0x28223BE20](v186);
  v184 = v183 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F8740);
  MEMORY[0x28223BE20](v8 - 8);
  v216 = v183 - v9;
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9E48);
  v222 = *(v218 - 8);
  MEMORY[0x28223BE20](v218);
  v215 = v183 - v10;
  v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9E50);
  v223 = *(v219 - 8);
  MEMORY[0x28223BE20](v219);
  v217 = v183 - v11;
  v214 = sub_257ECF130();
  v203 = *(v214 - 8);
  MEMORY[0x28223BE20](v214);
  v213 = v183 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v212 = sub_257ECFD10();
  v211 = *(v212 - 1);
  MEMORY[0x28223BE20](v212);
  v210 = v183 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F54C0);
  v204 = *(v226 - 8);
  MEMORY[0x28223BE20](v226);
  v15 = v183 - v14;
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F84F0);
  MEMORY[0x28223BE20](v201);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F54D0);
  v17 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v17);
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9E60);
  v205 = *(v206 - 1);
  MEMORY[0x28223BE20](v206);
  v200 = v183 - v18;
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F54E0);
  v208 = *(v209 - 8);
  MEMORY[0x28223BE20](v209);
  v207 = v183 - v19;
  v20 = type metadata accessor for AppViewController();
  v230.receiver = v1;
  v230.super_class = v20;
  objc_msgSendSuper2(&v230, sel_viewDidAppear_, a1 & 1);
  v202 = v1;
  sub_257DF5CD8(0, 0xE000000000000000);
  if (qword_281544FE0 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v21 = xmmword_281548330;
    swift_beginAccess();
    sub_257ECC3F0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9350);
    sub_257ECDD30();
    swift_endAccess();

    v183[1] = v21;
    swift_beginAccess();
    sub_257ECC3F0();
    sub_257ECDD30();
    swift_endAccess();

    v22 = qword_281548348;
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F54F0);
    sub_257ECDD30();
    swift_endAccess();
    swift_beginAccess();
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DD0);
    v221 = v22;
    v225 = v23;
    sub_257ECDD30();
    swift_endAccess();
    sub_257BD2D4C(&unk_281544190, &unk_27F8F54D0);
    sub_257BD2D4C(&unk_281544170, &qword_27F8F84F0);
    v224 = sub_257BD2D4C(&unk_281544140, &unk_27F8F54C0);
    v24 = v200;
    v220 = v15;
    sub_257ECDC60();
    v25 = v210;
    sub_257ECFD00();
    v26 = sub_257BD2C2C(0, &qword_281543F10);
    v27 = v203;
    v28 = v213;
    v29 = v214;
    (*(v203 + 13))(v213, *MEMORY[0x277D851C0], v214);
    v30 = sub_257ECFD90();
    (*(v27 + 1))(v28, v29);
    v231 = v30;
    sub_257BD2D4C(&unk_281544490, &qword_27F8F9E60);
    v31 = sub_257CA64A0(&qword_281543F20, &qword_281543F10);
    v32 = v207;
    v33 = v206;
    v214 = v26;
    v213 = v31;
    sub_257ECDE00();

    (*(v211 + 8))(v25, v212);
    (*(v205 + 8))(v24, v33);
    v34 = swift_allocObject();
    v35 = v202;
    swift_unknownObjectWeakInit();
    v36 = swift_allocObject();
    *(v36 + 16) = sub_257E2C36C;
    *(v36 + 24) = v34;
    sub_257BD2D4C(&unk_2815442A8, &unk_27F8F54E0);
    v37 = v209;
    v38 = sub_257ECDE50();

    (*(v208 + 8))(v32, v37);
    *&v35[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_liveLensDisplayAppearanceSubscription] = v38;

    v39 = v226;
    if (qword_27F8F4618 != -1)
    {
      swift_once();
    }

    if (byte_27F8F78A0 == 1)
    {
      v40 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_peopleDetectionSubscription;
      if (*&v35[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_peopleDetectionSubscription])
      {
        sub_257ECC3F0();
        sub_257ECDCC0();
      }

      v41 = v220;
      *&v35[v40] = 0;

      swift_beginAccess();
      sub_257ECDD30();
      swift_endAccess();
      v42 = sub_257ECDD90();
      (*(v204 + 8))(v41, v39);
      v231 = v42;
      v229 = *&v35[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_controlsQueue];
      v43 = v229;
      v44 = sub_257ECFCF0();
      v45 = v216;
      (*(*(v44 - 8) + 56))(v216, 1, 1, v44);
      v46 = v43;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9DC8);
      sub_257BD2D4C(&qword_2815441D0, &unk_27F8F9DC8);
      v47 = v215;
      sub_257ECDE20();
      sub_257BE4084(v45, &unk_27F8F8740);

      sub_257BD2D4C(&qword_281544410, &qword_27F8F9E48);
      v48 = v217;
      v49 = v218;
      sub_257ECDE10();
      (*(v222 + 8))(v47, v49);
      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_257BD2D4C(&qword_281544358, &unk_27F8F9E50);
      v50 = v219;
      v51 = sub_257ECDE50();

      v223[1](v48, v50);
      *&v35[v40] = v51;
    }

    v52 = &v35[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_focusLockSubscriptions];
    swift_beginAccess();
    v203 = v52;
    v53 = *v52;
    if ((*v52 & 0xC000000000000001) != 0)
    {

      swift_unknownObjectRetain();
      sub_257ED01D0();
      sub_257ECDCD0();
      sub_257E2C2E0(&unk_27F8F9E20, MEMORY[0x277CBCDA8]);
      sub_257ECFAA0();
      v55 = v231;
      v54 = v232;
      v56 = v233;
      v57 = v234;
      v15 = v235;
    }

    else
    {
      v58 = -1 << *(v53 + 32);
      v54 = v53 + 56;
      v56 = ~v58;
      v59 = -v58;
      v60 = v59 < 64 ? ~(-1 << v59) : -1;
      v15 = (v60 & *(v53 + 56));
      swift_bridgeObjectRetain_n();
      v57 = 0;
      v55 = v53;
    }

    v212 = v56;
    v61 = (v56 + 64) >> 6;
    if (v55 < 0)
    {
      break;
    }

LABEL_15:
    v62 = v57;
    v63 = v15;
    v64 = v57;
    if (v15)
    {
LABEL_19:
      v65 = (v63 - 1) & v63;
      v66 = *(*(v55 + 48) + ((v64 << 9) | (8 * __clz(__rbit64(v63)))));
      sub_257ECC3F0();
      if (v66)
      {
        goto LABEL_23;
      }

      goto LABEL_25;
    }

    while (1)
    {
      v64 = v62 + 1;
      if (__OFADD__(v62, 1))
      {
        break;
      }

      if (v64 >= v61)
      {
        goto LABEL_25;
      }

      v63 = *(v54 + 8 * v64);
      ++v62;
      if (v63)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  while (1)
  {
    v67 = sub_257ED0230();
    if (!v67)
    {
      break;
    }

    v227 = v67;
    sub_257ECDCD0();
    swift_dynamicCast();
    v64 = v57;
    v65 = v15;
    if (!v228)
    {
      break;
    }

LABEL_23:
    sub_257ECDCC0();

    v57 = v64;
    v15 = v65;
    if ((v55 & 0x8000000000000000) == 0)
    {
      goto LABEL_15;
    }
  }

LABEL_25:
  sub_257C02520();

  *v203 = MEMORY[0x277D84FA0];

  v68 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pointSpeakSubscription;
  if (*&v35[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pointSpeakSubscription])
  {
    sub_257ECC3F0();
    sub_257ECDCC0();
  }

  v69 = v226;
  v70 = v204;
  v71 = v220;
  *&v35[v68] = 0;

  swift_beginAccess();
  sub_257ECDD30();
  swift_endAccess();
  v72 = sub_257ECDD90();
  v74 = *(v70 + 8);
  v73 = v70 + 8;
  v212 = v74;
  (v74)(v71, v69);
  v201 = v72;
  v228 = v72;
  v227 = *&v35[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_controlsQueue];
  v75 = v227;
  v76 = sub_257ECFCF0();
  v77 = *(v76 - 8);
  v78 = v216;
  v211 = *(v77 + 56);
  v210 = (v77 + 56);
  (v211)(v216, 1, 1, v76);
  v79 = v75;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9DC8);
  v81 = sub_257BD2D4C(&qword_2815441D0, &unk_27F8F9DC8);
  v82 = v215;
  v209 = v80;
  v208 = v81;
  sub_257ECDE20();
  sub_257BE4084(v78, &unk_27F8F8740);

  v83 = sub_257BD2D4C(&qword_281544410, &qword_27F8F9E48);
  v84 = v217;
  v85 = v218;
  v207 = v83;
  sub_257ECDE10();
  v86 = *(v222 + 8);
  v222 += 8;
  v206 = v86;
  (v86)(v82, v85);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v87 = sub_257BD2D4C(&qword_281544358, &unk_27F8F9E50);
  v88 = v219;
  v205 = v87;
  v89 = sub_257ECDE50();

  v90 = v223[1];
  ++v223;
  v90(v84, v88);
  *&v35[v68] = v89;

  v91 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_textDetectionSubscription;
  if (*&v35[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_textDetectionSubscription])
  {
    sub_257ECC3F0();
    sub_257ECDCC0();
  }

  *&v35[v91] = 0;

  swift_beginAccess();
  v92 = v220;
  sub_257ECDD30();
  swift_endAccess();
  v93 = v226;
  v94 = sub_257ECDD90();
  v212(v92, v93);
  v200 = v94;
  v227 = v79;
  v228 = v94;
  v95 = v216;
  (v211)(v216, 1, 1, v76);
  v96 = v79;
  v97 = v215;
  sub_257ECDE20();
  sub_257BE4084(v95, &unk_27F8F8740);

  v98 = v217;
  v99 = v218;
  sub_257ECDE10();
  (v206)(v97, v99);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v100 = v219;
  v101 = sub_257ECDE50();

  v90(v98, v100);
  *&v35[v91] = v101;

  v102 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pointSpeakFeedbacksSubscription;
  if (*&v35[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pointSpeakFeedbacksSubscription])
  {
    sub_257ECC3F0();
    sub_257ECDCC0();
  }

  *&v35[v102] = 0;

  swift_beginAccess();
  v103 = v220;
  sub_257ECDD30();
  swift_endAccess();
  v104 = v226;
  v105 = sub_257ECDD90();
  v212(v103, v104);
  v199 = v105;
  v227 = v96;
  v228 = v105;
  v106 = v216;
  (v211)(v216, 1, 1, v76);
  v107 = v96;
  v108 = v215;
  sub_257ECDE20();
  sub_257BE4084(v106, &unk_27F8F8740);

  v109 = v217;
  v110 = v218;
  sub_257ECDE10();
  (v206)(v108, v110);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v111 = v219;
  v112 = sub_257ECDE50();

  v90(v109, v111);
  *&v35[v102] = v112;

  v113 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_textDetectionFeedbacksSubscription;
  if (*&v35[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_textDetectionFeedbacksSubscription])
  {
    sub_257ECC3F0();
    sub_257ECDCC0();
  }

  *&v35[v113] = 0;

  swift_beginAccess();
  v114 = v220;
  sub_257ECDD30();
  swift_endAccess();
  v115 = v226;
  v116 = sub_257ECDD90();
  v212(v114, v115);
  v198 = v116;
  v227 = v107;
  v228 = v116;
  v117 = v216;
  (v211)(v216, 1, 1, v76);
  v118 = v107;
  v119 = v215;
  sub_257ECDE20();
  sub_257BE4084(v117, &unk_27F8F8740);

  v120 = v217;
  v121 = v218;
  sub_257ECDE10();
  (v206)(v119, v121);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v122 = v219;
  v123 = sub_257ECDE50();

  v90(v120, v122);
  *&v35[v113] = v123;

  v124 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_doorDetectionSubscription;
  if (*&v35[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_doorDetectionSubscription])
  {
    sub_257ECC3F0();
    sub_257ECDCC0();
  }

  *&v35[v124] = 0;

  swift_beginAccess();
  v125 = v220;
  sub_257ECDD30();
  swift_endAccess();
  v126 = v226;
  v127 = sub_257ECDD90();
  v212(v125, v126);
  v197 = v127;
  v227 = v118;
  v228 = v127;
  v128 = v216;
  (v211)(v216, 1, 1, v76);
  v129 = v118;
  v130 = v215;
  sub_257ECDE20();
  sub_257BE4084(v128, &unk_27F8F8740);

  v131 = v217;
  v132 = v218;
  sub_257ECDE10();
  (v206)(v130, v132);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v133 = v219;
  v134 = sub_257ECDE50();

  v90(v131, v133);
  *&v35[v124] = v134;

  v135 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_objectUnderstandingSubscription;
  if (*&v35[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_objectUnderstandingSubscription])
  {
    sub_257ECC3F0();
    sub_257ECDCC0();
  }

  *&v35[v135] = 0;

  swift_beginAccess();
  v136 = v220;
  sub_257ECDD30();
  swift_endAccess();
  v137 = v226;
  v138 = sub_257ECDD90();
  v212(v136, v137);
  v196 = v138;
  v227 = v129;
  v228 = v138;
  v139 = v216;
  (v211)(v216, 1, 1, v76);
  v140 = v129;
  v141 = v215;
  sub_257ECDE20();
  sub_257BE4084(v139, &unk_27F8F8740);

  v142 = v217;
  v143 = v218;
  sub_257ECDE10();
  (v206)(v141, v143);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v144 = v219;
  v145 = sub_257ECDE50();

  v90(v142, v144);
  *&v35[v135] = v145;

  v146 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectionModeSubscription;
  if (*&v35[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectionModeSubscription])
  {
    sub_257ECC3F0();
    sub_257ECDCC0();
  }

  *&v35[v146] = 0;

  swift_beginAccess();
  v147 = v220;
  sub_257ECDD30();
  swift_endAccess();
  v148 = v226;
  v149 = sub_257ECDD90();
  v212(v147, v148);
  v195 = v149;
  v227 = v140;
  v228 = v149;
  v150 = v216;
  (v211)(v216, 1, 1, v76);
  v151 = v140;
  v152 = v215;
  sub_257ECDE20();
  sub_257BE4084(v150, &unk_27F8F8740);

  v153 = v217;
  v154 = v218;
  sub_257ECDE10();
  (v206)(v152, v154);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v155 = v219;
  v156 = sub_257ECDE50();

  v90(v153, v155);
  *&v35[v146] = v156;

  v157 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_imageCaptionSubscription;
  v158 = v73;
  if (*&v35[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_imageCaptionSubscription])
  {
    sub_257ECC3F0();
    sub_257ECDCC0();
  }

  *&v35[v157] = 0;

  swift_beginAccess();
  v159 = v220;
  sub_257ECDD30();
  swift_endAccess();
  v160 = v226;
  v161 = sub_257ECDD90();
  v204 = v158;
  v212(v159, v160);
  v194 = v161;
  v227 = v151;
  v228 = v161;
  v162 = v216;
  (v211)(v216, 1, 1, v76);
  v163 = v215;
  sub_257ECDE20();
  sub_257BE4084(v162, &unk_27F8F8740);

  v164 = v217;
  v165 = v218;
  sub_257ECDE10();
  (v206)(v163, v165);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v166 = v219;
  v167 = sub_257ECDE50();

  v90(v164, v166);
  *&v35[v157] = v167;

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v228)
  {
    v215 = v228;
    swift_beginAccess();
    sub_257ECDD30();
    swift_endAccess();
    v223 = objc_opt_self();
    v168 = [v223 mainRunLoop];
    v228 = v168;
    v217 = sub_257ED0080();
    v169 = *(v217 - 1);
    v216 = *(v169 + 56);
    v218 = v169 + 56;
    v170 = v190;
    (v216)(v190, 1, 1, v217);
    v222 = sub_257BD2C2C(0, &unk_281543D40);
    v219 = sub_257CA64A0(&qword_281543D50, &unk_281543D40);
    v171 = v184;
    sub_257ECDDF0();
    sub_257BE4084(v170, &unk_27F8F4DB0);

    v212(v159, v160);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v214 = MEMORY[0x277CBCD60];
    v213 = sub_257BD2D4C(&unk_281544230, &unk_27F8F4DC0);
    v172 = v186;
    sub_257ECDE50();

    v173 = *(v185 + 8);
    v173(v171, v172);
    swift_beginAccess();
    sub_257ECDCB0();
    swift_endAccess();

    swift_beginAccess();
    sub_257ECDD30();
    swift_endAccess();
    v174 = [v223 mainRunLoop];
    v228 = v174;
    (v216)(v170, 1, 1, v217);
    sub_257ECDDF0();
    sub_257BE4084(v170, &unk_27F8F4DB0);

    v212(v159, v160);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_257ECDE50();

    v173(v171, v172);
    swift_beginAccess();
    sub_257ECDCB0();
    swift_endAccess();

    v175 = [objc_opt_self() defaultCenter];
    v176 = v187;
    sub_257ECFE00();

    sub_257E2C2E0(&qword_281543EB0, MEMORY[0x277CC9DB0]);
    v177 = v189;
    v178 = sub_257ECDD90();
    (*(v188 + 8))(v176, v177);
    v228 = v178;
    v179 = [v223 mainRunLoop];
    v227 = v179;
    (v216)(v170, 1, 1, v217);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9E68);
    sub_257BD2D4C(&qword_2815441F0, &qword_27F8F9E68);
    v180 = v191;
    sub_257ECDDF0();
    sub_257BE4084(v170, &unk_27F8F4DB0);

    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_257BD2D4C(&unk_281544278, &unk_27F8F9E38);
    v181 = v193;
    sub_257ECDE50();

    (*(v192 + 8))(v180, v181);
    swift_beginAccess();
    sub_257ECDCB0();
    swift_endAccess();

    sub_257E1A59C();
  }

  else
  {
  }
}

void sub_257E0B3A8(char *a1, char a2, double a3, double a4)
{
  v7 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = a3 + -0.5;
    if (a3 + -0.5 > 0.5)
    {
      v10 = 0.5;
    }

    if (v10 <= -0.5)
    {
      v10 = -0.5;
    }

    if (a4 <= 0.5)
    {
      v12 = 2.5;
      if (a4 * 1.4 + 0.3 <= 2.5)
      {
        v12 = a4 * 1.4 + 0.3;
      }
    }

    else
    {
      v11 = (a4 + -0.5) * 3.0 + 1.0;
      v12 = 2.5;
      if (v11 <= 2.5)
      {
        if ((a2 & 1) == 0)
        {
LABEL_9:
          if (v11 <= 0.3)
          {
            v11 = 0.3;
          }

          v13 = v7;
          sub_257E1C034(&v13, v10, v11);
        }

LABEL_12:

        return;
      }
    }

    v11 = v12;
    if ((a2 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }
}

void sub_257E0B4B8(unsigned __int8 *a1)
{
  v2 = sub_257ECF120();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v32[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_257ECF190();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v32[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    sub_257BD2C2C(0, &qword_281543F10);
    v35 = sub_257ECFD30();
    v13 = swift_allocObject();
    v33 = v10;
    *(v13 + 16) = v10;
    *(v13 + 24) = v12;
    v45 = sub_257E2C4E8;
    v46 = v13;
    aBlock = MEMORY[0x277D85DD0];
    v42 = 1107296256;
    v43 = sub_257D231C0;
    v44 = &block_descriptor_885;
    v14 = _Block_copy(&aBlock);
    v36 = v12;

    sub_257ECF150();
    aBlock = MEMORY[0x277D84F90];
    sub_257E2C2E0(&qword_281544090, MEMORY[0x277D85198]);
    v34 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
    sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480);
    sub_257ED0180();
    v15 = v35;
    MEMORY[0x259C72880](0, v9, v5, v14);
    _Block_release(v14);

    (*(v3 + 8))(v5, v2);
    (*(v7 + 8))(v9, v34);
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v16 = qword_281548348;
    swift_beginAccess();
    v17 = v16[16];
    v18 = v16[17];
    v19 = v16[18];
    aBlock = v16[15];
    v42 = v17;
    v43 = v18;
    v44 = v19;
    v20 = qword_2815447E0;

    if (v20 != -1)
    {
      v21 = swift_once();
    }

    MEMORY[0x28223BE20](v21);
    *&v32[-16] = &aBlock;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D70);
    sub_257ECFD50();

    v22 = v38;
    if (!v38)
    {
      goto LABEL_13;
    }

    v23 = v37;
    v24 = swift_beginAccess();
    v25 = v16[12];
    v26 = v16[13];
    v37 = v16[11];
    v38 = v25;
    v39 = v26;
    MEMORY[0x28223BE20](v24);
    *&v32[-16] = &v37;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D90);
    sub_257ECFD50();

    v27 = v40;
    if (*(v40 + 16))
    {
      v28 = sub_257C03F6C(v23, v22);
      v30 = v29;

      if (v30)
      {
        v31 = *(*(v27 + 56) + 296 * v28 + 72);

        if (v33 != v31)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          LOBYTE(v37) = 1;
          sub_257ECC3F0();
          sub_257ECDD70();
        }

        goto LABEL_13;
      }
    }

    else
    {
    }

LABEL_13:
  }
}

void sub_257E0BA74(unsigned __int8 *a1)
{
  v2 = sub_257ECF120();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v32[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_257ECF190();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v32[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    sub_257BD2C2C(0, &qword_281543F10);
    v35 = sub_257ECFD30();
    v13 = swift_allocObject();
    v33 = v10;
    *(v13 + 16) = v10;
    *(v13 + 24) = v12;
    v45 = sub_257E2C5FC;
    v46 = v13;
    aBlock = MEMORY[0x277D85DD0];
    v42 = 1107296256;
    v43 = sub_257D231C0;
    v44 = &block_descriptor_966;
    v14 = _Block_copy(&aBlock);
    v36 = v12;

    sub_257ECF150();
    aBlock = MEMORY[0x277D84F90];
    sub_257E2C2E0(&qword_281544090, MEMORY[0x277D85198]);
    v34 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
    sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480);
    sub_257ED0180();
    v15 = v35;
    MEMORY[0x259C72880](0, v9, v5, v14);
    _Block_release(v14);

    (*(v3 + 8))(v5, v2);
    (*(v7 + 8))(v9, v34);
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v16 = qword_281548348;
    swift_beginAccess();
    v17 = v16[16];
    v18 = v16[17];
    v19 = v16[18];
    aBlock = v16[15];
    v42 = v17;
    v43 = v18;
    v44 = v19;
    v20 = qword_2815447E0;

    if (v20 != -1)
    {
      v21 = swift_once();
    }

    MEMORY[0x28223BE20](v21);
    *&v32[-16] = &aBlock;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D70);
    sub_257ECFD50();

    v22 = v38;
    if (!v38)
    {
      goto LABEL_13;
    }

    v23 = v37;
    v24 = swift_beginAccess();
    v25 = v16[12];
    v26 = v16[13];
    v37 = v16[11];
    v38 = v25;
    v39 = v26;
    MEMORY[0x28223BE20](v24);
    *&v32[-16] = &v37;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D90);
    sub_257ECFD50();

    v27 = v40;
    if (*(v40 + 16))
    {
      v28 = sub_257C03F6C(v23, v22);
      v30 = v29;

      if (v30)
      {
        v31 = *(*(v27 + 56) + 296 * v28 + 76);

        if (v33 != v31)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          LOBYTE(v37) = 1;
          sub_257ECC3F0();
          sub_257ECDD70();
        }

        goto LABEL_13;
      }
    }

    else
    {
    }

LABEL_13:
  }
}

void sub_257E0C030(unsigned __int8 *a1)
{
  v2 = sub_257ECF120();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v32[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_257ECF190();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v32[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    sub_257BD2C2C(0, &qword_281543F10);
    v35 = sub_257ECFD30();
    v13 = swift_allocObject();
    v33 = v10;
    *(v13 + 16) = v10;
    *(v13 + 24) = v12;
    v45 = sub_257E2C5D0;
    v46 = v13;
    aBlock = MEMORY[0x277D85DD0];
    v42 = 1107296256;
    v43 = sub_257D231C0;
    v44 = &block_descriptor_958;
    v14 = _Block_copy(&aBlock);
    v36 = v12;

    sub_257ECF150();
    aBlock = MEMORY[0x277D84F90];
    sub_257E2C2E0(&qword_281544090, MEMORY[0x277D85198]);
    v34 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
    sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480);
    sub_257ED0180();
    v15 = v35;
    MEMORY[0x259C72880](0, v9, v5, v14);
    _Block_release(v14);

    (*(v3 + 8))(v5, v2);
    (*(v7 + 8))(v9, v34);
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v16 = qword_281548348;
    swift_beginAccess();
    v17 = v16[16];
    v18 = v16[17];
    v19 = v16[18];
    aBlock = v16[15];
    v42 = v17;
    v43 = v18;
    v44 = v19;
    v20 = qword_2815447E0;

    if (v20 != -1)
    {
      v21 = swift_once();
    }

    MEMORY[0x28223BE20](v21);
    *&v32[-16] = &aBlock;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D70);
    sub_257ECFD50();

    v22 = v38;
    if (!v38)
    {
      goto LABEL_13;
    }

    v23 = v37;
    v24 = swift_beginAccess();
    v25 = v16[12];
    v26 = v16[13];
    v37 = v16[11];
    v38 = v25;
    v39 = v26;
    MEMORY[0x28223BE20](v24);
    *&v32[-16] = &v37;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D90);
    sub_257ECFD50();

    v27 = v40;
    if (*(v40 + 16))
    {
      v28 = sub_257C03F6C(v23, v22);
      v30 = v29;

      if (v30)
      {
        v31 = *(*(v27 + 56) + 296 * v28 + 77);

        if (v33 != v31)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          LOBYTE(v37) = 1;
          sub_257ECC3F0();
          sub_257ECDD70();
        }

        goto LABEL_13;
      }
    }

    else
    {
    }

LABEL_13:
  }
}

uint64_t sub_257E0C5EC(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v3 = qword_2815447E0;

    if (v3 != -1)
    {
      v4 = swift_once();
    }

    MEMORY[0x28223BE20](v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F90);
    sub_257ECFD50();

    v5 = sub_257C592D0(1u, v6);

    *(a2 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_usePointSpeakSpeechFeedback) = v5;
  }

  return result;
}

uint64_t sub_257E0C784(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v3 = qword_2815447E0;

    if (v3 != -1)
    {
      v4 = swift_once();
    }

    MEMORY[0x28223BE20](v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5540);
    sub_257ECFD50();

    v5 = sub_257C592E8(1, v6);

    *(a2 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_useTextDetectionSpeechFeedback) = v5;
  }

  return result;
}

void sub_257E0C91C(unsigned __int8 *a1)
{
  v2 = sub_257ECF120();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v32[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_257ECF190();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v32[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    sub_257BD2C2C(0, &qword_281543F10);
    v35 = sub_257ECFD30();
    v13 = swift_allocObject();
    v33 = v10;
    *(v13 + 16) = v10;
    *(v13 + 24) = v12;
    v45 = sub_257E2C58C;
    v46 = v13;
    aBlock = MEMORY[0x277D85DD0];
    v42 = 1107296256;
    v43 = sub_257D231C0;
    v44 = &block_descriptor_938;
    v14 = _Block_copy(&aBlock);
    v36 = v12;

    sub_257ECF150();
    aBlock = MEMORY[0x277D84F90];
    sub_257E2C2E0(&qword_281544090, MEMORY[0x277D85198]);
    v34 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
    sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480);
    sub_257ED0180();
    v15 = v35;
    MEMORY[0x259C72880](0, v9, v5, v14);
    _Block_release(v14);

    (*(v3 + 8))(v5, v2);
    (*(v7 + 8))(v9, v34);
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v16 = qword_281548348;
    swift_beginAccess();
    v17 = v16[16];
    v18 = v16[17];
    v19 = v16[18];
    aBlock = v16[15];
    v42 = v17;
    v43 = v18;
    v44 = v19;
    v20 = qword_2815447E0;

    if (v20 != -1)
    {
      v21 = swift_once();
    }

    MEMORY[0x28223BE20](v21);
    *&v32[-16] = &aBlock;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D70);
    sub_257ECFD50();

    v22 = v38;
    if (!v38)
    {
      goto LABEL_13;
    }

    v23 = v37;
    v24 = swift_beginAccess();
    v25 = v16[12];
    v26 = v16[13];
    v37 = v16[11];
    v38 = v25;
    v39 = v26;
    MEMORY[0x28223BE20](v24);
    *&v32[-16] = &v37;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D90);
    sub_257ECFD50();

    v27 = v40;
    if (*(v40 + 16))
    {
      v28 = sub_257C03F6C(v23, v22);
      v30 = v29;

      if (v30)
      {
        v31 = *(*(v27 + 56) + 296 * v28 + 73);

        if (v33 != v31)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          LOBYTE(v37) = 1;
          sub_257ECC3F0();
          sub_257ECDD70();
        }

        goto LABEL_13;
      }
    }

    else
    {
    }

LABEL_13:
  }
}

void sub_257E0CED8(unsigned __int8 *a1)
{
  v2 = sub_257ECF120();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v32[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_257ECF190();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v32[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    sub_257BD2C2C(0, &qword_281543F10);
    v35 = sub_257ECFD30();
    v13 = swift_allocObject();
    v33 = v10;
    *(v13 + 16) = v10;
    *(v13 + 24) = v12;
    v45 = sub_257E2C560;
    v46 = v13;
    aBlock = MEMORY[0x277D85DD0];
    v42 = 1107296256;
    v43 = sub_257D231C0;
    v44 = &block_descriptor_930;
    v14 = _Block_copy(&aBlock);
    v36 = v12;

    sub_257ECF150();
    aBlock = MEMORY[0x277D84F90];
    sub_257E2C2E0(&qword_281544090, MEMORY[0x277D85198]);
    v34 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
    sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480);
    sub_257ED0180();
    v15 = v35;
    MEMORY[0x259C72880](0, v9, v5, v14);
    _Block_release(v14);

    (*(v3 + 8))(v5, v2);
    (*(v7 + 8))(v9, v34);
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v16 = qword_281548348;
    swift_beginAccess();
    v17 = v16[16];
    v18 = v16[17];
    v19 = v16[18];
    aBlock = v16[15];
    v42 = v17;
    v43 = v18;
    v44 = v19;
    v20 = qword_2815447E0;

    if (v20 != -1)
    {
      v21 = swift_once();
    }

    MEMORY[0x28223BE20](v21);
    *&v32[-16] = &aBlock;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D70);
    sub_257ECFD50();

    v22 = v38;
    if (!v38)
    {
      goto LABEL_13;
    }

    v23 = v37;
    v24 = swift_beginAccess();
    v25 = v16[12];
    v26 = v16[13];
    v37 = v16[11];
    v38 = v25;
    v39 = v26;
    MEMORY[0x28223BE20](v24);
    *&v32[-16] = &v37;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D90);
    sub_257ECFD50();

    v27 = v40;
    if (*(v40 + 16))
    {
      v28 = sub_257C03F6C(v23, v22);
      v30 = v29;

      if (v30)
      {
        v31 = *(*(v27 + 56) + 296 * v28 + 74);

        if (v33 != v31)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          LOBYTE(v37) = 1;
          sub_257ECC3F0();
          sub_257ECDD70();
        }

        goto LABEL_13;
      }
    }

    else
    {
    }

LABEL_13:
  }
}

void sub_257E0D494(char a1, uint64_t a2)
{
  v4 = sub_257ECF120();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_257ECF190();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_257D36B68();
    sub_257C9F3E4();
  }

  else
  {
    sub_257D383B4();
    v12 = *(a2 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectionModeView);
    if (v12)
    {
      sub_257BD2C2C(0, &qword_281543F10);
      v13 = v12;
      v22 = v9;
      v14 = v13;
      v21 = sub_257ECFD30();
      v15 = swift_allocObject();
      *(v15 + 16) = v14;
      aBlock[4] = sub_257E2C558;
      aBlock[5] = v15;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_257D231C0;
      aBlock[3] = &block_descriptor_924;
      v20 = _Block_copy(aBlock);
      v16 = v14;

      sub_257ECF150();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_257E2C2E0(&qword_281544090, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
      sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480);
      sub_257ED0180();
      v18 = v20;
      v17 = v21;
      MEMORY[0x259C72880](0, v11, v7, v20);
      _Block_release(v18);

      (*(v5 + 8))(v7, v4);
      (*(v22 + 8))(v11, v8);
    }
  }
}

void sub_257E0D7C4(unsigned __int8 *a1)
{
  v2 = sub_257ECF120();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v32[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_257ECF190();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v32[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    sub_257BD2C2C(0, &qword_281543F10);
    v35 = sub_257ECFD30();
    v13 = swift_allocObject();
    v33 = v10;
    *(v13 + 16) = v10;
    *(v13 + 24) = v12;
    v45 = sub_257E2C520;
    v46 = v13;
    aBlock = MEMORY[0x277D85DD0];
    v42 = 1107296256;
    v43 = sub_257D231C0;
    v44 = &block_descriptor_910;
    v14 = _Block_copy(&aBlock);
    v36 = v12;

    sub_257ECF150();
    aBlock = MEMORY[0x277D84F90];
    sub_257E2C2E0(&qword_281544090, MEMORY[0x277D85198]);
    v34 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
    sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480);
    sub_257ED0180();
    v15 = v35;
    MEMORY[0x259C72880](0, v9, v5, v14);
    _Block_release(v14);

    (*(v3 + 8))(v5, v2);
    (*(v7 + 8))(v9, v34);
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v16 = qword_281548348;
    swift_beginAccess();
    v17 = v16[16];
    v18 = v16[17];
    v19 = v16[18];
    aBlock = v16[15];
    v42 = v17;
    v43 = v18;
    v44 = v19;
    v20 = qword_2815447E0;

    if (v20 != -1)
    {
      v21 = swift_once();
    }

    MEMORY[0x28223BE20](v21);
    *&v32[-16] = &aBlock;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D70);
    sub_257ECFD50();

    v22 = v38;
    if (!v38)
    {
      goto LABEL_13;
    }

    v23 = v37;
    v24 = swift_beginAccess();
    v25 = v16[12];
    v26 = v16[13];
    v37 = v16[11];
    v38 = v25;
    v39 = v26;
    MEMORY[0x28223BE20](v24);
    *&v32[-16] = &v37;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D90);
    sub_257ECFD50();

    v27 = v40;
    if (*(v40 + 16))
    {
      v28 = sub_257C03F6C(v23, v22);
      v30 = v29;

      if (v30)
      {
        v31 = *(*(v27 + 56) + 296 * v28 + 75);

        if (v33 != v31)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          LOBYTE(v37) = 1;
          sub_257ECC3F0();
          sub_257ECDD70();
        }

        goto LABEL_13;
      }
    }

    else
    {
    }

LABEL_13:
  }
}

void sub_257E0DD80()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (v8 == 1)
    {
      v2 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_arService;
      v3 = sub_257D21CB8(0, 0, 0);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECDD60();

      [v3 setAutoFocusEnabled_];
      v4 = *&v1[v2];
      v5 = OBJC_IVAR____TtC16MagnifierSupport12MAGARService_arSession;
      swift_beginAccess();
      v6 = *(v4 + v5);
      if (v6)
      {
        v7 = v6;
        [v7 runWithConfiguration:v3 options:1];
      }
    }

    else
    {
      v3 = v1;
    }
  }
}

uint64_t sub_257E0DF44(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v19 = a5;
  v7 = sub_257ECF120();
  v21 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_257ECF190();
  v10 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v15 = result;
    sub_257BD2C2C(0, &qword_281543F10);
    v16 = sub_257ECFD30();
    v17 = swift_allocObject();
    *(v17 + 16) = v13;
    *(v17 + 24) = v15;
    aBlock[4] = a4;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_257D231C0;
    aBlock[3] = v19;
    v18 = _Block_copy(aBlock);
    v19 = v15;

    sub_257ECF150();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_257E2C2E0(&qword_281544090, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
    sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480);
    sub_257ED0180();
    MEMORY[0x259C72880](0, v12, v9, v18);
    _Block_release(v18);

    (*(v21 + 8))(v9, v7);
    return (*(v10 + 8))(v12, v20);
  }

  return result;
}

uint64_t sub_257E0E268(uint64_t result)
{
  if (result)
  {
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v1 = qword_2815447E0;

    if (v1 != -1)
    {
      v2 = swift_once();
    }

    MEMORY[0x28223BE20](v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D70);
    sub_257ECFD50();

    if (v7)
    {
      v3 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v4 = swift_allocObject();
      v4[2] = v6;
      v4[3] = v7;
      v4[4] = v3;

      sub_257ECC3F0();
      sub_257D61CE8(v6, v7, 0, sub_257C7E064, v4);

      v5 = sub_257DFF3FC();
      sub_257C7C61C();

      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECC3F0();
      return sub_257ECDD70();
    }
  }

  return result;
}

void sub_257E0E4C8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (v2)
    {
      sub_257D34520();
    }
  }
}

void sub_257E0E5D4()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_didSetupCardUI;
  if ((*(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_didSetupCardUI) & 1) == 0)
  {
    v2 = [v0 childViewControllers];
    sub_257BD2C2C(0, &unk_281543F40);
    v3 = sub_257ECF810();

    v4 = sub_257DFF054();
    v7 = v4;
    MEMORY[0x28223BE20](v4);
    v6[2] = &v7;
    v5 = sub_257DFC4AC(sub_257E2D178, v6, v3);

    if ((v5 & 1) == 0)
    {
      sub_257E1009C();
      sub_257E11B34();
      sub_257E11128();
      sub_257DFEA6C();
      sub_257DFD6C4();
      *(v0 + v1) = 1;
      sub_257E0EF78(0);
      sub_257E0E708();
      sub_257E0EBEC();
      sub_257D3C144();
      sub_257D3C600();
      sub_257E1AAFC();
    }
  }
}

void sub_257E0E708()
{
  v1 = sub_257E001D8();
  [v1 setAlpha_];

  v2 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___coachingLabel;
  [*&v0[OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___coachingLabel] setTranslatesAutoresizingMaskIntoConstraints_];
  v3 = [v0 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = v3;
  [v3 addSubview_];

  v5 = *&v0[v2];
  v6 = [v5 topAnchor];
  v7 = [v0 view];
  if (!v7)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v8 = v7;
  v9 = [v7 safeAreaLayoutGuide];

  v10 = [v9 topAnchor];
  if (qword_281544A68 != -1)
  {
    swift_once();
  }

  v11 = *&qword_2815482F8;
  v12 = [v6 constraintEqualToAnchor:v10 constant:*&qword_2815482F8];

  v13 = *&v5[OBJC_IVAR____TtC16MagnifierSupport18MFInformationLabel_constraintAboveCard];
  *&v5[OBJC_IVAR____TtC16MagnifierSupport18MFInformationLabel_constraintAboveCard] = v12;

  v14 = *&v0[v2];
  v15 = [v14 bottomAnchor];
  v16 = [v0 view];
  if (!v16)
  {
    goto LABEL_15;
  }

  v17 = v16;
  v18 = [v16 safeAreaLayoutGuide];

  v19 = [v18 bottomAnchor];
  v20 = [v15 constraintEqualToAnchor:v19 constant:-v11];

  v21 = *&v14[OBJC_IVAR____TtC16MagnifierSupport18MFInformationLabel_constraintBelowCard];
  *&v14[OBJC_IVAR____TtC16MagnifierSupport18MFInformationLabel_constraintBelowCard] = v20;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_257EDBE40;
  v23 = [*&v0[v2] leadingAnchor];
  v24 = [v0 view];
  if (!v24)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v25 = v24;
  v26 = [v24 leadingAnchor];

  v27 = [v23 constraintGreaterThanOrEqualToAnchor:v26 constant:v11];
  *(v22 + 32) = v27;
  v28 = [*&v0[v2] trailingAnchor];
  v29 = [v0 view];
  if (!v29)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v30 = v29;
  v31 = [v29 trailingAnchor];

  v32 = [v28 constraintLessThanOrEqualToAnchor:v31 constant:-v11];
  *(v22 + 40) = v32;
  v33 = [*&v0[v2] centerXAnchor];
  v34 = [v0 view];
  if (!v34)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v35 = v34;
  v36 = [v34 centerXAnchor];

  v37 = [v33 constraintEqualToAnchor_];
  *(v22 + 48) = v37;
  v38 = *(*&v0[v2] + OBJC_IVAR____TtC16MagnifierSupport18MFInformationLabel_constraintAboveCard);
  if (!v38)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v39 = objc_opt_self();
  *(v22 + 56) = v38;
  sub_257BD2C2C(0, &qword_281543EF0);
  v40 = v38;
  v41 = sub_257ECF7F0();

  [v39 activateConstraints_];

  v42 = sub_257DFF054();
  swift_unknownObjectWeakAssign();
}

void sub_257E0EBEC()
{
  v1 = sub_257E002B8();
  if (!v1)
  {
    return;
  }

  v31 = v1;
  [v31 setAlpha_];
  [v31 setHidden_];
  [v31 setTranslatesAutoresizingMaskIntoConstraints_];
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_13;
  }

  v3 = v2;
  [v2 addSubview_];

  v4 = [v31 centerXAnchor];
  v5 = [v0 view];
  if (!v5)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v6 = v5;
  v7 = [v5 centerXAnchor];

  v8 = [v4 constraintEqualToAnchor_];
  v9 = OBJC_IVAR____TtC16MagnifierSupport18MFInformationLabel_centerConstraintX;
  v10 = *&v31[OBJC_IVAR____TtC16MagnifierSupport18MFInformationLabel_centerConstraintX];
  *&v31[OBJC_IVAR____TtC16MagnifierSupport18MFInformationLabel_centerConstraintX] = v8;

  v11 = [v31 centerYAnchor];
  v12 = [v0 view];
  if (!v12)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = v12;
  v14 = [v12 centerYAnchor];

  v15 = [v11 constraintEqualToAnchor_];
  v16 = OBJC_IVAR____TtC16MagnifierSupport18MFInformationLabel_centerConstraintY;
  v17 = *&v31[OBJC_IVAR____TtC16MagnifierSupport18MFInformationLabel_centerConstraintY];
  *&v31[OBJC_IVAR____TtC16MagnifierSupport18MFInformationLabel_centerConstraintY] = v15;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_257EDED10;
  v19 = *&v31[v9];
  if (!v19)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  *(v18 + 32) = v19;
  v20 = *&v31[v16];
  if (!v20)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  *(v18 + 40) = v20;
  v21 = v20;
  v22 = v19;
  v23 = [v31 widthAnchor];

  v24 = [v0 view];
  if (!v24)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v25 = v24;
  v26 = objc_opt_self();
  v27 = [v25 heightAnchor];

  v28 = [v23 constraintLessThanOrEqualToAnchor:v27 multiplier:0.8];
  *(v18 + 48) = v28;
  sub_257BD2C2C(0, &qword_281543EF0);
  v29 = sub_257ECF7F0();

  [v26 activateConstraints_];

  v30 = sub_257DFF054();
  swift_unknownObjectWeakAssign();
}