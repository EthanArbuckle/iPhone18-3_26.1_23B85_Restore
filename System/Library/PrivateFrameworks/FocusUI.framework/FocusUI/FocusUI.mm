uint64_t sub_24BB284E8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24BB28538(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_24BB28548()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24BB28594()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24BB285CC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24BB28604(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F078188);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24BB28674(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F078188);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_24BB299A4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_24BB2A260(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_24BB2A5C0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_24BB2A95C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, id a17)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a17);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_24BB2E808(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_24BB31888(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24BB3201C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  objc_sync_exit(v16);
  _Unwind_Resume(a1);
}

__CFString *FCUIPackageNameForActivity(void *a1)
{
  v1 = a1;
  v2 = [v1 activityIdentifier];
  if (BSEqualStrings())
  {
    v3 = [v1 activitySymbolImageName];
    v4 = BSEqualStrings();

    if (v4)
    {
      v5 = @"dnd_cg_02";
      goto LABEL_38;
    }
  }

  else
  {
  }

  v6 = [v1 activityIdentifier];
  if (BSEqualStrings())
  {
    v7 = [v1 activitySymbolImageName];
    v8 = BSEqualStrings();

    if (v8)
    {
      v5 = @"work_cg_02";
      goto LABEL_38;
    }
  }

  else
  {
  }

  v9 = [v1 activityIdentifier];
  if (BSEqualStrings())
  {
    v10 = [v1 activitySymbolImageName];
    v11 = BSEqualStrings();

    if (v11)
    {
      v5 = @"driving_cg_03";
      goto LABEL_38;
    }
  }

  else
  {
  }

  v12 = [v1 activityIdentifier];
  if (BSEqualStrings())
  {
    v13 = [v1 activitySymbolImageName];
    v14 = BSEqualStrings();

    if (v14)
    {
      v5 = @"gaming_cg_02";
      goto LABEL_38;
    }
  }

  else
  {
  }

  v15 = [v1 activityIdentifier];
  if (BSEqualStrings())
  {
    v16 = [v1 activitySymbolImageName];
    v17 = BSEqualStrings();

    if (v17)
    {
      v5 = @"mindful_cg_02";
      goto LABEL_38;
    }
  }

  else
  {
  }

  v18 = [v1 activityIdentifier];
  if (BSEqualStrings())
  {
    v19 = [v1 activitySymbolImageName];
    v20 = BSEqualStrings();

    if (v20)
    {
      v5 = @"personal_cg_02";
      goto LABEL_38;
    }
  }

  else
  {
  }

  v21 = [v1 activityIdentifier];
  if (BSEqualStrings())
  {
    v22 = [v1 activitySymbolImageName];
    v23 = BSEqualStrings();

    if (v23)
    {
      v5 = @"reading_cg_02";
      goto LABEL_38;
    }
  }

  else
  {
  }

  v24 = [v1 activityIdentifier];
  if (BSEqualStrings())
  {
    v25 = [v1 activitySymbolImageName];
    v26 = BSEqualStrings();

    if (v26)
    {
      v5 = @"sleep_cg_02";
      goto LABEL_38;
    }
  }

  else
  {
  }

  v27 = [v1 activityIdentifier];
  if (BSEqualStrings())
  {
    v28 = [v1 activitySymbolImageName];
    v29 = BSEqualStrings();

    if (v29)
    {
      v5 = @"fitness_cg_02";
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {

    v5 = 0;
  }

LABEL_38:

  return v5;
}

void sub_24BB3287C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_24BB32AA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24BB39C30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24BB39F28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void FCUIRegisterLogging()
{
  if (FCUIRegisterLogging_onceToken != -1)
  {
    FCUIRegisterLogging_cold_1();
  }
}

uint64_t __FCUIRegisterLogging_block_invoke()
{
  v0 = os_log_create("com.apple.focusui", "Selection");
  v1 = FCUILogSelection;
  FCUILogSelection = v0;

  v2 = os_log_create("com.apple.focusui", "Module");
  v3 = FCUILogModule;
  FCUILogModule = v2;

  FCUILogDiscovery = os_log_create("com.apple.focusui", "Discovery");

  return MEMORY[0x2821F96F8]();
}

void sub_24BB45B84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24BB4671C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

double FrameForBaubleAtIndex(void *a1, unint64_t a2, uint64_t a3, int a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v15 = a1;
  v16 = v15;
  if (a3)
  {
    [v15 scaledValueForValue:35.0];
    v18 = v17;
    [v16 scaledValueForValue:6.0];
    v20 = v18 * a2 - v19 * a2;
    if (a4)
    {
      v36.origin.x = a5;
      v36.origin.y = a6;
      v36.size.width = a7;
      v36.size.height = a8;
      v20 = CGRectGetMaxX(v36) - v20 - v18;
    }
  }

  else
  {
    if (a2 == 2)
    {
      [v15 scaledValueForValue:15.0];
      v29 = v28;
      v41.origin.x = a5;
      v41.origin.y = a6;
      v41.size.width = a7;
      v41.size.height = a8;
      MinX = CGRectGetMinX(v41);
      v31 = 25.0;
      if (a4)
      {
        v31 = 19.0;
      }

      [v16 scaledValueForValue:v31];
      v33 = MinX + v32;
      [v16 scaledValueForValue:4.0];
      v20 = v33 + v34 * 0.5 - v29 * 0.5;
      v42.origin.x = a5;
      v42.origin.y = a6;
      v42.size.width = a7;
      v42.size.height = a8;
      CGRectGetMinY(v42);
      [v16 scaledValueForValue:3.0];
      [v16 scaledValueForValue:25.0];
      v24 = 2.0;
    }

    else if (a2 == 1)
    {
      [v15 scaledValueForValue:19.0];
      v39.origin.x = a5;
      v39.origin.y = a6;
      v39.size.width = a7;
      v39.size.height = a8;
      v20 = CGRectGetMinX(v39);
      if ((a4 & 1) == 0)
      {
        [v16 scaledValueForValue:25.0];
        v26 = v20 + v25;
        [v16 scaledValueForValue:4.0];
        v20 = v26 + v27;
      }

      v40.origin.x = a5;
      v40.origin.y = a6;
      v40.size.width = a7;
      v40.size.height = a8;
      CGRectGetMinY(v40);
      v24 = 8.0;
    }

    else
    {
      if (a2)
      {
        v20 = *MEMORY[0x277CBF3A0];
        goto LABEL_17;
      }

      [v15 scaledValueForValue:25.0];
      v37.origin.x = a5;
      v37.origin.y = a6;
      v37.size.width = a7;
      v37.size.height = a8;
      v20 = CGRectGetMinX(v37);
      if (a4)
      {
        [v16 scaledValueForValue:19.0];
        v22 = v20 + v21;
        [v16 scaledValueForValue:4.0];
        v20 = v22 + v23;
      }

      v38.origin.x = a5;
      v38.origin.y = a6;
      v38.size.width = a7;
      v38.size.height = a8;
      CGRectGetMinY(v38);
      v24 = 3.0;
    }

    [v16 scaledValueForValue:v24];
  }

LABEL_17:

  return v20;
}

uint64_t sub_24BB47958()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t sub_24BB479B8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x60))();
  *a2 = result;
  return result;
}

