uint64_t sub_257E4C96C()
{
  v0 = sub_257ECD9D0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_257ECD990();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F8F45A8 != -1)
  {
    swift_once();
  }

  v8 = sub_257ECD9C0();
  __swift_project_value_buffer(v8, qword_27F8F5D90);
  v9 = sub_257ECD9A0();
  sub_257ECD9E0();
  v10 = sub_257ECFDB0();
  if (sub_257ED0090())
  {
    sub_257ECC3F0();
    sub_257ECDA10();

    if ((*(v1 + 88))(v3, v0) == *MEMORY[0x277D85B00])
    {
      v11 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1 + 8))(v3, v0);
      v11 = "";
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = sub_257ECD970();
    _os_signpost_emit_with_name_impl(&dword_257BAC000, v9, v10, v13, "SceneLaunchFromActionBtn", v11, v12, 2u);
    MEMORY[0x259C74820](v12, -1, -1);
  }

  return (*(v5 + 8))(v7, v4);
}

void sub_257E4CBF8(void *a1, void (*a2)(void *), uint64_t a3)
{
  v7 = [a1 visibleViewController];
  if (v7)
  {
    v33 = v7;
    type metadata accessor for AppViewController();
    v8 = swift_dynamicCastClass();
    if (v8)
    {
      v9 = v8;
      v10 = v33;
      if (!a2)
      {
LABEL_6:

        return;
      }

      v33 = v33;
      a2(v9);
LABEL_5:

      v10 = v33;
      goto LABEL_6;
    }

    type metadata accessor for EditControlsViewController();
    if (swift_dynamicCastClass())
    {
      v11 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v12 = swift_allocObject();
      v12[2] = v11;
      v12[3] = a1;
      v12[4] = a2;
      v12[5] = a3;
      sub_257ECC3F0();
      v13 = a1;
      sub_257BBD7E4(a2);
      sub_257D0CC10(sub_257E4F374, v12);

      return;
    }

    v14 = [v33 navigationController];
    if (!v14)
    {
      v18 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v19 = swift_allocObject();
      v19[2] = v18;
      v19[3] = a1;
      v19[4] = a2;
      v19[5] = a3;
      aBlock[4] = sub_257E4D58C;
      aBlock[5] = v19;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_257D231C0;
      aBlock[3] = &block_descriptor_59;
      v20 = _Block_copy(aBlock);
      v21 = a1;
      sub_257BBD7E4(a2);

      [v33 dismissViewControllerAnimated:0 completion:v20];

      _Block_release(v20);
      return;
    }

    v9 = v14;
    v15 = [v14 viewControllers];
    sub_257BD2C2C(0, &unk_281543F40);
    v16 = sub_257ECF810();

    if (v16 >> 62)
    {
      if (sub_257ED0210())
      {
        goto LABEL_19;
      }
    }

    else if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_19:
      if ((v16 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x259C72E20](0, v16);
      }

      else
      {
        if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_47;
        }

        v17 = *(v16 + 32);
      }

      v32 = v17;

      type metadata accessor for DetectionModeSettingsViewController();
      if (swift_dynamicCastClass())
      {
        goto LABEL_23;
      }

LABEL_28:
      v22 = [v9 viewControllers];
      v16 = sub_257ECF810();

      if (!(v16 >> 62))
      {
        if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_30:
          if ((v16 & 0xC000000000000001) != 0)
          {
            v23 = MEMORY[0x259C72E20](0, v16);
          }

          else
          {
            if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_52;
            }

            v23 = *(v16 + 32);
          }

          v24 = v23;

          type metadata accessor for ActivityNameOnBoardingController();
          v25 = swift_dynamicCastClass();

          if (v25)
          {
            v26 = [v9 viewControllers];
            v3 = sub_257ECF810();

            if (!(v3 >> 62))
            {
              if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_36;
              }

LABEL_53:

              return;
            }

LABEL_52:
            if (sub_257ED0210())
            {
LABEL_36:
              if ((v3 & 0xC000000000000001) != 0)
              {
                v27 = MEMORY[0x259C72E20](0, v3);
              }

              else
              {
                if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  __break(1u);
                  return;
                }

                v27 = *(v3 + 32);
              }

              v32 = v27;

              v28 = swift_dynamicCastClass();
              if (v28)
              {
                v29 = v28 + OBJC_IVAR____TtC16MagnifierSupport32ActivityNameOnBoardingController_delegate;
                if (swift_unknownObjectWeakLoadStrong())
                {
                  v30 = *(v29 + 8);
                  ObjectType = swift_getObjectType();
                  (*(v30 + 8))(ObjectType, v30);
                  swift_unknownObjectRelease();
                }

                if (a2)
                {
                  a2(0);
                }

                goto LABEL_5;
              }

LABEL_23:

              v10 = v32;
              goto LABEL_6;
            }

            goto LABEL_53;
          }

LABEL_49:

          sub_257E4CBF8(a1, a2, a3);
          goto LABEL_5;
        }

LABEL_48:

        goto LABEL_49;
      }

LABEL_47:
      if (sub_257ED0210())
      {
        goto LABEL_30;
      }

      goto LABEL_48;
    }

    goto LABEL_28;
  }

  if (a2)
  {
    a2(0);
  }
}

void sub_257E4D1EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_257E4CBF8(a2, a3, a4);
  }
}

void sub_257E4D264()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport13SceneDelegate_window);
  if (v1)
  {
    v2 = [v1 rootViewController];
    if (v2)
    {
      v7 = v2;
      type metadata accessor for MFNavigationController();
      v3 = swift_dynamicCastClass();
      if (v3)
      {
        v4 = [v3 navigationBar];

        v5 = [v4 _backgroundView];
        if (!v5)
        {
          return;
        }

        if (UIAccessibilityIsReduceTransparencyEnabled())
        {
          v6 = 1.0;
        }

        else
        {
          v6 = 0.6;
        }

        v7 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:v6];
        [v5 setBackgroundColor_];
      }
    }
  }
}

id sub_257E4D520(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t block_copy_helper_59(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_257ECC3F0();
}

uint64_t objectdestroy_20Tm()
{

  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

id sub_257E4D614(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v15[1] = *MEMORY[0x277D85DE8];
  v6 = sub_257ECCAE0();
  v15[0] = 0;
  v7 = [v3 initWithURL:v6 options:a2 error:v15];

  v8 = v15[0];
  if (v7)
  {
    v9 = sub_257ECCB70();
    v10 = *(*(v9 - 8) + 8);
    v11 = v8;
    v10(a1, v9);
  }

  else
  {
    v12 = v15[0];
    sub_257ECC9F0();

    swift_willThrow();
    v13 = sub_257ECCB70();
    (*(*(v13 - 8) + 8))(a1, v13);
  }

  return v7;
}

uint64_t sub_257E4D770(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_257BD2C2C(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_257E4D7C0()
{
  v1 = *(v0 + 40);
  if (*(v0 + 16) == 1)
  {
    sub_257E4EBE4();
  }

  if (v1)
  {
    sub_257E4F040();
  }
}

void sub_257E4D800(void *a1, void *a2)
{
  v3 = v2;
  v56 = a2;
  v53 = a1;
  v4 = sub_257ECDA30();
  v54 = *(v4 - 8);
  v55 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9E30);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v52 - v8;
  v10 = sub_257ECD990();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F8F45A8 != -1)
  {
    swift_once();
  }

  v14 = sub_257ECD9C0();
  __swift_project_value_buffer(v14, qword_27F8F5D90);
  sub_257ECD980();
  v15 = sub_257ECD9A0();
  v16 = sub_257ECFDD0();
  if (sub_257ED0090())
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    v18 = sub_257ECD970();
    _os_signpost_emit_with_name_impl(&dword_257BAC000, v15, v16, v18, "SceneConnect", "", v17, 2u);
    MEMORY[0x259C74820](v17, -1, -1);
  }

  (*(v11 + 8))(v13, v10);
  objc_opt_self();
  v19 = v53;
  v20 = swift_dynamicCastObjCClassUnconditional();
  v21 = [objc_allocWithZone(type metadata accessor for MFSecureWindow()) initWithWindowScene_];
  v22 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport13SceneDelegate_window);
  *(v3 + OBJC_IVAR____TtC16MagnifierSupport13SceneDelegate_window) = v21;
  v23 = v21;

  v24 = v56;
  v25 = [v56 shortcutItem];
  sub_257E493A4(v25);

  v26 = sub_257ECC810();
  (*(*(v26 - 8) + 56))(v9, 1, 1, v26);
  sub_257E4D264();
  sub_257BE4084(v9, &qword_27F8F9E30);
  v27 = [objc_opt_self() defaultCenter];
  [v27 addObserver:v3 selector:sel_updateAppearanceForReduceTransparency_ name:*MEMORY[0x277D764C8] object:0];

  [v23 makeKeyAndVisible];
  v28 = [v24 URLContexts];
  sub_257BD2C2C(0, &qword_281543F58);
  sub_257E4D770(&qword_281543F50, &qword_281543F58);
  v29 = sub_257ECFA70();

  sub_257E49A10(v19, v29);

  sub_257ECD4C0();
  v30 = sub_257ECDA20();
  v31 = sub_257ECFBD0();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 67109632;
    if (qword_281543D70 != -1)
    {
      v49 = v32;
      swift_once();
      v32 = v49;
    }

    *(v32 + 4) = byte_281548078;
    *(v32 + 8) = 1024;
    if (qword_27F8F4668 != -1)
    {
      v50 = v32;
      swift_once();
      v32 = v50;
    }

    *(v32 + 10) = byte_27F8F8D88;
    *(v32 + 14) = 1024;
    if (qword_27F8F4670 != -1)
    {
      v51 = v32;
      swift_once();
      v32 = v51;
    }

    *(v32 + 16) = byte_27F8F8D89;
    v33 = v32;
    _os_log_impl(&dword_257BAC000, v30, v31, "Device has home button: %{BOOL}d, is iPad: %{BOOL}d, is iPhone: %{BOOL}d", v32, 0x14u);
    MEMORY[0x259C74820](v33, -1, -1);
  }

  (*(v54 + 8))(v6, v55);
  v34 = [v24 userActivities];
  sub_257BD2C2C(0, &qword_27F8F9A58);
  sub_257E4D770(&unk_27F8FA550, &qword_27F8F9A58);
  v35 = sub_257ECFA70();

  v36 = sub_257DF8CD4(v35);

  if (v36)
  {
    v37 = [v36 userInfo];

    if (v37)
    {
      v38 = sub_257ECF3D0();

      v57 = 0xD000000000000017;
      v58 = 0x8000000257EF8B40;
      sub_257ED0280();
      if (*(v38 + 16) && (v39 = sub_257C03F28(v59), (v40 & 1) != 0))
      {
        sub_257BE41F4(*(v38 + 56) + 32 * v39, v60);
        sub_257C09D10(v59);
        if (swift_dynamicCast())
        {
          if (v57 == 0xD000000000000011 && 0x8000000257EF8B60 == v58)
          {

LABEL_27:
            if (qword_281544FE0 != -1)
            {
              swift_once();
            }

            v43 = qword_281548348;
            *(qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls_launchedWithShareActionFromExtension) = 1;
            v57 = 0xD000000000000014;
            v58 = 0x8000000257EF8B80;
            sub_257ED0280();
            if (*(v38 + 16) && (v44 = sub_257C03F28(v59), (v45 & 1) != 0))
            {
              sub_257BE41F4(*(v38 + 56) + 32 * v44, v60);
              sub_257C09D10(v59);

              if (swift_dynamicCast())
              {
                v46 = v57;
                v47 = v58;

                v48 = (v43 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls_capturedImageName);
                *v48 = v46;
                v48[1] = v47;
              }

              else
              {
              }
            }

            else
            {

              sub_257C09D10(v59);
            }

            return;
          }

          v42 = sub_257ED0640();

          if (v42)
          {
            goto LABEL_27;
          }
        }
      }

      else
      {
        sub_257C09D10(v59);
      }
    }
  }

  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v41 = qword_281548348;

  *(v41 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls_launchedWithShareActionFromExtension) = 0;
}

uint64_t sub_257E4E0E4(void *a1)
{
  result = [a1 userInfo];
  if (result)
  {
    v2 = result;
    v3 = sub_257ECF3D0();

    sub_257ED0280();
    if (*(v3 + 16) && (v4 = sub_257C03F28(v11), (v5 & 1) != 0))
    {
      sub_257BE41F4(*(v3 + 56) + 32 * v4, v12);
      sub_257C09D10(v11);
      if (swift_dynamicCast())
      {
        v6 = sub_257ED0640();

        if (v6)
        {
          if (qword_281544FE0 != -1)
          {
            swift_once();
          }

          v7 = qword_281548348;
          *(qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls_launchedWithShareActionFromExtension) = 1;
          sub_257ED0280();
          if (*(v3 + 16) && (v8 = sub_257C03F28(v11), (v9 & 1) != 0))
          {
            sub_257BE41F4(*(v3 + 56) + 32 * v8, v12);
            sub_257C09D10(v11);

            result = swift_dynamicCast();
            if (result)
            {
              v10 = (v7 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls_capturedImageName);
              *v10 = 0xD000000000000014;
              v10[1] = 0x8000000257EF8B80;
            }
          }

          else
          {

            return sub_257C09D10(v11);
          }

          return result;
        }
      }
    }

    else
    {
      sub_257C09D10(v11);
    }
  }

  if (qword_281544FE0 != -1)
  {
    result = swift_once();
  }

  *(qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls_launchedWithShareActionFromExtension) = 0;
  return result;
}

void sub_257E4EBE4()
{
  v1 = sub_257ECD990();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v23 - v6;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if ((v26 & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if ((v25 & 1) == 0)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECDD60();

      if (v24 && v24 == 1)
      {
      }

      else
      {
        v8 = sub_257ED0640();

        if ((v8 & 1) == 0)
        {
          v9 = *&v0[OBJC_IVAR____TtC16MagnifierSupport13SceneDelegate_window];
          if (v9)
          {
            v10 = [v9 rootViewController];
            if (v10)
            {
              v11 = v10;
              type metadata accessor for MFNavigationController();
              v12 = swift_dynamicCastClass();
              if (v12)
              {
                v13 = v12;
                v23 = v0;
                if (qword_27F8F45A8 != -1)
                {
                  swift_once();
                }

                v14 = sub_257ECD9C0();
                __swift_project_value_buffer(v14, qword_27F8F5D90);
                sub_257ECD980();
                v15 = sub_257ECD9A0();
                v16 = sub_257ECFDC0();
                if (sub_257ED0090())
                {
                  v17 = swift_slowAlloc();
                  *v17 = 0;
                  v18 = sub_257ECD970();
                  _os_signpost_emit_with_name_impl(&dword_257BAC000, v15, v16, v18, "SceneLaunchDetectMode", "", v17, 2u);
                  MEMORY[0x259C74820](v17, -1, -1);
                }

                (*(v2 + 16))(v5, v7, v1);
                sub_257ECDA00();
                swift_allocObject();
                v19 = sub_257ECD9F0();
                (*(v2 + 8))(v7, v1);
                v20 = swift_allocObject();
                v21 = v23;
                *(v20 + 16) = v23;
                *(v20 + 24) = v19;
                v22 = v21;
                sub_257ECC3F0();
                sub_257E4CBF8(v13, sub_257E4F304, v20);
              }

              else
              {
              }
            }
          }
        }
      }
    }
  }
}

void sub_257E4F040()
{
  v1 = sub_257ECD990();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - v6;
  v8 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport13SceneDelegate_window);
  if (v8)
  {
    v9 = [v8 rootViewController];
    if (v9)
    {
      v20 = v9;
      type metadata accessor for MFNavigationController();
      v10 = swift_dynamicCastClass();
      if (v10)
      {
        v11 = v10;
        if (qword_27F8F45A8 != -1)
        {
          swift_once();
        }

        v12 = sub_257ECD9C0();
        __swift_project_value_buffer(v12, qword_27F8F5D90);
        sub_257ECD980();
        v13 = sub_257ECD9A0();
        v14 = sub_257ECFDC0();
        if (sub_257ED0090())
        {
          v15 = swift_slowAlloc();
          *v15 = 0;
          v16 = sub_257ECD970();
          _os_signpost_emit_with_name_impl(&dword_257BAC000, v13, v14, v16, "SceneLaunchFromActionBtn", "", v15, 2u);
          MEMORY[0x259C74820](v15, -1, -1);
        }

        (*(v2 + 16))(v5, v7, v1);
        sub_257ECDA00();
        swift_allocObject();
        v17 = sub_257ECD9F0();
        (*(v2 + 8))(v7, v1);
        sub_257ECC3F0();
        sub_257E4CBF8(v11, sub_257E4F354, v17);
      }

      else
      {
        v18 = v20;
      }
    }
  }
}

uint64_t objectdestroy_59Tm()
{

  return swift_deallocObject();
}

uint64_t sub_257E4F378@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

id SCNBox.init(dimensions:chamferRadius:)(float a1, float a2, float a3, double a4)
{
  v4 = [swift_getObjCClassFromMetadata() boxWithWidth:a1 height:a2 length:a3 chamferRadius:a4];

  return v4;
}

double DetectedObject.transform.getter()
{
  v3 = *(v0 + 16);
  v4 = *(v0 + 32);
  v5 = *(v0 + 48);
  v6 = *(v0 + 64);
  [*v0 transform];
  *&result = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v3, v1.f32[0]), v4, *v1.f32, 1), v5, v1, 2), v6, v1, 3).u64[0];
  return result;
}

double simd_mul(simd_float4x4 a1, simd_float4x4 a2)
{
  v2 = 0;
  v4[2] = a2.columns[2];
  v4[3] = a2.columns[3];
  memset(v5, 0, sizeof(v5));
  do
  {
    v5[v2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a1.columns[0], COERCE_FLOAT(v4[v2])), a1.columns[1], *&v4[v2], 1), a1.columns[2], v4[v2], 2), a1.columns[3], v4[v2], 3);
    ++v2;
  }

  while (v2 != 4);
  return *v5;
}

float32x4_t DetectedObject.init(_:frame:)@<Q0>(id a1@<X1>, uint64_t a2@<X0>, float32x4_t *a3@<X8>)
{
  [a1 referenceOriginTransform];
  v17 = v6;
  v18 = v7;
  v19 = v8;
  v20 = v9;
  ARVisionToRenderingCoordinateTransform();
  v15 = v10;
  v16 = v11;
  v21 = v12;
  v22 = v13;

  result = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v17, v15.f32[0]), v18, *v15.f32, 1), v19, v15, 2), v20, v15, 3);
  a3->i64[0] = a2;
  a3[1] = result;
  a3[2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v17, v16.f32[0]), v18, *v16.f32, 1), v19, v16, 2), v20, v16, 3);
  a3[3] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v17, v21.f32[0]), v18, *v21.f32, 1), v19, v21, 2), v20, v21, 3);
  a3[4] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v17, v22.f32[0]), v18, *v22.f32, 1), v19, v22, 2), v20, v22, 3);
  return result;
}

