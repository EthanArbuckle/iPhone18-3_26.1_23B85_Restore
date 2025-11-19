unint64_t sub_257E63F0C()
{
  result = qword_27F8FAB78;
  if (!qword_27F8FAB78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FAB60);
    sub_257E63FC4();
    sub_257BD2D4C(&qword_27F8FAB98, &qword_27F8FAB68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FAB78);
  }

  return result;
}

unint64_t sub_257E63FC4()
{
  result = qword_27F8FAB80;
  if (!qword_27F8FAB80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FAB58);
    sub_257BD2D4C(&qword_27F8FAB88, &qword_27F8FAB90);
    sub_257BD2D4C(&qword_27F8F6EC8, &qword_27F8F6ED0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FAB80);
  }

  return result;
}

unint64_t sub_257E640A8()
{
  result = qword_27F8FABC8;
  if (!qword_27F8FABC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FAB50);
    sub_257E64160();
    sub_257BD2D4C(&qword_27F8FAB98, &qword_27F8FAB68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FABC8);
  }

  return result;
}

unint64_t sub_257E64160()
{
  result = qword_27F8FABD0;
  if (!qword_27F8FABD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FABC0);
    sub_257E64244(&qword_27F8FABD8, &qword_27F8FABB8, &unk_257EEE070, sub_257E642C8);
    sub_257BD2D4C(&qword_27F8F6188, &qword_27F8F6190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FABD0);
  }

  return result;
}

uint64_t sub_257E64244(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_257E642F8()
{
  result = qword_27F8FABE8;
  if (!qword_27F8FABE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FABA8);
    sub_257E643B0();
    sub_257BD2D4C(&qword_27F8F6EC8, &qword_27F8F6ED0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FABE8);
  }

  return result;
}

unint64_t sub_257E643B0()
{
  result = qword_27F8FABF0;
  if (!qword_27F8FABF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FABA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FAB48);
    sub_257E63E54();
    swift_getOpaqueTypeConformance2();
    sub_257BD2D4C(&qword_27F8F8C60, &qword_27F8F8C68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FABF0);
  }

  return result;
}

uint64_t sub_257E644A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_257E644F4()
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

void sub_257E64750()
{
  v1 = v0;
  v9.receiver = v0;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, sel_viewDidLoad);
  v2 = *&v0[OBJC_IVAR____TtC16MagnifierSupport38InternalDetectionOptionsViewController_tableView];
  [v2 setDataSource_];
  [v2 setDelegate_];
  sub_257BD2C2C(0, &qword_27F8F5560);
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

uint64_t sub_257E649BC(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v3[OBJC_IVAR____TtC16MagnifierSupport38InternalDetectionOptionsViewController_showVideoSelector] = 0;
  v3[OBJC_IVAR____TtC16MagnifierSupport38InternalDetectionOptionsViewController_showPhotoSelector] = 0;
  v7 = MEMORY[0x277D84F90];
  *&v3[OBJC_IVAR____TtC16MagnifierSupport38InternalDetectionOptionsViewController_recordedFileArray] = MEMORY[0x277D84F90];
  v8 = AXIsInternalInstall();
  v9 = &unk_2869062A8;
  if (!v8)
  {
    v9 = v7;
  }

  *&v3[OBJC_IVAR____TtC16MagnifierSupport38InternalDetectionOptionsViewController_availableInternalDetectionSections] = v9;
  v10 = OBJC_IVAR____TtC16MagnifierSupport38InternalDetectionOptionsViewController_tableView;
  v11 = [objc_allocWithZone(MEMORY[0x277D75B40]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  v12 = objc_opt_self();
  v13 = v11;
  v14 = [v12 systemYellowColor];
  [v13 setTintColor_];

  [v13 setClipsToBounds_];
  *&v3[v10] = v13;
  if (AXIsInternalInstall())
  {
    if (a2)
    {
      v15 = sub_257ECF4C0();
    }

    else
    {
      v15 = 0;
    }

    v18.receiver = v3;
    v18.super_class = ObjectType;
    v16 = objc_msgSendSuper2(&v18, sel_initWithNibName_bundle_, v15, a3);

    return v16;
  }

  else
  {
    result = sub_257ED0410();
    __break(1u);
  }

  return result;
}

id sub_257E64D18(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F30);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v134 = &v133 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v133 - v6;
  MEMORY[0x28223BE20](v5);
  v9 = &v133 - v8;
  v10 = sub_257ECDA30();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v133 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v133 - v15;
  v17 = sub_257ECF4C0();
  v18 = sub_257ECCE30();
  v19 = [a1 dequeueReusableCellWithIdentifier:v17 forIndexPath:v18];

  v20 = sub_257ECCEA0();
  if (v20 > 1)
  {
    if (v20 == 2)
    {
      v41 = sub_257ECCE60();
      if (v41 != 1)
      {
        if (v41)
        {
          return v19;
        }

        v42 = [v19 textLabel];
        if (v42)
        {
          v43 = v42;
          v44 = sub_257ECF4C0();
          [v43 setText_];
        }

        v45 = [objc_allocWithZone(MEMORY[0x277D75AE8]) init];
        v46 = v135;
        if (*(v135 + OBJC_IVAR____TtC16MagnifierSupport38InternalDetectionOptionsViewController_showVideoSelector))
        {
          v47 = 1;
        }

        else
        {
          v47 = _s16MagnifierSupport013MAGAutomationB0V17automationEnabledSbvgZ_0();
        }

        [v45 setOn_];
        [v45 addTarget:v46 action:sel_didToggleAutomationSwitch_ forControlEvents:4096];
        goto LABEL_59;
      }

      v71 = [v19 textLabel];
      v72 = v135;
      if (v71)
      {
        v73 = v71;
        _s16MagnifierSupport013MAGAutomationB0V17automationEnabledSbvgZ_0();
        v74 = sub_257ECF4C0();

        [v73 setText_];
      }

      v75 = [objc_allocWithZone(MEMORY[0x277D75220]) init];
      v76 = CGRectMake_0();
      v78 = v77;
      v80 = v79;
      v82 = v81;
      v83 = v75;
      [v83 setFrame_];
      [v83 addTarget:v72 action:sel_didTapPhotoSelector_ forControlEvents:64];
      _s16MagnifierSupport013MAGAutomationB0V17automationEnabledSbvgZ_0();
      v84 = sub_257ECF4C0();

      [v83 setTitle:v84 forState:0];

      v85 = [objc_opt_self() lightGrayColor];
      [v83 setBackgroundColor_];

      v86 = [v83 layer];
      [v86 setCornerRadius_];

      v45 = v83;
    }

    else
    {
      if (v20 != 3)
      {
        if (v20 == 4)
        {
          v21 = sub_257ECCE60();
          if (v21 <= 3)
          {
            v22 = v21;
            v23 = [v19 textLabel];
            if (v23)
            {
              v24 = v23;
              sub_257E6616C();
              v25 = sub_257ECF4C0();

              [v24 setText_];
            }

            if (qword_281544FE0 != -1)
            {
              swift_once();
            }

            v26 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__objectPointerShape;
            swift_beginAccess();
            v27 = *(v26 + 8);
            v28 = *(v26 + 16);
            *&v141 = *v26;
            *(&v141 + 1) = v27;
            v142 = v28;
            v29 = qword_2815447E0;

            if (v29 != -1)
            {
              v30 = swift_once();
            }

            MEMORY[0x28223BE20](v30);
            *(&v133 - 2) = &v141;
            sub_257ECFD50();

            if (v137 == v22)
            {
              v31 = 3;
            }

            else
            {
              v31 = 0;
            }

            [v19 setAccessoryType_];
            [v19 setAccessoryView_];
          }
        }

        return v19;
      }

      v48 = sub_257ECCE60();
      if (v48 != 1)
      {
        if (v48)
        {
          return v19;
        }

        v49 = [v19 textLabel];
        if (v49)
        {
          v50 = v49;
          v51 = sub_257ECF4C0();
          [v50 setText_];
        }

        v45 = [objc_allocWithZone(MEMORY[0x277D75AE8]) init];
        has_internal_ui = os_variant_has_internal_ui();
        v53 = v135;
        if (!has_internal_ui || (static MAGAutomationSupport.freezeFrameAutomationURL.getter(v9), v54 = sub_257ECCB70(), v55 = 1, v56 = (*(*(v54 - 8) + 48))(v9, 1, v54), sub_257BE4084(v9, &qword_27F8F5F30), v56 == 1))
        {
          v55 = *(v53 + OBJC_IVAR____TtC16MagnifierSupport38InternalDetectionOptionsViewController_showPhotoSelector);
        }

        [v45 setOn_];
        [v45 addTarget:v53 action:sel_didToggleFreezeFrameSwitch_ forControlEvents:4096];
LABEL_59:
        [v19 setAccessoryView_];
        [v19 setAccessoryType_];
LABEL_88:

        return v19;
      }

      v87 = [v19 textLabel];
      if (v87)
      {
        v88 = v87;
        if (os_variant_has_internal_ui())
        {
          static MAGAutomationSupport.freezeFrameAutomationURL.getter(v7);
          v89 = sub_257ECCB70();
          (*(*(v89 - 8) + 48))(v7, 1, v89);
          sub_257BE4084(v7, &qword_27F8F5F30);
        }

        v116 = sub_257ECF4C0();

        [v88 setText_];
      }

      v117 = [objc_allocWithZone(MEMORY[0x277D75220]) init];
      v118 = CGRectMake_0();
      v120 = v119;
      v122 = v121;
      v124 = v123;
      v125 = v117;
      [v125 setFrame_];
      [v125 addTarget:v135 action:sel_didTapPhotoSelector_ forControlEvents:64];
      if (os_variant_has_internal_ui())
      {
        v126 = v134;
        static MAGAutomationSupport.freezeFrameAutomationURL.getter(v134);
        v127 = sub_257ECCB70();
        (*(*(v127 - 8) + 48))(v126, 1, v127);
        sub_257BE4084(v126, &qword_27F8F5F30);
      }

      v128 = sub_257ECF4C0();

      [v125 setTitle:v128 forState:0];

      v129 = [objc_opt_self() lightGrayColor];
      [v125 setBackgroundColor_];

      v130 = [v125 layer];
      [v130 setCornerRadius_];

      v45 = v125;
    }

    v131 = sub_257ECF4C0();
    [v45 setAccessibilityIdentifier_];

    [v19 setAccessoryView_];
    goto LABEL_88;
  }

  if (v20)
  {
    if (v20 != 1)
    {
      return v19;
    }

    v32 = v11;
    v33 = v10;
    v34 = sub_257ECCE60();
    if (v34 == 1)
    {
      v90 = [objc_opt_self() shared];
      v91 = [v90 signDetectorProperties];

      if (v91)
      {
        v92 = sub_257ECF3D0();

        *&v141 = 0x746E65746E6F435FLL;
        *(&v141 + 1) = 0xEF6E6F6973726556;
        v93 = MEMORY[0x277D837D0];
        sub_257ED0280();
        if (*(v92 + 16) && (v94 = sub_257C03F28(&v139), (v95 & 1) != 0))
        {
          sub_257BE41F4(*(v92 + 56) + 32 * v94, &v137);
          sub_257C09D10(&v139);
          sub_257BEBE08(&v137, &v141);
        }

        else
        {
          sub_257C09D10(&v139);
          v143 = v93;
          *&v141 = 4271950;
          *(&v141 + 1) = 0xE300000000000000;
        }

        *&v137 = 0x4449746C6F42;
        *(&v137 + 1) = 0xE600000000000000;
        sub_257ED0280();
        if (*(v92 + 16) && (v102 = sub_257C03F28(&v139), (v103 & 1) != 0))
        {
          sub_257BE41F4(*(v92 + 56) + 32 * v102, v136);
          sub_257C09D10(&v139);

          sub_257BEBE08(v136, &v137);
        }

        else
        {

          sub_257C09D10(&v139);
          v138 = v93;
          *&v137 = 4271950;
          *(&v137 + 1) = 0xE300000000000000;
        }

        v104 = [v19 textLabel];
        if (!v104)
        {
          goto LABEL_75;
        }

        v99 = v104;
        v139 = 0;
        v140 = 0xE000000000000000;
        sub_257ED02D0();
        v101 = 0xD000000000000010;
        v100 = 0x8000000257F088B0;
        goto LABEL_74;
      }

      sub_257ECD450();
      v110 = sub_257ECDA20();
      v111 = sub_257ECFBD0();
      if (os_log_type_enabled(v110, v111))
      {
        v112 = swift_slowAlloc();
        *v112 = 0;
        _os_log_impl(&dword_257BAC000, v110, v111, "Door Sign Detection Properties is not available", v112, 2u);
        MEMORY[0x259C74820](v112, -1, -1);
      }

      (*(v32 + 8))(v14, v33);
      v109 = [v19 textLabel];
    }

    else
    {
      if (v34)
      {
        return v19;
      }

      v35 = [objc_opt_self() shared];
      v36 = [v35 doorAttributesClassifierProperties];

      if (v36)
      {
        v37 = sub_257ECF3D0();

        *&v141 = 0x746E65746E6F435FLL;
        *(&v141 + 1) = 0xEF6E6F6973726556;
        v38 = MEMORY[0x277D837D0];
        sub_257ED0280();
        if (*(v37 + 16) && (v39 = sub_257C03F28(&v139), (v40 & 1) != 0))
        {
          sub_257BE41F4(*(v37 + 56) + 32 * v39, &v137);
          sub_257C09D10(&v139);
          sub_257BEBE08(&v137, &v141);
        }

        else
        {
          sub_257C09D10(&v139);
          v143 = v38;
          *&v141 = 4271950;
          *(&v141 + 1) = 0xE300000000000000;
        }

        *&v137 = 0x4449746C6F42;
        *(&v137 + 1) = 0xE600000000000000;
        sub_257ED0280();
        if (*(v37 + 16) && (v96 = sub_257C03F28(&v139), (v97 & 1) != 0))
        {
          sub_257BE41F4(*(v37 + 56) + 32 * v96, v136);
          sub_257C09D10(&v139);

          sub_257BEBE08(v136, &v137);
        }

        else
        {

          sub_257C09D10(&v139);
          v138 = v38;
          *&v137 = 4271950;
          *(&v137 + 1) = 0xE300000000000000;
        }

        v98 = [v19 textLabel];
        if (!v98)
        {
          goto LABEL_75;
        }

        v99 = v98;
        v139 = 0;
        v140 = 0xE000000000000000;
        sub_257ED02D0();
        v100 = 0x8000000257F088D0;
        v101 = 0xD000000000000011;
LABEL_74:
        MEMORY[0x259C72150](v101, v100);
        sub_257ED0400();
        MEMORY[0x259C72150](10272, 0xE200000000000000);
        sub_257ED0400();
        MEMORY[0x259C72150](41, 0xE100000000000000);
        v105 = sub_257ECF4C0();

        [v99 setText_];

LABEL_75:
        __swift_destroy_boxed_opaque_existential_0(&v137);
        __swift_destroy_boxed_opaque_existential_0(&v141);
        return v19;
      }

      sub_257ECD450();
      v106 = sub_257ECDA20();
      v107 = sub_257ECFBD0();
      if (os_log_type_enabled(v106, v107))
      {
        v108 = swift_slowAlloc();
        *v108 = 0;
        _os_log_impl(&dword_257BAC000, v106, v107, "Door Attributes Classifier Properties is not available", v108, 2u);
        MEMORY[0x259C74820](v108, -1, -1);
      }

      (*(v32 + 8))(v16, v33);
      v109 = [v19 textLabel];
    }

    v113 = v109;
    if (v113)
    {
      v114 = v113;
      v115 = sub_257ECF4C0();
      [v114 setText_];
    }
  }

  else if (!sub_257ECCE60())
  {
    v57 = [v19 textLabel];
    if (v57)
    {
      v58 = v57;
      type metadata accessor for MAGUtilities();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v60 = [objc_opt_self() bundleForClass_];
      v61 = sub_257ECF4C0();
      v62 = sub_257ECF4C0();
      v63 = [v60 localizedStringForKey:v61 value:0 table:v62];

      sub_257ECF500();
      v64 = sub_257ECF4C0();

      [v58 setText_];
    }

    v65 = [objc_allocWithZone(MEMORY[0x277D75AE8]) init];
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v66 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__magnifierInDebugState;
    swift_beginAccess();
    v67 = *(v66 + 8);
    v68 = *(v66 + 16);
    *&v141 = *v66;
    *(&v141 + 1) = v67;
    v142 = v68;
    v69 = qword_2815447E0;

    if (v69 != -1)
    {
      v70 = swift_once();
    }

    MEMORY[0x28223BE20](v70);
    *(&v133 - 2) = &v141;
    sub_257ECFD50();

    [v65 setOn_];
    [v65 addTarget:v135 action:sel_didToggleRecordingSwitch_ forControlEvents:4096];
    [v19 setAccessoryView_];
    [v19 setAccessoryType_];
  }

  return v19;
}

uint64_t sub_257E6616C()
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

void sub_257E664BC(void *a1, uint64_t a2)
{
  v4 = sub_257ECCDF0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_257ECDA30();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v21 - v13;
  if ([a1 isOn])
  {
    *(a2 + OBJC_IVAR____TtC16MagnifierSupport38InternalDetectionOptionsViewController_showVideoSelector) = 1;
    sub_257ECD420();
    v15 = sub_257ECDA20();
    v16 = sub_257ECFBD0();
    if (!os_log_type_enabled(v15, v16))
    {
      v12 = v14;
      goto LABEL_8;
    }

    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_257BAC000, v15, v16, "Enabling AR replay", v17, 2u);
    v12 = v14;
    goto LABEL_6;
  }

  *(a2 + OBJC_IVAR____TtC16MagnifierSupport38InternalDetectionOptionsViewController_showVideoSelector) = 0;
  _s16MagnifierSupport013MAGAutomationB0V16clearReplayVideoyyFZ_0();
  sub_257ECD420();
  v15 = sub_257ECDA20();
  v18 = sub_257ECFBD0();
  if (os_log_type_enabled(v15, v18))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_257BAC000, v15, v18, "Clearing automation video and disabling AR replay", v17, 2u);
LABEL_6:
    MEMORY[0x259C74820](v17, -1, -1);
  }

LABEL_8:

  (*(v9 + 8))(v12, v8);
  v19 = *(a2 + OBJC_IVAR____TtC16MagnifierSupport38InternalDetectionOptionsViewController_tableView);
  v21[1] = &unk_2869062F8;
  sub_257E69AC0(&qword_27F8F58A0, 255, MEMORY[0x277CC9A28]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D80);
  sub_257BD2D4C(&qword_27F8F58B0, &unk_27F8F4D80);
  sub_257ED0180();
  v20 = sub_257ECCDE0();
  (*(v5 + 8))(v7, v4);
  [v19 reloadSections:v20 withRowAnimation:100];
}

uint64_t sub_257E668D0(void *a1)
{
  v28 = a1;
  v1 = sub_257ECF2A0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FACA8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v27 - v6;
  v29 = sub_257ECF2D0();
  v8 = *(v29 - 8);
  v9 = MEMORY[0x28223BE20](v29);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v27 - v12;
  v14 = [objc_opt_self() sharedPhotoLibrary];
  sub_257ECF290();
  sub_257ECF250();
  v15 = sub_257ECF260();
  v27 = *(*(v15 - 8) + 56);
  v27(v7, 0, 1, v15);
  sub_257ECF2C0();
  (*(v2 + 104))(v4, *MEMORY[0x277CD9D40], v1);
  sub_257ECF2B0();
  v16 = [v28 accessibilityIdentifier];
  if (v16)
  {
    v17 = v16;
    v18 = sub_257ECF500();
    v20 = v19;

    if (v18 == 0x45535F4F544F4850 && v20 == 0xEE00524F5443454CLL)
    {

LABEL_6:
      sub_257ECF240();
      v27(v7, 0, 1, v15);
      sub_257ECF2C0();
      goto LABEL_7;
    }

    v21 = sub_257ED0640();

    if (v21)
    {
      goto LABEL_6;
    }
  }

LABEL_7:
  sub_257BD2C2C(0, &qword_27F8FACB0);
  v22 = v29;
  (*(v8 + 16))(v11, v13, v29);
  v23 = sub_257ECFE30();
  sub_257E69AC0(&qword_27F8FACB8, v24, type metadata accessor for InternalDetectionOptionsViewController);
  v25 = v30;
  swift_unknownObjectRetain();
  sub_257ECFE40();
  [v25 presentViewController:v23 animated:1 completion:0];

  return (*(v8 + 8))(v13, v22);
}

uint64_t sub_257E66D24(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = a4;
  v7 = sub_257ECF120();
  v22 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_257ECF190();
  v10 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257BD2C2C(0, &qword_281543F10);
  v13 = sub_257ECFD30();
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = v4;
  aBlock[4] = a3;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_257D231C0;
  aBlock[3] = v20;
  v15 = _Block_copy(aBlock);
  v16 = a1;
  v17 = v4;

  sub_257ECF150();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_257E69AC0(&qword_281544090, 255, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
  sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480);
  sub_257ED0180();
  MEMORY[0x259C72880](0, v12, v9, v15);
  _Block_release(v15);

  (*(v22 + 8))(v9, v7);
  return (*(v10 + 8))(v12, v21);
}

void sub_257E67018(void *a1, uint64_t a2)
{
  v4 = sub_257ECCDF0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 isOn])
  {
    *(a2 + OBJC_IVAR____TtC16MagnifierSupport38InternalDetectionOptionsViewController_showPhotoSelector) = 1;
  }

  else
  {
    *(a2 + OBJC_IVAR____TtC16MagnifierSupport38InternalDetectionOptionsViewController_showPhotoSelector) = 0;
    if (qword_27F8F4648 != -1)
    {
      swift_once();
    }

    v8 = qword_27F8F87A8;
    v9 = sub_257ECF4C0();
    [v8 removeObjectForKey_];
  }

  v10 = *(a2 + OBJC_IVAR____TtC16MagnifierSupport38InternalDetectionOptionsViewController_tableView);
  v12[1] = &unk_286906320;
  sub_257E69AC0(&qword_27F8F58A0, 255, MEMORY[0x277CC9A28]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D80);
  sub_257BD2D4C(&qword_27F8F58B0, &unk_27F8F4D80);
  sub_257ED0180();
  v11 = sub_257ECCDE0();
  (*(v5 + 8))(v7, v4);
  [v10 reloadSections:v11 withRowAnimation:100];
}

void sub_257E672F8(void *a1)
{
  v3 = sub_257ECCEB0();
  v49 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_257ECF120();
  v48 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_257ECDA30();
  v50 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_257ECCE30();
  v51 = [a1 cellForRowAtIndexPath_];

  if (!v51)
  {
    return;
  }

  v13 = sub_257ECCE30();
  [a1 deselectRowAtIndexPath:v13 animated:1];

  v14 = sub_257ECCEA0();
  v15 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport38InternalDetectionOptionsViewController_availableInternalDetectionSections);
  if (v14 < *(v15 + 16))
  {
    v16 = sub_257ECCEA0();
    if ((v16 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v16 < *(v15 + 16))
    {
      v17 = *(v15 + v16 + 32);
      if (v17 <= 1)
      {
        if (!*(v15 + v16 + 32) && !sub_257ECCE60())
        {
          if (qword_281544FE0 != -1)
          {
            swift_once();
          }

          v36 = *(qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls_selectedDetectionRecordingOptions);
          if (*(v36 + 16))
          {
            [v51 setAccessoryType_];
            v37 = MEMORY[0x277D84F90];
          }

          else
          {

            [v51 setAccessoryType_];
            v55 = v36;
            sub_257EB0FF0(&unk_286906348);
            v37 = v55;
          }

          sub_257ECD420();

          v38 = sub_257ECDA20();
          v39 = sub_257ECFBD0();

          if (os_log_type_enabled(v38, v39))
          {
            v40 = swift_slowAlloc();
            v41 = swift_slowAlloc();
            v55 = v41;
            *v40 = 136315138;
            v42 = MEMORY[0x259C72340](v37, &type metadata for DetectionRecording);
            v44 = v43;

            v45 = sub_257BF1FC8(v42, v44, &v55);

            *(v40 + 4) = v45;
            _os_log_impl(&dword_257BAC000, v38, v39, "New people detection recording options: %s", v40, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v41);
            MEMORY[0x259C74820](v41, -1, -1);
            MEMORY[0x259C74820](v40, -1, -1);
          }

          else
          {
          }

          (*(v50 + 8))(v11, v9);
          sub_257D5854C(v37);

          goto LABEL_36;
        }
      }

      else if (v17 != 2 && v17 != 3)
      {
        v16 = sub_257ECCE60();
        if (v16 < 4)
        {
          if (qword_281544FE0 == -1)
          {
LABEL_10:
            v50 = v16;
            v47[1] = qword_281548348;
            v18 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__objectPointerShape;
            swift_beginAccess();
            v19 = *(v18 + 8);
            v20 = *(v18 + 16);
            v52[0] = *v18;
            v52[1] = v19;
            v53 = v20;
            v21 = qword_2815447E0;

            if (v21 != -1)
            {
              v22 = swift_once();
            }

            MEMORY[0x28223BE20](v22);
            v47[-2] = v52;
            sub_257ECFD50();

            v23 = v50;
            if (v54 != v50)
            {
              swift_beginAccess();
              v54 = v23;
              v24 = sub_257ECF110();
              MEMORY[0x28223BE20](v24);
              v47[-2] = &v54;
              v47[-1] = v18;
              sub_257ECFD40();
              (*(v48 + 8))(v8, v6);
              swift_endAccess();
              swift_getKeyPath();
              swift_getKeyPath();
              LOBYTE(v52[0]) = 1;
              sub_257ECC3F0();
              sub_257ECDD70();
              v25 = (v49 + 8);
              MEMORY[0x259C6F970](byte_286906390, 4);
              v26 = sub_257ECCE30();
              v27 = [a1 cellForRowAtIndexPath_];

              if (v27)
              {
                [v27 setAccessoryType_];
              }

              v28 = *v25;
              (*v25)(v5, v3);
              MEMORY[0x259C6F970](byte_286906391, 4);
              v29 = sub_257ECCE30();
              v30 = [a1 cellForRowAtIndexPath_];

              if (v30)
              {
                [v30 setAccessoryType_];
              }

              v28(v5, v3);
              MEMORY[0x259C6F970](byte_286906392, 4);
              v31 = sub_257ECCE30();
              v32 = [a1 cellForRowAtIndexPath_];

              if (v32)
              {
                [v32 setAccessoryType_];
              }

              v28(v5, v3);
              MEMORY[0x259C6F970](byte_286906393, 4);
              v33 = sub_257ECCE30();
              v34 = [a1 cellForRowAtIndexPath_];

              if (v34)
              {
                [v34 setAccessoryType_];
              }

              v28(v5, v3);
              [v51 setAccessoryType_];
            }

LABEL_36:

            return;
          }

LABEL_40:
          v46 = v16;
          swift_once();
          v16 = v46;
          goto LABEL_10;
        }
      }

      goto LABEL_24;
    }

    __break(1u);
    goto LABEL_40;
  }

LABEL_24:
  v35 = v51;
}