uint64_t sub_24BB47A14(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0x68);
  v3 = swift_unknownObjectRetain();
  return v2(v3);
}

void (*sub_24BB47A78(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____TtC7FocusUI24QuickStartViewController_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_24BB47B10;
}

void sub_24BB47B10(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

id QuickStartViewController.__allocating_init(modeIdentifier:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  swift_unknownObjectWeakInit();
  v6 = &v5[OBJC_IVAR____TtC7FocusUI24QuickStartViewController_modeIdentifier];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_initWithNibName_bundle_, 0, 0);
}

id QuickStartViewController.init(modeIdentifier:)(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakInit();
  v5 = &v2[OBJC_IVAR____TtC7FocusUI24QuickStartViewController_modeIdentifier];
  *v5 = a1;
  *(v5 + 1) = a2;
  v7.receiver = v2;
  v7.super_class = type metadata accessor for QuickStartViewController();
  return objc_msgSendSuper2(&v7, sel_initWithNibName_bundle_, 0, 0);
}

id sub_24BB47D30(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void sub_24BB47D74()
{
  swift_unknownObjectWeakInit();
  sub_24BB4B58C();
  __break(1u);
}

uint64_t sub_24BB47E54()
{
  v1 = *(v0 + OBJC_IVAR____TtC7FocusUI24QuickStartViewController_modeIdentifier);

  return v1;
}

void sub_24BB47E90()
{
  v1 = v0;
  v2 = sub_24BB4B43C();
  v3 = *(v2 - 8);
  (MEMORY[0x28223BE20])();
  v5 = &v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F078080);
  v82 = *(v6 - 8);
  v83 = v6;
  v7 = (MEMORY[0x28223BE20])();
  v9 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v81 = &v80 - v10;
  started = type metadata accessor for QuickStartViewController();
  v84.receiver = v1;
  v84.super_class = started;
  objc_msgSendSuper2(&v84, sel_viewDidLoad);
  v12 = [v1 view];
  if (!v12)
  {
    __break(1u);
    goto LABEL_20;
  }

  v13 = v12;
  v14 = objc_opt_self();
  v15 = [v14 clearColor];
  [v13 setBackgroundColor_];

  v16 = [v1 view];
  if (!v16)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v17 = v16;
  v80 = v14;
  [v16 frame];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  v26 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  v27 = [v1 view];
  if (!v27)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v28 = v27;
  [v27 addSubview_];

  *(swift_allocObject() + 16) = v1;

  v29 = v1;
  sub_24BB4B42C();
  *(swift_allocObject() + 16) = v29;
  sub_24BB48878();
  v30 = v29;
  v31 = v81;
  sub_24BB4B4EC();

  (*(v3 + 8))(v5, v2);
  (*(v82 + 16))(v9, v31, v83);
  v32 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F078090));
  v33 = sub_24BB4B4AC();
  [v30 addChildViewController_];
  v34 = [v33 view];
  if (!v34)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v35 = v34;
  v36 = [v80 clearColor];
  [v35 setBackgroundColor_];

  v37 = [v33 view];
  if (!v37)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v38 = [v30 view];
  if (!v38)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v39 = v38;
  [v38 bounds];
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;

  [v37 setFrame_];
  v48 = [v30 view];
  if (!v48)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v49 = v48;
  v50 = [v33 view];

  if (!v50)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  [v49 addSubview_];

  [v33 didMoveToParentViewController_];
  v51 = [v33 view];

  if (!v51)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  [v51 setTranslatesAutoresizingMaskIntoConstraints_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F078098);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_24BB4EFC0;
  v53 = [v33 view];

  if (!v53)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v54 = [v53 topAnchor];

  v55 = [v30 view];
  if (!v55)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v56 = v55;
  v57 = [v55 topAnchor];

  v58 = [v54 constraintEqualToAnchor_];
  *(v52 + 32) = v58;
  v59 = [v33 view];

  if (!v59)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v60 = [v59 leadingAnchor];

  v61 = [v30 view];
  if (!v61)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v62 = v61;
  v63 = [v61 leadingAnchor];

  v64 = [v60 constraintEqualToAnchor_];
  *(v52 + 40) = v64;
  v65 = [v30 view];
  if (!v65)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v66 = v65;
  v67 = [v65 trailingAnchor];

  v68 = [v33 view];
  if (!v68)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v69 = [v68 trailingAnchor];

  v70 = [v67 constraintEqualToAnchor_];
  *(v52 + 48) = v70;
  v71 = [v30 view];
  if (!v71)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v72 = v71;
  v73 = [v71 bottomAnchor];

  v74 = [v33 view];
  if (v74)
  {
    v75 = objc_opt_self();
    v76 = [v74 bottomAnchor];

    v77 = [v73 constraintEqualToAnchor_];
    *(v52 + 56) = v77;
    sub_24BB488D0();
    v78 = sub_24BB4B57C();

    [v75 activateConstraints_];

    v79 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v30 action:sel_handleTap_];
    [v26 addGestureRecognizer_];

    (*(v82 + 8))(v81, v83);
    return;
  }

