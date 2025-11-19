uint64_t sub_25464A980(void *a1)
{
  v4 = *v2;
  *(*v2 + 424) = v1;

  if (v1)
  {
    v5 = *(v4 + 360);
    v6 = *(v4 + 368);
    v7 = sub_25464BB78;
  }

  else
  {

    v5 = *(v4 + 360);
    v6 = *(v4 + 368);
    v7 = sub_25464AAA8;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_25464AAA8()
{
  v55 = v0;
  v1 = *(v0 + 384);
  v2 = *(v0 + 376);
  v3 = *(v0 + 328);
  v4 = *(v0 + 296);
  swift_beginAccess();
  v1(v3, v2, v4);

  v5 = sub_25467F830();
  v6 = sub_2546806D0();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 272);
  if (v7)
  {
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    *(v9 + 4) = *(v8 + 104);

    _os_log_impl(&dword_254615000, v5, v6, "Coordinator did hide HoverText UI on main screen (isRunning=%{BOOL}d)", v9, 8u);
    MEMORY[0x259C155A0](v9, -1, -1);
  }

  else
  {
  }

  v10 = *(v0 + 272);
  (*(v0 + 400))(*(v0 + 328), *(v0 + 296));
  v11 = *(v10 + 80);
  *(v10 + 80) = 0;

  if (*(v10 + 16))
  {
    v12 = &selRef_hoverTextShowedBanner;
    v13 = &selRef_setHoverTextShowedBanner_;
    v14 = 0x62617369642E7468;
    v15 = 0xEB0000000064656CLL;
  }

  else
  {
    v12 = &selRef_hoverTextTypingShowedBanner;
    v13 = &selRef_setHoverTextTypingShowedBanner_;
    v14 = 0x617369642E747468;
    v15 = 0xEC00000064656C62;
  }

  sub_25464C028(v12, v14, v15, v13);
  v16 = *(v0 + 272);
  swift_beginAccess();
  v17 = *(v16 + 72);
  *(v0 + 432) = v17;
  if (v17 >> 62)
  {
    v18 = sub_2546809C0();
  }

  else
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v0 + 440) = v18;

  v19 = swift_beginAccess();
  v22 = *(v0 + 432);
  if (v18)
  {
    if ((v22 & 0xC000000000000001) != 0)
    {
      v23 = MEMORY[0x259C147A0](0, *(v0 + 432));
    }

    else
    {
      if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return MEMORY[0x2822009F8](v19, v20, v21);
      }

      v23 = *(v22 + 32);
    }

    *(v0 + 448) = v23;
    *(v0 + 456) = 1;
    v24 = v23;
    *(v0 + 464) = sub_254680610();
    v25 = sub_254680600();
    v21 = v26;
    *(v0 + 472) = v25;
    *(v0 + 480) = v26;
    v19 = sub_25464B000;
    v20 = v25;

    return MEMORY[0x2822009F8](v19, v20, v21);
  }

  v27 = *(v0 + 272);

  v28 = *(v27 + 24);
  AXRuntimeClient.disableAccessibility()();
  if (v29)
  {
    v30 = *(v0 + 384);
    v31 = *(v0 + 376);
    v32 = *(v0 + 312);
    v33 = *(v0 + 296);
    swift_beginAccess();
    v30(v32, v31, v33);
    v34 = v29;
    v35 = sub_25467F830();
    v36 = sub_2546806F0();

    v37 = os_log_type_enabled(v35, v36);
    v38 = *(v0 + 400);
    v39 = *(v0 + 312);
    v40 = *(v0 + 296);
    if (v37)
    {
      v53 = *(v0 + 400);
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v54 = v42;
      *v41 = 136315138;
      swift_getErrorValue();
      v43 = sub_254680AC0();
      v45 = sub_25463CAC4(v43, v44, &v54);

      *(v41 + 4) = v45;
      _os_log_impl(&dword_254615000, v35, v36, "Coordinator could not stop HoverText: %s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v42);
      MEMORY[0x259C155A0](v42, -1, -1);
      MEMORY[0x259C155A0](v41, -1, -1);

      v53(v39, v40);
    }

    else
    {

      v38(v39, v40);
    }
  }

  else
  {
    v46 = *(v0 + 272);
    v47 = (v28 + OBJC_IVAR____TtC11HoverTextUI15AXRuntimeClient_nativeFocusItemDidChange);
    swift_beginAccess();
    v48 = *v47;
    *v47 = 0;
    v47[1] = 0;
    sub_254619940(v48);
    v49 = (v28 + OBJC_IVAR____TtC11HoverTextUI15AXRuntimeClient_didReceiveNotification);
    swift_beginAccess();
    v50 = *v49;
    *v49 = 0;
    v49[1] = 0;
    sub_254619940(v50);
    sub_25467A08C();
    if (*(v46 + 16) == 1)
    {
      sub_25464C1E0();
    }
  }

  *(*(v0 + 272) + 104) = 0;

  v51 = *(v0 + 8);

  return v51();
}

uint64_t sub_25464B000()
{
  v1 = v0[56];
  v2 = v0[35];
  v3 = v0[36];
  v4 = v0[34];
  v5 = sub_254680640();
  v6 = *(v5 - 8);
  (*(v6 + 56))(v3, 1, 1, v5);

  v7 = v1;
  v8 = sub_254680610();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  *(v9 + 16) = v8;
  *(v9 + 24) = v10;
  *(v9 + 32) = 0;
  *(v9 + 40) = v4;
  *(v9 + 48) = v1;
  sub_25462CC8C(v3, v2, &unk_27F60C010);
  LODWORD(v2) = (*(v6 + 48))(v2, 1, v5);

  v11 = v0[35];
  if (v2 == 1)
  {
    sub_254626CC4(v0[35], &unk_27F60C010);
  }

  else
  {
    sub_254680630();
    (*(v6 + 8))(v11, v5);
  }

  v12 = *(v9 + 16);
  swift_unknownObjectRetain();

  if (v12)
  {
    swift_getObjectType();
    v13 = sub_254680600();
    v15 = v14;
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  sub_254626CC4(v0[36], &unk_27F60C010);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60C020);
  if (v15 | v13)
  {
    v0[2] = 0;
    v0[3] = 0;
    v0[4] = v13;
    v0[5] = v15;
  }

  v17 = swift_task_create();
  v0[61] = v17;
  v18 = swift_task_alloc();
  v0[62] = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60B6C0);
  v0[63] = v19;
  *v18 = v0;
  v18[1] = sub_25464B2DC;
  v20 = MEMORY[0x277D84950];

  return MEMORY[0x282200440](v0 + 30, v17, v16, v19, v20);
}

uint64_t sub_25464B2DC()
{
  v1 = *v0;

  v2 = *(v1 + 480);
  v3 = *(v1 + 472);

  return MEMORY[0x2822009F8](sub_25464B3FC, v3, v2);
}

uint64_t sub_25464B3FC()
{

  v1 = *(v0 + 240);
  *(v0 + 512) = v1;
  if (*(v0 + 248))
  {
    v2 = *(v0 + 448);

    *(v0 + 264) = v1;
    swift_willThrowTypedImpl();

    v3 = *(v0 + 360);
    v4 = *(v0 + 368);
    v5 = sub_25464B93C;
  }

  else
  {

    sub_2546187D8(v1);
    v3 = *(v0 + 360);
    v4 = *(v0 + 368);
    v5 = sub_25464B4F0;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_25464B4F0()
{
  v45 = v0;
  (*(v0 + 384))(*(v0 + 320), *(v0 + 376), *(v0 + 296));
  v1 = sub_25467F830();
  v2 = sub_2546806D0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_254615000, v1, v2, "Coordinator did hide HoverText UI on external screen", v3, 2u);
    MEMORY[0x259C155A0](v3, -1, -1);
    v4 = *(v0 + 448);
  }

  else
  {
    v4 = v1;
    v1 = *(v0 + 448);
  }

  v5 = *(v0 + 456);
  v6 = *(v0 + 440);
  v7 = *(v0 + 400);
  v8 = *(v0 + 320);
  v9 = *(v0 + 296);

  v10 = v7(v8, v9);
  if (v5 != v6)
  {
    v31 = *(v0 + 456);
    v32 = *(v0 + 432);
    if ((v32 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x259C147A0](*(v0 + 456));
    }

    else
    {
      if (v31 >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_23;
      }

      v10 = *(v32 + 8 * v31 + 32);
    }

    *(v0 + 448) = v10;
    *(v0 + 456) = v31 + 1;
    if (!__OFADD__(v31, 1))
    {
      v33 = v10;
      *(v0 + 464) = sub_254680610();
      v34 = sub_254680600();
      v11 = v35;
      *(v0 + 472) = v34;
      *(v0 + 480) = v35;
      v10 = sub_25464B000;
      v32 = v34;

      return MEMORY[0x2822009F8](v10, v32, v11);
    }

    __break(1u);
LABEL_23:
    __break(1u);
    return MEMORY[0x2822009F8](v10, v32, v11);
  }

  v12 = *(v0 + 272);

  v13 = *(v12 + 24);
  AXRuntimeClient.disableAccessibility()();
  if (v14)
  {
    v15 = *(v0 + 384);
    v16 = *(v0 + 376);
    v17 = *(v0 + 312);
    v18 = *(v0 + 296);
    swift_beginAccess();
    v15(v17, v16, v18);
    v19 = v14;
    v20 = sub_25467F830();
    v21 = sub_2546806F0();

    v22 = os_log_type_enabled(v20, v21);
    v23 = *(v0 + 400);
    v24 = *(v0 + 312);
    v25 = *(v0 + 296);
    if (v22)
    {
      v43 = *(v0 + 400);
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v44 = v27;
      *v26 = 136315138;
      swift_getErrorValue();
      v28 = sub_254680AC0();
      v30 = sub_25463CAC4(v28, v29, &v44);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_254615000, v20, v21, "Coordinator could not stop HoverText: %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x259C155A0](v27, -1, -1);
      MEMORY[0x259C155A0](v26, -1, -1);

      v43(v24, v25);
    }

    else
    {

      v23(v24, v25);
    }
  }

  else
  {
    v36 = *(v0 + 272);
    v37 = (v13 + OBJC_IVAR____TtC11HoverTextUI15AXRuntimeClient_nativeFocusItemDidChange);
    swift_beginAccess();
    v38 = *v37;
    *v37 = 0;
    v37[1] = 0;
    sub_254619940(v38);
    v39 = (v13 + OBJC_IVAR____TtC11HoverTextUI15AXRuntimeClient_didReceiveNotification);
    swift_beginAccess();
    v40 = *v39;
    *v39 = 0;
    v39[1] = 0;
    sub_254619940(v40);
    sub_25467A08C();
    if (*(v36 + 16) == 1)
    {
      sub_25464C1E0();
    }
  }

  *(*(v0 + 272) + 104) = 0;

  v41 = *(v0 + 8);

  return v41();
}

uint64_t sub_25464B93C()
{
  v24 = v0;
  v1 = v0[56];

  v2 = v0[64];
  v3 = v0[48];
  v4 = v0[47];
  v5 = v0[39];
  v6 = v0[37];
  swift_beginAccess();
  v3(v5, v4, v6);
  v7 = v2;
  v8 = sub_25467F830();
  v9 = sub_2546806F0();

  if (os_log_type_enabled(v8, v9))
  {
    v22 = v0[50];
    v10 = v0[39];
    v11 = v0[37];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v23 = v13;
    *v12 = 136315138;
    swift_getErrorValue();
    v14 = sub_254680AC0();
    v16 = sub_25463CAC4(v14, v15, &v23);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_254615000, v8, v9, "Coordinator could not stop HoverText: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x259C155A0](v13, -1, -1);
    MEMORY[0x259C155A0](v12, -1, -1);

    v22(v10, v11);
  }

  else
  {
    v17 = v0[50];
    v18 = v0[39];
    v19 = v0[37];

    v17(v18, v19);
  }

  *(v0[34] + 104) = 0;

  v20 = v0[1];

  return v20();
}

uint64_t sub_25464BB78()
{
  v23 = v0;

  v1 = v0[53];
  v2 = v0[48];
  v3 = v0[47];
  v4 = v0[39];
  v5 = v0[37];
  swift_beginAccess();
  v2(v4, v3, v5);
  v6 = v1;
  v7 = sub_25467F830();
  v8 = sub_2546806F0();

  if (os_log_type_enabled(v7, v8))
  {
    v21 = v0[50];
    v9 = v0[39];
    v10 = v0[37];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22 = v12;
    *v11 = 136315138;
    swift_getErrorValue();
    v13 = sub_254680AC0();
    v15 = sub_25463CAC4(v13, v14, &v22);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_254615000, v7, v8, "Coordinator could not stop HoverText: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x259C155A0](v12, -1, -1);
    MEMORY[0x259C155A0](v11, -1, -1);

    v21(v9, v10);
  }

  else
  {
    v16 = v0[50];
    v17 = v0[39];
    v18 = v0[37];

    v16(v17, v18);
  }

  *(v0[34] + 104) = 0;

  v19 = v0[1];

  return v19();
}

uint64_t sub_25464BDAC(uint64_t a1, char a2)
{
  *(v3 + 25) = a2;
  *(v3 + 40) = a1;
  *(v3 + 48) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F60C010);
  *(v3 + 56) = swift_task_alloc();
  *(v3 + 64) = sub_254680620();
  *(v3 + 72) = sub_254680610();
  v5 = sub_254680600();
  *(v3 + 80) = v5;
  *(v3 + 88) = v4;

  return MEMORY[0x2822009F8](sub_25464BE84, v5, v4);
}

uint64_t sub_25464BE84()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 25);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  v5 = sub_254680640();
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
  v6 = v4;

  v7 = sub_254680610();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  *(v8 + 16) = v7;
  *(v8 + 24) = v9;
  *(v8 + 32) = v2;
  *(v8 + 40) = v3;
  *(v8 + 48) = v4;
  v10 = sub_25464E1EC(0, 0, v1, &unk_254684100, v8);
  *(v0 + 96) = v10;
  v11 = swift_task_alloc();
  *(v0 + 104) = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60C020);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60B6C0);
  *(v0 + 112) = v13;
  *v11 = v0;
  v11[1] = sub_254648BB0;
  v14 = MEMORY[0x277D84950];

  return MEMORY[0x282200440](v0 + 16, v10, v12, v13, v14);
}

void sub_25464C028(SEL *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v7 = objc_opt_self();
  v8 = [v7 sharedInstance];
  LODWORD(a1) = [v8 *a1];

  if (a1)
  {
    sub_2546547A0();
    v9 = sub_254646494();
    v10 = sub_254680440();
    v11 = HTUILocString(v10);

    if (!v11)
    {
      sub_254680470();
      v11 = sub_254680440();
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v13 = [v9 showAlertWithText:v11 subtitleText:0 iconImage:0 type:0 priority:20 duration:Strong forService:2.0];

      swift_unknownObjectRelease();
      if (v13)
      {
        v14 = sub_254680470();
        v16 = v15;
      }

      else
      {
        v14 = 0;
        v16 = 0;
      }

      *(v4 + 88) = v14;
      *(v4 + 96) = v16;

      v17 = [v7 sharedInstance];
      [v17 *a4];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_25464C1E0()
{
  v1 = v0;
  v2 = sub_25467F840();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = *(v1 + 40);
  if (result >= 1)
  {
    v7 = notify_cancel(result);
    v8 = sub_25467F810();
    swift_beginAccess();
    (*(v3 + 16))(v5, v8, v2);
    v9 = sub_25467F830();
    v10 = sub_2546806D0();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 67109120;
      *(v11 + 4) = v7;
      _os_log_impl(&dword_254615000, v9, v10, "unregisterForScreenEvents result=%u", v11, 8u);
      MEMORY[0x259C155A0](v11, -1, -1);
    }

    result = (*(v3 + 8))(v5, v2);
    *(v1 + 40) = -1;
  }

  return result;
}

Swift::Void __swiftcall HoverTextCoordinator.showAlert(_:)(Swift::String a1)
{
  v2 = *(v1 + 80);
  if (v2)
  {
    object = a1._object;
    countAndFlagsBits = a1._countAndFlagsBits;
    v6 = v2;
    v5._countAndFlagsBits = countAndFlagsBits;
    v5._object = object;
    HoverTextRootViewController.showAlert(_:)(v5);
  }
}

Swift::Void __swiftcall HoverTextCoordinator.addSceneForExternalDisplay(_:)(UIWindowScene a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F60C010);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  swift_beginAccess();
  v7 = a1.super.super.super.isa;
  MEMORY[0x259C14410]();
  if (*((*(v2 + 72) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 72) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_2546805D0();
  }

  sub_2546805F0();
  swift_endAccess();
  if (*(v2 + 104) == 1)
  {
    v8 = sub_254680640();
    (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
    sub_254680620();
    v9 = v7;

    v10 = sub_254680610();
    v11 = swift_allocObject();
    v12 = MEMORY[0x277D85700];
    v11[2] = v10;
    v11[3] = v12;
    v11[4] = v2;
    v11[5] = v9;
    sub_25464CB40(0, 0, v6, &unk_254684050, v11);
  }
}

uint64_t sub_25464C5CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v7 = sub_25467F840();
  v5[9] = v7;
  v5[10] = *(v7 - 8);
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  v5[13] = sub_254680620();
  v5[14] = sub_254680610();
  v8 = swift_task_alloc();
  v5[15] = v8;
  *v8 = v5;
  v8[1] = sub_25464C6F8;

  return sub_254648940(a5, 0);
}

uint64_t sub_25464C6F8(void *a1)
{
  *(*v2 + 128) = v1;

  if (v1)
  {
    v4 = sub_254680600();
    v6 = v5;
    v7 = sub_25464C9F8;
  }

  else
  {

    v4 = sub_254680600();
    v6 = v8;
    v7 = sub_25464C880;
  }

  return MEMORY[0x2822009F8](v7, v4, v6);
}

uint64_t sub_25464C880()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[10];

  v4 = sub_25467F810();
  swift_beginAccess();
  (*(v3 + 16))(v1, v4, v2);

  v5 = sub_25467F830();
  v6 = sub_2546806D0();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[8];
  if (v7)
  {
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    *(v9 + 4) = *(v8 + 104);

    _os_log_impl(&dword_254615000, v5, v6, "Did show HoverText UI on external screen (isRunning=%{BOOL}d)", v9, 8u);
    MEMORY[0x259C155A0](v9, -1, -1);
  }

  else
  {
  }

  (*(v0[10] + 8))(v0[12], v0[9]);

  v10 = v0[1];

  return v10();
}

uint64_t sub_25464C9F8()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];

  v4 = sub_25467F810();
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_25467F830();
  v6 = sub_2546806F0();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[16];
  if (v7)
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_254615000, v5, v6, "Cannot attach HT view controller for external display", v9, 2u);
    MEMORY[0x259C155A0](v9, -1, -1);
  }

  (*(v0[10] + 8))(v0[11], v0[9]);

  v10 = v0[1];

  return v10();
}

uint64_t sub_25464CB40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F60C010);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_25462CC8C(a3, v25 - v10, &unk_27F60C010);
  v12 = sub_254680640();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_254626CC4(v11, &unk_27F60C010);
  }

  else
  {
    sub_254680630();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_254680600();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_254680490() + 32;
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

      sub_254626CC4(a3, &unk_27F60C010);

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

  sub_254626CC4(a3, &unk_27F60C010);
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

uint64_t sub_25464CE40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F60C010);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_25462CC8C(a3, v25 - v10, &unk_27F60C010);
  v12 = sub_254680640();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_254626CC4(v11, &unk_27F60C010);
  }

  else
  {
    sub_254680630();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_254680600();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_254680490() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F60C040);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_254626CC4(a3, &unk_27F60C010);

      return v22;
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

  sub_254626CC4(a3, &unk_27F60C010);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F60C040);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

Swift::Void __swiftcall HoverTextCoordinator.removeSceneForExternalDisplay(_:)(UIWindowScene a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F60C010);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  swift_beginAccess();
  v7 = a1.super.super.super.isa;
  v8 = sub_254655890((v2 + 72), v7);

  v9 = *(v2 + 72);
  if (!(v9 >> 62))
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10 >= v8)
    {
      goto LABEL_3;
    }

LABEL_7:
    __break(1u);
    swift_endAccess();
    __break(1u);
    return;
  }

  v10 = sub_2546809C0();
  if (v10 < v8)
  {
    goto LABEL_7;
  }

LABEL_3:
  sub_254655AB4(v8, v10);
  swift_endAccess();
  if (*(v2 + 104) == 1)
  {
    v11 = sub_254680640();
    (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
    sub_254680620();
    v12 = v7;

    v13 = sub_254680610();
    v14 = swift_allocObject();
    v15 = MEMORY[0x277D85700];
    v14[2] = v13;
    v14[3] = v15;
    v14[4] = v2;
    v14[5] = v12;
    sub_25464CB40(0, 0, v6, &unk_254684060, v14);
  }
}

uint64_t sub_25464D330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v7 = sub_25467F840();
  v5[9] = v7;
  v5[10] = *(v7 - 8);
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  v5[13] = sub_254680620();
  v5[14] = sub_254680610();
  v8 = swift_task_alloc();
  v5[15] = v8;
  *v8 = v5;
  v8[1] = sub_25464D45C;

  return sub_25464BDAC(a5, 0);
}

uint64_t sub_25464D45C(void *a1)
{
  *(*v2 + 128) = v1;

  if (v1)
  {
    v4 = sub_254680600();
    v6 = v5;
    v7 = sub_25464D75C;
  }

  else
  {

    v4 = sub_254680600();
    v6 = v8;
    v7 = sub_25464D5E4;
  }

  return MEMORY[0x2822009F8](v7, v4, v6);
}

uint64_t sub_25464D5E4()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[10];

  v4 = sub_25467F810();
  swift_beginAccess();
  (*(v3 + 16))(v1, v4, v2);

  v5 = sub_25467F830();
  v6 = sub_2546806D0();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[8];
  if (v7)
  {
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    *(v9 + 4) = *(v8 + 104);

    _os_log_impl(&dword_254615000, v5, v6, "Did hide HoverText UI on external screen (isRunning=%{BOOL}d)", v9, 8u);
    MEMORY[0x259C155A0](v9, -1, -1);
  }

  else
  {
  }

  (*(v0[10] + 8))(v0[12], v0[9]);

  v10 = v0[1];

  return v10();
}

uint64_t sub_25464D75C()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];

  v4 = sub_25467F810();
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_25467F830();
  v6 = sub_2546806F0();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[16];
  if (v7)
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_254615000, v5, v6, "Cannot detach HT view controller for external display", v9, 2u);
    MEMORY[0x259C155A0](v9, -1, -1);
  }

  (*(v0[10] + 8))(v0[11], v0[9]);

  v10 = v0[1];

  return v10();
}

uint64_t sub_25464D8A4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 152) = a5;
  *(v6 + 160) = a6;
  *(v6 + 217) = a4;
  *(v6 + 144) = a1;
  sub_254680620();
  *(v6 + 168) = sub_254680610();
  v8 = sub_254680600();
  *(v6 + 176) = v8;
  *(v6 + 184) = v7;

  return MEMORY[0x2822009F8](sub_25464D944, v8, v7);
}

uint64_t sub_25464D944()
{
  v1 = v0;
  v2 = v0 + 80;
  if (*(v1 + 217))
  {
    v3 = 0xE400000000000000;
    v4 = 1;
    v5 = 1852399949;
  }

  else
  {
    v6 = *(v1 + 152);
    if (v6)
    {
      LODWORD(v6) = [v6 _accessibilityDisplayId];
    }

    *(v1 + 80) = v6;
    v7 = sub_254680A70();
    MEMORY[0x259C14370](v7);

    v5 = 0x6C616E7265747845;
    v3 = 0xE90000000000002DLL;
    v4 = *(v1 + 217);
  }

  v8 = *(v1 + 152);
  v9 = *(*(v1 + 160) + 16);
  v10 = objc_allocWithZone(type metadata accessor for HoverTextRootViewController());
  v11 = sub_254632D38(v4, v5, v3, v9);
  *(v1 + 192) = v11;
  v12 = sub_254646494();
  *(v1 + 200) = v12;
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v1 + 208) = Strong;
  *(v1 + 16) = v1;
  *(v1 + 56) = v1 + 216;
  *(v1 + 24) = sub_25464DB74;
  v14 = swift_continuation_init();
  *(v1 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60C028);
  *(v1 + 80) = MEMORY[0x277D85DD0];
  *(v1 + 88) = 1107296256;
  *(v1 + 96) = sub_25464DED8;
  *(v1 + 104) = &block_descriptor_145;
  *(v1 + 112) = v14;
  [v12 addContentViewController:v11 withUserInteractionEnabled:1 forService:Strong context:0 userInterfaceStyle:2 forWindowScene:v8 completion:v2];

  return MEMORY[0x282200938](v1 + 16);
}

uint64_t sub_25464DB74()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 176);

  return MEMORY[0x2822009F8](sub_25464DC7C, v2, v1);
}