void sub_257E67C9C(uint64_t a1, int a2)
{
  v119 = a2;
  aBlock[6] = *MEMORY[0x277D85DE8];
  v4 = sub_257ECF120();
  v124 = *(v4 - 8);
  v125 = v4;
  MEMORY[0x28223BE20](v4);
  v122 = &v108[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v123 = sub_257ECF190();
  v121 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v120 = &v108[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_257ECDA30();
  v126 = *(v7 - 8);
  v127 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v118 = &v108[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v108[-v11];
  MEMORY[0x28223BE20](v10);
  v14 = &v108[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F30);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v108[-v16];
  v18 = sub_257ECCB70();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v108[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = MEMORY[0x28223BE20](v20);
  v117 = &v108[-v24];
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v108[-v26];
  v28 = MEMORY[0x28223BE20](v25);
  v128 = &v108[-v29];
  MEMORY[0x28223BE20](v28);
  v31 = &v108[-v30];
  sub_257C1C614(a1, v17);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_257BE4084(v17, &qword_27F8F5F30);
    return;
  }

  v115 = v14;
  (*(v19 + 32))(v31, v17, v18);
  v32 = objc_opt_self();
  v33 = [v32 defaultManager];
  aBlock[0] = 0;
  v34 = v18;
  v35 = [v33 URLForDirectory:9 inDomain:1 appropriateForURL:0 create:0 error:aBlock];

  if (!v35)
  {
    v54 = aBlock[0];
    v55 = sub_257ECC9F0();

    swift_willThrow();
    (*(v19 + 8))(v31, v34);
    return;
  }

  v116 = v34;
  v113 = v2;
  v36 = aBlock[0];
  sub_257ECCAD0();
  v37 = sub_257ECF4C0();

  v38 = [v35 URLByAppendingPathComponent_];

  if (!v38)
  {
    (*(v19 + 8))(v31, v116);

    return;
  }

  v111 = v35;
  v114 = v31;
  v112 = v19;
  v39 = v128;
  sub_257ECCB20();

  v40 = [v32 defaultManager];
  sub_257ECCB40();
  v41 = sub_257ECF4C0();

  v42 = [v40 fileExistsAtPath_];

  if (v42)
  {
    sub_257ECD420();
    v43 = v112;
    v44 = v116;
    (*(v112 + 16))(v22, v114, v116);
    v45 = sub_257ECDA20();
    v46 = sub_257ECFBD0();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      aBlock[0] = v48;
      *v47 = 136315138;
      sub_257E69AC0(&qword_27F8FAC90, 255, MEMORY[0x277CC9260]);
      v49 = sub_257ED0600();
      v51 = v50;
      v118 = *(v43 + 8);
      (v118)(v22, v44);
      v52 = sub_257BF1FC8(v49, v51, aBlock);

      *(v47 + 4) = v52;
      _os_log_impl(&dword_257BAC000, v45, v46, "File: %s already saved in app container", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v48);
      MEMORY[0x259C74820](v48, -1, -1);
      v53 = v47;
      v39 = v128;
      MEMORY[0x259C74820](v53, -1, -1);
    }

    else
    {

      v118 = *(v43 + 8);
      (v118)(v22, v44);
    }

    (*(v126 + 8))(v12, v127);
LABEL_20:
    v96 = v119;
    if (v119 == 3)
    {
      _s16MagnifierSupport013MAGAutomationB0V19setFreezeFramePhoto2toy10Foundation3URLV_tFZ_0();
    }

    else if (v119 == 2)
    {
      _s16MagnifierSupport013MAGAutomationB0V9setReplay2toy10Foundation3URLV_tFZ_0();
    }

    sub_257BD2C2C(0, &qword_281543F10);
    v97 = sub_257ECFD30();
    v98 = swift_allocObject();
    v99 = v113;
    *(v98 + 16) = v113;
    *(v98 + 24) = v96;
    aBlock[4] = sub_257E699E4;
    aBlock[5] = v98;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_257D231C0;
    aBlock[3] = &block_descriptor_22_0;
    v100 = _Block_copy(aBlock);
    v101 = v99;

    v102 = v120;
    sub_257ECF150();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_257E69AC0(&qword_281544090, 255, MEMORY[0x277D85198]);
    v103 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
    sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480);
    v104 = v122;
    v105 = v125;
    sub_257ED0180();
    MEMORY[0x259C72880](0, v102, v104, v100);
    _Block_release(v100);

    (*(v124 + 8))(v104, v105);
    (*(v121 + 8))(v102, v123);
    v106 = v116;
    v107 = v118;
    (v118)(v103, v116);
    v107(v114, v106);
    return;
  }

  v56 = [v32 defaultManager];
  v57 = v114;
  v58 = sub_257ECCAE0();
  v59 = sub_257ECCAE0();
  aBlock[0] = 0;
  v60 = [v56 copyItemAtURL:v58 toURL:v59 error:aBlock];

  v61 = v112;
  if (v60)
  {
    v62 = aBlock[0];
    v63 = v115;
    sub_257ECD420();
    v64 = *(v61 + 16);
    v65 = v116;
    v64(v27, v57, v116);
    v66 = v117;
    v64(v117, v39, v65);
    v67 = sub_257ECDA20();
    v68 = sub_257ECFBD0();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      aBlock[0] = v110;
      *v69 = 136315394;
      sub_257E69AC0(&qword_27F8FAC90, 255, MEMORY[0x277CC9260]);
      v70 = v66;
      v71 = sub_257ED0600();
      v73 = v72;
      v109 = v68;
      v74 = *(v112 + 8);
      (v74)(v27, v65);
      v75 = sub_257BF1FC8(v71, v73, aBlock);

      *(v69 + 4) = v75;
      *(v69 + 12) = 2080;
      v76 = sub_257ED0600();
      v78 = v77;
      v118 = v74;
      (v74)(v70, v65);
      v79 = sub_257BF1FC8(v76, v78, aBlock);

      *(v69 + 14) = v79;
      _os_log_impl(&dword_257BAC000, v67, v109, "Copied %s to %s", v69, 0x16u);
      v80 = v110;
      swift_arrayDestroy();
      MEMORY[0x259C74820](v80, -1, -1);
      MEMORY[0x259C74820](v69, -1, -1);

      (*(v126 + 8))(v115, v127);
    }

    else
    {

      v95 = *(v61 + 8);
      (v95)(v66, v65);
      v118 = v95;
      (v95)(v27, v65);
      (*(v126 + 8))(v63, v127);
    }

    v39 = v128;
    goto LABEL_20;
  }

  v81 = aBlock[0];
  v82 = sub_257ECC9F0();

  swift_willThrow();
  v83 = v118;
  sub_257ECD420();
  v84 = v82;
  v85 = sub_257ECDA20();
  v86 = sub_257ECFBD0();

  v87 = os_log_type_enabled(v85, v86);
  v88 = v111;
  if (v87)
  {
    v89 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    *v89 = 138412290;
    v91 = v82;
    v92 = _swift_stdlib_bridgeErrorToNSError();
    *(v89 + 4) = v92;
    *v90 = v92;
    _os_log_impl(&dword_257BAC000, v85, v86, "Internal Setting Asset Loading Error: %@", v89, 0xCu);
    sub_257BE4084(v90, &unk_27F8F5490);
    MEMORY[0x259C74820](v90, -1, -1);
    MEMORY[0x259C74820](v89, -1, -1);
  }

  (*(v126 + 8))(v83, v127);
  v93 = *(v61 + 8);
  v94 = v116;
  v93(v39, v116);
  v93(v57, v94);
}

uint64_t sub_257E68A9C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F30);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - v7;
  v9 = *(a1 + 32);
  if (a2)
  {
    sub_257ECCB20();
    v10 = sub_257ECCB70();
    (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  }

  else
  {
    v11 = sub_257ECCB70();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  }

  sub_257ECC3F0();
  v12 = a3;
  v9(v8, a3);

  return sub_257BE4084(v8, &qword_27F8F5F30);
}

void sub_257E68BF0(char *a1, unsigned __int8 a2)
{
  v4 = sub_257ECCDF0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 dismissViewControllerAnimated:1 completion:0];
  v8 = *&a1[OBJC_IVAR____TtC16MagnifierSupport38InternalDetectionOptionsViewController_tableView];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F6960);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_257ED6D30;
  *(v9 + 32) = a2;
  v11[1] = v9;
  sub_257E69AC0(&qword_27F8F58A0, 255, MEMORY[0x277CC9A28]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D80);
  sub_257BD2D4C(&qword_27F8F58B0, &unk_27F8F4D80);
  sub_257ED0180();
  v10 = sub_257ECCDE0();
  (*(v5 + 8))(v7, v4);
  [v8 reloadSections:v10 withRowAnimation:100];
}

unint64_t sub_257E68EFC()
{
  result = qword_27F8FAC60;
  if (!qword_27F8FAC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FAC60);
  }

  return result;
}

unint64_t sub_257E68F98()
{
  result = qword_27F8FAC78;
  if (!qword_27F8FAC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FAC78);
  }

  return result;
}

void sub_257E68FEC()
{
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport38InternalDetectionOptionsViewController_showVideoSelector) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport38InternalDetectionOptionsViewController_showPhotoSelector) = 0;
  v1 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport38InternalDetectionOptionsViewController_recordedFileArray) = MEMORY[0x277D84F90];
  v2 = AXIsInternalInstall();
  v3 = &unk_2869062D0;
  if (!v2)
  {
    v3 = v1;
  }

  *(v0 + OBJC_IVAR____TtC16MagnifierSupport38InternalDetectionOptionsViewController_availableInternalDetectionSections) = v3;
  v4 = OBJC_IVAR____TtC16MagnifierSupport38InternalDetectionOptionsViewController_tableView;
  v5 = [objc_allocWithZone(MEMORY[0x277D75B40]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 systemYellowColor];
  [v7 setTintColor_];

  [v7 setClipsToBounds_];
  *(v0 + v4) = v7;
  sub_257ED0410();
  __break(1u);
}

uint64_t sub_257E6913C(unint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F30);
  result = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v7 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport38InternalDetectionOptionsViewController_availableInternalDetectionSections);
  if (*(v7 + 16) <= a1)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v8 = *(v7 + a1 + 32);
  if (v8 <= 1)
  {
    if (!v8)
    {
      return 1;
    }

    return 2;
  }

  if (v8 != 2)
  {
    if (v8 != 3)
    {
      return 4;
    }

    if (!os_variant_has_internal_ui() || (static MAGAutomationSupport.freezeFrameAutomationURL.getter(v6), v9 = sub_257ECCB70(), v10 = (*(*(v9 - 8) + 48))(v6, 1, v9), sub_257BE4084(v6, &qword_27F8F5F30), v10 == 1))
    {
      v11 = OBJC_IVAR____TtC16MagnifierSupport38InternalDetectionOptionsViewController_showPhotoSelector;
      goto LABEL_15;
    }

    return 2;
  }

  if (_s16MagnifierSupport013MAGAutomationB0V17automationEnabledSbvgZ_0())
  {
    return 2;
  }

  v11 = OBJC_IVAR____TtC16MagnifierSupport38InternalDetectionOptionsViewController_showVideoSelector;
LABEL_15:
  if (*(v1 + v11))
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_257E692B8(void *a1)
{
  v2 = sub_257ECF120();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ([a1 isOn])
  {
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v6 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__magnifierInDebugState;
    swift_beginAccess();
    v10 = 1;
    if (qword_2815447E0 == -1)
    {
      goto LABEL_9;
    }

LABEL_10:
    swift_once();
    goto LABEL_9;
  }

  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v6 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__magnifierInDebugState;
  swift_beginAccess();
  v10 = 0;
  if (qword_2815447E0 != -1)
  {
    goto LABEL_10;
  }

LABEL_9:
  v7 = sub_257ECF110();
  MEMORY[0x28223BE20](v7);
  *&v9[-16] = &v10;
  *&v9[-8] = v6;
  sub_257ECFD40();
  (*(v3 + 8))(v5, v2);
  return swift_endAccess();
}

id sub_257E69570(uint64_t a1)
{
  v2 = v1;
  v4 = sub_257ECD8B0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_257ECF280();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16))
  {
    (*(v9 + 16))(v11, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)), v8);
    v12 = sub_257ECF270();
    sub_257BD2C2C(0, &unk_27F8FAC80);
    v13 = [v12 canLoadObjectOfClass_];

    if ((v13 & 1) != 0 || (v14 = sub_257ECF270(), sub_257BD2C2C(0, &qword_281543DF0), v15 = [v14 canLoadObjectOfClass_], v14, v15))
    {
      v16 = sub_257ECF270();
      v17 = sub_257ECF4C0();
      v18 = swift_allocObject();
      *(v18 + 16) = v2;
      v29 = sub_257E699BC;
      v30 = v18;
      aBlock = MEMORY[0x277D85DD0];
      v26 = 1107296256;
      v19 = &block_descriptor_16_1;
    }

    else
    {
      v16 = sub_257ECF270();
      sub_257ECD890();
      sub_257ECD870();
      (*(v5 + 8))(v7, v4);
      v17 = sub_257ECF4C0();

      v21 = swift_allocObject();
      *(v21 + 16) = v2;
      v29 = sub_257E6997C;
      v30 = v21;
      aBlock = MEMORY[0x277D85DD0];
      v26 = 1107296256;
      v19 = &block_descriptor_61;
    }

    v27 = sub_257E68A9C;
    v28 = v19;
    v22 = _Block_copy(&aBlock);
    v23 = v2;

    v24 = [v16 loadFileRepresentationForTypeIdentifier:v17 completionHandler:{v22, aBlock, v26}];
    _Block_release(v22);

    return (*(v9 + 8))(v11, v8);
  }

  else
  {

    return [v2 dismissViewControllerAnimated:1 completion:0];
  }
}

uint64_t block_copy_helper_61(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_257ECC3F0();
}

unint64_t sub_257E699F0()
{
  result = qword_27F8FAC98;
  if (!qword_27F8FAC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FAC98);
  }

  return result;
}

unint64_t sub_257E69A44()
{
  result = qword_27F8FACA0;
  if (!qword_27F8FACA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FACA0);
  }

  return result;
}

uint64_t sub_257E69AC0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_257E69C28()
{
  result = qword_27F8FACC0;
  if (!qword_27F8FACC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FACC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FACC0);
  }

  return result;
}

unint64_t sub_257E69C90()
{
  result = qword_27F8FACD0;
  if (!qword_27F8FACD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FACD0);
  }

  return result;
}

unint64_t sub_257E69CE4()
{
  result = qword_27F8FACD8;
  if (!qword_27F8FACD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FACD8);
  }

  return result;
}

uint64_t type metadata accessor for MFSnapshotProvider()
{
  result = qword_27F8FACE8;
  if (!qword_27F8FACE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_257E69FB4()
{
  result = sub_257ECCB70();
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

id sub_257E6A058()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x277CD46C8]) init];
  v3 = sub_257ECF4C0();
  [v2 setTitle_];

  v4 = OBJC_IVAR____TtC16MagnifierSupport18MFSnapshotProvider_url;
  v5 = sub_257ECCAE0();
  [v2 setOriginalURL_];

  v6 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport18MFSnapshotProvider_image);
  v7 = v6;
  if (v6)
  {
    goto LABEL_5;
  }

  if (qword_27F8F46D8 != -1)
  {
    swift_once();
  }

  v7 = sub_257C76CCC(v1 + v4);
  if (v7)
  {
LABEL_5:
    v8 = objc_allocWithZone(MEMORY[0x277CCAA88]);
    v9 = v6;
    v10 = [v8 initWithObject_];
    [v2 setImageProvider_];
  }

  if (qword_27F8F46E0 != -1)
  {
    swift_once();
  }

  v11 = sub_257C76CCC(v1 + v4);
  if (v11)
  {
    v12 = v11;
    v13 = [objc_allocWithZone(MEMORY[0x277CCAA88]) initWithObject_];
    [v2 setIconProvider_];
  }

  return v2;
}

uint64_t MAGVQATranscriptView.init(messages:showingTranscriptView:forLiveRecognition:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char a3@<W3>, char a4@<W4>, uint64_t a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FACF8);
  result = sub_257ECEE50();
  *a5 = v11;
  *(a5 + 8) = v12;
  *(a5 + 16) = a1;
  *(a5 + 24) = a2;
  *(a5 + 32) = a3;
  *(a5 + 33) = a4;
  return result;
}

uint64_t MAGMessageSender.hashValue.getter()
{
  v1 = *v0;
  sub_257ED07B0();
  MEMORY[0x259C732E0](v1);
  return sub_257ED0800();
}

uint64_t MAGMessage.init(content:sender:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a3;
  sub_257ECCCE0();
  result = type metadata accessor for MAGMessage(0);
  v9 = (a4 + *(result + 20));
  *v9 = a1;
  v9[1] = a2;
  *(a4 + *(result + 24)) = v7;
  return result;
}

uint64_t static MAGMessage.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (sub_257ECCCC0() & 1) != 0 && ((v4 = type metadata accessor for MAGMessage(0), v5 = *(v4 + 20), v6 = *(a1 + v5), v7 = *(a1 + v5 + 8), v8 = (a2 + v5), v6 == *v8) ? (v9 = v7 == v8[1]) : (v9 = 0), v9 || (sub_257ED0640()))
  {
    v10 = *(a1 + *(v4 + 24)) ^ *(a2 + *(v4 + 24)) ^ 1;
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t MAGMessage.hash(into:)()
{
  sub_257ECCCF0();
  sub_257E6D430(&qword_27F8F57B0, MEMORY[0x277CC95F0]);
  sub_257ECF400();
  v1 = type metadata accessor for MAGMessage(0);
  sub_257ECF5D0();
  return MEMORY[0x259C732E0](*(v0 + *(v1 + 24)));
}

uint64_t MAGMessage.hashValue.getter()
{
  sub_257ED07B0();
  sub_257ECCCF0();
  sub_257E6D430(&qword_27F8F57B0, MEMORY[0x277CC95F0]);
  sub_257ECF400();
  v1 = type metadata accessor for MAGMessage(0);
  sub_257ECF5D0();
  MEMORY[0x259C732E0](*(v0 + *(v1 + 24)));
  return sub_257ED0800();
}

uint64_t sub_257E6A5C0(uint64_t a1)
{
  sub_257ED07B0();
  sub_257ECCCF0();
  sub_257E6D430(&qword_27F8F57B0, MEMORY[0x277CC95F0]);
  sub_257ECF400();
  sub_257ECF5D0();
  MEMORY[0x259C732E0](*(v1 + *(a1 + 24)));
  return sub_257ED0800();
}

uint64_t sub_257E6A678(uint64_t a1, uint64_t a2)
{
  sub_257ECCCF0();
  sub_257E6D430(&qword_27F8F57B0, MEMORY[0x277CC95F0]);
  sub_257ECF400();
  sub_257ECF5D0();
  return MEMORY[0x259C732E0](*(v2 + *(a2 + 24)));
}

uint64_t sub_257E6A718(uint64_t a1, uint64_t a2)
{
  sub_257ED07B0();
  sub_257ECCCF0();
  sub_257E6D430(&qword_27F8F57B0, MEMORY[0x277CC95F0]);
  sub_257ECF400();
  sub_257ECF5D0();
  MEMORY[0x259C732E0](*(v2 + *(a2 + 24)));
  return sub_257ED0800();
}

uint64_t sub_257E6A7CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_257ECCCC0() & 1) != 0 && ((v6 = *(a3 + 20), v7 = *(a1 + v6), v8 = *(a1 + v6 + 8), v9 = (a2 + v6), v7 == *v9) ? (v10 = v8 == v9[1]) : (v10 = 0), v10 || (sub_257ED0640()))
  {
    v11 = *(a1 + *(a3 + 24)) ^ *(a2 + *(a3 + 24)) ^ 1;
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t sub_257E6A850@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FADD8);
  MEMORY[0x28223BE20](v2 - 8);
  v41 = v40 - v3;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  *&v46 = *v1;
  *(&v46 + 1) = v4;
  v6 = sub_257BDAB08();

  v40[1] = v6;
  v7 = sub_257ECEAF0();
  v9 = v8;
  LOBYTE(v6) = v10;
  v12 = v11;
  sub_257ECF070();
  sub_257ECE2F0();
  v13 = v6 & 1;
  v64 = v6 & 1;
  if (v5)
  {
    v14 = sub_257ECEA30();
  }

  else
  {
    v14 = sub_257ECE9C0();
  }

  v15 = v14;
  KeyPath = swift_getKeyPath();
  if (v5)
  {
    v17 = sub_257ECEDB0();
  }

  else
  {
    v17 = sub_257ECEDC0();
  }

  v18 = v17;
  v19 = swift_getKeyPath();
  *&v46 = v7;
  *(&v46 + 1) = v9;
  LOBYTE(v47) = v13;
  v52 = v61;
  v53 = v62;
  v54 = v63;
  v48 = v57;
  v49 = v58;
  v50 = v59;
  v51 = v60;
  *(&v47 + 1) = v12;
  *&v55 = KeyPath;
  *(&v55 + 1) = v15;
  *&v56 = v19;
  *(&v56 + 1) = v18;
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v21 = [objc_opt_self() bundleForClass_];
  v22 = sub_257ECF4C0();
  v23 = sub_257ECF4C0();
  v24 = [v21 localizedStringForKey:v22 value:0 table:v23];

  v25 = sub_257ECF500();
  v27 = v26;

  v43 = v25;
  v44 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FADE0);
  sub_257E6DCD8();
  v28 = v41;
  sub_257ECEBD0();

  v45[8] = v54;
  v45[9] = v55;
  v45[10] = v56;
  v45[4] = v50;
  v45[5] = v51;
  v45[6] = v52;
  v45[7] = v53;
  v45[0] = v46;
  v45[1] = v47;
  v45[2] = v48;
  v45[3] = v49;
  sub_257BE4084(v45, &qword_27F8FADE0);
  LOBYTE(v25) = sub_257ECE950();
  sub_257ECDF40();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = v42;
  sub_257C0DD14(v28, v42, &qword_27F8FADD8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAE10);
  v39 = v37 + *(result + 36);
  *v39 = v25;
  *(v39 + 8) = v30;
  *(v39 + 16) = v32;
  *(v39 + 24) = v34;
  *(v39 + 32) = v36;
  *(v39 + 40) = 0;
  return result;
}

uint64_t sub_257E6AC80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = sub_257ECE750();
  v4 = *(v3 - 8);
  v39 = v3;
  v40 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TranscriptCollapseButton(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA360);
  MEMORY[0x28223BE20](v10);
  v12 = &v36 - v11;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA368);
  v13 = MEMORY[0x28223BE20](v37);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v36 - v16;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA370);
  MEMORY[0x28223BE20](v38);
  v19 = &v36 - v18;
  sub_257E6DECC(a1, &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v21 = swift_allocObject();
  sub_257E6DF30(&v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA380);
  sub_257BD2D4C(&qword_27F8FA388, &qword_27F8FA380);
  sub_257ECEEA0();
  v22 = sub_257ECED80();
  v23 = sub_257ECE930();
  v24 = &v12[*(v10 + 36)];
  *v24 = v22;
  v24[8] = v23;
  sub_257E47960();
  sub_257ECEC90();
  sub_257BE4084(v12, &qword_27F8FA360);
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v26 = [objc_opt_self() bundleForClass_];
  v27 = sub_257ECF4C0();
  v28 = sub_257ECF4C0();
  v29 = [v26 localizedStringForKey:v27 value:0 table:v28];

  v30 = sub_257ECF500();
  v32 = v31;

  v42 = v30;
  v43 = v32;
  sub_257BDAB08();
  sub_257ECE200();

  sub_257BE4084(v15, &qword_27F8FA368);
  sub_257ECE740();
  sub_257E6DFF4(&qword_27F8FA3A8, &qword_27F8FA368, &unk_257EECEA8, sub_257E47960);
  sub_257E6D430(&qword_27F8F77F8, MEMORY[0x277CDE0B8]);
  v33 = v39;
  sub_257ECEB60();
  (*(v40 + 8))(v6, v33);
  sub_257BE4084(v17, &qword_27F8FA368);
  v34 = &v19[*(v38 + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6218);
  sub_257ECE310();
  *v34 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7B28);
  sub_257E47B00();
  sub_257BD2D4C(&qword_27F8F7B38, &qword_27F8F7B28);
  sub_257ECECA0();
  return sub_257BE4084(v19, &qword_27F8FA370);
}

uint64_t sub_257E6B298(uint64_t *a1)
{
  v2 = sub_257ECE0C0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = a1[1];
  v7 = *(a1 + 16);
  v10 = *a1;
  v11 = v6;
  v12 = v7;
  v9[7] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6720);
  sub_257ECEF40();
  type metadata accessor for TranscriptCollapseButton(0);
  sub_257E6DA80(v5);
  sub_257ECE0B0();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_257E6B3B8@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_257ECF060();
  a1[1] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA3B8);
  return sub_257E6B400(a1 + *(v3 + 44));
}

uint64_t sub_257E6B400@<X0>(char *a1@<X8>)
{
  v36 = a1;
  v1 = sub_257ECEE20();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA3C0);
  v5 = *(v35 - 8);
  v6 = MEMORY[0x28223BE20](v35);
  v34 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v32 = &v31 - v8;
  v9 = [objc_opt_self() grayColor];
  sub_257ECED30();
  v33 = sub_257ECEDA0();

  sub_257ECF060();
  sub_257ECE080();
  *&v40[3] = *&v40[27];
  *&v40[11] = *&v40[35];
  *&v40[19] = *&v40[43];
  sub_257ECEE30();
  (*(v2 + 104))(v4, *MEMORY[0x277CE0FE0], v1);
  v10 = sub_257ECEE40();

  (*(v2 + 8))(v4, v1);
  sub_257ECF060();
  sub_257ECE080();
  v11 = v41;
  LOBYTE(v4) = v42;
  v12 = v43;
  v13 = v44;
  v14 = v45;
  v15 = v46;
  v16 = sub_257ECED90();
  KeyPath = swift_getKeyPath();
  v49[0] = v4;
  v39 = v13;
  *&v37[0] = v10;
  *(&v37[0] + 1) = v11;
  LOBYTE(v37[1]) = v4;
  *(&v37[1] + 1) = v12;
  LOBYTE(v37[2]) = v13;
  *(&v37[2] + 1) = v14;
  *&v37[3] = v15;
  *(&v37[3] + 1) = KeyPath;
  v38 = v16;
  sub_257ECE9E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA3C8);
  sub_257E47C44();
  v18 = v32;
  sub_257ECEB40();
  v47[2] = v37[2];
  v47[3] = v37[3];
  v48 = v38;
  v47[0] = v37[0];
  v47[1] = v37[1];
  sub_257BE4084(v47, &qword_27F8FA3C8);
  v19 = *(v5 + 16);
  v21 = v34;
  v20 = v35;
  v22 = v18;
  v19(v34, v18, v35);
  v23 = v33;
  *v49 = v33;
  *&v49[8] = 256;
  *&v49[10] = *v40;
  *&v49[26] = *&v40[8];
  *&v49[42] = *&v40[16];
  *&v49[56] = *&v40[23];
  v24 = *&v49[16];
  v25 = v36;
  *v36 = *v49;
  *(v25 + 1) = v24;
  v26 = *&v49[48];
  *(v25 + 2) = *&v49[32];
  *(v25 + 3) = v26;
  v27 = v25;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA3D8);
  v19(&v27[*(v28 + 48)], v21, v20);
  sub_257BE401C(v49, v37, &qword_27F8F6830);
  v29 = *(v5 + 8);
  v29(v22, v20);
  v29(v21, v20);
  *&v37[0] = v23;
  WORD4(v37[0]) = 256;
  *(v37 + 10) = *v40;
  *(&v37[1] + 10) = *&v40[8];
  *(&v37[2] + 10) = *&v40[16];
  *(&v37[3] + 1) = *&v40[23];
  return sub_257BE4084(v37, &qword_27F8F6830);
}

__n128 sub_257E6B888@<Q0>(__n128 *a1@<X8>)
{
  v2 = sub_257ECE5B0();
  sub_257E6B8F4(&v7);
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

uint64_t sub_257E6B8F4@<X0>(uint64_t a1@<X8>)
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

double sub_257E6BA90@<D0>(uint64_t *a1@<X8>)
{
  v2 = a1;
  *a1 = sub_257ECE5B0();
  v2[1] = 0;
  *(v2 + 16) = 1;
  v3 = v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA348) + 44);
  *v3 = sub_257ECE500();
  *(v3 + 1) = 0;
  v3[16] = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA350);
  sub_257E6AC80(v1, &v3[*(v4 + 44)]);
  LOBYTE(v2) = sub_257ECE930();
  v5 = &v3[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA358) + 36)];
  *v5 = v2;
  result = 0.0;
  *(v5 + 8) = 0u;
  *(v5 + 24) = 0u;
  v5[40] = 1;
  return result;
}