LABEL_35:
  __break(1u);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

id sub_24BB487C4(char a1)
{
  v2 = *(v1 + 16);
  if (a1)
  {
    v3 = (*((*MEMORY[0x277D85000] & *v2) + 0x60))();
    if (v3)
    {
      [v3 requestDismissal_];
      swift_unknownObjectRelease();
    }
  }

  return [v2 dismissViewControllerAnimated:1 completion:0];
}

unint64_t sub_24BB48878()
{
  result = qword_27F078088;
  if (!qword_27F078088)
  {
    sub_24BB4B43C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F078088);
  }

  return result;
}

unint64_t sub_24BB488D0()
{
  result = qword_27F0780A0;
  if (!qword_27F0780A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F0780A0);
  }

  return result;
}

uint64_t sub_24BB48964(char a1)
{
  v11.receiver = v1;
  v11.super_class = type metadata accessor for QuickStartViewController();
  objc_msgSendSuper2(&v11, sel_viewWillAppear_, a1 & 1);
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_24BB48AE4;
  *(v5 + 24) = v4;
  v10[4] = sub_24BB48B44;
  v10[5] = v5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_24BB48B6C;
  v10[3] = &block_descriptor;
  v6 = _Block_copy(v10);
  v7 = v1;

  [v3 performWithoutAnimation_];
  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_24BB48AE4()
{
  v1 = [*(v0 + 16) view];
  if (v1)
  {
    v2 = v1;
    [v1 layoutIfNeeded];
  }

  else
  {
    __break(1u);
  }
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id QuickStartViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_24BB4B55C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id QuickStartViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for QuickStartViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id ActivityEditViewController.__allocating_init(activityDescription:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC7FocusUI26ActivityEditViewController_visibleHeight] = 0x4084000000000000;
  v4 = &v3[OBJC_IVAR____TtC7FocusUI26ActivityEditViewController_willDisappearBlock];
  *v4 = 0;
  *(v4 + 1) = 0;
  *&v3[OBJC_IVAR____TtC7FocusUI26ActivityEditViewController_activityDescription] = a1;
  v6.receiver = v3;
  v6.super_class = v1;
  return objc_msgSendSuper2(&v6, sel_initWithNibName_bundle_, 0, 0);
}

id ActivityEditViewController.init(activityDescription:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC7FocusUI26ActivityEditViewController_visibleHeight] = 0x4084000000000000;
  v2 = &v1[OBJC_IVAR____TtC7FocusUI26ActivityEditViewController_willDisappearBlock];
  *v2 = 0;
  *(v2 + 1) = 0;
  *&v1[OBJC_IVAR____TtC7FocusUI26ActivityEditViewController_activityDescription] = a1;
  v4.receiver = v1;
  v4.super_class = type metadata accessor for ActivityEditViewController();
  return objc_msgSendSuper2(&v4, sel_initWithNibName_bundle_, 0, 0);
}