void sub_25464DC7C()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 216);

  swift_unknownObjectRelease();
  if (v2 == 1)
  {
    if (*(v0 + 217) == 1)
    {
      v3 = *(v0 + 192);
      v4 = *(v0 + 160);
      v5 = *(v4 + 80);
      *(v4 + 80) = v3;
      v6 = v3;
    }

    else
    {
      if (!*(v0 + 152))
      {
LABEL_23:
        __break(1u);
        return;
      }

      v10 = *(v0 + 160);
      swift_beginAccess();
      v11 = *(v10 + 64);
      v12 = *(v0 + 192);
      v13 = *(v0 + 152);
      if ((v11 & 0xC000000000000001) != 0)
      {
        if (v11 < 0)
        {
          v14 = *(v10 + 64);
        }

        else
        {
          v14 = v11 & 0xFFFFFFFFFFFFFF8;
        }

        v15 = v12;
        v16 = v13;
        v17 = sub_2546809C0();
        if (__OFADD__(v17, 1))
        {
          __break(1u);
LABEL_22:
          __break(1u);
          goto LABEL_23;
        }

        *(v10 + 64) = sub_254654AE4(v14, v17 + 1);
        v18 = *(v0 + 192);
        v19 = *(v0 + 152);
      }

      else
      {
        v18 = v12;
        v19 = v13;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v24 = *(v10 + 64);
      sub_25467E644(v18, v19, isUniquelyReferenced_nonNull_native);
      *(v10 + 64) = v24;

      swift_endAccess();
    }

    v21 = *(v0 + 192);
    v22 = [v21 view];

    if (v22)
    {

      v23 = [v22 window];

      if (v23)
      {
        sub_25467A23C(v23);
      }

      **(v0 + 144) = *(v0 + 192);
      v9 = *(v0 + 8);
      goto LABEL_18;
    }

    goto LABEL_22;
  }

  v7 = *(v0 + 192);

  sub_254655D68();
  swift_allocError();
  *v8 = 0xD000000000000029;
  v8[1] = 0x8000000254686840;
  swift_willThrow();

  v9 = *(v0 + 8);
LABEL_18:

  v9();
}

uint64_t sub_25464DED8(uint64_t a1, char a2)
{
  **(*(*__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;

  return MEMORY[0x282200948]();
}

uint64_t sub_25464DF34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F60C010);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_25462CC8C(a3, v22 - v9, &unk_27F60C010);
  v11 = sub_254680640();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_254626CC4(v10, &unk_27F60C010);
  }

  else
  {
    sub_254680630();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_254680600();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22[0] = a2;
      v18 = sub_254680490() + 32;
      type metadata accessor for HoverTextRootViewController();

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_254626CC4(a3, &unk_27F60C010);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_254626CC4(a3, &unk_27F60C010);
  type metadata accessor for HoverTextRootViewController();
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_25464E1EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F60C010);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_25462CC8C(a3, v22 - v9, &unk_27F60C010);
  v11 = sub_254680640();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_254626CC4(v10, &unk_27F60C010);
  }

  else
  {
    sub_254680630();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_254680600();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_254680490() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60C020);
      v19 = (v17 | v15);
      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_254626CC4(a3, &unk_27F60C010);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_254626CC4(a3, &unk_27F60C010);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60C020);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_25464E4A8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 216) = a5;
  *(v6 + 224) = a6;
  *(v6 + 305) = a4;
  *(v6 + 208) = a1;
  sub_254680620();
  *(v6 + 232) = sub_254680610();
  v8 = sub_254680600();
  *(v6 + 240) = v8;
  *(v6 + 248) = v7;

  return MEMORY[0x2822009F8](sub_25464E548, v8, v7);
}

uint64_t sub_25464E548(id Strong)
{
  v2 = v1 + 304;
  if (*(v1 + 305) == 1)
  {
    v3 = *(*(v1 + 216) + 80);
    *(v1 + 256) = v3;
    if (v3)
    {
      v4 = v3;
      Strong = [v4 view];
      if (Strong)
      {
        v5 = Strong;
        v6 = [Strong window];

        if (v6)
        {
          sub_25467A84C(v6);
        }

        v7 = sub_254646494();
        *(v1 + 264) = v7;
        Strong = swift_unknownObjectWeakLoadStrong();
        *(v1 + 272) = Strong;
        if (Strong)
        {
          v8 = Strong;
          v9 = (v1 + 80);
          *(v1 + 80) = v1;
          *(v1 + 120) = v2;
          *(v1 + 88) = sub_25464E8AC;
          v10 = swift_continuation_init();
          *(v1 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60C028);
          *(v1 + 144) = MEMORY[0x277D85DD0];
          *(v1 + 152) = 1107296256;
          *(v1 + 160) = sub_25464DED8;
          *(v1 + 168) = &block_descriptor_37;
          *(v1 + 176) = v10;
          [v7 removeContentViewController:v4 withUserInteractionEnabled:1 forService:v8 context:0 completion:v1 + 144];
          goto LABEL_12;
        }

        goto LABEL_22;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }
  }

  else
  {
    v11 = *(v1 + 224);
    if (!v11)
    {
      __break(1u);
      goto LABEL_21;
    }

    v12 = *(v1 + 216);
    swift_beginAccess();
    v13 = sub_25464629C(v11, *(v12 + 64));
    *(v1 + 280) = v13;
    if (v13)
    {
      v14 = v13;
      swift_endAccess();
      v15 = sub_254646494();
      *(v1 + 288) = v15;
      Strong = swift_unknownObjectWeakLoadStrong();
      *(v1 + 296) = Strong;
      if (Strong)
      {
        v16 = Strong;
        v9 = (v1 + 16);
        *(v1 + 16) = v1;
        *(v1 + 56) = v2;
        *(v1 + 24) = sub_25464EAB0;
        v17 = swift_continuation_init();
        *(v1 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60C028);
        *(v1 + 144) = MEMORY[0x277D85DD0];
        *(v1 + 152) = 1107296256;
        *(v1 + 160) = sub_25464DED8;
        *(v1 + 168) = &block_descriptor_5;
        *(v1 + 176) = v17;
        [v15 removeContentViewController:v14 withUserInteractionEnabled:1 forService:v16 context:0 completion:v1 + 144];
LABEL_12:
        Strong = v9;

        return MEMORY[0x282200938](Strong);
      }

LABEL_23:
      __break(1u);
      return MEMORY[0x282200938](Strong);
    }

    swift_endAccess();
  }

  **(v1 + 208) = 0;
  v18 = *(v1 + 8);

  return v18();
}

uint64_t sub_25464E8AC()
{
  v1 = *(*v0 + 248);
  v2 = *(*v0 + 240);

  return MEMORY[0x2822009F8](sub_25464E9B4, v2, v1);
}

uint64_t sub_25464E9B4()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 256);

  v3 = *(v0 + 304);

  swift_unknownObjectRelease();
  if (v3 == 1)
  {
    **(v0 + 208) = *(v0 + 256);
  }

  else
  {
    sub_254655D68();
    swift_allocError();
    *v5 = 0xD000000000000029;
    v5[1] = 0x80000002546867E0;
    swift_willThrow();
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_25464EAB0()
{
  v1 = *(*v0 + 248);
  v2 = *(*v0 + 240);

  return MEMORY[0x2822009F8](sub_25464EBB8, v2, v1);
}

uint64_t sub_25464EBB8()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 280);

  v3 = *(v0 + 304);

  swift_unknownObjectRelease();
  if (v3 == 1)
  {
    **(v0 + 208) = *(v0 + 280);
  }

  else
  {
    sub_254655D68();
    swift_allocError();
    *v5 = 0xD000000000000029;
    v5[1] = 0x80000002546867E0;
    swift_willThrow();
  }

  v4 = *(v0 + 8);

  return v4();
}

id sub_25464ECB4()
{
  v1 = v0;
  v2 = MEMORY[0x277D84F90];
  v24 = MEMORY[0x277D84F90];
  v3 = *(v0 + 80);
  if (!v3)
  {
    goto LABEL_4;
  }

  v2 = v3;
  MEMORY[0x259C14410]();
  if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_3;
  }

  while (1)
  {
    sub_2546805D0();
LABEL_3:
    sub_2546805F0();

    v2 = v24;
LABEL_4:
    swift_beginAccess();
    v4 = *(v1 + 64);
    if ((v4 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      v6 = 0;
      v7 = 0;
      v8 = sub_2546809B0() | 0x8000000000000000;
    }

    else
    {
      v9 = -1 << *(v4 + 32);
      v6 = ~v9;
      v5 = v4 + 64;
      v10 = -v9;
      v11 = v10 < 64 ? ~(-1 << v10) : -1;
      v7 = v11 & *(v4 + 64);
      v8 = *(v1 + 64);
    }

    v1 = 0;
    v12 = (v6 + 64) >> 6;
    if ((v8 & 0x8000000000000000) != 0)
    {
      break;
    }

LABEL_11:
    v13 = v1;
    v14 = v7;
    v15 = v1;
    if (v7)
    {
LABEL_15:
      v16 = (v14 - 1) & v14;
      v17 = (v15 << 9) | (8 * __clz(__rbit64(v14)));
      v18 = *(*(v8 + 56) + v17);
      v19 = *(*(v8 + 48) + v17);
      v20 = v18;
      if (v19)
      {
        goto LABEL_19;
      }

      goto LABEL_23;
    }

    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v15 >= v12)
      {
        goto LABEL_23;
      }

      v14 = *(v5 + 8 * v15);
      ++v13;
      if (v14)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  while (sub_2546809E0())
  {
    sub_254626E64(0, &qword_27F60BB48);
    swift_dynamicCast();
    v19 = v23;
    type metadata accessor for HoverTextRootViewController();
    swift_dynamicCast();
    v20 = v23;
    v15 = v1;
    v16 = v7;
    if (!v23)
    {
      break;
    }

LABEL_19:

    v21 = v20;
    MEMORY[0x259C14410]();
    if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_2546805D0();
    }

    sub_2546805F0();

    v2 = v24;
    v1 = v15;
    v7 = v16;
    if ((v8 & 0x8000000000000000) == 0)
    {
      goto LABEL_11;
    }
  }

LABEL_23:
  sub_254655FC8();
  return v2;
}

uint64_t sub_25464EF88()
{
  v1 = v0;
  v2 = type metadata accessor for HoverTextPresentationEvent();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for HoverTextCoordinator.ViewControllerUpdateEvent();
  MEMORY[0x28223BE20](updated - 8);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_254656098(v1, v8, type metadata accessor for HoverTextCoordinator.ViewControllerUpdateEvent);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    return 7105601;
  }

  sub_254655F64(v8, v5);
  v10 = v5[64];
  v11 = v10 >> 6;
  if (v10 >> 6 > 1)
  {
    if (v11 == 2)
    {
      v9 = 0x61684365756C6156;
    }

    else
    {
      v12 = *v5;
      v13 = *(v5 + 1);
      v9 = 0xD000000000000014;
      v14 = *(v5 + 5);
      v15 = *(v5 + 6) | *(v5 + 7);
      v16 = *(v5 + 4) | *(v5 + 3) | *(v5 + 2);
      if (v10 != 192 || (v15 | *v5 | v14 | v16 | v13) != 0)
      {
        v18 = v15 | v14 | v16 | v13;
        v19 = v10 == 192 && v12 == 1;
        if (!v19 || v18 != 0)
        {
          if (v10 == 192 && v12 == 2 && v18 == 0)
          {
            v9 = 0xD000000000000011;
          }

          else if (v10 == 192 && v12 == 3 && v18 == 0)
          {
            v9 = 0xD00000000000001DLL;
          }

          else
          {
            v9 = 0xD000000000000016;
          }
        }
      }
    }
  }

  else if (v11)
  {
    v9 = 0xD000000000000016;
  }

  else
  {
    v9 = 0x6469447375636F46;
  }

  sub_254655F04(v5, type metadata accessor for HoverTextPresentationEvent);
  return v9;
}

uint64_t sub_25464F264(uint64_t a1)
{
  v3 = sub_25467F840();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for HoverTextPresentationEvent();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for HoverTextCoordinator.ViewControllerUpdateEvent();
  v12 = MEMORY[0x28223BE20](updated - 8);
  v14 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v58 - v15;
  sub_254656098(a1, &v58 - v15, type metadata accessor for HoverTextCoordinator.ViewControllerUpdateEvent);
  if ((*(v8 + 48))(v16, 1, v7) == 1)
  {
    v17 = sub_25464ECB4();
    goto LABEL_52;
  }

  sub_254655F64(v16, v10);
  v18 = *(v10 + 1);
  v66 = *v10;
  v67 = v18;
  v19 = *(v10 + 3);
  v68 = *(v10 + 2);
  v69 = v19;
  v70 = v10[64];
  v20 = v66;
  v21 = v70 >> 6;
  v22 = v19;
  if (v21 > 1)
  {
    if (v21 != 2)
    {
      v34 = v68 | *(&v68 + 1) | v19;
      v35 = v70 == 192 && (v67 | *(&v66 + 1) | v66 | *(&v67 + 1) | v34 | *(&v69 + 1)) == 0;
      if (v35 || ((v36 = v67 | *(&v66 + 1) | *(&v67 + 1) | v34 | *(&v69 + 1), v70 == 192) ? (v37 = v66 == 1) : (v37 = 0), v37 ? (v38 = v36 == 0) : (v38 = 0), v38))
      {
        v33 = sub_25464ECB4();
        goto LABEL_50;
      }

      v40 = v70 == 192 && v66 == 2 && v36 == 0;
      if (!v40 && v70 == 192 && v66 == 3 && !v36)
      {
        sub_254655F04(v10, type metadata accessor for HoverTextPresentationEvent);
        return MEMORY[0x277D84F90];
      }
    }
  }

  else if (!v21)
  {
    sub_25463D06C(v66, *(&v66 + 1), v67, *(&v67 + 1), v68, *(&v68 + 1), v69);
    if ((v22 & 0x80) == 0)
    {
      v60 = v14;
      v23 = sub_25464ECB4();
      v24 = v23;
      v65 = MEMORY[0x277D84F90];
      if (v23 >> 62)
      {
        goto LABEL_60;
      }

      for (i = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2546809C0())
      {
        v58 = v6;
        v59 = v4;
        v6 = 0;
        v64 = v24 & 0xC000000000000001;
        v62 = v3;
        v63 = v24 & 0xFFFFFFFFFFFFFF8;
        v4 = i;
        while (1)
        {
          if (v64)
          {
            v25 = MEMORY[0x259C147A0](v6, v24);
          }

          else
          {
            if (v6 >= *(v63 + 16))
            {
              goto LABEL_59;
            }

            v25 = *(v24 + 8 * v6 + 32);
          }

          v26 = v25;
          v3 = (v6 + 1);
          if (__OFADD__(v6, 1))
          {
            break;
          }

          if (v20)
          {
            v27 = [v20 windowDisplayId];
          }

          else
          {
            v27 = 0;
          }

          v28 = [v26 viewIfLoaded];
          if (v28)
          {
            v29 = v28;
            v30 = a1;
            v31 = [v28 window];

            if (v31 && (v32 = HTDisplayIDForWindow(v31), v31, v27 == v32))
            {
              sub_254680950();
              sub_254680980();
              sub_254680990();
              sub_254680960();
            }

            else
            {
            }

            a1 = v30;
            v4 = i;
          }

          else
          {
          }

          ++v6;
          if (v3 == v4)
          {
            v17 = v65;
            v3 = v62;
            v6 = v58;
            v4 = v59;
            goto LABEL_62;
          }
        }

        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        ;
      }

      v17 = MEMORY[0x277D84F90];
LABEL_62:

      sub_254636CC4(&v66);
      sub_254655F04(v10, type metadata accessor for HoverTextPresentationEvent);
      v14 = v60;
      goto LABEL_52;
    }

    v17 = sub_25464F948(v1);
    sub_254636CC4(&v66);
    goto LABEL_51;
  }

  v33 = sub_25464F948(v1);
LABEL_50:
  v17 = v33;
LABEL_51:
  sub_254655F04(v10, type metadata accessor for HoverTextPresentationEvent);
LABEL_52:
  v41 = sub_25467F800();
  swift_beginAccess();
  (*(v4 + 16))(v6, v41, v3);
  sub_254656098(a1, v14, type metadata accessor for HoverTextCoordinator.ViewControllerUpdateEvent);
  v42 = sub_25467F830();
  v43 = sub_2546806E0();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v62 = v3;
    v46 = v45;
    v65 = v45;
    *v44 = 136315394;
    v47 = sub_25464EF88();
    v49 = v48;
    sub_254655F04(v14, type metadata accessor for HoverTextCoordinator.ViewControllerUpdateEvent);
    v50 = sub_25463CAC4(v47, v49, &v65);

    *(v44 + 4) = v50;
    *(v44 + 12) = 2080;
    v51 = type metadata accessor for HoverTextRootViewController();

    v53 = MEMORY[0x259C14440](v52, v51);
    v55 = v54;

    v56 = sub_25463CAC4(v53, v55, &v65);

    *(v44 + 14) = v56;
    _os_log_impl(&dword_254615000, v42, v43, "Will sent event=%s to view controllers: %s", v44, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C155A0](v46, -1, -1);
    MEMORY[0x259C155A0](v44, -1, -1);

    (*(v4 + 8))(v6, v62);
  }

  else
  {

    sub_254655F04(v14, type metadata accessor for HoverTextCoordinator.ViewControllerUpdateEvent);
    (*(v4 + 8))(v6, v3);
  }

  return v17;
}

uint64_t sub_25464F948(uint64_t a1)
{
  v6 = *(a1 + 80);
  v1 = MEMORY[0x277D84F90];
  v5 = MEMORY[0x277D84F90];
  v2 = v6;
  if (v6)
  {
    v3 = v2;
    MEMORY[0x259C14410]();
    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_2546805D0();
    }

    sub_2546805F0();
    v1 = v5;
  }

  sub_254626CC4(&v6, &qword_27F60C020);
  return v1;
}

uint64_t sub_25464FA0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 72) = a4;
  *(v5 + 80) = a5;
  v6 = *(a4 + 16);
  *(v5 + 88) = *a4;
  *(v5 + 104) = v6;
  *(v5 + 120) = *(a4 + 32);
  *(v5 + 65) = *(a4 + 48);
  type metadata accessor for HoverTextCoordinator.ViewControllerUpdateEvent();
  *(v5 + 136) = swift_task_alloc();
  v7 = type metadata accessor for HoverTextPresentationEvent();
  *(v5 + 144) = v7;
  *(v5 + 152) = *(v7 - 8);
  *(v5 + 160) = swift_task_alloc();
  sub_254680620();
  *(v5 + 168) = sub_254680610();
  v9 = sub_254680600();

  return MEMORY[0x2822009F8](sub_25464FB48, v9, v8);
}

uint64_t sub_25464FB48()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);
  v5 = *(v0 + 128);
  v4 = *(v0 + 136);
  v6 = *(v0 + 65);
  v7 = *(v0 + 120);
  v8 = *(v0 + 72);
  v18 = *(v0 + 104);
  v19 = *(v0 + 88);

  *(v1 + 66) = 12;
  sub_25463D42C(v8, v0 + 16);
  sub_25467F500();
  v9 = (v1 + v2[8]);
  *v9 = 0;
  v9[1] = 0;
  v10 = (v1 + v2[9]);
  *v10 = 0u;
  v10[1] = 0u;
  v11 = v1 + v2[10];
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = (v1 + v2[11]);
  *v12 = 0;
  v12[1] = 0;
  *(v1 + v2[12]) = 0;
  *(v1 + v2[13]) = 0;
  v13 = (v1 + v2[14]);
  *v13 = 0;
  v13[1] = 0;
  *v1 = v19;
  *(v1 + 16) = v18;
  *(v1 + 32) = v7;
  *(v1 + 40) = v5;
  *(v1 + 48) = v6;
  *(v1 + 64) = 256;
  sub_254656098(v1, v4, type metadata accessor for HoverTextPresentationEvent);
  (*(v3 + 56))(v4, 0, 1, v2);
  v14 = sub_25464F264(v4);
  sub_254655F04(v4, type metadata accessor for HoverTextCoordinator.ViewControllerUpdateEvent);
  v15 = swift_task_alloc();
  *(v15 + 16) = v1;
  sub_25464FD60(sub_254657414, v15, v14);

  sub_254655F04(v1, type metadata accessor for HoverTextPresentationEvent);

  v16 = *(v0 + 8);

  return v16();
}

void sub_25464FD60(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2546809C0())
  {
    v6 = 0;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x259C147A0](v6, a3);
      }

      else
      {
        if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v7 = *(a3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v11 = v7;
      a1(&v11);

      if (!v3)
      {
        ++v6;
        if (v9 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

uint64_t sub_25464FE60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for HoverTextCoordinator.ViewControllerUpdateEvent();
  v4[3] = swift_task_alloc();
  v5 = type metadata accessor for HoverTextPresentationEvent();
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  sub_254680620();
  v4[7] = sub_254680610();
  v7 = sub_254680600();

  return MEMORY[0x2822009F8](sub_25464FF80, v7, v6);
}

uint64_t sub_25464FF80()
{
  v1 = v0[6];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[3];

  *(v1 + 66) = 12;
  sub_25467F500();
  v5 = (v1 + v2[8]);
  *v5 = 0;
  v5[1] = 0;
  v6 = (v1 + v2[9]);
  *v6 = 0u;
  v6[1] = 0u;
  v7 = v1 + v2[10];
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = (v1 + v2[11]);
  *v8 = 0;
  v8[1] = 0;
  *(v1 + v2[12]) = 0;
  *(v1 + v2[13]) = 0;
  v9 = (v1 + v2[14]);
  *v9 = 0;
  v9[1] = 0;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 64) = 448;
  sub_254656098(v1, v4, type metadata accessor for HoverTextPresentationEvent);
  (*(v3 + 56))(v4, 0, 1, v2);
  v10 = sub_25464F264(v4);
  sub_254655F04(v4, type metadata accessor for HoverTextCoordinator.ViewControllerUpdateEvent);
  v11 = swift_task_alloc();
  *(v11 + 16) = v1;
  sub_25464FD60(sub_254657414, v11, v10);

  sub_254655F04(v1, type metadata accessor for HoverTextPresentationEvent);

  v12 = v0[1];

  return v12();
}

uint64_t sub_254650154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 32) = a7;
  *(v8 + 40) = v15;
  *(v8 + 121) = a6;
  *(v8 + 16) = a4;
  *(v8 + 24) = a5;
  v9 = *(a8 + 16);
  *(v8 + 48) = *a8;
  *(v8 + 64) = v9;
  *(v8 + 122) = *(a8 + 32);
  type metadata accessor for HoverTextCoordinator.ViewControllerUpdateEvent();
  *(v8 + 80) = swift_task_alloc();
  v10 = type metadata accessor for HoverTextPresentationEvent();
  *(v8 + 88) = v10;
  *(v8 + 96) = *(v10 - 8);
  *(v8 + 104) = swift_task_alloc();
  sub_254680620();
  *(v8 + 112) = sub_254680610();
  v12 = sub_254680600();

  return MEMORY[0x2822009F8](sub_254650294, v12, v11);
}

uint64_t sub_254650294()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  v4 = *(v0 + 80);
  v5 = *(v0 + 122);
  v21 = *(v0 + 64);
  v22 = *(v0 + 72);
  v20 = *(v0 + 48);
  v6 = *(v0 + 32);
  v19 = *(v0 + 121);
  v8 = *(v0 + 16);
  v7 = *(v0 + 24);

  *(v0 + 120) = v5 & 1;
  *(v1 + 66) = 12;
  v9 = v6;

  sub_25467F500();
  v10 = (v1 + v2[8]);
  *v10 = 0;
  v10[1] = 0;
  v11 = (v1 + v2[9]);
  *v11 = 0u;
  v11[1] = 0u;
  v12 = v1 + v2[10];
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = (v1 + v2[11]);
  *v13 = 0;
  v13[1] = 0;
  *(v1 + v2[12]) = 0;
  *(v1 + v2[13]) = 0;
  v14 = (v1 + v2[14]);
  *v14 = 0;
  v14[1] = 0;
  *v1 = v8;
  *(v1 + 8) = v7;
  *(v1 + 16) = v19;
  *(v1 + 24) = v6;
  *(v1 + 32) = v20;
  *(v1 + 48) = v21;
  *(v1 + 56) = v22;
  *(v1 + 64) = v5 & 1 | 0x80;
  *(v1 + 65) = 1;
  sub_254656098(v1, v4, type metadata accessor for HoverTextPresentationEvent);
  (*(v3 + 56))(v4, 0, 1, v2);
  v15 = sub_25464F264(v4);
  sub_254655F04(v4, type metadata accessor for HoverTextCoordinator.ViewControllerUpdateEvent);
  v16 = swift_task_alloc();
  *(v16 + 16) = v1;
  sub_25464FD60(sub_2546571AC, v16, v15);

  sub_254655F04(v1, type metadata accessor for HoverTextPresentationEvent);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_2546504D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  type metadata accessor for HoverTextCoordinator.ViewControllerUpdateEvent();
  v6[5] = swift_task_alloc();
  v7 = type metadata accessor for HoverTextPresentationEvent();
  v6[6] = v7;
  v6[7] = *(v7 - 8);
  v6[8] = swift_task_alloc();
  sub_254680620();
  v6[9] = sub_254680610();
  v9 = sub_254680600();

  return MEMORY[0x2822009F8](sub_2546505F8, v9, v8);
}