uint64_t MAGVQATranscriptView.messages.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAD00);
  sub_257ECEE60();
  return v1;
}

uint64_t sub_257E6BB9C@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAD00);
  result = sub_257ECEE60();
  *a1 = v3;
  return result;
}

uint64_t sub_257E6BBF4()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAD00);
  return sub_257ECEE70();
}

void (*MAGVQATranscriptView.messages.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  v6 = *v1;
  v5 = v1[1];
  v4[6] = *v1;
  v4[7] = v5;
  *v4 = v6;
  v4[1] = v5;
  sub_257ECC3F0();

  v4[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAD00);
  sub_257ECEE60();
  return sub_257E4402C;
}

uint64_t MAGVQATranscriptView.$messages.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAD00);
  sub_257ECEE80();
  return v1;
}

uint64_t MAGVQATranscriptView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAD08);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v47 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v41 - v5;
  v7 = sub_257ECF020();
  v44 = *(v7 - 8);
  v45 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAD10);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = (&v41 - v12);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAD18);
  MEMORY[0x28223BE20](v42);
  v15 = &v41 - v14;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAD20);
  MEMORY[0x28223BE20](v43);
  v46 = &v41 - v16;
  v17 = *(v1 + 16);
  v50[0] = *v1;
  v50[1] = v17;
  v51 = *(v1 + 32);
  *v13 = sub_257ECF060();
  v13[1] = v18;
  v19 = v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAD28) + 44);
  v49 = v50;
  sub_257ECE910();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAD30);
  sub_257BD2D4C(&qword_27F8FAD38, &qword_27F8FAD30);
  sub_257ECDF60();
  v20 = sub_257ECED80();
  v21 = sub_257ECE930();
  v22 = &v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAD40) + 36)];
  *v22 = v20;
  v22[8] = v21;
  v23 = *(v11 + 44);
  v24 = *MEMORY[0x277CDF3C0];
  v25 = sub_257ECDF90();
  v26 = *(v25 - 8);
  (*(v26 + 104))(v13 + v23, v24, v25);
  (*(v26 + 56))(v13 + v23, 0, 1, v25);
  if (sub_257ECF030())
  {
    sub_257ECF000();
  }

  else
  {
    sub_257ECF010();
  }

  v27 = sub_257ECE930();
  v28 = &v15[*(v42 + 36)];
  (*(v44 + 32))(v28, v9, v45);
  v28[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA2A0) + 36)] = v27;
  sub_257C0DD14(v13, v15, &qword_27F8FAD10);
  v29 = v46;
  sub_257C0DD14(v15, v46, &qword_27F8FAD18);
  *(v29 + *(v43 + 36)) = 0x3FF0000000000000;
  v45 = sub_257ECF060();
  v31 = v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAD48);
  v33 = v48;
  v34 = v48 + *(v32 + 36);
  *v34 = sub_257ECE5B0();
  *(v34 + 8) = 0;
  *(v34 + 16) = 1;
  v35 = v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAD50) + 44);
  *v6 = sub_257ECE500();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAD58);
  sub_257E6D228(v50, &v6[*(v36 + 44)]);
  v37 = v47;
  sub_257BE401C(v6, v47, &qword_27F8FAD08);
  sub_257BE401C(v37, v35, &qword_27F8FAD08);
  v38 = v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAD60) + 48);
  *v38 = 0;
  *(v38 + 8) = 1;
  sub_257BE4084(v6, &qword_27F8FAD08);
  sub_257BE4084(v37, &qword_27F8FAD08);
  v39 = (v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAD68) + 36));
  *v39 = v45;
  v39[1] = v31;
  return sub_257C0DD14(v29, v33, &qword_27F8FAD20);
}

uint64_t sub_257E6C338@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAE20);
  v3 = MEMORY[0x28223BE20](v35);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v34 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAE28);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v34 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAE30);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v34 - v16;
  if (*(a1 + 33))
  {
    *v11 = sub_257ECE500();
    *(v11 + 1) = 0;
    v11[16] = 1;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAE80);
    sub_257E6C7DC(&v11[*(v18 + 44)]);
    v19 = sub_257ECE930();
    sub_257ECDF40();
    v20 = &v11[*(v8 + 36)];
    *v20 = v19;
    *(v20 + 1) = v21;
    *(v20 + 2) = v22;
    *(v20 + 3) = v23;
    *(v20 + 4) = v24;
    v20[40] = 0;
    sub_257C0DD14(v11, v17, &qword_27F8FAE28);
    (*(v9 + 56))(v17, 0, 1, v8);
  }

  else
  {
    (*(v9 + 56))(&v34 - v16, 1, 1, v8);
  }

  *v7 = sub_257ECE5B0();
  *(v7 + 1) = 0x402E000000000000;
  v7[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAE38);
  v37 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAD00);
  sub_257ECEE60();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FACF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAE40);
  sub_257BD2D4C(&qword_27F8FAE48, &qword_27F8FACF8);
  sub_257E6D430(&qword_27F8FAE50, type metadata accessor for MAGMessage);
  sub_257E6E104();
  sub_257ECEF80();
  v25 = sub_257ECE940();
  sub_257ECDF40();
  v26 = &v7[*(v35 + 36)];
  *v26 = v25;
  *(v26 + 1) = v27;
  *(v26 + 2) = v28;
  *(v26 + 3) = v29;
  *(v26 + 4) = v30;
  v26[40] = 0;
  sub_257BE401C(v17, v15, &qword_27F8FAE30);
  sub_257BE401C(v7, v5, &qword_27F8FAE20);
  v31 = v36;
  sub_257BE401C(v15, v36, &qword_27F8FAE30);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAE78);
  sub_257BE401C(v5, v31 + *(v32 + 48), &qword_27F8FAE20);
  sub_257BE4084(v7, &qword_27F8FAE20);
  sub_257BE4084(v17, &qword_27F8FAE30);
  sub_257BE4084(v5, &qword_27F8FAE20);
  return sub_257BE4084(v15, &qword_27F8FAE30);
}

uint64_t sub_257E6C7DC@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA470);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v39 = &v36[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v2);
  v5 = &v36[-v4];
  v6 = sub_257ECF060();
  v8 = v7;
  sub_257E6CC68(&v61);
  v56 = v67;
  v57 = v68;
  v52 = v63;
  v53 = v64;
  v54 = v65;
  v55 = v66;
  v50 = v61;
  v51 = v62;
  v59[6] = v67;
  v59[7] = v68;
  v59[2] = v63;
  v59[3] = v64;
  v59[4] = v65;
  v59[5] = v66;
  v58 = v69;
  v60 = v69;
  v59[0] = v61;
  v59[1] = v62;
  sub_257BE401C(&v50, &v40, &qword_27F8FA478);
  sub_257BE4084(v59, &qword_27F8FA478);
  v47 = v56;
  v48 = v57;
  v49 = v58;
  v43 = v52;
  v44 = v53;
  v46 = v55;
  v45 = v54;
  v42 = v51;
  v41 = v50;
  *&v40 = v6;
  *(&v40 + 1) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA480);
  sub_257BD2D4C(&qword_27F8FA488, &qword_27F8FA480);
  v9 = v5;
  sub_257ECEC20();
  v67 = v46;
  v68 = v47;
  v69 = v48;
  v70 = v49;
  v63 = v42;
  v64 = v43;
  v65 = v44;
  v66 = v45;
  v61 = v40;
  v62 = v41;
  sub_257BE4084(&v61, &qword_27F8FA480);
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [objc_opt_self() bundleForClass_];
  v12 = sub_257ECF4C0();
  v13 = sub_257ECF4C0();
  v14 = [v11 localizedStringForKey:v12 value:0 table:v13];

  v15 = sub_257ECF500();
  v17 = v16;

  *&v40 = v15;
  *(&v40 + 1) = v17;
  sub_257BDAB08();
  v18 = sub_257ECEAF0();
  v20 = v19;
  v22 = v21;
  sub_257ECED90();
  v23 = sub_257ECEAA0();
  v25 = v24;
  v37 = v26;
  v28 = v27;

  sub_257C0300C(v18, v20, v22 & 1);

  v29 = v39;
  sub_257BE401C(v9, v39, &qword_27F8FA470);
  v30 = v38;
  sub_257BE401C(v29, v38, &qword_27F8FA470);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAE88);
  v32 = v30 + *(v31 + 48);
  *v32 = v23;
  *(v32 + 8) = v25;
  v33 = v37 & 1;
  *(v32 + 16) = v37 & 1;
  *(v32 + 24) = v28;
  v34 = v30 + *(v31 + 64);
  *v34 = 0;
  *(v34 + 8) = 1;
  sub_257BD1B90(v23, v25, v33);

  sub_257BE4084(v9, &qword_27F8FA470);
  sub_257C0300C(v23, v25, v33);

  return sub_257BE4084(v29, &qword_27F8FA470);
}

uint64_t sub_257E6CC68@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_257ECEE20();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() systemBlueColor];
  v7 = sub_257ECED30();
  v29 = v7;
  sub_257ECF060();
  sub_257ECE080();
  *&v42[3] = *&v42[27];
  *&v42[11] = *&v42[35];
  *&v42[19] = *&v42[43];
  sub_257ECEE30();
  (*(v3 + 104))(v5, *MEMORY[0x277CE0FE0], v2);
  v26 = sub_257ECEE40();

  (*(v3 + 8))(v5, v2);
  sub_257ECF060();
  sub_257ECE080();
  v8 = v43;
  LOBYTE(v5) = v44;
  v9 = v45;
  v10 = v46;
  v27 = v48;
  v28 = v47;
  v11 = sub_257ECED90();
  KeyPath = swift_getKeyPath();
  *&v49[0] = v7;
  WORD4(v49[0]) = 256;
  *(v49 + 10) = *v42;
  *(&v49[1] + 10) = *&v42[8];
  *(&v49[2] + 10) = *&v42[16];
  *(&v49[3] + 1) = *&v42[23];
  *&v34[31] = v49[2];
  *&v34[39] = v49[3];
  *&v34[15] = v49[0];
  *&v34[23] = v49[1];
  v14 = v26;
  v13 = v27;
  *&v50 = v26;
  *(&v50 + 1) = v8;
  LOBYTE(v51) = v5;
  DWORD1(v51) = *&v41[3];
  *(&v51 + 1) = *v41;
  *(&v51 + 1) = v9;
  LOBYTE(v52) = v10;
  DWORD1(v52) = *&v40[3];
  v15 = *v40;
  *(&v52 + 1) = *v40;
  v16 = v28;
  *(&v52 + 1) = v28;
  *&v53 = v27;
  *(&v53 + 1) = KeyPath;
  v54 = v11;
  v39 = v11;
  v37 = v52;
  v38 = v53;
  v35 = v50;
  v36 = v51;
  v17 = v49[0];
  v18 = v49[1];
  v19 = v49[3];
  *(a1 + 32) = v49[2];
  *(a1 + 48) = v19;
  *a1 = v17;
  *(a1 + 16) = v18;
  v20 = v35;
  v21 = v36;
  v22 = v37;
  v23 = v38;
  *(a1 + 128) = v39;
  *(a1 + 96) = v22;
  *(a1 + 112) = v23;
  *(a1 + 64) = v20;
  *(a1 + 80) = v21;
  v55[0] = v14;
  v55[1] = v8;
  v56 = v5;
  *v57 = *v41;
  *&v57[3] = *&v41[3];
  v58 = v9;
  v59 = v10;
  *v60 = v15;
  *&v60[3] = *&v40[3];
  v61 = v16;
  v62 = v13;
  v63 = KeyPath;
  v64 = v11;
  sub_257BE401C(v49, &v30, &qword_27F8F6830);
  sub_257BE401C(&v50, &v30, &qword_27F8FA3C8);
  sub_257BE4084(v55, &qword_27F8FA3C8);
  v30 = v29;
  v31 = 256;
  v32 = *v42;
  v33 = *&v42[8];
  *v34 = *&v42[16];
  *&v34[7] = *&v42[23];
  return sub_257BE4084(&v30, &qword_27F8F6830);
}

uint64_t sub_257E6D00C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for MAGMessage(0);
  v5 = (a1 + *(v4 + 20));
  v7 = *v5;
  v6 = v5[1];
  v8 = *(a1 + *(v4 + 24));

  sub_257ECF060();
  sub_257ECE2F0();
  *&v19[55] = v23;
  *&v19[71] = v24;
  *&v19[87] = v25;
  *&v19[103] = v26;
  *&v19[7] = v20;
  *&v19[23] = v21;
  *&v19[39] = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA468);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_257EDBBA0;
  v10 = sub_257ECE940();
  *(inited + 32) = v10;
  v11 = sub_257ECE960();
  *(inited + 33) = v11;
  v12 = sub_257ECE980();
  *(inited + 34) = v12;
  v13 = sub_257ECE970();
  sub_257ECE970();
  if (sub_257ECE970() != v10)
  {
    v13 = sub_257ECE970();
  }

  sub_257ECE970();
  if (sub_257ECE970() != v11)
  {
    v13 = sub_257ECE970();
  }

  sub_257ECE970();
  if (sub_257ECE970() != v12)
  {
    v13 = sub_257ECE970();
  }

  result = sub_257ECDF40();
  *(a2 + 81) = *&v19[64];
  *(a2 + 97) = *&v19[80];
  *(a2 + 113) = *&v19[96];
  *(a2 + 17) = *v19;
  *(a2 + 33) = *&v19[16];
  *(a2 + 49) = *&v19[32];
  *a2 = v7;
  *(a2 + 8) = v6;
  *(a2 + 16) = v8;
  *(a2 + 128) = *(&v26 + 1);
  *(a2 + 65) = *&v19[48];
  *(a2 + 136) = v13;
  *(a2 + 144) = v15;
  *(a2 + 152) = v16;
  *(a2 + 160) = v17;
  *(a2 + 168) = v18;
  *(a2 + 176) = 0;
  return result;
}

uint64_t sub_257E6D228@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TranscriptCollapseButton(0);
  v5 = v4 - 8;
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v16 - v9;
  v18 = *(a1 + 16);
  v19 = *(a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6720);
  sub_257ECEF50();
  v11 = v16[2];
  v12 = v17;
  *v10 = v16[1];
  *(v10 + 1) = v11;
  v10[16] = v12;
  v13 = *(v5 + 28);
  *&v10[v13] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA378);
  swift_storeEnumTagMultiPayload();
  sub_257E6DECC(v10, v8);
  *a2 = 0;
  *(a2 + 8) = 1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAE18);
  sub_257E6DECC(v8, a2 + *(v14 + 48));
  sub_257E6E0A8(v10);
  return sub_257E6E0A8(v8);
}

unint64_t sub_257E6D394()
{
  result = qword_27F8FAD70;
  if (!qword_27F8FAD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FAD70);
  }

  return result;
}

uint64_t sub_257E6D430(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_257E6D4D0()
{
  result = sub_257ECCCF0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 __swift_memcpy34_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_257E6D568(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 34))
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

uint64_t sub_257E6D5B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 34) = 1;
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

    *(result + 34) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_257E6D604()
{
  result = qword_27F8FAD90;
  if (!qword_27F8FAD90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FAD48);
    sub_257E6D6BC();
    sub_257BD2D4C(&qword_27F8FADC0, &qword_27F8FAD68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FAD90);
  }

  return result;
}

unint64_t sub_257E6D6BC()
{
  result = qword_27F8FAD98;
  if (!qword_27F8FAD98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FAD20);
    sub_257E6D748();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FAD98);
  }

  return result;
}

unint64_t sub_257E6D748()
{
  result = qword_27F8FADA0;
  if (!qword_27F8FADA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FAD18);
    sub_257E6D800();
    sub_257BD2D4C(&qword_27F8FA310, &qword_27F8FA2A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FADA0);
  }

  return result;
}

unint64_t sub_257E6D800()
{
  result = qword_27F8FADA8;
  if (!qword_27F8FADA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FAD10);
    sub_257BD2D4C(&qword_27F8FADB0, &qword_27F8FADB8);
    sub_257BD2D4C(&qword_27F8FA300, &qword_27F8FA308);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FADA8);
  }

  return result;
}

uint64_t sub_257E6D8E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_257E6D92C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_257E6D9C4()
{
  sub_257E46200();
  if (v0 <= 0x3F)
  {
    sub_257E46554();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_257E6DA80@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_257ECE4D0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FA378);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_257BE401C(v2, &v14 - v9, &qword_27F8FA378);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_257ECE0C0();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_257ECFBF0();
    v13 = sub_257ECE900();
    sub_257ECD960();

    sub_257ECE4C0();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_257E6DC80@<X0>(uint64_t *a1@<X8>)
{
  result = sub_257ECE410();
  *a1 = result;
  return result;
}

unint64_t sub_257E6DCD8()
{
  result = qword_27F8FADE8;
  if (!qword_27F8FADE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FADE0);
    sub_257E6DD90();
    sub_257BD2D4C(&qword_27F8F6EC8, &qword_27F8F6ED0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FADE8);
  }

  return result;
}

unint64_t sub_257E6DD90()
{
  result = qword_27F8FADF0;
  if (!qword_27F8FADF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FADF8);
    sub_257E6DE48();
    sub_257BD2D4C(&qword_27F8F7BC8, &qword_27F8F7BD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FADF0);
  }

  return result;
}

unint64_t sub_257E6DE48()
{
  result = qword_27F8FAE00;
  if (!qword_27F8FAE00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FAE08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FAE00);
  }

  return result;
}

uint64_t sub_257E6DECC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptCollapseButton(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_257E6DF30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptCollapseButton(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_257E6DF94()
{
  v1 = *(type metadata accessor for TranscriptCollapseButton(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_257E6B298(v2);
}

uint64_t sub_257E6DFF4(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_257E6D430(&qword_27F8F5CA0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_257E6E0A8(uint64_t a1)
{
  v2 = type metadata accessor for TranscriptCollapseButton(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_257E6E104()
{
  result = qword_27F8FAE58;
  if (!qword_27F8FAE58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FAE40);
    sub_257E6E190();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FAE58);
  }

  return result;
}

unint64_t sub_257E6E190()
{
  result = qword_27F8FAE60;
  if (!qword_27F8FAE60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FAE68);
    sub_257E6E21C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FAE60);
  }

  return result;
}

unint64_t sub_257E6E21C()
{
  result = qword_27F8FAE70;
  if (!qword_27F8FAE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FAE70);
  }

  return result;
}

unint64_t sub_257E6E270()
{
  result = qword_27F8FAE90;
  if (!qword_27F8FAE90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FAE10);
    sub_257E6DFF4(&qword_27F8FAE98, &qword_27F8FADD8, &unk_257EEE8E0, sub_257E6DCD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FAE90);
  }

  return result;
}

uint64_t sub_257E6E328(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAEA0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v13 - v7;
  _s20ControlEventObserverCMa();
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAEA8);
  swift_allocObject();
  v10 = a2;
  v11 = sub_257ECDD10();
  v9[4] = v11;
  v13[1] = v11;
  sub_257E6E63C();
  swift_retain_n();
  sub_257ECC3F0();
  sub_257ECDDB0();

  sub_257ECDC80();

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_257E6E588()
{

  return swift_deallocClassInstance();
}

unint64_t sub_257E6E63C()
{
  result = qword_2815441A8;
  if (!qword_2815441A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FAEA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815441A8);
  }

  return result;
}

uint64_t sub_257E6E6A0()
{
  v1 = (v0 + OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorAttributeCustomizationViewController_delegate);
  swift_beginAccess();
  v2 = v1[3];
  if (!v2)
  {
    return swift_endAccess();
  }

  __swift_project_boxed_opaque_existential_1(v1, v2);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return swift_endAccess();
  }

  v5 = *(Strong + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle);
  v4 = *(Strong + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle + 8);

  swift_unknownObjectRelease();
  if (!v4)
  {
    return swift_endAccess();
  }

  swift_endAccess();
  if (!v1[3])
  {
  }

  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v6 = v0;
  v7 = qword_281548348;
  swift_beginAccess();
  v8 = v7[12];
  v9 = v7[13];
  v19[0] = v7[11];
  v19[1] = v8;
  v19[2] = v9;
  v10 = qword_2815447E0;

  if (v10 != -1)
  {
    v11 = swift_once();
  }

  MEMORY[0x28223BE20](v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D90);
  sub_257ECFD50();

  if (!*(v18[0] + 16))
  {

    goto LABEL_15;
  }

  v12 = sub_257C03F6C(v5, v4);
  v14 = v13;

  if ((v14 & 1) == 0)
  {
LABEL_15:

    sub_257C10998(v19);
    goto LABEL_16;
  }

  v15 = (*(v18[0] + 56) + 296 * v12);
  memcpy(v17, v15, sizeof(v17));
  memmove(v18, v15, 0x128uLL);
  CGSizeMake(v18);
  sub_257C09C58(v17, v19);

  memcpy(v19, v18, sizeof(v19));
LABEL_16:
  memcpy(v18, (v6 + OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorAttributeCustomizationViewController_activity), 0x128uLL);
  memcpy((v6 + OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorAttributeCustomizationViewController_activity), v19, 0x128uLL);
  return sub_257BE4084(v18, &unk_27F8F68B0);
}