id DetectedObject.type.getter()
{
  result = [*v0 type];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

void DetectedObject.id.getter()
{
  v1 = [*v0 identifier];
  if (v1)
  {
    v2 = v1;
    sub_257ECCCD0();
  }

  else
  {
    __break(1u);
  }
}

id SCNNode.init(_:)(uint64_t a1)
{
  v2 = sub_257ECCCF0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  v7 = *(a1 + 32);
  v27 = *(a1 + 16);
  v28 = v7;
  v8 = *(a1 + 64);
  v29 = *(a1 + 48);
  v30 = v8;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  [v6 dimensions];
  sub_257ECFB60();
  v13 = [objc_opt_self() boxWithWidth:v10 height:v11 length:v12 chamferRadius:0.0];
  v14 = [ObjCClassFromMetadata nodeWithGeometry_];

  v15 = v14;
  [v15 setOpacity_];
  result = [v6 identifier];
  if (result)
  {
    v17 = result;
    sub_257ECCCD0();

    sub_257ECCCA0();
    (*(v3 + 8))(v5, v2);
    v18 = sub_257ECF4C0();

    [v15 setName_];

    [v6 transform];
    v23 = v19;
    v24 = v20;
    v25 = v21;
    v26 = v22;

    [v15 setSimdTransform_];
    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_257E4F980(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v29 = a4;
  v7 = sub_257ECCCF0();
  MEMORY[0x28223BE20](v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a3 + 16);
  if (v11)
  {
    v12 = (v8 + 8);
    v13 = (a3 + 96);
    while (1)
    {
      v14 = *(v13 - 8);
      v15 = *(v13 - 3);
      v32 = *(v13 - 2);
      v33 = v15;
      v16 = *(v13 - 1);
      v30 = *v13;
      v31 = v16;
      v17 = v14;
      v18 = [v17 identifier];
      if (!v18)
      {
        break;
      }

      v19 = v18;
      sub_257ECCCD0();

      v20 = sub_257ECCCA0();
      v22 = v21;
      (*v12)(v10, v7);
      if (a2)
      {
        if (v20 == a1 && v22 == a2)
        {

LABEL_13:
          v25 = v29;
          *v29 = v17;
          v26 = v32;
          v25[1] = v33;
          v25[2] = v26;
          v27 = v30;
          v25[3] = v31;
          v25[4] = v27;
          return;
        }

        v23 = sub_257ED0640();

        if (v23)
        {
          goto LABEL_13;
        }
      }

      else
      {
      }

      v13 += 5;
      if (!--v11)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_11:
    v24 = v29;
    v29[3] = 0u;
    v24[4] = 0u;
    v24[1] = 0u;
    v24[2] = 0u;
    *v24 = 0u;
  }
}

uint64_t SCNBox.dimensions.getter()
{
  [v0 width];
  [v0 height];
  [v0 length];

  return sub_257ECFB40();
}

id SCNBox.dimensions.setter(float a1, float a2, float a3)
{
  [v3 setWidth_];
  [v3 setHeight_];

  return [v3 setLength_];
}

id SCNNode.tip.getter()
{
  sub_257E51910();
  sub_257ECFDA0();
  sub_257ECFDA0();
  sub_257ECFDA0();
  sub_257ECFDA0();
  sub_257ECFDA0();
  LODWORD(v3) = v8;

  *&v1 = (v5 + v7) * 0.5;
  *&v2 = (v6 + v9) * 0.5;
  return [v0 convertPosition:0 toNode:{v1, v3, v2}];
}

id SCNNode.base.getter()
{
  sub_257E51910();
  sub_257ECFDA0();
  sub_257ECFDA0();
  sub_257ECFDA0();
  sub_257ECFDA0();
  sub_257ECFDA0();
  LODWORD(v3) = v6;

  *&v1 = (v5 + v8) * 0.5;
  *&v2 = (v7 + v9) * 0.5;
  return [v0 convertPosition:0 toNode:{v1, v3, v2}];
}

id sub_257E4FDE8(float32x4_t a1)
{
  v2 = *v1;
  v175 = *(v1 + 32);
  v176 = *(v1 + 16);
  v173 = *(v1 + 64);
  v174 = *(v1 + 48);
  [*v1 transform];
  v164 = vsubq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v176, v3.f32[0]), v175, *v3.f32, 1), v174, v3, 2), v173, v3, 3), a1);
  [v2 transform];
  v155 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v176, v4.f32[0]), v175, *v4.f32, 1), v174, v4, 2), v173, v4, 3);
  [v2 transform];
  v141 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v176, v5.f32[0]), v175, *v5.f32, 1), v174, v5, 2), v173, v5, 3);
  [v2 transform];
  v7 = v155;
  v7.i32[1] = v141.i32[1];
  v7.i32[2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v176, *&v6), v175, *&v6, 1), v174, v6, 2), v173, v6, 3).i32[2];
  v8 = vmulq_f32(v164, v7);
  v9 = fabsf(v8.f32[2] + vaddv_f32(*v8.f32));
  [v2 dimensions];
  if (v9 < (0.5 * v10))
  {
    v11 = v164;
    v11.i32[3] = 0;
    v165 = v11;
    [v2 transform];
    v156 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v176, v12.f32[0]), v175, *v12.f32, 1), v174, v12, 2), v173, v12, 3);
    [v2 transform];
    v142 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v176, v13.f32[0]), v175, *v13.f32, 1), v174, v13, 2), v173, v13, 3);
    [v2 transform];
    v15 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v176, v14.f32[0]), v175, *v14.f32, 1), v174, v14, 2), v173, v14, 3);
    v16 = v156;
    v16.i32[1] = v142.i32[1];
    v16.i32[2] = v15.i32[2];
    v17 = vmulq_f32(v165, v16);
    v18 = fabsf(v17.f32[2] + vaddv_f32(*v17.f32));
    [v2 dimensions];
    if (v18 < vmuls_lane_f32(0.5, v19, 1))
    {
      [v2 transform];
      v157 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v176, v20.f32[0]), v175, *v20.f32, 1), v174, v20, 2), v173, v20, 3);
      [v2 transform];
      v143 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v176, v21.f32[0]), v175, *v21.f32, 1), v174, v21, 2), v173, v21, 3);
      [v2 transform];
      v23 = v157;
      v23.i32[1] = v143.i32[1];
      v23.i32[2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v176, *&v22), v175, *&v22, 1), v174, v22, 2), v173, v22, 3).i32[2];
      v24 = vmulq_f32(v165, v23);
      v25 = fabsf(v24.f32[2] + vaddv_f32(*v24.f32));
      result = [v2 dimensions];
      if (v25 < vmuls_lane_f32(0.5, v27, 2))
      {
        return result;
      }
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5A28);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_257EDBBA0;
  [v2 transform];
  v166 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v176, v29.f32[0]), v175, *v29.f32, 1), v174, v29, 2), v173, v29, 3);
  [v2 dimensions];
  v144 = v30;
  [v2 transform];
  v158 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v176, v31.f32[0]), v175, *v31.f32, 1), v174, v31, 2), v173, v31, 3).u32[0];
  [v2 transform];
  v140 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v176, *&v32), v175, *&v32, 1), v174, v32, 2), v173, v32, 3).i32[1];
  v145 = 0.5 * v144;
  [v2 transform];
  *v166.f32 = vadd_f32(*v166.f32, vmul_n_f32(__PAIR64__(v140, v158), v145));
  *&v146 = v166.f32[2] + vmuls_lane_f32(v145, vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v176, v33.f32[0]), v175, *v33.f32, 1), v174, v33, 2), v173, v33, 3), 2);
  [v2 transform];
  v35 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v176, v34.f32[0]), v175, *v34.f32, 1), v174, v34, 2), v173, v34, 3).u32[0];
  v34.i64[0] = v166.i64[0];
  v34.i64[1] = v146;
  v159 = v35;
  v167 = v34;
  [v2 transform];
  v147 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v176, v36.f32[0]), v175, *v36.f32, 1), v174, v36, 2), v173, v36, 3);
  [v2 transform];
  *&v38 = __PAIR64__(v147.u32[1], v159);
  *(&v38 + 1) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v176, *&v37), v175, *&v37, 1), v174, v37, 2), v173, v37, 3).u32[2];
  v160 = v38;
  [v2 transform];
  v147.i32[0] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v176, v39.f32[0]), v175, *v39.f32, 1), v174, v39, 2), v173, v39, 3).u32[0];
  [v2 transform];
  v131 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v176, v40.f32[0]), v175, *v40.f32, 1), v174, v40, 2), v173, v40, 3);
  [v2 transform];
  *&v42 = __PAIR64__(v131.u32[1], v147.u32[0]);
  *(&v42 + 1) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v176, *&v41), v175, *&v41, 1), v174, v41, 2), v173, v41, 3).u32[2];
  v148 = v42;
  [v2 transform];
  v131.i32[0] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v176, v43.f32[0]), v175, *v43.f32, 1), v174, v43, 2), v173, v43, 3).u32[0];
  [v2 transform];
  v124 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v176, v44.f32[0]), v175, *v44.f32, 1), v174, v44, 2), v173, v44, 3);
  [v2 transform];
  v46 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v176, v45.f32[0]), v175, *v45.f32, 1), v174, v45, 2), v173, v45, 3);
  *v45.f32 = vsub_f32(0, __PAIR64__(v124.u32[1], v131.u32[0]));
  v45.f32[2] = 0.0 - v46.f32[2];
  v45.i32[3] = 0;
  v132 = v45;
  [v2 dimensions];
  v125 = v47;
  [v2 dimensions];
  *(v28 + 32) = v167;
  *(v28 + 48) = v160;
  *(v28 + 64) = v148;
  *(v28 + 80) = v132;
  *(v28 + 96) = vtrn2q_s32(v125, vzip2q_s32(v125, v48)).u64[0];
  [v2 transform];
  v168 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v176, v49.f32[0]), v175, *v49.f32, 1), v174, v49, 2), v173, v49, 3);
  [v2 dimensions];
  *&v148 = v50;
  [v2 transform];
  LODWORD(v160) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v176, v51.f32[0]), v175, *v51.f32, 1), v174, v51, 2), v173, v51, 3).u32[0];
  [v2 transform];
  v133 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v176, v52.f32[0]), v175, *v52.f32, 1), v174, v52, 2), v173, v52, 3);
  LODWORD(v148) = vmuls_lane_f32(0.5, *&v148, 1);
  [v2 transform];
  *v168.f32 = vadd_f32(*v168.f32, vmul_n_f32(__PAIR64__(v133.u32[1], v160), *&v148));
  *&v148 = v168.f32[2] + vmuls_lane_f32(*&v148, vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v176, v53.f32[0]), v175, *v53.f32, 1), v174, v53, 2), v173, v53, 3), 2);
  [v2 transform];
  *&v55 = v168.i64[0];
  *(&v55 + 1) = v148;
  LODWORD(v160) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v176, v54.f32[0]), v175, *v54.f32, 1), v174, v54, 2), v173, v54, 3).u32[0];
  v169 = v55;
  [v2 transform];
  v149 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v176, v56.f32[0]), v175, *v56.f32, 1), v174, v56, 2), v173, v56, 3);
  [v2 transform];
  *&v58 = __PAIR64__(v149.u32[1], v160);
  *(&v58 + 1) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v176, *&v57), v175, *&v57, 1), v174, v57, 2), v173, v57, 3).u32[2];
  v161 = v58;
  [v2 transform];
  v149.i32[0] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v176, v59.f32[0]), v175, *v59.f32, 1), v174, v59, 2), v173, v59, 3).u32[0];
  [v2 transform];
  v134 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v176, v60.f32[0]), v175, *v60.f32, 1), v174, v60, 2), v173, v60, 3);
  [v2 transform];
  *&v62 = __PAIR64__(v134.u32[1], v149.u32[0]);
  *(&v62 + 1) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v176, *&v61), v175, *&v61, 1), v174, v61, 2), v173, v61, 3).u32[2];
  v150 = v62;
  [v2 transform];
  v134.i32[0] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v176, v63.f32[0]), v175, *v63.f32, 1), v174, v63, 2), v173, v63, 3).u32[0];
  [v2 transform];
  [v2 transform];
  *&v66 = __PAIR64__(v129, v134.u32[0]);
  *(&v66 + 1) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v176, *&v65), v175, *&v65, 1), v174, v65, 2), v173, v65, 3).u32[2];
  v135 = v66;
  [v2 dimensions];
  v126 = v67;
  [v2 dimensions];
  *(v28 + 112) = v169;
  *(v28 + 128) = v161;
  *(v28 + 144) = v150;
  *(v28 + 160) = v135;
  *(v28 + 176) = __PAIR64__(v68, v126);
  [v2 transform];
  v170 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v176, v69.f32[0]), v175, *v69.f32, 1), v174, v69, 2), v173, v69, 3);
  [v2 dimensions];
  v151 = v70;
  [v2 transform];
  LODWORD(v161) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v176, v71.f32[0]), v175, *v71.f32, 1), v174, v71, 2), v173, v71, 3).u32[0];
  [v2 transform];
  v136 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v176, v72.f32[0]), v175, *v72.f32, 1), v174, v72, 2), v173, v72, 3);
  v151.i32[0] = vmuls_lane_f32(0.5, v151, 2);
  [v2 transform];
  *v170.f32 = vadd_f32(*v170.f32, vmul_n_f32(__PAIR64__(v136.u32[1], v161), v151.f32[0]));
  v151.f32[0] = v170.f32[2] + vmuls_lane_f32(v151.f32[0], vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v176, v73.f32[0]), v175, *v73.f32, 1), v174, v73, 2), v173, v73, 3), 2);
  [v2 transform];
  LODWORD(v161) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v176, v74.f32[0]), v175, *v74.f32, 1), v174, v74, 2), v173, v74, 3).u32[0];
  *&v75 = v170.i64[0];
  *(&v75 + 1) = v151.u32[0];
  v171 = v75;
  [v2 transform];
  v152 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v176, v76.f32[0]), v175, *v76.f32, 1), v174, v76, 2), v173, v76, 3);
  [v2 transform];
  *&v78 = __PAIR64__(v152.u32[1], v161);
  *(&v78 + 1) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v176, *&v77), v175, *&v77, 1), v174, v77, 2), v173, v77, 3).u32[2];
  v162 = v78;
  [v2 transform];
  v152.i32[0] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v176, v79.f32[0]), v175, *v79.f32, 1), v174, v79, 2), v173, v79, 3).u32[0];
  [v2 transform];
  v137 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v176, v80.f32[0]), v175, *v80.f32, 1), v174, v80, 2), v173, v80, 3);
  [v2 transform];
  *&v127 = 0.0 - COERCE_FLOAT(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v176, *&v81), v175, *&v81, 1), v174, v81, 2), v173, v81, 3).i32[2]);
  [v2 transform];
  v83 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v176, v82.f32[0]), v175, *v82.f32, 1), v174, v82, 2), v173, v82, 3).u32[0];
  *v82.f32 = vsub_f32(0, __PAIR64__(v137.u32[1], v152.u32[0]));
  v82.i64[1] = v127;
  v137.i32[0] = v83;
  v153 = v82;
  [v2 transform];
  [v2 transform];
  *&v86 = __PAIR64__(v128.u32[1], v137.u32[0]);
  *(&v86 + 1) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v176, *&v85), v175, *&v85, 1), v174, v85, 2), v173, v85, 3).u32[2];
  v138 = v86;
  [v2 dimensions];
  v128.i64[0] = v87;
  [v2 dimensions];
  *(v28 + 192) = v171;
  *(v28 + 208) = v162;
  *(v28 + 224) = v153;
  *(v28 + 240) = v138;
  *(v28 + 256) = __PAIR64__(v88, v128.u32[0]);
  v179 = v28;
  v89 = MEMORY[0x277D84F90];
  v180 = MEMORY[0x277D84F90];

  sub_257BF2684(0, 3, 0);
  for (i = 0; i != 240; i += 80)
  {
    v139 = *(v28 + i + 32);
    v154 = *(v28 + i + 48);
    v163 = *(v28 + i + 80);
    v172 = *(v28 + i + 64);
    v91 = *(v28 + i + 96);
    [v2 transform];
    v94 = *(v180 + 16);
    v93 = *(v180 + 24);
    if (v94 >= v93 >> 1)
    {
      v128 = v92;
      sub_257BF2684((v93 > 1), v94 + 1, 1);
      v92 = v128;
    }

    v95 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v176, v92.f32[0]), v175, *v92.f32, 1), v174, v92, 2), v173, v92, 3);
    v95.i64[0] = vsubq_f32(vaddq_f32(v95, v95), v139).u64[0];
    v95.f32[2] = (v95.f32[2] + v95.f32[2]) - v139.f32[2];
    v95.i32[3] = 0;
    *&v96 = vsubq_f32(0, v154).u64[0];
    *(&v96 + 2) = 0.0 - v154.f32[2];
    HIDWORD(v96) = 0;
    *&v97 = vsubq_f32(0, v163).u64[0];
    *(&v97 + 2) = 0.0 - v163.f32[2];
    HIDWORD(v97) = 0;
    *(v180 + 16) = v94 + 1;
    v98 = v180 + 80 * v94;
    *(v98 + 32) = v95;
    *(v98 + 48) = v96;
    *(v98 + 64) = v172;
    *(v98 + 80) = v97;
    *(v98 + 96) = v91;
  }

  sub_257EB0504(v180);
  v99 = *(v28 + 16);
  if (v99)
  {
    sub_257BF2664(0, v99, 0);
    v100 = v89;
    v101 = v179 + 32;
    v102 = a1;
    do
    {
      *v103.i64 = sub_257E50E10(v102);
      v105 = v89[1].u64[0];
      v104 = v89[1].u64[1];
      v106 = v105 + 1;
      if (v105 >= v104 >> 1)
      {
        v177 = v103;
        sub_257BF2664((v104 > 1), v105 + 1, 1);
        v103 = v177;
      }

      v89[1].i64[0] = v106;
      v89[v105 + 2] = v103;
      v101 += 80;
      --v99;
      v102 = a1;
    }

    while (v99);
    goto LABEL_16;
  }

  v106 = v89[1].i64[0];
  if (v106)
  {
    v100 = v89;
LABEL_16:
    sub_257BF2644(0, v106, 0);
    v107 = v89;
    v108 = v89[1].u64[0];
    v109 = 2 * v108;
    v110 = 2;
    v111 = a1;
    do
    {
      v112 = v100[v110];
      v113 = v107[1].u64[1];
      v114 = v108 + 1;
      if (v108 >= v113 >> 1)
      {
        v178 = v100[v110];
        sub_257BF2644((v113 > 1), v108 + 1, 1);
        v112 = v178;
        v111 = a1;
      }

      v115 = vsubq_f32(v112, v111);
      v116 = vmulq_f32(v115, v115);
      v107[1].i64[0] = v114;
      v117 = &v107[v109];
      v117[2] = v112;
      v117[3].f32[0] = sqrtf(v116.f32[2] + vaddv_f32(*v116.f32));
      v109 += 2;
      ++v110;
      v108 = v114;
      --v106;
    }

    while (v106);
    goto LABEL_20;
  }

  v107 = MEMORY[0x277D84F90];