uint64_t sub_2546505F8()
{
  v1 = v0[8];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[5];
  v6 = v0[2];
  v5 = v0[3];

  *(v1 + 66) = 12;

  sub_25467F500();
  v7 = (v1 + v2[8]);
  *v7 = 0;
  v7[1] = 0;
  v8 = (v1 + v2[9]);
  *v8 = 0u;
  v8[1] = 0u;
  v9 = v1 + v2[10];
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = (v1 + v2[11]);
  *v10 = 0;
  v10[1] = 0;
  *(v1 + v2[12]) = 0;
  *(v1 + v2[13]) = 0;
  v11 = (v1 + v2[14]);
  *v11 = 0;
  v11[1] = 0;
  *v1 = v6;
  *(v1 + 8) = v5;
  *(v1 + 64) = 320;
  sub_254656098(v1, v4, type metadata accessor for HoverTextPresentationEvent);
  (*(v3 + 56))(v4, 0, 1, v2);
  v12 = sub_25464F264(v4);
  sub_254655F04(v4, type metadata accessor for HoverTextCoordinator.ViewControllerUpdateEvent);
  v13 = swift_task_alloc();
  *(v13 + 16) = v1;
  sub_25464FD60(sub_254657414, v13, v12);

  sub_254655F04(v1, type metadata accessor for HoverTextPresentationEvent);

  v14 = v0[1];

  return v14();
}

uint64_t sub_2546507E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  type metadata accessor for HoverTextCoordinator.ViewControllerUpdateEvent();
  v4[9] = swift_task_alloc();
  sub_254680620();
  v4[10] = sub_254680610();
  v6 = sub_254680600();

  return MEMORY[0x2822009F8](sub_2546508A8, v6, v5);
}

uint64_t sub_2546508A8()
{
  v1 = v0[9];

  v2 = type metadata accessor for HoverTextPresentationEvent();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = sub_25464F264(v1);
  sub_254655F04(v1, type metadata accessor for HoverTextCoordinator.ViewControllerUpdateEvent);
  if (v3 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2546809C0())
  {
    v5 = 0;
    v19 = v3 & 0xFFFFFFFFFFFFFF8;
    v20 = v3 & 0xC000000000000001;
    v18 = v0 + 4;
    while (1)
    {
      if (v20)
      {
        v6 = MEMORY[0x259C147A0](v5, v3);
      }

      else
      {
        if (v5 >= *(v19 + 16))
        {
          goto LABEL_12;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v9 = v3;
      v10 = qword_27F60BB70;
      [*&v6[qword_27F60BB70] invalidate];
      v11 = objc_opt_self();
      v12 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v0[6] = sub_254633F3C;
      v0[7] = v12;
      v0[2] = MEMORY[0x277D85DD0];
      v0[3] = 1107296256;
      v0[4] = sub_254632CD0;
      v0[5] = &block_descriptor_54;
      v13 = _Block_copy(v0 + 2);

      v14 = [v11 scheduledTimerWithTimeInterval:0 repeats:v13 block:0.2];
      _Block_release(v13);
      v15 = *&v7[v10];
      *&v7[v10] = v14;
      v3 = v9;

      ++v5;
      if (v8 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:

  v16 = v0[1];

  return v16();
}

uint64_t sub_254650B54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  type metadata accessor for HoverTextCoordinator.ViewControllerUpdateEvent();
  v4[4] = swift_task_alloc();
  sub_254680620();
  v4[5] = sub_254680610();
  v6 = sub_254680600();

  return MEMORY[0x2822009F8](sub_254650C18, v6, v5);
}

uint64_t sub_254650C18()
{
  v1 = *(v0 + 32);

  v2 = type metadata accessor for HoverTextPresentationEvent();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = sub_25464F264(v1);
  sub_254655F04(v1, type metadata accessor for HoverTextCoordinator.ViewControllerUpdateEvent);
  if (v3 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2546809C0())
  {
    v5 = 0;
    while ((v3 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x259C147A0](v5, v3);
      v7 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_11;
      }

LABEL_7:
      v8 = *&v6[qword_27F60BB60];
      v9 = *&v6[qword_27F60BB60 + 8];
      v10 = *v8;
      *(v15 + 16) = v8;
      v11 = *(v9 + 272);
      v12 = v6;

      v11(v10, v9);

      ++v5;
      if (v7 == i)
      {
        goto LABEL_14;
      }
    }

    if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

    v6 = *(v3 + 8 * v5 + 32);
    v7 = v5 + 1;
    if (!__OFADD__(v5, 1))
    {
      goto LABEL_7;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:

  v13 = *(v15 + 8);

  return v13();
}

uint64_t sub_254650E38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  type metadata accessor for HoverTextCoordinator.ViewControllerUpdateEvent();
  v4[4] = swift_task_alloc();
  sub_254680620();
  v4[5] = sub_254680610();
  v6 = sub_254680600();

  return MEMORY[0x2822009F8](sub_254650EFC, v6, v5);
}

uint64_t sub_254650EFC()
{
  v1 = *(v0 + 32);

  v2 = type metadata accessor for HoverTextPresentationEvent();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = sub_25464F264(v1);
  sub_254655F04(v1, type metadata accessor for HoverTextCoordinator.ViewControllerUpdateEvent);
  if (v3 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2546809C0())
  {
    v5 = 0;
    while ((v3 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x259C147A0](v5, v3);
      v7 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_11;
      }

LABEL_7:
      v8 = *&v6[qword_27F60BB60];
      v9 = *&v6[qword_27F60BB60 + 8];
      v10 = *v8;
      *(v15 + 16) = v8;
      v11 = *(v9 + 256);
      v12 = v6;

      v11(v10, v9);

      ++v5;
      if (v7 == i)
      {
        goto LABEL_14;
      }
    }

    if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

    v6 = *(v3 + 8 * v5 + 32);
    v7 = v5 + 1;
    if (!__OFADD__(v5, 1))
    {
      goto LABEL_7;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:

  v13 = *(v15 + 8);

  return v13();
}

uint64_t sub_25465111C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  type metadata accessor for HoverTextCoordinator.ViewControllerUpdateEvent();
  v4[4] = swift_task_alloc();
  sub_254680620();
  v4[5] = sub_254680610();
  v6 = sub_254680600();

  return MEMORY[0x2822009F8](sub_2546511E0, v6, v5);
}

uint64_t sub_2546511E0()
{
  v1 = *(v0 + 32);

  v2 = type metadata accessor for HoverTextPresentationEvent();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = sub_25464F264(v1);
  sub_254655F04(v1, type metadata accessor for HoverTextCoordinator.ViewControllerUpdateEvent);
  if (v3 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2546809C0())
  {
    v5 = 0;
    while ((v3 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x259C147A0](v5, v3);
      v7 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_11;
      }

LABEL_7:
      v8 = *&v6[qword_27F60BB60];
      v9 = *&v6[qword_27F60BB60 + 8];
      v10 = *v8;
      *(v15 + 16) = v8;
      v11 = *(v9 + 264);
      v12 = v6;

      v11(v10, v9);

      ++v5;
      if (v7 == i)
      {
        goto LABEL_14;
      }
    }

    if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

    v6 = *(v3 + 8 * v5 + 32);
    v7 = v5 + 1;
    if (!__OFADD__(v5, 1))
    {
      goto LABEL_7;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:

  v13 = *(v15 + 8);

  return v13();
}

uint64_t sub_254651400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 48) = a5;
  *(v5 + 24) = a4;
  type metadata accessor for HoverTextCoordinator.ViewControllerUpdateEvent();
  *(v5 + 32) = swift_task_alloc();
  sub_254680620();
  *(v5 + 40) = sub_254680610();
  v7 = sub_254680600();

  return MEMORY[0x2822009F8](sub_2546514C8, v7, v6);
}

uint64_t sub_2546514C8()
{
  v1 = *(v0 + 32);

  v2 = type metadata accessor for HoverTextPresentationEvent();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = sub_25464F264(v1);
  sub_254655F04(v1, type metadata accessor for HoverTextCoordinator.ViewControllerUpdateEvent);
  if (v3 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2546809C0())
  {
    v5 = 0;
    v16 = v3 & 0xFFFFFFFFFFFFFF8;
    v17 = v3 & 0xC000000000000001;
    while (1)
    {
      if (v17)
      {
        v6 = MEMORY[0x259C147A0](v5, v3);
      }

      else
      {
        if (v5 >= *(v16 + 16))
        {
          goto LABEL_12;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v19 = *(v18 + 48);
      v9 = *&v6[qword_27F60BB60];
      v10 = *&v6[qword_27F60BB60 + 8];
      v11 = *v9;
      *(v18 + 16) = v9;
      v12 = v3;
      v13 = *(v10 + 280);

      v13(v19, v11, v10);
      v3 = v12;

      ++v5;
      if (v8 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:

  v14 = *(v18 + 8);

  return v14();
}

uint64_t sub_2546516F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  type metadata accessor for HoverTextCoordinator.ViewControllerUpdateEvent();
  v4[4] = swift_task_alloc();
  sub_254680620();
  v4[5] = sub_254680610();
  v6 = sub_254680600();

  return MEMORY[0x2822009F8](sub_2546517B8, v6, v5);
}

uint64_t sub_2546517B8()
{
  v1 = *(v0 + 32);

  v2 = type metadata accessor for HoverTextPresentationEvent();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = sub_25464F264(v1);
  sub_254655F04(v1, type metadata accessor for HoverTextCoordinator.ViewControllerUpdateEvent);
  if (v3 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2546809C0())
  {
    v5 = 0;
    while ((v3 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x259C147A0](v5, v3);
      v7 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_11;
      }

LABEL_7:
      v8 = *&v6[qword_27F60BB60];
      v9 = *&v6[qword_27F60BB60 + 8];
      v10 = *v8;
      *(v15 + 16) = v8;
      v11 = *(v9 + 248);
      v12 = v6;

      v11(v10, v9);

      ++v5;
      if (v7 == i)
      {
        goto LABEL_14;
      }
    }

    if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

    v6 = *(v3 + 8 * v5 + 32);
    v7 = v5 + 1;
    if (!__OFADD__(v5, 1))
    {
      goto LABEL_7;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:

  v13 = *(v15 + 8);

  return v13();
}

uint64_t sub_2546519D8(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 120) = a8;
  *(v8 + 64) = a7;
  *(v8 + 48) = a1;
  *(v8 + 56) = a2;
  *(v8 + 40) = a6;
  type metadata accessor for HoverTextCoordinator.ViewControllerUpdateEvent();
  *(v8 + 72) = swift_task_alloc();
  v9 = type metadata accessor for HoverTextPresentationEvent();
  *(v8 + 80) = v9;
  *(v8 + 88) = *(v9 - 8);
  *(v8 + 96) = swift_task_alloc();
  *(v8 + 104) = swift_task_alloc();
  sub_254680620();
  *(v8 + 112) = sub_254680610();
  v11 = sub_254680600();

  return MEMORY[0x2822009F8](sub_254651B10, v11, v10);
}

uint64_t sub_254651B10()
{
  v1 = *(v0 + 104);
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  v4 = *(v0 + 72);
  v6 = *(v0 + 48);
  v5 = *(v0 + 56);
  v7 = *(v0 + 40);

  *(v1 + 66) = 12;
  v8 = v7;
  sub_25467F500();
  v9 = (v1 + v3[8]);
  *v9 = 0;
  v9[1] = 0;
  v10 = (v1 + v3[9]);
  *v10 = 0u;
  v10[1] = 0u;
  v11 = v1 + v3[10];
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = (v1 + v3[11]);
  *v12 = 0;
  v12[1] = 0;
  *(v1 + v3[12]) = 0;
  *(v1 + v3[13]) = 0;
  v13 = (v1 + v3[14]);
  *v1 = v7;
  *(v1 + 64) = 256;
  *(v1 + 8) = 0u;
  *(v1 + 24) = 0u;
  *(v1 + 40) = 0u;
  *v13 = v6;
  v13[1] = v5;
  sub_254656098(v1, v4, type metadata accessor for HoverTextPresentationEvent);
  v43 = v3;
  (*(v2 + 56))(v4, 0, 1, v3);
  v49 = sub_25464F264(v4);
  sub_254655F04(v4, type metadata accessor for HoverTextCoordinator.ViewControllerUpdateEvent);
  v14 = sub_25464ECB4();
  v15 = v14;
  if (v14 >> 62)
  {
    v40 = v14;
    result = sub_2546809C0();
    v15 = v40;
    if (!result)
    {
      goto LABEL_13;
    }
  }

  else
  {
    result = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_13;
    }
  }

  if (result < 1)
  {
    __break(1u);
    return result;
  }

  v17 = 0;
  v18 = 0;
  v42 = *(v0 + 96);
  v45 = v15 & 0xC000000000000001;
  v46 = (v0 + 16);
  v47 = result;
  v48 = v15;
  do
  {
    if (v45)
    {
      v32 = MEMORY[0x259C147A0](v18);
    }

    else
    {
      v32 = *(v15 + 8 * v18 + 32);
    }

    v33 = v32;
    *v46 = v32;
    v34 = swift_task_alloc();
    *(v34 + 16) = v46;
    v35 = sub_254654064(sub_25465742C, v34, v49);
    v50 = v17;

    v36 = &v33[qword_27F60BB60];
    v38 = *&v33[qword_27F60BB60];
    v37 = *&v33[qword_27F60BB60 + 8];
    v39 = *v38;
    v25 = *v38;
    *(v0 + 24) = v38;
    if (v35)
    {
      sub_254656098(*(v0 + 104), *(v0 + 96), type metadata accessor for HoverTextPresentationEvent);
    }

    else
    {
      v19 = *(v0 + 96);
      v44 = v39;
      *(v42 + 66) = 12;

      sub_25467F500();
      v20 = (v19 + v43[8]);
      *v20 = 0;
      v20[1] = 0;
      v21 = (v19 + v43[9]);
      *v21 = 0u;
      v21[1] = 0u;
      v22 = v19 + v43[10];
      *v22 = 0;
      v22[8] = 1;
      v23 = (v19 + v43[11]);
      *v23 = 0;
      v23[1] = 0;
      *(v19 + v43[12]) = 0;
      *(v19 + v43[13]) = 0;
      v24 = (v19 + v43[14]);
      *v24 = 0;
      v24[1] = 0;
      *v19 = 3;
      *(v42 + 56) = 0;
      *(v42 + 40) = 0u;
      *(v42 + 24) = 0u;
      *(v42 + 8) = 0u;
      *(v42 + 64) = 448;
      v25 = v44;
    }

    ++v18;
    v26 = *(v0 + 96);
    v27 = *(v0 + 120);
    (*(v37 + 304))(v26, v25, v37);
    sub_254655F04(v26, type metadata accessor for HoverTextPresentationEvent);

    v28 = *v36;
    v29 = *(v36 + 1);
    v30 = **v36;
    *(v0 + 32) = v28;
    v31 = *(v29 + 368);

    v31(v27, v30, v29);

    v15 = v48;
    v17 = v50;
  }

  while (v47 != v18);
LABEL_13:

  sub_254655F04(*(v0 + 104), type metadata accessor for HoverTextPresentationEvent);

  v41 = *(v0 + 8);

  return v41();
}

uint64_t sub_254651FAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[3] = a1;
  sub_254680620();
  v5[6] = sub_254680610();
  v7 = sub_254680600();

  return MEMORY[0x2822009F8](sub_254652048, v7, v6);
}

uint64_t sub_254652048()
{
  v1 = *(v0 + 32);

  v2 = *(v1 + 80);
  if (v2)
  {
    v4 = *(v2 + qword_27F60BB60);
    v3 = *(v2 + qword_27F60BB60 + 8);
    v5 = *v4;
    *(v0 + 16) = v4;
    (*(v3 + 376))(*(v0 + 40) | ((HIDWORD(*(v0 + 40)) & 1) << 32), v5);
  }

  **(v0 + 24) = v2 == 0;
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_254652130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  type metadata accessor for HoverTextCoordinator.ViewControllerUpdateEvent();
  v4[4] = swift_task_alloc();
  sub_254680620();
  v4[5] = sub_254680610();
  v6 = sub_254680600();

  return MEMORY[0x2822009F8](sub_2546521F4, v6, v5);
}

uint64_t sub_2546521F4()
{
  v1 = v0[4];

  v2 = type metadata accessor for HoverTextPresentationEvent();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = sub_25464F264(v1);
  sub_254655F04(v1, type metadata accessor for HoverTextCoordinator.ViewControllerUpdateEvent);
  if (v3 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2546809C0())
  {
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x259C147A0](v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v9 = *&v6[qword_27F60BB60 + 8];
      v10 = **&v6[qword_27F60BB60];
      v0[2] = *&v6[qword_27F60BB60];
      (*(v9 + 344))(v10);

      ++v5;
      if (v8 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:

  v11 = v0[1];

  return v11();
}

uint64_t sub_2546523D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  type metadata accessor for HoverTextCoordinator.ViewControllerUpdateEvent();
  v4[4] = swift_task_alloc();
  sub_254680620();
  v4[5] = sub_254680610();
  v6 = sub_254680600();

  return MEMORY[0x2822009F8](sub_25465249C, v6, v5);
}

uint64_t sub_25465249C()
{
  v1 = *(v0 + 32);

  v2 = type metadata accessor for HoverTextPresentationEvent();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = sub_25464F264(v1);
  sub_254655F04(v1, type metadata accessor for HoverTextCoordinator.ViewControllerUpdateEvent);
  if (v3 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2546809C0())
  {
    v5 = 0;
    while ((v3 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x259C147A0](v5, v3);
      v7 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_11;
      }

LABEL_7:
      v8 = *&v6[qword_27F60BB60];
      v9 = *&v6[qword_27F60BB60 + 8];
      v10 = *v8;
      *(v15 + 16) = v8;
      v11 = *(v9 + 352);
      v12 = v6;

      v11(1, v10, v9);

      ++v5;
      if (v7 == i)
      {
        goto LABEL_14;
      }
    }

    if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

    v6 = *(v3 + 8 * v5 + 32);
    v7 = v5 + 1;
    if (!__OFADD__(v5, 1))
    {
      goto LABEL_7;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:

  v13 = *(v15 + 8);

  return v13();
}

uint64_t sub_2546526C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  type metadata accessor for HoverTextCoordinator.ViewControllerUpdateEvent();
  v4[4] = swift_task_alloc();
  sub_254680620();
  v4[5] = sub_254680610();
  v6 = sub_254680600();

  return MEMORY[0x2822009F8](sub_254652784, v6, v5);
}

uint64_t sub_254652784()
{
  v1 = *(v0 + 32);

  v2 = type metadata accessor for HoverTextPresentationEvent();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = sub_25464F264(v1);
  sub_254655F04(v1, type metadata accessor for HoverTextCoordinator.ViewControllerUpdateEvent);
  if (v3 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2546809C0())
  {
    v5 = 0;
    while ((v3 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x259C147A0](v5, v3);
      v7 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_11;
      }

LABEL_7:
      v8 = *&v6[qword_27F60BB60];
      v9 = *&v6[qword_27F60BB60 + 8];
      v10 = *v8;
      *(v15 + 16) = v8;
      v11 = *(v9 + 352);
      v12 = v6;

      v11(0, v10, v9);

      ++v5;
      if (v7 == i)
      {
        goto LABEL_14;
      }
    }

    if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

    v6 = *(v3 + 8 * v5 + 32);
    v7 = v5 + 1;
    if (!__OFADD__(v5, 1))
    {
      goto LABEL_7;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:

  v13 = *(v15 + 8);

  return v13();
}

uint64_t sub_2546529A8(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;
  *(v6 + 24) = a6;
  type metadata accessor for HoverTextCoordinator.ViewControllerUpdateEvent();
  *(v6 + 48) = swift_task_alloc();
  sub_254680620();
  *(v6 + 56) = sub_254680610();
  v8 = sub_254680600();

  return MEMORY[0x2822009F8](sub_254652A70, v8, v7);
}

uint64_t sub_254652A70()
{
  v1 = *(v0 + 48);

  v2 = type metadata accessor for HoverTextPresentationEvent();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = sub_25464F264(v1);
  sub_254655F04(v1, type metadata accessor for HoverTextCoordinator.ViewControllerUpdateEvent);
  if (v3 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2546809C0())
  {
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x259C147A0](v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v10 = v17[4];
      v9 = v17[5];
      v11 = *&v6[qword_27F60BB60];
      v12 = *&v6[qword_27F60BB60 + 8];
      v13 = *v11;
      *(v17 + 2) = v11;
      v14 = *(v12 + 360);

      v14(v13, v12, v10, v9);

      ++v5;
      if (v8 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:

  v15 = *(v17 + 1);

  return v15();
}

uint64_t sub_254652C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  type metadata accessor for HoverTextCoordinator.ViewControllerUpdateEvent();
  v5[5] = swift_task_alloc();
  sub_254680620();
  v5[6] = sub_254680610();
  v7 = sub_254680600();

  return MEMORY[0x2822009F8](sub_254652D60, v7, v6);
}

uint64_t sub_254652D60()
{
  v1 = *(v0 + 40);

  v2 = type metadata accessor for HoverTextPresentationEvent();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = sub_25464F264(v1);
  sub_254655F04(v1, type metadata accessor for HoverTextCoordinator.ViewControllerUpdateEvent);
  if (v3 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2546809C0())
  {
    v5 = 0;
    v16 = v3 & 0xFFFFFFFFFFFFFF8;
    v17 = v3 & 0xC000000000000001;
    while (1)
    {
      if (v17)
      {
        v6 = MEMORY[0x259C147A0](v5, v3);
      }

      else
      {
        if (v5 >= *(v16 + 16))
        {
          goto LABEL_12;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v19 = v18[4];
      v9 = *&v6[qword_27F60BB60];
      v10 = *&v6[qword_27F60BB60 + 8];
      v11 = *v9;
      v18[2] = v9;
      v12 = v3;
      v13 = *(v10 + 288);

      v13(v19, v11, v10);
      v3 = v12;

      ++v5;
      if (v8 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:

  v14 = v18[1];

  return v14();
}

uint64_t sub_254652F8C(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 56) = a7;
  *(v7 + 40) = a1;
  *(v7 + 48) = a2;
  *(v7 + 32) = a6;
  type metadata accessor for HoverTextCoordinator.ViewControllerUpdateEvent();
  *(v7 + 64) = swift_task_alloc();
  v8 = type metadata accessor for HoverTextPresentationEvent();
  *(v7 + 72) = v8;
  *(v7 + 80) = *(v8 - 8);
  *(v7 + 88) = swift_task_alloc();
  *(v7 + 96) = swift_task_alloc();
  sub_254680620();
  *(v7 + 104) = sub_254680610();
  v10 = sub_254680600();

  return MEMORY[0x2822009F8](sub_2546530C0, v10, v9);
}

uint64_t sub_2546530C0()
{
  v1 = v0[12];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[8];
  v6 = v0[5];
  v5 = v0[6];
  v7 = v0[4];

  *(v1 + 66) = 12;
  v8 = v7;
  sub_25467F500();
  v9 = (v1 + v3[8]);
  *v9 = 0;
  v9[1] = 0;
  v10 = (v1 + v3[9]);
  *v10 = 0u;
  v10[1] = 0u;
  v11 = v1 + v3[10];
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = (v1 + v3[11]);
  *v12 = 0;
  v12[1] = 0;
  *(v1 + v3[12]) = 0;
  *(v1 + v3[13]) = 0;
  v13 = (v1 + v3[14]);
  *v1 = v7;
  *(v1 + 64) = 256;
  *(v1 + 8) = 0u;
  *(v1 + 24) = 0u;
  *(v1 + 40) = 0u;
  *v13 = v6;
  v13[1] = v5;
  sub_254656098(v1, v4, type metadata accessor for HoverTextPresentationEvent);
  v36 = v3;
  (*(v2 + 56))(v4, 0, 1, v3);
  v42 = sub_25464F264(v4);
  sub_254655F04(v4, type metadata accessor for HoverTextCoordinator.ViewControllerUpdateEvent);
  v14 = sub_25464ECB4();
  v15 = v14;
  if (v14 >> 62)
  {
    v34 = v14;
    result = sub_2546809C0();
    v15 = v34;
    v17 = v37;
    if (!result)
    {
      goto LABEL_13;
    }
  }

  else
  {
    result = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v17 = v37;
    if (!result)
    {
      goto LABEL_13;
    }
  }

  if (result < 1)
  {
    __break(1u);
    return result;
  }

  v18 = 0;
  v19 = v17[11];
  v38 = v15 & 0xC000000000000001;
  v39 = (v17 + 2);
  v40 = result;
  v41 = v15;
  do
  {
    if (v38)
    {
      v27 = MEMORY[0x259C147A0](v18);
    }

    else
    {
      v27 = *(v15 + 8 * v18 + 32);
    }

    v28 = v27;
    *v39 = v27;
    v29 = swift_task_alloc();
    *(v29 + 16) = v39;
    v30 = sub_254654064(sub_25465742C, v29, v42);

    v32 = *&v28[qword_27F60BB60];
    v31 = *&v28[qword_27F60BB60 + 8];
    v33 = *v32;
    v17[3] = v32;
    if (v30)
    {
      sub_254656098(v17[12], v17[11], type metadata accessor for HoverTextPresentationEvent);
    }

    else
    {
      v20 = v17[11];
      *(v19 + 66) = 12;

      sub_25467F500();
      v21 = (v20 + v36[8]);
      *v21 = 0;
      v21[1] = 0;
      v22 = (v20 + v36[9]);
      *v22 = 0u;
      v22[1] = 0u;
      v23 = v20 + v36[10];
      *v23 = 0;
      v23[8] = 1;
      v24 = (v20 + v36[11]);
      *v24 = 0;
      v24[1] = 0;
      *(v20 + v36[12]) = 0;
      *(v20 + v36[13]) = 0;
      v17 = v37;
      v25 = (v20 + v36[14]);
      *v25 = 0;
      v25[1] = 0;
      *v20 = 3;
      *(v19 + 56) = 0;
      *(v19 + 40) = 0u;
      *(v19 + 24) = 0u;
      *(v19 + 8) = 0u;
      *(v19 + 64) = 448;
    }

    ++v18;
    v26 = v17[11];
    (*(v31 + 328))(v26, v33, v31);

    sub_254655F04(v26, type metadata accessor for HoverTextPresentationEvent);

    v15 = v41;
  }

  while (v40 != v18);
LABEL_13:

  sub_254655F04(v17[12], type metadata accessor for HoverTextPresentationEvent);

  v35 = v17[1];

  return v35();
}

uint64_t sub_2546534F4(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 48) = a6;
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;
  type metadata accessor for HoverTextCoordinator.ViewControllerUpdateEvent();
  *(v6 + 56) = swift_task_alloc();
  v7 = type metadata accessor for HoverTextPresentationEvent();
  *(v6 + 64) = v7;
  *(v6 + 72) = *(v7 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  sub_254680620();
  *(v6 + 96) = sub_254680610();
  v9 = sub_254680600();

  return MEMORY[0x2822009F8](sub_254653624, v9, v8);
}

uint64_t sub_254653624()
{
  v1 = v0[11];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[7];
  v6 = v0[4];
  v5 = v0[5];

  *(v1 + 66) = 12;
  sub_25467F500();
  v7 = (v1 + v3[8]);
  *v7 = 0;
  v7[1] = 0;
  v8 = (v1 + v3[9]);
  *v8 = 0u;
  v8[1] = 0u;
  v9 = v1 + v3[10];
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = (v1 + v3[11]);
  *v10 = 0;
  v10[1] = 0;
  *(v1 + v3[12]) = 0;
  *(v1 + v3[13]) = 0;
  v11 = (v1 + v3[14]);
  *v1 = 4;
  *(v1 + 8) = 0u;
  *(v1 + 24) = 0u;
  *(v1 + 40) = 0u;
  *(v1 + 56) = 0;
  *(v1 + 64) = 448;
  *v11 = v6;
  v11[1] = v5;
  sub_254656098(v1, v4, type metadata accessor for HoverTextPresentationEvent);
  v34 = v3;
  (*(v2 + 56))(v4, 0, 1, v3);
  v40 = sub_25464F264(v4);
  sub_254655F04(v4, type metadata accessor for HoverTextCoordinator.ViewControllerUpdateEvent);
  v12 = sub_25464ECB4();
  v13 = v12;
  if (v12 >> 62)
  {
    v32 = v12;
    result = sub_2546809C0();
    v13 = v32;
    v15 = v35;
    if (!result)
    {
      goto LABEL_13;
    }
  }

  else
  {
    result = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v15 = v35;
    if (!result)
    {
      goto LABEL_13;
    }
  }

  if (result < 1)
  {
    __break(1u);
    return result;
  }

  v16 = 0;
  v17 = v15[10];
  v36 = v13 & 0xC000000000000001;
  v37 = (v15 + 2);
  v38 = result;
  v39 = v13;
  do
  {
    if (v36)
    {
      v25 = MEMORY[0x259C147A0](v16);
    }

    else
    {
      v25 = *(v13 + 8 * v16 + 32);
    }

    v26 = v25;
    *v37 = v25;
    v27 = swift_task_alloc();
    *(v27 + 16) = v37;
    v28 = sub_254654064(sub_254656934, v27, v40);

    v30 = *&v26[qword_27F60BB60];
    v29 = *&v26[qword_27F60BB60 + 8];
    v31 = *v30;
    v15[3] = v30;
    if (v28)
    {
      sub_254656098(v15[11], v15[10], type metadata accessor for HoverTextPresentationEvent);
    }

    else
    {
      v18 = v15[10];
      *(v17 + 66) = 12;

      sub_25467F500();
      v19 = (v18 + v34[8]);
      *v19 = 0;
      v19[1] = 0;
      v20 = (v18 + v34[9]);
      *v20 = 0u;
      v20[1] = 0u;
      v21 = v18 + v34[10];
      *v21 = 0;
      v21[8] = 1;
      v22 = (v18 + v34[11]);
      *v22 = 0;
      v22[1] = 0;
      *(v18 + v34[12]) = 0;
      *(v18 + v34[13]) = 0;
      v15 = v35;
      v23 = (v18 + v34[14]);
      *v23 = 0;
      v23[1] = 0;
      *v18 = 3;
      *(v17 + 56) = 0;
      *(v17 + 40) = 0u;
      *(v17 + 24) = 0u;
      *(v17 + 8) = 0u;
      *(v17 + 64) = 448;
    }

    ++v16;
    v24 = v15[10];
    (*(v29 + 328))(v24, v31, v29);

    sub_254655F04(v24, type metadata accessor for HoverTextPresentationEvent);

    v13 = v39;
  }

  while (v38 != v16);
LABEL_13:

  sub_254655F04(v15[11], type metadata accessor for HoverTextPresentationEvent);

  v33 = v15[1];

  return v33();
}

uint64_t sub_254653A58@<X0>(uint64_t a1@<X0>, int a2@<W1>, char *a3@<X8>, CGFloat a4@<D0>, CGFloat a5@<D1>)
{
  v46 = a3;
  LODWORD(v5) = a2;
  v9 = sub_25467F840();
  KeyPath = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_25464ECB4();
  v14 = v13;
  if (v13 >> 62)
  {
    goto LABEL_46;
  }

  v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v15)
  {
LABEL_47:
    v42 = 0;
LABEL_48:

    goto LABEL_49;
  }

LABEL_3:
  LODWORD(v48) = v5;
  v44 = v12;
  v45 = KeyPath;
  v47 = v9;
  v49 = a1;
  v9 = 0;
  LODWORD(v5) = v14 & 0xFFFFFFF8;
  while (1)
  {
    if ((v14 & 0xC000000000000001) != 0)
    {
      v16 = MEMORY[0x259C147A0](v9, v14);
    }

    else
    {
      if (v9 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_44;
      }

      v16 = *(v14 + 8 * v9 + 32);
    }

    KeyPath = v16;
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      goto LABEL_43;
    }

    v17 = v16 + qword_27F60BB60;
    v18 = *(v16 + qword_27F60BB60 + 8);
    v19 = **(v16 + qword_27F60BB60);
    v50 = *(v16 + qword_27F60BB60);
    a1 = &v50;
    if ((*(v18 + 216))(v19))
    {
      break;
    }

LABEL_5:
    ++v9;
    if (v12 == v15)
    {
      goto LABEL_47;
    }
  }

  v20 = *(v17 + 1);
  v21 = **v17;
  v51 = *v17;
  v53.origin.x = (*(v20 + 232))(v21);
  v52.x = a4;
  v52.y = a5;
  a1 = CGRectContainsPoint(v53, v52);

  if (a1)
  {
    goto LABEL_5;
  }

  if (v48 == 2 || (v48 & 1) == 0)
  {
    v37 = sub_25464ECB4();
    v14 = v37;
    if (v37 >> 62)
    {
      goto LABEL_52;
    }

    a1 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (a1)
    {
      goto LABEL_34;
    }

LABEL_53:
    v42 = 1;
    goto LABEL_48;
  }

  v22 = sub_25467F800();
  swift_beginAccess();
  v24 = v44;
  v23 = v45;
  v25 = v47;
  (v45[2])(v44, v22, v47);
  v9 = sub_25467F830();
  v26 = sub_2546806E0();
  if (os_log_type_enabled(v9, v26))
  {
    KeyPath = swift_slowAlloc();
    *KeyPath = 0;
    _os_log_impl(&dword_254615000, v9, v26, "Will no longer consume hand events", KeyPath, 2u);
    MEMORY[0x259C155A0](KeyPath, -1, -1);
  }

  v23[1](v24, v25);
  v27 = sub_25464ECB4();
  v14 = v27;
  if (v27 >> 62)
  {
    v28 = sub_2546809C0();
    if (!v28)
    {
      goto LABEL_55;
    }

LABEL_20:
    v5 = 0;
    v48 = v14 & 0xFFFFFFFFFFFFFF8;
    v49 = (v14 & 0xC000000000000001);
    v47 = v28;
    while (1)
    {
      if (v49)
      {
        v32 = MEMORY[0x259C147A0](v5, v14);
      }

      else
      {
        if (v5 >= *(v48 + 16))
        {
          goto LABEL_51;
        }

        v32 = *(v14 + 8 * v5 + 32);
      }

      v9 = v32;
      v33 = (v5 + 1);
      if (__OFADD__(v5, 1))
      {
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        a1 = sub_2546809C0();
        if (!a1)
        {
          goto LABEL_53;
        }

LABEL_34:
        v12 = 0;
        v47 = v14 & 0xFFFFFFFFFFFFFF8;
        v48 = v14 & 0xC000000000000001;
        while (2)
        {
          if (v48)
          {
            v38 = MEMORY[0x259C147A0](v12, v14);
            v9 = v12 + 1;
            if (__OFADD__(v12, 1))
            {
              break;
            }

            goto LABEL_38;
          }

          if (v12 >= *(v47 + 16))
          {
            goto LABEL_45;
          }

          v38 = *(v14 + 8 * v12 + 32);
          v9 = v12 + 1;
          if (!__OFADD__(v12, 1))
          {
LABEL_38:
            v5 = *&v38[qword_27F60BB60];
            v39 = *&v38[qword_27F60BB60 + 8];
            v40 = *v5;
            v49 = v38;
            v50 = v5;
            v41 = *(v39 + 360);

            KeyPath = v14;
            v41(v40, v39, a4, a5);

            ++v12;
            if (v9 == a1)
            {
              goto LABEL_53;
            }

            continue;
          }

          break;
        }

        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        v15 = sub_2546809C0();
        if (!v15)
        {
          goto LABEL_47;
        }

        goto LABEL_3;
      }

      v34 = &v32[qword_27F60BB60];
      KeyPath = *&v32[qword_27F60BB60];
      type metadata accessor for HoverTextStore();
      v35 = swift_dynamicCastClass();
      if (v35)
      {
        v36 = v35;
        KeyPath = swift_getKeyPath();
        v51 = v36;
        sub_254656814();
        sub_25467F780();

        if (*(v36 + 184))
        {

          goto LABEL_23;
        }

        KeyPath = *v34;
      }

      v29 = *(v34 + 1);
      v30 = *KeyPath;
      v51 = KeyPath;
      v31 = *(v29 + 224);

      v31(0, v30, v29);

      v28 = v47;
LABEL_23:
      ++v5;
      if (v33 == v28)
      {
        goto LABEL_55;
      }
    }
  }

  v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v28)
  {
    goto LABEL_20;
  }

LABEL_55:

  v42 = 0;
LABEL_49:
  *v46 = v42;
  return result;
}

uint64_t sub_254654064(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
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
          v8 = MEMORY[0x259C147A0](v5, a3);
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
      v13 = sub_2546809C0();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_25465418C(int a1)
{
  state64[16] = *MEMORY[0x277D85DE8];
  v2 = sub_25467F840();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v38 - v7;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    if (!_AXSHoverTextEnabled() || (*(v10 + 16) & 1) == 0)
    {
    }

    v38[1] = v10;
    state64[0] = 0;
    LODWORD(v42) = notify_get_state(a1, state64);
    v11 = sub_25467F810();
    swift_beginAccess();
    v12 = *(v3 + 16);
    v12(v8, v11, v2);
    v13 = sub_25467F830();
    v14 = sub_2546806D0();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = v12;
      v16 = swift_slowAlloc();
      *v16 = 134218240;
      swift_beginAccess();
      *(v16 + 4) = state64[0];
      *(v16 + 12) = 1024;
      *(v16 + 14) = v42;
      _os_log_impl(&dword_254615000, v13, v14, "Screen lock event occurred. lockStatus=%llu notifyGetStateResult=%u", v16, 0x12u);
      v17 = v16;
      v12 = v15;
      MEMORY[0x259C155A0](v17, -1, -1);
    }

    v18 = *(v3 + 8);
    v18(v8, v2);
    if (!v42 && (swift_beginAccess(), state64[0] == 1))
    {
      swift_beginAccess();
      v12(v6, v11, v2);
      v19 = sub_25467F830();
      v20 = sub_2546806D0();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_254615000, v19, v20, "Screen did lock. Turning off live speech", v21, 2u);
        MEMORY[0x259C155A0](v21, -1, -1);
      }

      v18(v6, v2);
      v22 = sub_25464ECB4();
      v23 = v22;
      if (v22 >> 62)
      {
        goto LABEL_32;
      }

      for (i = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2546809C0())
      {
        v25 = 0;
        v41 = v23 & 0xFFFFFFFFFFFFFF8;
        v42 = v23 & 0xC000000000000001;
        v40 = v23;
        v39 = i;
        while (1)
        {
          if (v42)
          {
            v29 = MEMORY[0x259C147A0](v25, v23);
          }

          else
          {
            if (v25 >= *(v41 + 16))
            {
              goto LABEL_31;
            }

            v29 = *(v23 + 8 * v25 + 32);
          }

          v30 = v29;
          v31 = v25 + 1;
          if (__OFADD__(v25, 1))
          {
            break;
          }

          v32 = &v29[qword_27F60BB60];
          type metadata accessor for HoverTextStore();
          v33 = swift_dynamicCastClass();
          if (v33)
          {
            v34 = v33;
            swift_getKeyPath();
            v43 = v34;
            sub_254656814();
            sub_25467F780();

            if (*(v34 + 184))
            {
              v35 = swift_dynamicCastClass();
              if (v35)
              {
                if (*(v35 + 184) == 1)
                {
                  v36 = v35;
                  KeyPath = swift_getKeyPath();
                  MEMORY[0x28223BE20](KeyPath);
                  state64[28] = v36;
                  LOBYTE(vars8) = 0;
                  v43 = v36;
                  sub_25467F770();
                }

                else
                {
                  *(v35 + 184) = 0;
                }
              }

              v26 = *(v32 + 1);
              v27 = **v32;
              v43 = *v32;
              v28 = *(v26 + 224);

              v28(0, v27, v26);
            }

            v23 = v40;
            i = v39;
          }

          else
          {
          }

          ++v25;
          if (v31 == i)
          {
            goto LABEL_33;
          }
        }

        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        ;
      }

LABEL_33:
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_25465474C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void sub_2546547A0()
{
  if (*(v0 + 96))
  {

    v1 = sub_254646494();
    v2 = sub_254680440();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;

      [v1 hideAlertWithIdentifier:v2 forService:v4];

      swift_unknownObjectRelease();
      *(v0 + 88) = 0;
      *(v0 + 96) = 0;
    }

    else
    {
      __break(1u);
    }
  }
}

id *HoverTextCoordinator.deinit()
{
  sub_254655C4C((v0 + 6));

  return v0;
}

uint64_t HoverTextCoordinator.__deallocating_deinit()
{
  HoverTextCoordinator.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_2546548F4(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2546549EC;

  return v6(a1);
}

uint64_t sub_2546549EC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_254654AE4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60C060);
    v2 = sub_254680A30();
    v19 = v2;
    sub_2546809B0();
    v3 = sub_2546809E0();
    if (v3)
    {
      v4 = v3;
      sub_254626E64(0, &qword_27F60BB48);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        type metadata accessor for HoverTextRootViewController();
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_25467DEF8(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_2546807D0();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_2546809E0();
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

uint64_t sub_254654D1C(uint64_t a1)
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

  sub_2546809C0();
LABEL_9:
  result = sub_254680930();
  *v1 = result;
  return result;
}

uint64_t sub_254654DBC(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_2546809C0();
  }

  return sub_254680930();
}

uint64_t sub_254654E20(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_254654F14;

  return v5(v2 + 32);
}

uint64_t sub_254654F14()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_254655028(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = sub_25467F840();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &aBlock[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25467F810();
  swift_beginAccess();
  (*(v6 + 16))(v8, v9, v5);
  v10 = [objc_opt_self() mainRunLoop];
  v11 = objc_allocWithZone(type metadata accessor for AXRuntimeClient());
  *(v3 + 24) = AXRuntimeClient.init(logger:subscribeToNotifications:runloop:)(v8, &unk_28667B630, v10);
  *(v3 + 32) = [objc_allocWithZone(type metadata accessor for HoverTextEventHandler()) init];
  *(v3 + 40) = -1;
  swift_unknownObjectWeakInit();
  *(v3 + 56) = 0;
  v12 = MEMORY[0x277D84F90];
  *(v3 + 64) = sub_254645A90(MEMORY[0x277D84F90]);
  *(v3 + 72) = v12;
  *(v3 + 88) = 0;
  *(v3 + 96) = 0;
  *(v3 + 80) = 0;
  *(v3 + 104) = 0;
  swift_unknownObjectWeakAssign();
  *(v3 + 16) = a2 ^ 1;
  v13 = [objc_opt_self() sharedInstance];
  v14 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_254657364;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2546274BC;
  aBlock[3] = &block_descriptor_157;
  v15 = _Block_copy(aBlock);

  [v13 registerUpdateBlock:v15 forRetrieveSelector:sub_25467F760() withListener:v3];
  _Block_release(v15);

  return v3;
}

uint64_t sub_2546552D8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v8 = *(v1 + 40);
  v7 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_254657404;

  return sub_25464D8A4(a1, v4, v5, v6, v8, v7);
}

uint64_t sub_254655604(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v8 = *(v1 + 40);
  v7 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_254657404;

  return sub_25464E4A8(a1, v4, v5, v6, v8, v7);
}

uint64_t sub_2546556CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_254657404;

  return sub_25464C5CC(a1, v4, v5, v7, v6);
}

unint64_t sub_25465578C(unint64_t a1, uint64_t a2)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_16:
    v11 = a1;
    v12 = a2;
    v13 = sub_2546809C0();
    a2 = v12;
    v3 = v13;
    a1 = v11;
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  v5 = a1 & 0xC000000000000001;
  while (v3 != v4)
  {
    if (v5)
    {
      v7 = a1;
      v8 = a2;
      v9 = MEMORY[0x259C147A0](v4, a1);
      swift_unknownObjectRelease();
      a1 = v7;
      a2 = v8;
      if (v9 == v8)
      {
        return v4;
      }
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      if (*(a1 + 8 * v4 + 32) == a2)
      {
        return v4;
      }
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_15;
    }
  }

  return 0;
}

uint64_t sub_254655890(unint64_t *a1, uint64_t a2)
{
  v7 = *a1;
  v8 = sub_25465578C(*a1, a2);
  v10 = v8;
  if (v2)
  {
    return v10;
  }

  if (v9)
  {
    if (v7 >> 62)
    {
      return sub_2546809C0();
    }

    return *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v7 >> 62)
    {
      if (v11 == sub_2546809C0())
      {
        return v10;
      }
    }

    else if (v11 == *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v10;
    }

    if ((v7 & 0xC000000000000001) == 0)
    {
      break;
    }

    v21 = MEMORY[0x259C147A0](v11, v7);
    swift_unknownObjectRelease();
    if (v21 != a2)
    {
      if (v10 != v11)
      {
        v3 = MEMORY[0x259C147A0](v10, v7);
        v17 = MEMORY[0x259C147A0](v11, v7);
        goto LABEL_21;
      }

LABEL_9:
      v14 = __OFADD__(v10++, 1);
      if (v14)
      {
        goto LABEL_42;
      }
    }

LABEL_10:
    v14 = __OFADD__(v11++, 1);
    if (v14)
    {
      goto LABEL_41;
    }
  }

  if ((v11 & 0x8000000000000000) == 0)
  {
    v15 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11 >= v15)
    {
      goto LABEL_40;
    }

    v16 = *(v7 + 32 + 8 * v11);
    if (v16 != a2)
    {
      if (v10 != v11)
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_43;
        }

        if (v10 >= v15)
        {
          goto LABEL_44;
        }

        v3 = *(v7 + 32 + 8 * v10);
        v17 = v16;
LABEL_21:
        v18 = v17;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
        {
          v7 = sub_254654DBC(v7);
          v19 = (v7 >> 62) & 1;
        }

        else
        {
          LODWORD(v19) = 0;
        }

        v4 = v7 & 0xFFFFFFFFFFFFFF8;
        v20 = *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20);
        *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20) = v18;

        if ((v7 & 0x8000000000000000) != 0 || v19)
        {
          v7 = sub_254654DBC(v7);
          v4 = v7 & 0xFFFFFFFFFFFFFF8;
          if ((v11 & 0x8000000000000000) != 0)
          {
LABEL_37:
            __break(1u);
            return v10;
          }
        }

        else if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        if (v11 >= *(v4 + 16))
        {
          goto LABEL_45;
        }

LABEL_8:
        v12 = v4 + 8 * v11;
        v13 = *(v12 + 32);
        *(v12 + 32) = v3;

        *a1 = v7;
      }

      goto LABEL_9;
    }

    goto LABEL_10;
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return sub_2546809C0();
}

uint64_t sub_254655AB4(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v4 = a1;
    v5 = *v3;
    v6 = *v3 >> 62;
    if (!v6)
    {
      result = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_2546809C0();
  if (result < v2)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v2, v4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v4 - v2;
  if (__OFSUB__(0, v2 - v4))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v6)
  {
    v9 = sub_2546809C0();
  }

  else
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (v10)
  {
    goto LABEL_18;
  }

  sub_254654D1C(result);

  return sub_254632ACC(v4, v2, 0);
}

uint64_t sub_254655B8C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_254657404;

  return sub_25464D330(a1, v4, v5, v7, v6);
}