void sub_257E6E998()
{
  v1 = v0;
  v64.receiver = v0;
  v64.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v64, sel_viewDidLoad);
  v2 = [objc_opt_self() shared];
  v3 = [v2 doorAttributesClassifierProperties];

  if (v3)
  {
    *&v62 = 0xD000000000000017;
    *(&v62 + 1) = 0x8000000257EF93E0;
    v4 = [v3 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (v4)
    {
      sub_257ED0160();
      swift_unknownObjectRelease();
    }

    else
    {
      v62 = 0u;
      v63 = 0u;
    }

    v59 = v62;
    v60 = v63;
    if (!*(&v63 + 1))
    {

      sub_257BE4084(&v59, &unk_27F8F62F0);
      return;
    }

    sub_257BD2C2C(0, &unk_27F8F58C0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    v58 = v1;
    v5 = v61;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8FAED0);
    v6 = swift_allocObject();
    *(v6 + 1) = xmmword_257EDB2E0;
    *(v6 + 32) = 4;
    *&v59 = 0x746174536E65704FLL;
    *(&v59 + 1) = 0xE900000000000065;
    v7 = [v5 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (v7)
    {
      sub_257ED0160();
      swift_unknownObjectRelease();
      sub_257BE4084(&v59, &unk_27F8F62F0);
      *&v59 = 0x746174536E65704FLL;
      *(&v59 + 1) = 0xE900000000000065;
      v8 = [v5 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      if (!v8)
      {
LABEL_65:
        __break(1u);
        goto LABEL_66;
      }

      sub_257ED0160();
      swift_unknownObjectRelease();
      sub_257BEBE08(&v62, &v59);
      sub_257BD2C2C(0, &qword_281543DC0);
      swift_dynamicCast();
      v9 = v61;
    }

    else
    {
      v59 = 0u;
      v60 = 0u;
      sub_257BE4084(&v59, &unk_27F8F62F0);
      sub_257BD2C2C(0, &qword_281543DC0);
      v9 = sub_257ECFF10();
    }

    v6[5] = v9;
    *(v6 + 48) = 5;
    *&v59 = 0x6570616853;
    *(&v59 + 1) = 0xE500000000000000;
    v10 = [v5 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (v10)
    {
      sub_257ED0160();
      swift_unknownObjectRelease();
      sub_257BE4084(&v59, &unk_27F8F62F0);
      *&v59 = 0x6570616853;
      *(&v59 + 1) = 0xE500000000000000;
      v11 = [v5 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      if (!v11)
      {
LABEL_66:
        __break(1u);
        goto LABEL_67;
      }

      sub_257ED0160();
      swift_unknownObjectRelease();
      sub_257BEBE08(&v62, &v59);
      sub_257BD2C2C(0, &qword_281543DC0);
      swift_dynamicCast();
      v12 = v61;
    }

    else
    {
      v59 = 0u;
      v60 = 0u;
      sub_257BE4084(&v59, &unk_27F8F62F0);
      sub_257BD2C2C(0, &qword_281543DC0);
      v12 = sub_257ECFF10();
    }

    v6[7] = v12;
    *(v6 + 64) = 0;
    *&v59 = 0x6863616F72707041;
    *(&v59 + 1) = 0xE800000000000000;
    v13 = [v5 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (v13)
    {
      sub_257ED0160();
      swift_unknownObjectRelease();
      sub_257BE4084(&v59, &unk_27F8F62F0);
      *&v59 = 0x6863616F72707041;
      *(&v59 + 1) = 0xE800000000000000;
      v14 = [v5 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      if (!v14)
      {
LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

      sub_257ED0160();
      swift_unknownObjectRelease();
      sub_257BEBE08(&v62, &v59);
      sub_257BD2C2C(0, &qword_281543DC0);
      swift_dynamicCast();
      v15 = v61;
    }

    else
    {
      v59 = 0u;
      v60 = 0u;
      sub_257BE4084(&v59, &unk_27F8F62F0);
      sub_257BD2C2C(0, &qword_281543DC0);
      v15 = sub_257ECFF10();
    }

    v6[9] = v15;
    *(v6 + 80) = 3;
    *&v59 = 0x6874654D6E65704FLL;
    *(&v59 + 1) = 0xEA0000000000646FLL;
    v16 = [v5 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    v57 = v5;
    if (v16)
    {
      sub_257ED0160();
      swift_unknownObjectRelease();
      sub_257BE4084(&v59, &unk_27F8F62F0);
      *&v59 = 0x6874654D6E65704FLL;
      *(&v59 + 1) = 0xEA0000000000646FLL;
      v17 = [v5 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      if (!v17)
      {
LABEL_68:
        __break(1u);
        goto LABEL_69;
      }

      sub_257ED0160();
      swift_unknownObjectRelease();
      sub_257BEBE08(&v62, &v59);
      sub_257BD2C2C(0, &qword_281543DC0);
      swift_dynamicCast();
      v18 = v61;
    }

    else
    {
      v59 = 0u;
      v60 = 0u;
      sub_257BE4084(&v59, &unk_27F8F62F0);
      sub_257BD2C2C(0, &qword_281543DC0);
      v18 = sub_257ECFF10();
    }

    v6[11] = v18;
    *(v6 + 96) = 6;
    *&v59 = 1702521171;
    *(&v59 + 1) = 0xE400000000000000;
    v19 = [v5 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (v19)
    {
      sub_257ED0160();
      swift_unknownObjectRelease();
      sub_257BE4084(&v59, &unk_27F8F62F0);
      *&v59 = 1702521171;
      *(&v59 + 1) = 0xE400000000000000;
      v20 = [v5 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      if (!v20)
      {
LABEL_69:
        __break(1u);
        goto LABEL_70;
      }

      sub_257ED0160();
      swift_unknownObjectRelease();
      sub_257BEBE08(&v62, &v59);
      sub_257BD2C2C(0, &qword_281543DC0);
      swift_dynamicCast();
      v21 = v61;
    }

    else
    {
      v59 = 0u;
      v60 = 0u;
      sub_257BE4084(&v59, &unk_27F8F62F0);
      sub_257BD2C2C(0, &qword_281543DC0);
      v21 = sub_257ECFF10();
    }

    v6[13] = v21;
    *(v6 + 112) = 2;
    *&v59 = 0x646E6148726F6F44;
    *(&v59 + 1) = 0xEA0000000000656CLL;
    v22 = [v5 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (v22)
    {
      sub_257ED0160();
      swift_unknownObjectRelease();
      sub_257BE4084(&v59, &unk_27F8F62F0);
      *&v59 = 0x646E6148726F6F44;
      *(&v59 + 1) = 0xEA0000000000656CLL;
      v23 = [v5 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      if (!v23)
      {
LABEL_70:
        __break(1u);
        goto LABEL_71;
      }

      sub_257ED0160();
      swift_unknownObjectRelease();
      sub_257BEBE08(&v62, &v59);
      sub_257BD2C2C(0, &qword_281543DC0);
      swift_dynamicCast();
      v24 = v61;
    }

    else
    {
      v59 = 0u;
      v60 = 0u;
      sub_257BE4084(&v59, &unk_27F8F62F0);
      sub_257BD2C2C(0, &qword_281543DC0);
      v24 = sub_257ECFF10();
    }

    v6[15] = v24;
    *(v6 + 128) = 7;
    *&v59 = 0x776F646E6957;
    *(&v59 + 1) = 0xE600000000000000;
    v25 = [v5 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (v25)
    {
      sub_257ED0160();
      swift_unknownObjectRelease();
      sub_257BE4084(&v59, &unk_27F8F62F0);
      *&v59 = 0x776F646E6957;
      *(&v59 + 1) = 0xE600000000000000;
      v26 = [v5 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      if (!v26)
      {
LABEL_71:
        __break(1u);
        goto LABEL_72;
      }

      sub_257ED0160();
      swift_unknownObjectRelease();
      sub_257BEBE08(&v62, &v59);
      sub_257BD2C2C(0, &qword_281543DC0);
      swift_dynamicCast();
      v27 = v61;
    }

    else
    {
      v59 = 0u;
      v60 = 0u;
      sub_257BE4084(&v59, &unk_27F8F62F0);
      sub_257BD2C2C(0, &qword_281543DC0);
      v27 = sub_257ECFF10();
    }

    v6[17] = v27;
    *(v6 + 144) = 1;
    *&v59 = 0x726F6C6F43;
    *(&v59 + 1) = 0xE500000000000000;
    v28 = [v5 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (v28)
    {
      sub_257ED0160();
      swift_unknownObjectRelease();
      sub_257BE4084(&v59, &unk_27F8F62F0);
      *&v59 = 0x726F6C6F43;
      *(&v59 + 1) = 0xE500000000000000;
      v29 = [v5 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      if (!v29)
      {
LABEL_72:
        __break(1u);
        goto LABEL_73;
      }

      sub_257ED0160();
      swift_unknownObjectRelease();
      sub_257BEBE08(&v62, &v59);
      sub_257BD2C2C(0, &qword_281543DC0);
      swift_dynamicCast();
      v30 = v61;
    }

    else
    {
      v59 = 0u;
      v60 = 0u;
      sub_257BE4084(&v59, &unk_27F8F62F0);
      sub_257BD2C2C(0, &qword_281543DC0);
      v30 = sub_257ECFF10();
    }

    v6[19] = v30;
    *(v6 + 160) = 8;
    *&v59 = 0x6C6169726574614DLL;
    *(&v59 + 1) = 0xE800000000000000;
    v31 = [v5 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (v31)
    {
      sub_257ED0160();
      swift_unknownObjectRelease();
      sub_257BE4084(&v59, &unk_27F8F62F0);
      *&v59 = 0x6C6169726574614DLL;
      *(&v59 + 1) = 0xE800000000000000;
      v32 = [v5 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      if (!v32)
      {
LABEL_73:
        __break(1u);

        __break(1u);
        return;
      }

      sub_257ED0160();
      swift_unknownObjectRelease();
      sub_257BEBE08(&v62, &v59);
      sub_257BD2C2C(0, &qword_281543DC0);
      swift_dynamicCast();
      v33 = v61;
    }

    else
    {
      v59 = 0u;
      v60 = 0u;
      sub_257BE4084(&v59, &unk_27F8F62F0);
      sub_257BD2C2C(0, &qword_281543DC0);
      v33 = sub_257ECFF10();
    }

    v34 = v1;
    v55 = v3;
    v6[21] = v33;
    v35 = sub_257BE82F8(v6);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8FAEE0);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v36 = *(v35 + 16);
    if (v36)
    {
      v6 = sub_257C63E00(*(v35 + 16), 0);
      v37 = sub_257C6764C(&v59, (v6 + 4), v36, v35);

      sub_257C02520();
      if (v37 != v36)
      {
        __break(1u);
        goto LABEL_63;
      }

      v34 = v1;
    }

    else
    {

      v6 = MEMORY[0x277D84F90];
    }

    *&v59 = v6;
    v6 = 0;
    sub_257C01A64(&v59);
    v56 = v59;
    v38 = *(v59 + 16);
    if (v38)
    {
      sub_257BD2C2C(0, &qword_281543DC0);
      v39 = OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorAttributeCustomizationViewController_doorAttributes;
      v6 = (v56 + 40);
      do
      {
        v40 = *(v6 - 8);
        v41 = *v6;
        v42 = sub_257ECFF10();
        v43 = sub_257ECFF50();

        if ((v43 & 1) == 0)
        {
          swift_beginAccess();
          v44 = *&v34[v39];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v34[v39] = v44;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v44 = sub_257BFCEF4(0, *(v44 + 2) + 1, 1, v44);
            *&v34[v39] = v44;
          }

          v47 = *(v44 + 2);
          v46 = *(v44 + 3);
          if (v47 >= v46 >> 1)
          {
            v44 = sub_257BFCEF4((v46 > 1), v47 + 1, 1, v44);
          }

          *(v44 + 2) = v47 + 1;
          v44[v47 + 32] = v40;
          v34 = v58;
          *&v58[v39] = v44;
          swift_endAccess();
        }

        v6 += 2;
        --v38;
      }

      while (v38);
    }

    v48 = *&v34[OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorAttributeCustomizationViewController_tableView];
    [v48 setDataSource_];
    [v48 setDelegate_];
    sub_257BD2C2C(0, &qword_27F8F5560);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v50 = sub_257ECF4C0();
    [v48 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v50];

    [v48 setTranslatesAutoresizingMaskIntoConstraints_];
    v51 = [v34 view];
    if (v51)
    {
      v52 = v51;
      [v51 addSubview_];

      v53 = [v34 view];
      v6 = v55;
      if (v53)
      {
        v54 = v53;

        sub_257EB6FD8(v54, *MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24));

        return;
      }

      goto LABEL_64;
    }

LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }
}

id sub_257E6FD4C(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v7 = OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorAttributeCustomizationViewController_tableView;
  v8 = [objc_allocWithZone(MEMORY[0x277D75B40]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  v9 = objc_opt_self();
  v10 = v8;
  v11 = [v9 systemYellowColor];
  [v10 setTintColor_];

  [v10 setClipsToBounds_];
  *&v3[v7] = v10;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorAttributeCustomizationViewController_doorAttributes] = MEMORY[0x277D84F90];
  v12 = OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorAttributeCustomizationViewController_activity;
  sub_257C10998(__src);
  memcpy(&v3[v12], __src, 0x128uLL);
  v13 = &v3[OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorAttributeCustomizationViewController_delegate];
  *v13 = 0u;
  *(v13 + 1) = 0u;
  *(v13 + 4) = 0;
  if (a2)
  {
    v14 = sub_257ECF4C0();
  }

  else
  {
    v14 = 0;
  }

  v17.receiver = v3;
  v17.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v17, sel_initWithNibName_bundle_, v14, a3);

  return v15;
}

id sub_257E6FF44(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorAttributeCustomizationViewController_tableView;
  v5 = [objc_allocWithZone(MEMORY[0x277D75B40]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 systemYellowColor];
  [v7 setTintColor_];

  [v7 setClipsToBounds_];
  *&v1[v4] = v7;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorAttributeCustomizationViewController_doorAttributes] = MEMORY[0x277D84F90];
  v9 = OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorAttributeCustomizationViewController_activity;
  sub_257C10998(__src);
  memcpy(&v1[v9], __src, 0x128uLL);
  v10 = &v1[OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorAttributeCustomizationViewController_delegate];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 4) = 0;
  v13.receiver = v1;
  v13.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v13, sel_initWithCoder_, a1);

  if (v11)
  {
  }

  return v11;
}

uint64_t sub_257E701F4(void *a1)
{
  v2 = v1;
  v4 = sub_257ECF4C0();
  v5 = sub_257ECCE30();
  v6 = [a1 dequeueReusableCellWithIdentifier:v4 forIndexPath:v5];

  sub_257E6E6A0();
  if (sub_257ECCEA0())
  {
    v7 = 0;
  }

  else
  {
    v7 = sub_257ECCE60();
  }

  v8 = OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorAttributeCustomizationViewController_doorAttributes;
  result = swift_beginAccess();
  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v10 = *(v2 + v8);
  if (v7 >= *(v10 + 16))
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v11 = *(v10 + v7 + 32);
  v12 = [v6 textLabel];
  if (v12)
  {
    v13 = v12;
    sub_257BFEC80();
    v14 = sub_257ECF4C0();

    [v13 setText_];
  }

  v15 = (v2 + OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorAttributeCustomizationViewController_activity);
  memcpy(v17, v15, sizeof(v17));
  if (sub_257C108C4(v17) != 1)
  {
    if (sub_257C592D0(v11, v15[21]))
    {
      v16 = 3;
    }

    else
    {
      v16 = 0;
    }

    [v6 setAccessoryType_];
  }

  return v6;
}

uint64_t sub_257E7053C(uint64_t a1)
{
  sub_257E6E6A0();
  v9 = a1;

  sub_257D6D1CC(&v9);
  v3 = v9;
  v4 = v1 + OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorAttributeCustomizationViewController_activity;
  memcpy(__dst, (v1 + OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorAttributeCustomizationViewController_activity), 0x128uLL);
  if (sub_257C108C4(__dst) != 1 && (sub_257D7430C(*(v4 + 168), v3) & 1) == 0)
  {
    v5 = (v1 + OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorAttributeCustomizationViewController_delegate);
    swift_beginAccess();
    v6 = v5[3];
    if (v6)
    {
      __swift_project_boxed_opaque_existential_1(v5, v6);
      sub_257DCAC9C(v3);
    }
  }
}

void sub_257E70624(void *a1)
{
  v2 = v1;
  v4 = sub_257ECDA30();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257E6E6A0();
  v8 = sub_257ECCE30();
  v9 = [a1 cellForRowAtIndexPath_];

  v44 = v9;
  if (v9)
  {
    v10 = sub_257ECCE30();
    [a1 deselectRowAtIndexPath:v10 animated:1];

    if (sub_257ECCEA0())
    {
      v11 = 0;
    }

    else
    {
      v11 = sub_257ECCE60();
    }

    v12 = OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorAttributeCustomizationViewController_doorAttributes;
    swift_beginAccess();
    if ((v11 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v13 = *(v2 + v12);
      if (v11 < *(v13 + 16))
      {
        v14 = *(v13 + v11 + 32);
        v15 = v2 + OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorAttributeCustomizationViewController_activity;
        memcpy(v47, (v2 + OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorAttributeCustomizationViewController_activity), 0x128uLL);
        if (sub_257C108C4(v47) == 1)
        {
LABEL_34:

          return;
        }

        v43 = v7;
        v16 = *(v15 + 168);
        if (sub_257C592D0(v14, v16))
        {
          v41 = v5;
          v17 = *(v16 + 16);
          if (v17)
          {
            v42 = v4;
            v40 = v2;

            v18 = MEMORY[0x277D84F90];
            v19 = 32;
            do
            {
              v22 = *(v16 + v19);
              if (v22 != v14)
              {
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v46 = v18;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  sub_257BF2764(0, *(v18 + 16) + 1, 1);
                  v18 = v46;
                }

                v21 = *(v18 + 16);
                v20 = *(v18 + 24);
                if (v21 >= v20 >> 1)
                {
                  sub_257BF2764((v20 > 1), v21 + 1, 1);
                  v18 = v46;
                }

                *(v18 + 16) = v21 + 1;
                *(v18 + v21 + 32) = v22;
              }

              ++v19;
              --v17;
            }

            while (v17);

            v2 = v40;
            v4 = v42;
          }

          else
          {
            v18 = MEMORY[0x277D84F90];
          }

          sub_257ECC3F0();
          [v44 setAccessoryType_];
          v5 = v41;
        }

        else
        {

          [v44 setAccessoryType_];
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5AA0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_257ED6D30;
          *(inited + 32) = v14;
          v46 = v16;
          sub_257EB0628(inited);
          v18 = v46;
        }

        v25 = v43;
        v26 = (v2 + OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorAttributeCustomizationViewController_delegate);
        if (*(v18 + 16))
        {
          swift_beginAccess();
          v27 = v26[3];
          if (v27)
          {
            __swift_project_boxed_opaque_existential_1(v26, v27);
            if (swift_unknownObjectWeakLoadStrong())
            {
              v28 = 1;
LABEL_29:
              sub_257CE146C(v28);
              swift_unknownObjectRelease();
            }
          }
        }

        else
        {
          swift_beginAccess();
          v29 = v26[3];
          if (v29)
          {
            __swift_project_boxed_opaque_existential_1(v26, v29);
            if (swift_unknownObjectWeakLoadStrong())
            {
              v28 = 0;
              goto LABEL_29;
            }
          }
        }

        sub_257ECD420();

        v30 = sub_257ECDA20();
        v31 = sub_257ECFBD0();

        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          v33 = swift_slowAlloc();
          v45 = v33;
          *v32 = 136315138;
          v34 = v5;
          v35 = MEMORY[0x259C72340](v18, &type metadata for DoorAttribute);
          v42 = v4;
          v37 = v36;

          v38 = sub_257BF1FC8(v35, v37, &v45);

          *(v32 + 4) = v38;
          _os_log_impl(&dword_257BAC000, v30, v31, "New attributes: %s", v32, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v33);
          MEMORY[0x259C74820](v33, -1, -1);
          MEMORY[0x259C74820](v32, -1, -1);

          (*(v34 + 8))(v43, v42);
        }

        else
        {

          (*(v5 + 8))(v25, v4);
        }

        sub_257E7053C(v18);

        goto LABEL_34;
      }
    }

    __break(1u);
  }
}

id sub_257E70C48()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport12RecordButton____lazy_storage___squareBezierPath;
  v2 = *&v0[OBJC_IVAR____TtC16MagnifierSupport12RecordButton____lazy_storage___squareBezierPath];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC16MagnifierSupport12RecordButton____lazy_storage___squareBezierPath];
  }

  else
  {
    [v0 bounds];
    v5 = v4 * 0.5 + (v4 * 0.5 - *&v0[OBJC_IVAR____TtC16MagnifierSupport12RecordButton__outerLineWidth] - (*&v0[OBJC_IVAR____TtC16MagnifierSupport12RecordButton__outerLineWidth] + *&v0[OBJC_IVAR____TtC16MagnifierSupport12RecordButton__outerLineWidth])) / -1.41421356;
    [v0 bounds];
    v11 = CGRectInset(v10, v5, v5);
    v6 = [objc_opt_self() bezierPathWithRoundedRect:v11.origin.x cornerRadius:{v11.origin.y, v11.size.width, v11.size.height, 4.0}];
    v7 = *&v0[v1];
    *&v0[v1] = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_257E70D50()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport12RecordButton____lazy_storage___circleBezierPath;
  v2 = *&v0[OBJC_IVAR____TtC16MagnifierSupport12RecordButton____lazy_storage___circleBezierPath];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC16MagnifierSupport12RecordButton____lazy_storage___circleBezierPath];
  }

  else
  {
    [v0 bounds];
    v5 = *&v0[OBJC_IVAR____TtC16MagnifierSupport12RecordButton__outerLineWidth] + v4 * 0.04;
    [v0 bounds];
    v11 = CGRectInset(v10, v5, v5);
    v6 = [objc_opt_self() bezierPathWithRoundedRect:v11.origin.x cornerRadius:{v11.origin.y, v11.size.width, v11.size.height, v11.size.width * 0.5}];
    v7 = *&v0[v1];
    *&v0[v1] = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_257E70E54(void *a1)
{
  v1[OBJC_IVAR____TtC16MagnifierSupport12RecordButton_isRecording] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC16MagnifierSupport12RecordButton__outerLineWidth] = 0;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport12RecordButton__animationDuration] = 0x3FD3333333333333;
  v3 = OBJC_IVAR____TtC16MagnifierSupport12RecordButton__centerShapeFillColor;
  *&v1[v3] = [objc_opt_self() redColor];
  *&v1[OBJC_IVAR____TtC16MagnifierSupport12RecordButton____lazy_storage___squareBezierPath] = 0;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport12RecordButton____lazy_storage___circleBezierPath] = 0;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for RecordButton();
  v4 = objc_msgSendSuper2(&v8, sel_initWithCoder_, a1);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    sub_257E712EC();
  }

  return v5;
}

id sub_257E70F6C(double a1, double a2, double a3, double a4)
{
  v4[OBJC_IVAR____TtC16MagnifierSupport12RecordButton_isRecording] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC16MagnifierSupport12RecordButton__outerLineWidth] = 0;
  *&v4[OBJC_IVAR____TtC16MagnifierSupport12RecordButton__animationDuration] = 0x3FD3333333333333;
  v9 = OBJC_IVAR____TtC16MagnifierSupport12RecordButton__centerShapeFillColor;
  *&v4[v9] = [objc_opt_self() redColor];
  *&v4[OBJC_IVAR____TtC16MagnifierSupport12RecordButton____lazy_storage___squareBezierPath] = 0;
  *&v4[OBJC_IVAR____TtC16MagnifierSupport12RecordButton____lazy_storage___circleBezierPath] = 0;
  v12.receiver = v4;
  v12.super_class = type metadata accessor for RecordButton();
  v10 = objc_msgSendSuper2(&v12, sel_initWithFrame_, a1, a2, a3, a4);
  sub_257E712EC();

  return v10;
}

void sub_257E711F0(char a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for RecordButton();
  objc_msgSendSuper2(&v7, sel_setEnabled_, a1 & 1);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if ([v1 isEnabled])
    {
      v5 = [*&v1[OBJC_IVAR____TtC16MagnifierSupport12RecordButton__centerShapeFillColor] CGColor];
    }

    else
    {
      v6 = [objc_opt_self() grayColor];
      v5 = [v6 CGColor];
    }

    [v4 setFillColor_];
  }
}

void sub_257E712EC()
{
  [v0 bounds];
  v2 = v1 * 0.08;
  if (v1 * 0.08 > 6.0)
  {
    v2 = 6.0;
  }

  *&v0[OBJC_IVAR____TtC16MagnifierSupport12RecordButton__outerLineWidth] = v2;
  if (v0[OBJC_IVAR____TtC16MagnifierSupport12RecordButton_isRecording] == 1)
  {
    v3 = sub_257E70C48();
  }

  else
  {
    v3 = sub_257E70D50();
  }

  v4 = v3;
  v5 = [v3 CGPath];

  v6 = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  [v6 setPath_];
  [v6 setStrokeColor_];
  v7 = [*&v0[OBJC_IVAR____TtC16MagnifierSupport12RecordButton__centerShapeFillColor] CGColor];
  [v6 setFillColor_];

  swift_unknownObjectWeakAssign();
  v8 = [v0 layer];
  [v8 addSublayer_];
}

void sub_257E71464()
{
  v1 = sub_257ECF4C0();
  v2 = [objc_opt_self() animationWithKeyPath_];

  v10 = v2;
  [v10 setDuration_];
  v3 = [objc_opt_self() functionWithName_];
  [v10 setTimingFunction_];

  if (*(v0 + OBJC_IVAR____TtC16MagnifierSupport12RecordButton_isRecording) == 1)
  {
    v4 = sub_257E70C48();
  }

  else
  {
    v4 = sub_257E70D50();
  }

  v5 = v4;
  v6 = [v4 CGPath];

  [v10 setToValue_];
  [v10 setFillMode_];
  [v10 setRemovedOnCompletion_];

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = sub_257ECF4C0();
    [v8 addAnimation:v10 forKey:v9];
  }
}

id sub_257E71628()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RecordButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_257E716EC()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport12RecordButton__outerLineWidth;
  v2 = *&v0[OBJC_IVAR____TtC16MagnifierSupport12RecordButton__outerLineWidth] * 0.5;
  [v0 bounds];
  v7 = CGRectInset(v6, v2, v2);
  v4 = [objc_opt_self() bezierPathWithOvalInRect_];
  [v4 setLineWidth_];
  v3 = [objc_opt_self() whiteColor];
  [v3 setStroke];

  [v4 stroke];
}

uint64_t MFMenu.init(position:subMenu:theme:backgroundColor:width:content:label:dismissAction:)@<X0>(unsigned __int8 *a1@<X0>, int a2@<W1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, void (*a5)(uint64_t)@<X4>, uint64_t a6@<X5>, void (*a7)(uint64_t)@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, double a10@<D0>, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v67 = a8;
  v68 = a7;
  v63 = a6;
  v64 = a5;
  v62 = a2;
  v70 = a12;
  v71 = a4;
  v69 = a11;
  v20 = sub_257ED00C0();
  v65 = *(v20 - 8);
  v66 = v20;
  MEMORY[0x28223BE20](v20);
  v61 = &v52 - v21;
  v57 = sub_257ED00C0();
  v56 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v55 = &v52 - v22;
  v54 = *a1;
  v23 = *a3;
  v59 = a3[1];
  v60 = v23;
  v58 = *(a3 + 16);
  *a9 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5B90);
  swift_storeEnumTagMultiPayload();
  v72 = a13;
  v73 = a14;
  v74 = a15;
  v75 = a16;
  v24 = type metadata accessor for MFMenu();
  v25 = v24[13];
  *(a9 + v25) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5BA0);
  swift_storeEnumTagMultiPayload();
  v26 = (a9 + v24[14]);
  *v26 = xmmword_257EDB760;
  v26[1] = xmmword_257EDB770;
  v27 = (a9 + v24[15]);
  v76 = 0;
  sub_257ECEE50();
  v28 = v73;
  *v27 = v72;
  v27[1] = v28;
  v29 = a9 + v24[16];
  LOBYTE(v76) = 0;
  sub_257ECEE50();
  v30 = v73;
  *v29 = v72;
  *(v29 + 1) = v30;
  v31 = (a9 + v24[17]);
  v76 = 0;
  sub_257ECEE50();
  v32 = v73;
  *v31 = v72;
  v31[1] = v32;
  v33 = (a9 + v24[18]);
  v76 = 0;
  sub_257ECEE50();
  v34 = v73;
  *v33 = v72;
  v33[1] = v34;
  v35 = v24[20];
  *(a9 + v35) = 2;
  v36 = v24[21];
  v53 = v24[22];
  v52 = a13;
  v37 = *(*(a13 - 8) + 56);
  v37(a9 + v53, 1, 1, a13);
  v38 = v24[23];
  v39 = *(*(a14 - 8) + 56);
  v40 = v39(a9 + v38, 1, 1, a14);
  *(a9 + v35) = v54;
  *(a9 + v36) = v62;
  v41 = v55;
  v64(v40);
  v39(v41, 0, 1, a14);
  v42 = (*(v56 + 40))(a9 + v38, v41, v57);
  v43 = v61;
  v68(v42);
  v37(v43, 0, 1, v52);
  result = (*(v65 + 40))(a9 + v53, v43, v66);
  v45 = a9 + v24[19];
  v46 = v59;
  *v45 = v60;
  *(v45 + 1) = v46;
  v45[16] = v58;
  v47 = 300.0;
  if (a10 > 0.0)
  {
    v47 = a10;
  }

  v48 = v24[25];
  v49 = (a9 + v24[24]);
  v50 = (a9 + v24[26]);
  *v49 = v47;
  *(v49 + 8) = 0;
  *(a9 + v48) = v71;
  v51 = v70;
  *v50 = v69;
  v50[1] = v51;
  return result;
}

uint64_t MFMenuDivider.init(height:width:color:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5B90);
  swift_storeEnumTagMultiPayload();
  v8 = type metadata accessor for MFMenuDivider();
  v9 = v8[5];
  *(a2 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5BA0);
  result = swift_storeEnumTagMultiPayload();
  v11 = v8[6];
  v12 = v8[7];
  v13 = v8[8];
  *(a2 + v13) = 0;
  *(a2 + v11) = a3;
  *(a2 + v12) = a4;
  if (a1)
  {
    *(a2 + v13) = a1;
  }

  return result;
}

uint64_t sub_257E71DDC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_257ECE4D0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5B90);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_257BE401C(v2, &v14 - v9, &qword_27F8F5B90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_257ECDF90();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_257ECFBF0();
    v13 = sub_257ECE900();
    sub_257ECD960();

    sub_257ECE4C0();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_257E71FDC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_257ECE4D0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5BA0);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for MFMenuDivider();
  sub_257BE401C(v1 + *(v10 + 20), v9, &qword_27F8F5BA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_257ECE1D0();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_257ECFBF0();
    v13 = sub_257ECE900();
    sub_257ECD960();

    sub_257ECE4C0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

void sub_257E721E4()
{
  v1 = *v0;
  v2 = objc_autoreleasePoolPush();
  v3 = [objc_opt_self() effectWithStyle_];
  v4 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

  objc_autoreleasePoolPop(v2);
  if (!v4)
  {
    __break(1u);
  }
}

uint64_t sub_257E722C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_257E77F54();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_257E7232C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_257E77F54();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_257E72390()
{
  sub_257E77F54();
  sub_257ECE6C0();
  __break(1u);
}

double MFMenuDivider.body.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v26 = sub_257ECE1D0();
  v25 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_257ECED50();
  v23 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_257ECDF90();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v23 - v13;
  sub_257E71DDC(&v23 - v13);
  (*(v9 + 104))(v12, *MEMORY[0x277CDF3C0], v8);
  v15 = sub_257ECDF80();
  v16 = *(v9 + 8);
  v16(v12, v8);
  v16(v14, v8);
  v17 = *(v2 + *(type metadata accessor for MFMenuDivider() + 32));
  if (v15)
  {
    if (!v17)
    {
      goto LABEL_6;
    }

LABEL_5:
    sub_257ECC3F0();
    goto LABEL_7;
  }

  if (v17)
  {
    goto LABEL_5;
  }

LABEL_6:
  (*(v23 + 104))(v7, *MEMORY[0x277CE0EE0], v24);
  v17 = sub_257ECEDD0();
LABEL_7:
  sub_257ECF060();
  sub_257ECE080();
  *&v30[6] = v31;
  *&v30[22] = v32;
  *&v30[38] = v33;
  sub_257E71FDC(v5);
  v18 = sub_257ECE1C0();
  (*(v25 + 8))(v5, v26);
  if (v18)
  {
    v19 = [objc_opt_self() mainScreen];
    [v19 bounds];
  }

  sub_257ECF060();
  sub_257ECE080();
  *a1 = v17;
  *(a1 + 8) = 256;
  v20 = *&v30[16];
  *(a1 + 10) = *v30;
  *(a1 + 26) = v20;
  *(a1 + 42) = *&v30[32];
  *(a1 + 56) = *&v30[46];
  v21 = v28;
  *(a1 + 64) = v27;
  *(a1 + 80) = v21;
  result = v29[0];
  *(a1 + 96) = *v29;
  return result;
}

uint64_t MFMenuPosition.hashValue.getter()
{
  v1 = *v0;
  sub_257ED07B0();
  MEMORY[0x259C732E0](v1);
  return sub_257ED0800();
}

uint64_t sub_257E72888@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_257ECE4D0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5BA0);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - v10;
  sub_257BE401C(v2 + *(a1 + 52), &v15 - v10, &qword_27F8F5BA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_257ECE1D0();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    sub_257ECFBF0();
    v14 = sub_257ECE900();
    sub_257ECD960();

    sub_257ECE4C0();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

double sub_257E72A8C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FB090);
  sub_257ECEE60();
  return v1;
}

uint64_t sub_257E72B4C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6790);
  sub_257ECEE60();
  return v1;
}