void sub_24BB49014()
{
  *(v0 + OBJC_IVAR____TtC7FocusUI26ActivityEditViewController_visibleHeight) = 0x4084000000000000;
  v1 = (v0 + OBJC_IVAR____TtC7FocusUI26ActivityEditViewController_willDisappearBlock);
  *v1 = 0;
  v1[1] = 0;
  sub_24BB4B58C();
  __break(1u);
}

uint64_t sub_24BB49210()
{
  v1 = (v0 + OBJC_IVAR____TtC7FocusUI26ActivityEditViewController_willDisappearBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_24BB28538(*v1);
  return v2;
}

void sub_24BB4926C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_24BB49394(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC7FocusUI26ActivityEditViewController_willDisappearBlock);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_24BB493F4(v6);
}

uint64_t sub_24BB493F4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_24BB49404@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x70))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = sub_24BB4AD8C;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t sub_24BB494A4(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_24BB4AD54;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((*MEMORY[0x277D85000] & **a2) + 0x78);
  sub_24BB28538(v3);
  return v7(v6, v5);
}

void sub_24BB495D0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0780C8);
  v60 = *(v1 - 8);
  v2 = MEMORY[0x28223BE20](v1);
  v4 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v59 = &v57 - v5;
  v6 = type metadata accessor for ActivityEditViewController();
  v63.receiver = v0;
  v63.super_class = v6;
  objc_msgSendSuper2(&v63, sel_viewDidLoad);
  v7 = [v0 view];
  if (!v7)
  {
    __break(1u);
    goto LABEL_15;
  }

  v8 = v7;
  v9 = objc_opt_self();
  v10 = [v9 clearColor];
  [v8 setBackgroundColor_];

  v11 = [v0 view];
  if (!v11)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v12 = v11;
  [v11 frame];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v21 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  v22 = [v0 view];
  if (!v22)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v23 = v22;
  v58 = v21;
  [v22 addSubview_];

  v24 = [*&v0[OBJC_IVAR____TtC7FocusUI26ActivityEditViewController_activityDescription] activityIdentifier];
  v25 = sub_24BB4B56C();
  v27 = v26;

  v57 = v27;
  v61 = sub_24BB4A908(v25);
  v62 = v28;
  *(swift_allocObject() + 16) = v0;
  sub_24BB4AA24();
  v29 = v0;
  v30 = v59;
  sub_24BB4B4EC();

  (*(v60 + 16))(v4, v30, v1);
  v31 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0780D8));
  v32 = sub_24BB4B4AC();
  [v29 addChildViewController_];
  v33 = [v32 view];
  if (!v33)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v34 = v33;
  v35 = [v9 clearColor];
  [v34 setBackgroundColor_];

  v36 = [v32 view];
  if (!v36)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v37 = [v29 view];
  if (!v37)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v38 = v37;
  [v37 bounds];
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;

  [v36 setFrame_];
  v47 = [v32 view];

  if (!v47)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  [v47 frame];
  [v47 setFrame_];

  v48 = [v32 view];
  if (!v48)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v49 = [v29 view];
  if (!v49)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v50 = v49;
  [v49 bounds];

  v51 = [v32 view];
  if (!v51)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  [v51 frame];

  [v48 frame];
  [v48 setFrame_];

  v52 = [v29 view];
  if (!v52)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v53 = v52;
  v54 = [v32 view];

  if (v54)
  {

    [v53 addSubview_];

    [v32 didMoveToParentViewController_];
    v55 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v29 action:sel_handleTap_];
    v56 = v58;
    [v58 addGestureRecognizer_];

    (*(v60 + 8))(v59, v1);
    return;
  }