uint64_t sub_254655C98(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_254657404;

  return sub_2546548F4(a1, v4);
}

unint64_t sub_254655D68()
{
  result = qword_27F60C030;
  if (!qword_27F60C030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F60C030);
  }

  return result;
}

uint64_t objectdestroy_9Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_254655E04(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_254657404;

  return sub_2546507E4(a1, v4, v5, v6);
}

uint64_t type metadata accessor for HoverTextCoordinator.ViewControllerUpdateEvent()
{
  result = qword_27F60C068;
  if (!qword_27F60C068)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_254655F04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_254655F64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HoverTextPresentationEvent();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_254655FD0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_254657404;

  return sub_2546504D4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_254656098(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_254656100(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_254657404;

  return sub_25464FE60(a1, v4, v5, v6);
}

void sub_2546561B4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7 < 0)
  {
  }

  else
  {
  }
}

uint64_t sub_2546561C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[11];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_254657404;

  return sub_25464FA0C(a1, v4, v5, (v1 + 4), v6);
}

uint64_t sub_254656284(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_254656354;

  return sub_2546529A8(v7, v8, a1, v4, v5, v6);
}

uint64_t sub_254656354()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_254656448(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_254657404;

  return sub_2546526C0(a1, v4, v5, v6);
}

uint64_t sub_2546564FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_254657404;

  return sub_2546523D8(a1, v4, v5, v6);
}

uint64_t sub_2546565B0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_254657404;

  return sub_254652130(a1, v4, v5, v6);
}

uint64_t sub_254656664(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40) | (*(v1 + 44) << 32);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_254657404;

  return sub_254651FAC(a1, v4, v5, v6, v7);
}

uint64_t sub_254656738(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_254657404;

  return sub_254654E20(a1, v4);
}

unint64_t sub_254656814()
{
  result = qword_27F60C050;
  if (!qword_27F60C050)
  {
    type metadata accessor for HoverTextStore();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F60C050);
  }

  return result;
}

uint64_t sub_25465686C(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = v1[4];
  v7 = v1[5];
  v8 = *(v1 + 6);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_254657404;

  return sub_2546534F4(v6, v7, a1, v4, v5, v8);
}

uint64_t sub_254656950(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = v1[5];
  v8 = v1[6];
  v9 = *(v1 + 7);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_254657404;

  return sub_254652F8C(v7, v8, a1, v4, v5, v6, v9);
}

uint64_t objectdestroy_102Tm(uint64_t a1)
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_254656A7C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_254657404;

  return sub_2546519D8(v7, v8, a1, v4, v5, v6, v9, v10);
}

uint64_t block_copy_helper_112(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_14Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_254656C1C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_254657404;

  return sub_254652C9C(a1, v4, v5, v7, v6);
}

uint64_t sub_254656CDC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_254657404;

  return sub_2546516F4(a1, v4, v5, v6);
}

uint64_t sub_254656D90(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_254657404;

  return sub_254651400(a1, v4, v5, v6, v7);
}

uint64_t sub_254656E54(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_254657404;

  return sub_25465111C(a1, v4, v5, v6);
}

uint64_t sub_254656F08(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_254657404;

  return sub_254650E38(a1, v4, v5, v6);
}

uint64_t objectdestroy_46Tm(uint64_t a1)
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_254657008(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_254657404;

  return sub_254650B54(a1, v4, v5, v6);
}

uint64_t sub_2546570BC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 56);
  v9 = *(v1 + 48);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_254657404;

  return sub_254650154(a1, v4, v5, v6, v7, v9, v8, v1 + 64);
}

uint64_t objectdestroy_3Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_25465729C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v8 = *(v1 + 40);
  v7 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_254656354;

  return sub_25464D8A4(a1, v4, v5, v6, v8, v7);
}

uint64_t sub_254657394()
{
  v0 = type metadata accessor for HoverTextPresentationEvent();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_254657448(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_254657490(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2546574FC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25465B738(&qword_27F60C050, type metadata accessor for HoverTextStore);
  sub_25467F780();

  v4 = *(v3 + 104);
  *a2 = *(v3 + 96);
  a2[1] = v4;
}

uint64_t sub_2546575A8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_25461AEE8(v1, v2);
}

uint64_t sub_2546575E8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25465B738(&qword_27F60C050, type metadata accessor for HoverTextStore);
  sub_25467F780();

  *a2 = *(v3 + 136);
}