LABEL_20:

  v120 = v107[1].i64[0];
  if (v120)
  {
    v121 = v107[2];
    v122 = v120 - 1;
    if (v122)
    {
      v118.i32[0] = v107[3].i32[0];
      v123 = v107 + 5;
      do
      {
        v119.i32[0] = v123->i32[0];
        v121 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v118, v119), 0), v123[-1], v121);
        if (*v123->i32 < v118.f32[0])
        {
          v118.i32[0] = v123->i32[0];
        }

        v123 += 2;
        --v122;
      }

      while (v122);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id DetectedObject.init()@<X0>(uint64_t a1@<X8>)
{
  result = [objc_allocWithZone(MEMORY[0x277D36CE8]) init];
  if (result)
  {
    *a1 = result;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id DetectedObject.hash(into:)()
{
  v1 = sub_257ECCCF0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [*v0 identifier];
  if (result)
  {
    v6 = result;
    sub_257ECCCD0();

    sub_257CA8180();
    sub_257ECF400();
    return (*(v2 + 8))(v4, v1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_257E50E10(float32x4_t a1)
{
  v2 = *(v1 + 16);
  v3 = vsubq_f32(*v1, a1);
  v4 = COERCE_FLOAT(*(v1 + 8));
  v3.f32[2] = v4 - a1.f32[2];
  v5 = vmulq_f32(v2, v3);
  v5.f32[0] = v5.f32[2] + vaddv_f32(*v5.f32);
  *a1.f32 = vadd_f32(*a1.f32, vmul_n_f32(*v2.f32, v5.f32[0]));
  v6 = a1.f32[2] + vmuls_lane_f32(v5.f32[0], v2, 2);
  *v2.f32 = vsub_f32(*v1, *a1.f32);
  v2.f32[2] = v4 - v6;
  v7 = *(v1 + 48);
  v8 = vmulq_f32(v7, v2);
  v9 = v8.f32[2] + vaddv_f32(*v8.f32);
  v10 = *(v1 + 64);
  if ((0.5 * v10.f32[0]) < fabsf(v9))
  {
    v11 = -v10.f32[0];
    if (v9 > 0.0)
    {
      LODWORD(v11) = *(v1 + 64);
    }

    v12 = v9 + (v11 * -0.5);
    *a1.f32 = vadd_f32(*a1.f32, vmul_n_f32(*v7.f32, v12));
    v6 = v6 + vmuls_lane_f32(v12, v7, 2);
  }

  a1.i64[1] = LODWORD(v6);
  v13 = vsubq_f32(*v1, a1);
  v13.f32[2] = v4 - a1.f32[2];
  v14 = *(v1 + 32);
  v15 = vmulq_f32(v14, v13);
  v16 = v15.f32[2] + vaddv_f32(*v15.f32);
  if (vmuls_lane_f32(0.5, v10, 1) < fabsf(v16))
  {
    LODWORD(v17) = HIDWORD(*(v1 + 64));
    if (v16 <= 0.0)
    {
      v17 = -v10.f32[1];
    }

    a1.i64[0] = vaddq_f32(a1, vmulq_n_f32(v14, v16 + (v17 * -0.5))).u64[0];
  }

  return *a1.i64;
}

id DetectedObject.hashValue.getter()
{
  v1 = sub_257ECCCF0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_257ED07B0();
  result = [v5 identifier];
  if (result)
  {
    v7 = result;
    sub_257ECCCD0();

    sub_257CA8180();
    sub_257ECF400();
    (*(v2 + 8))(v4, v1);
    return sub_257ED0800();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_257E51040()
{
  v1 = [*v0 identifier];
  if (v1)
  {
    v2 = v1;
    sub_257ECCCD0();
  }

  else
  {
    __break(1u);
  }
}

double sub_257E510CC()
{
  v8.columns[3] = *(v0 + 64);
  v8.columns[1] = *(v0 + 32);
  v8.columns[2] = *(v0 + 48);
  v8.columns[0] = *(v0 + 16);
  [*v0 transform];
  v5.columns[0] = v1;
  v5.columns[1] = v2;
  v5.columns[2] = v3;
  v5.columns[3] = v4;
  v6 = v8;

  return simd_mul(v6, v5);
}

id sub_257E51138()
{
  v1 = sub_257ECCCF0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_257ED07B0();
  result = [v5 identifier];
  if (result)
  {
    v7 = result;
    sub_257ECCCD0();

    sub_257CA8180();
    sub_257ECF400();
    (*(v2 + 8))(v4, v1);
    return sub_257ED0800();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_257E5125C()
{
  v1 = sub_257ECCCF0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [*v0 identifier];
  if (result)
  {
    v6 = result;
    sub_257ECCCD0();

    sub_257CA8180();
    sub_257ECF400();
    return (*(v2 + 8))(v4, v1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_257E51368()
{
  v1 = sub_257ECCCF0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_257ED07B0();
  result = [v5 identifier];
  if (result)
  {
    v7 = result;
    sub_257ECCCD0();

    sub_257CA8180();
    sub_257ECF400();
    (*(v2 + 8))(v4, v1);
    return sub_257ED0800();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id ObjectPointer.init(length:)(double a1)
{
  v24.receiver = v1;
  v24.super_class = type metadata accessor for ObjectPointer();
  v3 = objc_msgSendSuper2(&v24, sel_init);
  v4 = sub_257ECF4C0();
  [v3 setName_];

  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = qword_2815447E0;

  if (v5 != -1)
  {
    v6 = swift_once();
  }

  MEMORY[0x28223BE20](v6);
  sub_257ECFD50();

  if (v23 >= 2u)
  {
    v10 = objc_opt_self();
    v11 = v3;
    if (v23 == 2)
    {
      v9 = [v10 boxWithWidth:0.025 height:a1 length:2.5 chamferRadius:0.0];
    }

    else
    {
      v9 = [v10 boxWithWidth:0.025 height:a1 length:1.5 chamferRadius:0.0];
    }
  }

  else
  {
    v7 = objc_opt_self();
    v8 = v3;
    v9 = [v7 cylinderWithRadius:0.0125 height:a1];
  }

  v12 = v9;
  [v3 setGeometry_];

  v13 = v3;
  [v13 setOpacity_];
  v14 = [objc_opt_self() shapeWithNode:v13 options:0];
  v15 = [objc_opt_self() bodyWithType:2 shape:v14];

  [v13 setPhysicsBody_];
  v16 = [v13 physicsBody];
  if (v16)
  {
    v17 = v16;
    [v16 setCategoryBitMask_];
  }

  [v13 setCategoryBitMask_];
  v18 = [v13 physicsBody];

  if (v18)
  {
    [v18 setContactTestBitMask_];
  }

  [v13 simdLocalRotateBy_];
  v19 = [v13 simdLocalRotateBy_];
  MEMORY[0x28223BE20](v19);

  sub_257ECFD50();

  v20.i8[0] = v23;
  v21.i32[0] = 3;
  v20.i32[0] = vbslq_s8(vdupq_lane_s8(*&vcgtq_u8(v21, v20), 0), 0, xmmword_257EED2D0).u32[0];
  *v21.i32 = a1 * 0.5;
  v20.i32[1] = v21.i32[0];
  [v13 simdLocalTranslateBy_];

  return v13;
}

unint64_t sub_257E51910()
{
  result = qword_27F8FA5C0;
  if (!qword_27F8FA5C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F8FA5C0);
  }

  return result;
}

id ObjectPointer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *sub_257E51A64(void *a1)
{
  v2 = v1;
  v34 = sub_257ECCCF0();
  v4 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_257ECFBA0();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v33 - v12;
  v14 = [a1 planeExtent];
  [v14 width];
  v16 = v15;

  v17 = [a1 planeExtent];
  [v17 height];
  v19 = v18;

  v20 = [objc_opt_self() planeWithWidth:v16 height:v19];
  v21 = objc_opt_self();
  v33 = v20;
  v22 = [v21 nodeWithGeometry_];
  v23 = OBJC_IVAR____TtC16MagnifierSupport5Plane_extentNode;
  *&v2[OBJC_IVAR____TtC16MagnifierSupport5Plane_extentNode] = v22;
  v24 = v22;
  [a1 center];
  [v24 setSimdPosition_];

  v25 = *&v2[v23];
  [v25 eulerAngles];
  LODWORD(v26) = -1077342246;
  [v25 setEulerAngles_];

  sub_257ECFBB0();
  (*(v8 + 32))(&v2[OBJC_IVAR____TtC16MagnifierSupport5Plane_classification], v13, v7);
  sub_257ECFBB0();
  v27 = (*(v8 + 88))(v11, v7);
  if (v27 == *MEMORY[0x277D82D58])
  {
    goto LABEL_2;
  }

  if (v27 == *MEMORY[0x277D82D68] || v27 == *MEMORY[0x277D82D70] || v27 == *MEMORY[0x277D82D88])
  {
LABEL_10:
    [*&v2[v23] setCategoryBitMask_];
    goto LABEL_11;
  }

  if (v27 != *MEMORY[0x277D82D78] && v27 != *MEMORY[0x277D82D60])
  {
    if (v27 != *MEMORY[0x277D82D80] && v27 != *MEMORY[0x277D82D50])
    {
LABEL_2:
      (*(v8 + 8))(v11, v7);
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_11:
  v28 = type metadata accessor for Plane();
  v35.receiver = v2;
  v35.super_class = v28;
  v29 = objc_msgSendSuper2(&v35, sel_init);
  v30 = [a1 identifier];
  sub_257ECCCD0();

  sub_257ECCCA0();
  (*(v4 + 8))(v6, v34);
  v31 = sub_257ECF4C0();

  [v29 setName_];

  sub_257E51F5C();
  [v29 addChildNode_];

  return v29;
}

void sub_257E51F5C()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport5Plane_extentNode);
  v2 = [v1 geometry];
  if (v2)
  {
    v3 = v2;
    v6 = [v2 firstMaterial];

    if (v6)
    {
      v4 = [v6 diffuse];
      v5 = [objc_opt_self() blueColor];
      [v4 setContents_];

      [v6 setDoubleSided_];
      [v1 setOpacity_];
    }
  }
}

id sub_257E520D0(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

BOOL sub_257E52218(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_257E52248@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_257E52274@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_257E52350@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *a1;
  [*a1 width];
  [v3 height];
  [v3 length];
  result = sub_257ECFB40();
  *a2 = v5;
  a2[1] = v6;
  a2[2] = v7;
  return result;
}

id (*SCNBox.dimensions.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  [v1 width];
  [v1 height];
  [v1 length];
  sub_257ECFB40();
  *(a1 + 8) = v3;
  *(a1 + 12) = v4;
  *(a1 + 16) = v5;
  return sub_257E52464;
}

id sub_257E52464(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 12);
  v3 = *(a1 + 16);
  [*a1 setWidth_];
  [v1 setHeight_];

  return [v1 setLength_];
}

SCNVector3 __swiftcall SCNVector3.normalize()()
{
  sub_257ECFB50();
  result.z = v2;
  result.y = v1;
  result.x = v0;
  return result;
}

uint64_t sub_257E52540@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_257D13C4C(*a1, *(a1 + 8), *(a1 + 16));
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

id _s16MagnifierSupport14DetectedObjectV2eeoiySbAC_ACtFZ_0(id *a1, void **a2)
{
  v4 = sub_257ECCCF0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v24 - v9;
  v11 = *a2;
  result = [*a1 identifier];
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v13 = result;
  sub_257ECCCD0();

  v14 = sub_257ECCCA0();
  v16 = v15;
  v17 = *(v5 + 8);
  v17(v10, v4);
  result = [v11 identifier];
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v18 = result;
  sub_257ECCCD0();

  v19 = sub_257ECCCA0();
  v21 = v20;
  v17(v8, v4);
  if (v14 == v19 && v16 == v21)
  {
    v23 = 1;
  }

  else
  {
    v23 = sub_257ED0640();
  }

  return (v23 & 1);
}

uint64_t sub_257E52780@<X0>(_BYTE *a1@<X8>)
{
  result = sub_257D13C4C(**(v1 + 16), *(*(v1 + 16) + 8), *(*(v1 + 16) + 16));
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_257E527BC(uint64_t a1)
{
  result = sub_257C5885C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_257E527E8()
{
  result = qword_27F8FA5D8;
  if (!qword_27F8FA5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FA5D8);
  }

  return result;
}

unint64_t sub_257E52840()
{
  result = qword_27F8FA5E0;
  if (!qword_27F8FA5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FA5E0);
  }

  return result;
}

unint64_t sub_257E52898()
{
  result = qword_27F8FA5E8;
  if (!qword_27F8FA5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FA5E8);
  }

  return result;
}

unint64_t sub_257E528F0()
{
  result = qword_27F8FA5F0;
  if (!qword_27F8FA5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FA5F0);
  }

  return result;
}

unint64_t sub_257E52948()
{
  result = qword_27F8FA5F8;
  if (!qword_27F8FA5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FA5F8);
  }

  return result;
}

__n128 __swift_memcpy80_16(uint64_t a1, uint64_t a2)
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

uint64_t sub_257E529B8(uint64_t *a1, int a2)
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

uint64_t sub_257E52A00(uint64_t result, int a2, int a3)
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

uint64_t type metadata accessor for Plane()
{
  result = qword_27F8FA618;
  if (!qword_27F8FA618)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_257E52AE4()
{
  result = sub_257ECFBA0();
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

__n128 __swift_memcpy72_16(uint64_t a1, uint64_t a2)
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

uint64_t sub_257E52BB8(uint64_t a1, int a2)
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

uint64_t sub_257E52BD8(uint64_t result, int a2, int a3)
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

void sub_257E52C40()
{
  v1 = v0;
  v9.receiver = v0;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, sel_viewDidLoad);
  v2 = *&v0[OBJC_IVAR____TtC16MagnifierSupport29CaptureSettingsViewController_tableView];
  [v2 setDataSource_];
  [v2 setDelegate_];
  sub_257C60F40();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = sub_257ECF4C0();
  [v2 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v4];

  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  v5 = [v1 view];
  if (v5)
  {
    v6 = v5;
    [v5 addSubview_];

    v7 = [v1 view];
    if (v7)
    {
      v8 = v7;
      sub_257EB6FD8(v7, *MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24));

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_257E52DDC(char a1)
{
  v9.receiver = v1;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, sel_viewWillAppear_, a1 & 1);
  v3 = [v1 navigationItem];
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = sub_257ECF4C0();
  v7 = sub_257ECF4C0();
  v8 = [v5 localizedStringForKey:v6 value:0 table:v7];

  if (!v8)
  {
    sub_257ECF500();
    v8 = sub_257ECF4C0();
  }

  [v3 setTitle_];
}

id sub_257E52F98(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v7 = OBJC_IVAR____TtC16MagnifierSupport29CaptureSettingsViewController_tableView;
  v8 = [objc_allocWithZone(MEMORY[0x277D75B40]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  v9 = objc_opt_self();
  v10 = v8;
  v11 = [v9 systemYellowColor];
  [v10 setTintColor_];

  [v10 setClipsToBounds_];
  *&v3[v7] = v10;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport29CaptureSettingsViewController_speechFeedbackSubscription] = 0;
  if (a2)
  {
    v12 = sub_257ECF4C0();
  }

  else
  {
    v12 = 0;
  }

  v15.receiver = v3;
  v15.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v15, sel_initWithNibName_bundle_, v12, a3);

  return v13;
}

id sub_257E53148(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC16MagnifierSupport29CaptureSettingsViewController_tableView;
  v5 = [objc_allocWithZone(MEMORY[0x277D75B40]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 systemYellowColor];
  [v7 setTintColor_];

  [v7 setClipsToBounds_];
  *&v1[v4] = v7;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport29CaptureSettingsViewController_speechFeedbackSubscription] = 0;
  v11.receiver = v1;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, sel_initWithCoder_, a1);

  if (v9)
  {
  }

  return v9;
}

id sub_257E53318(void *a1)
{
  v2 = v1;
  v4 = sub_257ECF4C0();
  v5 = sub_257ECCE30();
  v6 = [a1 dequeueReusableCellWithIdentifier:v4 forIndexPath:v5];

  if (!sub_257ECCEA0())
  {
    v7 = [v6 textLabel];
    if (v7)
    {
      v8 = v7;
      type metadata accessor for MAGUtilities();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v10 = [objc_opt_self() bundleForClass_];
      v11 = sub_257ECF4C0();
      v12 = sub_257ECF4C0();
      v13 = [v10 localizedStringForKey:v11 value:0 table:v12];

      if (!v13)
      {
        sub_257ECF500();
        v13 = sub_257ECF4C0();
      }

      [v8 setText_];
    }

    v14 = [v6 textLabel];
    if (v14)
    {
      v15 = v14;
      [v14 setNumberOfLines_];
    }

    v16 = [v6 textLabel];
    if (v16)
    {
      v17 = v16;
      [v16 setLineBreakMode_];
    }

    v18 = [objc_allocWithZone(MEMORY[0x277D75AE8]) init];
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v19 = qword_2815447E0;

    if (v19 != -1)
    {
      v20 = swift_once();
    }

    MEMORY[0x28223BE20](v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6A20);
    sub_257ECFD50();

    v21 = sub_257C592D0(1u, v23);

    [v18 setOn_];
    [v18 addTarget:v2 action:sel_didToggleCaptureSwitch_ forControlEvents:4096];
    [v6 setAccessoryView_];
    [v6 setAccessoryType_];
  }

  return v6;
}

unint64_t sub_257E53A34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = type metadata accessor for MAGOutputEvent(0);
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

char *sub_257E53B7C(char *result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result += v6 + a3 + 32;
  v10 = (v6 + 32 + a2);
  if (result != v10 || result >= &v10[v9])
  {
    v12 = a3;
    result = memmove(result, v10, v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_257E53C20(int64_t a1)
{
  if (qword_281544FE0 == -1)
  {
    goto LABEL_2;
  }

LABEL_40:
  swift_once();
LABEL_2:
  swift_beginAccess();
  v2 = qword_2815447E0;

  if (v2 != -1)
  {
    v3 = swift_once();
  }

  MEMORY[0x28223BE20](v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6A20);
  sub_257ECFD50();

  v4 = v21;
  if ([a1 isOn])
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_257BFD908(0, *(v21 + 16) + 1, 1, v21);
    }

    v6 = *(v4 + 2);
    v5 = *(v4 + 3);
    if (v6 >= v5 >> 1)
    {
      v4 = sub_257BFD908((v5 > 1), v6 + 1, 1, v4);
    }

    *(v4 + 2) = v6 + 1;
    v4[v6 + 32] = 1;
    goto LABEL_29;
  }

  v7 = *(v21 + 16);
  if (!v7)
  {
    goto LABEL_14;
  }

  a1 = 0;
  do
  {
    if (*(v21 + a1 + 32) == 1)
    {
      v8 = (a1 + 1);
      if (__OFADD__(a1, 1))
      {
        goto LABEL_44;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_45;
      }

      while (1)
      {
        v7 = *(v4 + 2);
        if (v8 != v7)
        {
          v15 = v4 + 32;
          v16 = &v4[a1 + 33];
          while (v8 < v7)
          {
            v18 = *v16;
            if (v18 != 1)
            {
              if (v8 != a1)
              {
                if (a1 >= v7)
                {
                  __break(1u);
                  break;
                }

                v17 = v15[a1];
                v15[a1] = v18;
                *v16 = v17;
                v7 = *(v4 + 2);
              }

              ++a1;
            }

            ++v8;
            ++v16;
            if (v8 == v7)
            {
              goto LABEL_19;
            }
          }

          __break(1u);
          goto LABEL_40;
        }

        v7 = v8;
LABEL_19:
        if (v7 < a1)
        {
          goto LABEL_42;
        }

        if ((a1 & 0x8000000000000000) == 0)
        {
          goto LABEL_21;
        }

LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        v4 = sub_257C7DF14(v4);
      }
    }

    ++a1;
  }

  while (v7 != a1);
LABEL_14:
  a1 = *(v21 + 16);
LABEL_21:
  v8 = a1;
  if (__OFADD__(v7, a1 - v7))
  {
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || a1 > *(v4 + 3) >> 1)
  {
    if (v7 <= a1)
    {
      v10 = a1;
    }

    else
    {
      v10 = v7;
    }

    v4 = sub_257BFD908(isUniquelyReferenced_nonNull_native, v10, 1, v4);
  }

  sub_257E53B7C(a1, v7, 0);
LABEL_29:
  v11 = swift_beginAccess();
  MEMORY[0x28223BE20](v11);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F70B0);
  sub_257ECFD50();

  v12 = swift_beginAccess();
  MEMORY[0x28223BE20](v12);

  sub_257ECFD50();

  v13 = sub_257D53928();
  sub_257D53B38(v4, v19, v20, v13);
}

unint64_t sub_257E54108(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8FA6A0);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_257E541E4()
{
  result = sub_257E5420C();
  qword_281548060 = result;
  *algn_281548068 = v1;
  qword_281548070 = v2;
  return result;
}

uint64_t sub_257E5420C()
{
  if (qword_281543D78 != -1)
  {
    swift_once();
  }

  v1 = qword_281548080;
  v0 = *algn_281548088;
  v34 = qword_281548080;
  v35 = *algn_281548088;
  HIDWORD(v29) = byte_286903AD8;
  if (byte_286903AD8)
  {
    v2 = 1684099177;
  }

  else
  {
    v2 = 0x656E6F685069;
  }

  if (byte_286903AD8)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE600000000000000;
  }

  v32 = v2;
  v33 = v3;
  v4 = sub_257BDAB08();

  v5 = MEMORY[0x277D837D0];
  v6 = sub_257ED0150();

  if ((v6 & 1) == 0)
  {
    v34 = v1;
    v35 = v0;
    HIDWORD(v29) = byte_286903AD9;
    v2 = byte_286903AD9 ? 1684099177 : 0x656E6F685069;
    v3 = byte_286903AD9 ? 0xE400000000000000 : 0xE600000000000000;
    v32 = v2;
    v33 = v3;

    v7 = sub_257ED0150();

    if ((v7 & 1) == 0)
    {
      return 2;
    }
  }

  v32 = v2;
  v33 = v3;
  v30 = 0;
  v31 = 0xE000000000000000;

  v28[3] = v4;
  v28[0] = v5;
  v28[1] = v4;
  v8 = sub_257ED0120();
  v10 = v9;

  v34 = 44;
  v35 = 0xE100000000000000;
  MEMORY[0x28223BE20](v11);
  v28[2] = &v34;
  v12 = sub_257D3F6FC(0x7FFFFFFFFFFFFFFFLL, 1, sub_257C119FC, v28, v8, v10, &v29);
  if (!v12[2])
  {
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v13 = v12;
  v14 = v12[4];
  v15 = v12[5];
  if (!((v15 ^ v14) >> 14))
  {
    goto LABEL_33;
  }

  v17 = v12[6];
  v16 = v12[7];
  sub_257E54EE0(v12[4], v15, v17, v16, 10);
  if ((v18 & 0x100) != 0)
  {

    sub_257E54948(v14, v15, v17, v16, 10);
    v20 = v19;

    if (v20)
    {
      goto LABEL_33;
    }
  }

  else if (v18)
  {
    goto LABEL_33;
  }

  if (v13[2] < 2uLL)
  {
    goto LABEL_32;
  }

  v21 = v13[8];
  v22 = v13[9];
  v24 = v13[10];
  v23 = v13[11];

  if (!((v22 ^ v21) >> 14))
  {
LABEL_33:

    return 2;
  }

  sub_257E54EE0(v21, v22, v24, v23, 10);
  if ((v25 & 0x100) != 0)
  {
    sub_257E54948(v21, v22, v24, v23, 10);
  }

  v26 = v25;

  if (v26)
  {
    return 2;
  }

  return HIDWORD(v29);
}

uint64_t sub_257E54590()
{
  result = sub_257E545B4();
  qword_281548080 = result;
  *algn_281548088 = v1;
  return result;
}

uint64_t sub_257E545B4()
{
  v42 = *MEMORY[0x277D85DE8];
  v0 = sub_257ED0830();
  v25 = *(v0 - 8);
  v26 = v0;
  MEMORY[0x28223BE20](v0);
  v2 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(&v35, 0x500uLL);
  uname(&v35);
  v29 = *&v35.machine[16];
  v30 = *v35.machine;
  v27 = *&v35.machine[48];
  v28 = *&v35.machine[32];
  v32 = *&v35.machine[80];
  v33 = *&v35.machine[64];
  v31 = *&v35.machine[96];
  *(&v40 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA6B8);
  v3 = swift_allocObject();
  *&v39 = v3;
  v4 = v29;
  v3[1] = v30;
  v3[2] = v4;
  v5 = v27;
  v3[3] = v28;
  v3[4] = v5;
  v6 = *&v35.machine[112];
  v7 = v32;
  v3[5] = v33;
  v3[6] = v7;
  v3[7] = v31;
  v3[8] = v6;
  v8 = *&v35.machine[144];
  v3[9] = *&v35.machine[128];
  v3[10] = v8;
  v9 = *&v35.machine[176];
  v3[11] = *&v35.machine[160];
  v3[12] = v9;
  v10 = *&v35.machine[208];
  v3[13] = *&v35.machine[192];
  v3[14] = v10;
  v11 = *&v35.machine[240];
  v3[15] = *&v35.machine[224];
  v3[16] = v11;
  sub_257ED0810();
  *&v33 = v2;
  *&v32 = sub_257ED0820();
  sub_257ED03F0();
  sub_257ED0490();
  if (*(&v41 + 1))
  {
    v12 = 0;
    v13 = 0xE000000000000000;
    v14 = MEMORY[0x277D84F70];
    v15 = MEMORY[0x277D84900];
    do
    {
      v38[0] = v39;
      v38[1] = v40;
      v38[2] = v41;
      sub_257E5546C(v38, &v36);

      if (swift_dynamicCast() && v34)
      {
        if ((v34 & 0x80) != 0)
        {
          __break(1u);
        }

        v36 = v34;
        v16 = sub_257ECF5C0();
        v17 = v12;
        v18 = v15;
        v19 = v14;
        v20 = v16;
        v22 = v21;
        v36 = v17;
        v37 = v13;

        v23 = v20;
        v14 = v19;
        v15 = v18;
        MEMORY[0x259C72150](v23, v22);

        v12 = v36;
        v13 = v37;
      }

      sub_257E554DC(v38);
      sub_257ED0490();
    }

    while (*(&v41 + 1));
  }

  else
  {
    v12 = 0;
  }

  (*(v25 + 8))(v33, v26);
  return v12;
}

void sub_257E548D4()
{
  v0 = sub_257ECF4C0();
  v1 = MGGetSInt32Answer();

  if (v1 < 0)
  {
    __break(1u);
  }

  else
  {
    byte_281548078 = v1 != 2;
  }
}

unsigned __int8 *sub_257E54948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  sub_257E54FAC();

  result = sub_257ECF710();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_257C76858();
    v37 = v36;

    v7 = v37;
    if ((v37 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_257ED0320();
      v9 = v63;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v21 = v9 - 1;
        if (v21)
        {
          v22 = a5 + 48;
          v23 = a5 + 55;
          v24 = a5 + 87;
          if (a5 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v15 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v19 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_127;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              v28 = v15 * a5;
              if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
              {
                goto LABEL_126;
              }

              v15 = v28 + (v26 + v27);
              if (__OFADD__(v28, (v26 + v27)))
              {
                goto LABEL_126;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_46:
            v19 = v15;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v19 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v29 = a5 + 48;
        v30 = a5 + 55;
        v31 = a5 + 87;
        if (a5 > 10)
        {
          v29 = 58;
        }

        else
        {
          v31 = 97;
          v30 = 65;
        }

        if (result)
        {
          v32 = 0;
          do
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v29)
            {
              if (v33 < 0x41 || v33 >= v30)
              {
                v19 = 0;
                if (v33 < 0x61 || v33 >= v31)
                {
                  goto LABEL_127;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            v35 = v32 * a5;
            if ((v32 * a5) >> 64 != (v32 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v32 = v35 + (v33 + v34);
            if (__OFADD__(v35, (v33 + v34)))
            {
              goto LABEL_126;
            }

            ++result;
            --v9;
          }

          while (v9);
          v19 = v35 + (v33 + v34);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          while (1)
          {
            v17 = *v16;
            if (v17 < 0x30 || v17 >= v12)
            {
              if (v17 < 0x41 || v17 >= v13)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v14)
                {
                  goto LABEL_127;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v20 = v15 * a5;
            if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v15 = v20 - (v17 + v18);
            if (__OFSUB__(v20, (v17 + v18)))
            {
              goto LABEL_126;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v19 = 0;
LABEL_127:

        return v19;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v38 = HIBYTE(v7) & 0xF;
  v64 = v8;
  v65 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v38)
      {
        v40 = 0;
        v56 = a5 + 48;
        v57 = a5 + 55;
        v58 = a5 + 87;
        if (a5 > 10)
        {
          v56 = 58;
        }

        else
        {
          v58 = 97;
          v57 = 65;
        }

        v59 = &v64;
        while (1)
        {
          v60 = *v59;
          if (v60 < 0x30 || v60 >= v56)
          {
            if (v60 < 0x41 || v60 >= v57)
            {
              v19 = 0;
              if (v60 < 0x61 || v60 >= v58)
              {
                goto LABEL_127;
              }

              v61 = -87;
            }

            else
            {
              v61 = -55;
            }
          }

          else
          {
            v61 = -48;
          }

          v62 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v62 + (v60 + v61);
          if (__OFADD__(v62, (v60 + v61)))
          {
            goto LABEL_126;
          }

          v59 = (v59 + 1);
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v38)
    {
      v39 = v38 - 1;
      if (v39)
      {
        v40 = 0;
        v41 = a5 + 48;
        v42 = a5 + 55;
        v43 = a5 + 87;
        if (a5 > 10)
        {
          v41 = 58;
        }

        else
        {
          v43 = 97;
          v42 = 65;
        }

        v44 = &v64 + 1;
        while (1)
        {
          v45 = *v44;
          if (v45 < 0x30 || v45 >= v41)
          {
            if (v45 < 0x41 || v45 >= v42)
            {
              v19 = 0;
              if (v45 < 0x61 || v45 >= v43)
              {
                goto LABEL_127;
              }

              v46 = -87;
            }

            else
            {
              v46 = -55;
            }
          }

          else
          {
            v46 = -48;
          }

          v47 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v47 - (v45 + v46);
          if (__OFSUB__(v47, (v45 + v46)))
          {
            goto LABEL_126;
          }

          ++v44;
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v38)
  {
    v48 = v38 - 1;
    if (v48)
    {
      v40 = 0;
      v49 = a5 + 48;
      v50 = a5 + 55;
      v51 = a5 + 87;
      if (a5 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v64 + 1;
      do
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            v19 = 0;
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_127;
            }

            v54 = -87;
          }

          else
          {
            v54 = -55;
          }
        }

        else
        {
          v54 = -48;
        }

        v55 = v40 * a5;
        if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
        {
          goto LABEL_126;
        }

        v40 = v55 + (v53 + v54);
        if (__OFADD__(v55, (v53 + v54)))
        {
          goto LABEL_126;
        }

        ++v52;
        --v48;
      }

      while (v48);
LABEL_125:
      v19 = v40;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_257E54EE0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = sub_257ED0320();
  }

  result = sub_257E55000(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = v13 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

unint64_t sub_257E54FAC()
{
  result = qword_27F8FA6B0;
  if (!qword_27F8FA6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FA6B0);
  }

  return result;
}

uint64_t sub_257E55000(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_257C76C50(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_95;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = sub_257ECF6A0();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_257C76C50(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_257C76C50(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_91;
  }

  if (v25 < a3 >> 16)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  result = sub_257ECF6A0();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_90;
  }

  if (v26 < v13)
  {
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v39 = a6 + 48;
        v40 = a6 + 55;
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        if (v27)
        {
          v32 = 0;
          v42 = v27 + 1;
          v43 = result - 1;
          do
          {
            v44 = *v42;
            if (v44 < 0x30 || v44 >= v39)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                v37 = 0;
                if (v44 < 0x61 || v44 >= v41)
                {
                  return v37;
                }

                v45 = -87;
              }

              else
              {
                v45 = -55;
              }
            }

            else
            {
              v45 = -48;
            }

            v46 = v32 * a6;
            if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
            {
              return 0;
            }

            v32 = v46 + (v44 + v45);
            if (__OFADD__(v46, (v44 + v45)))
            {
              return 0;
            }

            ++v42;
            --v43;
          }

          while (v43);
          return v32;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_94;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v47 = a6 + 48;
      v48 = a6 + 55;
      v49 = a6 + 87;
      if (a6 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v50 = *v27;
          if (v50 < 0x30 || v50 >= v47)
          {
            if (v50 < 0x41 || v50 >= v48)
            {
              v37 = 0;
              if (v50 < 0x61 || v50 >= v49)
              {
                return v37;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v52 + (v50 + v51);
          if (__OFADD__(v52, (v50 + v51)))
          {
            return 0;
          }

          ++v27;
          if (!--result)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 48;
      v30 = a6 + 55;
      v31 = a6 + 87;
      if (a6 > 10)
      {
        v29 = 58;
      }

      else
      {
        v31 = 97;
        v30 = 65;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v29)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              if (v35 < 0x61 || v35 >= v31)
              {
                return v37;
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v38 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v38 - (v35 + v36);
          if (__OFSUB__(v38, (v35 + v36)))
          {
            return 0;
          }

          ++v33;
          if (!--v34)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
  return result;
}

uint64_t sub_257E5546C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA6C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_257E554DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA6C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_257E55548()
{
  result = qword_27F8FA6C8;
  if (!qword_27F8FA6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FA6C8);
  }

  return result;
}

unint64_t sub_257E555A0()
{
  result = qword_27F8FA6D0;
  if (!qword_27F8FA6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FA6D0);
  }

  return result;
}

unint64_t sub_257E55660()
{
  result = qword_27F8FA6D8;
  if (!qword_27F8FA6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FA6D8);
  }

  return result;
}

uint64_t sub_257E556B4()
{
  v0 = sub_257ECCA30();
  __swift_allocate_value_buffer(v0, qword_27F913300);
  __swift_project_value_buffer(v0, qword_27F913300);
  return sub_257ECCA00();
}

uint64_t sub_257E55718()
{
  v1 = sub_257ECDA30();
  v0[5] = v1;
  v0[6] = *(v1 - 8);
  v0[7] = swift_task_alloc();
  sub_257ECF900();
  v0[8] = sub_257ECF8F0();
  v3 = sub_257ECF8B0();
  v0[9] = v3;
  v0[10] = v2;

  return MEMORY[0x2822009F8](sub_257E55808, v3, v2);
}

uint64_t sub_257E55808()
{
  if (qword_27F8F4770 != -1)
  {
    swift_once();
  }

  *(v0 + 16) = xmmword_257EDE770;
  *(v0 + 32) = 7;
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_257E558EC;

  return MAGActionHandler.send(_:)(v0 + 16);
}

uint64_t sub_257E558EC()
{
  v2 = *v1;
  *(v2 + 96) = v0;

  sub_257C6DA74(*(v2 + 16), *(v2 + 24), *(v2 + 32));
  v3 = *(v2 + 72);
  v4 = *(v2 + 80);
  if (v0)
  {
    v5 = sub_257E55A2C;
  }

  else
  {
    v5 = sub_257C6D490;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_257E55A2C()
{
  v1 = v0[12];

  sub_257ECD3A0();
  v2 = v1;
  v3 = sub_257ECDA20();
  v4 = sub_257ECFBE0();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[12];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_257BAC000, v3, v4, "Could not complete DetectDoorsIntent: %@", v7, 0xCu);
    sub_257C11B14(v8);
    MEMORY[0x259C74820](v8, -1, -1);
    MEMORY[0x259C74820](v7, -1, -1);
  }

  else
  {
  }

  (*(v0[6] + 8))(v0[7], v0[5]);

  v11 = v0[1];

  return v11();
}

uint64_t sub_257E55BA8@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F8F4788 != -1)
  {
    swift_once();
  }

  v2 = sub_257ECCA30();
  v3 = __swift_project_value_buffer(v2, qword_27F913300);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_257E55C50(uint64_t a1)
{
  v1[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70);
  v1[3] = swift_task_alloc();
  v1[4] = sub_257ECF900();
  v1[5] = sub_257ECF8F0();
  v3 = sub_257ECF8B0();

  return MEMORY[0x2822009F8](sub_257E55D24, v3, v2);
}

uint64_t sub_257E55D24()
{
  v1 = *(v0 + 24);

  v2 = sub_257ECF930();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = sub_257ECF8F0();
  v4 = swift_allocObject();
  v5 = MEMORY[0x277D85700];
  *(v4 + 16) = v3;
  *(v4 + 24) = v5;
  sub_257C3FBD4(0, 0, v1, &unk_257EED790, v4);

  sub_257ECC350();

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_257E55E38(uint64_t a1)
{
  v2 = sub_257E55660();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t sub_257E55E84()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_257BE3DE0;

  return sub_257E55718();
}

id sub_257E55F30(double a1, double a2, double a3, double a4)
{
  v5 = UIEdgeInsetsInsetRect_1(a1, a2, a3, a4, *&v4[OBJC_IVAR____TtC16MagnifierSupport12PaddingLabel_topInset], *&v4[OBJC_IVAR____TtC16MagnifierSupport12PaddingLabel_leftInset]);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13.receiver = v4;
  v13.super_class = type metadata accessor for PaddingLabel();
  return objc_msgSendSuper2(&v13, sel_drawTextInRect_, v5, v7, v9, v11);
}

double sub_257E56084()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for PaddingLabel();
  objc_msgSendSuper2(&v3, sel_intrinsicContentSize);
  return v1 + *&v0[OBJC_IVAR____TtC16MagnifierSupport12PaddingLabel_leftInset] + *&v0[OBJC_IVAR____TtC16MagnifierSupport12PaddingLabel_rightInset];
}

id sub_257E5619C(void *a1)
{
  *&v1[OBJC_IVAR____TtC16MagnifierSupport12PaddingLabel_topInset] = 0x4014000000000000;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport12PaddingLabel_bottomInset] = 0x4014000000000000;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport12PaddingLabel_leftInset] = 0x4014000000000000;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport12PaddingLabel_rightInset] = 0x4014000000000000;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for PaddingLabel();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

void sub_257E56278(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC16MagnifierSupport9ImageWell_infiniteSettingsGlyph;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;

  sub_257E5673C();
}

void sub_257E562DC(void *a1)
{
  v3 = OBJC_IVAR____TtC16MagnifierSupport9ImageWell_infiniteSettingsGlyph;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  sub_257E5673C();
}

void (*sub_257E56344(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_257E563A8;
}

void sub_257E563A8(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_257E5673C();
  }
}

uint64_t sub_257E563DC()
{
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_257ECF4C0();
  v4 = sub_257ECF4C0();
  v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

  sub_257ECF500();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F58E0);
  v6 = swift_allocObject();
  v7 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport9ImageWell_snapshotCount);
  v8 = MEMORY[0x277D83B88];
  *(v6 + 16) = xmmword_257ED6D30;
  v9 = MEMORY[0x277D83C10];
  *(v6 + 56) = v8;
  *(v6 + 64) = v9;
  *(v6 + 32) = v7;
  v10 = sub_257ECF540();

  return v10;
}

id sub_257E56544(void *a1)
{
  *&v1[OBJC_IVAR____TtC16MagnifierSupport9ImageWell_infiniteSettingsGlyph] = 0;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport9ImageWell_snapshotCount] = 0;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport9ImageWell_snapshotImage] = 0;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport9ImageWell_badgeView] = 0;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for ImageWell();
  v3 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    sub_257E5673C();
  }

  return v4;
}

id sub_257E56608(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC16MagnifierSupport9ImageWell_infiniteSettingsGlyph] = 0;
  *&v4[OBJC_IVAR____TtC16MagnifierSupport9ImageWell_snapshotCount] = 0;
  *&v4[OBJC_IVAR____TtC16MagnifierSupport9ImageWell_snapshotImage] = 0;
  *&v4[OBJC_IVAR____TtC16MagnifierSupport9ImageWell_badgeView] = 0;
  v12.receiver = v4;
  v12.super_class = type metadata accessor for ImageWell();
  v9 = objc_msgSendSuper2(&v12, sel_initWithFrame_, a1, a2, a3, a4);
  sub_257E5673C();
  [v9 setShowsLargeContentViewer_];
  [v9 setScalesLargeContentImage_];
  v10 = [objc_allocWithZone(MEMORY[0x277D756C8]) init];
  [v9 addInteraction_];

  return v9;
}

void sub_257E5673C()
{
  v1 = v0;
  v91 = objc_opt_self();
  v2 = [v91 clearColor];
  [v1 setBackgroundColor_];

  [v1 setAutoresizesSubviews_];
  v3 = [v1 imageView];
  if (v3)
  {
    v4 = v3;
    [v3 setContentMode_];
  }

  v5 = [v1 imageView];
  if (v5)
  {
    v6 = v5;
    [v5 setClipsToBounds_];
  }

  v7 = [v1 imageView];
  if (v7)
  {
    v8 = v7;
    [v1 bounds];
    [v8 setFrame_];
  }

  v9 = [v1 imageView];
  if (v9)
  {
    v10 = v9;
    [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  }

  v11 = [v1 imageView];
  if (v11)
  {
    v12 = v11;
    v13 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_257EDBE40;
    v15 = v12;
    v16 = [v15 widthAnchor];
    v17 = [v1 widthAnchor];
    v18 = [v16 constraintEqualToAnchor:v17 multiplier:0.75];

    *(v14 + 32) = v18;
    v19 = [v15 heightAnchor];
    v20 = [v1 heightAnchor];
    v21 = [v19 constraintEqualToAnchor:v20 multiplier:0.75];

    *(v14 + 40) = v21;
    v22 = [v15 centerXAnchor];
    v23 = [v1 centerXAnchor];
    v24 = [v22 constraintEqualToAnchor_];

    *(v14 + 48) = v24;
    v25 = [v15 centerYAnchor];

    v26 = [v1 centerYAnchor];
    v27 = [v25 constraintEqualToAnchor_];

    *(v14 + 56) = v27;
    sub_257C80FFC();
    v28 = sub_257ECF7F0();

    [v13 activateConstraints_];
  }

  v29 = [v1 imageView];
  if (v29)
  {
    if (qword_281544A78 != -1)
    {
      v90 = v29;
      swift_once();
      v29 = v90;
    }

    v30 = v29;
    [v29 setBackgroundColor_];
  }

  v31 = [v1 imageView];
  if (v31)
  {
    v32 = v31;
    v33 = [v31 layer];

    v34 = [v91 systemYellowColor];
    v35 = [v34 CGColor];

    [v33 setBorderColor_];
  }

  v36 = [v1 imageView];
  if (v36)
  {
    v37 = v36;
    v38 = [v36 layer];

    [v38 setBorderWidth_];
  }

  v39 = [v1 imageView];
  if (v39)
  {
    v40 = v39;
    v41 = [v39 layer];

    [v41 setCornerRadius_];
  }

  v42 = [v1 imageView];
  if (v42)
  {
    v43 = v42;
    v44 = [v42 layer];

    if (qword_281544A80 != -1)
    {
      swift_once();
    }

    [v44 setCornerCurve_];
  }

  v45 = [v1 imageView];
  if (v45)
  {
    v46 = v45;
    v47 = [v45 layer];

    [v47 setMasksToBounds_];
  }

  v48 = [v1 imageView];
  if (v48)
  {
    v49 = v48;
    v50 = [v48 layer];

    if (qword_281544A78 != -1)
    {
      swift_once();
    }

    v51 = [qword_281548308 CGColor];
    [v50 setShadowColor_];
  }

  v52 = [v1 imageView];
  if (v52)
  {
    v53 = v52;
    v54 = [v52 layer];

    LODWORD(v55) = 1.0;
    [v54 setShadowOpacity_];
  }

  v56 = [v1 imageView];
  if (v56)
  {
    v57 = v56;
    v58 = [v56 layer];

    [v58 setShadowOffset_];
  }

  v59 = [v1 imageView];
  if (v59)
  {
    v60 = v59;
    v61 = [v59 layer];

    [v61 setShadowRadius_];
  }

  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  v62 = *&v1[OBJC_IVAR____TtC16MagnifierSupport9ImageWell_snapshotImage];
  if (v62 || (v63 = OBJC_IVAR____TtC16MagnifierSupport9ImageWell_infiniteSettingsGlyph, swift_beginAccess(), (v62 = *&v1[v63]) != 0))
  {
    [v1 setImage:v62 forState:0];
  }

  v64 = [objc_allocWithZone(type metadata accessor for PaddingLabel()) initWithFrame_];
  v65 = *&v1[OBJC_IVAR____TtC16MagnifierSupport9ImageWell_badgeView];
  *&v1[OBJC_IVAR____TtC16MagnifierSupport9ImageWell_badgeView] = v64;
  v66 = v64;

  if (v66)
  {
    v67 = v66;
    [v67 setTranslatesAutoresizingMaskIntoConstraints_];
    v68 = [v91 systemYellowColor];
    [v67 setBackgroundColor_];

    v69 = OBJC_IVAR____TtC16MagnifierSupport9ImageWell_snapshotCount;
    v70 = v67;
    sub_257ED0600();
    v71 = sub_257ECF4C0();

    [v70 setText_];

    v72 = [v91 blackColor];
    [v70 setTextColor_];

    v73 = [objc_opt_self() systemFontOfSize:16.0 weight:*MEMORY[0x277D743F8]];
    [v70 setFont_];

    v74 = 0.0;
    if (*&v1[v69] > 0)
    {
      v74 = 1.0;
    }

    [v70 setAlpha_];
    v75 = [v70 layer];
    [v75 setCornerRadius_];

    v76 = [v70 layer];
    [v76 setMasksToBounds_];

    [v1 addSubview_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430);
    v77 = swift_allocObject();
    *(v77 + 16) = xmmword_257EDBE40;
    v78 = [v70 leftAnchor];
    v79 = [v1 leftAnchor];
    v80 = [v78 constraintEqualToAnchor:v79 constant:15.0];

    *(v77 + 32) = v80;
    v81 = [v70 bottomAnchor];
    v82 = [v1 bottomAnchor];
    v83 = [v81 constraintEqualToAnchor:v82 constant:-15.0];

    *(v77 + 40) = v83;
    v84 = [v70 widthAnchor];
    v85 = [v84 constraintGreaterThanOrEqualToConstant_];

    *(v77 + 48) = v85;
    v86 = [v70 &selRef_prepare + 2];

    v87 = [v86 constraintGreaterThanOrEqualToConstant_];
    *(v77 + 56) = v87;
    v88 = objc_opt_self();
    sub_257C80FFC();
    v89 = sub_257ECF7F0();

    [v88 activateConstraints_];
  }
}

void sub_257E572C8(void *a1, uint64_t a2)
{
  v3 = v2;
  v4 = OBJC_IVAR____TtC16MagnifierSupport9ImageWell_snapshotCount;
  *&v2[OBJC_IVAR____TtC16MagnifierSupport9ImageWell_snapshotCount] = a2;
  v5 = *&v2[OBJC_IVAR____TtC16MagnifierSupport9ImageWell_snapshotImage];
  *&v2[OBJC_IVAR____TtC16MagnifierSupport9ImageWell_snapshotImage] = a1;
  v6 = a1;

  [v3 setImage:v6 forState:0];
  v7 = *&v3[OBJC_IVAR____TtC16MagnifierSupport9ImageWell_badgeView];
  if (v7)
  {
    v8 = v7;
    sub_257ED0600();
    v9 = sub_257ECF4C0();

    [v8 setText_];

    v10 = 0.0;
    if (*&v3[v4] > 0)
    {
      v10 = 1.0;
    }

    [v8 setAlpha_];
  }
}

void *sub_257E57494()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport9ImageWell_infiniteSettingsGlyph;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t sub_257E5755C()
{
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_257ECF4C0();
  v4 = sub_257ECF4C0();
  v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

  sub_257ECF500();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F58E0);
  v6 = swift_allocObject();
  v7 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport9ImageWell_snapshotCount);
  v8 = MEMORY[0x277D83B88];
  *(v6 + 16) = xmmword_257ED6D30;
  v9 = MEMORY[0x277D83C10];
  *(v6 + 56) = v8;
  *(v6 + 64) = v9;
  *(v6 + 32) = v7;
  v10 = sub_257ECF540();

  return v10;
}

id sub_257E576E0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_257E578B0()
{
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_257ECF4C0();
  v3 = sub_257ECF4C0();
  v4 = [v1 URLForResource:v2 withExtension:v3];

  if (v4)
  {
    sub_257ECCB20();
  }

  else
  {
    __break(1u);
  }
}

void sub_257E579C8()
{
  v0 = sub_257ECCB70();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v55 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v59 = &v52 - v5;
  v6 = MEMORY[0x28223BE20](v4);
  v56 = &v52 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v60 = &v52 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v57 = &v52 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v61 = &v52 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v52 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v52 - v17;
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v20 = objc_opt_self();
  v21 = [v20 bundleForClass_];
  v22 = sub_257ECF4C0();
  v23 = sub_257ECF4C0();
  v24 = [v21 URLForResource:v22 withExtension:v23];

  if (!v24)
  {
    __break(1u);
    goto LABEL_7;
  }

  sub_257ECCB20();

  v54 = v1;
  v26 = *(v1 + 32);
  v25 = v1 + 32;
  v27 = v26;
  v26(v18, v16, v0);
  v28 = [v20 bundleForClass_];
  v29 = sub_257ECF4C0();
  v30 = sub_257ECF4C0();
  v31 = [v28 URLForResource:v29 withExtension:v30];

  if (!v31)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v58 = v18;
  v32 = v57;
  sub_257ECCB20();

  v27(v61, v32, v0);
  v33 = [v20 bundleForClass_];
  v34 = sub_257ECF4C0();
  v35 = sub_257ECF4C0();
  v36 = [v33 URLForResource:v34 withExtension:v35];

  if (!v36)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v37 = v56;
  sub_257ECCB20();

  v27(v60, v37, v0);
  v38 = [v20 bundleForClass_];
  v39 = sub_257ECF4C0();
  v40 = sub_257ECF4C0();
  v41 = [v38 URLForResource:v39 withExtension:v40];

  if (v41)
  {
    v42 = v55;
    sub_257ECCB20();

    v52 = v25;
    v53 = v27;
    v27(v59, v42, v0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F59F0);
    v43 = v54;
    v44 = *(v54 + 72);
    v45 = (*(v54 + 80) + 32) & ~*(v54 + 80);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_257EDBE50;
    v47 = v46 + v45;
    v48 = *(v43 + 16);
    v48(v47, v58, v0);
    v49 = v61;
    v48(v47 + v44, v61, v0);
    v50 = v60;
    v48(v47 + 2 * v44, v60, v0);
    v53(v47 + 3 * v44, v59, v0);
    v51 = *(v43 + 8);
    v51(v50, v0);
    v51(v49, v0);
    v51(v58, v0);
    return;
  }

LABEL_9:
  __break(1u);
}

void sub_257E57FC4()
{
  v0 = sub_257ECCB70();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v28 = &v28 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v28 - v8;
  MEMORY[0x28223BE20](v7);
  v29 = &v28 - v10;
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = objc_opt_self();
  v13 = [v12 bundleForClass_];
  v14 = sub_257ECF4C0();
  v15 = sub_257ECF4C0();
  v16 = [v13 URLForResource:v14 withExtension:v15];

  if (v16)
  {
    sub_257ECCB20();

    v17 = *(v1 + 32);
    v18 = v29;
    v17(v29, v9, v0);
    v19 = [v12 bundleForClass_];
    v20 = sub_257ECF4C0();
    v21 = sub_257ECF4C0();
    v22 = [v19 URLForResource:v20 withExtension:v21];

    if (v22)
    {
      sub_257ECCB20();

      v23 = v28;
      v17(v28, v4, v0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F59F0);
      v24 = *(v1 + 72);
      v25 = (*(v1 + 80) + 32) & ~*(v1 + 80);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_257ED9BD0;
      v27 = v26 + v25;
      (*(v1 + 16))(v27, v18, v0);
      v17((v27 + v24), v23, v0);
      (*(v1 + 8))(v18, v0);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_257E58338()
{
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_257ECF4C0();
  v3 = sub_257ECF4C0();
  v4 = [v1 URLForResource:v2 withExtension:v3];

  if (v4)
  {
    sub_257ECCB20();
  }

  else
  {
    __break(1u);
  }
}

void sub_257E58450()
{
  v0 = sub_257ECCB70();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v28 = &v28 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v28 - v8;
  MEMORY[0x28223BE20](v7);
  v29 = &v28 - v10;
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = objc_opt_self();
  v13 = [v12 bundleForClass_];
  v14 = sub_257ECF4C0();
  v15 = sub_257ECF4C0();
  v16 = [v13 URLForResource:v14 withExtension:v15];

  if (v16)
  {
    sub_257ECCB20();

    v17 = *(v1 + 32);
    v18 = v29;
    v17(v29, v9, v0);
    v19 = [v12 bundleForClass_];
    v20 = sub_257ECF4C0();
    v21 = sub_257ECF4C0();
    v22 = [v19 URLForResource:v20 withExtension:v21];

    if (v22)
    {
      sub_257ECCB20();

      v23 = v28;
      v17(v28, v4, v0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F59F0);
      v24 = *(v1 + 72);
      v25 = (*(v1 + 80) + 32) & ~*(v1 + 80);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_257ED9BD0;
      v27 = v26 + v25;
      (*(v1 + 16))(v27, v18, v0);
      v17((v27 + v24), v23, v0);
      (*(v1 + 8))(v18, v0);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_257E587C4(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v5 = sub_257ECCB70();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return a3();
}

void sub_257E5881C()
{
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_257ECF4C0();
  v3 = sub_257ECF4C0();
  v4 = [v1 URLForResource:v2 withExtension:v3];

  if (v4)
  {
    sub_257ECCB20();
  }

  else
  {
    __break(1u);
  }
}

void sub_257E58934()
{
  v0 = sub_257ECCB70();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v28 = &v28 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v28 - v8;
  MEMORY[0x28223BE20](v7);
  v29 = &v28 - v10;
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = objc_opt_self();
  v13 = [v12 bundleForClass_];
  v14 = sub_257ECF4C0();
  v15 = sub_257ECF4C0();
  v16 = [v13 URLForResource:v14 withExtension:v15];

  if (v16)
  {
    sub_257ECCB20();

    v17 = *(v1 + 32);
    v18 = v29;
    v17(v29, v9, v0);
    v19 = [v12 bundleForClass_];
    v20 = sub_257ECF4C0();
    v21 = sub_257ECF4C0();
    v22 = [v19 URLForResource:v20 withExtension:v21];

    if (v22)
    {
      sub_257ECCB20();

      v23 = v28;
      v17(v28, v4, v0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F59F0);
      v24 = *(v1 + 72);
      v25 = (*(v1 + 80) + 32) & ~*(v1 + 80);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_257ED9BD0;
      v27 = v26 + v25;
      (*(v1 + 16))(v27, v18, v0);
      v17((v27 + v24), v23, v0);
      (*(v1 + 8))(v18, v0);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

float sub_257E58C8C(int a1)
{
  result = 1.0;
  if (!*(v1 + 16) && (*(v1 + 24) & 1) == 0 && (*(v1 + 32) & 1) == 0 && (*(v1 + 68) & 1) == 0 && (*(v1 + 76) & 1) == 0)
  {
    v3 = *(v1 + 20);
    result = *(v1 + 28);
    v4 = *(v1 + 64) * a1;
    if (v3 <= (*(v1 + 72) + v4))
    {
      v3 = *(v1 + 72) + v4;
    }

    if (v3 < result)
    {
      return v3;
    }
  }

  return result;
}

void sub_257E58CF0(uint64_t a1@<X8>, double a2@<D0>)
{
  v4 = v2[16];
  if (v4 <= 1)
  {
    if (!v2[16] || (v2[48] & 1) != 0)
    {
      goto LABEL_22;
    }

    v8 = qword_27F8F47A0;
    if (*(v2 + 5) >= a2)
    {
      goto LABEL_52;
    }

    if (qword_27F8F47A0 != -1)
    {
      swift_once();
    }

    v2 = off_27F8FA740;
    v9 = *(off_27F8FA740 + 2);
    if (v9)
    {
      goto LABEL_38;
    }

    __break(1u);
LABEL_15:
    v10 = *(v2 + 7);
    if (v10)
    {
      v11 = 4;
      do
      {
        if (v11 - *(v10 + 16) == 4)
        {
          v23 = qword_27F8F4798;

          if (v23 != -1)
          {
            swift_once();
          }

          v24 = off_27F8FA738;
          v25 = *(off_27F8FA738 + 2);
          if (v25)
          {
            v26 = v25 - 1;
            v27 = sub_257ECCB70();
            (*(*(v27 - 8) + 16))(a1, v24 + ((*(*(v27 - 8) + 80) + 32) & ~*(*(v27 - 8) + 80)) + *(*(v27 - 8) + 72) * v26, v27);

            return;
          }

          __break(1u);
          goto LABEL_61;
        }

        v12 = *(v10 + 8 * v11++);
      }

      while (v12 < a2);
      v10 = v11 - 5;
      if (qword_27F8F4798 == -1)
      {
        goto LABEL_20;
      }

LABEL_61:
      swift_once();
LABEL_20:
      v13 = off_27F8FA738;
      if (v10 < *(off_27F8FA738 + 2))
      {
        v14 = sub_257ECCB70();
        v15 = *(v14 - 8);
        v16 = *(v15 + 16);
        v17 = v13 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v10;
        goto LABEL_56;
      }

      __break(1u);
LABEL_63:
      swift_once();
LABEL_32:
      v2 = off_27F8FA760;
      v9 = *(off_27F8FA760 + 2);
      if (v9)
      {
LABEL_38:
        v21 = v9 - 1;
        v14 = sub_257ECCB70();
        v22 = *(v14 - 8);
        v16 = *(v22 + 16);
        v17 = &v2[((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v21];
LABEL_56:
        v19 = v14;
        v18 = a1;
        goto LABEL_57;
      }

      __break(1u);
      goto LABEL_34;
    }

LABEL_22:
    if (qword_27F8F4790 != -1)
    {
      swift_once();
    }

    v5 = sub_257ECCB70();
    v6 = v5;
    v7 = qword_27F8FA720;
    goto LABEL_29;
  }

  if (v4 == 2)
  {
    goto LABEL_15;
  }

  if (v4 != 3)
  {
    if (v2[48])
    {
      if (qword_27F8F47B8 != -1)
      {
        swift_once();
      }

      v5 = sub_257ECCB70();
      v6 = v5;
      v7 = qword_27F8FA768;
      goto LABEL_29;
    }

LABEL_34:
    v20 = qword_27F8F47C0;
    if (*(v2 + 5) >= a2)
    {
      goto LABEL_48;
    }

    if (qword_27F8F47C0 != -1)
    {
      swift_once();
    }

    v2 = off_27F8FA780;
    v9 = *(off_27F8FA780 + 2);
    if (v9)
    {
      goto LABEL_38;
    }

    __break(1u);
    goto LABEL_65;
  }

  if ((v2[48] & 1) == 0)
  {
    if (*(v2 + 5) >= a2)
    {
      if (qword_27F8F47B0 == -1)
      {
LABEL_46:
        v28 = off_27F8FA760;
        v20 = *(off_27F8FA760 + 2);
        if (v20)
        {
          goto LABEL_55;
        }

        __break(1u);
LABEL_48:
        if (v20 != -1)
        {
          swift_once();
        }

        v28 = off_27F8FA780;
        v8 = *(off_27F8FA780 + 2);
        if (!v8)
        {
          __break(1u);
LABEL_52:
          if (v8 != -1)
          {
            swift_once();
          }

          v28 = off_27F8FA740;
          if (!*(off_27F8FA740 + 2))
          {
            __break(1u);
            return;
          }
        }

LABEL_55:
        v14 = sub_257ECCB70();
        v29 = *(v14 - 8);
        v16 = *(v29 + 16);
        v17 = v28 + ((*(v29 + 80) + 32) & ~*(v29 + 80));
        goto LABEL_56;
      }

LABEL_65:
      swift_once();
      goto LABEL_46;
    }

    if (qword_27F8F47B0 == -1)
    {
      goto LABEL_32;
    }

    goto LABEL_63;
  }

  if (qword_27F8F47A8 != -1)
  {
    swift_once();
  }

  v5 = sub_257ECCB70();
  v6 = v5;
  v7 = qword_27F8FA748;
LABEL_29:
  v17 = __swift_project_value_buffer(v5, v7);
  v16 = *(*(v6 - 8) + 16);
  v18 = a1;
  v19 = v6;
LABEL_57:

  v16(v18, v17, v19);
}

uint64_t sub_257E59210()
{

  return swift_deallocClassInstance();
}

unint64_t sub_257E59280()
{
  result = qword_27F8FA788;
  if (!qword_27F8FA788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FA788);
  }

  return result;
}

uint64_t sub_257E592EC(char a1, double a2)
{
  type metadata accessor for PitchGenerator();
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 20) = 0;
  *(result + 24) = 1;
  *(result + 28) = 0;
  *(result + 32) = 1;
  *(result + 40) = a2;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 68) = 1;
  *(result + 72) = 0;
  *(result + 76) = 1;
  return result;
}

unint64_t sub_257E5935C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F55E0);
    v3 = sub_257ED0480();
    v4 = a1 + 32;
    sub_257ECC3F0();
    while (1)
    {
      sub_257E5ADC8(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_257C03F6C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_257BEBE08(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

void sub_257E5946C(void *a1, uint64_t a2, unint64_t a3)
{
  v51 = a2;
  v5 = sub_257ECC6B0();
  MEMORY[0x28223BE20](v5 - 8);
  v53 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_257ECC6C0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_257ECDA30();
  v11 = *(v52 - 8);
  v12 = MEMORY[0x28223BE20](v52);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v48 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v48 - v18;
  v20 = [a1 fileWrappers];
  if (!v20)
  {
    sub_257ECD340();

    v34 = sub_257ECDA20();
    v35 = sub_257ECFBE0();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v50 = v8;
      v37 = v36;
      v38 = swift_slowAlloc();
      v54 = v38;
      *v37 = 136315138;
      *(v37 + 4) = sub_257BF1FC8(v51, a3, &v54);
      _os_log_impl(&dword_257BAC000, v34, v35, "No package wrappers %s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v38);
      MEMORY[0x259C74820](v38, -1, -1);
      v39 = v37;
      v8 = v50;
      MEMORY[0x259C74820](v39, -1, -1);
    }

    (*(v11 + 8))(v14, v52);
    goto LABEL_12;
  }

  v21 = v20;
  sub_257E5AD28();
  v22 = sub_257ECF3D0();

  if (!*(v22 + 16) || (v23 = sub_257C03F6C(v51, a3), (v24 & 1) == 0))
  {

    sub_257ECD340();

    v28 = sub_257ECDA20();
    v29 = sub_257ECFBE0();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v50 = v8;
      v32 = v31;
      v54 = v31;
      *v30 = 136315138;
      *(v30 + 4) = sub_257BF1FC8(v51, a3, &v54);
      _os_log_impl(&dword_257BAC000, v28, v29, "File now found %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      v33 = v32;
      v8 = v50;
      MEMORY[0x259C74820](v33, -1, -1);
      MEMORY[0x259C74820](v30, -1, -1);
    }

    (*(v11 + 8))(v17, v52);
LABEL_12:
    sub_257ECC6A0();
    sub_257E5935C(MEMORY[0x277D84F90]);
    sub_257E5ACD0();
    sub_257ECC9E0();
    sub_257ECC690();
    v8[1](v10, v7);
    swift_willThrow();
    return;
  }

  v25 = *(*(v22 + 56) + 8 * v23);

  v26 = [v25 regularFileContents];
  if (v26)
  {
    v27 = v26;
    sub_257ECCBA0();
  }

  else
  {
    sub_257ECD340();

    v40 = sub_257ECDA20();
    v41 = sub_257ECFBE0();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v50 = v25;
      v43 = v42;
      v44 = swift_slowAlloc();
      v49 = v40;
      v45 = v44;
      v54 = v44;
      *v43 = 136315138;
      *(v43 + 4) = sub_257BF1FC8(v51, a3, &v54);
      v46 = v49;
      _os_log_impl(&dword_257BAC000, v49, v41, "Unable to load data %s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v45);
      MEMORY[0x259C74820](v45, -1, -1);
      v47 = v43;
      v25 = v50;
      MEMORY[0x259C74820](v47, -1, -1);
    }

    else
    {
    }

    (*(v11 + 8))(v19, v52);
    sub_257ECC6A0();
    sub_257E5935C(MEMORY[0x277D84F90]);
    sub_257E5ACD0();
    sub_257ECC9E0();
    sub_257ECC690();
    v8[1](v10, v7);
    swift_willThrow();
  }
}

void sub_257E59AA8(void *a1, uint64_t a2, unint64_t a3)
{
  v52 = a3;
  v56 = *MEMORY[0x277D85DE8];
  v5 = sub_257ECC6B0();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_257ECC6C0();
  v51 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_257ECDA30();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v46 - v16;
  v18 = v53;
  sub_257E5946C(a1, a2, v52);
  if (!v18)
  {
    v21 = v19;
    v46 = v17;
    v47 = 0;
    v52 = v15;
    v48 = v12;
    v49 = v11;
    v50 = v7;
    v22 = v20;
    v23 = objc_opt_self();
    v24 = v21;
    v25 = sub_257ECCB90();
    v54[0] = 0;
    v26 = [v23 propertyListWithData:v25 options:0 format:0 error:v54];

    v27 = v54[0];
    v53 = v24;
    if (v26)
    {
      sub_257ED0160();
      swift_unknownObjectRelease();
      sub_257BE41F4(v55, v54);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA7A0);
      v28 = swift_dynamicCast();
      v29 = v51;
      if (v28)
      {
        __swift_destroy_boxed_opaque_existential_0(v55);
        sub_257BF2550(v53, v22);
      }

      else
      {
        v40 = v10;
        v41 = v22;
        v42 = v46;
        sub_257ECD340();
        v43 = sub_257ECDA20();
        v44 = sub_257ECFBE0();
        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          *v45 = 0;
          _os_log_impl(&dword_257BAC000, v43, v44, "Invalid plist format", v45, 2u);
          MEMORY[0x259C74820](v45, -1, -1);
        }

        (*(v48 + 8))(v42, v49);
        sub_257ECC6A0();
        sub_257E5935C(MEMORY[0x277D84F90]);
        sub_257E5ACD0();
        sub_257ECC9E0();
        sub_257ECC690();
        (*(v29 + 8))(v40, v8);
        swift_willThrow();
        sub_257BF2550(v53, v41);
        __swift_destroy_boxed_opaque_existential_0(v55);
      }
    }

    else
    {
      v47 = v22;
      v30 = v27;
      v31 = sub_257ECC9F0();

      swift_willThrow();
      sub_257ECD340();
      v32 = v31;
      v33 = sub_257ECDA20();
      v34 = sub_257ECFBE0();

      v35 = v10;
      if (os_log_type_enabled(v33, v34))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        *v36 = 138412290;
        v38 = v31;
        v39 = _swift_stdlib_bridgeErrorToNSError();
        *(v36 + 4) = v39;
        *v37 = v39;
        _os_log_impl(&dword_257BAC000, v33, v34, "Unable to load plist %@", v36, 0xCu);
        sub_257C11B14(v37);
        MEMORY[0x259C74820](v37, -1, -1);
        MEMORY[0x259C74820](v36, -1, -1);
      }

      (*(v48 + 8))(v52, v49);
      sub_257ECC6A0();
      sub_257E5935C(MEMORY[0x277D84F90]);
      sub_257E5ACD0();
      sub_257ECC9E0();
      sub_257ECC690();
      (*(v51 + 8))(v35, v8);
      swift_willThrow();
      sub_257BF2550(v53, v47);
    }
  }
}

NSObject *sub_257E5A030(void *a1, NSObject *a2, unint64_t a3)
{
  v6 = sub_257ECC6B0();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_257ECC6C0();
  v34 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_257ECDA30();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v35;
  sub_257E5946C(a1, a2, a3);
  if (!v16)
  {
    v19 = v17;
    v20 = v18;
    v29 = v15;
    v30 = v13;
    v31 = v12;
    v32 = v11;
    v33 = v8;
    v35 = 0;
    v21 = objc_allocWithZone(MEMORY[0x277D755B8]);
    sub_257E5AD74(v19, v20);
    v22 = v20;
    v23 = sub_257ECCB90();
    a2 = [v21 initWithData_];

    sub_257BF2550(v19, v22);
    if (a2)
    {
      sub_257BF2550(v19, v22);
    }

    else
    {
      v25 = v29;
      sub_257ECD340();
      a2 = sub_257ECDA20();
      v26 = sub_257ECFBE0();
      if (os_log_type_enabled(a2, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_257BAC000, a2, v26, "Unable to create image", v27, 2u);
        MEMORY[0x259C74820](v27, -1, -1);
      }

      (*(v30 + 8))(v25, v31);
      sub_257ECC6A0();
      sub_257E5935C(MEMORY[0x277D84F90]);
      sub_257E5ACD0();
      v28 = v32;
      sub_257ECC9E0();
      sub_257ECC690();
      (*(v34 + 8))(v28, v9);
      swift_willThrow();
      sub_257BF2550(v19, v22);
    }
  }

  return a2;
}

void sub_257E5A374(void *a1)
{
  v3 = sub_257ECC6B0();
  MEMORY[0x28223BE20](v3 - 8);
  v63 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_257ECC6C0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_257ECDA30();
  v61 = *(v9 - 8);
  v62 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v53 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v60 = &v53 - v17;
  MEMORY[0x28223BE20](v16);
  v66 = MEMORY[0x277D84F90];
  v18 = [a1 fileWrappers];
  if (!v18)
  {
    sub_257ECD340();
    v22 = sub_257ECDA20();
    v23 = sub_257ECFBE0();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_257BAC000, v22, v23, "No package wrappers", v24, 2u);
      MEMORY[0x259C74820](v24, -1, -1);
    }

    (*(v61 + 8))(v12, v62);
    sub_257ECC6A0();
    sub_257E5935C(MEMORY[0x277D84F90]);
    sub_257E5ACD0();
    sub_257ECC9E0();
    sub_257ECC690();
    (*(v6 + 8))(v8, v5);
    goto LABEL_23;
  }

  v19 = v18;
  v59 = v8;
  sub_257E5AD28();
  v20 = sub_257ECF3D0();

  sub_257E59AA8(a1, 0x746E656D75636F64, 0xEE007473696C702ELL);
  if (v1)
  {

LABEL_23:
    swift_willThrow();
    return;
  }

  v25 = v21;
  if (!*(v21 + 16) || (v26 = sub_257C03F6C(0x7473694C65676170, 0xE800000000000000), (v27 & 1) == 0))
  {

    goto LABEL_20;
  }

  sub_257BE41F4(*(v25 + 56) + 32 * v26, v65);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9D90);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_20:

    sub_257ECD340();
    v38 = sub_257ECDA20();
    v39 = sub_257ECFBF0();
    v40 = os_log_type_enabled(v38, v39);
    v41 = v59;
    if (v40)
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_257BAC000, v38, v39, "Invalid page list", v42, 2u);
      MEMORY[0x259C74820](v42, -1, -1);
    }

    (*(v61 + 8))(v15, v62);
    sub_257ECC6A0();
    sub_257E5935C(MEMORY[0x277D84F90]);
    sub_257E5ACD0();
    sub_257ECC9E0();
    sub_257ECC690();
    (*(v6 + 8))(v41, v5);
    goto LABEL_23;
  }

  v28 = v64;
  v56 = *(v64 + 16);
  if (v56)
  {
    v53 = v6;
    v54 = v5;
    v29 = 0;
    v30 = (v64 + 40);
    v57 = v64;
    while (1)
    {
      if (v29 >= *(v28 + 16))
      {
        __break(1u);
        return;
      }

      v31 = *(v30 - 1);
      v32 = *v30;
      v33 = *(v20 + 16);

      if (!v33)
      {
        break;
      }

      v34 = sub_257C03F6C(v31, v32);
      if ((v35 & 1) == 0)
      {
        break;
      }

      v55 = v31;
      v58 = *(*(v20 + 56) + 8 * v34);
      v36 = sub_257E5A030(v58, 0x6E702E6567616D69, 0xE900000000000067);

      v37 = v36;
      MEMORY[0x259C72300]();
      if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_257ECF830();
      }

      ++v29;
      sub_257ECF860();

      v30 += 2;
      v28 = v57;
      if (v56 == v29)
      {
        goto LABEL_24;
      }
    }

    v43 = v60;
    sub_257ECD340();

    v44 = sub_257ECDA20();
    v45 = sub_257ECFBF0();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = v31;
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v65[0] = v48;
      *v47 = 136315138;
      v49 = sub_257BF1FC8(v46, v32, v65);

      *(v47 + 4) = v49;
      _os_log_impl(&dword_257BAC000, v44, v45, "Could not find data for page %s", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v48);
      MEMORY[0x259C74820](v48, -1, -1);
      MEMORY[0x259C74820](v47, -1, -1);
    }

    else
    {
    }

    (*(v61 + 8))(v43, v62);
    v51 = v53;
    v50 = v54;
    v52 = v59;
    sub_257ECC6A0();
    sub_257E5935C(MEMORY[0x277D84F90]);
    sub_257E5ACD0();
    sub_257ECC9E0();
    sub_257ECC690();
    (*(v51 + 8))(v52, v50);
    goto LABEL_23;
  }

LABEL_24:
}

unint64_t sub_257E5ACD0()
{
  result = qword_27F8FA790;
  if (!qword_27F8FA790)
  {
    sub_257ECC6C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FA790);
  }

  return result;
}

unint64_t sub_257E5AD28()
{
  result = qword_27F8FA798;
  if (!qword_27F8FA798)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F8FA798);
  }

  return result;
}

uint64_t sub_257E5AD74(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }

    sub_257ECC3F0();
  }

  return sub_257ECC3F0();
}

uint64_t sub_257E5ADC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F55E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_257E5AE38()
{

  return swift_deallocClassInstance();
}

uint64_t String.localized.getter()
{
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_257ECF4C0();
  v3 = sub_257ECF4C0();
  v4 = [v1 localizedStringForKey:v2 value:0 table:v3];

  v5 = sub_257ECF500();
  return v5;
}

void String.localizedForDeviceVariant.getter()
{
  v0 = sub_257ECF4C0();
  v3[4] = sub_257E5BD88;
  v3[5] = 0;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 1107296256;
  v3[2] = sub_257E5BE70;
  v3[3] = &block_descriptor_60;
  v1 = _Block_copy(v3);
  v2 = AXLocStringForDeviceVariant();
  _Block_release(v1);

  if (v2)
  {
    sub_257ECF500();
  }

  else
  {
    __break(1u);
  }
}

Swift::String __swiftcall generateTextToDisplay(depth:longUnitStyle:)(Swift::Int32 depth, Swift::Bool longUnitStyle)
{
  v33 = longUnitStyle;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DA0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v32[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8568);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v34 = &v32[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v11 = &v32[-v10];
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v12 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__detectionUnit;
  swift_beginAccess();
  v13 = *(v12 + 8);
  v14 = *(v12 + 16);
  v35[0] = *v12;
  v35[1] = v13;
  v36 = v14;
  v15 = qword_2815447E0;

  if (v15 != -1)
  {
    v16 = swift_once();
  }

  MEMORY[0x28223BE20](v16);
  *&v32[-16] = v35;
  sub_257ECFD50();

  v17 = v37;
  depthRoundingIncrement(for:)(depth);
  v18 = objc_opt_self();
  v19 = [v18 millimeters];
  sub_257BD2C2C(0, &qword_27F8F58F0);
  sub_257ECC740();
  if (v17)
  {
    v20 = &selRef_feet;
  }

  else
  {
    v20 = &selRef_meters;
  }

  v21 = [v18 *v20];
  sub_257ECC770();

  sub_257ECC750();
  v22 = *(v4 + 8);
  v22(v6, v3);
  v23 = [v18 *v20];
  sub_257ECC740();
  (*(v4 + 56))(v11, 0, 1, v3);
  v24 = [objc_allocWithZone(MEMORY[0x277CCAB18]) init];
  [v24 setUnitOptions_];
  if (v33)
  {
    [v24 setUnitStyle_];
  }

  v25 = v34;
  sub_257D3E9E8(v11, v34);
  v26 = (*(v4 + 48))(v25, 1, v3);
  if (v26 == 1)
  {
    __break(1u);
  }

  else
  {
    v28 = sub_257ECFE20();
    v30 = v29;

    sub_257BE4084(v11, &qword_27F8F8568);
    v22(v25, v3);
    v26 = v28;
    v27 = v30;
  }

  result._object = v27;
  result._countAndFlagsBits = v26;
  return result;
}

BOOL sub_257E5B4BC()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 orientation];

  return (v1 - 3) < 2;
}

void sub_257E5B51C()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 orientation];

  if (v1 == 3 || v1 == 4)
  {
    CGSizeMake(v2);
  }
}

Swift::Double __swiftcall depthRoundingIncrement(for:)(Swift::Int32 a1)
{
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_2815447E0;

  if (v2 != -1)
  {
    v3 = swift_once();
  }

  MEMORY[0x28223BE20](v3);
  sub_257ECFD50();

  result = 0.5;
  v5 = 0.25;
  if (a1 >= 0x1F4)
  {
    v5 = 0.5;
  }

  if (a1 >= 0x258)
  {
    result = 1.0;
  }

  if (!v6)
  {
    return v5;
  }

  return result;
}

void String.betterAccessibilityPronounciation.getter()
{
  v0 = *MEMORY[0x277D74010];
  v1 = sub_257ECF4C0();
  v2 = AXAttributedStringForBetterPronuciation();

  if (v2)
  {
    sub_257ECF500();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_257E5B84C(uint64_t result)
{
  v1 = 0;
  v2 = *(result + 16);
  v3 = result + 40;
  v4 = MEMORY[0x277D84F90];
LABEL_2:
  v5 = (v3 + 16 * v1);
  while (1)
  {
    if (v2 == v1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9D90);
      sub_257D7CDE8();
      v13 = sub_257ECF420();

      return v13;
    }

    if (v1 >= v2)
    {
      break;
    }

    v6 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_14;
    }

    v8 = *v5;
    v5 += 2;
    v7 = v8;
    ++v1;
    if (v8)
    {
      v9 = *(v5 - 3);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_257BFCB3C(0, *(v4 + 16) + 1, 1, v4);
        v4 = result;
      }

      v11 = *(v4 + 16);
      v10 = *(v4 + 24);
      if (v11 >= v10 >> 1)
      {
        result = sub_257BFCB3C((v10 > 1), v11 + 1, 1, v4);
        v4 = result;
      }

      *(v4 + 16) = v11 + 1;
      v12 = v4 + 16 * v11;
      *(v12 + 32) = v9;
      *(v12 + 40) = v7;
      v1 = v6;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_257E5B9B0(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  v14 = MEMORY[0x277D84F90];
  v7 = *(result + 16);
  v8 = result + 32;
  while (1)
  {
    if (v7 == v5)
    {
      sub_257E5BF38(a2, a3, v6);
      v13 = v12;

      return v13;
    }

    if (v5 >= v7)
    {
      break;
    }

    v9 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_11;
    }

    v10 = *(v8 + 8 * v5++);
    if (v10)
    {
      v11 = v10;
      MEMORY[0x259C72300]();
      if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_257ECF830();
      }

      result = sub_257ECF860();
      v6 = v14;
      v5 = v9;
    }
  }

  __break(1u);
LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_257E5BABC(void *a1, uint64_t a2, float a3)
{
  v4 = a2;
  v7 = sub_257E5C68C(a1, a2, a3);
  v8 = v4;
  if ([v3 length] < v4)
  {
    v8 = [v3 length];
  }

  if ([a1 length] < v4)
  {
    v4 = [a1 length];
  }

  if (v4 <= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = v4;
  }

  if (v9 <= 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9;
  }

  sub_257BD2C2C(0, &qword_27F8FA830);
  v11 = sub_257ECFF80();
  v12 = sub_257ECFF50();

  if (v12)
  {
    v13 = sub_257ECFF80();
    v14 = sub_257ECFF50();

    if ((v14 & 1) == 0)
    {
      if (v8 == 1 && v4 == 1)
      {
        sub_257ECFF50();
      }

      goto LABEL_28;
    }
  }

  v15 = v7 / v10;
  v16 = sub_257ECFF80();
  v17 = sub_257ECFF50();

  if (v17)
  {
    if (v8 == 1 && v4 == 1)
    {
      v18 = 0;
      goto LABEL_19;
    }

    if (v15 <= a3)
    {
LABEL_29:
      v21 = 0;
      return v21 & 1;
    }

LABEL_28:
    v21 = 1;
    return v21 & 1;
  }

  v19 = sub_257ECFF80();
  v18 = sub_257ECFF50();

  if (v8 != 1 || v4 != 1)
  {
    if (!((v15 > a3) | v18 & 1))
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

LABEL_19:
  v20 = sub_257ECFF50();
  if (v15 > a3 || (v18 & 1) != 0)
  {
    goto LABEL_28;
  }

  v21 = v20 ^ 1;
  return v21 & 1;
}

uint64_t sub_257E5BCF0()
{
  v0 = sub_257ECCA10();
  __swift_allocate_value_buffer(v0, qword_27F913318);
  v1 = __swift_project_value_buffer(v0, qword_27F913318);
  *v1 = type metadata accessor for MAGUtilities();
  v2 = *MEMORY[0x277CC9120];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_257E5BD88(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    type metadata accessor for MAGUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v4 = [objc_opt_self() bundleForClass_];
    v5 = sub_257ECF4C0();
    v6 = sub_257ECF4C0();
    v7 = [v4 localizedStringForKey:v5 value:0 table:v6];

    a1 = sub_257ECF500();
  }

  return a1;
}

id sub_257E5BE70(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = sub_257ECF500();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  sub_257ECC3F0();
  v2(v3, v5);
  v7 = v6;

  if (v7)
  {
    v8 = sub_257ECF4C0();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t block_copy_helper_60(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_257ECC3F0();
}

void sub_257E5BF38(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = a3;
  v4 = (a3 >> 62);
  if (a3 >> 62)
  {
    goto LABEL_30;
  }

  v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
LABEL_31:
    v27 = objc_allocWithZone(MEMORY[0x277CCAB48]);
    v10 = sub_257ECF4C0();
    [v27 initWithString_];
LABEL_32:

    return;
  }

  while ((v3 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x259C72E20](0, v3);
LABEL_6:
    v7 = v6;
    v8 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v9 = sub_257ECF4C0();
    v10 = [v8 initWithString_];

    if (v5 < 0)
    {
      goto LABEL_37;
    }

    if (v4)
    {
      if (sub_257ED0210() < 1)
      {
        goto LABEL_35;
      }

      v11 = sub_257ED0210();
    }

    else
    {
      v11 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v11)
      {
        goto LABEL_35;
      }
    }

    if (v11 < v5)
    {
      goto LABEL_36;
    }

    if ((v3 & 0xC000000000000001) == 0 || v5 == 1)
    {

      if (!v4)
      {
        goto LABEL_18;
      }
    }

    else
    {
      sub_257BD2C2C(0, &qword_27F8F6E48);

      v12 = 1;
      do
      {
        v13 = v12 + 1;
        sub_257ED02F0();
        v12 = v13;
      }

      while (v5 != v13);
      if (!v4)
      {
LABEL_18:
        v3 &= 0xFFFFFFFFFFFFFF8uLL;
        v14 = v3 + 32;
        v15 = 1;
        goto LABEL_21;
      }
    }

    v3 = sub_257ED0450();
    v14 = v16;
    v15 = v17;
    v5 = v18 >> 1;
LABEL_21:
    v19 = objc_allocWithZone(MEMORY[0x277CCAB48]);
    swift_unknownObjectRetain();
    v20 = [v19 initWithAttributedString_];
    v21 = v5 - v15;
    if (v5 == v15)
    {
LABEL_28:

      swift_unknownObjectRelease_n();
      goto LABEL_32;
    }

    if (v5 <= v15)
    {
      v22 = v15;
    }

    else
    {
      v22 = v5;
    }

    v23 = v22 - v15;
    v24 = (v14 + 8 * v15);
    v4 = &selRef_imageByApplyingSymbolConfiguration_;
    while (v23)
    {
      v25 = *v24++;
      v26 = v25;
      [v20 appendAttributedString_];
      [v20 appendAttributedString_];

      --v23;
      if (!--v21)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_30:
    v5 = sub_257ED0210();
    if (!v5)
    {
      goto LABEL_31;
    }
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(v3 + 32);
    goto LABEL_6;
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
}

uint64_t sub_257E5C1E4()
{
  result = sub_257ECF4C0();
  qword_27F913330 = result;
  return result;
}

uint64_t sub_257E5C218()
{
  v37[6] = *MEMORY[0x277D85DE8];
  if (qword_27F8F47D0 != -1)
  {
    goto LABEL_29;
  }

LABEL_2:
  v37[0] = 0;
  v1 = [v0 recognizedPointsForGroupKey:qword_27F913330 error:v37];
  v0 = v37[0];
  if (!v1)
  {
    v27 = v37[0];
    v28 = sub_257ECC9F0();

    swift_willThrow();
    goto LABEL_34;
  }

  v2 = v1;
  type metadata accessor for VNRecognizedPointKey(0);
  sub_257BD2C2C(0, &qword_27F8F5FD0);
  sub_257E5D460(&qword_27F8F5028, type metadata accessor for VNRecognizedPointKey);
  v3 = sub_257ECF3D0();
  v4 = v0;

  v37[0] = MEMORY[0x277D84F90];
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  if (v7)
  {
    while (2)
    {
      v10 = v9;
LABEL_12:
      v11 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v12 = *(*(v3 + 56) + ((v10 << 9) | (8 * v11)));
      [v12 confidence];
      if (v13 <= 0.67)
      {

        v9 = v10;
        if (v7)
        {
          continue;
        }
      }

      else
      {
        sub_257ED0330();
        sub_257ED0370();
        sub_257ED0380();
        v0 = v37;
        sub_257ED0340();
        v9 = v10;
        if (v7)
        {
          continue;
        }
      }

      break;
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_29:
      swift_once();
      goto LABEL_2;
    }

    if (v10 >= v8)
    {
      break;
    }

    v7 = *(v3 + 64 + 8 * v10);
    ++v9;
    if (v7)
    {
      goto LABEL_12;
    }
  }

  v14 = v37[0];
  if ((v37[0] & 0x8000000000000000) != 0 || (v37[0] & 0x4000000000000000) != 0)
  {
    v15 = sub_257ED0210();
    if (v15)
    {
LABEL_18:
      v37[0] = MEMORY[0x277D84F90];
      sub_257BF2804(0, v15 & ~(v15 >> 63), 0);
      if (v15 < 0)
      {
        __break(1u);
      }

      v16 = 0;
      v17 = v37[0];
      do
      {
        if ((v14 & 0xC000000000000001) != 0)
        {
          v18 = MEMORY[0x259C72E20](v16, v14);
        }

        else
        {
          v18 = *(v14 + 8 * v16 + 32);
        }

        v19 = v18;
        [v18 location];
        v21 = v20;
        v23 = v22;

        v37[0] = v17;
        v25 = v17[2];
        v24 = v17[3];
        if (v25 >= v24 >> 1)
        {
          sub_257BF2804((v24 > 1), v25 + 1, 1);
          v17 = v37[0];
        }

        ++v16;
        v17[2] = v25 + 1;
        v26 = &v17[2 * v25];
        v26[4] = v21;
        v26[5] = v23;
      }

      while (v15 != v16);
    }
  }

  else
  {
    v15 = *(v37[0] + 2);
    if (v15)
    {
      goto LABEL_18;
    }
  }

  Mutable = CGPathCreateMutable();
  v37[0] = 0x3FF0000000000000;
  v37[1] = 0;
  v37[2] = 0;
  v37[3] = 0x3FF0000000000000;
  v37[4] = 0;
  v37[5] = 0;
  sub_257ECFC70();

  PathBoundingBox = CGPathGetPathBoundingBox(Mutable);
  x = PathBoundingBox.origin.x;
  y = PathBoundingBox.origin.y;
  width = PathBoundingBox.size.width;
  height = PathBoundingBox.size.height;
  PathBoundingBox.origin.x = 0.0;
  PathBoundingBox.origin.y = 0.0;
  PathBoundingBox.size.width = 1.0;
  PathBoundingBox.size.height = 1.0;
  v42.origin.x = x;
  v42.origin.y = y;
  v42.size.width = width;
  v42.size.height = height;
  if (CGRectContainsRect(PathBoundingBox, v42))
  {
    v39.origin.x = x;
    v39.origin.y = y;
    v39.size.width = width;
    v39.size.height = height;
    v40 = CGRectStandardize(v39);
    v34 = v40.size.height;
    v40.origin.x = x;
    v40.origin.y = y;
    v40.size.width = width;
    v40.size.height = height;
    v41 = CGRectStandardize(v40);
    v35 = v41.size.width;

    *&result = v34 * v35;
    return result;
  }

LABEL_34:
  *&result = 0.0;
  return result;
}

void *sub_257E5C68C(void *a1, uint64_t a2, float a3)
{
  v4 = a2;
  v6 = a2;
  if ([v3 length] < a2)
  {
    v6 = [v47 length];
  }

  result = [a1 length];
  if (result < v4)
  {
    result = [a1 length];
    v4 = result;
  }

  if (v4 <= v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = v4;
  }

  if (v8 <= 1)
  {
    v8 = 1;
  }

  v9 = v8 * a3;
  if (COERCE_INT(fabs(v9)) > 2139095039)
  {
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  if (v9 <= -9.2234e18)
  {
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  if (v9 >= 9.2234e18)
  {
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v10 = v6 - v4;
  if (__OFSUB__(v6, v4))
  {
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  if (v10 < 0)
  {
    v11 = __OFSUB__(0, v10);
    v10 = v4 - v6;
    if (v11)
    {
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
      goto LABEL_89;
    }
  }

  v12 = v9;
  if (v10 > v9)
  {
    return (v12 + 1);
  }

  if (!v6 && v4 > 0)
  {
    return v4;
  }

  if (!v4 && v6 > 0)
  {
    return v6;
  }

  sub_257BD2C2C(0, &qword_281543DA0);
  v13 = sub_257ECFF50();
  result = 0;
  if ((v13 & 1) == 0)
  {
    v14 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
LABEL_89:
      __break(1u);
      goto LABEL_90;
    }

    if ((v4 - 0xFFFFFFFFFFFFFFFLL) >> 61 != 7)
    {
LABEL_90:
      __break(1u);
      goto LABEL_91;
    }

    v15 = 8 * v14;
    result = malloc(8 * v14);
    if (!result)
    {
LABEL_92:
      __break(1u);
      goto LABEL_93;
    }

    v16 = result;
    result = malloc(v15);
    v49 = result;
    if (!result)
    {
LABEL_93:
      __break(1u);
      goto LABEL_94;
    }

    if (v4 < 0)
    {
LABEL_91:
      __break(1u);
      goto LABEL_92;
    }

    *v16 = 0;
    if (!v4)
    {
      goto LABEL_94;
    }

    if (v4 >= 4)
    {
      v20 = 0;
      v19 = v4 & 0x7FFFFFFFFFFFFFFCLL;
      v17 = 1;
      v18 = 3;
      do
      {
        v21 = vdupq_n_s64(v20);
        v22 = vorrq_s8(v21, xmmword_257ED6D30);
        v23 = &v16[v22.i64[0]];
        *v23 = v22;
        v23[1] = vaddq_s64(v21, xmmword_257EED8D0);
        v20 += 4;
      }

      while (v19 != v20);
      if (v4 == v19)
      {
LABEL_38:
        if (v6 >= 1)
        {
          v43 = v6;
          v26 = 1;
          while (1)
          {
            v46 = v26 - v12;
            if (v26 <= v12)
            {
              v46 = 1;
            }

            else if (__OFSUB__(v26, v12))
            {
              goto LABEL_88;
            }

            if (__OFADD__(v12, v26))
            {
              goto LABEL_85;
            }

            if (v12 + v26 >= v4)
            {
              v27 = v4;
            }

            else
            {
              v27 = v12 + v26;
            }

            if (__OFADD__(v26, 1))
            {
              goto LABEL_86;
            }

            v28 = 0;
            v44 = v26 + 1;
            v45 = v26;
            *v49 = v26 + 1;
            v29 = v26 - 1;
            v30 = 0x7FFFFFFFFFFFFFFFLL;
            while (1)
            {
              if ((v27 < v28 + 1 || v28 + 1 < v46) && v12 == 0x7FFFFFFFFFFFFFFFLL)
              {
                goto LABEL_77;
              }

              v33 = v12;
              v34 = [v47 characterAtIndex_];
              result = [a1 characterAtIndex_];
              if (v34 == result)
              {
                v35 = v16[v28];
              }

              else
              {
                v36 = v16[v28 + 1];
                v11 = __OFADD__(v36, 1);
                v35 = v36 + 1;
                if (v11)
                {
                  goto LABEL_78;
                }

                v37 = v49[v28];
                v11 = __OFADD__(v37, 1);
                v38 = v37 + 1;
                if (v11)
                {
                  goto LABEL_79;
                }

                v39 = v16[v28];
                v11 = __OFADD__(v39, 1);
                v40 = v39 + 1;
                if (v11)
                {
                  goto LABEL_80;
                }

                if (v38 < v35)
                {
                  v35 = v38;
                }

                if (v40 < v35)
                {
                  v35 = v40;
                }
              }

              v49[v28 + 1] = v35;
              if (v35 < v30)
              {
                v30 = v35;
              }

              v41 = v28 + 1;
              v12 = v33;
              if (v28 + 1 == v4)
              {
                break;
              }

              ++v28;
              if (__OFADD__(v41, 1))
              {
                __break(1u);
LABEL_77:
                __break(1u);
LABEL_78:
                __break(1u);
LABEL_79:
                __break(1u);
LABEL_80:
                __break(1u);
                goto LABEL_81;
              }
            }

            if (v30 > v33)
            {
              return (v12 + 1);
            }

            *v16 = *v49;
            result = memcpy(v16 + 1, v49 + 1, 8 * v4);
            v26 = v44;
            if (v45 == v43)
            {
              v42 = v49[v4];
              free(v16);
              free(v49);
              return v42;
            }
          }
        }

LABEL_94:
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = 0;
    }

    v24 = v4 - v19;
    v25 = v19 + 1;
    do
    {
      v16[v25] = v25;
      ++v25;
      --v24;
    }

    while (v24);
    goto LABEL_38;
  }

  return result;
}

id sub_257E5CA94()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  [v0 setMinimumFractionDigits_];
  [v0 setMaximumFractionDigits_];
  result = [v0 setNumberStyle_];
  qword_27F913338 = v0;
  return result;
}

uint64_t sub_257E5CB0C()
{
  sub_257ED07B0();
  MEMORY[0x259C732E0](1);
  return sub_257ED0800();
}

uint64_t sub_257E5CB78()
{
  sub_257ED07B0();
  MEMORY[0x259C732E0](1);
  return sub_257ED0800();
}

id sub_257E5CBB8(int a1, char a2, id a3, double a4, double a5, double a6, uint64_t a7, uint64_t a8, void *a9)
{
  v15 = 0.0;
  if (a2)
  {
    [a3 size];
    v15 = v16 + 5.0;
  }

  v17 = sub_257ECF4C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8F90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_257ED6D30;
  v19 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  *(inited + 64) = sub_257BD2C2C(0, &qword_27F8F8FA0);
  *(inited + 40) = a9;
  v20 = v19;
  v21 = a9;
  sub_257BE8668(inited);
  swift_setDeallocating();
  sub_257BE4084(inited + 32, &qword_27F8F9420);
  _s3__C3KeyVMa_0(0);
  sub_257E5D460(&qword_27F8F8300, _s3__C3KeyVMa_0);
  v22 = sub_257ECF3C0();

  [v17 drawAtPoint:v22 withAttributes:{v15, (a4 - a6) * 0.5}];

  if (a2)
  {
    v23 = 0.0;
  }

  else
  {
    v23 = a5 + 5.0;
  }

  [a3 size];
  v25 = (a4 - v24) * 0.5;
  [a3 size];
  v27 = v26;
  [a3 size];
  return [a3 drawInRect_];
}

id sub_257E5CF4C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DoorUIAccessibilityElement();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_257E5CF94@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_257D128B8(*a1, *(a1 + 8), *(a1 + 16));
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_257E5CFE8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_257D128B8(**(v1 + 16), *(*(v1 + 16) + 8), *(*(v1 + 16) + 16));
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

uint64_t sub_257E5D074()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_257E5D0E4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
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

  return v5 + (v6 | v11) + 1;
}

char *sub_257E5D224(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_257E5D460(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_257E5D4C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_257E5D508(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

uint64_t sub_257E5D580@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v58 = a2;
  v3 = sub_257ECE750();
  v4 = *(v3 - 8);
  v56 = v3;
  v57 = v4;
  MEMORY[0x28223BE20](v3);
  v53 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA850);
  MEMORY[0x28223BE20](v6);
  v8 = &v49 - v7;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA858);
  v9 = MEMORY[0x28223BE20](v50);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v49 - v12;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA860);
  MEMORY[0x28223BE20](v51);
  v15 = &v49 - v14;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA868);
  v16 = *(v55 - 8);
  v17 = MEMORY[0x28223BE20](v55);
  v54 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v52 = &v49 - v19;
  v20 = *a1;
  v21 = *(a1 + 16);
  v61 = *(a1 + 32);
  v62 = v21;
  v22 = swift_allocObject();
  v23 = *(a1 + 16);
  v22[1] = *a1;
  v22[2] = v23;
  v22[3] = *(a1 + 32);
  sub_257BBD7E4(v20);
  sub_257BE401C(&v62, &v59, &qword_27F8FA870);
  sub_257BE401C(&v61, &v59, &qword_27F8F5E28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7B68);
  v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F7B78);
  v25 = sub_257D052B8();
  v59 = v24;
  v60 = v25;
  swift_getOpaqueTypeConformance2();
  sub_257ECEEA0();
  v26 = sub_257ECED80();
  v27 = sub_257ECE930();
  v28 = &v8[*(v6 + 36)];
  *v28 = v26;
  v28[8] = v27;
  sub_257E5E2B8();
  sub_257ECEC90();
  sub_257BE4084(v8, &qword_27F8FA850);
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v30 = [objc_opt_self() bundleForClass_];
  v31 = sub_257ECF4C0();
  v32 = sub_257ECF4C0();
  v33 = [v30 localizedStringForKey:v31 value:0 table:v32];

  v34 = sub_257ECF500();
  v36 = v35;

  v59 = v34;
  v60 = v36;
  sub_257BDAB08();
  sub_257ECE200();

  sub_257BE4084(v11, &qword_27F8FA858);
  v37 = v53;
  sub_257ECE740();
  sub_257E5E39C();
  sub_257E5E604(&qword_27F8F77F8, MEMORY[0x277CDE0B8]);
  v38 = v56;
  sub_257ECEB60();
  (*(v57 + 8))(v37, v38);
  sub_257BE4084(v13, &qword_27F8FA858);
  v39 = &v15[*(v51 + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6218);
  sub_257ECE310();
  *v39 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7B28);
  sub_257E5E458();
  sub_257BD2D4C(&qword_27F8F7B38, &qword_27F8F7B28);
  v40 = v52;
  sub_257ECECA0();
  sub_257BE4084(v15, &qword_27F8FA860);
  v41 = *(v16 + 16);
  v43 = v54;
  v42 = v55;
  v41(v54, v40, v55);
  v44 = v58;
  *v58 = 0;
  *(v44 + 8) = 1;
  v45 = v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA8A0);
  v41(&v45[*(v46 + 48)], v43, v42);
  v47 = *(v16 + 8);
  v47(v40, v42);
  return (v47)(v43, v42);
}

void sub_257E5DC9C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = v2;
    sub_257CD4524(0);

    if (*a1)
    {
      (*a1)();
    }
  }

  else
  {
    type metadata accessor for MFReaderBlockManager();
    sub_257E5E604(&qword_27F8F5E38, type metadata accessor for MFReaderBlockManager);
    sub_257ECE320();
    __break(1u);
  }
}

uint64_t sub_257E5DD48()
{
  v0 = sub_257ECE1D0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_257ECEE10();
  sub_257ECEA30();
  sub_257ECE9F0();
  v5 = sub_257ECEA50();

  KeyPath = swift_getKeyPath();
  v7 = sub_257ECE930();
  sub_257ECDF40();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  LOBYTE(v26[0]) = 0;
  v16 = sub_257ECED90();
  if (qword_281544A78 != -1)
  {
    swift_once();
  }

  v17 = qword_281548308;
  v18 = sub_257ECED30();
  v19 = sub_257ECE930();
  *&v21 = v4;
  *(&v21 + 1) = KeyPath;
  *&v22 = v5;
  BYTE8(v22) = v7;
  *&v23 = v9;
  *(&v23 + 1) = v11;
  *&v24 = v13;
  *(&v24 + 1) = v15;
  v25[0] = 0;
  *&v25[8] = v16;
  *&v25[16] = v18;
  v25[24] = v19;
  *&v25[25] = 256;
  (*(v1 + 104))(v3, *MEMORY[0x277CDFA00], v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7B78);
  sub_257D052B8();
  sub_257ECEBA0();
  (*(v1 + 8))(v3, v0);
  v26[2] = v23;
  v26[3] = v24;
  v27[0] = *v25;
  *(v27 + 11) = *&v25[11];
  v26[0] = v21;
  v26[1] = v22;
  return sub_257E5E59C(v26);
}

__n128 sub_257E5DFDC@<Q0>(__n128 *a1@<X8>)
{
  v2 = sub_257ECE5B0();
  sub_257E5E048(&v7);
  v3 = v7;
  v4 = v9;
  v5 = v10;
  result = v8;
  a1->n128_u64[0] = v2;
  a1->n128_u64[1] = 0;
  a1[1].n128_u8[0] = 1;
  a1[1].n128_u64[1] = v3;
  a1[2] = result;
  a1[3].n128_u8[0] = v4;
  a1[3].n128_u64[1] = v5;
  return result;
}

uint64_t sub_257E5E048@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_257ECEE10();
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass_];
  v5 = sub_257ECF4C0();
  v6 = sub_257ECF4C0();
  v7 = [v4 localizedStringForKey:v5 value:0 table:v6];

  sub_257ECF500();
  sub_257BDAB08();
  v8 = sub_257ECEAF0();
  v10 = v9;
  *a1 = v2;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9;
  LOBYTE(v7) = v11 & 1;
  *(a1 + 24) = v11 & 1;
  *(a1 + 32) = v12;
  sub_257ECC3F0();
  sub_257BD1B90(v8, v10, v7);

  sub_257C0300C(v8, v10, v7);
}

double sub_257E5E1DC@<D0>(uint64_t *a1@<X8>)
{
  v2 = a1;
  v3 = v1[1];
  v8[0] = *v1;
  v8[1] = v3;
  v8[2] = v1[2];
  *a1 = sub_257ECE5B0();
  v2[1] = 0;
  *(v2 + 16) = 1;
  v4 = v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA838) + 44);
  *v4 = sub_257ECE500();
  *(v4 + 1) = 0;
  v4[16] = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA840);
  sub_257E5D580(v8, &v4[*(v5 + 44)]);
  LOBYTE(v2) = sub_257ECE930();
  v6 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA848) + 36)];
  *v6 = v2;
  result = 0.0;
  *(v6 + 8) = 0u;
  *(v6 + 24) = 0u;
  v6[40] = 1;
  return result;
}