double sub_257E72C10()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FB090);
  sub_257ECEE60();
  return v1;
}

double sub_257E72CD0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FB090);
  sub_257ECEE60();
  return v1;
}

uint64_t sub_257E72D90()
{
  sub_257ECC3F0();
  sub_257ECC3F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FB158);
  sub_257ECEF40();
}

uint64_t MFMenu.body.getter@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v102 = a2;
  v111 = sub_257ECE750();
  v101 = *(v111 - 8);
  v3 = MEMORY[0x28223BE20](v111);
  v100 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = *(a1 - 1);
  v108 = *(v114 + 64);
  MEMORY[0x28223BE20](v3);
  v107 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v113 = a1[2];
  v94 = sub_257ED00C0();
  *&v112 = a1[4];
  v142 = v112;
  WitnessTable = swift_getWitnessTable();
  v109 = sub_257ECEEE0();
  v97 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v91 = &v70 - v6;
  v110 = sub_257ECE240();
  v98 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v92 = &v70 - v7;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FAF30);
  v106 = sub_257ECE240();
  v99 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v95 = &v70 - v8;
  v105 = a1;
  v89 = a1[3];
  sub_257ED00C0();
  v88 = a1[5];
  v141 = v88;
  swift_getWitnessTable();
  sub_257ECEF20();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FAF38);
  sub_257ECE240();
  sub_257ECE240();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FAF40);
  sub_257ECE240();
  sub_257ED00C0();
  v9 = swift_getWitnessTable();
  v10 = sub_257BD2D4C(&qword_27F8FAF48, &qword_27F8FAF38);
  v139 = v9;
  v140 = v10;
  v137 = swift_getWitnessTable();
  v138 = MEMORY[0x277CDF748];
  v11 = swift_getWitnessTable();
  v12 = sub_257BD2D4C(&qword_27F8FAF50, &qword_27F8FAF40);
  v135 = v11;
  v136 = v12;
  v134 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_257ECE130();
  v13 = sub_257ECE240();
  v132 = swift_getWitnessTable();
  v133 = MEMORY[0x277CDF678];
  v86 = v13;
  v87 = swift_getWitnessTable();
  sub_257ECE300();
  v14 = sub_257ECE240();
  v90 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v84 = &v70 - v15;
  v71 = swift_getWitnessTable();
  v130 = v71;
  v131 = MEMORY[0x277CE0790];
  v16 = swift_getWitnessTable();
  v72 = v16;
  v17 = sub_257BD2D4C(&qword_27F8FAF58, &qword_27F8FAF30);
  v128 = v16;
  v129 = v17;
  v18 = swift_getWitnessTable();
  v75 = v18;
  v19 = swift_getWitnessTable();
  v126 = v18;
  v127 = v19;
  v20 = swift_getWitnessTable();
  *&v144 = v14;
  *(&v144 + 1) = MEMORY[0x277D839B0];
  v81 = v14;
  v21 = MEMORY[0x277D839B0];
  *&v145 = v20;
  *(&v145 + 1) = MEMORY[0x277D839C8];
  v22 = v20;
  v82 = v20;
  v23 = MEMORY[0x277D839C8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v79 = OpaqueTypeMetadata2;
  v85 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v80 = &v70 - v25;
  *&v144 = v14;
  *(&v144 + 1) = v21;
  *&v145 = v22;
  *(&v145 + 1) = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v78 = OpaqueTypeConformance2;
  v77 = sub_257E78008(&qword_27F8F77F8, MEMORY[0x277CDE0B8]);
  *&v144 = OpaqueTypeMetadata2;
  *(&v144 + 1) = v111;
  *&v145 = OpaqueTypeConformance2;
  *(&v145 + 1) = v77;
  v83 = swift_getOpaqueTypeMetadata2();
  v76 = *(v83 - 8);
  v27 = MEMORY[0x28223BE20](v83);
  v73 = &v70 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v74 = &v70 - v29;
  v30 = v114;
  v103 = *(v114 + 16);
  v104 = v114 + 16;
  v31 = v107;
  v32 = v96;
  v33 = v105;
  v103(v107, v96, v105);
  v34 = (*(v30 + 80) + 48) & ~*(v30 + 80);
  v70 = *(v30 + 80);
  v35 = swift_allocObject();
  *&v36 = v113;
  *(&v36 + 1) = v89;
  *&v37 = v112;
  *(&v37 + 1) = v88;
  v112 = v37;
  v113 = v36;
  *(v35 + 16) = v36;
  *(v35 + 32) = v37;
  v38 = *(v30 + 32);
  v38(v35 + v34, v31, v33);
  v114 = v30 + 32;
  v115 = v113;
  v116 = v112;
  v117 = v32;
  v39 = v91;
  sub_257ECEEA0();
  v40 = v31;
  v41 = v31;
  v42 = v105;
  v103(v41, v32, v105);
  v43 = swift_allocObject();
  v44 = v112;
  *(v43 + 16) = v113;
  *(v43 + 32) = v44;
  v45 = v43 + v34;
  v46 = v34;
  v47 = v42;
  v38(v45, v40, v42);
  v48 = v92;
  v49 = v109;
  sub_257ECECF0();

  (*(v97 + 8))(v39, v49);
  sub_257E73EB4(v47, v143);
  v144 = v143[0];
  v145 = v143[1];
  v146 = v143[2];
  v147 = v143[3];
  sub_257ECF060();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAF60);
  sub_257E76F50();
  v50 = v95;
  v51 = v110;
  sub_257ECECD0();
  sub_257BBAC08(v143);
  (*(v98 + 8))(v48, v51);
  sub_257E7404C(v47, &v122);
  v144 = v122;
  v145 = v123;
  v146 = v124;
  v147 = v125;
  v118 = v122;
  v119 = v123;
  v120 = v124;
  v121 = v125;
  sub_257ECF060();
  v52 = v84;
  v53 = v106;
  v54 = v86;
  sub_257ECECD0();
  (*(*(v54 - 8) + 8))(&v144, v54);
  (*(v99 + 8))(v50, v53);
  LOBYTE(v122) = sub_257E72B4C() & 1;
  v55 = v107;
  v103(v107, v32, v47);
  v56 = swift_allocObject();
  v57 = v112;
  *(v56 + 16) = v113;
  *(v56 + 32) = v57;
  v38(v56 + v46, v55, v47);
  v59 = v80;
  v58 = v81;
  sub_257ECED00();

  (*(v90 + 8))(v52, v58);
  v60 = v100;
  sub_257ECE740();
  v61 = v73;
  v62 = v79;
  v63 = v111;
  sub_257ECEB60();
  (*(v101 + 8))(v60, v63);
  (*(v85 + 8))(v59, v62);
  v64 = v76;
  v65 = *(v76 + 16);
  v66 = v74;
  v67 = v83;
  v65(v74, v61, v83);
  v68 = *(v64 + 8);
  v68(v61, v67);
  v65(v102, v66, v67);
  return (v68)(v66, v67);
}

uint64_t sub_257E73B6C(uint64_t a1)
{
  v2 = type metadata accessor for MFMenu();
  sub_257ECC3F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6790);
  sub_257ECEE60();
  sub_257ECEE70();

  if (*(a1 + *(v2 + 84)) == 1)
  {
    return sub_257E72D90();
  }

  return result;
}

uint64_t sub_257E73C68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v12 = sub_257ED00C0();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v19 - v14;
  v19[2] = a2;
  v19[3] = a3;
  v19[4] = a4;
  v19[5] = a5;
  v16 = *(type metadata accessor for MFMenu() + 88);
  v19[1] = a4;
  swift_getWitnessTable();
  v17 = *(v13 + 16);
  v17(v15, a1 + v16, v12);
  v17(a6, v15, v12);
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_257E73DC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = objc_opt_self();
  v10 = [v9 mainScreen];
  [v10 bounds];

  type metadata accessor for MFMenu();
  sub_257E72C70();
  v11 = [v9 mainScreen];
  [v11 bounds];

  return sub_257E72D30();
}

double sub_257E73EB4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, v2, a1);
  v8 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v9 = swift_allocObject();
  v10 = *(a1 + 32);
  *(v9 + 16) = *(a1 + 16);
  *(v9 + 32) = v10;
  (*(v5 + 32))(v9 + v8, v7, a1);
  sub_257E72C10();
  sub_257E72CD0();
  sub_257ECF060();
  sub_257ECE080();
  v11 = v16;
  v12 = v17;
  v13 = v18;
  v14 = v19;
  *a2 = sub_257E782C8;
  *(a2 + 8) = v9;
  *(a2 + 16) = v11;
  *(a2 + 24) = v12;
  *(a2 + 32) = v13;
  *(a2 + 40) = v14;
  result = *&v20;
  *(a2 + 48) = v20;
  return result;
}

uint64_t sub_257E7404C@<X0>(uint64_t a1@<X0>, __int128 *a2@<X8>)
{
  v3 = v2;
  v27 = a2;
  v5 = sub_257ECE1D0();
  v30 = *(v5 - 8);
  v31 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  (*(v9 + 16))(&v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a1);
  v11 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = *(a1 + 16);
  v28 = *(a1 + 24);
  *(v12 + 24) = v28;
  v13 = *(a1 + 40);
  *(v12 + 40) = v13;
  (*(v9 + 32))(v12 + v11, &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_257ED00C0();
  v49 = v13;
  *&v28 = MEMORY[0x277CE1550];
  swift_getWitnessTable();
  sub_257ECEF20();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FAF38);
  sub_257ECE240();
  sub_257ECE240();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FAF40);
  sub_257ECE240();
  sub_257ED00C0();
  WitnessTable = swift_getWitnessTable();
  v15 = sub_257BD2D4C(&qword_27F8FAF48, &qword_27F8FAF38);
  v47 = WitnessTable;
  v48 = v15;
  v45 = swift_getWitnessTable();
  v46 = MEMORY[0x277CDF748];
  v16 = swift_getWitnessTable();
  v17 = sub_257BD2D4C(&qword_27F8FAF50, &qword_27F8FAF40);
  v43 = v16;
  v44 = v17;
  v18 = v29;
  v42 = swift_getWitnessTable();
  swift_getWitnessTable();
  v40 = sub_257ECE120();
  v41 = v19;
  sub_257E72888(a1, v8);
  LOBYTE(v10) = sub_257ECE1C0();
  result = (*(v30 + 8))(v8, v31);
  if (v10)
  {
    sub_257E72C10();
LABEL_4:
    sub_257E72A8C();
    sub_257ECF060();
    sub_257ECE130();
    v21 = swift_getWitnessTable();
    sub_257ECECB0();

    v35[0] = v50;
    v35[1] = v51;
    v35[2] = v52;
    v35[3] = v53;
    v36 = v50;
    v37 = v51;
    v38 = v52;
    v39 = v53;
    v22 = sub_257ECE240();
    v33 = v21;
    v34 = MEMORY[0x277CDF678];
    swift_getWitnessTable();
    v23 = *(v22 - 8);
    v24 = *(v23 + 16);
    v24(&v54, &v36, v22);
    v25 = *(v23 + 8);
    v25(v35, v22);
    v36 = v54;
    v37 = v55;
    v38 = v56;
    v39 = v57;
    v32[0] = v54;
    v32[1] = v55;
    v32[2] = v56;
    v32[3] = v57;
    v24(v27, v32, v22);
    return v25(&v36, v22);
  }

  if ((*(v18 + *(a1 + 96) + 8) & 1) == 0)
  {
    goto LABEL_4;
  }

  __break(1u);
  return result;
}

uint64_t sub_257E745EC(uint64_t a1, char *a2, uint64_t a3)
{
  v4 = *a2;
  result = type metadata accessor for MFMenu();
  v6 = *(a3 + *(result + 104));
  if (v6)
  {
    if ((v4 & 1) == 0)
    {
      v7 = sub_257ECC3F0();
      v6(v7);
      return sub_257BBD88C(v6);
    }
  }

  return result;
}

uint64_t sub_257E74664@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t a1)@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v110 = a1;
  v127 = a7;
  v111 = sub_257ECE4F0();
  v116 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v114 = &v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_257ECE270();
  v113 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v112 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FB098);
  v117 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v115 = &v92 - v14;
  v105 = sub_257ECE760();
  v104 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v103 = &v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = a3;
  v152 = a4;
  v153 = a5;
  v154 = a6;
  v16 = type metadata accessor for MFMenu();
  v97 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v96 = &v92 - v17;
  sub_257ED00C0();
  v102 = a6;
  v150 = a6;
  swift_getWitnessTable();
  v18 = sub_257ECEF20();
  v99 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v98 = &v92 - v19;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FAF38);
  v130 = v18;
  v20 = sub_257ECE240();
  v101 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v100 = &v92 - v21;
  v126 = v22;
  v23 = sub_257ECE240();
  v108 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v120 = &v92 - v24;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FAF40);
  v125 = v23;
  v25 = sub_257ECE240();
  v121 = *(v25 - 8);
  v26 = MEMORY[0x28223BE20](v25);
  v109 = &v92 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v106 = &v92 - v29;
  MEMORY[0x28223BE20](v28);
  v107 = &v92 - v30;
  v129 = v31;
  v124 = sub_257ED00C0();
  v123 = *(v124 - 8);
  v32 = MEMORY[0x28223BE20](v124);
  v128 = &v92 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v122 = &v92 - v34;
  v35 = a2;
  v36 = sub_257E72B4C();
  if (v36)
  {
    MEMORY[0x28223BE20](v36);
    *(&v92 - 6) = a3;
    *(&v92 - 5) = a4;
    *(&v92 - 4) = a5;
    v94 = a4;
    v93 = a5;
    v37 = v102;
    *(&v92 - 3) = v102;
    *(&v92 - 2) = a2;
    v95 = a2;
    sub_257ECE5B0();
    v38 = v98;
    sub_257ECEF10();
    v39 = v97;
    v40 = v96;
    (*(v97 + 16))(v96, v35, v16);
    v41 = (*(v39 + 80) + 48) & ~*(v39 + 80);
    v42 = swift_allocObject();
    v43 = v94;
    *(v42 + 2) = a3;
    *(v42 + 3) = v43;
    *(v42 + 4) = v93;
    *(v42 + 5) = v37;
    (*(v39 + 32))(&v42[v41], v40, v16);
    v151 = sub_257E77FF0;
    v152 = v42;
    sub_257ECF060();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FB0A0);
    v44 = v130;
    WitnessTable = swift_getWitnessTable();
    sub_257BD2D4C(&qword_27F8FB0A8, &qword_27F8FB0A0);
    v46 = v100;
    sub_257ECEB30();

    (*(v99 + 8))(v38, v44);
    v47 = [objc_opt_self() sharedApplication];
    v48 = [v47 userInterfaceLayoutDirection];

    v49 = v103;
    sub_257ECE800();
    v50 = v105;
    sub_257ECE0E0();
    v52 = v51;
    (*(v104 + 8))(v49, v50);
    v53 = -v52;
    if (v48 != 1)
    {
      v53 = v52;
    }

    sub_257E75E98(v16, v53);
    sub_257E7606C(v16);
    v54 = sub_257BD2D4C(&qword_27F8FAF48, &qword_27F8FAF38);
    v135 = WitnessTable;
    v136 = v54;
    v55 = v126;
    v56 = swift_getWitnessTable();
    sub_257ECECC0();
    (*(v101 + 8))(v46, v55);
    sub_257ECF0F0();
    v57 = v112;
    sub_257ECE280();
    v58 = v114;
    sub_257ECE4E0();
    v59 = sub_257E78008(&qword_27F8FB0B0, MEMORY[0x277CDFAE8]);
    v60 = sub_257E78008(&qword_27F8FB0B8, MEMORY[0x277CE0068]);
    v61 = v115;
    v62 = v118;
    v63 = v111;
    sub_257ECDF70();
    (*(v116 + 8))(v58, v63);
    (*(v113 + 8))(v57, v62);
    v133 = v56;
    v134 = MEMORY[0x277CDF748];
    v64 = v125;
    v65 = swift_getWitnessTable();
    v151 = v62;
    v152 = v63;
    v153 = v59;
    v154 = v60;
    swift_getOpaqueTypeConformance2();
    v66 = v106;
    v67 = v119;
    v68 = v120;
    sub_257E762DC(v61);
    (*(v117 + 8))(v61, v67);
    (*(v108 + 8))(v68, v64);
    v69 = sub_257BD2D4C(&qword_27F8FAF50, &qword_27F8FAF40);
    v131 = v65;
    v132 = v69;
    v70 = v129;
    swift_getWitnessTable();
    v71 = v121;
    v72 = *(v121 + 16);
    v73 = v107;
    v72(v107, v66, v70);
    v74 = *(v71 + 8);
    v74(v66, v70);
    v75 = v109;
    v72(v109, v73, v70);
    v74(v73, v70);
    v76 = v128;
    (*(v71 + 32))(v128, v75, v70);
    (*(v71 + 56))(v76, 0, 1, v70);
  }

  else
  {
    (*(v121 + 56))(v128, 1, 1, v129);
    v77 = swift_getWitnessTable();
    v78 = sub_257BD2D4C(&qword_27F8FAF48, &qword_27F8FAF38);
    v148 = v77;
    v149 = v78;
    v146 = swift_getWitnessTable();
    v147 = MEMORY[0x277CDF748];
    v79 = swift_getWitnessTable();
    v80 = sub_257BD2D4C(&qword_27F8FAF50, &qword_27F8FAF40);
    v144 = v79;
    v145 = v80;
    swift_getWitnessTable();
  }

  v81 = v123;
  v82 = *(v123 + 16);
  v83 = v122;
  v84 = v128;
  v85 = v124;
  v82(v122, v128, v124);
  v86 = *(v81 + 8);
  v86(v84, v85);
  v87 = swift_getWitnessTable();
  v88 = sub_257BD2D4C(&qword_27F8FAF48, &qword_27F8FAF38);
  v142 = v87;
  v143 = v88;
  v140 = swift_getWitnessTable();
  v141 = MEMORY[0x277CDF748];
  v89 = swift_getWitnessTable();
  v90 = sub_257BD2D4C(&qword_27F8FAF50, &qword_27F8FAF40);
  v138 = v89;
  v139 = v90;
  v137 = swift_getWitnessTable();
  swift_getWitnessTable();
  v82(v127, v83, v85);
  return (v86)(v83, v85);
}

uint64_t sub_257E75688@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v12 = sub_257ED00C0();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v19 - v14;
  v19[2] = a2;
  v19[3] = a3;
  v19[4] = a4;
  v19[5] = a5;
  v16 = *(type metadata accessor for MFMenu() + 92);
  v19[1] = a5;
  swift_getWitnessTable();
  v17 = *(v13 + 16);
  v17(v15, a1 + v16, v12);
  v17(a6, v15, v12);
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_257E757E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v37 = a3;
  v41 = a1;
  v42 = sub_257ECE0F0();
  v13 = *(v42 - 8);
  v40 = *(v13 + 64);
  MEMORY[0x28223BE20](v42);
  v38 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = a3;
  v44 = a4;
  v15 = a4;
  v34 = a4;
  v35 = a5;
  v45 = a5;
  v46 = a6;
  v36 = a6;
  v16 = type metadata accessor for MFMenu();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v33 - v19;
  *a7 = sub_257ECF060();
  a7[1] = v21;
  v39 = a7;
  v22 = a7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FB0C0) + 44);
  v23 = v37;
  sub_257E75A9C(a2, v37, v15, a5, a6, v22);
  (*(v17 + 16))(v20, a2, v16);
  v24 = v38;
  (*(v13 + 16))(v38, v41, v42);
  v25 = (*(v17 + 80) + 48) & ~*(v17 + 80);
  v26 = (v18 + *(v13 + 80) + v25) & ~*(v13 + 80);
  v27 = swift_allocObject();
  v28 = v34;
  v29 = v35;
  *(v27 + 2) = v23;
  *(v27 + 3) = v28;
  v30 = v36;
  *(v27 + 4) = v29;
  *(v27 + 5) = v30;
  (*(v17 + 32))(&v27[v25], v20, v16);
  (*(v13 + 32))(&v27[v26], v24, v42);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FB0C8);
  v32 = (v39 + *(result + 36));
  *v32 = sub_257E78050;
  v32[1] = v27;
  v32[2] = 0;
  v32[3] = 0;
  return result;
}

uint64_t sub_257E75A9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v33[1] = a6;
  v33[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FB0D0);
  MEMORY[0x28223BE20](v33[0]);
  v12 = (v33 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FB0D8);
  MEMORY[0x28223BE20](v13);
  v15 = v33 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FB0E0);
  MEMORY[0x28223BE20](v16);
  v18 = (v33 - v17);
  v33[2] = a2;
  v33[3] = a3;
  v33[4] = a4;
  v33[5] = a5;
  v19 = type metadata accessor for MFMenu();
  v20 = *(a1 + *(v19 + 100));
  v21 = *(a1 + *(v19 + 56) + 8);
  if (v20)
  {
    v22 = v12 + *(v33[0] + 36);
    v23 = *(sub_257ECE2D0() + 20);
    v24 = *MEMORY[0x277CE0118];
    v25 = sub_257ECE570();
    (*(*(v25 - 8) + 104))(&v22[v23], v24, v25);
    *v22 = v21;
    *(v22 + 1) = v21;
    *&v22[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAB68) + 36)] = 256;
    *v12 = v20;
    v26 = &qword_27F8FB0D0;
    sub_257BE401C(v12, v15, &qword_27F8FB0D0);
    swift_storeEnumTagMultiPayload();
    sub_257E78158();
    sub_257E78210();
    sub_257ECC3F0();
    sub_257ECE6F0();
    v27 = v12;
  }

  else
  {
    v28 = v18 + *(v16 + 36);
    v29 = *(sub_257ECE2D0() + 20);
    v30 = *MEMORY[0x277CE0118];
    v31 = sub_257ECE570();
    (*(*(v31 - 8) + 104))(&v28[v29], v30, v31);
    *v28 = v21;
    *(v28 + 1) = v21;
    *&v28[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAB68) + 36)] = 256;
    *v18 = 18;
    v26 = &qword_27F8FB0E0;
    sub_257BE401C(v18, v15, &qword_27F8FB0E0);
    swift_storeEnumTagMultiPayload();
    sub_257E78158();
    sub_257E78210();
    sub_257ECE6F0();
    v27 = v18;
  }

  return sub_257BE4084(v27, v26);
}

uint64_t sub_257E75E1C()
{
  sub_257ECE0D0();
  type metadata accessor for MFMenu();
  return sub_257E72AEC();
}

void sub_257E75E98(uint64_t a1, double a2)
{
  v3 = v2;
  v6 = sub_257ECE1D0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + *(a1 + 84)))
  {
    v10 = 10.0;
  }

  else
  {
    v10 = 20.0;
  }

  sub_257E72888(a1, &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_257ECE1C0();
  (*(v7 + 8))(v9, v6);
  if (v11)
  {
    v12 = sub_257E72C10() + -30.0;
  }

  else
  {
    v13 = v3 + *(a1 + 96);
    if (*(v13 + 8))
    {
      return;
    }

    v12 = *v13;
  }

  v14 = [objc_opt_self() sharedApplication];
  v15 = [v14 userInterfaceLayoutDirection];

  if (v15 != 1 && v10 <= a2 && sub_257E72C10() - v10 < v12 + a2)
  {
    sub_257E72C10();
  }
}

void sub_257E7606C(uint64_t a1)
{
  v2 = sub_257ECE1D0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  sub_257E72888(a1, &v12 - v7);
  v9 = sub_257ECE1C0();
  v10 = *(v3 + 8);
  v10(v8, v2);
  if (v9)
  {
    sub_257E72888(a1, v6);
    v11 = (*(v3 + 88))(v6, v2);
    if (v11 != *MEMORY[0x277CDF988] && v11 != *MEMORY[0x277CDF998] && v11 != *MEMORY[0x277CDF9A8] && v11 != *MEMORY[0x277CDF9B8] && v11 != *MEMORY[0x277CDF9D0])
    {
      v10(v6, v2);
    }
  }

  sub_257E72A8C();
}

uint64_t sub_257E762DC(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  (*(v2 + 16))(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_257ECE0A0();
  sub_257ECEB50();
}

uint64_t sub_257E763D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = sub_257ECE5B0();
  *(a7 + 8) = 0;
  *(a7 + 16) = 1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FB0F8);
  return sub_257E76470(a2, a1, a3, a4, a5, a6, a7 + *(v14 + 44));
}

uint64_t sub_257E76470@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v71 = a2;
  v13 = sub_257ECE750();
  v75 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v73 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_257ECE760();
  v69 = *(v15 - 8);
  v70 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = a3;
  v83 = a3;
  v84 = a4;
  v64 = a4;
  v65 = a5;
  v85 = a5;
  v86 = a6;
  v66 = a6;
  v18 = type metadata accessor for MFMenu();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v62 - v20;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FB100);
  v67 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v23 = &v62 - v22;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FB108);
  MEMORY[0x28223BE20](v74);
  v25 = &v62 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FB110);
  v77 = *(v26 - 8);
  v78 = v26;
  MEMORY[0x28223BE20](v26);
  v76 = &v62 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FB118);
  v79 = *(v28 - 8);
  v80 = v28;
  MEMORY[0x28223BE20](v28);
  v72 = &v62 - v29;
  if (sub_257E72B4C())
  {
    (*(v19 + 16))(v21, a1, v18);
    v30 = *(v19 + 80);
    v62 = v13;
    v31 = a7;
    v32 = (v30 + 48) & ~v30;
    v33 = swift_allocObject();
    v34 = v64;
    v33[2] = v63;
    v33[3] = v34;
    v35 = v66;
    v33[4] = v65;
    v33[5] = v35;
    v36 = v33 + v32;
    a7 = v31;
    (*(v19 + 32))(v36, v21, v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FB120);
    sub_257E7877C();
    sub_257ECEEA0();
    v37 = [objc_opt_self() sharedApplication];
    v38 = [v37 userInterfaceLayoutDirection];

    sub_257ECE800();
    v39 = v70;
    sub_257ECE0E0();
    v41 = v40;
    (*(v69 + 8))(v17, v39);
    if (v38 != 1)
    {
      v41 = -v41;
    }

    (*(v67 + 32))(v25, v23, v68);
    v42 = v73;
    v43 = v74;
    v44 = &v25[*(v74 + 36)];
    *v44 = v41;
    *(v44 + 1) = 0;
    sub_257ECE740();
    v45 = sub_257E78940();
    v46 = sub_257E78008(&qword_27F8F77F8, MEMORY[0x277CDE0B8]);
    v47 = v76;
    v48 = v62;
    sub_257ECEB60();
    v49 = v48;
    (*(v75 + 8))(v42, v48);
    sub_257BE4084(v25, &qword_27F8FB108);
    type metadata accessor for MAGUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v51 = [objc_opt_self() bundleForClass_];
    v52 = sub_257ECF4C0();
    v53 = sub_257ECF4C0();
    v54 = [v51 localizedStringForKey:v52 value:0 table:v53];

    v55 = sub_257ECF500();
    v57 = v56;

    v81 = v55;
    v82 = v57;
    v83 = v43;
    v84 = v49;
    v85 = v45;
    v86 = v46;
    swift_getOpaqueTypeConformance2();
    sub_257BDAB08();
    v58 = v72;
    v59 = v78;
    sub_257ECEBF0();

    (*(v77 + 8))(v47, v59);
    sub_257BBB6EC(v58, a7);
    v60 = 0;
  }

  else
  {
    v60 = 1;
  }

  return (*(v79 + 56))(a7, v60, 1, v80);
}

uint64_t sub_257E76C28()
{
  type metadata accessor for MFMenu();
  sub_257ECF090();
  sub_257ECE110();
}

uint64_t sub_257E76CD4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_257ECED80();
  result = swift_getKeyPath();
  *a1 = result;
  *(a1 + 8) = v2;
  *(a1 + 16) = 0;
  return result;
}