LABEL_25:
  __break(1u);
}

void (*sub_24BB49C34(char a1))(void *)
{
  v6.receiver = v1;
  v6.super_class = type metadata accessor for ActivityEditViewController();
  v3 = objc_msgSendSuper2(&v6, sel_viewWillDisappear_, a1 & 1);
  result = (*((*MEMORY[0x277D85000] & *v1) + 0x70))(v3);
  if (result)
  {
    v5 = result;
    result(v1);
    return sub_24BB493F4(v5);
  }

  return result;
}

uint64_t sub_24BB49DA0(char a1)
{
  v11.receiver = v1;
  v11.super_class = type metadata accessor for ActivityEditViewController();
  objc_msgSendSuper2(&v11, sel_viewWillAppear_, a1 & 1);
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_24BB48AE4;
  *(v5 + 24) = v4;
  v10[4] = sub_24BB48B44;
  v10[5] = v5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_24BB48B6C;
  v10[3] = &block_descriptor_0;
  v6 = _Block_copy(v10);
  v7 = v1;

  [v3 performWithoutAnimation_];
  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

id ActivityEditViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_24BB4B55C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id ActivityEditViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityEditViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24BB4A118@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_24BB4B49C();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0780E0);
  sub_24BB4A218(a1, a2, a3 + *(v6 + 44));
  v7 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0780E8) + 36));
  v8 = *(sub_24BB4B47C() + 20);
  v9 = *MEMORY[0x277CE0118];
  v10 = sub_24BB4B48C();
  (*(*(v10 - 8) + 104))(&v7[v8], v9, v10);
  __asm { FMOV            V0.2D, #25.0 }

  *v7 = _Q0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F0780F0);
  *&v7[*(result + 36)] = 256;
  return result;
}