unint64_t sub_257E5E2B8()
{
  result = qword_27F8FA878;
  if (!qword_27F8FA878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FA850);
    sub_257BD2D4C(&qword_27F8FA880, &qword_27F8FA888);
    sub_257BD2D4C(&qword_27F8F6188, &qword_27F8F6190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FA878);
  }

  return result;
}

unint64_t sub_257E5E39C()
{
  result = qword_27F8FA890;
  if (!qword_27F8FA890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FA858);
    sub_257E5E2B8();
    sub_257E5E604(&qword_27F8F5CA0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FA890);
  }

  return result;
}

unint64_t sub_257E5E458()
{
  result = qword_27F8FA898;
  if (!qword_27F8FA898)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FA860);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FA858);
    sub_257ECE750();
    sub_257E5E39C();
    sub_257E5E604(&qword_27F8F77F8, MEMORY[0x277CDE0B8]);
    swift_getOpaqueTypeConformance2();
    sub_257BD2D4C(&qword_27F8F7CE8, &qword_27F8F6218);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FA898);
  }

  return result;
}

uint64_t sub_257E5E59C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7B78);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_257E5E604(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_257E5E690(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v1);
  v5 = sub_257E62C80(a1);
  (*(*(*(v2 + qword_27F913350) - 8) + 8))(a1);
  return v5;
}