uint64_t sub_254657694()
{
  swift_getKeyPath();
  sub_25465B738(&qword_27F60C050, type metadata accessor for HoverTextStore);
  sub_25467F770();
}

uint64_t sub_254657760@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25465B738(&qword_27F60C050, type metadata accessor for HoverTextStore);
  sub_25467F780();

  *a2 = *(v3 + 192);
  return result;
}

uint64_t sub_25465785C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25465B738(&qword_27F60C050, type metadata accessor for HoverTextStore);
  sub_25467F780();

  *a2 = *(v3 + OBJC_IVAR____TtC11HoverTextUI14HoverTextStore__contentType);
  return result;
}

uint64_t sub_254657934@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25465B738(&qword_27F60C050, type metadata accessor for HoverTextStore);
  sub_25467F780();

  *a2 = *(v3 + OBJC_IVAR____TtC11HoverTextUI14HoverTextStore__colorPreview);
}

uint64_t sub_254657A28@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, uint64_t a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_25465B738(&qword_27F60C050, type metadata accessor for HoverTextStore);
  sub_25467F780();

  v6 = *a2;
  swift_beginAccess();
  v7 = sub_25467F5A0();
  return (*(*(v7 - 8) + 16))(a3, v5 + v6, v7);
}

uint64_t sub_254657B3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  sub_25467F5A0();
  MEMORY[0x28223BE20]();
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, a1);
  return a5(v8);
}

double sub_254657C10(uint64_t a1)
{
  v57 = sub_25467F550();
  v2 = *(v57 - 8);
  v3 = MEMORY[0x28223BE20](v57);
  v58 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v48 - v5;
  v7 = sub_25467F4F0();
  v53 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v56 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25467F5A0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v13 = OBJC_IVAR____TtC11HoverTextUI14HoverTextStore___observationRegistrar;
  v62 = a1;
  v59 = sub_25465B738(&qword_27F60C050, type metadata accessor for HoverTextStore);
  sub_25467F780();

  v51 = v2;
  v52 = OBJC_IVAR____TtC11HoverTextUI14HoverTextStore__contentType;
  v14 = *(a1 + OBJC_IVAR____TtC11HoverTextUI14HoverTextStore__contentType);
  v54 = v12;
  v55 = v10;
  if (v14)
  {
    swift_getKeyPath();
    v62 = a1;
    sub_25467F780();

    v15 = OBJC_IVAR____TtC11HoverTextUI14HoverTextStore__colorDescription;
    swift_beginAccess();
    v16 = *(v10 + 16);
    v49 = v9;
    v16(v12, a1 + v15, v9);
    v17 = v7;
    v18 = v56;
    sub_25467F4A0();
    sub_25465B738(&qword_27F60B6B0, MEMORY[0x277CC8B30]);
    sub_254680670();
    v19 = v58;
    sub_254680690();
    sub_25465B738(&qword_27F60B6B8, MEMORY[0x277CC8C20]);
    v20 = v57;
    v21 = sub_254680430();
    v50 = v13;
    v22 = v21;
    v23 = v2;
    v24 = v6;
    v25 = v12;
    v26 = *(v23 + 8);
    v26(v19, v20);
    v26(v24, v20);
    v27 = v53;
    (*(v53 + 8))(v18, v17);
    v28 = v55;
    v29 = v49;
    (*(v55 + 8))(v25, v49);
    if (v22)
    {
      v30 = 0.0;
    }

    else
    {
      v30 = 1.0;
    }

    v31 = v17;
    v32 = v27;
    v9 = v29;
  }

  else
  {
    v28 = v10;
    v30 = 0.0;
    v24 = v6;
    v31 = v7;
    v32 = v53;
  }

  swift_getKeyPath();
  v61 = a1;
  sub_25467F780();

  if (*(a1 + v52) == 1 || (swift_getKeyPath(), v61 = a1, sub_25467F780(), , v33 = OBJC_IVAR____TtC11HoverTextUI14HoverTextStore__displayText, swift_beginAccess(), (*(v28 + 16))(v54, a1 + v33, v9), v34 = v56, sub_25467F4A0(), sub_25465B738(&qword_27F60B6B0, MEMORY[0x277CC8B30]), sub_254680670(), v48 = v31, v35 = v9, v36 = v34, v37 = v32, v38 = v57, v39 = v58, sub_254680690(), sub_25465B738(&qword_27F60B6B8, MEMORY[0x277CC8C20]), LODWORD(v53) = sub_254680430(), v40 = *(v51 + 8), v40(v39, v38), v40(v24, v38), (*(v37 + 8))(v36, v48), (*(v55 + 8))(v54, v35), v41 = 1.0, (v53 & 1) != 0))
  {
    v41 = 0.0;
  }

  v42 = v30 + v41;
  swift_getKeyPath();
  v60 = a1;
  sub_25467F780();

  v43 = *(a1 + OBJC_IVAR____TtC11HoverTextUI14HoverTextStore__uiFont);
  Ascent = CTFontGetAscent(v43);
  v45 = Ascent + CTFontGetDescent(v43);
  Leading = CTFontGetLeading(v43);

  return v42 * (v45 + Leading);
}

uint64_t sub_2546582F0@<X0>(char *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>)
{
  v91 = a2;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60C090);
  MEMORY[0x28223BE20](v78);
  v81 = &v75 - v9;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60C098);
  MEMORY[0x28223BE20](v80);
  v75 = &v75 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60C0A0);
  v89 = *(v11 - 8);
  v90 = v11;
  MEMORY[0x28223BE20](v11);
  v79 = &v75 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60C0A8);
  MEMORY[0x28223BE20](v13 - 8);
  v76 = (&v75 - v14);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60C0B0);
  MEMORY[0x28223BE20](v85);
  v77 = &v75 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60C0B8);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v88 = &v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v87 = &v75 - v19;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60C0C0);
  v20 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v22 = &v75 - v21;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60C0C8);
  v23 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v25 = &v75 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60C0D0);
  v27 = MEMORY[0x28223BE20](v26 - 8);
  v86 = &v75 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v84 = &v75 - v29;
  swift_getKeyPath();
  *&v92 = a1;
  sub_25465B738(&qword_27F60C050, type metadata accessor for HoverTextStore);
  sub_25467F780();

  v30 = OBJC_IVAR____TtC11HoverTextUI14HoverTextStore__contentType;
  if (*&a1[OBJC_IVAR____TtC11HoverTextUI14HoverTextStore__contentType] == 1 || (swift_getKeyPath(), *&v92 = a1, sub_25467F780(), , *&a1[v30] == 2))
  {
    swift_getKeyPath();
    *&v92 = a1;
    sub_25467F780();

    v31 = *&a1[OBJC_IVAR____TtC11HoverTextUI14HoverTextStore__colorPreview];
    v32 = 1;
    if (v31)
    {

      *v22 = sub_25467FBF0();
      *(v22 + 1) = 0;
      v22[16] = 1;
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60C100);
      sub_254658E24(v31, a1, &v22[*(v33 + 44)], a3, a4, a5);

      sub_25462CC24(v22, v25, &qword_27F60C0C0);
      v32 = 0;
    }

    v34 = v85;
    (*(v20 + 56))(v25, v32, 1, v82);
    v35 = v25;
    v36 = v84;
    sub_25462CC24(v35, v84, &qword_27F60C0C8);
    v37 = 0;
  }

  else
  {
    v37 = 1;
    v34 = v85;
    v36 = v84;
  }

  (*(v23 + 56))(v36, v37, 1, v83);
  swift_getKeyPath();
  *&v92 = a1;
  sub_25467F780();

  if (*&a1[v30] && (swift_getKeyPath(), *&v92 = a1, sub_25467F780(), , *&a1[v30] != 2))
  {
    v69 = 1;
    v68 = v87;
  }

  else
  {
    v38 = sub_25467FBF0();
    v39 = v76;
    *v76 = v38;
    *(v39 + 8) = 0;
    *(v39 + 16) = 1;
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60C0E0);
    sub_254659CC0(a1, v39 + *(v40 + 44), a3, a4, a5);
    sub_25465AE9C(a1);
    sub_25465B288(a1);
    v41 = objc_opt_self();
    v42 = [v41 mainScreen];
    [v42 bounds];
    v44 = v43;
    v46 = v45;
    v48 = v47;
    v50 = v49;

    v95.origin.x = v44;
    v95.origin.y = v46;
    v95.size.width = v48;
    v95.size.height = v50;
    CGRectGetWidth(v95);
    sub_254680250();
    sub_25467F990();
    v51 = v77;
    sub_25462CC24(v39, v77, &qword_27F60C0A8);
    v52 = (v51 + *(v34 + 36));
    v53 = v93;
    *v52 = v92;
    v52[1] = v53;
    v52[2] = v94;
    v85 = *&a5;
    sub_25465AE9C(a1);
    v55 = v54;
    v56 = [v41 mainScreen];
    [v56 bounds];
    v58 = v57;
    v60 = v59;
    v62 = v61;
    v64 = v63;

    v96.origin.x = v58;
    v96.origin.y = v60;
    v96.size.width = v62;
    v96.size.height = v64;
    if (CGRectGetWidth(v96) * 0.1 >= v55 || (sub_25465AE9C(a1), v65 >= sub_25465B288(a1)))
    {
      sub_25462CC8C(v51, v81, &qword_27F60C0B0);
      swift_storeEnumTagMultiPayload();
      sub_25465B540();
      sub_25465B5CC();
      v67 = v79;
      sub_25467FCC0();
    }

    else
    {
      v66 = v75;
      sub_25462CC8C(v51, v75, &qword_27F60C0B0);
      *(v66 + *(v80 + 36)) = 1;
      sub_25462CC8C(v66, v81, &qword_27F60C098);
      swift_storeEnumTagMultiPayload();
      sub_25465B540();
      sub_25465B5CC();
      v67 = v79;
      sub_25467FCC0();
      sub_254626CC4(v66, &qword_27F60C098);
    }

    v68 = v87;
    sub_254626CC4(v51, &qword_27F60C0B0);
    sub_25462CC24(v67, v68, &qword_27F60C0A0);
    v69 = 0;
  }

  (*(v89 + 56))(v68, v69, 1, v90);
  v70 = v86;
  sub_25462CC8C(v36, v86, &qword_27F60C0D0);
  v71 = v88;
  sub_25462CC8C(v68, v88, &qword_27F60C0B8);
  v72 = v91;
  sub_25462CC8C(v70, v91, &qword_27F60C0D0);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60C0D8);
  sub_25462CC8C(v71, v72 + *(v73 + 48), &qword_27F60C0B8);
  sub_254626CC4(v68, &qword_27F60C0B8);
  sub_254626CC4(v36, &qword_27F60C0D0);
  sub_254626CC4(v71, &qword_27F60C0B8);
  return sub_254626CC4(v70, &qword_27F60C0D0);
}

uint64_t sub_254658E24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>)
{
  v86 = a3;
  v11 = sub_25467F5A0();
  v90 = *(v11 - 8);
  v91 = v11;
  MEMORY[0x28223BE20](v11);
  v88 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60C108);
  MEMORY[0x28223BE20](v13 - 8);
  v97 = (&v75 - v14);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60C110);
  v15 = MEMORY[0x28223BE20](v83);
  v85 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v82 = &v75 - v18;
  MEMORY[0x28223BE20](v17);
  v84 = &v75 - v19;
  swift_getKeyPath();
  v20 = OBJC_IVAR____TtC11HoverTextUI14HoverTextStore___observationRegistrar;
  *&v102 = a2;
  v21 = sub_25465B738(&qword_27F60C050, type metadata accessor for HoverTextStore);
  sub_25467F780();

  v22 = OBJC_IVAR____TtC11HoverTextUI14HoverTextStore__uiFont;
  v23 = *(a2 + OBJC_IVAR____TtC11HoverTextUI14HoverTextStore__uiFont);
  CTFontGetAscent(v23);
  CTFontGetDescent(v23);
  CTFontGetLeading(v23);

  swift_getKeyPath();
  *&v102 = a2;
  sub_25467F780();

  v89 = v22;
  v24 = *(a2 + v22);
  CTFontGetAscent(v24);
  CTFontGetDescent(v24);
  CTFontGetLeading(v24);

  sub_254680270();
  sub_25467F990();
  v92 = v117;
  v94 = v119;
  v81 = v121;
  v96 = v122;
  v93 = v118;
  LOBYTE(v123) = v118;
  v95 = v120;
  v115 = v120;
  v87 = a1;

  v25 = sub_254680250();
  v27 = v26;
  sub_254659924(a2, &v98);
  v126[2] = v100;
  v126[3] = *v101;
  *&v116[38] = v100;
  v126[0] = v98;
  *&v116[54] = *v101;
  *&v116[6] = v98;
  v126[1] = v99;
  *&v127 = *&v101[16];
  *(&v127 + 1) = v25;
  *&v116[22] = v99;
  *&v116[70] = v127;
  v128 = v27;
  *&v116[86] = v27;
  v129[2] = v100;
  v129[3] = *v101;
  v129[0] = v98;
  v129[1] = v99;
  v130 = *&v101[16];
  v131 = v25;
  v132 = v27;
  sub_25462CC8C(v126, &v102, &qword_27F60C118);
  sub_254626CC4(v129, &qword_27F60C118);
  swift_getKeyPath();
  *&v102 = a2;
  sub_25467F780();

  v28 = OBJC_IVAR____TtC11HoverTextUI14HoverTextStore__colorDescription;
  swift_beginAccess();
  (*(v90 + 16))(v88, a2 + v28, v91);
  v88 = sub_25467FE50();
  v79 = v29;
  v80 = v30;
  v78 = v31;
  swift_getKeyPath();
  *&v102 = a2;
  v90 = v21;
  v91 = v20;
  sub_25467F780();

  v32 = *(a2 + 192);
  v33 = 1.0;
  v34 = 1.0;
  if (v32 <= 4)
  {
    v34 = dbl_254684628[v32];
  }

  swift_getKeyPath();
  *&v102 = a2;
  sub_25467F780();

  [*(a2 + v89) pointSize];
  v36 = v35;
  swift_getKeyPath();
  *&v102 = a2;
  sub_25467F780();

  v37 = *(a2 + 192);
  if (v37 <= 4)
  {
    v33 = dbl_254684628[v37];
  }

  v38 = swift_allocObject();
  v77 = v38;
  *(v38 + 16) = a2;
  *(v38 + 24) = a4;
  *(v38 + 32) = a5;
  *(v38 + 40) = a6;
  v39 = swift_allocObject();
  v76 = v39;
  *(v39 + 16) = a2;
  *(v39 + 24) = a4;
  *(v39 + 32) = a5;
  *(v39 + 40) = a6;
  swift_retain_n();
  v75 = sub_25467FC60();
  v40 = sub_25467FC60();
  v41 = v97;
  *v97 = v40;
  v41[1] = 0;
  *(v41 + 16) = 1;
  v42 = (v41 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60C120) + 44));
  v43 = swift_allocObject();
  v44 = v88;
  v46 = v79;
  v45 = v80;
  *(v43 + 16) = v88;
  *(v43 + 24) = v46;
  v78 &= 1u;
  *(v43 + 32) = v78;
  *(v43 + 40) = v45;
  *v42 = 12.0;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60C128);
  v48 = v47[16];
  *(v42 + v48) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60B418);
  swift_storeEnumTagMultiPayload();
  v49 = v42 + v47[17];
  v98 = 0uLL;
  v50 = v44;
  LOBYTE(v44) = v78;
  sub_254643DEC(v50, v46, v78);
  type metadata accessor for CGSize(0);

  sub_254680120();
  v51 = v103;
  *v49 = v102;
  *(v49 + 2) = v51;
  v52 = v42 + v47[18];
  *&v98 = 0;
  sub_254680120();
  v53 = *(&v102 + 1);
  *v52 = v102;
  *(v52 + 1) = v53;
  v54 = v47[19];
  *&v98 = 0;
  sub_254680120();
  sub_25462F1CC(v88, v46, v44);

  *(v42 + v54) = v102;
  v42[1] = 2.0 / v34;
  v42[2] = v36 * 2.8125;
  v42[3] = v33;
  v55 = v75;
  *(v42 + 9) = sub_25465B6CC;
  *(v42 + 10) = v43;
  *(v42 + 4) = v55;
  *(v42 + 5) = sub_25465B684;
  v56 = v76;
  *(v42 + 6) = v77;
  *(v42 + 7) = sub_25465B6A8;
  *(v42 + 8) = v56;
  sub_254659A44(a2);
  swift_getKeyPath();
  *&v102 = a2;
  sub_25467F780();

  v57 = *(a2 + v89);
  CTFontGetAscent(v57);
  CTFontGetDescent(v57);
  CTFontGetLeading(v57);

  sub_254680260();
  sub_25467F990();
  v58 = v82;
  sub_25462CC24(v97, v82, &qword_27F60C108);
  v59 = v84;
  v60 = (v58 + *(v83 + 36));
  v61 = v124;
  *v60 = v123;
  v60[1] = v61;
  v60[2] = v125;
  sub_25462CC24(v58, v59, &qword_27F60C110);
  v62 = v85;
  sub_25462CC8C(v59, v85, &qword_27F60C110);
  v63 = v87;
  *&v98 = v87;
  *(&v98 + 1) = v92;
  LOBYTE(v99) = v93;
  *(&v99 + 1) = v134[0];
  DWORD1(v99) = *(v134 + 3);
  *(&v99 + 1) = v94;
  LOBYTE(v100) = v95;
  *(&v100 + 1) = *v133;
  DWORD1(v100) = *&v133[3];
  v64 = v81;
  *(&v100 + 1) = v81;
  *v101 = v96;
  *&v101[8] = 256;
  *&v101[26] = *&v116[16];
  *&v101[10] = *v116;
  *&v101[88] = *&v116[78];
  *&v101[74] = *&v116[64];
  *&v101[58] = *&v116[48];
  *&v101[42] = *&v116[32];
  v65 = v99;
  v66 = v86;
  *v86 = v98;
  v66[1] = v65;
  v67 = v100;
  v68 = *v101;
  v69 = *&v101[32];
  v66[4] = *&v101[16];
  v66[5] = v69;
  v66[2] = v67;
  v66[3] = v68;
  v70 = *&v101[48];
  v71 = *&v101[64];
  v72 = *&v101[80];
  *(v66 + 18) = *&v101[96];
  v66[7] = v71;
  v66[8] = v72;
  v66[6] = v70;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60C130);
  sub_25462CC8C(v62, v66 + *(v73 + 48), &qword_27F60C110);
  sub_25462CC8C(&v98, &v102, &qword_27F60C138);
  sub_254626CC4(v59, &qword_27F60C110);
  sub_254626CC4(v62, &qword_27F60C110);
  v112 = *&v116[32];
  v113 = *&v116[48];
  *v114 = *&v116[64];
  *&v114[14] = *&v116[78];
  v110 = *v116;
  *&v102 = v63;
  *(&v102 + 1) = v92;
  LOBYTE(v103) = v93;
  *(&v103 + 1) = v134[0];
  HIDWORD(v103) = *(v134 + 3);
  v104 = v94;
  v105 = v95;
  *v106 = *v133;
  *&v106[3] = *&v133[3];
  v107 = v64;
  v108 = v96;
  v109 = 256;
  v111 = *&v116[16];
  return sub_254626CC4(&v102, &qword_27F60C138);
}

double sub_254659924@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_getKeyPath();
  sub_25465B738(&qword_27F60C050, type metadata accessor for HoverTextStore);
  sub_25467F780();

  v4 = *(a1 + OBJC_IVAR____TtC11HoverTextUI14HoverTextStore__borderColor);

  sub_25467F950();
  v5 = sub_254680250();
  result = v8;
  *a2 = a1;
  *(a2 + 8) = v8;
  *(a2 + 16) = v9;
  *(a2 + 24) = v10;
  *(a2 + 32) = v11;
  *(a2 + 40) = v4;
  *(a2 + 48) = 256;
  *(a2 + 56) = v5;
  *(a2 + 64) = v7;
  return result;
}

void sub_254659A44(uint64_t a1)
{
  v2 = sub_25467F5A0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v17[1] = a1;
  sub_25465B738(&qword_27F60C050, type metadata accessor for HoverTextStore);
  sub_25467F780();

  v6 = OBJC_IVAR____TtC11HoverTextUI14HoverTextStore__colorDescription;
  swift_beginAccess();
  (*(v3 + 16))(v5, a1 + v6, v2);
  swift_getKeyPath();
  v17[0] = a1;
  sub_25467F780();

  v7 = *(a1 + OBJC_IVAR____TtC11HoverTextUI14HoverTextStore__uiFont);
  sub_25462EFBC(v7);

  (*(v3 + 8))(v5, v2);
  sub_25465B288(a1);
  v8 = [objc_opt_self() mainScreen];
  [v8 bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v18.origin.x = v10;
  v18.origin.y = v12;
  v18.size.width = v14;
  v18.size.height = v16;
  CGRectGetWidth(v18);
}

uint64_t sub_254659CC0@<X0>(char *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>)
{
  v130 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60C108);
  MEMORY[0x28223BE20](v9 - 8);
  v125 = (&v114 - v10);
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60C110);
  v126 = *(v127 - 8);
  v11 = MEMORY[0x28223BE20](v127);
  v117 = &v114 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v116 = &v114 - v13;
  v14 = sub_25467F550();
  v124 = *(v14 - 8);
  v15 = MEMORY[0x28223BE20](v14);
  v121 = &v114 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v120 = &v114 - v17;
  v18 = sub_25467F4F0();
  v122 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v114 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_25467F5A0();
  v118 = v21;
  v119 = *(v21 - 8);
  v22 = v119;
  MEMORY[0x28223BE20](v21);
  v24 = &v114 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60C140);
  v26 = MEMORY[0x28223BE20](v25 - 8);
  v129 = &v114 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v128 = &v114 - v28;
  swift_getKeyPath();
  v29 = OBJC_IVAR____TtC11HoverTextUI14HoverTextStore___observationRegistrar;
  *&v137 = a1;
  v30 = sub_25465B738(&qword_27F60C050, type metadata accessor for HoverTextStore);
  v132 = v29;
  v131 = v30;
  sub_25467F780();

  v31 = OBJC_IVAR____TtC11HoverTextUI14HoverTextStore__displayText;
  swift_beginAccess();
  v32 = *(v22 + 16);
  v123 = a1;
  v115 = v31;
  v114 = v32;
  v32(v24, &a1[v31], v21);
  sub_25467F4A0();
  sub_25465B738(&qword_27F60B6B0, MEMORY[0x277CC8B30]);
  v33 = v120;
  sub_254680670();
  v34 = v121;
  sub_254680690();
  sub_25465B738(&qword_27F60B6B8, MEMORY[0x277CC8C20]);
  LOBYTE(v31) = sub_254680430();
  v35 = *(v124 + 8);
  v35(v34, v14);
  v35(v33, v14);
  v36 = v20;
  v37 = v118;
  (*(v122 + 8))(v36, v18);
  (*(v119 + 8))(v24, v37);
  if (v31)
  {
    v38 = 1;
    v39 = v128;
    v40 = v127;
    v41 = v123;
  }

  else
  {
    swift_getKeyPath();
    v41 = v123;
    *&v137 = v123;
    sub_25467F780();

    v114(v24, &v41[v115], v37);
    v42 = sub_25467FE50();
    v44 = v43;
    v46 = v45;
    swift_getKeyPath();
    *&v137 = v41;
    sub_25467F780();

    v47 = OBJC_IVAR____TtC11HoverTextUI14HoverTextStore__uiFont;
    v48 = *&v41[OBJC_IVAR____TtC11HoverTextUI14HoverTextStore__uiFont];
    sub_25467FDA0();
    v120 = sub_25467FDF0();
    v121 = v49;
    LODWORD(v119) = v50;
    v122 = v51;

    sub_25462F1CC(v42, v44, v46 & 1);

    swift_getKeyPath();
    *&v137 = v41;
    sub_25467F780();

    v52 = *(v41 + 24);
    v53 = 1.0;
    v54 = 1.0;
    if (v52 <= 4)
    {
      v54 = dbl_254684628[v52];
    }

    swift_getKeyPath();
    *&v137 = v41;
    sub_25467F780();

    v124 = v47;
    [*&v41[v47] pointSize];
    v56 = v55;
    swift_getKeyPath();
    *&v137 = v41;
    sub_25467F780();

    v57 = *(v41 + 24);
    if (v57 <= 4)
    {
      v53 = dbl_254684628[v57];
    }

    v58 = swift_allocObject();
    v118 = v58;
    *(v58 + 16) = v41;
    *(v58 + 24) = a3;
    *(v58 + 32) = a4;
    *(v58 + 40) = a5;
    v59 = swift_allocObject();
    v115 = v59;
    *(v59 + 16) = v41;
    *(v59 + 24) = a3;
    *(v59 + 32) = a4;
    *(v59 + 40) = a5;
    swift_retain_n();
    v114 = sub_25467FC60();
    v60 = sub_25467FC60();
    v61 = v125;
    *v125 = v60;
    v61[1] = 0;
    *(v61 + 16) = 1;
    v62 = (v61 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60C120) + 44));
    v63 = swift_allocObject();
    v64 = v120;
    v65 = v121;
    *(v63 + 16) = v120;
    *(v63 + 24) = v65;
    v66 = v119 & 1;
    *(v63 + 32) = v119 & 1;
    *(v63 + 40) = v122;
    *v62 = 12.0;
    v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60C128);
    v68 = v67[16];
    *(v62 + v68) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60B418);
    swift_storeEnumTagMultiPayload();
    v69 = v62 + v67[17];
    v133 = 0uLL;
    sub_254643DEC(v64, v65, v66);
    type metadata accessor for CGSize(0);

    sub_254680120();
    v70 = v138;
    *v69 = v137;
    *(v69 + 2) = v70;
    v71 = v62 + v67[18];
    *&v133 = 0;
    sub_254680120();
    v72 = *(&v137 + 1);
    *v71 = v137;
    *(v71 + 1) = v72;
    v73 = v67[19];
    *&v133 = 0;
    sub_254680120();
    sub_25462F1CC(v64, v65, v66);

    *(v62 + v73) = v137;
    v62[1] = 2.0 / v54;
    v62[2] = v56 * 2.8125;
    v62[3] = v53;
    v74 = v114;
    *(v62 + 9) = sub_25465B974;
    *(v62 + 10) = v63;
    *(v62 + 4) = v74;
    *(v62 + 5) = sub_25465B978;
    *(v62 + 6) = v118;
    *(v62 + 7) = sub_25465B97C;
    *(v62 + 8) = v115;
    swift_getKeyPath();
    *&v137 = v41;
    sub_25467F780();

    v75 = *&v41[v124];
    CTFontGetAscent(v75);
    CTFontGetDescent(v75);
    CTFontGetLeading(v75);

    sub_254680250();
    sub_25467F990();
    v76 = v117;
    sub_25462CC24(v125, v117, &qword_27F60C108);
    v40 = v127;
    v77 = (v76 + *(v127 + 36));
    v78 = v147;
    *v77 = v146;
    v77[1] = v78;
    v77[2] = v148;
    v79 = v76;
    v80 = v116;
    sub_25462CC24(v79, v116, &qword_27F60C110);
    v39 = v128;
    sub_25462CC24(v80, v128, &qword_27F60C110);
    v38 = 0;
  }

  (*(v126 + 56))(v39, v38, 1, v40);
  swift_getKeyPath();
  *&v137 = v41;
  sub_25467F780();

  v81 = *(v41 + 13);
  if (v81)
  {
    *&v137 = *(v41 + 12);
    *(&v137 + 1) = v81;
    sub_25462C080();

    v82 = sub_25467FE60();
    v84 = v83;
    v86 = v85;
    swift_getKeyPath();
    *&v137 = v41;
    sub_25467F780();

    v87 = *&v41[OBJC_IVAR____TtC11HoverTextUI14HoverTextStore__uiFont];
    sub_25467FDA0();
    v132 = sub_25467FDF0();
    v131 = v88;
    v90 = v89;
    v128 = v91;

    sub_25462F1CC(v82, v84, v86 & 1);

    v92 = sub_25467FD70();
    sub_25467F8D0();
    v94 = v93;
    v96 = v95;
    v98 = v97;
    v100 = v99;
    LOBYTE(v137) = v90 & 1;
    LOBYTE(v133) = 0;
    v101 = v90 & 1;
    v102 = v92;
  }

  else
  {
    v132 = 0;
    v131 = 0;
    v128 = 0;
    v102 = 0;
    v101 = 0;
    v94 = 0;
    v96 = 0;
    v98 = 0;
    v100 = 0;
  }

  v103 = v39;
  v104 = v39;
  v105 = v129;
  sub_25462CC8C(v103, v129, &qword_27F60C140);
  v106 = v130;
  sub_25462CC8C(v105, v130, &qword_27F60C140);
  v107 = (v106 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60C148) + 48));
  v108 = v132;
  *&v133 = v132;
  v109 = v131;
  *(&v133 + 1) = v131;
  *&v134 = v101;
  v110 = v128;
  *(&v134 + 1) = v128;
  *&v135 = v102;
  *(&v135 + 1) = v94;
  *&v136[0] = v96;
  *(&v136[0] + 1) = v98;
  *&v136[1] = v100;
  BYTE8(v136[1]) = 0;
  v111 = v134;
  *v107 = v133;
  v107[1] = v111;
  v112 = v136[0];
  v107[2] = v135;
  v107[3] = v112;
  *(v107 + 57) = *(v136 + 9);
  sub_25462CC8C(&v133, &v137, &qword_27F60C150);
  sub_254626CC4(v104, &qword_27F60C140);
  *&v137 = v108;
  *(&v137 + 1) = v109;
  v138 = v101;
  v139 = v110;
  v140 = v102;
  v141 = v94;
  v142 = v96;
  v143 = v98;
  v144 = v100;
  v145 = 0;
  sub_254626CC4(&v137, &qword_27F60C150);
  return sub_254626CC4(v105, &qword_27F60C140);
}