uint64_t sub_24BB4A218@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v39 = a1;
  v40 = a2;
  v44 = a3;
  v43 = sub_24BB4B44C();
  v3 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F078180);
  v7 = *(v6 - 8);
  v41 = v6;
  v42 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v39 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F078188);
  v11 = v10 - 8;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v39 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F078190);
  v18 = v17 - 8;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v39 - v22;
  v24 = *MEMORY[0x277CE0118];
  v25 = sub_24BB4B48C();
  (*(*(v25 - 8) + 104))(v23, v24, v25);
  sub_24BB4B54C();
  sub_24BB4B45C();
  v26 = &v23[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F078198) + 36)];
  v27 = v50;
  *v26 = v49;
  *(v26 + 1) = v27;
  *(v26 + 2) = v51;
  LOBYTE(v24) = sub_24BB4B4DC();
  v28 = &v23[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0781A0) + 36)];
  *v28 = v24;
  *(v28 + 8) = 0u;
  *(v28 + 24) = 0u;
  v28[40] = 1;
  *&v23[*(v18 + 44)] = sub_24BB4B4BC();
  v45 = v39;
  v46 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0781A8);
  v29 = sub_24BB4B41C();
  v30 = sub_24BB4ADC0();
  v47 = v29;
  v48 = v30;
  swift_getOpaqueTypeConformance2();
  sub_24BB4B46C();
  v31 = v43;
  (*(v3 + 104))(v5, *MEMORY[0x277D0AA00], v43);
  sub_24BB4AE18(&qword_27F0781B8, &qword_27F078180);
  v32 = v41;
  sub_24BB4B4FC();
  (*(v3 + 8))(v5, v31);
  (*(v42 + 8))(v9, v32);
  v33 = sub_24BB4B4CC();
  v34 = &v16[*(v11 + 44)];
  *v34 = v33;
  *(v34 + 8) = 0u;
  *(v34 + 24) = 0u;
  v34[40] = 1;
  sub_24BB4AE60(v23, v21);
  sub_24BB28604(v16, v14);
  v35 = v44;
  sub_24BB4AE60(v21, v44);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0781C0);
  sub_24BB28604(v14, v35 + *(v36 + 48));
  v37 = v35 + *(v36 + 64);
  *v37 = 0;
  *(v37 + 8) = 1;
  sub_24BB28674(v16);
  sub_24BB4AED0(v23);
  sub_24BB28674(v14);
  return sub_24BB4AED0(v21);
}

uint64_t sub_24BB4A6E8()
{
  v0 = sub_24BB4B41C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_24BB4B40C();
  sub_24BB4ADC0();
  sub_24BB4B53C();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_24BB4A80C@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  *a1 = sub_24BB4B49C();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0780E0);
  sub_24BB4A218(v4, v3, a1 + *(v5 + 44));
  v6 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0780E8) + 36));
  v7 = *(sub_24BB4B47C() + 20);
  v8 = *MEMORY[0x277CE0118];
  v9 = sub_24BB4B48C();
  (*(*(v9 - 8) + 104))(&v6[v7], v8, v9);
  __asm { FMOV            V0.2D, #25.0 }

  *v6 = _Q0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F0780F0);
  *&v6[*(result + 36)] = 256;
  return result;
}

uint64_t sub_24BB4A908(uint64_t a1)
{
  sub_24BB4AF38(0, &qword_27F0781C8);
  v2 = [swift_getObjCClassFromMetadata() appearance];
  v3 = objc_opt_self();
  v4 = [v3 clearColor];
  [v2 setBackgroundColor_];

  sub_24BB4AF38(0, &unk_27F0781D0);
  v5 = [swift_getObjCClassFromMetadata() appearance];
  v6 = [v3 clearColor];
  [v5 setBackgroundColor_];

  return a1;
}

unint64_t sub_24BB4AA24()
{
  result = qword_27F0780D0;
  if (!qword_27F0780D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0780D0);
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_24BB4AB80(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_24BB4ABC8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24BB4AC14()
{
  result = qword_27F078160;
  if (!qword_27F078160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0780E8);
    sub_24BB4AE18(&qword_27F078168, &qword_27F078170);
    sub_24BB4AE18(&qword_27F078178, &unk_27F0780F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F078160);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_24BB4AD54(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

unint64_t sub_24BB4ADC0()
{
  result = qword_27F0781B0;
  if (!qword_27F0781B0)
  {
    sub_24BB4B41C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0781B0);
  }

  return result;
}

uint64_t sub_24BB4AE18(unint64_t *a1, uint64_t *a2)
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

uint64_t sub_24BB4AE60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F078190);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24BB4AED0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F078190);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24BB4AF38(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
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

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x282111618](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}