void *sub_257E5E75C(uint64_t a1, uint64_t a2)
{
  v4 = *((*MEMORY[0x277D85000] & *v2) + qword_27F913350);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  (*(v5 + 16))(&v11 - v6);
  v7 = sub_257ECE600();
  v8 = *(v5 + 8);
  v9 = v7;
  v8(a2, v4);
  if (v7)
  {
  }

  return v7;
}

id sub_257E5E894(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ActivityHostingController();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_257E5E96C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityHostingController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for SymbolImageView()
{
  result = qword_27F8FA940;
  if (!qword_27F8FA940)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_257E5EA74()
{
  sub_257E5EAF8();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_257E5EAF8()
{
  if (!qword_27F8FA950)
  {
    sub_257ECDF90();
    v0 = sub_257ECDFE0();
    if (!v1)
    {
      atomic_store(v0, &qword_27F8FA950);
    }
  }
}

uint64_t sub_257E5EB6C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v40 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F4998);
  v38 = *(v3 - 8);
  v39 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v33 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA998);
  MEMORY[0x28223BE20](v6);
  v8 = &v33 - v7;
  v42 = v2;
  sub_257ECE910();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA9A0);
  sub_257BD2D4C(&qword_27F8FA9A8, &qword_27F8FA9A0);
  sub_257ECDF60();
  v9 = sub_257ECE260();
  v10 = sub_257ECE950();
  v11 = &v8[*(v6 + 36)];
  *v11 = v9;
  v11[8] = v10;
  v41 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA9B0);
  sub_257E62F24();
  sub_257BD2D4C(&qword_27F8FA9D0, &qword_27F8FA9B0);
  v37 = v5;
  sub_257ECECE0();
  sub_257BE4084(v8, &qword_27F8FA998);
  sub_257ECF900();
  sub_257E62FDC(v2, &v44);
  v12 = sub_257ECF8F0();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  *(v13 + 16) = v12;
  *(v13 + 24) = v14;
  v15 = *(v2 + 48);
  *(v13 + 64) = *(v2 + 32);
  *(v13 + 80) = v15;
  *(v13 + 96) = *(v2 + 64);
  v16 = *(v2 + 16);
  *(v13 + 32) = *v2;
  *(v13 + 48) = v16;
  v17 = sub_257ECF930();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
  v21 = &v33 - v20;
  sub_257ECF910();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v35 = sub_257ECE1A0();
    v36 = &v33;
    v34 = *(v35 - 8);
    MEMORY[0x28223BE20](v35);
    v23 = &v33 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    v44 = 0;
    v45 = 0xE000000000000000;
    sub_257ED02D0();

    v44 = 0xD00000000000003CLL;
    v45 = 0x8000000257F086E0;
    v43 = 120;
    v24 = sub_257ED0600();
    MEMORY[0x259C72150](v24);

    MEMORY[0x28223BE20](v25);
    (*(v18 + 16))(&v33 - v20, v21, v17);
    sub_257ECE190();
    (*(v18 + 8))(v21, v17);
    v26 = v40;
    (*(v38 + 32))(v40, v37, v39);
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F49A0);
    return (*(v34 + 32))(v26 + *(v27 + 36), v23, v35);
  }

  else
  {
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F49A8);
    v30 = v40;
    v31 = (v40 + *(v29 + 36));
    v32 = sub_257ECE100();
    (*(v18 + 32))(&v31[*(v32 + 20)], &v33 - v20, v17);
    *v31 = &unk_257EEDDA8;
    *(v31 + 1) = v13;
    return (*(v38 + 32))(v30, v37, v39);
  }
}