uint64_t sub_25465AC0C(uint64_t a1)
{
  v2 = sub_25467F700();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v12[1] = a1;
  sub_25465B738(&qword_27F60C050, type metadata accessor for HoverTextStore);
  sub_25467F780();

  v7 = *(a1 + 136);
  if (v7)
  {
    v8 = *(v7 + 16);
    if (v8)
    {

      if (([v8 isValid] & 1) == 0)
      {
      }
    }

    else
    {
    }

    sub_25467F6F0();
    sub_25462D9A8();
    v10 = v9;
    (*(v3 + 8))(v5, v2);
    *(v7 + 40) = v10;
    v11 = *(v7 + 16);
    [v11 invalidate];
  }

  return result;
}

uint64_t sub_25465ADBC(uint64_t a1)
{
  swift_getKeyPath();
  sub_25465B738(&qword_27F60C050, type metadata accessor for HoverTextStore);
  sub_25467F780();

  v3 = *(a1 + 136);
  if (v3)
  {
    v4 = *(v3 + 16);
    if (v4)
    {

      if (([v4 isValid] & 1) == 0)
      {
        v5 = *(v3 + 40);
        if (v5 > 0.0)
        {
          sub_25462D81C(v5);
        }
      }
    }
  }

  return result;
}

void sub_25465AE9C(uint64_t a1)
{
  v2 = sub_25467F5A0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v18 = a1;
  sub_25465B738(&qword_27F60C050, type metadata accessor for HoverTextStore);
  sub_25467F780();

  v6 = OBJC_IVAR____TtC11HoverTextUI14HoverTextStore__displayText;
  swift_beginAccess();
  (*(v3 + 16))(v5, a1 + v6, v2);
  swift_getKeyPath();
  v17 = a1;
  sub_25467F780();

  v7 = OBJC_IVAR____TtC11HoverTextUI14HoverTextStore__uiFont;
  v8 = *(a1 + OBJC_IVAR____TtC11HoverTextUI14HoverTextStore__uiFont);
  sub_25462EFBC(v8);

  (*(v3 + 8))(v5, v2);
  swift_getKeyPath();
  v17 = a1;
  sub_25467F780();

  if (*(a1 + 104))
  {
    swift_getKeyPath();
    v17 = a1;
    sub_25467F780();

    if (*(a1 + 104))
    {
      swift_getKeyPath();
      v17 = a1;

      sub_25467F780();

      v9 = *(a1 + v7);
      v10 = sub_254680440();

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F60BF00);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_254683E60;
      v12 = *MEMORY[0x277D740A8];
      *(inited + 32) = *MEMORY[0x277D740A8];
      *(inited + 64) = sub_25465B6EC();
      *(inited + 40) = v9;
      v13 = v9;
      v14 = v12;
      sub_254645900(inited);
      swift_setDeallocating();
      sub_254626CC4(inited + 32, qword_27F60BF10);
      type metadata accessor for Key(0);
      sub_25465B738(&qword_27F60B6A0, type metadata accessor for Key);
      v15 = sub_2546803F0();

      [v10 sizeWithAttributes_];
    }

    else
    {
      __break(1u);
    }
  }
}

double sub_25465B288(uint64_t a1)
{
  v2 = [objc_opt_self() mainScreen];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v15.origin.x = v4;
  v15.origin.y = v6;
  v15.size.width = v8;
  v15.size.height = v10;
  Width = CGRectGetWidth(v15);
  swift_getKeyPath();
  sub_25465B738(&qword_27F60C050, type metadata accessor for HoverTextStore);
  sub_25467F780();

  v12 = OBJC_IVAR____TtC11HoverTextUI14HoverTextStore__displayMode;
  if (*(a1 + OBJC_IVAR____TtC11HoverTextUI14HoverTextStore__displayMode) && (swift_getKeyPath(), sub_25467F780(), , *(a1 + v12) != 1))
  {
    v13 = 0.8;
  }

  else
  {
    v13 = 0.95;
  }

  return Width * v13;
}

uint64_t sub_25465B404@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  *a1 = sub_25467FC60();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60C078);
  sub_2546582F0(v3, a1 + *(v7 + 44), v4, v5, v6);
  sub_254657C10(v3);
  sub_254680250();
  sub_25467F990();
  v8 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60C080) + 36));
  *v8 = v11;
  v8[1] = v12;
  v8[2] = v13;
  v9 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60C088) + 36);
  *v9 = 0x4024000000000000;
  *(v9 + 8) = v3;
  *(v9 + 16) = &off_28667BAD8;
  *(v9 + 24) = 1;
}

unint64_t sub_25465B540()
{
  result = qword_27F60C0E8;
  if (!qword_27F60C0E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F60C098);
    sub_25465B5CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F60C0E8);
  }

  return result;
}

unint64_t sub_25465B5CC()
{
  result = qword_27F60C0F0;
  if (!qword_27F60C0F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F60C0B0);
    sub_25462C9F0(&qword_27F60C0F8, &qword_27F60C0A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F60C0F0);
  }

  return result;
}

unint64_t sub_25465B6EC()
{
  result = qword_27F60B708;
  if (!qword_27F60B708)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F60B708);
  }

  return result;
}

uint64_t sub_25465B738(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_25Tm()
{
  sub_25462F1CC(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

unint64_t sub_25465B7DC()
{
  result = qword_27F60C158;
  if (!qword_27F60C158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F60C088);
    sub_25465B868();
    sub_25465B920();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F60C158);
  }

  return result;
}

unint64_t sub_25465B868()
{
  result = qword_27F60C160;
  if (!qword_27F60C160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F60C080);
    sub_25462C9F0(&qword_27F60C168, &qword_27F60C170);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F60C160);
  }

  return result;
}

unint64_t sub_25465B920()
{
  result = qword_27F60C178;
  if (!qword_27F60C178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F60C178);
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AXRuntimeClient.enableAccessibility()()
{
  v2 = OBJC_IVAR____TtC11HoverTextUI15AXRuntimeClient__isEnabled;
  if (*(v0 + OBJC_IVAR____TtC11HoverTextUI15AXRuntimeClient__isEnabled) == 1)
  {
    v3 = sub_25467F830();
    v4 = sub_254680710();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_254615000, v3, v4, "Accessibility already enabled", v5, 2u);
      MEMORY[0x259C155A0](v5, -1, -1);
    }
  }

  else
  {
    sub_25465C744();
    if (!v1)
    {
      *(v0 + v2) = 1;
    }
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AXRuntimeClient.disableAccessibility()()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC11HoverTextUI15AXRuntimeClient__isEnabled;
  if (*(v0 + OBJC_IVAR____TtC11HoverTextUI15AXRuntimeClient__isEnabled))
  {
    sub_25465CB88();
  }

  else
  {
    v3 = sub_25467F830();
    v4 = sub_254680710();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_254615000, v3, v4, "Accessibility already disabled", v5, 2u);
      MEMORY[0x259C155A0](v5, -1, -1);
    }
  }

  *(v1 + v2) = 0;
}

unint64_t AXRuntimeClientError.errorDescription.getter(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
    if (a3)
    {
      sub_254680910();
      v6 = 0x8000000254686960;
      v5 = 0xD000000000000029;
    }

    else
    {
      sub_254680910();
      v5 = 0xD00000000000001DLL;
      v6 = 0x8000000254686990;
    }

    goto LABEL_13;
  }

  if (a3 == 2)
  {
    sub_254680910();
    v4 = 0xD000000000000020;
    v3 = 0x8000000254686930;
    goto LABEL_8;
  }

  if (a3 == 3)
  {
    sub_254680910();
    v3 = 0x8000000254686900;
    v4 = 0xD000000000000029;
LABEL_8:
    MEMORY[0x259C14370](v4, v3);
    v7 = sub_254680A70();
    MEMORY[0x259C14370](v7);

    v5 = 0x3A7272457841202ELL;
    v6 = 0xE800000000000000;
LABEL_13:
    MEMORY[0x259C14370](v5, v6);
    type metadata accessor for AXError(0);
    sub_2546809A0();
    return 0;
  }

  if (a1 | a2)
  {
    return 0xD000000000000023;
  }

  else
  {
    return 0xD000000000000025;
  }
}

uint64_t FocusChangeInfo.label.getter()
{
  v1 = *v0;

  return v1;
}

__n128 FocusChangeInfo.frame.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  result = *(v1 + 16);
  v4 = *(v1 + 32);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

id AXRuntimeClient.init(logger:subscribeToNotifications:runloop:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = &v3[OBJC_IVAR____TtC11HoverTextUI15AXRuntimeClient_nativeFocusItemDidChange];
  *v8 = 0;
  v8[1] = 0;
  v9 = &v3[OBJC_IVAR____TtC11HoverTextUI15AXRuntimeClient_valueChanged];
  *v9 = 0;
  v9[1] = 0;
  v10 = &v3[OBJC_IVAR____TtC11HoverTextUI15AXRuntimeClient_elementVisualsUpdated];
  *v10 = 0;
  v10[1] = 0;
  v11 = &v3[OBJC_IVAR____TtC11HoverTextUI15AXRuntimeClient_focusedApplicationsDidChange];
  *v11 = 0;
  v11[1] = 0;
  v12 = &v3[OBJC_IVAR____TtC11HoverTextUI15AXRuntimeClient_didReceiveAnnouncement];
  *v12 = 0;
  v12[1] = 0;
  v13 = &v3[OBJC_IVAR____TtC11HoverTextUI15AXRuntimeClient_keyboardWillHide];
  *v13 = 0;
  v13[1] = 0;
  v14 = &v3[OBJC_IVAR____TtC11HoverTextUI15AXRuntimeClient_currentInputModeDidChange];
  *v14 = 0;
  v14[1] = 0;
  v15 = &v3[OBJC_IVAR____TtC11HoverTextUI15AXRuntimeClient_keyboardWillChangeFrame];
  *v15 = 0;
  v15[1] = 0;
  v16 = &v3[OBJC_IVAR____TtC11HoverTextUI15AXRuntimeClient_loupeStateChanged];
  *v16 = 0;
  v16[1] = 0;
  v17 = &v3[OBJC_IVAR____TtC11HoverTextUI15AXRuntimeClient_updateTypingDisplayMode];
  *v17 = 0;
  v17[1] = 0;
  v18 = &v3[OBJC_IVAR____TtC11HoverTextUI15AXRuntimeClient_didReceiveNotification];
  *v18 = 0;
  v18[1] = 0;
  v3[OBJC_IVAR____TtC11HoverTextUI15AXRuntimeClient__isEnabled] = 0;
  *&v3[OBJC_IVAR____TtC11HoverTextUI15AXRuntimeClient_axObserver] = 0;
  v3[OBJC_IVAR____TtC11HoverTextUI15AXRuntimeClient_pasteOccurred] = 0;
  v19 = OBJC_IVAR____TtC11HoverTextUI15AXRuntimeClient_logger;
  v20 = sub_25467F840();
  v21 = *(v20 - 8);
  (*(v21 + 16))(&v3[v19], a1, v20);
  *&v3[OBJC_IVAR____TtC11HoverTextUI15AXRuntimeClient_subscribeToNotifications] = a2;
  *&v3[OBJC_IVAR____TtC11HoverTextUI15AXRuntimeClient_runloop] = a3;
  v24.receiver = v3;
  v24.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v24, sel_init);
  (*(v21 + 8))(a1, v20);
  return v22;
}

uint64_t sub_25465C5F8(void *a1, void (*a2)(void, void))
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = *v4;
  a2(*v4, v4[1]);
  return v5;
}

uint64_t sub_25465C680(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9, v10);
}

void sub_25465C744()
{
  aBlock[6] = *MEMORY[0x277D85DE8];
  sub_25465CC58(1);
  if (!v1)
  {
    v2 = v0;
    AXUIElementRegisterSystemWideServerDeathCallback();
    v3 = [objc_opt_self() systemWideElement];
    if (v3)
    {
      v4 = v3;
      v5 = sub_25467F830();
      v6 = sub_2546806E0();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&dword_254615000, v5, v6, "Registering for ax runtime notifications and creating observer", v7, 2u);
        MEMORY[0x259C155A0](v7, -1, -1);
      }

      v8 = *&v2[OBJC_IVAR____TtC11HoverTextUI15AXRuntimeClient_runloop];
      v9 = *&v2[OBJC_IVAR____TtC11HoverTextUI15AXRuntimeClient_subscribeToNotifications];
      v10 = *(v9 + 16);
      v11 = MEMORY[0x277D84F90];
      if (v10)
      {
        v29 = *&v2[OBJC_IVAR____TtC11HoverTextUI15AXRuntimeClient_runloop];
        aBlock[0] = MEMORY[0x277D84F90];
        sub_254635B68(0, v10, 0);
        v11 = aBlock[0];
        v12 = (v9 + 32);
        v13 = *(aBlock[0] + 16);
        do
        {
          v15 = *v12++;
          v14 = v15;
          aBlock[0] = v11;
          v16 = *(v11 + 24);
          if (v13 >= v16 >> 1)
          {
            sub_254635B68((v16 > 1), v13 + 1, 1);
            v11 = aBlock[0];
          }

          *(v11 + 16) = v13 + 1;
          *(v11 + 4 * v13++ + 32) = v14;
          --v10;
        }

        while (v10);
        v8 = v29;
      }

      sub_25465D0BC(v11);

      v17 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v18 = objc_allocWithZone(AXObserverWrapper);
      sub_254626E64(0, &qword_27F60BC68);

      v19 = v4;
      v20 = sub_2546805A0();

      aBlock[4] = sub_25465F9BC;
      aBlock[5] = v17;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_25465F508;
      aBlock[3] = &block_descriptor_6;
      v21 = _Block_copy(aBlock);
      v30 = 0;
      v22 = [v18 initWithSystemElement:v19 runloop:v8 notifications:v20 handler:v21 error:&v30];
      _Block_release(v21);

      v23 = v30;
      if (v22)
      {

        v24 = *&v2[OBJC_IVAR____TtC11HoverTextUI15AXRuntimeClient_axObserver];
        *&v2[OBJC_IVAR____TtC11HoverTextUI15AXRuntimeClient_axObserver] = v22;

        v25 = sub_25467F830();
        v26 = sub_2546806E0();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          *v27 = 0;
          _os_log_impl(&dword_254615000, v25, v26, "Finished setting up accessibility in AXRuntimeClient", v27, 2u);
          MEMORY[0x259C155A0](v27, -1, -1);
        }
      }

      else
      {
        sub_25467F670();

        swift_willThrow();
      }
    }

    else
    {
      sub_25465F5A0();
      swift_allocError();
      *v28 = 0;
      *(v28 + 8) = 0;
      *(v28 + 16) = 4;
      swift_willThrow();
    }
  }
}

uint64_t sub_25465CB88()
{
  v1 = v0;
  v2 = sub_25467F830();
  v3 = sub_254680710();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_254615000, v2, v3, "Unregistering for ax runtime notifications and removing observer", v4, 2u);
    MEMORY[0x259C155A0](v4, -1, -1);
  }

  v5 = *(v1 + OBJC_IVAR____TtC11HoverTextUI15AXRuntimeClient_axObserver);
  *(v1 + OBJC_IVAR____TtC11HoverTextUI15AXRuntimeClient_axObserver) = 0;

  return sub_25465CC58(0);
}

uint64_t sub_25465CC58(char a1)
{
  v2 = sub_25467F830();
  v3 = sub_254680710();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 67109120;
    *(v4 + 4) = a1 & 1;
    _os_log_impl(&dword_254615000, v2, v3, "Updating app ax. Enable? %{BOOL}d", v4, 8u);
    MEMORY[0x259C155A0](v4, -1, -1);
  }

  result = _AXSApplicationAccessibilityEnabled();
  if (a1)
  {
    if (result)
    {
      return result;
    }

    v6 = sub_25467F830();
    v7 = sub_254680710();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_254615000, v6, v7, "Enabling app accessibility", v8, 2u);
      MEMORY[0x259C155A0](v8, -1, -1);
    }

    goto LABEL_7;
  }

  if (result)
  {
    if (_AXSCanDisableApplicationAccessibility())
    {
      v6 = sub_25467F830();
      v9 = sub_254680710();
      if (os_log_type_enabled(v6, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_254615000, v6, v9, "Disabling app accessibility", v10, 2u);
        MEMORY[0x259C155A0](v10, -1, -1);
      }

LABEL_7:

      return _AXSApplicationAccessibilitySetEnabled();
    }

    sub_25465F5A0();
    swift_allocError();
    *v11 = xmmword_254684650;
    *(v11 + 16) = 4;
    return swift_willThrow();
  }

  return result;
}

void sub_25465CE70(void *a1)
{
  if (a1)
  {
    v1 = sub_25467F830();
    v2 = sub_254680710();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&dword_254615000, v1, v2, "AX system server died", v3, 2u);
      MEMORY[0x259C155A0](v3, -1, -1);
    }

    sub_25465CB88();
    sub_25465C744();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_25465D0BC(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v5 = MEMORY[0x277D84F90];
    sub_254680970();
    v4 = a1 + 32;
    do
    {
      v4 += 4;
      sub_254680B10();
      sub_254680950();
      sub_254680980();
      sub_254680990();
      sub_254680960();
      --v2;
    }

    while (v2);
    return v5;
  }

  return result;
}