uint64_t sub_257E76D60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(char *))
{
  a5(0);
  MEMORY[0x28223BE20]();
  v9 = &v12 - v8;
  (*(v10 + 16))(&v12 - v8, a1);
  return a6(v9);
}

uint64_t type metadata accessor for MFMenuDivider()
{
  result = qword_27F8FAF88;
  if (!qword_27F8FAF88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_257E76EAC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = *(type metadata accessor for MFMenu() - 8);
  v6 = v0 + ((*(v5 + 80) + 48) & ~*(v5 + 80));

  return sub_257E73DC4(v6, v1, v2, v3, v4);
}

unint64_t sub_257E76F50()
{
  result = qword_27F8FAF68;
  if (!qword_27F8FAF68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FAF60);
    sub_257BD2D4C(&qword_27F8FAF70, &qword_27F8FAF78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FAF68);
  }

  return result;
}

uint64_t sub_257E77008(uint64_t a1, char *a2)
{
  v5 = *(type metadata accessor for MFMenu() - 8);
  v6 = v2 + ((*(v5 + 80) + 48) & ~*(v5 + 80));

  return sub_257E745EC(a1, a2, v6);
}

unint64_t sub_257E770E4()
{
  result = qword_27F8FAF80;
  if (!qword_27F8FAF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FAF80);
  }

  return result;
}