uint64_t sub_257E5F134@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_257ECE5B0();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAAB8);
  return sub_257E5F18C(a1, a2 + *(v4 + 44));
}

uint64_t sub_257E5F18C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAAC0);
  v4 = v3 - 8;
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v47 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAAC8);
  v11 = v10 - 8;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v47 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAAD0);
  v18 = v17 - 8;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = (&v47 - v22);
  *v23 = sub_257ECF060();
  v23[1] = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAAD8);
  sub_257E61888(a1, v23 + *(v25 + 44));
  v26 = sub_257ECE930();
  v27 = v23 + *(v18 + 44);
  *v27 = v26;
  *(v27 + 8) = 0u;
  *(v27 + 24) = 0u;
  v27[40] = 1;
  sub_257E5F584(v16);
  v28 = sub_257ECE920();
  v29 = &v16[*(v11 + 44)];
  v48 = v16;
  *v29 = v28;
  *(v29 + 8) = 0u;
  *(v29 + 24) = 0u;
  v29[40] = 1;
  sub_257E5FCD0(v9);
  LOBYTE(a1) = sub_257ECE920();
  sub_257ECDF40();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v38 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAAE0) + 36)];
  *v38 = a1;
  *(v38 + 1) = v31;
  *(v38 + 2) = v33;
  *(v38 + 3) = v35;
  *(v38 + 4) = v37;
  v38[40] = 0;
  LOBYTE(a1) = sub_257ECE950();
  sub_257ECDF40();
  v39 = &v9[*(v4 + 44)];
  *v39 = a1;
  *(v39 + 1) = v40;
  *(v39 + 2) = v41;
  *(v39 + 3) = v42;
  *(v39 + 4) = v43;
  v39[40] = 0;
  v49 = v21;
  sub_257BE401C(v23, v21, &qword_27F8FAAD0);
  sub_257BE401C(v16, v14, &qword_27F8FAAC8);
  sub_257BE401C(v9, v7, &qword_27F8FAAC0);
  v44 = v50;
  sub_257BE401C(v21, v50, &qword_27F8FAAD0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAAE8);
  sub_257BE401C(v14, v44 + *(v45 + 48), &qword_27F8FAAC8);
  sub_257BE401C(v7, v44 + *(v45 + 64), &qword_27F8FAAC0);
  sub_257BE4084(v9, &qword_27F8FAAC0);
  sub_257BE4084(v48, &qword_27F8FAAC8);
  sub_257BE4084(v23, &qword_27F8FAAD0);
  sub_257BE4084(v7, &qword_27F8FAAC0);
  sub_257BE4084(v14, &qword_27F8FAAC8);
  return sub_257BE4084(v49, &qword_27F8FAAD0);
}