void sub_25465D164(uint64_t a1, uint64_t a2)
{
  v4 = sub_25467F840();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v129 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    (*(v5 + 16))(v7, Strong + OBJC_IVAR____TtC11HoverTextUI15AXRuntimeClient_logger, v4);

    v10 = sub_25467F830();
    v11 = sub_2546806E0();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 67109120;
      *(v12 + 4) = a1;
      _os_log_impl(&dword_254615000, v10, v11, "AXRuntimeClient received a notification. %d", v12, 8u);
      MEMORY[0x259C155A0](v12, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
  }

  swift_beginAccess();
  v13 = swift_unknownObjectWeakLoadStrong();
  if (v13)
  {
    v14 = v13;
    switch(a1)
    {
      case 1005:
        sub_25465FA44(a2, v142);
        if (*(&v142[1] + 1))
        {
          sub_254626E64(0, &qword_27F60C190);
          if (swift_dynamicCast())
          {
            v15 = v140;
            *&v142[0] = 0xD000000000000029;
            *(&v142[0] + 1) = 0x8000000254686CE0;
            v16 = [v140 __swift_objectForKeyedSubscript_];
            swift_unknownObjectRelease();

            if (v16)
            {
              sub_254680870();
              swift_unknownObjectRelease();
            }

            else
            {
              v141 = 0u;
              v140 = 0u;
            }

            v142[0] = v140;
            v142[1] = v141;
            if (*(&v141 + 1))
            {
              if (swift_dynamicCast())
              {
                v131.i32[0] = v140;
LABEL_48:
                sub_25465FA44(a2, v142);
                if (*(&v142[1] + 1))
                {
                  sub_254626E64(0, &qword_27F60C190);
                  if (swift_dynamicCast())
                  {
                    v38 = v140;
                    *&v142[0] = 0xD00000000000001FLL;
                    *(&v142[0] + 1) = 0x8000000254686CC0;
                    v39 = [v140 __swift_objectForKeyedSubscript_];
                    swift_unknownObjectRelease();

                    if (v39)
                    {
                      sub_254680870();
                      swift_unknownObjectRelease();
                    }

                    else
                    {
                      v141 = 0u;
                      v140 = 0u;
                    }

                    v142[0] = v140;
                    v142[1] = v141;
                    if (*(&v141 + 1))
                    {
                      v51 = swift_dynamicCast();
                      v52 = v140;
                      if (!v51)
                      {
                        v52 = 0;
                      }

                      *&v130 = v52;
                      if (v51)
                      {
                        v40 = *(&v140 + 1);
                      }

                      else
                      {
                        v40 = 0;
                      }

LABEL_55:
                      sub_25465FA44(a2, v142);
                      v132.i64[0] = v40;
                      if (*(&v142[1] + 1))
                      {
                        sub_254626E64(0, &qword_27F60C190);
                        if (swift_dynamicCast())
                        {
                          v41 = v140;
                          *&v142[0] = 0xD00000000000001ELL;
                          *(&v142[0] + 1) = 0x8000000254686CA0;
                          v42 = [v140 __swift_objectForKeyedSubscript_];
                          swift_unknownObjectRelease();

                          if (v42)
                          {
                            sub_254680870();
                            swift_unknownObjectRelease();
                          }

                          else
                          {
                            v141 = 0u;
                            v140 = 0u;
                          }

                          v142[0] = v140;
                          v142[1] = v141;
                          if (*(&v141 + 1))
                          {
                            v53 = swift_dynamicCast();
                            if (v53)
                            {
                              v43 = v140;
                            }

                            else
                            {
                              v43 = 0;
                            }

                            if (v53)
                            {
                              v44 = *(&v140 + 1);
                            }

                            else
                            {
                              v44 = 0;
                            }

LABEL_62:
                            sub_25465FA44(a2, v142);
                            if (*(&v142[1] + 1))
                            {
                              sub_254626E64(0, &qword_27F60C190);
                              if (swift_dynamicCast())
                              {
                                v45 = v138;
                                *&v142[0] = 0xD000000000000026;
                                *(&v142[0] + 1) = 0x8000000254685CF0;
                                v46 = [v138 __swift_objectForKeyedSubscript_];
                                swift_unknownObjectRelease();

                                if (v46)
                                {
                                  sub_254680870();
                                  swift_unknownObjectRelease();
                                }

                                else
                                {
                                  memset(v142, 0, 32);
                                }

                                v140 = v142[0];
                                v141 = v142[1];
LABEL_102:
                                sub_25465FA44(a2, v142);
                                if (*(&v142[1] + 1))
                                {
                                  sub_254626E64(0, &qword_27F60C190);
                                  if (swift_dynamicCast())
                                  {
                                    v54 = v136;
                                    strcpy(v142, "notification");
                                    BYTE13(v142[0]) = 0;
                                    HIWORD(v142[0]) = -5120;
                                    v55 = [v136 __swift_objectForKeyedSubscript_];
                                    swift_unknownObjectRelease();

                                    if (v55)
                                    {
                                      sub_254680870();
                                      swift_unknownObjectRelease();
                                    }

                                    else
                                    {
                                      memset(v142, 0, 32);
                                    }

                                    v138 = v142[0];
                                    v139 = v142[1];
LABEL_110:
                                    sub_25465FA44(a2, v142);
                                    if (*(&v142[1] + 1))
                                    {
                                      sub_254626E64(0, &qword_27F60C190);
                                      if (swift_dynamicCast())
                                      {
                                        v56 = v134;
                                        *&v142[0] = 0xD000000000000025;
                                        *(&v142[0] + 1) = 0x8000000254686C70;
                                        v57 = [v134 __swift_objectForKeyedSubscript_];
                                        swift_unknownObjectRelease();

                                        if (v57)
                                        {
                                          sub_254680870();
                                          swift_unknownObjectRelease();
                                        }

                                        else
                                        {
                                          memset(v142, 0, 32);
                                        }

                                        v137 = v142[1];
                                        v136 = v142[0];
                                        if (*(&v142[1] + 1))
                                        {
                                          sub_25465FA44(&v136, &v134);
                                          if (!*(&v135 + 1))
                                          {
                                            goto LABEL_259;
                                          }

                                          sub_254646154(&v134, v142);
                                          type metadata accessor for AXUIElementRef(0);
                                          swift_dynamicCast();
                                          v58 = v133;
                                          v25 = [objc_allocWithZone(MEMORY[0x277CE6BA0]) initWithAXUIElement_];
                                        }

                                        else
                                        {
                                          v25 = 0;
                                        }

LABEL_121:
                                        if (v44)
                                        {

                                          v59 = &v14[OBJC_IVAR____TtC11HoverTextUI15AXRuntimeClient_valueChanged];
                                          swift_beginAccess();
                                          v60 = *v59;
                                          if (*v59)
                                          {
                                            swift_endAccess();
                                            memset(v142, 0, 32);
                                            LOBYTE(v142[2]) = 1;

                                            v60(v43, v44, 12, v25, v142);

LABEL_124:

                                            v61 = v60;
LABEL_125:
                                            sub_254619940(v61);
LABEL_134:
                                            sub_25465F9DC(&v136);
LABEL_135:
                                            sub_25465F9DC(&v138);
                                            sub_25465F9DC(&v140);
                                            goto LABEL_77;
                                          }

                                          sub_25465F9DC(&v136);
                                          sub_25465F9DC(&v138);
                                          sub_25465F9DC(&v140);
                                          swift_endAccess();
                                          goto LABEL_137;
                                        }

                                        if ((AXDeviceSupportsHoverTextTyping() & 1) == 0 || (v62 = [objc_opt_self() sharedInstance], v63 = objc_msgSend(v62, sel_hoverTextTypingEnabled), v62, !v63))
                                        {
LABEL_133:

                                          goto LABEL_134;
                                        }

                                        if (v131.i32[0])
                                        {

                                          sub_25465FA44(a2, &v134);
                                          if (*(&v135 + 1))
                                          {
                                            sub_254626E64(0, &qword_27F60C190);
                                            if (swift_dynamicCast())
                                            {
                                              v64 = v133;
                                              *&v134 = 0xD000000000000024;
                                              *(&v134 + 1) = 0x8000000254686C40;
                                              v65 = [v133 __swift_objectForKeyedSubscript_];
                                              swift_unknownObjectRelease();

                                              if (v65)
                                              {
                                                sub_254680870();
                                                swift_unknownObjectRelease();
                                              }

                                              else
                                              {
                                                v135 = 0u;
                                                v134 = 0u;
                                              }

                                              v142[0] = v134;
                                              v142[1] = v135;
                                              if (*(&v135 + 1))
                                              {
                                                if (swift_dynamicCast() && (v134 & 1) != 0)
                                                {
                                                  sub_25465FA44(a2, &v134);
                                                  if (*(&v135 + 1))
                                                  {
                                                    if (swift_dynamicCast())
                                                    {
                                                      v115 = v133;
                                                      strcpy(&v134, "InsertedText");
                                                      BYTE13(v134) = 0;
                                                      HIWORD(v134) = -5120;
                                                      v116 = [v133 __swift_objectForKeyedSubscript_];
                                                      swift_unknownObjectRelease();

                                                      if (v116)
                                                      {
                                                        sub_254680870();
                                                        swift_unknownObjectRelease();
                                                      }

                                                      else
                                                      {
                                                        v135 = 0u;
                                                        v134 = 0u;
                                                      }

                                                      v142[0] = v134;
                                                      v142[1] = v135;
                                                      if (*(&v135 + 1))
                                                      {
                                                        swift_dynamicCast();
                                                        goto LABEL_253;
                                                      }

LABEL_252:
                                                      sub_25465F9DC(v142);
LABEL_253:
                                                      sub_2546804D0();

                                                      v100 = sub_254680560();
                                                      v101 = v128;
LABEL_197:
                                                      sub_25465FA44(a2, &v134);
                                                      if (*(&v135 + 1))
                                                      {
                                                        sub_254626E64(0, &qword_27F60C190);
                                                        if (swift_dynamicCast())
                                                        {
                                                          v102 = v133;
                                                          *&v134 = 0xD00000000000001DLL;
                                                          *(&v134 + 1) = 0x8000000254686C20;
                                                          v103 = [v133 __swift_objectForKeyedSubscript_];
                                                          swift_unknownObjectRelease();

                                                          if (v103)
                                                          {
                                                            sub_254680870();
                                                            swift_unknownObjectRelease();
                                                          }

                                                          else
                                                          {
                                                            v135 = 0u;
                                                            v134 = 0u;
                                                          }

                                                          v142[0] = v134;
                                                          v142[1] = v135;
                                                          if (*(&v135 + 1))
                                                          {
                                                            sub_254626E64(0, &qword_27F60C198);
                                                            if (swift_dynamicCast())
                                                            {
                                                              v117 = v134;
                                                              [v134 CGRectValue];
                                                              v132 = v118;
                                                              v130 = v119;
                                                              v131 = v120;
                                                              v129 = v121;

                                                              v104 = 0;
                                                              v122.i64[0] = v131.i64[0];
                                                              v122.i64[1] = v129;
                                                              v131 = v122;
                                                              v122.i64[0] = v132.i64[0];
                                                              v122.i64[1] = v130;
                                                              v132 = v122;
LABEL_205:
                                                              v105 = &v14[OBJC_IVAR____TtC11HoverTextUI15AXRuntimeClient_valueChanged];
                                                              swift_beginAccess();
                                                              v106 = *v105;
                                                              if (*v105)
                                                              {
                                                                if (v104)
                                                                {
                                                                  v107 = -1;
                                                                }

                                                                else
                                                                {
                                                                  v107 = 0;
                                                                }

                                                                v108 = vdupq_n_s64(v107);
                                                                v142[0] = vbicq_s8(v132, v108);
                                                                v142[1] = vbicq_s8(v131, v108);
                                                                LOBYTE(v142[2]) = 0;

                                                                v106(v100, v101, 0, 0, v142);

                                                                v61 = v106;
                                                                goto LABEL_125;
                                                              }

                                                              goto LABEL_133;
                                                            }

LABEL_204:
                                                            v132 = 0u;
                                                            v104 = 1;
                                                            v131 = 0u;
                                                            goto LABEL_205;
                                                          }

LABEL_203:
                                                          sub_25465F9DC(v142);
                                                          goto LABEL_204;
                                                        }
                                                      }

                                                      else
                                                      {
                                                        sub_25465F9DC(&v134);
                                                      }

                                                      memset(v142, 0, 32);
                                                      goto LABEL_203;
                                                    }
                                                  }

                                                  else
                                                  {
                                                    sub_25465F9DC(&v134);
                                                  }

                                                  memset(v142, 0, 32);
                                                  goto LABEL_252;
                                                }

LABEL_186:
                                                sub_25465FA44(a2, &v134);
                                                if (*(&v135 + 1))
                                                {
                                                  sub_254626E64(0, &qword_27F60C190);
                                                  if (swift_dynamicCast())
                                                  {
                                                    v96 = v133;
                                                    strcpy(&v134, "InsertedText");
                                                    BYTE13(v134) = 0;
                                                    HIWORD(v134) = -5120;
                                                    v97 = [v133 __swift_objectForKeyedSubscript_];
                                                    swift_unknownObjectRelease();

                                                    if (v97)
                                                    {
                                                      sub_254680870();
                                                      swift_unknownObjectRelease();
                                                    }

                                                    else
                                                    {
                                                      v135 = 0u;
                                                      v134 = 0u;
                                                    }

                                                    v142[0] = v134;
                                                    v142[1] = v135;
                                                    if (*(&v135 + 1))
                                                    {
                                                      if (swift_dynamicCast())
                                                      {
                                                        v101 = *(&v134 + 1);
                                                        v100 = v134;
                                                        goto LABEL_197;
                                                      }

LABEL_196:
                                                      v100 = 0;
                                                      v101 = 0xE000000000000000;
                                                      goto LABEL_197;
                                                    }

LABEL_195:
                                                    sub_25465F9DC(v142);
                                                    goto LABEL_196;
                                                  }
                                                }

                                                else
                                                {
                                                  sub_25465F9DC(&v134);
                                                }

                                                memset(v142, 0, 32);
                                                goto LABEL_195;
                                              }

LABEL_185:
                                              sub_25465F9DC(v142);
                                              goto LABEL_186;
                                            }
                                          }

                                          else
                                          {
                                            sub_25465F9DC(&v134);
                                          }

                                          memset(v142, 0, 32);
                                          goto LABEL_185;
                                        }

                                        if (v132.i64[0])
                                        {
                                          v84 = _s11HoverTextUI0aB17PresentationEventV011ValueChangeE4TypeO03rawF0AESgSS_tcfC_0();
                                          if (v84 == 12)
                                          {
LABEL_168:

                                            sub_25465F9DC(&v136);
                                            sub_25465F9DC(&v138);
                                            sub_25465F9DC(&v140);
                                            return;
                                          }

                                          v109 = v84;
                                          if (HoverTextPresentationEvent.ValueChangeEventType.rawValue.getter(v84) == 0xD000000000000017 && 0x8000000254685BB0 == v110)
                                          {
                                            goto LABEL_213;
                                          }

                                          v112 = sub_254680A90();

                                          if ((v112 & 1) == 0)
                                          {
                                            if (HoverTextPresentationEvent.ValueChangeEventType.rawValue.getter(v109) == 0xD000000000000017 && 0x8000000254685BD0 == v123)
                                            {
LABEL_213:

                                              goto LABEL_219;
                                            }

                                            v124 = sub_254680A90();

                                            if ((v124 & 1) == 0)
                                            {
                                              if (HoverTextPresentationEvent.ValueChangeEventType.rawValue.getter(v109) != 0xD00000000000001ALL || 0x8000000254685C30 != v125)
                                              {
                                                v126 = sub_254680A90();

                                                if ((v126 & 1) == 0)
                                                {
                                                  goto LABEL_168;
                                                }

                                                goto LABEL_219;
                                              }

                                              goto LABEL_213;
                                            }
                                          }

LABEL_219:
                                          v113 = &v14[OBJC_IVAR____TtC11HoverTextUI15AXRuntimeClient_valueChanged];
                                          swift_beginAccess();
                                          v114 = *v113;
                                          if (*v113)
                                          {
                                            swift_endAccess();
                                            memset(v142, 0, 32);
                                            LOBYTE(v142[2]) = 1;

                                            v114(0, 0, v109, v25, v142);

                                            v61 = v114;
                                            goto LABEL_125;
                                          }

                                          goto LABEL_248;
                                        }

                                        if (v14[OBJC_IVAR____TtC11HoverTextUI15AXRuntimeClient_pasteOccurred])
                                        {
                                          v14[OBJC_IVAR____TtC11HoverTextUI15AXRuntimeClient_pasteOccurred] = 0;
                                          v98 = &v14[OBJC_IVAR____TtC11HoverTextUI15AXRuntimeClient_valueChanged];
                                          swift_beginAccess();
                                          v60 = *v98;
                                          if (*v98)
                                          {
                                            swift_endAccess();
                                            memset(v142, 0, 32);
                                            LOBYTE(v142[2]) = 1;

                                            v99 = 9;
LABEL_247:
                                            v60(0, 0, v99, v25, v142);
                                            goto LABEL_124;
                                          }
                                        }

                                        else if (*(&v139 + 1))
                                        {
                                          v111 = &v14[OBJC_IVAR____TtC11HoverTextUI15AXRuntimeClient_valueChanged];
                                          swift_beginAccess();
                                          v60 = *v111;
                                          if (*v111)
                                          {
                                            swift_endAccess();
                                            memset(v142, 0, 32);
                                            LOBYTE(v142[2]) = 1;

                                            v99 = 0;
                                            goto LABEL_247;
                                          }
                                        }

                                        else
                                        {
                                          if (!*(&v141 + 1))
                                          {
                                            sub_25465F9DC(&v136);

                                            goto LABEL_135;
                                          }

                                          v127 = &v14[OBJC_IVAR____TtC11HoverTextUI15AXRuntimeClient_valueChanged];
                                          swift_beginAccess();
                                          v60 = *v127;
                                          if (*v127)
                                          {
                                            swift_endAccess();
                                            memset(v142, 0, 32);
                                            LOBYTE(v142[2]) = 1;

                                            v99 = 10;
                                            goto LABEL_247;
                                          }
                                        }

LABEL_248:
                                        sub_25465F9DC(&v136);
                                        sub_25465F9DC(&v138);
                                        sub_25465F9DC(&v140);
                                        swift_endAccess();

                                        goto LABEL_77;
                                      }
                                    }

                                    else
                                    {
                                      sub_25465F9DC(v142);
                                    }

                                    v25 = 0;
                                    v136 = 0u;
                                    v137 = 0u;
                                    goto LABEL_121;
                                  }
                                }

                                else
                                {
                                  sub_25465F9DC(v142);
                                }

                                v138 = 0u;
                                v139 = 0u;
                                goto LABEL_110;
                              }
                            }

                            else
                            {
                              sub_25465F9DC(v142);
                            }

                            v140 = 0u;
                            v141 = 0u;
                            goto LABEL_102;
                          }

LABEL_61:
                          sub_25465F9DC(v142);
                          v43 = 0;
                          v44 = 0;
                          goto LABEL_62;
                        }
                      }

                      else
                      {
                        sub_25465F9DC(v142);
                      }

                      memset(v142, 0, 32);
                      goto LABEL_61;
                    }

LABEL_54:
                    sub_25465F9DC(v142);
                    *&v130 = 0;
                    v40 = 0;
                    goto LABEL_55;
                  }
                }

                else
                {
                  sub_25465F9DC(v142);
                }

                memset(v142, 0, 32);
                goto LABEL_54;
              }

LABEL_47:
              v131.i32[0] = 0;
              goto LABEL_48;
            }

LABEL_46:
            sub_25465F9DC(v142);
            goto LABEL_47;
          }
        }

        else
        {
          sub_25465F9DC(v142);
        }

        memset(v142, 0, 32);
        goto LABEL_46;
      case 1006:
      case 1007:
      case 1009:
      case 1010:
      case 1011:
      case 1012:
      case 1013:
      case 1015:
      case 1016:
      case 1017:
      case 1018:
      case 1019:
      case 1020:
      case 1021:
      case 1022:
      case 1023:
      case 1024:
      case 1025:
      case 1026:
      case 1027:
      case 1028:
      case 1029:
      case 1030:
      case 1032:
      case 1033:
      case 1034:
      case 1035:
      case 1036:
      case 1037:
      case 1038:
      case 1039:
      case 1040:
      case 1041:
      case 1042:
      case 1043:
      case 1045:
      case 1046:
      case 1047:
      case 1048:
      case 1049:
      case 1050:
      case 1051:
      case 1055:
      case 1056:
      case 1057:
      case 1058:
      case 1059:
      case 1060:
      case 1061:
      case 1062:
      case 1063:
      case 1064:
      case 1065:
      case 1066:
      case 1067:
      case 1068:
      case 1069:
      case 1070:
      case 1071:
      case 1072:
      case 1073:
      case 1074:
      case 1075:
      case 1076:
      case 1077:
      case 1078:
      case 1079:
      case 1080:
        goto LABEL_77;
      case 1008:
        sub_25465FA44(a2, v142);
        if (!*(&v142[1] + 1))
        {
          goto LABEL_43;
        }

        sub_254626E64(0, &qword_27F60C190);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_77;
        }

        v23 = v140;
        *&v140 = 1635017060;
        *(&v140 + 1) = 0xE400000000000000;
        v24 = [v23 __swift_objectForKeyedSubscript_];
        swift_unknownObjectRelease();
        if (v24)
        {
          sub_254680870();
          swift_unknownObjectRelease();
        }

        else
        {
          v141 = 0u;
          v140 = 0u;
        }

        v142[0] = v140;
        v142[1] = v141;
        if (*(&v141 + 1))
        {
          if (swift_dynamicCast())
          {
            v142[0] = v138;
            *&v140 = 10;
            *(&v140 + 1) = 0xE100000000000000;
            *&v138 = 32;
            *(&v138 + 1) = 0xE100000000000000;
            sub_25462C080();
            v66 = sub_254680860();
            v68 = v67;

            goto LABEL_144;
          }
        }

        else
        {
          sub_25465F9DC(v142);
        }

        v66 = 0;
        v68 = 0xE000000000000000;
LABEL_144:
        *&v140 = 0xD000000000000021;
        *(&v140 + 1) = 0x8000000254686BF0;
        v69 = [v23 __swift_objectForKeyedSubscript_];
        swift_unknownObjectRelease();
        if (v69)
        {
          sub_254680870();

          swift_unknownObjectRelease();
        }

        else
        {

          v141 = 0u;
          v140 = 0u;
        }

        v142[0] = v140;
        v142[1] = v141;
        if (!*(&v141 + 1))
        {

          goto LABEL_43;
        }

        if (swift_dynamicCast())
        {
          if (v138)
          {
            v70 = &v14[OBJC_IVAR____TtC11HoverTextUI15AXRuntimeClient_didReceiveAnnouncement];
            swift_beginAccess();
            v71 = *v70;
            if (*v70)
            {

              v71(v66, v68);
              sub_254619940(v71);
            }
          }
        }

        goto LABEL_77;
      case 1014:
        v17 = OBJC_IVAR____TtC11HoverTextUI15AXRuntimeClient_currentInputModeDidChange;
        goto LABEL_74;
      case 1031:
        sub_25465FA44(a2, &v140);
        if (*(&v141 + 1))
        {
          sub_254626E64(0, &qword_27F60C190);
          if (swift_dynamicCast())
          {
            v21 = v138;
            *&v140 = 0x656C6269736976;
            *(&v140 + 1) = 0xE700000000000000;
            v22 = [v138 __swift_objectForKeyedSubscript_];
            swift_unknownObjectRelease();

            if (v22)
            {
              sub_254680870();
              swift_unknownObjectRelease();
            }

            else
            {
              v141 = 0u;
              v140 = 0u;
            }

            v142[0] = v140;
            v142[1] = v141;
            if (*(&v141 + 1))
            {
              if (swift_dynamicCast())
              {
                if (v140)
                {
LABEL_72:
                  v17 = OBJC_IVAR____TtC11HoverTextUI15AXRuntimeClient_keyboardWillChangeFrame;
                }

                else
                {
LABEL_73:
                  v17 = OBJC_IVAR____TtC11HoverTextUI15AXRuntimeClient_keyboardWillHide;
                }

LABEL_74:
                v47 = &v14[v17];
                swift_beginAccess();
                v19 = *v47;
                if (*v47)
                {

                  v19(v48);
LABEL_76:
                  sub_254619940(v19);
                }
              }

              goto LABEL_77;
            }

            goto LABEL_43;
          }
        }

        else
        {
          sub_25465F9DC(&v140);
        }

        memset(v142, 0, 32);
        goto LABEL_43;
      case 1044:
        v17 = OBJC_IVAR____TtC11HoverTextUI15AXRuntimeClient_elementVisualsUpdated;
        goto LABEL_74;
      case 1052:
        v35 = (v13 + OBJC_IVAR____TtC11HoverTextUI15AXRuntimeClient_valueChanged);
        swift_beginAccess();
        v19 = *v35;
        if (!*v35)
        {
          goto LABEL_77;
        }

        memset(v142, 0, 32);
        LOBYTE(v142[2]) = 1;

        v20 = 11;
        goto LABEL_32;
      case 1053:
        sub_25465FA44(a2, v142);
        if (!*(&v142[1] + 1))
        {
          goto LABEL_43;
        }

        sub_254626E64(0, &qword_27F60C190);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_77;
        }

        if (*MEMORY[0x277CE6D20])
        {
          v25 = v140;
          v26 = *MEMORY[0x277CE6D20];
          v27 = sub_254680470();
          v29 = v28;

          *&v142[0] = v27;
          *(&v142[0] + 1) = v29;
          v30 = [v25 __swift_objectForKeyedSubscript_];
          swift_unknownObjectRelease();
          if (v30)
          {
            sub_254680870();
            swift_unknownObjectRelease();
            sub_254646154(v142, &v140);
            __swift_project_boxed_opaque_existential_1(&v140, *(&v141 + 1));
            v31 = sub_254680A80();
            v32 = CFGetTypeID(v31);
            swift_unknownObjectRelease();
            if (v32 == AXUIElementGetTypeID())
            {
              sub_25463504C(&v140, &v138);
              type metadata accessor for AXUIElementRef(0);
              swift_dynamicCast();
              v33 = v136;
              v34 = _UIAXElementForAXUIElementRef();

              if (v34)
              {
                sub_254680870();
                swift_unknownObjectRelease();
              }

              else
              {
                v139 = 0u;
                v138 = 0u;
              }

              v142[0] = v138;
              v142[1] = v139;
              if (*(&v139 + 1))
              {
                sub_254626E64(0, &qword_27F60C680);
                if (swift_dynamicCast())
                {
                  v85 = v136;
                  v86 = &v14[OBJC_IVAR____TtC11HoverTextUI15AXRuntimeClient_nativeFocusItemDidChange];
                  swift_beginAccess();
                  v87 = *v86;
                  if (!*v86)
                  {
                    __swift_destroy_boxed_opaque_existential_0(&v140);
                    swift_endAccess();

                    goto LABEL_77;
                  }

                  swift_endAccess();
                  *&v142[0] = v85;
                  memset(v142 + 8, 0, 41);
                  sub_254619928(v87);
                  v88 = v85;
                  v87(v142);

                  sub_254619940(v87);
                }
              }

              else
              {
                sub_25465F9DC(v142);
              }

              __swift_destroy_boxed_opaque_existential_0(&v140);
              goto LABEL_77;
            }

            __swift_destroy_boxed_opaque_existential_0(&v140);
          }

          if (*MEMORY[0x277CE6D30])
          {
            v72 = *MEMORY[0x277CE6D30];
            v73 = sub_254680470();
            v75 = v74;

            *&v140 = v73;
            *(&v140 + 1) = v75;
            v76 = [v25 __swift_objectForKeyedSubscript_];
            swift_unknownObjectRelease();
            if (v76)
            {
              sub_254680870();
              swift_unknownObjectRelease();
            }

            else
            {
              v141 = 0u;
              v140 = 0u;
            }

            v142[0] = v140;
            v142[1] = v141;
            if (!*(&v141 + 1))
            {

              goto LABEL_43;
            }

            if ((swift_dynamicCast() & 1) == 0)
            {

              goto LABEL_77;
            }

            v77 = *MEMORY[0x277CE6D28];
            if (*MEMORY[0x277CE6D28])
            {
              v78 = *(&v138 + 1);
              v132.i64[0] = v138;
              v79 = v77;
              v80 = sub_254680470();
              v82 = v81;

              *&v140 = v80;
              *(&v140 + 1) = v82;
              v83 = [v25 __swift_objectForKeyedSubscript_];
              swift_unknownObjectRelease();
              if (v83)
              {
                sub_254680870();
                swift_unknownObjectRelease();
              }

              else
              {
                v141 = 0u;
                v140 = 0u;
              }

              v142[0] = v140;
              v142[1] = v141;
              if (*(&v141 + 1))
              {
                if (swift_dynamicCast())
                {
                  v89 = sub_254680440();

                  v143 = CGRectFromString(v89);
                  x = v143.origin.x;
                  y = v143.origin.y;
                  width = v143.size.width;
                  height = v143.size.height;

                  v94 = &v14[OBJC_IVAR____TtC11HoverTextUI15AXRuntimeClient_nativeFocusItemDidChange];
                  swift_beginAccess();
                  v95 = *v94;
                  if (*v94)
                  {
                    *&v142[0] = v132.i64[0];
                    *(&v142[0] + 1) = v78;
                    *&v142[1] = x;
                    *(&v142[1] + 1) = y;
                    *&v142[2] = width;
                    *(&v142[2] + 1) = height;
                    LOBYTE(v142[3]) = 0x80;

                    v95(v142);
                    sub_254619940(v95);
                  }
                }

LABEL_137:

                goto LABEL_77;
              }

LABEL_43:
              sub_25465F9DC(v142);
LABEL_77:
              v49 = &v14[OBJC_IVAR____TtC11HoverTextUI15AXRuntimeClient_didReceiveNotification];
              swift_beginAccess();
              v50 = *v49;
              if (*v49)
              {

                v50(a1, a2);
                sub_254619940(v50);
              }

              return;
            }

LABEL_260:
            __break(1u);
            return;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
LABEL_259:
        __break(1u);
        goto LABEL_260;
      case 1054:
        *(v13 + OBJC_IVAR____TtC11HoverTextUI15AXRuntimeClient_pasteOccurred) = 1;
        goto LABEL_77;
      case 1081:
        v18 = (v13 + OBJC_IVAR____TtC11HoverTextUI15AXRuntimeClient_valueChanged);
        swift_beginAccess();
        v19 = *v18;
        if (!*v18)
        {
          goto LABEL_77;
        }

        memset(v142, 0, 32);
        LOBYTE(v142[2]) = 1;

        v20 = 8;
LABEL_32:
        (v19)(0, 0, v20, 0, v142);
        goto LABEL_76;
      case 1082:
        v36 = (v13 + OBJC_IVAR____TtC11HoverTextUI15AXRuntimeClient_loupeStateChanged);
        swift_beginAccess();
        v19 = *v36;
        if (!*v36)
        {
          goto LABEL_77;
        }

        v19(1);
        goto LABEL_76;
      case 1083:
        v37 = (v13 + OBJC_IVAR____TtC11HoverTextUI15AXRuntimeClient_loupeStateChanged);
        swift_beginAccess();
        v19 = *v37;
        if (!*v37)
        {
          goto LABEL_77;
        }

        v19(0);
        goto LABEL_76;
      case 1084:
        goto LABEL_73;
      case 1085:
        goto LABEL_72;
      case 1086:
        v17 = OBJC_IVAR____TtC11HoverTextUI15AXRuntimeClient_updateTypingDisplayMode;
        goto LABEL_74;
      default:
        if (a1 != 5001)
        {
          goto LABEL_77;
        }

        v17 = OBJC_IVAR____TtC11HoverTextUI15AXRuntimeClient_focusedApplicationsDidChange;
        goto LABEL_74;
    }
  }
}