void sub_257E771A4()
{
  sub_257E772AC(319, &qword_27F8FA950, MEMORY[0x277CDF3E0]);
  if (v0 <= 0x3F)
  {
    sub_257E772AC(319, &qword_27F8F5B68, MEMORY[0x277CDFA28]);
    if (v1 <= 0x3F)
    {
      sub_257E77CE4(319, qword_27F8FAF98, MEMORY[0x277CE0F78], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_257E772AC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_257ECDFE0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_257E77318()
{
  sub_257E772AC(319, &qword_27F8FA950, MEMORY[0x277CDF3E0]);
  if (v0 <= 0x3F)
  {
    sub_257E772AC(319, &qword_27F8F5B68, MEMORY[0x277CDFA28]);
    if (v1 <= 0x3F)
    {
      sub_257E77CE4(319, &qword_27F8FB020, MEMORY[0x277D839F8], MEMORY[0x277CE10B8]);
      if (v2 <= 0x3F)
      {
        sub_257E77CE4(319, &qword_27F8F6750, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          sub_257E77CE4(319, &qword_27F8FB028, &type metadata for MFReaderFormatterTheme, MEMORY[0x277CE11F8]);
          if (v4 <= 0x3F)
          {
            sub_257E77CE4(319, &qword_27F8FB030, &type metadata for MFMenuPosition, MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              sub_257ED00C0();
              if (v6 <= 0x3F)
              {
                sub_257ED00C0();
                if (v7 <= 0x3F)
                {
                  sub_257E77CE4(319, &qword_27F8FB038, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
                  if (v8 <= 0x3F)
                  {
                    sub_257E77CE4(319, qword_27F8FAF98, MEMORY[0x277CE0F78], MEMORY[0x277D83D88]);
                    if (v9 <= 0x3F)
                    {
                      sub_257E77D34();
                      if (v10 <= 0x3F)
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
      }
    }
  }
}

uint64_t sub_257E775AC(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(*(sub_257ECDF90() - 8) + 64);
  if (v6 <= 8)
  {
    v7 = 8;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(sub_257ECE1D0() - 8);
  v9 = *(*(a3 + 16) - 8);
  if (*(v8 + 64) <= 8uLL)
  {
    v10 = 8;
  }

  else
  {
    v10 = *(v8 + 64);
  }

  v11 = *(*(a3 + 16) - 8);
  v12 = *(v9 + 84);
  if (v12)
  {
    v13 = v12 - 1;
  }

  else
  {
    v13 = 0;
  }

  v14 = *(a3 + 24);
  v15 = *(v14 - 8);
  v16 = v15;
  v17 = *(v15 + 84);
  v18 = v17 - 1;
  if (!v17)
  {
    v18 = 0;
  }

  if (v13 <= v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = v13;
  }

  if (v19 <= 0x7FFFFFFF)
  {
    v20 = 0x7FFFFFFF;
  }

  else
  {
    v20 = v19;
  }

  v21 = *(v8 + 80);
  v22 = *(v9 + 80);
  if (v12)
  {
    v23 = *(v9 + 64);
  }

  else
  {
    v23 = *(v9 + 64) + 1;
  }

  v24 = *(v15 + 80);
  v25 = *(v15 + 64);
  if (v17)
  {
    v26 = 23;
  }

  else
  {
    v26 = 24;
  }

  if (!a2)
  {
    return 0;
  }

  v27 = v21 & 0xF8 | 7;
  v28 = v7 + v27 + 1;
  v29 = v10 + 8;
  v30 = v22 + 19;
  v31 = v23 + v24;
  if (v20 < a2)
  {
    v32 = ((((v26 + v25 + ((v31 + ((v30 + ((((((((((((v29 + (v28 & ~v27)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v22)) & ~v24)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
    v33 = a2 - v20;
    v34 = v32 & 0xFFFFFFF8;
    if ((v32 & 0xFFFFFFF8) != 0)
    {
      v35 = 2;
    }

    else
    {
      v35 = v33 + 1;
    }

    if (v35 >= 0x10000)
    {
      v36 = 4;
    }

    else
    {
      v36 = 2;
    }

    if (v35 < 0x100)
    {
      v36 = 1;
    }

    if (v35 >= 2)
    {
      v37 = v36;
    }

    else
    {
      v37 = 0;
    }

    if (v37 > 1)
    {
      if (v37 == 2)
      {
        v38 = *(a1 + v32);
        if (v38)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v38 = *(a1 + v32);
        if (v38)
        {
          goto LABEL_40;
        }
      }
    }

    else if (v37)
    {
      v38 = *(a1 + v32);
      if (v38)
      {
LABEL_40:
        v39 = v38 - 1;
        if (v34)
        {
          v39 = 0;
          v40 = *a1;
        }

        else
        {
          v40 = 0;
        }

        return v20 + (v40 | v39) + 1;
      }
    }
  }

  v41 = (((((((((((v29 + ((a1 + v28) & ~v27)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  if ((v19 & 0x80000000) != 0)
  {
    v44 = (v30 + v41) & ~v22;
    if (v13 == v20)
    {
      if (v12 >= 2)
      {
        v45 = (*(v11 + 48))(v44);
        goto LABEL_58;
      }
    }

    else if (v17 >= 2)
    {
      v45 = (*(v16 + 48))((v31 + v44) & ~v24, v17, v14);
LABEL_58:
      if (v45 >= 2)
      {
        return v45 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v42 = *(v41 + 8);
  if (v42 >= 0xFFFFFFFF)
  {
    LODWORD(v42) = -1;
  }

  return (v42 + 1);
}

void sub_257E7790C(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v8 = *(*(sub_257ECDF90() - 8) + 64);
  if (v8 <= 8)
  {
    v9 = 8;
  }

  else
  {
    v9 = v8;
  }

  v10 = 0;
  v11 = *(sub_257ECE1D0() - 8);
  v12 = *(*(a4 + 16) - 8);
  if (*(v11 + 64) <= 8uLL)
  {
    v13 = 8;
  }

  else
  {
    v13 = *(v11 + 64);
  }

  v14 = *(*(a4 + 16) - 8);
  v15 = *(v12 + 84);
  if (v15)
  {
    v16 = v15 - 1;
  }

  else
  {
    v16 = 0;
  }

  v17 = *(a4 + 24);
  v18 = *(v17 - 8);
  v19 = *(v18 + 84);
  v20 = *(v12 + 64);
  v21 = *(v11 + 80);
  v22 = *(v12 + 80);
  v23 = *(v18 + 80);
  v24 = *(v18 + 64);
  v25 = v19 - 1;
  if (!v19)
  {
    v25 = 0;
  }

  if (v16 <= v25)
  {
    v26 = v25;
  }

  else
  {
    v26 = v16;
  }

  if (v26 <= 0x7FFFFFFF)
  {
    v27 = 0x7FFFFFFF;
  }

  else
  {
    v27 = v26;
  }

  if (v15)
  {
    v28 = v20;
  }

  else
  {
    v28 = v20 + 1;
  }

  v29 = v21 & 0xF8 | 7;
  v30 = v9 + v29 + 1;
  v31 = v13 + 8;
  v32 = (v22 + 19 + ((((((((((((v13 + 8 + (v30 & ~v29)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v22;
  v33 = v28 + v23;
  v34 = (v28 + v23 + v32) & ~v23;
  if (!v19)
  {
    ++v24;
  }

  v35 = ((((v24 + v34 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v27 < a3)
  {
    if (((((v24 + v34 + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v36 = a3 - v27 + 1;
    }

    else
    {
      v36 = 2;
    }

    if (v36 >= 0x10000)
    {
      v37 = 4;
    }

    else
    {
      v37 = 2;
    }

    if (v36 < 0x100)
    {
      v37 = 1;
    }

    if (v36 >= 2)
    {
      v10 = v37;
    }

    else
    {
      v10 = 0;
    }
  }

  if (a2 > v27)
  {
    if (v35)
    {
      v38 = 1;
    }

    else
    {
      v38 = a2 - v27;
    }

    if (v35)
    {
      v39 = ~v27 + a2;
      bzero(a1, v35);
      *a1 = v39;
    }

    if (v10 > 1)
    {
      if (v10 == 2)
      {
        *(a1 + v35) = v38;
      }

      else
      {
        *(a1 + v35) = v38;
      }
    }

    else if (v10)
    {
      *(a1 + v35) = v38;
    }

    return;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *(a1 + v35) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_53;
    }

    *(a1 + v35) = 0;
LABEL_52:
    if (!a2)
    {
      return;
    }

    goto LABEL_53;
  }

  if (!v10)
  {
    goto LABEL_52;
  }

  *(a1 + v35) = 0;
  if (!a2)
  {
    return;
  }

LABEL_53:
  v40 = (((((((((((v31 + ((a1 + v30) & ~v29)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  if ((v26 & 0x80000000) != 0)
  {
    v41 = (v22 + 19 + v40) & ~v22;
    if (v16 == v27)
    {
      if (v15 >= 2)
      {
        v42 = *(v14 + 56);

        v42(v41, a2 + 1);
      }
    }

    else if (v19 >= 2)
    {
      v43 = *(v18 + 56);
      v44 = (v33 + v41) & ~v23;

      v43(v44, a2 + 1, v19, v17);
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *(v40 + 16) = 0;
    *v40 = a2 & 0x7FFFFFFF;
    *(v40 + 8) = 0;
  }

  else
  {
    *(v40 + 8) = a2 - 1;
  }
}

void sub_257E77CE4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_257E77D34()
{
  if (!qword_27F8FB040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FB048);
    v0 = sub_257ED00C0();
    if (!v1)
    {
      atomic_store(v0, &qword_27F8FB040);
    }
  }
}

unint64_t sub_257E77D98()
{
  result = qword_27F8FB050;
  if (!qword_27F8FB050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FB058);
    sub_257E77E24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FB050);
  }

  return result;
}

unint64_t sub_257E77E24()
{
  result = qword_27F8FB060;
  if (!qword_27F8FB060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FB068);
    sub_257BD2D4C(&qword_27F8FB070, &qword_27F8FB078);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FB060);
  }

  return result;
}

unint64_t sub_257E77F00()
{
  result = qword_27F8FB080;
  if (!qword_27F8FB080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FB080);
  }

  return result;
}

unint64_t sub_257E77F54()
{
  result = qword_27F8FB088;
  if (!qword_27F8FB088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FB088);
  }

  return result;
}

uint64_t sub_257E78008(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_257E78050()
{
  type metadata accessor for MFMenu();
  sub_257ECE0F0();

  return sub_257E75E1C();
}

unint64_t sub_257E78158()
{
  result = qword_27F8FB0E8;
  if (!qword_27F8FB0E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FB0D0);
    sub_257BD2D4C(&qword_27F8FAB98, &qword_27F8FAB68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FB0E8);
  }

  return result;
}

unint64_t sub_257E78210()
{
  result = qword_27F8FB0F0;
  if (!qword_27F8FB0F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FB0E0);
    sub_257E77F00();
    sub_257BD2D4C(&qword_27F8FAB98, &qword_27F8FAB68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FB0F0);
  }

  return result;
}

uint64_t sub_257E782E0(uint64_t a1, uint64_t (*a2)(uint64_t, char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  v8 = *(type metadata accessor for MFMenu() - 8);
  v9 = v2 + ((*(v8 + 80) + 48) & ~*(v8 + 80));

  return a2(a1, v9, v4, v5, v6, v7);
}

uint64_t objectdestroyTm_9()
{
  v1 = *(v0 + 16);
  v13 = *(v0 + 24);
  v2 = type metadata accessor for MFMenu();
  v3 = (*(*(v2 - 1) + 80) + 48) & ~*(*(v2 - 1) + 80);
  v4 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5B90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_257ECDF90();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  v6 = v2[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5BA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_257ECE1D0();
    (*(*(v7 - 8) + 8))(v4 + v6, v7);
  }

  else
  {
  }

  v8 = v2[22];
  v9 = *(v1 - 8);
  if (!(*(v9 + 48))(v4 + v8, 1, v1))
  {
    (*(v9 + 8))(v4 + v8, v1);
  }

  v10 = v2[23];
  v11 = *(v13 - 8);
  if (!(*(v11 + 48))(v4 + v10, 1, v13))
  {
    (*(v11 + 8))(v4 + v10, v13);
  }

  if (*(v4 + v2[26]))
  {
  }

  return swift_deallocObject();
}

unint64_t sub_257E7877C()
{
  result = qword_27F8FB128;
  if (!qword_27F8FB128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FB120);
    sub_257E78834();
    sub_257BD2D4C(&qword_27F8F77E0, &qword_27F8F77E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FB128);
  }

  return result;
}

unint64_t sub_257E78834()
{
  result = qword_27F8FB130;
  if (!qword_27F8FB130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FB138);
    sub_257E788EC();
    sub_257BD2D4C(&qword_27F8F6EC8, &qword_27F8F6ED0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FB130);
  }

  return result;
}

unint64_t sub_257E788EC()
{
  result = qword_27F8FB140;
  if (!qword_27F8FB140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FB140);
  }

  return result;
}

unint64_t sub_257E78940()
{
  result = qword_27F8FB148;
  if (!qword_27F8FB148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FB108);
    sub_257BD2D4C(&qword_27F8FB150, &qword_27F8FB100);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FB148);
  }

  return result;
}

id sub_257E78BD4()
{
  [v0 setContentMode_];
  if (qword_281544A78 != -1)
  {
    swift_once();
  }

  [v0 setBackgroundColor_];
  v1 = [v0 layer];
  [v1 setCornerRadius_];

  v2 = [v0 layer];
  if (qword_281544A80 != -1)
  {
    swift_once();
  }

  [v2 setCornerCurve_];

  v3 = [v0 layer];
  [v3 setMasksToBounds_];

  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  v4 = sub_257E790EC();
  [v0 setImage:v4 forState:0];

  [v0 setIsAccessibilityElement_];
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass_];
  v7 = sub_257ECF4C0();
  v8 = sub_257ECF4C0();
  v9 = [v6 localizedStringForKey:v7 value:0 table:v8];

  if (!v9)
  {
    sub_257ECF500();
    v9 = sub_257ECF4C0();
  }

  [v0 setAccessibilityLabel_];

  [v0 setShowsLargeContentViewer_];
  [v0 setScalesLargeContentImage_];
  v10 = [objc_allocWithZone(MEMORY[0x277D756C8]) init];
  [v0 addInteraction_];

  return [v0 addTarget:v0 action:sel_didTapSettingsButton_ forControlEvents:64];
}

id SettingsButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SettingsButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_257E790EC()
{
  v0 = sub_257ECF4C0();
  v1 = [objc_opt_self() systemImageNamed_];

  if (!v1)
  {
    return 0;
  }

  v2 = [objc_opt_self() configurationWithPointSize:4 weight:-1 scale:25.0];
  v3 = [v1 imageByApplyingSymbolConfiguration_];

  if (!v3)
  {
    return 0;
  }

  v4 = [v3 imageWithRenderingMode_];

  v5 = [objc_opt_self() whiteColor];
  v6 = [v4 imageWithTintColor_];

  return v6;
}

uint64_t sub_257E79238()
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

uint64_t sub_257E79340()
{
  v0 = sub_257ECDA30();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v19[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v4 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__cardPosition;
  swift_beginAccess();
  v5 = *(v4 + 8);
  v6 = *(v4 + 16);
  v20[0] = *v4;
  v20[1] = v5;
  v21 = v6;
  v7 = qword_2815447E0;

  if (v7 != -1)
  {
    v8 = swift_once();
  }

  MEMORY[0x28223BE20](v8);
  *&v19[-16] = v20;
  sub_257ECFD50();

  v9 = v22;
  sub_257E79DDC(v22);
  sub_257E7A644(v9);
  sub_257ECD420();
  v10 = sub_257ECDA20();
  v11 = sub_257ECFBD0();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20[0] = v13;
    *v12 = 136315138;
    v14 = 0x656C6464696DLL;
    if (v9 != 1)
    {
      v14 = 0x6D6F74746F62;
    }

    if (v9)
    {
      v15 = v14;
    }

    else
    {
      v15 = 7368564;
    }

    if (v9)
    {
      v16 = 0xE600000000000000;
    }

    else
    {
      v16 = 0xE300000000000000;
    }

    v17 = sub_257BF1FC8(v15, v16, v20);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_257BAC000, v10, v11, "Restored card position: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x259C74820](v13, -1, -1);
    MEMORY[0x259C74820](v12, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

id sub_257E79644(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_containerHeightConstraint] = 0;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_containerTopConstraint] = 0;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_draggingAnimator] = 0;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_panGestureRecognizer] = 0;
  v4 = &v1[OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_startingCardHeight];
  *v4 = 0;
  v4[8] = 1;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_cardHeightConstraint] = 0;
  v1[OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_cardPosition] = 0;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_xPositionConstraint] = 0;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_yPositionConstraint] = 0;
  v5 = &v1[OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_grabStartLocation];
  *v5 = 0;
  *(v5 + 1) = 0;
  v5[16] = 1;
  v6 = &v1[OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_grabStartFrame];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  v6[32] = 1;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_cardDragAndDropAnimator] = 0;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_collapsingMiddleAnimator] = 0;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_fadingBottomAnimator] = 0;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_containerView] = a1;
  v7 = a1;
  sub_257DD1E80(2);
  v9 = v8;
  sub_257DD1E80(0);
  v11 = v10;
  sub_257DD1E80(2);
  v13 = &v1[OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_rubberbandConfiguration];
  *v13 = v9;
  *(v13 + 1) = v11;
  *(v13 + 2) = v12 * 0.5;
  *(v13 + 3) = 0x3FD999999999999ALL;
  v16.receiver = v1;
  v16.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v16, sel_init);
  sub_257E797F8();

  return v14;
}

void sub_257E797F8()
{
  v1 = objc_allocWithZone(MEMORY[0x277D757F8]);
  v12 = v0;
  v2 = [v1 initWithTarget:v12 action:sel_handlePanGestureWithSender_];
  v3 = OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_panGestureRecognizer;
  v4 = *&v12[OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_panGestureRecognizer];
  *&v12[OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_panGestureRecognizer] = v2;
  v5 = v2;

  if (!v5)
  {
    __break(1u);
    goto LABEL_14;
  }

  [v5 setMaximumNumberOfTouches_];

  v6 = *&v12[v3];
  if (!v6)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  [v6 setDelegate_];
  v7 = *&v12[v3];
  if (!v7)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  [v7 _setHysteresis_];
  if (!*&v12[v3])
  {
LABEL_16:
    __break(1u);
    return;
  }

  v8 = OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_containerView;
  [*(*&v12[OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_containerView] + OBJC_IVAR____TtC16MagnifierSupport19MFCardContainerView_draggableView) addGestureRecognizer_];
  if (qword_27F8F4668 != -1)
  {
    swift_once();
  }

  if (byte_27F8F8D88 == 1)
  {
    v9 = [objc_allocWithZone(MEMORY[0x277D75708]) initWithTarget:v12 action:sel_handleLongPress_];

    v10 = v9;
    [v10 setCancelsTouchesInView_];
    [v10 setMinimumPressDuration_];
    [v10 setDelegate_];

    [*(*&v12[v8] + OBJC_IVAR____TtC16MagnifierSupport19MFCardContainerView_draggableView) addGestureRecognizer_];
    v11 = v10;
  }

  else
  {
    v11 = v12;
  }
}

void sub_257E79A04()
{
  v1 = [*(*(v0 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_containerView) + OBJC_IVAR____TtC16MagnifierSupport19MFCardContainerView_draggableView) heightAnchor];
  sub_257DD1E80(0);
  v2 = [v1 constraintEqualToConstant_];

  v3 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_cardHeightConstraint);
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_cardHeightConstraint) = v2;
  v4 = v2;

  if (v4)
  {
    [v4 setActive_];

    *(v0 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_cardPosition) = 0;
  }

  else
  {
    __break(1u);
  }
}

void sub_257E79ACC(void *a1)
{
  v3 = OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_containerView;
  [*(v1 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_containerView) setTranslatesAutoresizingMaskIntoConstraints_];
  v4 = OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_containerHeightConstraint;
  v5 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_containerHeightConstraint);
  if (v5)
  {
    v6 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_containerTopConstraint);
    if (v6)
    {
      v7 = objc_opt_self();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_257ED9BE0;
      *(v8 + 32) = v5;
      *(v8 + 40) = v6;
      sub_257BD2C2C(0, &qword_281543EF0);
      v9 = v5;
      v10 = v6;
      v11 = v9;
      v12 = v10;
      v13 = sub_257ECF7F0();

      [v7 deactivateConstraints_];
    }
  }

  v14 = [*(v1 + v3) heightAnchor];
  sub_257DD1E80(0);
  v16 = [v14 constraintEqualToConstant_];

  v17 = *(v1 + v4);
  *(v1 + v4) = v16;
  v18 = v16;

  if (v18)
  {
    [v18 setActive_];

    v19 = [*(v1 + v3) leadingAnchor];
    v20 = [a1 safeAreaLayoutGuide];
    v21 = [v20 leadingAnchor];

    v22 = [v19 constraintEqualToAnchor:v21 constant:0.0];
    LODWORD(v23) = 1148829696;
    [v22 setPriority_];
    v24 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_xPositionConstraint);
    *(v1 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_xPositionConstraint) = v22;

    v25 = [*(v1 + v3) bottomAnchor];
    v26 = [a1 safeAreaLayoutGuide];
    v27 = [v26 bottomAnchor];

    v28 = [v25 constraintEqualToAnchor:v27 constant:0.0];
    LODWORD(v29) = 1148829696;
    [v28 setPriority_];
    v30 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_yPositionConstraint);
    *(v1 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_yPositionConstraint) = v28;
  }

  else
  {
    __break(1u);
  }
}

void sub_257E79DDC(char a1)
{
  v3 = OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_draggingAnimator;
  v4 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_draggingAnimator);
  if (v4)
  {
    [v4 stopAnimation_];
    v5 = *(v1 + v3);
  }

  else
  {
    v5 = 0;
  }

  *(v1 + v3) = 0;

  sub_257DD1E80(a1);
  v6 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_cardHeightConstraint);
  if (v6)
  {
    [v6 setConstant_];
  }

  v7 = [*(v1 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_containerView) superview];
  [v7 layoutIfNeeded];

  *(v1 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_cardPosition) = a1;
  v8 = v1 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_startingCardHeight;
  *v8 = 0;
  *(v8 + 8) = 1;
  sub_257DD1E80(a1);
  sub_257E79EE0(v9);
  v10 = *MEMORY[0x277D76488];

  UIAccessibilityPostNotification(v10, 0);
}

void sub_257E79EE0(double a1)
{
  sub_257DD1E80(0);
  v4 = v3;
  sub_257DD1E80(1);
  v6 = v5;
  sub_257DD1E80(2);
  if (v6 != v4)
  {
    if (v7 <= a1)
    {
      if (v7 <= v6)
      {
        if (v7 > a1 || v6 <= a1)
        {
          if (v6 > v4)
          {
LABEL_27:
            __break(1u);
            return;
          }

          v8 = -0.8;
          if (v6 > a1 || v4 <= a1)
          {
            goto LABEL_22;
          }

          v9 = -(a1 - v6) / (v4 - v6);
        }

        else
        {
          v9 = 1.0 - (a1 - v7) / (v6 - v7);
        }

LABEL_17:
        if (v9 <= -1.0)
        {
          v8 = -0.8;
        }

        else
        {
          if (v9 > 1.0)
          {
            v9 = 1.0;
          }

          v8 = v9 * 0.8;
        }

        goto LABEL_22;
      }

LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

LABEL_8:
    v8 = 0.8;
    goto LABEL_22;
  }

  if (v7 > a1)
  {
    goto LABEL_8;
  }

  if (v7 > v4)
  {
    __break(1u);
    goto LABEL_26;
  }

  v8 = -0.8;
  if (v7 <= a1 && v4 > a1)
  {
    v9 = (a1 - v7) / ((v4 - v7) * -0.5) + 1.0;
    goto LABEL_17;
  }

LABEL_22:
  v10 = *(*(v1 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_containerView) + OBJC_IVAR____TtC16MagnifierSupport19MFCardContainerView_grabberView);
  sub_257DAA1B8(v8);
}

void sub_257E7A0AC(unsigned __int8 a1, double a2)
{
  v5 = OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_draggingAnimator;
  v6 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_draggingAnimator);
  if (v6)
  {
    [v6 stopAnimation_];
    v7 = *(v2 + v5);
  }

  else
  {
    v7 = 0;
  }

  *(v2 + v5) = 0;

  v8 = [objc_allocWithZone(MEMORY[0x277CD9FA0]) init];
  [v8 setStiffness_];
  [v8 setDamping_];
  [v8 setInitialVelocity_];
  [v8 damping];
  v10 = v9;
  [v8 stiffness];
  v12 = sqrt(v11);
  v13 = [objc_allocWithZone(MEMORY[0x277D75A60]) initWithDampingRatio:v10 / (v12 + v12) initialVelocity:{a2, a2}];
  sub_257DD1E80(a1);
  v14 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_cardHeightConstraint);
  if (v14)
  {
    [v14 setConstant_];
  }

  [v8 settlingDuration];
  v16 = [objc_allocWithZone(MEMORY[0x277D75D40]) initWithDuration:v13 timingParameters:v15];
  v17 = *(v2 + v5);
  *(v2 + v5) = v16;
  v18 = v16;

  if (!v18)
  {
    __break(1u);
    goto LABEL_23;
  }

  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v41 = sub_257E7CAAC;
  v42 = v19;
  v37 = MEMORY[0x277D85DD0];
  v38 = 1107296256;
  v39 = sub_257D231C0;
  v40 = &block_descriptor_23_1;
  v20 = _Block_copy(&v37);

  [v18 addAnimations_];
  _Block_release(v20);

  v21 = *(v2 + v5);
  if (!v21)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = swift_allocObject();
  *(v23 + 16) = v22;
  *(v23 + 24) = a1;
  v41 = sub_257E7CAB4;
  v42 = v23;
  v37 = MEMORY[0x277D85DD0];
  v38 = 1107296256;
  v39 = sub_257E106F4;
  v40 = &block_descriptor_30_1;
  v24 = _Block_copy(&v37);
  v25 = v21;

  [v25 addCompletion_];
  _Block_release(v24);

  v26 = OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_collapsingMiddleAnimator;
  v27 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_collapsingMiddleAnimator);
  if (v27)
  {
    v28 = a1 ? sub_257ED0640() ^ 1 : 0;
    v29 = v27;

    [v29 setReversed_];

    v30 = *(v2 + v26);
    if (v30)
    {
      [v30 continueAnimationWithTimingParameters:v13 durationFactor:2.0];
    }
  }

  v31 = OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_fadingBottomAnimator;
  v32 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_fadingBottomAnimator);
  if (v32)
  {
    if (a1 > 1u)
    {
      v33 = 1;
    }

    else
    {
      v33 = sub_257ED0640();
    }

    v34 = v32;

    [v34 setReversed_];

    v35 = *(v2 + v31);
    if (v35)
    {
      [v35 continueAnimationWithTimingParameters:v13 durationFactor:2.0];
    }
  }

  v36 = *(v2 + v5);
  if (v36)
  {
    [v36 startAnimation];

    return;
  }

LABEL_24:
  __break(1u);
}

void sub_257E7A560()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [*(Strong + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_containerView) superview];
    [v2 layoutIfNeeded];
  }
}

void sub_257E7A5E8(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_257E7A644(a3);
  }
}

id sub_257E7A644(char a1)
{
  v3 = OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_containerView;
  [*(*(*(*(v1 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_containerView) + OBJC_IVAR____TtC16MagnifierSupport19MFCardContainerView_card) + OBJC_IVAR____TtC16MagnifierSupport19MFContainedCardView_headerView) + OBJC_IVAR____TtC16MagnifierSupport20ControlContainerView_primaryButtonRow) setAlpha_];
  v4 = dbl_257EEF060[a1];
  [*(*(*(*(v1 + v3) + OBJC_IVAR____TtC16MagnifierSupport19MFCardContainerView_card) + OBJC_IVAR____TtC16MagnifierSupport19MFContainedCardView_headerView) + OBJC_IVAR____TtC16MagnifierSupport20ControlContainerView_featureTrayButtonRow) setAlpha_];
  v5 = *(*(*(v1 + v3) + OBJC_IVAR____TtC16MagnifierSupport19MFCardContainerView_card) + OBJC_IVAR____TtC16MagnifierSupport19MFContainedCardView_footerView);

  return [v5 setAlpha_];
}

BOOL sub_257E7A744(void *a1)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    [v3 velocityInView_];
    return fabs(v5) < fabs(v4);
  }

  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (!v7)
  {
    return 1;
  }

  v8 = v7;
  v9 = OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_containerView;
  v10 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_containerView);
  v11 = a1;
  [v8 locationInView_];
  v12 = [*(v1 + v9) hitTest:0 withEvent:?];
  if (!v12)
  {
    v13 = v11;
LABEL_10:

    return 1;
  }

  v13 = v12;
  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (!v14)
  {

    goto LABEL_10;
  }

  v15 = v14;
  type metadata accessor for MFChevronView();
  LOBYTE(v15) = [v15 isKindOfClass_];

  return (v15 & 1) != 0;
}

void sub_257E7A908(void *a1)
{
  v3 = sub_257ECDA30();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_containerView;
  v8 = [*(v1 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_containerView) superview];
  if (!v8)
  {
    goto LABEL_4;
  }

  v9 = v8;
  [v8 alpha];
  if (v10 > 0.0)
  {

LABEL_4:
    [a1 velocityInView_];
    v12 = v11;
    v13 = [a1 state];
    if (v13 > 2)
    {
      if (v13 == 3)
      {
        sub_257E7ADC4(a1);
      }

      else if (v13 == 4)
      {
        v16 = OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_cardPosition;
        v17 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_cardPosition);
        sub_257E7A0AC(v17, 0.4);
        *(v1 + v16) = v17;
        v18 = v1 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_startingCardHeight;
        *v18 = 0;
        *(v18 + 8) = 1;
        sub_257DD1E80(v17);
        sub_257E79EE0(v19);
        UIAccessibilityPostNotification(*MEMORY[0x277D76488], 0);
      }
    }

    else if (v13 == 1)
    {
      v23 = OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_collapsingMiddleAnimator;
      v24 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_collapsingMiddleAnimator);
      if (v24)
      {
        [v24 pauseAnimation];
        v25 = *(v1 + v23);
        if (v25)
        {
          [v25 setReversed_];
        }
      }

      v26 = OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_fadingBottomAnimator;
      v27 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_fadingBottomAnimator);
      if (v27)
      {
        [v27 pauseAnimation];
        v28 = *(v1 + v26);
        if (v28)
        {
          [v28 setReversed_];
        }
      }

      sub_257E7C4FC();
    }

    else if (v13 == 2)
    {
      v14 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_collapsingMiddleAnimator);
      if (v14)
      {
        [v14 setReversed_];
      }

      v15 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_fadingBottomAnimator);
      if (v15)
      {
        [v15 setReversed_];
      }

      sub_257E7ACD0(a1);
    }

    v29 = *(v1 + v7);
    v34 = sub_257E7B424();

    if (v34)
    {
      sub_257E071A8();
      v30 = *&v34[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_freezeFrameViewController];
      if (v30)
      {
        v31 = v30;
        sub_257BDB830();
      }

      v32 = v34;
    }

    return;
  }

  sub_257ECD350();
  v20 = sub_257ECDA20();
  v21 = sub_257ECFBD0();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_257BAC000, v20, v21, "gnoring pan on card because alpha > 0.", v22, 2u);
    MEMORY[0x259C74820](v22, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  [a1 setState_];
  [a1 reset];
}

void sub_257E7ACD0(void *a1)
{
  if ((*(v1 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_startingCardHeight + 8) & 1) == 0)
  {
    v2 = OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_containerView;
    v3 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_startingCardHeight);
    [a1 translationInView_];
    v5 = sub_257C33754(v3 - v4, *(v1 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_rubberbandConfiguration), *(v1 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_rubberbandConfiguration + 8), *(v1 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_rubberbandConfiguration + 16), *(v1 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_rubberbandConfiguration + 24));
    v6 = v5;
    v7 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_cardHeightConstraint);
    if (v7)
    {
      [v7 setConstant_];
    }

    [*(v1 + v2) setNeedsLayout];
    [*(v1 + v2) layoutIfNeeded];
    sub_257E79EE0(v6);
    sub_257E7BD4C();

    sub_257E7C100();
  }
}

uint64_t sub_257E7ADC4(void *a1)
{
  v2 = v1;
  v4 = sub_257ECF120();
  v48 = *(v4 - 8);
  v49 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_containerView;
  [a1 velocityInView_];
  v9 = v8;
  v10 = *(v2 + v7);
  v11 = *(v10 + OBJC_IVAR____TtC16MagnifierSupport19MFCardContainerView_card);
  v12 = OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_cardHeightConstraint;
  v13 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_cardHeightConstraint);
  if (v13)
  {
    v14 = v11;
    [v13 constant];
  }

  else
  {
    v16 = *(v10 + OBJC_IVAR____TtC16MagnifierSupport19MFCardContainerView_draggableView);
    v17 = v11;
    [v16 frame];
    Height = CGRectGetHeight(v51);
  }

  v18 = sub_257DD257C(Height);

  v19 = (*(v2 + v7) + OBJC_IVAR____TtC16MagnifierSupport19MFCardContainerView_configuration);
  v21 = *v19;
  v20 = v19[1];
  sub_257ECFBC0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F58E0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_257ED9BD0;
  v23 = *(v2 + v12);
  if (v23)
  {
    [v23 constant];
  }

  else
  {
    [*(*(v2 + v7) + OBJC_IVAR____TtC16MagnifierSupport19MFCardContainerView_draggableView) frame];
    v24 = CGRectGetHeight(v52);
  }

  v25 = v24;
  v26 = MEMORY[0x277D85048];
  *(v22 + 56) = MEMORY[0x277D85048];
  v27 = sub_257E7CA58();
  *(v22 + 64) = v27;
  *(v22 + 32) = v25;
  *(v22 + 96) = v26;
  *(v22 + 104) = v27;
  *(v22 + 72) = v9;
  sub_257BD2C2C(0, &unk_281543D30);
  v28 = sub_257ED00A0();
  sub_257ECD960();

  v29 = OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_cardPosition;
  if (!v18)
  {
    v30 = 0xE300000000000000;
    v31 = 7368564;
    if (!*(v2 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_cardPosition))
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  v30 = 0xE600000000000000;
  if (v18 != 1)
  {
    v31 = 0x6D6F74746F62;
    if (!*(v2 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_cardPosition))
    {
      goto LABEL_16;
    }

LABEL_12:
    v32 = 0xE600000000000000;
    if (*(v2 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_cardPosition) == 1)
    {
      if (v31 != 0x656C6464696DLL)
      {
        goto LABEL_21;
      }
    }

    else if (v31 != 0x6D6F74746F62)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  v31 = 0x656C6464696DLL;
  if (*(v2 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_cardPosition))
  {
    goto LABEL_12;
  }

LABEL_16:
  v32 = 0xE300000000000000;
  if (v31 != 7368564)
  {
LABEL_21:
    v33 = sub_257ED0640();

    if ((v33 & 1) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_22;
  }

LABEL_19:
  if (v30 != v32)
  {
    goto LABEL_21;
  }

LABEL_22:
  if (v9 >= -v21)
  {
    if (v21 < v9)
    {
      sub_257ECFBC0();
      v35 = sub_257ED00A0();
      sub_257ECD960();

      if (*(v2 + v29))
      {
        v18 = 2;
      }

      else
      {
        v18 = 1;
      }
    }
  }

  else
  {
    sub_257ECFBC0();
    v34 = sub_257ED00A0();
    sub_257ECD960();

    v18 = *(v2 + v29) > 1u;
  }

LABEL_28:
  if (v9 >= -v20)
  {
    if (v20 >= v9)
    {
      goto LABEL_33;
    }

    sub_257ECFBC0();
    v36 = sub_257ED00A0();
    v18 = 2;
    sub_257ECD960();
  }

  else
  {
    sub_257ECFBC0();
    v36 = sub_257ED00A0();
    sub_257ECD960();
    v18 = 0;
  }

LABEL_33:
  sub_257DD1E80(v18);
  v38 = v37;
  v39 = *(v2 + v12);
  if (v39)
  {
    [v39 constant];
  }

  else
  {
    [*(*(v2 + v7) + OBJC_IVAR____TtC16MagnifierSupport19MFCardContainerView_draggableView) frame];
    v40 = CGRectGetHeight(v53);
  }

  v41 = v38 + v40;
  if (v41 == 0.0)
  {
    v41 = 1.0;
  }

  sub_257E7A0AC(v18, v9 / v41);
  *(v2 + v29) = v18;
  v42 = v2 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_startingCardHeight;
  *v42 = 0;
  *(v42 + 8) = 1;
  sub_257DD1E80(v18);
  sub_257E79EE0(v43);
  UIAccessibilityPostNotification(*MEMORY[0x277D76488], 0);
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v44 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__cardPosition;
  swift_beginAccess();
  v50 = v18;
  if (qword_2815447E0 != -1)
  {
    swift_once();
  }

  v45 = sub_257ECF110();
  MEMORY[0x28223BE20](v45);
  *(&v47 - 2) = &v50;
  *(&v47 - 1) = v44;
  sub_257ECFD40();
  (*(v48 + 8))(v6, v49);
  return swift_endAccess();
}

id sub_257E7B424()
{
  v1 = [v0 nextResponder];
  if (v1)
  {
    v2 = v1;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      type metadata accessor for AppViewController();
      result = swift_dynamicCastClass();
      if (result)
      {
        return result;
      }

      v4 = [v0 superview];
      if (v4)
      {
        v5 = v4;
        v6 = sub_257E7B424();

        return v6;
      }

      goto LABEL_10;
    }
  }

  result = [v0 nextResponder];
  if (!result)
  {
    return result;
  }

  v2 = result;
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v7 = sub_257E7B424();

    return v7;
  }

LABEL_10:

  return 0;
}

void sub_257E7B59C(void *a1)
{
  if (qword_27F8F4668 != -1)
  {
    swift_once();
  }

  if (byte_27F8F8D88 == 1)
  {
    v3 = OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_containerView;
    v4 = [*(v1 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_containerView) traitCollection];
    if (!*MEMORY[0x277D76620])
    {
      __break(1u);
      return;
    }

    v5 = v4;
    v6 = *MEMORY[0x277D76620];
    v7 = sub_257CA7574();
    if (v7)
    {
      v8 = v7;
      [v7 bounds];
      v10 = v9;
      v12 = v11;

      v13 = [v5 horizontalSizeClass];
      if (v13 == 1)
      {
        if (v10 <= 375.0)
        {
          return;
        }

        v14 = v10 / v12;
        if (v10 / v12 <= 0.42)
        {
          return;
        }
      }
    }

    else
    {
    }

    v15 = [a1 view];
    if (v15)
    {
      v30 = v15;
      v16 = [a1 state];
      if ((v16 - 3) < 2)
      {
        sub_257E7C7FC();

        v28 = v1 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_grabStartLocation;
        *v28 = 0;
        *(v28 + 8) = 0;
        *(v28 + 16) = 1;
        v29 = v1 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_grabStartFrame;
        *v29 = 0u;
        *(v29 + 16) = 0u;
        *(v29 + 32) = 1;
      }

      else
      {
        if (v16 == 2)
        {
          sub_257E7C628(a1);
        }

        else if (v16 == 1)
        {
          v17 = [*(v1 + v3) superview];
          [a1 locationInView_];
          v19 = v18;
          v21 = v20;

          v22 = v1 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_grabStartLocation;
          *v22 = v19;
          *(v22 + 8) = v21;
          *(v22 + 16) = 0;
          [*(v1 + v3) frame];
          v23 = v1 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_grabStartFrame;
          *v23 = v24;
          *(v23 + 8) = v25;
          *(v23 + 16) = v26;
          *(v23 + 24) = v27;
          *(v23 + 32) = 0;
          sub_257E7B820(v30, a1);
        }
      }
    }
  }
}

id sub_257E7B820(void *a1, void *a2)
{
  v5 = objc_opt_self();
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = a1;
  v6[4] = a2;
  v14[4] = sub_257E7CA1C;
  v14[5] = v6;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_257D231C0;
  v14[3] = &block_descriptor_62;
  v7 = _Block_copy(v14);
  v8 = v2;
  v9 = a1;
  v10 = a2;

  [v5 animateWithDuration:v7 animations:0.2];
  _Block_release(v7);
  v11 = OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_panGestureRecognizer;
  result = *&v8[OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_panGestureRecognizer];
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v13 = [result isEnabled];
  result = *&v8[v11];
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  [result setEnabled_];
  result = *&v8[v11];
  if (result)
  {
    return [result setEnabled_];
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_257E7B9F4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_containerView;
  v6 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_containerView);
  CGAffineTransformMakeScale(&v7, 1.1, 1.1);
  [v6 setTransform_];
  [*(a1 + v5) setAlpha_];
  sub_257E7C628(a3);
}

void sub_257E7BA8C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_containerView;
  v3 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_containerView);
  v5[0] = 0x3FF0000000000000;
  v5[1] = 0;
  v5[2] = 0;
  v5[3] = 0x3FF0000000000000;
  v5[4] = 0;
  v5[5] = 0;
  [v3 setTransform_];
  [*(a1 + v2) setAlpha_];
  v4 = [*(a1 + v2) superview];
  [v4 layoutIfNeeded];
}

void sub_257E7BB20()
{
  [*(*(*(*(v0 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_containerView) + OBJC_IVAR____TtC16MagnifierSupport19MFCardContainerView_card) + OBJC_IVAR____TtC16MagnifierSupport19MFContainedCardView_headerView) + OBJC_IVAR____TtC16MagnifierSupport20ControlContainerView_featureTrayButtonRow) setAlpha_];
  v1 = [objc_allocWithZone(MEMORY[0x277D75D40]) initWithDuration:0 curve:0 animations:0.2];
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5[4] = sub_257E7CA50;
  v5[5] = v2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_257D231C0;
  v5[3] = &block_descriptor_19_2;
  v3 = _Block_copy(v5);

  [v1 addAnimations_];
  _Block_release(v3);
  [v1 setScrubsLinearly_];
  [v1 setPausesOnCompletion_];
  v4 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_collapsingMiddleAnimator);
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_collapsingMiddleAnimator) = v1;
}

void sub_257E7BCAC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [*(*(*(*(Strong + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_containerView) + OBJC_IVAR____TtC16MagnifierSupport19MFCardContainerView_card) + OBJC_IVAR____TtC16MagnifierSupport19MFContainedCardView_headerView) + OBJC_IVAR____TtC16MagnifierSupport20ControlContainerView_featureTrayButtonRow) setAlpha_];
  }
}

void sub_257E7BD4C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_collapsingMiddleAnimator;
  if (!*(v0 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_collapsingMiddleAnimator))
  {
    sub_257E7BB20();
  }

  v3 = *(*(v0 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_containerView) + OBJC_IVAR____TtC16MagnifierSupport19MFCardContainerView_card);
  sub_257DD0B68();
  v5 = v4;

  v6 = *(v1 + v2);
  if (v6)
  {
    if (v5 <= 0.999)
    {
      v7 = v5;
    }

    else
    {
      v7 = 1.0;
    }

    if (v5 >= 0.001)
    {
      v8 = v7;
    }

    else
    {
      v8 = 0.0;
    }

    v11 = v6;
    v9 = [v11 isReversed];
    v10 = 1.0 - v8;
    if (!v9)
    {
      v10 = v8;
    }

    [v11 setFractionComplete_];
  }

  else
  {
    __break(1u);
  }
}

void sub_257E7BE44()
{
  [*(*(*(v0 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_containerView) + OBJC_IVAR____TtC16MagnifierSupport19MFCardContainerView_card) + OBJC_IVAR____TtC16MagnifierSupport19MFContainedCardView_footerView) setAlpha_];
  v1 = [objc_allocWithZone(MEMORY[0x277D75D40]) initWithDuration:0 curve:0 animations:0.15];
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5[4] = sub_257E7CA48;
  v5[5] = v2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_257D231C0;
  v5[3] = &block_descriptor_15_0;
  v3 = _Block_copy(v5);

  [v1 addAnimations_];
  _Block_release(v3);
  [v1 setScrubsLinearly_];
  [v1 setPausesOnCompletion_];
  v4 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_fadingBottomAnimator);
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_fadingBottomAnimator) = v1;
}

void sub_257E7BFC4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [*(*(*(Strong + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_containerView) + OBJC_IVAR____TtC16MagnifierSupport19MFCardContainerView_card) + OBJC_IVAR____TtC16MagnifierSupport19MFContainedCardView_footerView) setAlpha_];
  }
}

void sub_257E7C054()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_cardHeightConstraint);
  if (v1)
  {
    [v1 constant];
  }

  else
  {
    [*(*(v0 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_containerView) + OBJC_IVAR____TtC16MagnifierSupport19MFCardContainerView_draggableView) frame];
    CGRectGetHeight(v2);
  }

  sub_257DD1E80(2);
  sub_257DD1E80(1);
  sub_257DD1E80(2);
}

void sub_257E7C100()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_fadingBottomAnimator;
  if (!*(v0 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_fadingBottomAnimator))
  {
    sub_257E7BE44();
  }

  sub_257E7C054();
  v2 = 0.0;
  if (v3 >= 0.001)
  {
    sub_257E7C054();
    v2 = 1.0;
    if (v4 <= 0.999)
    {
      sub_257E7C054();
      v2 = v5;
    }
  }

  v6 = *(v0 + v1);
  if (v6)
  {
    v9 = v6;
    v7 = [v9 isReversed];
    v8 = 1.0 - v2;
    if (!v7)
    {
      v8 = v2;
    }

    [v9 setFractionComplete_];
  }

  else
  {
    __break(1u);
  }
}

void sub_257E7C1CC()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_draggingAnimator;
  v2 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_draggingAnimator);
  if (v2)
  {
    [v2 stopAnimation_];
  }

  v3 = OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_collapsingMiddleAnimator;
  v4 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_collapsingMiddleAnimator);
  if (v4)
  {
    [v4 stopAnimation_];
  }

  v5 = OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_fadingBottomAnimator;
  v6 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_fadingBottomAnimator);
  if (v6)
  {
    [v6 stopAnimation_];
  }

  v7 = *(v0 + v3);
  if (v7)
  {
    [v7 finishAnimationAtPosition_];
  }

  v8 = *(v0 + v5);
  if (v8)
  {
    [v8 finishAnimationAtPosition_];
  }

  v9 = *(v0 + v1);
  *(v0 + v1) = 0;

  v10 = *(v0 + v3);
  *(v0 + v3) = 0;

  v11 = *(v0 + v5);
  *(v0 + v5) = 0;
}

id sub_257E7C2AC()
{
  ObjectType = swift_getObjectType();
  sub_257E7C1CC();
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_257E7C48C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_257D13998(*a1, *(a1 + 8), *(a1 + 16));
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_257E7C4C4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_257D13998(**(v1 + 16), *(*(v1 + 16) + 8), *(*(v1 + 16) + 16));
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

void sub_257E7C4FC()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_draggingAnimator;
  v2 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_draggingAnimator);
  if (v2)
  {
    [v2 stopAnimation_];
    v3 = *(v0 + v1);
  }

  else
  {
    v3 = 0;
  }

  *(v0 + v1) = 0;

  v4 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_cardHeightConstraint);
  if (v4)
  {
    [v4 constant];
  }

  else
  {
    [*(*(v0 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_containerView) + OBJC_IVAR____TtC16MagnifierSupport19MFCardContainerView_draggableView) frame];
    Height = CGRectGetHeight(v14);
  }

  v6 = v0 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_startingCardHeight;
  *v6 = Height;
  *(v6 + 8) = 0;
  v7 = v0 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_rubberbandConfiguration;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_rubberbandConfiguration + 24) = 0x3FD999999999999ALL;
  v8 = OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_containerView;
  sub_257DD1E80(0);
  *(v7 + 8) = v9;
  v10 = [*(v0 + v8) superview];
  if (v10)
  {
    v11 = v10;
    [v10 bounds];
    v13 = v12;

    *(v7 + 16) = v13 * 0.5;
  }
}

void sub_257E7C628(void *a1)
{
  v2 = (v1 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_grabStartLocation);
  if ((*(v1 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_grabStartLocation + 16) & 1) == 0)
  {
    v3 = (v1 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_grabStartFrame);
    if ((*(v1 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_grabStartFrame + 32) & 1) == 0)
    {
      v5 = *v2;
      v4 = v2[1];
      v7 = v3[2];
      v6 = v3[3];
      v9 = *v3;
      v8 = v3[1];
      v11 = [*(v1 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_containerView) superview];
      if (v11)
      {
        v22 = v11;
        [a1 locationInView_];
        v14 = v13;
        v15 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_xPositionConstraint);
        if (v15)
        {
          v16 = v12;
          v17 = v15;
          v24.origin.x = v9;
          v24.origin.y = v8;
          v24.size.width = v7;
          v24.size.height = v6;
          [v17 setConstant_];
        }

        v18 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_yPositionConstraint);
        if (v18)
        {
          v19 = v18;
          v25.origin.x = v9;
          v25.origin.y = v8;
          v25.size.width = v7;
          v25.size.height = v6;
          MaxY = CGRectGetMaxY(v25);
          [v22 bounds];
          [v19 setConstant_];
        }

        if (swift_unknownObjectWeakLoadStrong())
        {
          sub_257EB370C();
          swift_unknownObjectRelease();
        }
      }
    }
  }
}

void sub_257E7C7FC()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CD9FA0]) init];
  [v1 setStiffness_];
  [v1 setDamping_];
  [v1 setInitialVelocity_];
  [v1 damping];
  v3 = v2;
  [v1 stiffness];
  v5 = sqrt(v4);
  v6 = [objc_allocWithZone(MEMORY[0x277D75A60]) initWithDampingRatio:v3 / (v5 + v5) initialVelocity:{0.5, 0.5}];
  [v1 settlingDuration];
  v8 = [objc_allocWithZone(MEMORY[0x277D75D40]) initWithDuration:v6 timingParameters:v7];
  v9 = OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_cardDragAndDropAnimator;
  v10 = *&v0[OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_cardDragAndDropAnimator];
  *&v0[OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_cardDragAndDropAnimator] = v8;
  v11 = v8;

  if (v11)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = v0;
    v16[4] = sub_257E7CA40;
    v16[5] = v12;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 1107296256;
    v16[2] = sub_257D231C0;
    v16[3] = &block_descriptor_9_1;
    v13 = _Block_copy(v16);
    v14 = v0;

    [v11 addAnimations_];
    _Block_release(v13);

    v15 = *&v0[v9];
    if (v15)
    {
      [v15 startAnimation];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t block_copy_helper_62(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_257ECC3F0();
}

unint64_t sub_257E7CA58()
{
  result = qword_27F8FB1F8;
  if (!qword_27F8FB1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FB1F8);
  }

  return result;
}

uint64_t sub_257E7CAE8(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a2;
  v3 = *(a1 + 16);
  *(v2 + 48) = *a1;
  *(v2 + 64) = v3;
  v4 = *(a1 + 48);
  *(v2 + 80) = *(a1 + 32);
  *(v2 + 96) = v4;
  *(v2 + 112) = *(a1 + 64);
  *(v2 + 128) = *(a1 + 80);
  *(v2 + 145) = *(a1 + 88);
  sub_257ECF900();
  *(v2 + 136) = sub_257ECF8F0();
  v6 = sub_257ECF8B0();

  return MEMORY[0x2822009F8](sub_257E7CBA8, v6, v5);
}

uint64_t sub_257E7CBA8()
{
  v33 = v0;

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (*(v0 + 145) > 1u)
    {
      if (*(v0 + 145) == 2)
      {
        v9 = qword_281544FE0;
        v25 = *(v0 + 48);

        if (v9 != -1)
        {
          swift_once();
        }

        swift_getKeyPath();
        swift_getKeyPath();
        sub_257ECDD60();

        v10 = *(v0 + 120);
        v11 = *(v0 + 128);
        v12 = *(v0 + 112);
        v29 = *(v0 + 96);
        v31 = *(v0 + 104);
        v27 = *(v0 + 88);
        v14 = *(v0 + 72);
        v13 = *(v0 + 80);
        v16 = *(v0 + 56);
        v15 = *(v0 + 64);
        v17 = *(v0 + 48);
        if (*(v0 + 144) == 1)
        {
          sub_257C15CBC(v25);
        }

        sub_257C58C58(v17, v16, v15, v14, v13, v27, v29, v31, v12, v10, v11, 2);
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

        if (*(v0 + 144) == 1)
        {
          sub_257C1566C();
        }
      }
    }

    else
    {
      if (*(v0 + 145))
      {
        v19 = *(v0 + 48);
        v18 = *(v0 + 56);
        v20 = qword_281544FE0;

        if (v20 != -1)
        {
          swift_once();
        }

        swift_getKeyPath();
        swift_getKeyPath();
        sub_257ECDD60();

        if (*(v0 + 144) == 1)
        {
          sub_257C15AA8(v19, v18);
        }
      }

      else
      {
        v28 = *(v0 + 72);
        v30 = *(v0 + 64);
        v3 = *(v0 + 80);
        v4 = *(v0 + 96);
        v24 = *(v0 + 104);
        v26 = *(v0 + 88);
        v5 = *(v0 + 112);
        v6 = *(v0 + 128);
        v23 = *(v0 + 120);
        v7 = qword_281544FE0;
        v8 = *(v0 + 48);

        if (v7 != -1)
        {
          swift_once();
        }

        swift_getKeyPath();
        swift_getKeyPath();
        sub_257ECDD60();

        if (*(v0 + 144) == 1)
        {
          v32[0] = v8;
          v32[2] = v30;
          v32[3] = v28;
          v32[4] = v3;
          v32[5] = v26;
          v32[6] = v4;
          v32[7] = v24;
          v32[8] = v5;
          v32[9] = v23;
          sub_257C15868(v32, v6);

          goto LABEL_26;
        }
      }
    }
  }

LABEL_26:
  v21 = *(v0 + 8);

  return v21();
}

id sub_257E7CFB8()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport18FocusIndicatorView____lazy_storage___reticle;
  v2 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport18FocusIndicatorView____lazy_storage___reticle);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport18FocusIndicatorView____lazy_storage___reticle);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for FocusReticleImage()) initWithFrame_];
    [v4 sizeToFit];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];

    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