uint64_t sub_257E5F584@<X0>(uint64_t a1@<X8>)
{
  v87 = a1;
  v2 = sub_257ECE5E0();
  v3 = *(v2 - 8);
  v85 = v2;
  v86 = v3;
  MEMORY[0x28223BE20](v2);
  v84 = &v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAB48);
  MEMORY[0x28223BE20](v82);
  v6 = &v80 - v5;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAB50);
  MEMORY[0x28223BE20](v83);
  v8 = &v80 - v7;
  v90 = *(v1 + 40);
  v91 = *(v1 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA120);
  sub_257ECEE80();
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = [objc_opt_self() bundleForClass_];
  v11 = sub_257ECF4C0();
  v12 = sub_257ECF4C0();
  v13 = [v10 localizedStringForKey:v11 value:0 table:v12];

  v14 = sub_257ECF500();
  v16 = v15;

  v88 = v14;
  v89 = v16;
  sub_257BDAB08();
  sub_257ECEAF0();
  sub_257ECF0B0();
  v81 = objc_opt_self();
  v17 = [v81 systemYellowColor];
  v18 = sub_257ECED30();
  KeyPath = swift_getKeyPath();
  v20 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAB58) + 36)];
  *v20 = KeyPath;
  v20[1] = v18;
  v21 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAB60) + 36)];
  v22 = sub_257ECE2D0();
  v23 = *(v22 + 20);
  v24 = *MEMORY[0x277CE0118];
  v25 = sub_257ECE570();
  v26 = *(*(v25 - 8) + 104);
  v26(&v21->i8[v23], v24, v25);
  *v21 = vdupq_n_s64(0x4044000000000000uLL);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAB68);
  *(v21->i16 + *(v27 + 36)) = 256;
  sub_257ECEA40();
  sub_257ECE9E0();
  v28 = sub_257ECEA50();

  v29 = swift_getKeyPath();
  v30 = v82;
  v31 = &v6[*(v82 + 36)];
  *v31 = v29;
  v31[1] = v28;
  v32 = sub_257E63E54();
  MEMORY[0x259C71790](1, v30, v32);
  sub_257BE4084(v6, &qword_27F8FAB48);
  v33 = swift_getKeyPath();
  v34 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FABA0) + 36)];
  *v34 = v33;
  v34[8] = 1;
  v88 = sub_257ECED90();
  sub_257E63B50();
  v35 = sub_257ECEDF0();
  v36 = swift_getKeyPath();
  v37 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FABA8) + 36)];
  *v37 = v36;
  v37[1] = v35;
  LOBYTE(v35) = sub_257ECE920();
  sub_257ECDF40();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v46 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FABB0) + 36)];
  *v46 = v35;
  *(v46 + 1) = v39;
  *(v46 + 2) = v41;
  *(v46 + 3) = v43;
  *(v46 + 4) = v45;
  v46[40] = 0;
  LOBYTE(v35) = sub_257ECE990();
  sub_257ECDF40();
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v55 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FABB8) + 36)];
  *v55 = v35;
  *(v55 + 1) = v48;
  *(v55 + 2) = v50;
  *(v55 + 3) = v52;
  *(v55 + 4) = v54;
  v55[40] = 0;
  v56 = [v81 tertiaryLabelColor];
  sub_257ECED30();
  v57 = sub_257ECEDA0();

  LOBYTE(v35) = sub_257ECE930();
  v58 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FABC0) + 36)];
  *v58 = v57;
  v58[8] = v35;
  v59 = &v8[*(v83 + 36)];
  v26(&v59[*(v22 + 20)], v24, v25);
  __asm { FMOV            V0.2D, #10.0 }

  *v59 = _Q0;
  *&v59[*(v27 + 36)] = 256;
  v65 = v84;
  sub_257ECE5D0();
  sub_257E640A8();
  sub_257E644A4(&qword_27F8FABF8, MEMORY[0x277CDDF20]);
  v66 = v87;
  v67 = v85;
  sub_257ECEB90();
  (*(v86 + 8))(v65, v67);
  sub_257BE4084(v8, &qword_27F8FAB50);
  v68 = sub_257ECED80();
  LOBYTE(v59) = sub_257ECE930();
  v69 = v66 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAC00) + 36);
  *v69 = v68;
  *(v69 + 8) = v59;
  LOBYTE(v68) = sub_257ECE920();
  sub_257ECDF40();
  v71 = v70;
  v73 = v72;
  v75 = v74;
  v77 = v76;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAC08);
  v79 = v66 + *(result + 36);
  *v79 = v68;
  *(v79 + 8) = v71;
  *(v79 + 16) = v73;
  *(v79 + 24) = v75;
  *(v79 + 32) = v77;
  *(v79 + 40) = 0;
  return result;
}

uint64_t sub_257E5FCD0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_257ECE770();
  MEMORY[0x28223BE20](v3);
  v4 = sub_257ECEFD0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v29[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAAF0);
  sub_257ECEFE0();
  *(swift_allocObject() + 16) = xmmword_257ED6D30;
  *v7 = xmmword_257EEDB60;
  (*(v5 + 104))(v7, *MEMORY[0x277CDF100], v4);
  sub_257ECEFF0();
  v30 = v1;
  sub_257ECE5B0();
  v31 = 0;
  sub_257E644A4(&qword_27F8FAAF8, MEMORY[0x277CE0428]);
  sub_257ED0890();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAB00);
  sub_257E63BE0();
  sub_257ECF0A0();
  v8 = sub_257ECE940();
  sub_257ECDF40();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAB30) + 36);
  *v17 = v8;
  *(v17 + 8) = v10;
  *(v17 + 16) = v12;
  *(v17 + 24) = v14;
  *(v17 + 32) = v16;
  *(v17 + 40) = 0;
  v18 = sub_257ECE920();
  sub_257ECDF40();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAB38);
  v28 = a1 + *(result + 36);
  *v28 = v18;
  *(v28 + 8) = v20;
  *(v28 + 16) = v22;
  *(v28 + 24) = v24;
  *(v28 + 32) = v26;
  *(v28 + 40) = 0;
  return result;
}

uint64_t sub_257E60018@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16[1] = a2;
  v16[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA9D8);
  MEMORY[0x28223BE20](v16[0]);
  v4 = v16 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA9E0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v16 - v7;
  v9 = sub_257ECE730();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA9E8);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v16 - v12;
  sub_257ECE710();
  v16[8] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA9F0);
  sub_257E63498();
  sub_257ECE020();
  sub_257ECE720();
  v16[4] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAA40);
  sub_257E637B0();
  sub_257ECE020();
  v14 = *(v16[0] + 48);
  (*(v11 + 16))(v4, v13, v10);
  (*(v6 + 16))(&v4[v14], v8, v5);
  sub_257ECE5F0();
  (*(v6 + 8))(v8, v5);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_257E6032C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAA38);
  MEMORY[0x28223BE20](v3);
  v5 = &v41 - v4;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAAB0);
  MEMORY[0x28223BE20](v42);
  v7 = &v41 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAA18);
  MEMORY[0x28223BE20](v8);
  v10 = &v41 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAA08);
  MEMORY[0x28223BE20](v11);
  v13 = &v41 - v12;
  if (sub_257ECF030())
  {
    v14 = swift_allocObject();
    v15 = *(a1 + 48);
    *(v14 + 48) = *(a1 + 32);
    *(v14 + 64) = v15;
    *(v14 + 80) = *(a1 + 64);
    v16 = *(a1 + 16);
    *(v14 + 16) = *a1;
    *(v14 + 32) = v16;
    sub_257E62FDC(a1, v44);
    sub_257ECEEA0();
    v17 = [objc_opt_self() systemYellowColor];
    *&v10[*(v8 + 36)] = sub_257ECED30();
    type metadata accessor for MAGUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v19 = [objc_opt_self() bundleForClass_];
    v20 = sub_257ECF4C0();
    v21 = sub_257ECF4C0();
    v22 = [v19 localizedStringForKey:v20 value:0 table:v21];

    v23 = sub_257ECF500();
    v25 = v24;

    v44[0] = v23;
    v44[1] = v25;
    sub_257E635E0();
    sub_257BDAB08();
    sub_257ECEBF0();

    sub_257BE4084(v10, &qword_27F8FAA18);
    v26 = &qword_27F8FAA08;
    sub_257BE401C(v13, v7, &qword_27F8FAA08);
    swift_storeEnumTagMultiPayload();
    sub_257E63524();
    sub_257E636C4();
    sub_257ECE6F0();
    v27 = v13;
  }

  else
  {
    type metadata accessor for MAGUtilities();
    v28 = swift_getObjCClassFromMetadata();
    v29 = [objc_opt_self() bundleForClass_];
    v30 = sub_257ECF4C0();
    v31 = sub_257ECF4C0();
    v32 = [v29 localizedStringForKey:v30 value:0 table:v31];

    v33 = sub_257ECF500();
    v35 = v34;

    v44[9] = v33;
    v44[10] = v35;
    v36 = swift_allocObject();
    v37 = *(a1 + 48);
    *(v36 + 48) = *(a1 + 32);
    *(v36 + 64) = v37;
    *(v36 + 80) = *(a1 + 64);
    v38 = *(a1 + 16);
    *(v36 + 16) = *a1;
    *(v36 + 32) = v38;
    sub_257E62FDC(a1, v44);
    sub_257BDAB08();
    sub_257ECEED0();
    v39 = [objc_opt_self() systemYellowColor];
    *&v5[*(v3 + 36)] = sub_257ECED30();
    v26 = &qword_27F8FAA38;
    sub_257BE401C(v5, v7, &qword_27F8FAA38);
    swift_storeEnumTagMultiPayload();
    sub_257E63524();
    sub_257E636C4();
    sub_257ECE6F0();
    v27 = v5;
  }

  return sub_257BE4084(v27, v26);
}

uint64_t sub_257E608C8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_257ECEE10();
  *a1 = result;
  return result;
}

uint64_t sub_257E60900@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8C98);
  v66 = *(v3 - 8);
  v67 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v64 - v4;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAA38);
  MEMORY[0x28223BE20](v65);
  v7 = &v64 - v6;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAA98);
  v8 = MEMORY[0x28223BE20](v71);
  v10 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v68 = &v64 - v11;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAAA0);
  MEMORY[0x28223BE20](v70);
  v13 = &v64 - v12;
  v14 = sub_257ECDF30();
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAA88);
  v64 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v64 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAA58);
  MEMORY[0x28223BE20](v20);
  v22 = &v64 - v21;
  if (sub_257ECF030())
  {
    sub_257ECDF20();
    v23 = swift_allocObject();
    v24 = *(a1 + 48);
    *(v23 + 48) = *(a1 + 32);
    *(v23 + 64) = v24;
    *(v23 + 80) = *(a1 + 64);
    v25 = *(a1 + 16);
    *(v23 + 16) = *a1;
    *(v23 + 32) = v25;
    sub_257E62FDC(a1, v72);
    MEMORY[0x259C719D0](v16, sub_257E644F0, v23);
    type metadata accessor for MAGUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v27 = [objc_opt_self() bundleForClass_];
    v28 = sub_257ECF4C0();
    v29 = sub_257ECF4C0();
    v30 = [v27 localizedStringForKey:v28 value:0 table:v29];

    v31 = sub_257ECF500();
    v33 = v32;

    v72[0] = v31;
    v72[1] = v33;
    sub_257BD2D4C(&qword_27F8FAA80, &qword_27F8FAA88);
    sub_257BDAB08();
    sub_257ECEBF0();

    (*(v64 + 8))(v19, v17);
    v34 = [objc_opt_self() systemYellowColor];
    v35 = sub_257ECED30();
    KeyPath = swift_getKeyPath();
    v72[0] = v35;
    v37 = sub_257ECE090();
    v38 = &v22[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAA68) + 36)];
    *v38 = KeyPath;
    v38[1] = v37;
    LOBYTE(v37) = sub_257E614B8();
    v39 = swift_getKeyPath();
    v40 = swift_allocObject();
    *(v40 + 16) = (v37 & 1) == 0;
    v41 = &v22[*(v20 + 36)];
    *v41 = v39;
    v41[1] = sub_257C13448;
    v41[2] = v40;
    sub_257BE401C(v22, v13, &qword_27F8FAA58);
    swift_storeEnumTagMultiPayload();
    sub_257E6383C();
    sub_257E63A94();
    sub_257ECE6F0();
    v42 = v22;
    v43 = &qword_27F8FAA58;
  }

  else
  {
    v64 = v20;
    type metadata accessor for MAGUtilities();
    v44 = swift_getObjCClassFromMetadata();
    v45 = [objc_opt_self() bundleForClass_];
    v46 = sub_257ECF4C0();
    v47 = sub_257ECF4C0();
    v48 = [v45 localizedStringForKey:v46 value:0 table:v47];

    v49 = sub_257ECF500();
    v51 = v50;

    v72[9] = v49;
    v72[10] = v51;
    v52 = swift_allocObject();
    v53 = *(a1 + 48);
    *(v52 + 48) = *(a1 + 32);
    *(v52 + 64) = v53;
    *(v52 + 80) = *(a1 + 64);
    v54 = *(a1 + 16);
    *(v52 + 16) = *a1;
    *(v52 + 32) = v54;
    sub_257E62FDC(a1, v72);
    sub_257BDAB08();
    sub_257ECEED0();
    if (sub_257E614B8())
    {
      v55 = [objc_opt_self() systemYellowColor];
      v56 = sub_257ECED30();
    }

    else
    {
      v72[0] = sub_257ECED60();
      sub_257E63B50();
      v56 = sub_257ECEDF0();
    }

    v57 = v56;
    v58 = v71;
    (*(v66 + 32))(v7, v5, v67);
    *&v7[*(v65 + 36)] = v57;
    LOBYTE(v57) = sub_257E614B8();
    v59 = swift_getKeyPath();
    v60 = swift_allocObject();
    *(v60 + 16) = (v57 & 1) == 0;
    sub_257C0DD14(v7, v10, &qword_27F8FAA38);
    v61 = &v10[*(v58 + 36)];
    *v61 = v59;
    v61[1] = sub_257C133DC;
    v61[2] = v60;
    v62 = v68;
    sub_257C0DD14(v10, v68, &qword_27F8FAA98);
    sub_257BE401C(v62, v13, &qword_27F8FAA98);
    swift_storeEnumTagMultiPayload();
    sub_257E6383C();
    sub_257E63A94();
    sub_257ECE6F0();
    v42 = v62;
    v43 = &qword_27F8FAA98;
  }

  return sub_257BE4084(v42, v43);
}