id AXRuntimeClient.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AXRuntimeClient.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_25465F508(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  if (a3)
  {
    ObjectType = swift_getObjectType();
    *&v7 = a3;
    sub_254646154(&v7, v9);
  }

  else
  {
    memset(v9, 0, sizeof(v9));
  }

  swift_unknownObjectRetain();
  v5(a2, v9);

  return sub_25465F9DC(v9);
}

unint64_t sub_25465F5A0()
{
  result = qword_27F60C188;
  if (!qword_27F60C188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F60C188);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11HoverTextUI20AXRuntimeClientErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_25465F624(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_25465F66C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t sub_25465F6B0(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 16) = a2;
  return result;
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

uint64_t sub_25465F6F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25465F73C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25465F79C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 49))
  {
    return (*a1 + 127);
  }

  v3 = (*(a1 + 48) & 0x7E | (*(a1 + 48) >> 7)) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_25465F7EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      *(result + 48) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

uint64_t type metadata accessor for AXRuntimeClient()
{
  result = qword_281535558;
  if (!qword_281535558)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25465F8E0()
{
  result = sub_25467F840();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25465F9DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60BC70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25465FA44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60BC70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_25465FABC()
{
  swift_getKeyPath();
  sub_254673354(&qword_27F60B9E0, type metadata accessor for HoverTypingStore);
  sub_25467F780();

  if (*(v0 + 258) == 1)
  {
    sub_25465FC10();
    swift_getKeyPath();
    sub_25467F780();
  }

  else
  {
    swift_getKeyPath();
    sub_25467F780();

    sub_25465FC10();
  }
}

double sub_25465FC10()
{
  v1 = v0;
  v2 = sub_25467F5A0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v76 = v0;
  sub_254673354(&qword_27F60B9E0, type metadata accessor for HoverTypingStore);
  sub_25467F780();

  v6 = v0[31];
  v7 = objc_opt_self();
  v8 = [v7 mainScreen];
  [v8 bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v77.origin.x = UIEdgeInsetsInsetRect(v10, v12, v14, v16, v1[4], v1[5]);
  v17 = 0.0;
  if (CGRectGetWidth(v77) * 0.85 * 0.5 <= v6)
  {
    swift_getKeyPath();
    v76 = v1;
    sub_25467F780();

    v18 = OBJC_IVAR____TtC11HoverTextUI16HoverTypingStore__displayText;
    swift_beginAccess();
    v73 = *(v3 + 16);
    v74 = v18;
    v73(v5, v1 + v18, v2);
    swift_getKeyPath();
    v75 = v1;
    sub_25467F780();

    v71 = OBJC_IVAR____TtC11HoverTextUI16HoverTypingStore__uiFont;
    v19 = *(v1 + OBJC_IVAR____TtC11HoverTextUI16HoverTypingStore__uiFont);
    sub_25462EFBC(v19);
    v21 = v20;

    v72 = *(v3 + 8);
    v72(v5, v2);
    v22 = v21 + 2.0;
    v23 = [v7 mainScreen];
    [v23 bounds];
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;

    v78.origin.x = UIEdgeInsetsInsetRect(v25, v27, v29, v31, v1[4], v1[5]);
    if (CGRectGetWidth(v78) * 0.85 < v22)
    {
      swift_getKeyPath();
      v75 = v1;
      sub_25467F780();

      v70 = v1[31];
      v32 = [v7 mainScreen];
      [v32 bounds];
      v34 = v33;
      v36 = v35;
      v38 = v37;
      v40 = v39;

      v79.origin.x = UIEdgeInsetsInsetRect(v34, v36, v38, v40, v1[4], v1[5]);
      Width = CGRectGetWidth(v79);
      swift_getKeyPath();
      v75 = v1;
      sub_25467F780();

      v73(v5, v1 + v74, v2);
      swift_getKeyPath();
      v75 = v1;
      sub_25467F780();

      v42 = *(v1 + v71);
      sub_25462EFBC(v42);
      v44 = v43;

      v72(v5, v2);
      swift_getKeyPath();
      v75 = v1;
      sub_25467F780();

      v45 = v44 + 2.0 - v1[31];
      v46 = [v7 mainScreen];
      [v46 bounds];
      v48 = v47;
      v50 = v49;
      v52 = v51;
      v54 = v53;

      v80.origin.x = UIEdgeInsetsInsetRect(v48, v50, v52, v54, v1[4], v1[5]);
      if (v45 >= CGRectGetWidth(v80) * 0.85 * 0.5)
      {
        return v70 - Width * 0.85 * 0.5;
      }

      else
      {
        swift_getKeyPath();
        v75 = v1;
        sub_25467F780();

        v73(v5, v1 + v74, v2);
        swift_getKeyPath();
        v75 = v1;
        sub_25467F780();

        v55 = *(v1 + v71);
        sub_25462EFBC(v55);
        v57 = v56;

        v72(v5, v2);
        v58 = v57 + 2.0;
        v59 = [v7 mainScreen];
        [v59 bounds];
        v61 = v60;
        v63 = v62;
        v65 = v64;
        v67 = v66;

        v81.origin.x = UIEdgeInsetsInsetRect(v61, v63, v65, v67, v1[4], v1[5]);
        return v58 + CGRectGetWidth(v81) * -0.85;
      }
    }
  }

  return v17;
}

void sub_2546602A0(int a1, int a2, double a3, double a4)
{
  v5 = v4;
  v145 = a2;
  v148 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F60C010);
  MEMORY[0x28223BE20](v8 - 8);
  v150 = &v127 - v9;
  v143 = sub_254680380();
  v142 = *(v143 - 8);
  MEMORY[0x28223BE20](v143);
  v139 = &v127 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_2546803B0();
  v140 = *(v141 - 8);
  MEMORY[0x28223BE20](v141);
  v144 = &v127 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = sub_25467F5A0();
  v146 = *(v147 - 8);
  v12 = MEMORY[0x28223BE20](v147);
  v138 = &v127 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v149 = &v127 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60C220);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v127 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v127 - v19;
  swift_getKeyPath();
  v21 = OBJC_IVAR____TtC11HoverTextUI16HoverTypingStore___observationRegistrar;
  aBlock = v5;
  v22 = sub_254673354(&qword_27F60B9E0, type metadata accessor for HoverTypingStore);
  v151 = v21;
  sub_25467F780();

  v23 = OBJC_IVAR____TtC11HoverTextUI16HoverTypingStore__previousEvent;
  swift_beginAccess();
  sub_25462CC8C(v5 + v23, v20, &qword_27F60C220);
  v24 = type metadata accessor for HoverTextPresentationEvent();
  v25 = *(*(v24 - 8) + 48);
  if (v25(v20, 1, v24))
  {
    v26 = v20;
LABEL_5:
    sub_254626CC4(v26, &qword_27F60C220);
    return;
  }

  v137 = *&v20[*(v24 + 48)];
  sub_254626CC4(v20, &qword_27F60C220);
  swift_getKeyPath();
  aBlock = v5;
  sub_25467F780();

  sub_25462CC8C(v5 + v23, v18, &qword_27F60C220);
  if (v25(v18, 1, v24))
  {
    v26 = v18;
    goto LABEL_5;
  }

  v136 = v22;
  v27 = *&v18[*(v24 + 52)];
  v28 = v27;
  sub_254626CC4(v18, &qword_27F60C220);
  if (v27)
  {
    swift_getKeyPath();
    aBlock = v5;
    sub_25467F780();

    v29 = OBJC_IVAR____TtC11HoverTextUI16HoverTypingStore__displayText;
    swift_beginAccess();
    v30 = v146;
    v31 = *(v146 + 16);
    v130 = v29;
    v32 = v149;
    v33 = v147;
    v131 = v146 + 16;
    v129 = v31;
    v31(v149, v5 + v29, v147);
    swift_getKeyPath();
    aBlock = v5;
    sub_25467F780();

    v135 = OBJC_IVAR____TtC11HoverTextUI16HoverTypingStore__uiFont;
    v34 = *(v5 + OBJC_IVAR____TtC11HoverTextUI16HoverTypingStore__uiFont);
    sub_25462EFBC(v34);

    v35 = v32;
    v36 = v30 + 8;
    v133 = *(v30 + 8);
    v37 = v133(v35, v33);
    v37.n128_f64[0] = a3 - a4;
    v38.n128_u64[0] = 0;
    v39 = CGSizeMake(v37, v38);
    sub_254670724(v39, v40);
    v134 = v42;
    v146 = v137 + v41;
    if (__OFADD__(v137, v41))
    {
      __break(1u);
    }

    else
    {
      v43 = v41;
      swift_getKeyPath();
      aBlock = v5;
      sub_25467F780();

      v44 = v150;
      v45 = v148;
      v46 = v144;
      if (*(v5 + 296))
      {
        v47 = v135;
        if (!v43)
        {
LABEL_28:
          if (v45)
          {
            goto LABEL_29;
          }

          goto LABEL_37;
        }
      }

      else
      {
        v47 = v135;
        if (v43 == *(v5 + 280))
        {
          goto LABEL_28;
        }
      }

      sub_254664CC0(v146, 0, 0);
      swift_getKeyPath();
      aBlock = v5;
      sub_25467F780();

      v128 = v43;
      if (!__OFADD__(v43, v134))
      {
        v48 = [v28 ax:v43 + v134 wordFromPosition:1 inDirection:?];
        v132 = v28;
        v50 = [v28 substringWithRange_];
        v51 = [v50 hasAttribute_];
        v52 = v145;
        v127 = v50;
        if (v51 & 1) == 0 && ![v50 hasAttribute_] || (v52)
        {
          swift_getKeyPath();
          aBlock = v5;
          sub_25467F780();

          MEMORY[0x259C14130](v116, 0.25, 1.0, 0.0);
          sub_25467FA40();

          v117 = swift_allocObject();
          *(v117 + 16) = v146;
          *(v117 + 24) = 0;
          v157 = sub_254671104;
          v158 = v117;
          aBlock = MEMORY[0x277D85DD0];
          v154 = 1107296256;
          v155 = sub_2546274BC;
          v156 = &block_descriptor_7;
          v118 = _Block_copy(&aBlock);
          sub_254680390();
          v152 = MEMORY[0x277D84F90];
          sub_254673354(&qword_27F60B7E8, MEMORY[0x277D85198]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F60BFF0);
          v119 = v150;
          sub_25462C9F0(&qword_27F60B7F0, &unk_27F60BFF0);
          v120 = v139;
          v121 = v143;
          sub_254680890();
          v44 = v119;
          MEMORY[0x259C14620](0, v46, v120, v118);
          v122 = v118;
          v45 = v148;
          _Block_release(v122);

          (*(v142 + 8))(v120, v121);
          (*(v140 + 8))(v46, v141);

          v28 = v132;
          v43 = v128;
          goto LABEL_28;
        }

        v53 = v127;
        v54 = [v53 attributedString];
        v55 = v149;
        sub_25467F5F0();
        v127 = v53;

        swift_getKeyPath();
        aBlock = v5;
        sub_25467F780();

        v56 = *(v5 + v47);
        sub_25462EFBC(v56);
        v58 = v57;

        v59 = v55;
        v60 = v147;
        v133(v59, v147);
        v28 = v132;
        v61 = [v132 substringWithRange_];
        if (!v61)
        {

          goto LABEL_35;
        }

        v62 = v61;
        v63 = [v62 attributedString];
        v64 = v138;
        sub_25467F5F0();

        swift_getKeyPath();
        aBlock = v5;
        sub_25467F780();

        v65 = *(v5 + v47);
        sub_25462EFBC(v65);
        v67 = v66;

        v133(v64, v60);
        swift_getKeyPath();
        aBlock = v5;
        sub_25467F780();

        v68 = v137;
        if (!__OFSUB__(v146, v137))
        {
          v69 = [v28 ax:v146 - v137 wordFromPosition:1 inDirection:?];
          v71 = __OFADD__(v69, v68);
          v72 = v69 + v68;
          v73 = v149;
          v74 = v130;
          if (!v71)
          {
            v137 = v72;
            v138 = v70;
            sub_25466ABC8(v72, v70);
            swift_getKeyPath();
            aBlock = v5;
            sub_25467F780();

            v75 = v129;
            v129(v73, v5 + v74, v60);
            swift_getKeyPath();
            aBlock = v5;
            sub_25467F780();

            v76 = *(v5 + v135);
            sub_25462EFBC(v76);
            v78 = v77;

            v133(v73, v60);
            v79 = v78 + 2.0;
            v80 = objc_opt_self();
            v81 = [v80 mainScreen];
            v146 = v36;
            [v81 bounds];
            v83 = v82;
            v85 = v84;
            v87 = v86;
            v89 = v88;

            v159.origin.x = UIEdgeInsetsInsetRect(v83, v85, v87, v89, *(v5 + 32), *(v5 + 40));
            if (CGRectGetWidth(v159) * 0.85 < v79)
            {
              v90 = [v80 mainScreen];
              [v90 bounds];
              v92 = v91;
              v94 = v93;
              v96 = v95;
              v98 = v97;

              v160.origin.x = UIEdgeInsetsInsetRect(v92, v94, v96, v98, *(v5 + 32), *(v5 + 40));
              v99 = CGRectGetWidth(v160) * 0.85;
              swift_getKeyPath();
              aBlock = v5;
              sub_25467F780();

              v100 = v147;
              v75(v73, v5 + v74, v147);
              swift_getKeyPath();
              aBlock = v5;
              sub_25467F780();

              v101 = *(v5 + v135);
              sub_25462EFBC(v101);
              v103 = v102;

              v133(v73, v100);
              v67 = sub_25465FC10() + v99 - (v103 + 2.0 - v67);
            }

            v104 = [objc_opt_self() primaryApp];
            if (v104)
            {
              v105 = v104;
              v106 = [v104 firstResponder];

              v43 = v128;
              if (v106)
              {
                v107 = [v106 uiElement];

                if (v107)
                {
                  v108 = swift_allocObject();
                  v109 = v137;
                  *(v108 + 16) = v107;
                  *(v108 + 24) = v109;
                  *(v108 + 32) = v138;
                  *(v108 + 40) = v5;
                  *(v108 + 48) = v58;
                  *(v108 + 56) = v67;
                  v157 = sub_2546713BC;
                  v158 = v108;
                  aBlock = MEMORY[0x277D85DD0];
                  v154 = 1107296256;
                  v155 = sub_2546274BC;
                  v156 = &block_descriptor_232;
                  v110 = _Block_copy(&aBlock);
                  v111 = v107;

                  v112 = v144;
                  sub_254680390();
                  v152 = MEMORY[0x277D84F90];
                  sub_254673354(&qword_27F60B7E8, MEMORY[0x277D85198]);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F60BFF0);
                  sub_25462C9F0(&qword_27F60B7F0, &unk_27F60BFF0);
                  v113 = v139;
                  v43 = v128;
                  v114 = v143;
                  v115 = v150;
                  sub_254680890();
                  v44 = v115;
                  MEMORY[0x259C14620](0, v112, v113, v110);
                  _Block_release(v110);

                  (*(v142 + 8))(v113, v114);
                  (*(v140 + 8))(v112, v141);

                  v28 = v132;
                  if (v148)
                  {
LABEL_29:
                    if (v145)
                    {
                      sub_25466ABC8(v43, v134);
                    }

                    v123 = sub_254680640();
                    (*(*(v123 - 8) + 56))(v44, 1, 1, v123);
                    sub_254680620();

                    v124 = sub_254680610();
                    v125 = swift_allocObject();
                    v126 = MEMORY[0x277D85700];
                    v125[2] = v124;
                    v125[3] = v126;
                    v125[4] = v5;
                    sub_25464CB40(0, 0, v44, &unk_254684CC8, v125);

                    return;
                  }

LABEL_37:

                  return;
                }
              }

              v45 = v148;
              v28 = v132;
LABEL_36:
              v44 = v150;
              if (v45)
              {
                goto LABEL_29;
              }

              goto LABEL_37;
            }

            v45 = v148;
            v28 = v132;
LABEL_35:
            v43 = v128;
            goto LABEL_36;
          }

LABEL_41:
          __break(1u);
          return;
        }

LABEL_40:
        __break(1u);
        goto LABEL_41;
      }
    }

    __break(1u);
    goto LABEL_40;
  }
}

void sub_2546615AC()
{
  swift_getKeyPath();
  sub_254673354(&qword_27F60B9E0, type metadata accessor for HoverTypingStore);
  sub_25467F780();

  if (*(v0 + 258) == 1)
  {
    sub_25466FEF4();
    swift_getKeyPath();
    sub_25467F780();
  }

  else
  {
    swift_getKeyPath();
    sub_25467F780();

    sub_25466FEF4();
  }
}

void sub_254661700()
{
  v1 = v0;
  v77 = sub_25467F5A0();
  v78 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v3 = &v75 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 258) == 1)
  {
    *(v0 + 258) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v75 - 2) = v0;
    *(&v75 - 8) = 1;
    aBlock = v0;
    sub_254673354(&qword_27F60B9E0, type metadata accessor for HoverTypingStore);
    sub_25467F770();
  }

  sub_25467F910();
  v6 = v5;
  if (*(v0 + 272) == v5)
  {
    v76 = 0;
    *(v0 + 272) = v5;
  }

  else
  {
    v7 = swift_getKeyPath();
    MEMORY[0x28223BE20](v7);
    *(&v75 - 2) = v0;
    *(&v75 - 1) = v6;
    aBlock = v0;
    sub_254673354(&qword_27F60B9E0, type metadata accessor for HoverTypingStore);
    sub_25467F770();
    v76 = 0;
  }

  v8 = objc_opt_self();
  v9 = [v8 mainScreen];
  [v9 bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v85.origin.x = UIEdgeInsetsInsetRect(v11, v13, v15, v17, *(v1 + 32), *(v1 + 40));
  v18 = 35.0 - CGRectGetWidth(v85) * 0.85 * 0.5;
  v19 = [v8 mainScreen];
  [v19 bounds];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  v86.origin.x = UIEdgeInsetsInsetRect(v21, v23, v25, v27, *(v1 + 32), *(v1 + 40));
  Width = CGRectGetWidth(v86);
  sub_25467F920();
  if (v29 < v18)
  {
    swift_getKeyPath();
    aBlock = v1;
    sub_254673354(&qword_27F60B9E0, type metadata accessor for HoverTypingStore);
    sub_25467F780();

    v30 = OBJC_IVAR____TtC11HoverTextUI16HoverTypingStore__displayText;
    swift_beginAccess();
    v31 = v78;
    v32 = v77;
    (*(v78 + 16))(v3, v1 + v30, v77);
    swift_getKeyPath();
    aBlock = v1;
    sub_25467F780();

    v33 = *(v1 + OBJC_IVAR____TtC11HoverTextUI16HoverTypingStore__uiFont);
    sub_25462EFBC(v33);
    v35 = v34;

    (*(v31 + 8))(v3, v32);
    v36 = v35 + 2.0;
    v37 = [v8 mainScreen];
    [v37 bounds];
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v45 = v44;

    v87.origin.x = UIEdgeInsetsInsetRect(v39, v41, v43, v45, *(v1 + 32), *(v1 + 40));
    if (CGRectGetWidth(v87) * 0.85 < v36)
    {
      swift_getKeyPath();
      aBlock = v1;
      sub_25467F780();

      if (*(v1 + 320))
      {
        return;
      }

      v46 = objc_opt_self();
      v47 = swift_allocObject();
      swift_weakInit();
      v83 = sub_2546733A4;
      v84 = v47;
      aBlock = MEMORY[0x277D85DD0];
      v80 = 1107296256;
      v81 = sub_254632CD0;
      v82 = &block_descriptor_395;
      v48 = _Block_copy(&aBlock);

      v49 = [v46 scheduledTimerWithTimeInterval:1 repeats:v48 block:0.025];
LABEL_15:
      v71 = v49;
      _Block_release(v48);
      sub_254664F68(v71);
      return;
    }
  }

  sub_25467F920();
  if (Width * 0.85 * 0.5 + -35.0 < v50)
  {
    swift_getKeyPath();
    v51 = v3;
    v52 = OBJC_IVAR____TtC11HoverTextUI16HoverTypingStore___observationRegistrar;
    aBlock = v1;
    sub_254673354(&qword_27F60B9E0, type metadata accessor for HoverTypingStore);
    sub_25467F780();

    v53 = OBJC_IVAR____TtC11HoverTextUI16HoverTypingStore__displayText;
    swift_beginAccess();
    v54 = v78;
    v55 = v77;
    (*(v78 + 16))(v51, v1 + v53, v77);
    swift_getKeyPath();
    aBlock = v1;
    v75 = v52;
    sub_25467F780();

    v56 = *(v1 + OBJC_IVAR____TtC11HoverTextUI16HoverTypingStore__uiFont);
    sub_25462EFBC(v56);
    v58 = v57;

    (*(v54 + 8))(v51, v55);
    v59 = v58 + 2.0;
    v60 = [v8 &off_27977F328];
    [v60 bounds];
    v62 = v61;
    v64 = v63;
    v66 = v65;
    v68 = v67;

    v88.origin.x = UIEdgeInsetsInsetRect(v62, v64, v66, v68, *(v1 + 32), *(v1 + 40));
    if (CGRectGetWidth(v88) * 0.85 < v59)
    {
      swift_getKeyPath();
      aBlock = v1;
      sub_25467F780();

      if (*(v1 + 320))
      {
        return;
      }

      v69 = objc_opt_self();
      v70 = swift_allocObject();
      swift_weakInit();
      v83 = sub_25467339C;
      v84 = v70;
      aBlock = MEMORY[0x277D85DD0];
      v80 = 1107296256;
      v81 = sub_254632CD0;
      v82 = &block_descriptor_391;
      v48 = _Block_copy(&aBlock);

      v49 = [v69 scheduledTimerWithTimeInterval:1 repeats:v48 block:0.025];
      goto LABEL_15;
    }
  }

  swift_getKeyPath();
  aBlock = v1;
  sub_254673354(&qword_27F60B9E0, type metadata accessor for HoverTypingStore);
  sub_25467F780();

  [*(v1 + 320) invalidate];
  if (*(v1 + 320))
  {
    v72 = swift_getKeyPath();
    MEMORY[0x28223BE20](v72);
    *(&v75 - 2) = v1;
    *(&v75 - 1) = 0;
    aBlock = v1;
    sub_25467F770();
  }

  sub_254671ACC();
  v74 = v73;
  swift_getKeyPath();
  aBlock = v1;
  sub_25467F780();

  sub_2546602A0(0, 1, v74, *(v1 + 264));
}