char *sub_257E7D06C()
{
  *&v0[OBJC_IVAR____TtC16MagnifierSupport18FocusIndicatorView____lazy_storage___reticle] = 0;
  v11.receiver = v0;
  v11.super_class = type metadata accessor for FocusIndicatorView();
  v1 = objc_msgSendSuper2(&v11, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v2 = sub_257E7CFB8();
  [v1 addSubview_];

  v3 = OBJC_IVAR____TtC16MagnifierSupport18FocusIndicatorView____lazy_storage___reticle;
  [*&v1[OBJC_IVAR____TtC16MagnifierSupport18FocusIndicatorView____lazy_storage___reticle] setTranslatesAutoresizingMaskIntoConstraints_];
  v4 = *MEMORY[0x277D768C8];
  v5 = *(MEMORY[0x277D768C8] + 8);
  v6 = *(MEMORY[0x277D768C8] + 16);
  v7 = *(MEMORY[0x277D768C8] + 24);
  v8 = *&v1[v3];
  sub_257EB6FD8(v1, v4, v5, v6, v7);

  v9 = [v1 layer];
  [v9 setAllowsGroupOpacity_];

  return v1;
}

void sub_257E7D294()
{
  v1 = v0;
  v2 = sub_257ECF4C0();
  v31 = objc_opt_self();
  v3 = [v31 animationWithKeyPath_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5470);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257ED9BD0;
  v5 = MEMORY[0x277D839F8];
  *(v4 + 32) = 0x3FF8000000000000;
  *(v4 + 88) = v5;
  *(v4 + 56) = v5;
  *(v4 + 64) = 0x3FF0000000000000;
  v6 = sub_257ECF7F0();

  [v3 setValues_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_257ED9BE0;
  v8 = *MEMORY[0x277CDA7B0];
  v9 = objc_opt_self();
  *(v7 + 32) = [v9 functionWithName_];
  v10 = *MEMORY[0x277CDA7C0];
  *(v7 + 40) = [v9 &selRef_URLContexts + 5];
  sub_257BD2C2C(0, &unk_27F8FB208);
  v11 = sub_257ECF7F0();

  [v3 setTimingFunctions_];

  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_257ED9BE0;
  sub_257BD2C2C(0, &qword_281543DC0);
  *(v12 + 32) = sub_257ECFF10();
  *(v12 + 40) = sub_257ECFF10();
  v13 = sub_257ECF7F0();

  [v3 setKeyTimes_];

  v14 = *MEMORY[0x277CDA070];
  [v3 setCalculationMode_];
  v15 = v3;
  [v15 setDuration_];
  v16 = [v1 layer];
  v17 = sub_257ECF4C0();
  [v16 addAnimation:v15 forKey:v17];

  v18 = sub_257ECF4C0();
  v19 = [v31 animationWithKeyPath_];

  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_257ED9BD0;
  *(v20 + 32) = 0;
  v21 = MEMORY[0x277D839F8];
  *(v20 + 88) = MEMORY[0x277D839F8];
  *(v20 + 56) = v21;
  *(v20 + 64) = 0x3FF0000000000000;
  v22 = sub_257ECF7F0();

  [v19 setValues_];

  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_257ED9BE0;
  *(v23 + 32) = [v9 functionWithName_];
  *(v23 + 40) = [v9 functionWithName_];
  v24 = sub_257ECF7F0();

  [v19 setTimingFunctions_];

  v25 = [v15 keyTimes];
  [v19 setKeyTimes_];

  [v19 setCalculationMode_];
  v32 = v19;
  [v15 duration];
  v27 = v26;

  [v32 setDuration_];
  v28 = [v30 layer];
  v29 = sub_257ECF4C0();
  [v28 addAnimation:v32 forKey:v29];

  [v30 setAlpha_];
}

void sub_257E7D810()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong setAlpha_];
  }
}

id sub_257E7D8A0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FocusIndicatorView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_257E7D908(char a1)
{
  v2 = v1;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = qword_2815447E0;

  if (v4 != -1)
  {
    v5 = swift_once();
  }

  MEMORY[0x28223BE20](v5);
  sub_257ECFD50();

  if (v10 == 1)
  {
    v7 = OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView__recordButton;
    v8 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView__recordButton);
    if (v8)
    {
      [v8 setHidden_];
      v9 = *(v2 + v7);
      if (v9)
      {
        [v9 setEnabled_];
      }
    }

    result = *(v2 + OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView__tapToRadarButton);
    if (result)
    {
      return [result setHidden_];
    }
  }

  return result;
}

void sub_257E7DAB4()
{
  v1 = [v0 superview];
  if (v1)
  {
    v17 = v1;
    [v1 bounds];
    [v0 setFrame_];
    v2 = *&v0[OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView__recordButton];
    if (v2)
    {
      v3 = v2;
      [v0 bounds];
      [v3 setFrame_];
    }

    v4 = *&v0[OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView__tapToRadarButton];
    if (v4)
    {
      [v4 setFrame_];
    }

    v5 = *&v0[OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView__restartButton];
    if (v5)
    {
      v6 = v5;
      [v0 bounds];
      x = v20.origin.x;
      y = v20.origin.y;
      width = v20.size.width;
      height = v20.size.height;
      MidX = CGRectGetMidX(v20);
      v21.origin.x = x;
      v21.origin.y = y;
      v21.size.width = width;
      v21.size.height = height;
      v12 = MidX + -48.0;
      [v0 bounds];
      v13 = v22.origin.x;
      v14 = v22.origin.y;
      v15 = v22.size.width;
      v16 = v22.size.height;
      CGRectGetMidX(v22);
      v23.origin.x = v13;
      v23.origin.y = v14;
      v23.size.width = v15;
      v23.size.height = v16;
      [v6 setFrame_];
    }
  }
}

id sub_257E7DDD0()
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
  v3 = sub_257BEA014(&unk_286905930);
  sub_257E81450(&unk_286905950);
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

uint64_t sub_257E7E048(void *a1)
{
  swift_getObjectType();
  v2 = v1 + OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_arDelegate;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_arDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_kRecordButtonSize) = 0x4051800000000000;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_kRecordButtonMargin) = 0x4034000000000000;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_kTapToRadarButtonMargin) = 0x4034000000000000;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_kTapToRadarButtonSize) = 0x4048000000000000;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_kRestartButtonSize) = 0x4058000000000000;
  if (qword_27F8F4670 != -1)
  {
    swift_once();
  }

  v3 = 96.0;
  if (byte_27F8F8D89)
  {
    v3 = 60.0;
  }

  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_kDebugButtonsBottom) = v3;
  v4 = OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView__recordButton;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView__recordButton) = 0;
  v5 = OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView__tapToRadarButton;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView__tapToRadarButton) = 0;
  v6 = OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView__restartButton;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView__restartButton) = 0;
  v7 = (v1 + OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_edgeInsets);
  v8 = *(MEMORY[0x277D768C8] + 16);
  *v7 = *MEMORY[0x277D768C8];
  v7[1] = v8;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView__rotationSubscription) = 0;
  v9 = OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_zoomPanGesture;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_zoomPanGesture) = 0;
  v10 = OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_zoomPinchGesture;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_zoomPinchGesture) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_previousGestureZoomFactor) = 0xBFF0000000000000;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_didRestartZoomGestureAfterLastHaptic) = 0;
  v11 = OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_zoomGestureFeedbackGenerator;
  v12 = sub_257E7DDD0();

  *(v1 + v11) = v12;
  v13 = v1 + OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_panStartZoomFactor;
  *v13 = 0;
  *(v13 + 8) = 1;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_pinchStartZoomFactor) = 0x3FF0000000000000;
  v14 = OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_captureDevice;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_captureDevice) = 0;
  sub_257BB000C(v2);

  swift_deallocPartialClassInstance();
  return 0;
}

char *sub_257E7E2C0(void *a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_arDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_kRecordButtonSize] = 0x4051800000000000;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_kRecordButtonMargin] = 0x4034000000000000;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_kTapToRadarButtonMargin] = 0x4034000000000000;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_kTapToRadarButtonSize] = 0x4048000000000000;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_kRestartButtonSize] = 0x4058000000000000;
  if (qword_27F8F4670 != -1)
  {
    swift_once();
  }

  v7 = 96.0;
  if (byte_27F8F8D89)
  {
    v7 = 60.0;
  }

  *&v3[OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_kDebugButtonsBottom] = v7;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView__recordButton] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView__tapToRadarButton] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView__restartButton] = 0;
  v8 = &v3[OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_edgeInsets];
  v9 = *(MEMORY[0x277D768C8] + 16);
  *v8 = *MEMORY[0x277D768C8];
  v8[1] = v9;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView__rotationSubscription] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_zoomPanGesture] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_zoomPinchGesture] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_previousGestureZoomFactor] = 0xBFF0000000000000;
  v3[OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_didRestartZoomGestureAfterLastHaptic] = 0;
  v10 = OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_zoomGestureFeedbackGenerator;
  *&v3[v10] = sub_257E7DDD0();
  v11 = &v3[OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_panStartZoomFactor];
  *v11 = 0;
  v11[8] = 1;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_pinchStartZoomFactor] = 0x3FF0000000000000;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_captureDevice] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_detectionLabel] = a2;
  v25.receiver = v3;
  v25.super_class = ObjectType;
  v12 = a2;
  v13 = objc_msgSendSuper2(&v25, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [a1 addSubview_];
  v14 = objc_opt_self();
  v15 = v13;
  v16 = [v14 blackColor];
  v17 = [v16 colorWithAlphaComponent_];

  [v15 setBackgroundColor_];
  sub_257E7E654();
  v18 = [objc_allocWithZone(MEMORY[0x277D757F8]) initWithTarget:v15 action:sel_didPanPreviewView_];

  v19 = v15;
  [v18 setDelegate_];
  [v19 addGestureRecognizer_];
  v20 = *&v19[OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_zoomPanGesture];
  *&v19[OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_zoomPanGesture] = v18;
  v21 = v18;

  v22 = [objc_allocWithZone(MEMORY[0x277D75848]) initWithTarget:v19 action:sel_didPinchToZoom_];
  [v19 addGestureRecognizer_];

  v23 = *&v19[OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_zoomPinchGesture];
  *&v19[OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_zoomPinchGesture] = v22;

  return v19;
}

void sub_257E7E654()
{
  v1 = sub_257ECFDF0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [v0 superview];
  if (v5)
  {
    v30 = v5;
    [v5 bounds];
    [v0 setFrame_];
    v6 = objc_allocWithZone(MEMORY[0x277D75B80]);
    v7 = v0;
    v8 = [v6 initWithTarget:v7 action:sel_toggleDetection];
    [v8 setNumberOfTapsRequired_];
    v29 = v1;
    [v8 setNumberOfTouchesRequired_];
    [v7 addGestureRecognizer_];
    v9 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v7 action:sel_pauseSpeech];

    [v9 setNumberOfTapsRequired_];
    [v9 setNumberOfTouchesRequired_];
    [v7 addGestureRecognizer_];
    [v9 requireGestureRecognizerToFail_];
    v10 = CFNotificationCenterGetDarwinNotifyCenter();
    v11 = v7;
    v12 = sub_257ECF4C0();
    CFNotificationCenterAddObserver(v10, v11, sub_257E7F150, v12, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

    sub_257E7F158();
    v13 = [objc_opt_self() defaultCenter];
    sub_257ECFE00();

    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_257E814C0(&qword_281543EB0, MEMORY[0x277CC9DB0]);
    v14 = v29;
    v15 = sub_257ECDE50();

    (*(v2 + 8))(v4, v14);
    *&v11[OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView__rotationSubscription] = v15;

    if (qword_27F8F4670 != -1)
    {
      swift_once();
    }

    if (byte_27F8F8D89 == 1)
    {
      v16 = objc_opt_self();
      v17 = [v16 currentDevice];
      v18 = [v17 orientation];

      if (v18 == 3 || (v19 = [v16 currentDevice], v20 = objc_msgSend(v19, sel_orientation), v19, v20 == 4))
      {
        v21 = *&v11[OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView__tapToRadarButton];
        if (v21)
        {
          v22 = v21;
          v23 = [v16 currentDevice];
          v24 = [v23 orientation];

          [v22 rotateIfPossibleTo_];
        }

        v25 = *&v11[OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView__restartButton];
        if (v25)
        {
          v26 = v25;
          v27 = [v16 currentDevice];
          v28 = [v27 orientation];

          [v26 rotateIfPossibleTo_];
        }
      }
    }
  }
}

unint64_t sub_257E7EC98()
{
  v20.receiver = v0;
  v20.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v20, sel_accessibilityCustomActions);
  if (v1)
  {
    v2 = v1;
    sub_257BD2C2C(0, &qword_281543E70);
    v3 = sub_257ECF810();
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v21 = v3;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = sub_257ECF4C0();
  v7 = sub_257ECF4C0();
  v8 = [v5 localizedStringForKey:v6 value:0 table:v7];

  sub_257ECF500();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = objc_allocWithZone(MEMORY[0x277D75088]);
  sub_257ECC3F0();
  v11 = sub_257ECF4C0();

  aBlock[4] = sub_257E81448;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_257D96328;
  aBlock[3] = &block_descriptor_21;
  v12 = _Block_copy(aBlock);
  v13 = [v10 initWithName:v11 actionHandler:v12];

  _Block_release(v12);

  v14 = v13;
  MEMORY[0x259C72300]();
  if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_257ECF830();
  }

  sub_257ECF860();
  v15 = v21;
  if (v21 >> 62)
  {
    v18 = sub_257ED0210();

    if (v18)
    {
      return v15;
    }

    goto LABEL_10;
  }

  v16 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v16)
  {
LABEL_10:

    return 0;
  }

  return v15;
}

BOOL sub_257E7F0D8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [DetectionModeView toggleDetection]_0();
  }

  return Strong != 0;
}

void sub_257E7F158()
{
  if (AXIsInternalInstall())
  {
    [v0 bounds];
    v1 = CGRectGetWidth(v42) + -70.0 + -20.0;
    v2 = [objc_allocWithZone(type metadata accessor for RecordButton()) initWithFrame_];
    [v2 addTarget:v0 action:sel_didTapRecordButton_ forControlEvents:64];
    [v2 setHidden_];
    v3 = v2;
    v4 = sub_257ECF4C0();
    [v3 setAccessibilityLabel_];

    v5 = sub_257ECF4C0();
    [v3 setAccessibilityHint_];

    [v3 setIsAccessibilityElement_];
    [v0 addSubview_];
    v6 = *&v0[OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView__recordButton];
    *&v0[OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView__recordButton] = v3;
    v39 = v3;

    v7 = [objc_allocWithZone(MEMORY[0x277D75220]) &selRef:20.0 setOriginalURL:{90.0, 48.0, 48.0}];
    v8 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
    v9 = sub_257ECF4C0();
    v10 = [v8 initWithPath_];

    v40 = v10;
    v11 = sub_257ECF4C0();
    v12 = objc_opt_self();
    v13 = [v12 imageNamed:v11 inBundle:v40];

    [v7 setBackgroundImage:v13 forState:0];
    [v7 addTarget:v0 action:sel_didTapTapToRadarButton_ forControlEvents:64];
    v14 = v7;
    v15 = sub_257ECF4C0();
    [v14 setAccessibilityLabel_];

    v16 = sub_257ECF4C0();
    [v14 setAccessibilityHint_];

    [v14 setIsAccessibilityElement_];
    [v14 setHidden_];
    [v0 addSubview_];
    v17 = *&v0[OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView__tapToRadarButton];
    *&v0[OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView__tapToRadarButton] = v14;
    v18 = v14;

    [v0 bounds];
    x = v43.origin.x;
    y = v43.origin.y;
    width = v43.size.width;
    height = v43.size.height;
    MidX = CGRectGetMidX(v43);
    v44.origin.x = x;
    v44.origin.y = y;
    v44.size.width = width;
    v44.size.height = height;
    v24 = MidX + -48.0;
    [v0 bounds];
    v25 = v45.origin.x;
    v26 = v45.origin.y;
    v27 = v45.size.width;
    v28 = v45.size.height;
    CGRectGetMidX(v45);
    v46.origin.x = v25;
    v46.origin.y = v26;
    v46.size.width = v27;
    v46.size.height = v28;
    v29 = [objc_allocWithZone(MEMORY[0x277D75220]) initWithFrame_];
    type metadata accessor for MAGUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v31 = [objc_opt_self() bundleForClass_];
    v32 = sub_257ECF4C0();
    v33 = [v12 imageNamed:v32 inBundle:v31];

    [v29 setBackgroundImage:v33 forState:0];
    [v29 addTarget:v0 action:sel_didTapRestartButton_ forControlEvents:64];
    v34 = v29;
    v35 = sub_257ECF4C0();
    [v34 setAccessibilityLabel_];

    v36 = sub_257ECF4C0();
    [v34 setAccessibilityHint_];

    [v34 setHidden_];
    [v0 addSubview_];
    v37 = *&v0[OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView__restartButton];
    *&v0[OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView__restartButton] = v34;
    v38 = v34;

    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    sub_257D5854C(byte_286905968);
  }
}

void sub_257E7F7A8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [objc_opt_self() currentDevice];
    v3 = [v2 orientation];

    v4 = objc_opt_self();
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    *(v6 + 24) = v3;
    aBlock[4] = sub_257E81508;
    aBlock[5] = v6;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_257D231C0;
    aBlock[3] = &block_descriptor_35_0;
    v7 = _Block_copy(aBlock);

    _Block_release(v7);
  }
}

id sub_257E7F92C()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CBEB18]) init];
  v2 = OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView__tapToRadarButton;
  v3 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView__tapToRadarButton);
  if (v3)
  {
    result = [v3 isHidden];
    if (result)
    {
      if (!*(v0 + v2))
      {
        __break(1u);
        goto LABEL_11;
      }

      [v1 addObject_];
    }
  }

  v5 = OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView__restartButton;
  v6 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView__restartButton);
  if (!v6)
  {
    goto LABEL_9;
  }

  result = [v6 isHidden];
  if (!result)
  {
    goto LABEL_9;
  }

  if (*(v0 + v5))
  {
    [v1 addObject_];
LABEL_9:
    v7 = v1;
    sub_257ECF800();

    return 0;
  }

LABEL_11:
  __break(1u);
  return result;
}

void sub_257E7FA84(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (qword_27F8F4670 != -1)
    {
      swift_once();
    }

    if (byte_27F8F8D89 == 1)
    {
      v5 = *&v4[OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView__tapToRadarButton];
      if (v5)
      {
        [v5 rotateIfPossibleTo_];
      }

      v6 = *&v4[OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView__restartButton];
      if (v6)
      {
        [v6 rotateIfPossibleTo_];
      }

      [*&v4[OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_detectionLabel] rotateIfPossibleTo_];
    }
  }
}

void sub_257E7FB74(uint64_t a1)
{
  v2 = sub_257ECF120();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_257ECF190();
  v6 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257BD2C2C(0, &qword_281543F10);
  v9 = sub_257ECFD30();
  aBlock[4] = sub_257E81428;
  aBlock[5] = a1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_257D231C0;
  aBlock[3] = &block_descriptor_63;
  v10 = _Block_copy(aBlock);
  sub_257ECC3F0();

  sub_257ECF150();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_257E814C0(&qword_281544090, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
  sub_257BD56C0();
  sub_257ED0180();
  MEMORY[0x259C72880](0, v8, v5, v10);
  _Block_release(v10);

  (*(v3 + 8))(v5, v2);
  (*(v6 + 8))(v8, v16);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = *(Strong + OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView__recordButton);
    if (v13)
    {
      v14 = v13;

      v12 = sub_257ECF4C0();
      [v14 setAccessibilityHint_];
    }
  }
}

void sub_257E7FE90()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView__recordButton);
    if (v2)
    {
      v2[OBJC_IVAR____TtC16MagnifierSupport12RecordButton_isRecording] = 0;
      v3 = v2;
      sub_257E71464();
      v4 = *&v1[OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView__tapToRadarButton];
      if (v4)
      {
        v5 = v4;
        [v5 setEnabled_];
      }
    }
  }
}

void sub_257E80114(void *a1)
{
  v3 = sub_257ECDA30();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v59 - v8;
  v10 = [a1 state];
  if ((v10 - 3) < 2)
  {
    v19 = v1 + OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_panStartZoomFactor;
    *v19 = 0;
    *(v19 + 8) = 1;
    return;
  }

  if (v10 != 2)
  {
    if (v10 != 1)
    {
      return;
    }

    if (qword_27F8F4668 != -1)
    {
      swift_once();
    }

    v11 = byte_27F8F8D88;
    [a1 velocityInView_];
    if (v11)
    {
      goto LABEL_31;
    }

    v14 = y;
    v15 = x;
    v16 = [objc_opt_self() currentDevice];
    v17 = [v16 orientation];

    if (v17 == 2)
    {
      v18 = 3.14159265;
    }

    else if (v17 == 4)
    {
      v18 = -1.57079633;
    }

    else
    {
      if (v17 != 3)
      {
        v36 = xmmword_257EEAFE0;
        v35 = xmmword_257EEAFF0;
        v37 = 0uLL;
        goto LABEL_30;
      }

      v18 = 1.57079633;
    }

    CGAffineTransformMakeRotation(&v60, v18);
    v35 = *&v60.a;
    v36 = *&v60.c;
    v37 = *&v60.tx;
LABEL_30:
    *&v60.a = v35;
    *&v60.c = v36;
    *&v60.tx = v37;
    CGAffineTransformInvert(&v59, &v60);
    v60 = v59;
    v61.x = v15;
    v61.y = v14;
    v38 = CGPointApplyAffineTransform(v61, &v60);
    y = v38.y;
    x = v38.x;
LABEL_31:
    if (fabs(x) < fabs(y))
    {
      v39 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_captureDevice);
      if (v39)
      {
        v40 = v39;
        [v40 videoZoomFactor];
        v41 = v1 + OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_panStartZoomFactor;
        *v41 = v42;
        *(v41 + 8) = 0;
        [*(v1 + OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_zoomGestureFeedbackGenerator) prepare];

        *(v1 + OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_didRestartZoomGestureAfterLastHaptic) = 1;
      }

      else
      {
        sub_257ECD430();
        v43 = sub_257ECDA20();
        v44 = sub_257ECFBD0();
        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          *v45 = 0;
          _os_log_impl(&dword_257BAC000, v43, v44, "No capture device", v45, 2u);
          MEMORY[0x259C74820](v45, -1, -1);
        }

        (*(v4 + 8))(v9, v3);
      }
    }

    return;
  }

  if (*(v1 + OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_panStartZoomFactor + 8))
  {
    return;
  }

  v20 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_captureDevice);
  if (v20)
  {
    v21 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_panStartZoomFactor);
    v22 = qword_27F8F4668;
    v23 = v20;
    if (v22 != -1)
    {
      swift_once();
    }

    v24 = byte_27F8F8D88;
    [a1 translationInView_];
    v27 = v26;
    if (v24)
    {
      goto LABEL_42;
    }

    v31 = v25;
    v32 = [objc_opt_self() currentDevice];
    v33 = [v32 orientation];

    if (v33 == 2)
    {
      v34 = 3.14159265;
    }

    else if (v33 == 4)
    {
      v34 = -1.57079633;
    }

    else
    {
      if (v33 != 3)
      {
        v47 = xmmword_257EEAFE0;
        v46 = xmmword_257EEAFF0;
        v48 = 0uLL;
        goto LABEL_41;
      }

      v34 = 1.57079633;
    }

    CGAffineTransformMakeRotation(&v60, v34);
    v46 = *&v60.a;
    v47 = *&v60.c;
    v48 = *&v60.tx;
LABEL_41:
    *&v60.a = v46;
    *&v60.c = v47;
    *&v60.tx = v48;
    CGAffineTransformInvert(&v59, &v60);
    v60 = v59;
    v62.x = v31;
    v62.y = v27;
    v27 = CGPointApplyAffineTransform(v62, &v60).y;
LABEL_42:
    v49 = [objc_opt_self() mainScreen];
    [v49 _referenceBounds];
    v51 = v50;

    LOBYTE(v60.a) = 0;
    v52 = v27 / v51;
    sub_257D15BB4();
    v54 = v53;
    v55 = [v23 activeFormat];
    [v55 videoMaxZoomFactor];
    v57 = v56;

    if (v57 < v54)
    {
      v54 = v57;
    }

    LOBYTE(v60.a) = 0;
    sub_257D15BB4();
    sub_257D334B0(0, v21 - v52 * (v54 - v58));
    sub_257E8070C(a1);

    return;
  }

  sub_257ECD430();
  v28 = sub_257ECDA20();
  v29 = sub_257ECFBD0();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_257BAC000, v28, v29, "No capture device", v30, 2u);
    MEMORY[0x259C74820](v30, -1, -1);
  }

  (*(v4 + 8))(v7, v3);
}

void sub_257E8070C(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_captureDevice);
  if (!v2)
  {
    return;
  }

  v3 = v1;
  v41 = v2;
  [v41 videoZoomFactor];
  v6 = v5;
  if (v5 != *(v1 + OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_previousGestureZoomFactor) || *(v1 + OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_didRestartZoomGestureAfterLastHaptic) == 1)
  {
    *(v1 + OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_previousGestureZoomFactor) = v5;
    sub_257D15BB4();
    v8 = v7;
    sub_257D15BB4();
    v10 = v9;
    v11 = [v41 activeFormat];
    [v11 videoMaxZoomFactor];
    v13 = v12;

    if (v13 < v10)
    {
      v10 = v13;
    }

    if (v6 > v8 && v10 > v6)
    {
      [*(v3 + OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_zoomGestureFeedbackGenerator) prepare];
    }

    else
    {
      objc_opt_self();
      v15 = swift_dynamicCastObjCClass();
      if (v15)
      {
        v16 = *(v3 + OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_zoomPanGesture);
        if (v16)
        {
          v17 = v15;
          sub_257BD2C2C(0, &unk_27F8FB2C0);
          v18 = a1;
          v19 = v16;
          v20 = sub_257ECFF50();

          if (v20)
          {
            v21 = [v17 view];
            [v17 velocityInView_];
            v23 = v22;
            v25 = v24;

            v26 = sqrt(v23 * v23 + v25 * v25);
            v27 = [objc_opt_self() mainScreen];
            [v27 _referenceBounds];
            v29 = v28;

            v30 = v26 / v29;
LABEL_22:
            if (v30 > 1.0)
            {
              v30 = 1.0;
            }

            if (v30 <= 0.7)
            {
              v30 = 0.7;
            }

            [*(v3 + OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_zoomGestureFeedbackGenerator) impactOccurredWithIntensity_];

            *(v3 + OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_didRestartZoomGestureAfterLastHaptic) = 0;
            return;
          }
        }
      }

      objc_opt_self();
      v31 = swift_dynamicCastObjCClass();
      if (v31)
      {
        v32 = *(v3 + OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView_zoomPinchGesture);
        if (v32)
        {
          v33 = v31;
          sub_257BD2C2C(0, &unk_27F8F9CB0);
          v34 = a1;
          v35 = v32;
          v36 = sub_257ECFF50();

          if (v36)
          {
            if (([v33 velocity], v6 <= v8) && v37 < 0.0 || (objc_msgSend(v33, sel_velocity), v40 > 0.0) && v10 <= v6)
            {
              [v33 velocity];
              v39 = v38;

              v30 = fabs(v39) * 0.125;
              goto LABEL_22;
            }
          }
        }
      }
    }
  }
}