uint64_t sub_257E611C4()
{
  v1 = sub_257ECF120();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v5 = qword_281548348;
  v15 = *(v0 + 40);
  v16 = *(v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA120);
  sub_257ECEE60();
  v6 = v13;
  v7 = v14;
  v15 = *(v0 + 16);
  v16 = *(v0 + 32);
  sub_257ECEE60();
  sub_257D64370(v6, v7, v13, v14);

  v15 = *(v0 + 40);
  v16 = *(v0 + 56);
  sub_257ECEE60();
  sub_257D53434(v13, v14);

  v15 = *(v0 + 40);
  v16 = *(v0 + 56);
  sub_257ECEE60();
  v8 = v13;
  v9 = v14;
  swift_beginAccess();
  v13 = v8;
  v14 = v9;
  if (qword_2815447E0 != -1)
  {
    swift_once();
  }

  v10 = sub_257ECF110();
  MEMORY[0x28223BE20](v10);
  *&v12[-16] = &v13;
  *&v12[-8] = v5 + 120;
  sub_257ECFD40();
  (*(v2 + 8))(v4, v1);

  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v15) = 1;
  sub_257ECC3F0();
  return sub_257ECDD70();
}

uint64_t sub_257E614B8()
{
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_2815447E0;

  if (v0 != -1)
  {
    v1 = swift_once();
  }

  MEMORY[0x28223BE20](v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D90);
  sub_257ECFD50();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA120);
  sub_257ECEE60();
  if (*(v7 + 16))
  {
    sub_257C03F6C(v7, v8);
    v3 = v2;

    if (v3)
    {
      v4 = 0;
      return v4 & 1;
    }
  }

  else
  {
  }

  sub_257ECEE60();
  if (v7 || v8 != 0xE000000000000000)
  {
    v5 = sub_257ED0640();

    v4 = v5 ^ 1;
  }

  else
  {

    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_257E61700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 56) = a3;
  sub_257ECF900();
  *(v3 + 64) = sub_257ECF8F0();
  v5 = sub_257ECF8B0();

  return MEMORY[0x2822009F8](sub_257E61798, v5, v4);
}

uint64_t sub_257E61798()
{

  v1 = sub_257E630B8();
  if (v1[2])
  {
    v3 = v1[4];
    v2 = v1[5];
  }

  else
  {

    v2 = 0x8000000257EFA680;
    v3 = 0xD000000000000017;
  }

  v4 = *(v0 + 56);
  v5 = *(v4 + 32);
  *(v0 + 16) = *(v4 + 16);
  *(v0 + 32) = v5;
  *(v0 + 40) = v3;
  *(v0 + 48) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA120);
  sub_257ECEE70();
  v6 = *(v0 + 8);

  return v6();
}

__n128 sub_257E61888@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_257ECEE20();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() systemYellowColor];
  v18 = sub_257ECED30();
  sub_257ECF060();
  sub_257ECE080();
  *&v21[3] = *&v21[27];
  *&v21[11] = *&v21[35];
  *&v21[19] = *&v21[43];
  v35 = *(a1 + 16);
  *&v36 = *(a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA120);
  sub_257ECEE60();
  sub_257ECEE30();
  (*(v5 + 104))(v7, *MEMORY[0x277CE0FE0], v4);
  v9 = sub_257ECEE40();

  (*(v5 + 8))(v7, v4);
  sub_257ECF060();
  sub_257ECE080();
  LOBYTE(v35) = 1;
  *&v20[6] = *&v21[51];
  *&v20[22] = *&v21[59];
  *&v20[38] = *&v21[67];
  v10 = sub_257ECED70();
  KeyPath = swift_getKeyPath();
  v12 = sub_257ECF060();
  v22[0] = v9;
  v22[1] = 0;
  LOWORD(v23[0]) = 1;
  *(&v23[1] + 2) = *&v20[16];
  *(v23 + 2) = *v20;
  *&v23[3] = *&v20[46];
  *(&v23[3] + 1) = KeyPath;
  *(&v23[2] + 2) = *&v20[32];
  *&v24 = v10;
  *(&v24 + 1) = v12;
  v25 = v13;
  v26[0] = v9;
  v41 = v13;
  v39 = v23[3];
  v40 = v24;
  v37 = v23[1];
  v38 = v23[2];
  v35 = v9;
  v36 = v23[0];
  v26[1] = 0;
  v27 = 1;
  *&v30[14] = *&v20[46];
  v31 = KeyPath;
  *v30 = *&v20[32];
  v29 = *&v20[16];
  v28 = *v20;
  v32 = v10;
  v33 = v12;
  v34 = v13;
  sub_257BE401C(v22, &v19, &qword_27F8FAC10);
  sub_257BE4084(v26, &qword_27F8FAC10);
  v14 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAC18) + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6218);
  sub_257ECE310();
  *v14 = 0;
  *a2 = v18;
  *(a2 + 8) = 256;
  *(a2 + 10) = *v21;
  *(a2 + 26) = *&v21[8];
  *(a2 + 42) = *&v21[16];
  *(a2 + 56) = *&v21[23];
  v15 = v40;
  *(a2 + 128) = v39;
  *(a2 + 144) = v15;
  *(a2 + 160) = v41;
  v16 = v36;
  *(a2 + 64) = v35;
  *(a2 + 80) = v16;
  result = v38;
  *(a2 + 96) = v37;
  *(a2 + 112) = result;
  return result;
}

uint64_t sub_257E61C08(uint64_t a1)
{
  v7 = sub_257E630B8();
  swift_getKeyPath();
  v2 = swift_allocObject();
  v3 = *(a1 + 48);
  *(v2 + 48) = *(a1 + 32);
  *(v2 + 64) = v3;
  *(v2 + 80) = *(a1 + 64);
  v4 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v4;
  sub_257E62FDC(a1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9D90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAB18);
  sub_257BD2D4C(&qword_27F8F8D60, &qword_27F8F9D90);
  sub_257E63C64();
  return sub_257ECEF80();
}

uint64_t sub_257E61D48@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a3;
  v5 = sub_257ECE750();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAB20);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v22 - v11;
  v13 = *a1;
  v14 = a1[1];
  v15 = swift_allocObject();
  v16 = *(a2 + 48);
  *(v15 + 48) = *(a2 + 32);
  *(v15 + 64) = v16;
  v17 = *(a2 + 64);
  v18 = *(a2 + 16);
  *(v15 + 16) = *a2;
  *(v15 + 32) = v18;
  *(v15 + 80) = v17;
  *(v15 + 88) = v13;
  *(v15 + 96) = v14;
  v24 = v13;
  v25 = v14;
  v26 = a2;
  sub_257E62FDC(a2, v27);
  type metadata accessor for SymbolImageView();
  sub_257E644A4(&qword_27F8FAB40, type metadata accessor for SymbolImageView);

  sub_257ECEEA0();
  sub_257ECE740();
  sub_257BD2D4C(&qword_27F8FAB28, &qword_27F8FAB20);
  sub_257E644A4(&qword_27F8F77F8, MEMORY[0x277CDE0B8]);
  v19 = v23;
  sub_257ECEB60();
  (*(v6 + 8))(v8, v5);
  (*(v10 + 8))(v12, v9);
  v20 = (v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAB18) + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6218);
  result = sub_257ECE310();
  *v20 = 0;
  return result;
}

void sub_257E62068(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 16);
  v7 = *(a1 + 32);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA120);
  sub_257ECEE70();
  v3 = [objc_opt_self() sharedApplication];
  [v3 sendAction:sel_resignFirstResponder to:0 from:0 forEvent:0];
}

uint64_t sub_257E62114@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA120);
  sub_257ECEE60();
  if (v10 == a1 && v11 == a2)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_257ED0640();
  }

  *a3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5B90);
  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for SymbolImageView();
  v9 = (a3 + *(result + 20));
  *v9 = a1;
  v9[1] = a2;
  *(a3 + *(result + 24)) = v7 & 1;
  return result;
}

uint64_t sub_257E6225C()
{
  v1 = sub_257ECE5A0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA958);
  MEMORY[0x28223BE20](v5);
  v7 = (v11 - v6);
  *v7 = sub_257ECF060();
  v7[1] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA960);
  sub_257E624E4(v0, (v7 + *(v9 + 44)));
  if (*(v0 + *(type metadata accessor for SymbolImageView() + 24)) == 1)
  {
    sub_257ECE580();
  }

  else
  {
    v11[1] = MEMORY[0x277D84F90];
    sub_257E644A4(&qword_27F8F5BD0, MEMORY[0x277CE01F0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5BD8);
    sub_257BD2D4C(&qword_27F8F5BE0, &qword_27F8F5BD8);
    sub_257ED0180();
  }

  sub_257BD2D4C(&qword_27F8FA968, &qword_27F8FA958);
  sub_257ECEC80();
  (*(v2 + 8))(v4, v1);
  return sub_257BE4084(v7, &qword_27F8FA958);
}

uint64_t sub_257E624E4@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA970);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v50 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7B50);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v53 = v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v52 = v50 - v10;
  v11 = *(a1 + *(type metadata accessor for SymbolImageView() + 24));
  if (v11 == 1)
  {
    v12 = [objc_opt_self() systemYellowColor];
    v13 = sub_257ECED30();
  }

  else
  {
    v13 = sub_257ECED80();
  }

  v59 = v13;
  sub_257ECE010();
  v14 = v95;
  v55 = v97;
  v56 = v96;
  v15 = v98;
  v54 = v99;
  v16 = v100;
  v17 = sub_257ECF060();
  v57 = v18;
  v58 = v17;
  sub_257ECF060();
  sub_257ECE080();
  if (v11)
  {
    if (qword_27F8F47E0 != -1)
    {
      swift_once();
    }

    v19 = &qword_27F913340;
  }

  else
  {
    if (qword_27F8F47E8 != -1)
    {
      swift_once();
    }

    v19 = &qword_27F913348;
  }

  v51 = *v19;
  sub_257ECC3F0();
  sub_257ECF060();
  sub_257ECE080();
  *&v89[6] = v101;
  *&v89[22] = v102;
  *&v89[38] = v103;

  v20 = COERCE_DOUBLE(sub_257ECEE30());
  sub_257ECE9F0();
  v21 = sub_257ECE9D0();
  (*(*(v21 - 8) + 56))(v6, 1, 1, v21);
  v22 = sub_257ECEA20();
  sub_257BE4084(v6, &qword_27F8FA970);
  KeyPath = swift_getKeyPath();
  if (v11)
  {
    v24 = [objc_opt_self() blackColor];
    v25 = sub_257ECED30();
  }

  else
  {
    v25 = sub_257ECEDC0();
  }

  v26 = v25;
  v27 = swift_getKeyPath();
  *&v50[1] = v20;
  v74 = v20;
  v75 = *&KeyPath;
  v76 = v22;
  v77 = v27;
  v78 = v26;
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v50[0] = KeyPath;
  v29 = [objc_opt_self() bundleForClass_];
  v30 = sub_257ECF4C0();
  v31 = sub_257ECF4C0();
  v32 = [v29 localizedStringForKey:v30 value:0 table:v31];

  v33 = sub_257ECF500();
  v35 = v34;

  *&v60 = v33;
  *(&v60 + 1) = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7C00);
  sub_257D05778();
  sub_257BDAB08();
  v36 = v52;
  sub_257ECEBF0();

  v37 = v53;
  sub_257BE401C(v36, v53, &qword_27F8F7B50);
  *&v60 = v14 * 0.5;
  *(&v60 + 1) = v14;
  *&v61 = __PAIR64__(v55, v56);
  *(&v61 + 1) = v15;
  *&v62 = v54;
  *(&v62 + 1) = v16;
  *&v63 = v59;
  WORD4(v63) = 256;
  HIWORD(v63) = v94;
  *(&v63 + 10) = v93;
  *&v64 = v58;
  *(&v64 + 1) = v57;
  v66 = v91;
  v67 = v92;
  v65 = v90;
  v38 = v60;
  v39 = v61;
  v40 = v63;
  a2[2] = v62;
  a2[3] = v40;
  *a2 = v38;
  a2[1] = v39;
  v41 = v64;
  v42 = v65;
  v43 = v67;
  a2[6] = v66;
  a2[7] = v43;
  a2[4] = v41;
  a2[5] = v42;
  v44 = v51;
  *&v68[0] = v51;
  WORD4(v68[0]) = 256;
  *(v68 + 10) = *v89;
  *(&v68[3] + 1) = *&v89[46];
  *(&v68[2] + 10) = *&v89[32];
  *(&v68[1] + 10) = *&v89[16];
  v45 = v68[0];
  v46 = v68[1];
  v47 = v68[3];
  a2[10] = v68[2];
  a2[11] = v47;
  a2[8] = v45;
  a2[9] = v46;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA978);
  sub_257BE401C(v37, a2 + *(v48 + 64), &qword_27F8F7B50);
  sub_257BE401C(&v60, &v74, &qword_27F8FA980);
  sub_257BE401C(v68, &v74, &qword_27F8F6830);
  sub_257BE4084(v36, &qword_27F8F7B50);
  sub_257BE4084(v37, &qword_27F8F7B50);
  v69 = v44;
  v70 = 256;
  v71 = *v89;
  v72 = *&v89[16];
  *v73 = *&v89[32];
  *&v73[14] = *&v89[46];
  sub_257BE4084(&v69, &qword_27F8F6830);
  v74 = v14 * 0.5;
  v75 = v14;
  v76 = __PAIR64__(v55, v56);
  v77 = v15;
  v78 = v54;
  v79 = v16;
  v80 = v59;
  v81 = 256;
  v82 = v93;
  v83 = v94;
  v84 = v58;
  v85 = v57;
  v87 = v91;
  v88 = v92;
  v86 = v90;
  return sub_257BE4084(&v74, &qword_27F8FA980);
}

uint64_t sub_257E62BE0()
{
  v0 = [objc_opt_self() systemYellowColor];
  result = sub_257ECED30();
  qword_27F913340 = result;
  return result;
}

uint64_t sub_257E62C20()
{
  v0 = [objc_opt_self() quaternaryLabelColor];
  sub_257ECED30();
  v1 = sub_257ECEDA0();

  qword_27F913348 = v1;
  return result;
}

uint64_t sub_257E62C80(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  (*(v2 + 16))(&v4 - v1);
  return sub_257ECE620();
}

uint64_t sub_257E62D68(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_257E62DB0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_257E62E10()
{
  result = qword_27F8FA988;
  if (!qword_27F8FA988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FA990);
    sub_257BD2D4C(&qword_27F8FA968, &qword_27F8FA958);
    sub_257E644A4(&qword_27F8F5CA0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FA988);
  }

  return result;
}

unint64_t sub_257E62F24()
{
  result = qword_27F8FA9B8;
  if (!qword_27F8FA9B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FA998);
    sub_257BD2D4C(&qword_27F8FA9C0, &qword_27F8FA9C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FA9B8);
  }

  return result;
}

uint64_t sub_257E63014()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_257BE3DE0;

  return sub_257E61700(v2, v3, v0 + 32);
}

uint64_t sub_257E630B8()
{
  if (qword_281544FE0 != -1)
  {
    goto LABEL_32;
  }

  while (1)
  {
    v0 = qword_281548348;
    swift_beginAccess();
    v1 = v0[12];
    v2 = v0[13];
    v34 = v0[11];
    v35 = v1;
    v36 = v2;
    v3 = qword_2815447E0;

    if (v3 != -1)
    {
      v4 = swift_once();
    }

    MEMORY[0x28223BE20](v4);
    v32 = &v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D90);
    sub_257ECFD50();

    v5 = v37;
    v6 = *(v37 + 16);
    if (v6)
    {
      break;
    }

    v7 = MEMORY[0x277D84F90];
    v10 = *(MEMORY[0x277D84F90] + 16);
    if (v10)
    {
LABEL_7:
      v11 = v7 + 40;
      v12 = MEMORY[0x277D84F90];
      do
      {
        v14 = *(v11 - 1);
        v13 = *v11;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_257BFCB3C(0, *(v12 + 2) + 1, 1, v12);
        }

        v16 = *(v12 + 2);
        v15 = *(v12 + 3);
        if (v16 >= v15 >> 1)
        {
          v12 = sub_257BFCB3C((v15 > 1), v16 + 1, 1, v12);
        }

        *(v12 + 2) = v16 + 1;
        v17 = &v12[16 * v16];
        *(v17 + 4) = v14;
        *(v17 + 5) = v13;
        v11 += 37;
        --v10;
      }

      while (v10);
      goto LABEL_16;
    }

LABEL_15:
    v12 = MEMORY[0x277D84F90];
LABEL_16:

    v19 = 0;
    v20 = MEMORY[0x277D84F90];
LABEL_17:
    v33 = v20;
    if (v19 <= 0x2B)
    {
      v21 = 43;
    }

    else
    {
      v21 = v19;
    }

    v22 = -v21;
    v23 = &unk_286905000 + 16 * v19++;
    v24 = (v23 + 40);
    while (v22 + v19 != 1)
    {
      v26 = *(v24 - 1);
      v25 = *v24;
      v34 = v26;
      v35 = v25;
      MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
      v32 = &v34;

      v27 = sub_257DF8ED4(sub_257C119FC, &v31, v12);

      if ((v27 & 1) == 0)
      {
        v20 = v33;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v37 = v20;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = sub_257BF26A4(0, *(v20 + 16) + 1, 1);
          v20 = v37;
        }

        v29 = *(v20 + 16);
        v28 = *(v20 + 24);
        if (v29 >= v28 >> 1)
        {
          isUniquelyReferenced_nonNull_native = sub_257BF26A4((v28 > 1), v29 + 1, 1);
          v20 = v37;
        }

        *(v20 + 16) = v29 + 1;
        v30 = v20 + 16 * v29;
        *(v30 + 32) = v26;
        *(v30 + 40) = v25;
        if (v19 == 43)
        {
          goto LABEL_30;
        }

        goto LABEL_17;
      }

      ++v19;
      v24 += 2;
      if (v19 == 44)
      {
        v20 = v33;
LABEL_30:

        return v20;
      }
    }

    __break(1u);
LABEL_32:
    swift_once();
  }

  v7 = sub_257C63F40(*(v37 + 16), 0);
  v8 = sub_257C67BA0(&v34, v7 + 32, v6, v5);
  result = sub_257C02520();
  if (v8 == v6)
  {
    v10 = v7[2];
    if (v10)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  __break(1u);
  return result;
}

unint64_t sub_257E63498()
{
  result = qword_27F8FA9F8;
  if (!qword_27F8FA9F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FA9F0);
    sub_257E63524();
    sub_257E636C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FA9F8);
  }

  return result;
}

unint64_t sub_257E63524()
{
  result = qword_27F8FAA00;
  if (!qword_27F8FAA00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FAA08);
    sub_257E635E0();
    sub_257E644A4(&qword_27F8F5CA0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FAA00);
  }

  return result;
}

unint64_t sub_257E635E0()
{
  result = qword_27F8FAA10;
  if (!qword_27F8FAA10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FAA18);
    sub_257BD2D4C(&qword_27F8FAA20, &qword_27F8FAA28);
    sub_257BD2D4C(&qword_27F8F67B0, &qword_27F8F67B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FAA10);
  }

  return result;
}

unint64_t sub_257E636C4()
{
  result = qword_27F8FAA30;
  if (!qword_27F8FAA30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FAA38);
    sub_257BD2D4C(&qword_27F8F8D08, &qword_27F8F8C98);
    sub_257BD2D4C(&qword_27F8F67B0, &qword_27F8F67B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FAA30);
  }

  return result;
}

unint64_t sub_257E637B0()
{
  result = qword_27F8FAA48;
  if (!qword_27F8FAA48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FAA40);
    sub_257E6383C();
    sub_257E63A94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FAA48);
  }

  return result;
}

unint64_t sub_257E6383C()
{
  result = qword_27F8FAA50;
  if (!qword_27F8FAA50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FAA58);
    sub_257E638F4();
    sub_257BD2D4C(&qword_27F8F77D0, &qword_27F8F77D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FAA50);
  }

  return result;
}

unint64_t sub_257E638F4()
{
  result = qword_27F8FAA60;
  if (!qword_27F8FAA60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FAA68);
    sub_257E639AC();
    sub_257BD2D4C(&qword_27F8F85E0, &qword_27F8F85E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FAA60);
  }

  return result;
}

unint64_t sub_257E639AC()
{
  result = qword_27F8FAA70;
  if (!qword_27F8FAA70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FAA78);
    sub_257BD2D4C(&qword_27F8FAA80, &qword_27F8FAA88);
    sub_257E644A4(&qword_27F8F5CA0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FAA70);
  }

  return result;
}

unint64_t sub_257E63A94()
{
  result = qword_27F8FAA90;
  if (!qword_27F8FAA90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FAA98);
    sub_257E636C4();
    sub_257BD2D4C(&qword_27F8F77D0, &qword_27F8F77D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FAA90);
  }

  return result;
}

unint64_t sub_257E63B50()
{
  result = qword_27F8FAAA8;
  if (!qword_27F8FAAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FAAA8);
  }

  return result;
}

unint64_t sub_257E63BE0()
{
  result = qword_27F8FAB08;
  if (!qword_27F8FAB08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FAB00);
    sub_257E63C64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FAB08);
  }

  return result;
}

unint64_t sub_257E63C64()
{
  result = qword_27F8FAB10;
  if (!qword_27F8FAB10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FAB18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FAB20);
    sub_257ECE750();
    sub_257BD2D4C(&qword_27F8FAB28, &qword_27F8FAB20);
    sub_257E644A4(&qword_27F8F77F8, MEMORY[0x277CDE0B8]);
    swift_getOpaqueTypeConformance2();
    sub_257BD2D4C(&qword_27F8F7CE8, &qword_27F8F6218);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FAB10);
  }

  return result;
}

uint64_t objectdestroy_14Tm_0()
{

  return swift_deallocObject();
}

unint64_t sub_257E63E54()
{
  result = qword_27F8FAB70;
  if (!qword_27F8FAB70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FAB48);
    sub_257E63F0C();
    sub_257BD2D4C(&qword_27F8F7BC8, &qword_27F8F7BD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FAB70);
  }

  return result;
}