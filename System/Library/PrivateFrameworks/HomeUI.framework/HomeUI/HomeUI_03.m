__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_20CEFF8E8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_20CEFF930(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_20CEFF974(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_20CEFF99C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ControlCenterModuleConfiguration.ElementID(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CEFFA54(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = OBJC_IVAR___HUCollectionLayoutManager_adaptiveTilesUsesPrefixes;
  result = swift_beginAccess();
  *(a1 + 32) = (*(v3 + v4) & 1) == 0;
  return result;
}

uint64_t sub_20CEFFAB4(uint64_t a1, id a2)
{
  if (a1 != 2)
  {
    return 0;
  }

  v2 = [a2 contentSizeCategory];
  v3 = sub_20D567838();
  v5 = v4;
  if (v3 == sub_20D567838() && v5 == v6)
  {

    return 0x4059000000000000;
  }

  v8 = sub_20D568BF8();
  v9 = v2;

  if (v8)
  {

    return 0x4059000000000000;
  }

  v11 = sub_20D567838();
  v13 = v12;
  if (v11 == sub_20D567838() && v13 == v14)
  {

    return 0x405A400000000000;
  }

  v16 = sub_20D568BF8();

  if (v16)
  {

    return 0x405A400000000000;
  }

  v17 = sub_20D567838();
  v19 = v18;
  if (v17 == sub_20D567838() && v19 == v20)
  {

    return 0x405B800000000000;
  }

  v21 = sub_20D568BF8();

  if (v21)
  {

    return 0x405B800000000000;
  }

  v22 = sub_20D567838();
  v24 = v23;
  if (v22 == sub_20D567838() && v24 == v25)
  {

    return 0x405CC00000000000;
  }

  v26 = sub_20D568BF8();

  if (v26)
  {

    return 0x405CC00000000000;
  }

  v27 = sub_20D567838();
  v29 = v28;
  if (v27 == sub_20D567838() && v29 == v30)
  {

    return 0x405E000000000000;
  }

  v31 = sub_20D568BF8();

  if (v31)
  {

    return 0x405E000000000000;
  }

  v32 = sub_20D567838();
  v34 = v33;
  if (v32 == sub_20D567838() && v34 == v35)
  {

    return 0x405F400000000000;
  }

  v36 = sub_20D568BF8();

  if (v36)
  {

    return 0x405F400000000000;
  }

  v37 = sub_20D567838();
  v39 = v38;
  if (v37 == sub_20D567838() && v39 == v40)
  {

    return 0x4060400000000000;
  }

  v41 = sub_20D568BF8();

  if (v41)
  {

    return 0x4060400000000000;
  }

  v42 = sub_20D567838();
  v44 = v43;
  if (v42 == sub_20D567838() && v44 == v45)
  {

    return 0x4062400000000000;
  }

  v46 = sub_20D568BF8();

  if (v46)
  {

    return 0x4062400000000000;
  }

  v47 = sub_20D567838();
  v49 = v48;
  if (v47 == sub_20D567838() && v49 == v50)
  {

    return 0x4063C00000000000;
  }

  v51 = sub_20D568BF8();

  if (v51)
  {

    return 0x4063C00000000000;
  }

  v52 = sub_20D567838();
  v54 = v53;
  if (v52 == sub_20D567838() && v54 == v55)
  {

    return 0x4065400000000000;
  }

  v56 = sub_20D568BF8();

  if (v56)
  {

    return 0x4065400000000000;
  }

  v57 = sub_20D567838();
  v59 = v58;
  if (v57 == sub_20D567838() && v59 == v60)
  {

    return 0x4067000000000000;
  }

  v61 = sub_20D568BF8();

  if (v61)
  {

    return 0x4067000000000000;
  }

  v62 = sub_20D567838();
  v64 = v63;
  v65 = sub_20D567838();
  v67 = v66;

  if (v62 == v65 && v64 == v67)
  {

    return 0x4069000000000000;
  }

  else
  {
    v68 = sub_20D568BF8();

    if (v68)
    {
      return 0x4069000000000000;
    }

    else
    {
      return 0;
    }
  }
}

char *sub_20CF00234(uint64_t a1, unint64_t a2, void *a3, char a4, double a5, double a6)
{
  v8 = a2;
  v9 = *a1;
  v10 = *(a1 + 40);
  v90 = MEMORY[0x277D84F90];
  if (a2 >> 62)
  {
    goto LABEL_85;
  }

  v11 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v12 = MEMORY[0x277D84F90];
  if (!v11)
  {
    goto LABEL_23;
  }

  v89 = MEMORY[0x277D84F90];
  result = sub_20CEF0AA8(0, v11 & ~(v11 >> 63), 0);
  if (v11 < 0)
  {
    __break(1u);
  }

  else
  {
    v77 = v10;
    v14 = 0;
    v12 = v89;
    v82 = v8 & 0xC000000000000001;
    v78 = v8 & 0xFFFFFFFFFFFFFF8;
    v80 = v11;
    do
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:
        v11 = sub_20D568768();
        goto LABEL_3;
      }

      if (v82)
      {
        v16 = MEMORY[0x20F31DD20](v14, v8);
      }

      else
      {
        if (v14 >= *(v78 + 16))
        {
          goto LABEL_81;
        }

        v16 = *(v8 + 8 * v14 + 32);
      }

      v17 = v16;
      if (v9[2] && (v18 = sub_20CEED6E0(v16), (v19 & 1) != 0))
      {
        v20 = (v9[7] + 32 * v18);
        v86 = v20[1];
        v88 = *v20;
      }

      else
      {
        v21 = sub_20D567EB8();
        if (qword_28111FAD0 != -1)
        {
          swift_once();
        }

        v22 = qword_281120C08;
        v23 = os_log_type_enabled(qword_281120C08, v21);
        v24 = 0uLL;
        v88 = 0u;
        if (v23)
        {
          v25 = swift_slowAlloc();
          v79 = v12;
          v26 = v9;
          v27 = a3;
          v28 = v8;
          v29 = swift_slowAlloc();
          *v25 = 138543362;
          *(v25 + 4) = v17;
          *v29 = v17;
          v30 = v17;
          _os_log_impl(&dword_20CEB6000, v22, v21, "CollectionLayoutManager: Layout had nil frame for item: %{public}@", v25, 0xCu);
          sub_20CEF928C(v29, &unk_27C81BE60);
          v31 = v29;
          v8 = v28;
          a3 = v27;
          v9 = v26;
          v12 = v79;
          MEMORY[0x20F31FC70](v31, -1, -1);
          MEMORY[0x20F31FC70](v25, -1, -1);
          v24 = 0uLL;
        }

        v86 = v24;
        v11 = v80;
      }

      v10 = *(v12 + 16);
      v32 = *(v12 + 24);
      if (v10 >= v32 >> 1)
      {
        sub_20CEF0AA8((v32 > 1), v10 + 1, 1);
      }

      *(v12 + 16) = v10 + 1;
      v33 = v12 + 32 * v10;
      *(v33 + 32) = v88;
      *(v33 + 48) = v86;
      ++v14;
    }

    while (v15 != v11);
    v10 = v77;
LABEL_23:
    v34 = *(v10 + 16);
    if (v34)
    {
      v35 = sub_20D567AE8();
      v8 = v35;
      *(v35 + 16) = v34;
      v36 = (v35 + 32);
      if (v34 <= 3)
      {
        v37 = 0;
        v38 = a6;
        goto LABEL_30;
      }

      v37 = v34 & 0x7FFFFFFFFFFFFFFCLL;
      v36 += v34 & 0x7FFFFFFFFFFFFFFCLL;
      v39 = vdupq_lane_s64(*&a6, 0);
      v40 = (v35 + 48);
      v41 = v34 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v40[-1] = v39;
        *v40 = v39;
        v40 += 2;
        v41 -= 4;
      }

      while (v41);
      v38 = a6;
      if (v34 != v37)
      {
LABEL_30:
        v42 = v34 - v37;
        do
        {
          *v36++ = v38;
          --v42;
        }

        while (v42);
      }
    }

    else
    {
      v8 = MEMORY[0x277D84F90];
    }

    v10 = *(v12 + 16);
    if (v10)
    {
      v9 = objc_opt_self();
      v43 = 0;
      v87 = v8;
      v81 = (v8 + 48);
      v83 = v8 + 32;
      while (1)
      {
        if (v43 >= *(v12 + 16))
        {
          goto LABEL_75;
        }

        v44 = (v12 + 32 + 32 * v43);
        v8 = *v44;
        v45 = v44[1];
        v46 = v44[2];
        v47 = v44[3];
        if (a4)
        {
          if (v8 < 0)
          {
            goto LABEL_77;
          }

          if (*(v87 + 16) < v8)
          {
            goto LABEL_78;
          }

          if (v8)
          {
            if (v8 > 3)
            {
              v48 = v8 & 0x7FFFFFFFFFFFFFFCLL;
              v49 = 0.0;
              v50 = v8 & 0x7FFFFFFFFFFFFFFCLL;
              v51 = v81;
              do
              {
                v49 = v49 + *(v51 - 2) + *(v51 - 1) + *v51 + v51[1];
                v51 += 4;
                v50 -= 4;
              }

              while (v50);
              if (v8 == v48)
              {
                goto LABEL_48;
              }
            }

            else
            {
              v48 = 0;
              v49 = 0.0;
            }

            v52 = v8 - v48;
            v53 = (v83 + 8 * v48);
            do
            {
              v54 = *v53++;
              v49 = v49 + v54;
              --v52;
            }

            while (v52);
          }

          else
          {
            v49 = 0.0;
          }
        }

        else
        {
          v49 = v8 * a6;
        }

LABEL_48:
        [a3 columnSpacing];
        v56 = v55;
        [a3 rowSpacing];
        v58 = v57;
        [a3 pointWidthForNumberOfColumns_];
        v60 = v59;
        [a3 rowSpacing];
        if (__OFSUB__(v46, 1))
        {
          goto LABEL_76;
        }

        v62 = v61 * (v46 - 1);
        if (a4)
        {
          v63 = COERCE_DOUBLE(sub_20CEFFAB4(v46, a3));
          if (v64)
          {
            v65 = v46 * a6 + v62;
          }

          else
          {
            v65 = v63;
          }

          v66 = v8 + v46;
          if (__OFADD__(v8, v46))
          {
            goto LABEL_79;
          }

          if (v66 < v8)
          {
            goto LABEL_80;
          }

          if (v8 != v66)
          {
            if (v8 >= v66)
            {
              goto LABEL_82;
            }

            if (v8 < 0)
            {
              goto LABEL_83;
            }

            v67 = *(v87 + 16);
            if (v8 >= v67 || v66 - 1 >= v67)
            {
              goto LABEL_84;
            }

            v68 = v8;
            v69 = (v65 - v62) / v46;
            if (v46 < 4)
            {
              goto LABEL_64;
            }

            v68 = v8 + (v46 & 0xFFFFFFFFFFFFFFFCLL);
            v70 = vdupq_lane_s64(*&v69, 0);
            v71 = &v81[v8];
            v72 = v46 & 0xFFFFFFFFFFFFFFFCLL;
            do
            {
              v71[-1] = v70;
              *v71 = v70;
              v71 += 2;
              v72 -= 4;
            }

            while (v72);
            if (v46 != (v46 & 0xFFFFFFFFFFFFFFFCLL))
            {
LABEL_64:
              v73 = v8 + v46 - v68;
              v74 = (v83 + 8 * v68);
              do
              {
                *v74++ = v69;
                --v73;
              }

              while (v73);
            }
          }
        }

        else
        {
          v65 = v46 * a6 + v62;
        }

        v75 = [v9 customItemWithFrame_];
        MEMORY[0x20F31CEE0]();
        if (*((v90 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v90 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v8 = *((v90 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_20D567AB8();
        }

        ++v43;
        sub_20D567B08();

        if (v43 == v10)
        {
          v76 = v90;

          goto LABEL_73;
        }
      }
    }

    v76 = MEMORY[0x277D84F90];
LABEL_73:

    return v76;
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_20CF008FC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
    return sub_20D5663C8();
  }

  return result;
}

id ActivityLogViewController.__allocating_init(home:activityLogCoordinator:logView:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = objc_allocWithZone(v3);
  v9 = sub_20CF0178C(a2);
  (*(*(*(v4 + 10) - 8) + 8))(a3);

  return v9;
}

id ActivityLogViewController.init(home:activityLogCoordinator:logView:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v7 = *MEMORY[0x277D85000];
  v8 = sub_20CF0178C(a2);
  (*(*(*((v7 & v6) + 0x50) - 8) + 8))(a3);

  return v8;
}

id ActivityLogViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_20D5677F8();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

uint64_t sub_20CF00BA0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C610);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  v5 = sub_20D567C58();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_20D567C18();

  v6 = sub_20D567C08();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = a1;
  sub_20CF18960(0, 0, v4, &unk_20D5BD1E8, v7);
}

uint64_t sub_20CF00CC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_20D567C18();
  *(v4 + 24) = sub_20D567C08();
  v6 = sub_20D567BA8();

  return MEMORY[0x2822009F8](sub_20CF00D5C, v6, v5);
}

uint64_t sub_20CF00D5C()
{

  sub_20D565BE8();
  v1 = *(v0 + 8);

  return v1();
}

id ActivityLogViewController.__deallocating_deinit()
{
  if (*(v0 + *((*MEMORY[0x277D85000] & *v0) + 0x78)) == 1)
  {
    swift_getObjectType();

    sub_20CF00BA0(v1);
  }

  v3.receiver = v0;
  v3.super_class = type metadata accessor for ActivityLogViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_20CF00EBC(char *a1)
{
  v2 = MEMORY[0x277D85000];
  v3 = *a1;
  v4 = *MEMORY[0x277D85000];

  (*(*(*((v4 & v3) + 0x50) - 8) + 8))(&a1[*((*v2 & *a1) + 0x68)]);
  v5 = *&a1[*((*v2 & *a1) + 0x70)];
}

void sub_20CF00F9C()
{
  v1 = v0;
  v2 = MEMORY[0x277D85000];
  v3 = *((*MEMORY[0x277D85000] & *v0) + 0x50);
  v4 = *((*MEMORY[0x277D85000] & *v0) + 0x58);
  v52.receiver = v0;
  v52.super_class = type metadata accessor for ActivityLogViewController();
  objc_msgSendSuper2(&v52, sel_viewDidLoad);
  v5 = [v0 view];
  if (!v5)
  {
    __break(1u);
    goto LABEL_15;
  }

  v6 = v5;
  v7 = [objc_opt_self() systemBackgroundColor];
  [v6 setBackgroundColor_];

  v8 = *(v1 + *((*v2 & *v1) + 0x70));
  [v1 addChildViewController_];
  v9 = [v1 view];
  if (!v9)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = v9;
  v11 = [v8 view];
  if (!v11)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = v11;
  [v10 addSubview_];

  v13 = [v8 view];
  if (!v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v14 = v13;
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_20D5BC4C0;
  v16 = [v8 view];
  if (!v16)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v17 = v16;
  v18 = [v16 leadingAnchor];

  v19 = [v1 view];
  if (!v19)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v20 = v19;
  v21 = [v19 leadingAnchor];

  v22 = [v18 constraintEqualToAnchor_];
  *(v15 + 32) = v22;
  v23 = [v8 view];
  if (!v23)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v24 = v23;
  v25 = [v23 trailingAnchor];

  v26 = [v1 view];
  if (!v26)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v27 = v26;
  v28 = [v26 trailingAnchor];

  v29 = [v25 constraintEqualToAnchor_];
  *(v15 + 40) = v29;
  v30 = [v8 view];
  if (!v30)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v31 = v30;
  v32 = [v30 topAnchor];

  v33 = [v1 view];
  if (!v33)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v34 = v33;
  v35 = [v33 topAnchor];

  v36 = [v32 constraintEqualToAnchor_];
  *(v15 + 48) = v36;
  v37 = [v8 view];
  if (!v37)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v38 = v37;
  v39 = [v37 bottomAnchor];

  v40 = [v1 view];
  if (v40)
  {
    v41 = v40;
    v42 = objc_opt_self();
    v43 = [v41 bottomAnchor];

    v44 = [v39 constraintEqualToAnchor_];
    *(v15 + 56) = v44;
    sub_20CECF940(0, &qword_28111FEC0);
    v45 = sub_20D567A58();

    [v42 activateConstraints_];

    sub_20CECF940(0, &qword_27C821440);
    v46 = sub_20D567F18();
    sub_20CECF940(0, &unk_28111FB00);
    v47 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v48 = swift_allocObject();
    v48[2] = v3;
    v48[3] = v4;
    v48[4] = v47;
    v51 = v48;
    v49 = sub_20D568438();
    [v46 setPrimaryAction_];

    v50 = [v1 navigationItem];
    [v50 setRightBarButtonItem_];

    return;
  }

LABEL_25:
  __break(1u);
}

void sub_20CF0158C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong presentingViewController];

    if (v2)
    {
      [v2 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

void sub_20CF01614(void *a1)
{
  v1 = a1;
  sub_20CF00F9C();
}

id sub_20CF0165C(char a1)
{
  v3 = MEMORY[0x277D85000];
  v6.receiver = v1;
  v6.super_class = type metadata accessor for ActivityLogViewController();
  result = objc_msgSendSuper2(&v6, sel_viewDidAppear_, a1 & 1);
  v5 = *((*v3 & *v1) + 0x78);
  if ((*(v1 + v5) & 1) == 0)
  {
    *(v1 + v5) = 1;
    return sub_20D565BE8();
  }

  return result;
}

void sub_20CF01738(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_20CF0165C(a3);
}

id sub_20CF0178C(uint64_t a1)
{
  v2 = *v1;
  v3 = MEMORY[0x277D85000];
  v4 = *MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & *v1) + 0x50);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v17 - v8;
  *(v1 + *((v4 & v2) + 0x78)) = 0;
  *(v1 + *((*v3 & *v1) + 0x60)) = v7;
  v10 = *((*v3 & *v1) + 0x68);
  v11 = *(v6 + 16);
  v11(v1 + v10);
  sub_20D566C48();
  (v11)(v9, v1 + v10, v5);

  *(v1 + *((*v3 & *v1) + 0x70)) = sub_20D566BF8();
  v12 = type metadata accessor for ActivityLogViewController();
  v17.receiver = v1;
  v17.super_class = v12;
  v13 = objc_msgSendSuper2(&v17, sel_initWithNibName_bundle_, 0, 0);
  v14 = sub_20D5677F8();
  v15 = HULocalizedString(v14);

  if (!v15)
  {
    sub_20D567838();
    v15 = sub_20D5677F8();
  }

  [v13 setTitle_];

  return v13;
}

void sub_20CF019F4()
{
  *(v0 + *((*MEMORY[0x277D85000] & *v0) + 0x78)) = 0;
  sub_20D568A58();
  __break(1u);
}

void _s6HomeUI25ActivityLogViewControllerC7nibName6bundleACyxGSSSg_So8NSBundleCSgtcfc_0()
{
  *(v0 + *((*MEMORY[0x277D85000] & *v0) + 0x78)) = 0;
  sub_20D568A58();
  __break(1u);
}

uint64_t sub_20CF01B24()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_20CF01C0C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20CEF5FFC;

  return sub_20CF00CC4(a1, v4, v5, v6);
}

id sub_20CF01D3C()
{
  v1 = OBJC_IVAR___HUEmbeddedTriggerActionSetGridViewController_triggerBuilder;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_20CF01DF0(uint64_t a1)
{
  v3 = OBJC_IVAR___HUEmbeddedTriggerActionSetGridViewController_triggerBuilder;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_20CF01E48(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___HUEmbeddedTriggerActionSetGridViewController_triggerBuilder;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

uint64_t sub_20CF02008()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_20CF02068(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR___HUEmbeddedTriggerActionSetGridViewController_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_20CED1190;
}

id EmbeddedTriggerActionSetGridViewController.__allocating_init(triggerBuilder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR___HUEmbeddedTriggerActionSetGridViewController_triggerBuilder] = a1;
  v4 = a1;
  v5 = [v4 triggerActionSets];
  v6 = [v4 home];
  v7 = v5;
  v8 = sub_20CF02678(v7, v6, v3);

  return v8;
}

id EmbeddedTriggerActionSetGridViewController.init(triggerBuilder:)(void *a1)
{
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR___HUEmbeddedTriggerActionSetGridViewController_triggerBuilder] = a1;
  v3 = a1;
  v4 = [v3 triggerActionSets];
  v5 = [v3 home];
  v6 = v4;
  v7 = sub_20CF02678(v6, v5, v1);

  return v7;
}

void sub_20CF0230C()
{
  v1 = [v0 itemManager];
}

uint64_t sub_20CF0243C()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    v3 = OBJC_IVAR___HUEmbeddedTriggerActionSetGridViewController_triggerBuilder;
    swift_beginAccess();
    v4 = *(v0 + v3);
    [v2 triggerActionSetGridViewController:v0 didUpdate:v4];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_20CF025B8()
{
  v1 = v0 + OBJC_IVAR___HUEmbeddedTriggerActionSetGridViewController_delegate;

  return sub_20CEC8088(v1);
}

id EmbeddedTriggerActionSetGridViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EmbeddedTriggerActionSetGridViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_20CF02678(uint64_t a1, void *a2, char *a3)
{
  v6 = sub_20CF02B20();
  *&a3[OBJC_IVAR____TtC6HomeUI43ActionSetContainerSummaryGridViewController_module] = 0;
  v25[3] = v6;
  v25[4] = MEMORY[0x277D13308];
  *&a3[OBJC_IVAR____TtC6HomeUI43ActionSetContainerSummaryGridViewController_moduleController] = 0;
  v25[0] = a1;
  v7 = &a3[OBJC_IVAR____TtC6HomeUI43ActionSetContainerSummaryGridViewController_actionSetGridConfig];
  *v7 = xmmword_20D5BD1F0;
  v7[16] = 1;
  v8 = [objc_allocWithZone(MEMORY[0x277D14B08]) initWithDelegate_];
  v24.receiver = a3;
  v24.super_class = type metadata accessor for ActionSetContainerSummaryGridViewController();
  v9 = objc_msgSendSuper2(&v24, sel_initUsingCompositionalLayoutWithItemManager_, v8);
  [v8 setDelegate_];
  if (a2)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = a2;
    v21 = sub_20CF02BA8;
    v22 = v10;
    v17 = MEMORY[0x277D85DD0];
    v18 = 1107296256;
    v19 = sub_20CF351D8;
    v20 = &block_descriptor_18;
    v11 = _Block_copy(&v17);
    v12 = a2;

    [v8 setHomeCreator_];
    _Block_release(v11);
  }

  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_20CECF7A0(v25, v23);
  v14 = swift_allocObject();
  sub_20CF02B6C(v23, v14 + 16);
  *(v14 + 56) = v13;
  v21 = sub_20CF02B84;
  v22 = v14;
  v17 = MEMORY[0x277D85DD0];
  v18 = 1107296256;
  v19 = sub_20CF35658;
  v20 = &block_descriptor_1;
  v15 = _Block_copy(&v17);

  [v8 setItemModuleCreator_];
  _Block_release(v15);

  __swift_destroy_boxed_opaque_existential_1(v25);
  return v9;
}

unint64_t sub_20CF02B20()
{
  result = qword_27C81EF70;
  if (!qword_27C81EF70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C81EF70);
  }

  return result;
}

uint64_t sub_20CF02B6C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id DashboardLayoutManager.__allocating_init(delegate:)()
{
  v1 = objc_allocWithZone(v0);
  *&v1[OBJC_IVAR___HUDashboardLayoutManager_adaptiveTileDragInteractionLayouts] = 0;
  v2 = &v1[OBJC_IVAR___HUDashboardLayoutManager_hoveringGridPosition];
  *(v2 + 1) = 0;
  *(v2 + 2) = 0;
  *v2 = 0;
  v5.receiver = v1;
  v5.super_class = v0;
  v3 = objc_msgSendSuper2(&v5, sel_init);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v3;
}

id DashboardLayoutManager.init(delegate:)()
{
  *&v0[OBJC_IVAR___HUDashboardLayoutManager_adaptiveTileDragInteractionLayouts] = 0;
  v1 = &v0[OBJC_IVAR___HUDashboardLayoutManager_hoveringGridPosition];
  v2 = type metadata accessor for DashboardLayoutManager();
  *(v1 + 1) = 0;
  *(v1 + 2) = 0;
  *v1 = 0;
  v5.receiver = v0;
  v5.super_class = v2;
  v3 = objc_msgSendSuper2(&v5, sel_init);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v3;
}

id sub_20CF02DEC()
{
  v0 = [objc_opt_self() defaultConfiguration];
  [v0 setContentInsetsReference_];
  [v0 setInterSectionSpacing_];
  return v0;
}

id sub_20CF02ECC(void *a1, uint64_t a2, void *a3)
{
  sub_20CF032D8(a2, &v35);
  v6 = v35;
  v7 = v36;
  v8 = *(v3 + OBJC_IVAR___HUDashboardLayoutManager_adaptiveTileDragInteractionLayouts);
  if (!v8 || !*(v8 + 16))
  {
    goto LABEL_12;
  }

  sub_20D5663C8();
  v9 = sub_20CEF9358(a1);
  if ((v10 & 1) == 0)
  {

LABEL_12:
    v23 = sub_20D567838();
    v35 = v6;
    LOBYTE(v36) = v7;
    sub_20CEFA3C8(v23, v24, &v35, a3);
    v26 = v25;

    sub_20CEFF424(v6, *(&v6 + 1), v7);
    return v26;
  }

  v11 = *(v8 + 56) + 72 * v9;
  v35 = *v11;
  v13 = *(v11 + 32);
  v12 = *(v11 + 48);
  v14 = *(v11 + 64);
  v36 = *(v11 + 16);
  v39 = v14;
  v37 = v13;
  v38 = v12;
  sub_20CF03DF0(&v35, &v30);

  if (!v7)
  {
LABEL_11:
    sub_20CEFF424(v6, *(&v6 + 1), v7);
    sub_20CEFF424(3, 0, 2);
    sub_20CF03E60(&v35);
    goto LABEL_12;
  }

  if (v7 == 1)
  {
    sub_20D5663C8();
    goto LABEL_11;
  }

  if (v6 ^ 3 | *(&v6 + 1))
  {
    goto LABEL_11;
  }

  sub_20CEFF424(v6, *(&v6 + 1), 2);
  sub_20CEFF424(3, 0, 2);
  v15 = sub_20D567838();
  v17 = v16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v20 = a1;
    v21 = [v19 displayedItemsInSection_];

    swift_unknownObjectRelease();
    sub_20CECF940(0, &qword_281120AC0);
    v22 = sub_20D567A78();
  }

  else
  {
    v22 = MEMORY[0x277D84F90];
  }

  v32 = v37;
  v33 = v38;
  v34 = v39;
  v30 = v35;
  v31 = v36;
  v28 = sub_20CEFDC1C();
  v29 = [a3 traitCollection];
  v26 = sub_20CEFCF8C(&v30, v22, v28, v29);

  v30 = xmmword_20D5BA030;
  LOBYTE(v31) = 2;
  sub_20CEFB924(v26, &v30, v15, v17);

  sub_20CF03E60(&v35);
  return v26;
}

uint64_t sub_20CF03244(uint64_t a1, uint64_t a2)
{
  sub_20CF032D8(a2, v7);
  v2 = v7[0];
  v3 = v7[1];
  v4 = v8;
  if (v8)
  {
    if (v8 != 1)
    {
      v5 = 8u >> SLOBYTE(v7[0]);
      goto LABEL_6;
    }

    sub_20D5663C8();
  }

  LOBYTE(v5) = 0;
LABEL_6:
  sub_20CEFF424(v2, v3, v4);
  sub_20CEFF424(3, 0, 2);
  sub_20CEFF424(v2, v3, v4);
  return v5 & 1;
}

uint64_t sub_20CF032D8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_20D567838();
  v6 = v5;
  if (v4 == sub_20D567838() && v6 == v7)
  {
  }

  else
  {
    v9 = sub_20D568BF8();

    if ((v9 & 1) == 0)
    {
      v10 = sub_20D567838();
      v12 = v11;
      if (v10 == sub_20D567838() && v12 == v13)
      {
      }

      else
      {
        v15 = sub_20D568BF8();

        if ((v15 & 1) == 0)
        {
          v16 = sub_20D567838();
          v18 = v17;
          if (v16 == sub_20D567838() && v18 == v19)
          {
          }

          else
          {
            v25 = sub_20D568BF8();

            if ((v25 & 1) == 0)
            {
              v28 = sub_20D567838();
              v30 = v29;
              if (v28 == sub_20D567838() && v30 == v31)
              {
              }

              else
              {
                v32 = sub_20D568BF8();

                if ((v32 & 1) == 0)
                {
                  v33 = sub_20D567838();
                  v35 = v34;
                  if (v33 == sub_20D567838() && v35 == v36)
                  {
                  }

                  else
                  {
                    v37 = sub_20D568BF8();

                    if ((v37 & 1) == 0)
                    {
                      v26 = xmmword_20D5BA030;
                      goto LABEL_27;
                    }
                  }

                  v26 = xmmword_20D5BD250;
LABEL_27:
                  *a2 = v26;
                  v27 = 2;
LABEL_28:
                  *(a2 + 16) = v27;
                  return result;
                }
              }

              *a2 = xmmword_20D5BD260;
              v27 = 1;
              goto LABEL_28;
            }
          }

          v26 = xmmword_20D5BD270;
          goto LABEL_27;
        }
      }

      v24 = OBJC_IVAR___HUDashboardContext_scenePresentationStyle;
      result = swift_beginAccess();
      *a2 = *(a1 + v24);
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      return result;
    }
  }

  v21 = OBJC_IVAR___HUDashboardContext_cameraPresentationStyle;
  swift_beginAccess();
  if (*(a1 + v21) == 2)
  {
    v22 = 0x72476172656D6163;
  }

  else
  {
    v22 = 0x6F4D6172656D6163;
  }

  if (*(a1 + v21) == 2)
  {
    v23 = 0xEA00000000006469;
  }

  else
  {
    v23 = 0xEC00000063696173;
  }

  *a2 = v22;
  *(a2 + 8) = v23;
  *(a2 + 16) = 1;
  return sub_20CF008FC(v22, v23, 1);
}

void sub_20CF036EC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = *a1;
  v10 = a1[1];
  v11 = *(a1 + 16);
  v20 = *a1;
  v21 = v10;
  v22 = v11;
  v18 = xmmword_20D5BD260;
  v19 = 1;
  v12 = _s6HomeUI23CollectionLayoutManagerC5StyleO2eeoiySbAE_AEtFZ_0(&v20, &v18);
  sub_20CEFF424(v18, *(&v18 + 1), v19);
  if (!v12)
  {
    v20 = v9;
    v21 = v10;
    v22 = v11;
    v18 = xmmword_20D5BD280;
    v19 = 1;
    v13 = _s6HomeUI23CollectionLayoutManagerC5StyleO2eeoiySbAE_AEtFZ_0(&v20, &v18);
    sub_20CEFF424(v18, *(&v18 + 1), v19);
    if (v13)
    {
      v14 = [v5 generateCameraLayoutOptionsFor_];
      sub_20CECF940(0, &qword_281120AC0);
      v15 = sub_20D567A58();
      v16 = [v5 buildCamerasMosaicSectionFor:v15 layoutEnvironment:a5 cameraLayoutOptions:v14];
    }

    else
    {
      v20 = v9;
      v21 = v10;
      v22 = v11;
      v18 = xmmword_20D5BD290;
      v19 = 1;
      v17 = _s6HomeUI23CollectionLayoutManagerC5StyleO2eeoiySbAE_AEtFZ_0(&v20, &v18);
      sub_20CEFF424(v18, *(&v18 + 1), v19);
      if (!v17)
      {
        sub_20D568A58();
        __break(1u);
        return;
      }

      v14 = [v5 generateCameraLayoutOptionsFor_];
      sub_20CECF940(0, &qword_281120AC0);
      v15 = sub_20D567A58();
      v16 = [v5 buildResponsiveGridCamerasSectionFor:v15 layoutEnvironment:a5 cameraLayoutOptions:v14];
    }

    v16;

    return;
  }

  sub_20CF03EC8(a3, a4, a5);
}

void sub_20CF03970(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v5 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (v7 == 1)
  {
    if (v6 == 0x6F4D6172656D6163 && v5 == 0xEC00000063696173)
    {
      sub_20D5663C8();
      v9 = 1;
      sub_20CEFF424(0x6F4D6172656D6163, 0xEC00000063696173, 1);
      sub_20CEFF424(0x6F4D6172656D6163, 0xEC00000063696173, 1);
LABEL_11:
      v10 = 0uLL;
      v11 = 0uLL;
      goto LABEL_12;
    }

    v12 = sub_20D568BF8();
    sub_20D5663C8();
    v9 = 1;
    sub_20CEFF424(v6, v5, 1);
    sub_20CEFF424(0x6F4D6172656D6163, 0xEC00000063696173, 1);
    if (v12)
    {
      goto LABEL_11;
    }
  }

  else
  {
    sub_20CEFF424(*a1, v5, v7);
    sub_20CEFF424(0x6F4D6172656D6163, 0xEC00000063696173, 1);
  }

  v13[0] = v6;
  v13[1] = v5;
  v14 = v7;
  sub_20CEFD480(v13, a2, v15);
  v10 = v15[0];
  v11 = v15[1];
  v9 = v16;
LABEL_12:
  *a3 = v10;
  *(a3 + 16) = v11;
  *(a3 + 32) = v9;
}

void sub_20CF03B68(void *a1)
{
  type metadata accessor for TransparentBlackBackgroundDecorationView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = sub_20D5677F8();
  [a1 registerClass:ObjCClassFromMetadata forDecorationViewOfKind:v3];
}

id DashboardLayoutManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_20CF03D30()
{

  v1 = *(v0 + OBJC_IVAR___HUDashboardLayoutManager_hoveringGridPosition);
}

id DashboardLayoutManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DashboardLayoutManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20CF03DF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C370);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CF03E60(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C370);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_20CF03EC8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v8 = sub_20D563DB8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 104))(v11, *MEMORY[0x277D15240], v8);
  sub_20CF0448C();
  v12 = sub_20D563978();
  (*(v9 + 8))(v11, v8);
  if ((v12 & 1) != 0 || [objc_opt_self() isAMac])
  {
    v39 = xmmword_20D5BA030;
    v40 = 2;
    sub_20CEFA3C8(a1, a2, &v39, a3);
  }

  else
  {
    v13 = *(v4 + OBJC_IVAR___HUCollectionLayoutManager_layoutOptions);
    if (v13)
    {
      v14 = objc_opt_self();
      v15 = v13;
      v16 = [v14 fractionalWidthDimension_];
      v17 = [v15 mediaPlatterCellOptions];
      [v17 cellHeight];
      v19 = v18;

      v20 = [v14 estimatedDimension_];
      v21 = objc_opt_self();
      v22 = [v21 sizeWithWidthDimension:v16 heightDimension:v20];

      v23 = [objc_opt_self() itemWithLayoutSize_];
      v24 = [v14 fractionalWidthDimension_];
      v25 = [v15 mediaPlatterCellOptions];
      [v25 cellHeight];
      v27 = v26;

      v28 = [v14 estimatedDimension_];
      v29 = [v21 sizeWithWidthDimension:v24 heightDimension:v28];

      v30 = objc_opt_self();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_20D5BA040;
      *(v31 + 32) = v23;
      sub_20CECF940(0, &qword_28111FE40);
      v32 = v23;
      v33 = sub_20D567A58();

      v34 = [v30 horizontalGroupWithLayoutSize:v29 subitems:v33];

      v35 = [objc_opt_self() sectionWithGroup_];
      v36 = [v15 mediaPlatterCellOptions];
      [v36 interPlatterSpacing];
      v38 = v37;

      [v35 setInterGroupSpacing_];
    }

    else
    {
      __break(1u);
    }
  }
}

unint64_t sub_20CF0448C()
{
  result = qword_2811209A0;
  if (!qword_2811209A0)
  {
    sub_20D563DB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811209A0);
  }

  return result;
}

uint64_t sub_20CF044E4(void *a1)
{
  swift_unknownObjectWeakInit();
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 32) = 0u;
  v3 = sub_20CF04588(a1);

  if (v3)
  {
    *(v1 + 16) = v3;
  }

  else
  {
    MEMORY[0x20F31FD50](v1 + 24);

    type metadata accessor for MediaControlUIViewBuilder();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v1;
}

uint64_t sub_20CF04588(void *a1)
{
  v2 = [a1 accessoryRepresentableObject];
  result = swift_dynamicCastObjCProtocolConditional();
  if (!result)
  {
    swift_unknownObjectRelease();
    v4 = [a1 homeKitObject];
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v6 = [v5 mediaProfile];
      swift_unknownObjectRelease();
      return v6;
    }

    else
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

void sub_20CF04658(uint64_t a1)
{
  v3 = sub_20D563818();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 16);
  if (v7)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v24 = Strong;
      v9 = objc_allocWithZone(HUTimerCreationViewController);
      swift_unknownObjectRetain();
      v10 = [v9 initWithMediaProfileContainer_];
      v11 = *(v4 + 16);
      v11(v6, a1, v3);
      v12 = type metadata accessor for TimerCreationDelegateHandler(0);
      v13 = objc_allocWithZone(v12);
      v23 = v7;
      swift_unknownObjectWeakInit();
      v11(&v13[OBJC_IVAR____TtC6HomeUIP33_248B7B14B6FEE0F07C50E5A087FE91DE28TimerCreationDelegateHandler_parentContainerID], v6, v3);
      swift_unknownObjectWeakAssign();
      v25.receiver = v13;
      v25.super_class = v12;
      v14 = v10;
      v15 = objc_msgSendSuper2(&v25, sel_init);
      (*(v4 + 8))(v6, v3);
      v16 = *(v1 + 40);
      *(v1 + 40) = v15;
      v17 = v15;

      [v14 setDelegate_];
      v18 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];

      v19 = [v18 navigationBar];
      v20 = [objc_opt_self() hu_alarmsBackgroundColor];
      [v19 setBackgroundColor_];

      v21 = v24;
      v22 = [v24 hu:v18 presentPreloadableViewController:1 animated:?];
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_20CF04900(id a1, char *a2)
{
  v29 = a1;
  v30 = a2;
  v3 = sub_20D563818();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C180);
  v28 = *(v6 - 8);
  v7 = *(v28 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C610);
  result = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v25 - v12;
  v14 = *(v2 + 16);
  if (v14)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v15 = result;
      v16 = sub_20D567C58();
      (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
      sub_20CF073C8(v29, v9);
      (*(v4 + 16))(&v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v30, v3);
      sub_20D567C18();
      v30 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
      swift_unknownObjectRetain_n();

      v29 = v15;
      v27 = v2;
      v26 = sub_20D567C08();
      v17 = (*(v28 + 80) + 32) & ~*(v28 + 80);
      v18 = (v7 + *(v4 + 80) + v17) & ~*(v4 + 80);
      v19 = (v5 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
      v28 = v3;
      v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
      v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
      v22 = swift_allocObject();
      v23 = MEMORY[0x277D85700];
      *(v22 + 16) = v26;
      *(v22 + 24) = v23;
      sub_20CF07438(v9, v22 + v17);
      (*(v4 + 32))(v22 + v18, v30, v28);
      *(v22 + v19) = v14;
      *(v22 + v20) = v27;
      v24 = v29;
      *(v22 + v21) = v29;
      sub_20CF18960(0, 0, v13, &unk_20D5BD468, v22);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_20CF04C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a7;
  v8[10] = a8;
  v8[7] = a5;
  v8[8] = a6;
  v8[6] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C180);
  v8[11] = swift_task_alloc();
  v9 = sub_20D563818();
  v8[12] = v9;
  v8[13] = *(v9 - 8);
  v8[14] = swift_task_alloc();
  v8[15] = swift_task_alloc();
  sub_20D567C18();
  v8[16] = sub_20D567C08();
  v11 = sub_20D567BA8();

  return MEMORY[0x2822009F8](sub_20CF04D68, v11, v10);
}

uint64_t sub_20CF04D68()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v3 = *(v0 + 88);
  v4 = *(v0 + 48);

  sub_20CF073C8(v4, v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_20CEF928C(*(v0 + 88), &qword_27C81C180);
  }

  else
  {
    (*(*(v0 + 104) + 32))(*(v0 + 120), *(v0 + 88), *(v0 + 96));
    sub_20D563CE8();
    v5 = sub_20D563CB8();
    v6 = sub_20D563CA8();

    if (v6)
    {
      objc_opt_self();
      v7 = swift_dynamicCastObjCClass();
      if (v7)
      {
        v8 = *(v0 + 112);
        v10 = *(v0 + 96);
        v9 = *(v0 + 104);
        v42 = *(v0 + 80);
        v44 = *(v0 + 120);
        v41 = *(v0 + 72);
        v11 = *(v0 + 56);
        v12 = [objc_allocWithZone(HUAlarmEditViewController) initWithMediaProfileContainer:*(v0 + 64) alarm:v7];
        v13 = *(v9 + 16);
        v13(v8, v11, v10);
        v14 = type metadata accessor for AlarmEditVCDelegateHandler(0);
        v15 = objc_allocWithZone(v14);
        swift_unknownObjectWeakInit();
        v13(&v15[OBJC_IVAR____TtC6HomeUIP33_248B7B14B6FEE0F07C50E5A087FE91DE26AlarmEditVCDelegateHandler_parentContainerID], v8, v10);
        swift_unknownObjectWeakAssign();
        *(v0 + 32) = v15;
        *(v0 + 40) = v14;
        v16 = v12;
        v17 = objc_msgSendSuper2((v0 + 32), sel_init);
        v18 = *(v9 + 8);
        v18(v8, v10);
        v19 = *(v41 + 32);
        *(v41 + 32) = v17;
        v20 = v17;

        [v16 setDelegate_];
        v21 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];

        v22 = [v21 navigationBar];
        v23 = [objc_opt_self() hu_alarmsBackgroundColor];
        [v22 setBackgroundColor_];

        v18(v44, v10);
        goto LABEL_9;
      }
    }

    (*(*(v0 + 104) + 8))(*(v0 + 120), *(v0 + 96));
  }

  v25 = *(v0 + 104);
  v24 = *(v0 + 112);
  v26 = *(v0 + 96);
  v43 = *(v0 + 72);
  v45 = *(v0 + 80);
  v27 = *(v0 + 56);
  v28 = [objc_allocWithZone(HUAlarmEditViewController) initWithMediaProfileContainer:*(v0 + 64) alarm:0];
  v29 = *(v25 + 16);
  v29(v24, v27, v26);
  v30 = type metadata accessor for AlarmEditVCDelegateHandler(0);
  v31 = objc_allocWithZone(v30);
  swift_unknownObjectWeakInit();
  v29(&v31[OBJC_IVAR____TtC6HomeUIP33_248B7B14B6FEE0F07C50E5A087FE91DE26AlarmEditVCDelegateHandler_parentContainerID], v24, v26);
  swift_unknownObjectWeakAssign();
  *(v0 + 16) = v31;
  *(v0 + 24) = v30;
  v32 = v28;
  v33 = objc_msgSendSuper2((v0 + 16), sel_init);
  (*(v25 + 8))(v24, v26);
  v34 = v43[4];
  v43[4] = v33;
  v35 = v33;

  [v32 setDelegate_];
  v36 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];

  v37 = [v36 navigationBar];
  v38 = [objc_opt_self() hu_alarmsBackgroundColor];
  [v37 setBackgroundColor_];

LABEL_9:

  v39 = *(v0 + 8);

  return v39();
}

void sub_20CF052A0()
{
  if (v0[7])
  {
    goto LABEL_7;
  }

  v1 = v0[2];
  if (!v1)
  {
    v10 = 0;
    v12 = 0xE000000000000000;
    goto LABEL_6;
  }

  swift_unknownObjectRetain();
  v2 = sub_20D5677F8();
  v3 = sub_20D5677F8();
  v4 = HULocalizedStringWithDefaultValue(v2, v3);

  if (v4)
  {
    sub_20D567838();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81C620);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_20D5BC410;
    v6 = [v1 hf_categoryLowercaseLocalizedDescription];
    v7 = sub_20D567838();
    v9 = v8;

    *(v5 + 56) = MEMORY[0x277D837D0];
    *(v5 + 64) = sub_20CED4498();
    *(v5 + 32) = v7;
    *(v5 + 40) = v9;
    v10 = sub_20D567848();
    v12 = v11;
    swift_unknownObjectRelease();

LABEL_6:
    v0[6] = v10;
    v0[7] = v12;
    sub_20D5663C8();

LABEL_7:
    sub_20D5663C8();
    return;
  }

  __break(1u);
}

void sub_20CF05438()
{
  if (v0[9])
  {
    goto LABEL_7;
  }

  v1 = v0[2];
  if (!v1)
  {
    v10 = 0;
    v12 = 0xE000000000000000;
    goto LABEL_6;
  }

  swift_unknownObjectRetain();
  v2 = sub_20D5677F8();
  v3 = sub_20D5677F8();
  v4 = HULocalizedStringWithDefaultValue(v2, v3);

  if (v4)
  {
    sub_20D567838();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81C620);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_20D5BC410;
    v6 = [v1 hf_categoryLowercaseLocalizedDescription];
    v7 = sub_20D567838();
    v9 = v8;

    *(v5 + 56) = MEMORY[0x277D837D0];
    *(v5 + 64) = sub_20CED4498();
    *(v5 + 32) = v7;
    *(v5 + 40) = v9;
    v10 = sub_20D567848();
    v12 = v11;
    swift_unknownObjectRelease();

LABEL_6:
    v0[8] = v10;
    v0[9] = v12;
    sub_20D5663C8();

LABEL_7:
    sub_20D5663C8();
    return;
  }

  __break(1u);
}

uint64_t sub_20CF055D0()
{
  swift_unknownObjectRelease();
  MEMORY[0x20F31FD50](v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_20CF056E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C610);
  v5[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CF05780, 0, 0);
}

uint64_t sub_20CF05780()
{
  v0[5] = sub_20D563CE8();
  v0[6] = sub_20D567C18();
  v0[7] = sub_20D567C08();
  v2 = sub_20D567BA8();

  return MEMORY[0x2822009F8](sub_20CF05824, v2, v1);
}

uint64_t sub_20CF05824()
{
  v1 = v0[3];

  v0[8] = sub_20D563CB8();
  v2 = OBJC_IVAR____TtC6HomeUIP33_248B7B14B6FEE0F07C50E5A087FE91DE26AlarmEditVCDelegateHandler_parentContainerID;
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_20CF058EC;
  v4 = v0[2];

  return MEMORY[0x28216E598](v4, v1 + v2);
}

uint64_t sub_20CF058EC()
{
  v1 = *(*v0 + 64);

  return MEMORY[0x2822009F8](sub_20CF05A00, 0, 0);
}

uint64_t sub_20CF05A00()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = sub_20D567C58();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = v2;
  v5 = sub_20D567C08();
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D85700];
  v6[2] = v5;
  v6[3] = v7;
  v6[4] = v4;
  sub_20CF18C60(0, 0, v1, &unk_20D5BD448, v6);

  v8 = v0[1];

  return v8();
}

uint64_t sub_20CF05B10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  sub_20D567C18();
  v4[4] = sub_20D567C08();
  v6 = sub_20D567BA8();

  return MEMORY[0x2822009F8](sub_20CF07664, v6, v5);
}

uint64_t sub_20CF05BC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C610);
  v5[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CF05C64, 0, 0);
}

uint64_t sub_20CF05C64()
{
  v0[5] = sub_20D563CE8();
  v0[6] = sub_20D567C18();
  v0[7] = sub_20D567C08();
  v2 = sub_20D567BA8();

  return MEMORY[0x2822009F8](sub_20CF05D08, v2, v1);
}

uint64_t sub_20CF05D08()
{
  v1 = v0[3];

  v0[8] = sub_20D563CB8();
  v2 = OBJC_IVAR____TtC6HomeUIP33_248B7B14B6FEE0F07C50E5A087FE91DE26AlarmEditVCDelegateHandler_parentContainerID;
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_20CF05DD0;
  v4 = v0[2];

  return MEMORY[0x28216E558](v4, v1 + v2);
}

uint64_t sub_20CF05DD0()
{
  v1 = *(*v0 + 64);

  return MEMORY[0x2822009F8](sub_20CF05EE4, 0, 0);
}

uint64_t sub_20CF05EE4()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = sub_20D567C58();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = v2;
  v5 = sub_20D567C08();
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D85700];
  v6[2] = v5;
  v6[3] = v7;
  v6[4] = v4;
  sub_20CF18C60(0, 0, v1, &unk_20D5BD428, v6);

  v8 = v0[1];

  return v8();
}

uint64_t sub_20CF05FF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  sub_20D567C18();
  v4[4] = sub_20D567C08();
  v6 = sub_20D567BA8();

  return MEMORY[0x2822009F8](sub_20CF0608C, v6, v5);
}

uint64_t sub_20CF0608C()
{

  Strong = swift_unknownObjectWeakLoadStrong();
  v2 = Strong;
  if (Strong)
  {
    [Strong dismissViewControllerAnimated:1 completion:0];
  }

  **(v0 + 16) = v2 == 0;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_20CF06150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C610);
  v5[4] = swift_task_alloc();
  v6 = sub_20D563818();
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C618);
  v5[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CF06280, 0, 0);
}

uint64_t sub_20CF06280()
{
  v0[9] = sub_20D563CE8();
  v0[10] = sub_20D567C18();
  v0[11] = sub_20D567C08();
  v2 = sub_20D567BA8();

  return MEMORY[0x2822009F8](sub_20CF06324, v2, v1);
}

uint64_t sub_20CF06324()
{

  *(v0 + 96) = sub_20D563CB8();

  return MEMORY[0x2822009F8](sub_20CF06398, 0, 0);
}

uint64_t sub_20CF06398()
{
  v1 = *(v0 + 24);
  v2 = [*(v0 + 16) alarmID];
  sub_20D5637E8();

  v3 = OBJC_IVAR____TtC6HomeUIP33_248B7B14B6FEE0F07C50E5A087FE91DE26AlarmEditVCDelegateHandler_parentContainerID;
  v4 = swift_task_alloc();
  *(v0 + 104) = v4;
  *v4 = v0;
  v4[1] = sub_20CF06474;
  v6 = *(v0 + 56);
  v5 = *(v0 + 64);

  return MEMORY[0x28216E550](v5, v6, v1 + v3);
}

uint64_t sub_20CF06474()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 40);

  (*(v4 + 8))(v3, v5);
  sub_20CEF928C(v2, &qword_27C81C618);

  return MEMORY[0x2822009F8](sub_20CF06618, 0, 0);
}

uint64_t sub_20CF06618()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = sub_20D567C58();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = v2;
  v5 = sub_20D567C08();
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D85700];
  v6[2] = v5;
  v6[3] = v7;
  v6[4] = v4;
  sub_20CF18C60(0, 0, v1, &unk_20D5BD408, v6);

  v8 = v0[1];

  return v8();
}

uint64_t sub_20CF06854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_20CF06874, 0, 0);
}

uint64_t sub_20CF06874()
{
  *(v0 + 32) = sub_20D563CE8();
  sub_20D567C18();
  *(v0 + 40) = sub_20D567C08();
  v2 = sub_20D567BA8();

  return MEMORY[0x2822009F8](sub_20CF06914, v2, v1);
}

uint64_t sub_20CF06914()
{
  v1 = v0[3];

  v0[6] = sub_20D563CB8();
  v2 = OBJC_IVAR____TtC6HomeUIP33_248B7B14B6FEE0F07C50E5A087FE91DE28TimerCreationDelegateHandler_parentContainerID;
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_20CF069D8;
  v4 = v0[2];

  return MEMORY[0x28216E5A0](v4, v1 + v2);
}

uint64_t sub_20CF069D8()
{
  v1 = *(*v0 + 48);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_20CF06B04(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C610);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v17 - v10;
  v12 = sub_20D567C58();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = a4;
  v13[5] = a1;
  v14 = a4;
  v15 = a1;
  sub_20CF18960(0, 0, v11, a6, v13);
}

id sub_20CF06C58(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_20CF06CAC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  v5 = sub_20D563818();
  (*(*(v5 - 8) + 8))(a1 + v4, v5);

  JUMPOUT(0x20F31FD50);
}

uint64_t sub_20CF06D54(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20CF06D8C()
{
  result = sub_20D563818();
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

uint64_t sub_20CF06E24(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20CEF934C;

  return sub_20CF06854(a1, v4, v5, v7, v6);
}

uint64_t sub_20CF06EE4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20CEF934C;

  return sub_20CF06150(a1, v4, v5, v7, v6);
}

uint64_t sub_20CF06FA4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20CEF934C;

  return sub_20CF05B10(a1, v4, v5, v6);
}

uint64_t sub_20CF07058(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20CEF934C;

  return sub_20CF05BC8(a1, v4, v5, v7, v6);
}

uint64_t sub_20CF07118(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20CEF934C;

  return sub_20CF05FF4(a1, v4, v5, v6);
}

uint64_t objectdestroyTm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20CF07214(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20CEF934C;

  return sub_20CF056E4(a1, v4, v5, v7, v6);
}

uint64_t objectdestroy_45Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20CF07314(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20CEF934C;

  return sub_20CF05B10(a1, v4, v5, v6);
}

uint64_t sub_20CF073C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C180);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CF07438(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C180);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CF074A8(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C180) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_20D563818() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v1 + 16);
  v13 = *(v1 + 24);
  v14 = *(v1 + v10);
  v15 = *(v1 + v11);
  v16 = *(v1 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8));
  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = sub_20CEF5FFC;

  return sub_20CF04C28(a1, v12, v13, v1 + v6, v1 + v9, v14, v15, v16);
}

id sub_20CF0766C()
{
  v1 = OBJC_IVAR___HUDashboardFilterCategoryCell_item;
  swift_beginAccess();
  v2 = *&v0[v1];
  *&v0[v1] = 0;

  [v0 setNeedsUpdateConfiguration];
  v3 = OBJC_IVAR___HUDashboardFilterCategoryCell_isRearranging;
  swift_beginAccess();
  if (v0[v3])
  {
    v4 = [v0 layer];
    [v0 frame];
    x = v14.origin.x;
    y = v14.origin.y;
    width = v14.size.width;
    height = v14.size.height;
    CGRectGetHeight(v14);
    v15.origin.x = x;
    v15.origin.y = y;
    v15.size.width = width;
    v15.size.height = height;
    CGRectGetWidth(v15);
    v9 = sub_20D5677F8();
    [v4 removeAnimationForKey_];

    v10 = sub_20D5677F8();
    [v4 removeAnimationForKey_];

    v11 = sub_20D5677F8();
    [v4 removeAnimationForKey_];
  }

  v0[v3] = 0;
  v13.receiver = v0;
  v13.super_class = type metadata accessor for DashboardFilterCategoryCell();
  return objc_msgSendSuper2(&v13, sel_prepareForReuse);
}

void *sub_20CF07A68()
{
  v1 = OBJC_IVAR___HUDashboardFilterCategoryCell_layoutOptions;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_20CF07B14(uint64_t a1)
{
  v3 = OBJC_IVAR___HUDashboardFilterCategoryCell_layoutOptions;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_20CF07B6C(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___HUDashboardFilterCategoryCell_layoutOptions;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

uint64_t sub_20CF07C74()
{
  v1 = OBJC_IVAR___HUDashboardFilterCategoryCell_areCellContentsHidden;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_20CF07D0C(char a1)
{
  v3 = OBJC_IVAR___HUDashboardFilterCategoryCell_areCellContentsHidden;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void *sub_20CF07E08()
{
  v1 = OBJC_IVAR___HUDashboardFilterCategoryCell_item;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_20CF07EDC(void *a1)
{
  v3 = OBJC_IVAR___HUDashboardFilterCategoryCell_item;
  swift_beginAccess();
  v4 = *&v1[v3];
  *&v1[v3] = a1;
  v5 = a1;

  [v1 setNeedsUpdateConfiguration];
}

id sub_20CF07F50(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___HUDashboardFilterCategoryCell_item;
  swift_beginAccess();
  v5 = *&v3[v4];
  *&v3[v4] = v2;
  v6 = v2;

  return [v3 setNeedsUpdateConfiguration];
}

id (*sub_20CF07FC0(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_20CF08024;
}

id sub_20CF08024(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);

    return [v5 setNeedsUpdateConfiguration];
  }

  return result;
}

uint64_t sub_20CF081E4()
{
  v1 = OBJC_IVAR___HUDashboardFilterCategoryCell_backgroundDisplayStyle;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_20CF0827C(uint64_t a1)
{
  v3 = OBJC_IVAR___HUDashboardFilterCategoryCell_backgroundDisplayStyle;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_20CF08458(uint64_t a1)
{
  v3 = OBJC_IVAR___HUDashboardFilterCategoryCell_backgroundEffectGrouper;
  swift_beginAccess();
  v4 = *&v1[v3];
  *&v1[v3] = a1;
  if (!a1)
  {
    if (!v4)
    {
      return swift_unknownObjectRelease();
    }

    goto LABEL_6;
  }

  if (v4)
  {
    v5 = v4 == a1;
  }

  else
  {
    v5 = 0;
  }

  if (!v5)
  {
LABEL_6:
    swift_unknownObjectRetain();
    [v1 setNeedsUpdateConfiguration];
    swift_unknownObjectRelease();
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_20CF084EC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___HUDashboardFilterCategoryCell_backgroundEffectGrouper;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  swift_unknownObjectRetain();
  sub_20CF0855C(v5);
  return swift_unknownObjectRelease();
}

id sub_20CF0855C(uint64_t a1)
{
  v3 = OBJC_IVAR___HUDashboardFilterCategoryCell_backgroundEffectGrouper;
  result = swift_beginAccess();
  v5 = *&v1[v3];
  if (v5)
  {
    if (v5 == a1)
    {
      return result;
    }
  }

  else if (!a1)
  {
    return result;
  }

  return [v1 setNeedsUpdateConfiguration];
}

void (*sub_20CF085D0(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR___HUDashboardFilterCategoryCell_backgroundEffectGrouper;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  swift_unknownObjectRetain();
  return sub_20CF0866C;
}

void sub_20CF0866C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v5 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v6 = *(v5 + v4);
  *(v5 + v4) = v3;
  if (a2)
  {
    if (v3)
    {
      if (v3 == v6)
      {
        swift_unknownObjectRetain();
LABEL_10:
        swift_unknownObjectRelease();
        goto LABEL_13;
      }
    }

    else if (!v6)
    {
      goto LABEL_10;
    }

    v7 = v2[4];
    swift_unknownObjectRetain_n();
    [v7 setNeedsUpdateConfiguration];
    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  if (!v3)
  {
    if (!v6)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (v3 != v6)
  {
LABEL_12:
    v8 = v2[4];
    swift_unknownObjectRetain();
    [v8 setNeedsUpdateConfiguration];
    swift_unknownObjectRelease();
  }

LABEL_13:
  swift_unknownObjectRelease();

  free(v2);
}

uint64_t sub_20CF0875C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81E080);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  MEMORY[0x28223BE20](v4);
  v8 = v27 - v7 + 16;
  v9 = sub_20D5661A8();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  MEMORY[0x28223BE20](v11);
  v15 = v27 - v14 + 16;
  v16 = sub_20D5660D8();
  v28 = v16;
  v29 = MEMORY[0x277D74BA8];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v27);
  (*(*(v16 - 8) + 16))(boxed_opaque_existential_1, a1, v16);
  v18 = OBJC_IVAR___HUDashboardFilterCategoryCell_backgroundDisplayStyle;
  v19 = swift_beginAccess();
  v30 = *(v1 + v18);
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v26 = v1;
  MEMORY[0x20F31D5D0](v19);
  v20 = *(v10 + 48);
  if (v20(v8, 1, v9) == 1)
  {
    sub_20D566178();
    if (v20(v8, 1, v9) != 1)
    {
      sub_20CEF928C(v8, &unk_27C81E080);
    }
  }

  else
  {
    (*(v10 + 32))(v13, v8, v9);
  }

  v21 = *(v10 + 16);
  v21(v15, v13, v9);
  __swift_project_boxed_opaque_existential_1(v27, v28);
  v22 = sub_20D566068();
  v23 = [v22 preferredContentSizeCategory];

  sub_20D568168();
  sub_20D566138();
  sub_20D00C12C(v15);
  sub_20D00C37C();
  v24 = *(v10 + 8);
  v24(v13, v9);
  sub_20D566138();
  v21(v6, v15, v9);
  (*(v10 + 56))(v6, 0, 1, v9);
  MEMORY[0x20F31D5E0](v6);
  v24(v15, v9);
  return sub_20CF0A268(v27);
}

uint64_t sub_20CF08AE8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_20D565988();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x20F31D5B0](&v96, v6);
  if (!*(&v97 + 1))
  {
    sub_20CEF928C(&v96, &qword_27C81C790);
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C7B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    sub_20CF53488(v91);
    v16 = v93;
    v15 = v92;
    v14 = v91[4];
    v13 = v91[5];
    v12 = v91[2];
    v11 = v91[3];
    v10 = v91[0];
    v9 = v91[1];
    goto LABEL_6;
  }

  v10 = v104;
  v9 = v105;
  v12 = v106;
  v11 = v107;
  v14 = v108;
  v13 = v109;
  v15 = *v110;
  v16 = *&v110[8];
LABEL_6:
  v80[0] = v10;
  v80[1] = v9;
  v80[2] = v12;
  v80[3] = v11;
  v80[4] = v14;
  v80[5] = v13;
  *&v81[0] = v15;
  *(v81 + 8) = v16;
  v108 = v14;
  v109 = v13;
  *v110 = v81[0];
  *&v110[16] = *(&v16 + 1);
  v104 = v10;
  v105 = v9;
  v106 = v12;
  v107 = v11;
  sub_20CF09980(a1, &v104, v82);
  v17 = OBJC_IVAR___HUDashboardFilterCategoryCell_item;
  swift_beginAccess();
  v54 = v17;
  v18 = *&v2[v17];
  v19 = v18;
  sub_20CF51360(v18, &v83);

  sub_20CF0A164(v82);
  v77 = v87;
  v78 = v88;
  v79 = v89;
  v73 = v83;
  v74 = v84;
  v75 = v85;
  v76 = v86;
  v20 = v90;
  v21 = OBJC_IVAR___HUDashboardFilterCategoryCell_layoutOptions;
  swift_beginAccess();
  v22 = *&v2[v21];
  if (v22 && (objc_opt_self(), (v23 = swift_dynamicCastObjCClass()) != 0))
  {
    v24 = v23;
    v100 = v87;
    v101 = v88;
    v102 = v89;
    v96 = v83;
    v97 = v84;
    v99 = v86;
    v98 = v85;
    v103 = v20;
    v25 = v22;
    sub_20CF51784(v24, v94);

    v69 = v87;
    v70 = v88;
    v71 = v89;
    v65 = v83;
    v66 = v84;
    v67 = v85;
    v68 = v86;
    v72 = v20;
    sub_20CF0A164(&v65);
    v26 = v95;
    v77 = v94[4];
    v78 = v94[5];
    v79 = v94[6];
    v73 = v94[0];
    v74 = v94[1];
    v75 = v94[2];
    v76 = v94[3];
  }

  else
  {
    v53 = v20;
    if (qword_28111FAD0 != -1)
    {
      swift_once();
    }

    v27 = qword_281120C08;
    sub_20D565998();
    v28 = v2;
    v29 = sub_20D565968();
    v30 = sub_20D567EA8();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v52[1] = a1;
      v33 = v32;
      *v31 = 138412546;
      *(v31 + 4) = v28;
      *(v31 + 12) = 2112;
      v52[0] = v5;
      v34 = v4;
      v35 = *&v2[v54];
      *(v31 + 14) = v35;
      *v32 = v28;
      v32[1] = v35;
      v36 = v28;
      v37 = v35;
      v4 = v34;
      v5 = v52[0];
      _os_log_impl(&dword_20CEB6000, v29, v30, "layoutOptions unexpectedly nil or wrong class on %@ %@", v31, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81BE60);
      swift_arrayDestroy();
      MEMORY[0x20F31FC70](v33, -1, -1);
      MEMORY[0x20F31FC70](v31, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    v26 = v53;
  }

  if (*&v2[v54] && (v55 = &unk_28251B6B8, (v38 = swift_dynamicCastObjCProtocolConditional()) != 0) && (v39 = [v38 hu_tintColor]) != 0)
  {
    v40 = v39;
    if (qword_28111FD88 != -1)
    {
      swift_once();
    }

    sub_20D5660D8();
    sub_20D566078();
    if (*(&v66 + 1))
    {
      swift_dynamicCast();
    }

    else
    {
      sub_20CEF928C(&v65, &unk_27C81C7A0);
    }

    v41 = [v40 hu:HFPrimaryStateFromBOOL() colorForPrimaryState:?];
  }

  else
  {
    v41 = [v2 tintColor];
    if (!v41)
    {
      v41 = [objc_opt_self() blackColor];
    }
  }

  v42 = *MEMORY[0x277D76918];
  v43 = objc_opt_self();
  v44 = [v43 configurationWithTextStyle_];
  v45 = [v43 configurationWithHierarchicalColor_];
  v46 = [v44 configurationByApplyingConfiguration_];

  v61 = v77;
  v62 = v78;
  v63 = v79;
  v57 = v73;
  v58 = v74;
  v59 = v75;
  v60 = v76;
  v64 = v46;
  v56[3] = &_s20ContentConfigurationVN;
  v56[4] = sub_20CF0A1B8();
  v47 = swift_allocObject();
  v56[0] = v47;
  v48 = v62;
  *(v47 + 80) = v61;
  *(v47 + 96) = v48;
  *(v47 + 112) = v63;
  *(v47 + 128) = v64;
  v49 = v58;
  *(v47 + 16) = v57;
  *(v47 + 32) = v49;
  v50 = v60;
  *(v47 + 48) = v59;
  *(v47 + 64) = v50;
  sub_20CF0A20C(&v57, &v65);
  MEMORY[0x20F31D5C0](v56);

  sub_20CF0A164(v80);
  v69 = v77;
  v70 = v78;
  v71 = v79;
  v65 = v73;
  v66 = v74;
  v67 = v75;
  v68 = v76;
  v72 = v46;
  return sub_20CF0A164(&v65);
}

uint64_t sub_20CF09240()
{
  v1 = OBJC_IVAR___HUDashboardFilterCategoryCell_isRearranging;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_20CF092D8(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR___HUDashboardFilterCategoryCell_isRearranging;
  swift_beginAccess();
  if (v1[v3] != v2)
  {
    v4 = [v1 layer];
    [v1 frame];
    x = v9.origin.x;
    y = v9.origin.y;
    width = v9.size.width;
    height = v9.size.height;
    CGRectGetHeight(v9);
    v10.origin.x = x;
    v10.origin.y = y;
    v10.size.width = width;
    v10.size.height = height;
    CGRectGetWidth(v10);
    sub_20D0F0088(v2, v4);
  }

  v1[v3] = v2;
}

void (*sub_20CF093FC(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR___HUDashboardFilterCategoryCell_isRearranging;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_20CF09490;
}

void sub_20CF09490(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 24);
  v3 = *(*a1 + 32);
  v5 = *(*a1 + 40);
  if (a2)
  {
    if (((v5 ^ v4[v3]) & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else if (((v5 ^ v4[v3]) & 1) == 0)
  {
    goto LABEL_6;
  }

  v6 = [*(*a1 + 24) layer];
  [v4 frame];
  x = v12.origin.x;
  y = v12.origin.y;
  width = v12.size.width;
  height = v12.size.height;
  CGRectGetHeight(v12);
  v13.origin.x = x;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  CGRectGetWidth(v13);
  sub_20D0F0088(v5, v6);

  v4 = v2[3];
  v3 = v2[4];
LABEL_6:
  v4[v3] = v5;

  free(v2);
}

id DashboardFilterCategoryCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id DashboardFilterCategoryCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR___HUDashboardFilterCategoryCell_layoutOptions] = 0;
  v4[OBJC_IVAR___HUDashboardFilterCategoryCell_areCellContentsHidden] = 0;
  *&v4[OBJC_IVAR___HUDashboardFilterCategoryCell_item] = 0;
  *&v4[OBJC_IVAR___HUDashboardFilterCategoryCell_backgroundDisplayStyle] = 1;
  *&v4[OBJC_IVAR___HUDashboardFilterCategoryCell_backgroundEffectGrouper] = 0;
  v4[OBJC_IVAR___HUDashboardFilterCategoryCell_isRearranging] = 0;
  v10.receiver = v4;
  v10.super_class = type metadata accessor for DashboardFilterCategoryCell();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

id DashboardFilterCategoryCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id DashboardFilterCategoryCell.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR___HUDashboardFilterCategoryCell_layoutOptions] = 0;
  v1[OBJC_IVAR___HUDashboardFilterCategoryCell_areCellContentsHidden] = 0;
  *&v1[OBJC_IVAR___HUDashboardFilterCategoryCell_item] = 0;
  *&v1[OBJC_IVAR___HUDashboardFilterCategoryCell_backgroundDisplayStyle] = 1;
  *&v1[OBJC_IVAR___HUDashboardFilterCategoryCell_backgroundEffectGrouper] = 0;
  v1[OBJC_IVAR___HUDashboardFilterCategoryCell_isRearranging] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DashboardFilterCategoryCell();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id DashboardFilterCategoryCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DashboardFilterCategoryCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_20CF09980@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_20D5660D8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, a1, v6);
  v49 = *a2;
  v10 = *(a2 + 24);
  v50 = *(a2 + 16);
  v47 = *(a2 + 32);
  v11 = *(a2 + 56);
  v48 = *(a2 + 48);
  v46 = *(a2 + 112);
  v12 = *(a2 + 96);
  v44 = *(a2 + 80);
  v45 = v12;
  v43 = *(a2 + 64);
  sub_20CF0A20C(a2, &v33);
  if (qword_28111FD88 != -1)
  {
    swift_once();
  }

  sub_20D566078();
  (*(v7 + 8))(v9, v6);
  if (!*(&v26 + 1))
  {
    sub_20CEF928C(&v25, &unk_27C81C7A0);
LABEL_8:
    v14 = 1.0;
    v13 = &selRef_whiteColor;
    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0 || (v33 & 1) == 0)
  {
    goto LABEL_8;
  }

  v13 = &selRef_blackColor;
  v14 = 0.18;
LABEL_9:
  v15 = [objc_opt_self() *v13];

  v16 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:v14 alpha:0.6];
  v25 = v49;
  v27 = v47;
  v29 = v43;
  v30 = v44;
  v31 = v45;
  v33 = v49;
  v36 = v47;
  v40 = v44;
  v41 = v45;
  v32 = v46;
  *&v26 = v50;
  *(&v26 + 1) = v15;
  v34 = v50;
  v35 = v15;
  *&v28 = v48;
  *(&v28 + 1) = v16;
  v37 = v48;
  v38 = v16;
  v42 = v46;
  v39 = v43;
  sub_20CF0A20C(&v25, &v24);
  sub_20CF0A164(&v33);
  v17 = v30;
  v18 = v31;
  v19 = v28;
  *(a3 + 64) = v29;
  *(a3 + 80) = v17;
  *(a3 + 96) = v18;
  result = *&v25;
  v21 = v26;
  v22 = v27;
  *a3 = v25;
  *(a3 + 16) = v21;
  *(a3 + 112) = v32;
  *(a3 + 32) = v22;
  *(a3 + 48) = v19;
  return result;
}

unint64_t sub_20CF09C88()
{
  result = qword_27C81C6C0;
  if (!qword_27C81C6C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C81C6C0);
  }

  return result;
}

id keypath_getTm_0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  v6 = *(v4 + v5);
  *a3 = v6;

  return v6;
}

uint64_t keypath_get_2Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = swift_beginAccess();
  *a3 = *(v4 + v5);
  return result;
}

unint64_t sub_20CF0A1B8()
{
  result = qword_27C81C798;
  if (!qword_27C81C798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81C798);
  }

  return result;
}

uint64_t sub_20CF0A2BC()
{
  v0 = sub_20D565988();
  __swift_allocate_value_buffer(v0, qword_281120958);
  __swift_project_value_buffer(v0, qword_281120958);
  return sub_20D565978();
}

uint64_t static Logger.controlCenterLogger.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_281120950 != -1)
  {
    swift_once();
  }

  v2 = sub_20D565988();
  v3 = __swift_project_value_buffer(v2, qword_281120958);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
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
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

id sub_20CF0A490()
{
  sub_20CF0A51C();
  objc_opt_self();
  v0 = swift_dynamicCastObjCClassUnconditional();

  return v0;
}

unint64_t sub_20CF0A51C()
{
  result = qword_28111FFE0;
  if (!qword_28111FFE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28111FFE0);
  }

  return result;
}

id UtilityDetailsViewController.__allocating_init(home:details:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtC6HomeUI28UtilityDetailsViewController_home] = a1;
  *&v5[OBJC_IVAR____TtC6HomeUI28UtilityDetailsViewController_details] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_initWithNibName_bundle_, 0, 0);
}

id UtilityDetailsViewController.init(home:details:)(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC6HomeUI28UtilityDetailsViewController_home] = a1;
  *&v2[OBJC_IVAR____TtC6HomeUI28UtilityDetailsViewController_details] = a2;
  v4.receiver = v2;
  v4.super_class = type metadata accessor for UtilityDetailsViewController();
  return objc_msgSendSuper2(&v4, sel_initWithNibName_bundle_, 0, 0);
}

void sub_20CF0A734()
{
  v1 = type metadata accessor for UtilityDetailsView(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for UtilityDetailsViewController();
  v42.receiver = v0;
  v42.super_class = v4;
  v5 = v0;
  objc_msgSendSuper2(&v42, sel_viewDidLoad);
  v6 = *&v5[OBJC_IVAR____TtC6HomeUI28UtilityDetailsViewController_details];
  v7 = *&v5[OBJC_IVAR____TtC6HomeUI28UtilityDetailsViewController_home];
  sub_20D5663C8();
  sub_20CF0BF3C(v5, v7, v6, v3);
  v8 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C7C8));
  v9 = sub_20D566C08();
  [v5 addChildViewController_];
  v10 = [v5 view];
  if (!v10)
  {
    __break(1u);
    goto LABEL_14;
  }

  v11 = v10;
  v12 = [v9 view];
  if (!v12)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = v12;
  [v11 addSubview_];

  v14 = [v9 view];
  if (!v14)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  [v14 setTranslatesAutoresizingMaskIntoConstraints_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_20D5BC4C0;
  v16 = [v9 view];

  if (!v16)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v17 = [v16 topAnchor];

  v18 = [v5 view];
  if (!v18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19 = v18;
  v20 = [v18 topAnchor];

  v21 = [v17 constraintEqualToAnchor_];
  *(v15 + 32) = v21;
  v22 = [v9 view];

  if (!v22)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v23 = [v22 bottomAnchor];

  v24 = [v5 view];
  if (!v24)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v25 = v24;
  v26 = [v24 bottomAnchor];

  v27 = [v23 constraintEqualToAnchor_];
  *(v15 + 40) = v27;
  v28 = [v9 view];

  if (!v28)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v29 = [v28 leadingAnchor];

  v30 = [v5 view];
  if (!v30)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v31 = v30;
  v32 = [v30 leadingAnchor];

  v33 = [v29 constraintEqualToAnchor_];
  *(v15 + 48) = v33;
  v34 = [v9 view];

  if (!v34)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v35 = [v34 trailingAnchor];

  v36 = [v5 view];
  if (v36)
  {
    v37 = v36;
    v38 = objc_opt_self();
    v39 = [v37 trailingAnchor];

    v40 = [v35 constraintEqualToAnchor_];
    *(v15 + 56) = v40;
    sub_20CF0AC18();
    v41 = sub_20D567A58();

    [v38 activateConstraints_];

    return;
  }

LABEL_23:
  __break(1u);
}

unint64_t sub_20CF0AC18()
{
  result = qword_28111FEC0;
  if (!qword_28111FEC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28111FEC0);
  }

  return result;
}

id UtilityDetailsViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_20D5677F8();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id UtilityDetailsViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UtilityDetailsViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t static AccessoryControlsHelper.controlModules(for:)()
{
  v0 = sub_20D5641B8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D563F48();
  v4 = sub_20D563F18();
  sub_20D563EC8();

  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = MEMORY[0x277D15AC0];
    v7 = MEMORY[0x277D15A08];
    v8 = MEMORY[0x277D15030];
LABEL_5:
    v9 = sub_20CF0B168(v5, v3, v6, v7, v8);
    goto LABEL_6;
  }

  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = MEMORY[0x277D164A0];
    v7 = MEMORY[0x277D15A20];
    v8 = MEMORY[0x277D15038];
    goto LABEL_5;
  }

  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  if (v12)
  {
    v9 = sub_20CF0B3E0(v12);
  }

  else
  {
    objc_opt_self();
    v13 = swift_dynamicCastObjCClass();
    if (v13)
    {
      v14 = MEMORY[0x277D16060];
      v15 = MEMORY[0x277D15A10];
      v16 = MEMORY[0x277D15020];
    }

    else
    {
      objc_opt_self();
      v13 = swift_dynamicCastObjCClass();
      if (!v13)
      {
        v10 = MEMORY[0x277D84F90];
        goto LABEL_7;
      }

      v14 = MEMORY[0x277D16448];
      v15 = MEMORY[0x277D15A18];
      v16 = MEMORY[0x277D15028];
    }

    v9 = sub_20CF0B6D0(v13, v3, v14, v15, v16);
  }

LABEL_6:
  v10 = v9;
LABEL_7:
  (*(v1 + 8))(v3, v0);
  return v10;
}

unint64_t AccessoryControlsHelper.ControlStyle.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

uint64_t *sub_20CF0B118@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1;
  if (*result > 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

id AccessoryControlsHelper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccessoryControlsHelper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20CF0B168(void *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t), uint64_t (*a5)(char *))
{
  v27 = a5;
  v8 = sub_20D563818();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a3(0);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v26 - v18;
  v20 = a4(v17);
  v21 = [a1 uniqueIdentifier];
  sub_20D5637E8();

  if (*(v20 + 16) && (v22 = sub_20CEED7C0(v11), (v23 & 1) != 0))
  {
    (*(v13 + 16))(v16, *(v20 + 56) + *(v13 + 72) * v22, v12);
    (*(v9 + 8))(v11, v8);

    (*(v13 + 32))(v19, v16, v12);
    v24 = v27(v19);
    (*(v13 + 8))(v19, v12);
    return v24;
  }

  else
  {

    (*(v9 + 8))(v11, v8);
    return MEMORY[0x277D84F90];
  }
}

uint64_t sub_20CF0B3E0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81E180);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v23 - v3;
  v5 = sub_20D563818();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20D5644A8();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v23 - v14;
  v16 = sub_20D564178();
  v17 = [a1 uniqueIdentifier];
  sub_20D5637E8();

  if (*(v16 + 16) && (v18 = sub_20CEED7C0(v8), (v19 & 1) != 0))
  {
    (*(v10 + 16))(v13, *(v16 + 56) + *(v10 + 72) * v18, v9);
    (*(v6 + 8))(v8, v5);

    (*(v10 + 32))(v15, v13, v9);
    v20 = sub_20D5641B8();
    (*(*(v20 - 8) + 56))(v4, 1, 1, v20);
    v21 = MEMORY[0x20F31ABA0](v15, v4);
    sub_20CF0BB10(v4);
    (*(v10 + 8))(v15, v9);
    return v21;
  }

  else
  {

    (*(v6 + 8))(v8, v5);
    return MEMORY[0x277D84F90];
  }
}

uint64_t sub_20CF0B6D0(void *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t), uint64_t (*a5)(char *, char *))
{
  v38 = a5;
  v39 = a1;
  v8 = sub_20D563FA8();
  v36 = *(v8 - 8);
  v37 = v8;
  MEMORY[0x28223BE20](v8);
  v35 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20D563DA8();
  v32 = *(v10 - 8);
  v33 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_20D563818();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a3(0);
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v32 - v23;
  v34 = a2;
  v25 = a4(v22);
  v26 = [v39 uniqueIdentifier];
  sub_20D5637E8();

  if (*(v25 + 16) && (v27 = sub_20CEED7C0(v16), (v28 & 1) != 0))
  {
    (*(v18 + 16))(v21, *(v25 + 56) + *(v18 + 72) * v27, v17);
    (*(v14 + 8))(v16, v13);

    (*(v18 + 32))(v24, v21, v17);
    sub_20D564118();
    v29 = v35;
    sub_20D563D08();
    (*(v32 + 8))(v12, v33);
    v30 = v38(v24, v29);
    (*(v36 + 8))(v29, v37);
    (*(v18 + 8))(v24, v17);
    return v30;
  }

  else
  {

    (*(v14 + 8))(v16, v13);
    return MEMORY[0x277D84F90];
  }
}

unint64_t sub_20CF0BAAC()
{
  result = qword_27C81C7D0;
  if (!qword_27C81C7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81C7D0);
  }

  return result;
}

uint64_t sub_20CF0BB10(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81E180);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_20CF0BBC0()
{
  sub_20CF0BD08();
  if (v0 <= 0x3F)
  {
    sub_20CF0BD54();
    if (v1 <= 0x3F)
    {
      sub_20CF0BDE8(319, &qword_27C81C7F8, type metadata accessor for UtilityDetailsView.SupportMethod, MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        sub_20CF0BDE8(319, &qword_27C81C800, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          sub_20CF0BE4C();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_20CF0BD08()
{
  result = qword_28111FB80;
  if (!qword_28111FB80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28111FB80);
  }

  return result;
}

void sub_20CF0BD54()
{
  if (!qword_27C81C7F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C81CE20);
    v0 = sub_20D567788();
    if (!v1)
    {
      atomic_store(v0, &qword_27C81C7F0);
    }
  }
}

void sub_20CF0BDE8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_20CF0BE4C()
{
  if (!qword_27C81C808)
  {
    v0 = sub_20D567478();
    if (!v1)
    {
      atomic_store(v0, &qword_27C81C808);
    }
  }
}

uint64_t sub_20CF0BEC4()
{
  result = sub_20D5636B8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_20CF0BF3C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v142 = a2;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CB80);
  v7 = *(v130 - 8);
  v8 = MEMORY[0x28223BE20](v130);
  v10 = &v120 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v120 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81CDF0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v128 = &v120 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v127 = &v120 - v17;
  MEMORY[0x28223BE20](v16);
  v137 = (&v120 - v18);
  v19 = sub_20D5636B8();
  v134 = *(v19 - 8);
  v135 = v19;
  v20 = MEMORY[0x28223BE20](v19);
  v126 = &v120 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v124 = &v120 - v23;
  MEMORY[0x28223BE20](v22);
  v136 = &v120 - v24;
  v25 = type metadata accessor for UtilityDetailsView.SupportMethod(0);
  v26 = *(v25 - 8);
  v139 = v25;
  v140 = v26;
  v27 = MEMORY[0x28223BE20](v25);
  v141 = &v120 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v125 = &v120 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v123 = &v120 - v32;
  MEMORY[0x28223BE20](v31);
  v121 = &v120 - v33;
  swift_unknownObjectWeakInit();
  v34 = type metadata accessor for UtilityDetailsView(0);
  v35 = *(v34 + 36);
  *(a4 + v35) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C8F0);
  v36 = a3;
  swift_storeEnumTagMultiPayload();
  v37 = a4 + *(v34 + 40);
  LOBYTE(v143) = 0;
  sub_20D567438();
  v38 = v146;
  *v37 = v145;
  *(v37 + 8) = v38;
  v131 = a1;
  swift_unknownObjectWeakAssign();
  *(a4 + 8) = v142;
  *(a4 + 16) = a3;
  v133 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CB88);
  v39 = *(v7 + 72);
  v40 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v142 = v39;
  v129 = swift_allocObject();
  v138 = v129 + v40;
  if (*(a3 + 16))
  {
    sub_20D5663C8();
    v41 = sub_20CEED668(0xD000000000000014, 0x800000020D5CE280);
    v42 = v139;
    if ((v43 & 1) != 0 && (sub_20CED43FC(*(v36 + 56) + 32 * v41, &v145), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CE20), swift_dynamicCast()))
    {
      v44 = v143;
      v45 = v144;
    }

    else
    {
      v44 = 0;
      v45 = 0;
    }
  }

  else
  {
    sub_20D5663C8();
    v44 = 0;
    v45 = 0;
    v42 = v139;
  }

  v122 = 0xD00000000000001FLL;
  v46 = sub_20D5677F8();
  v47 = HULocalizedString(v46);

  v48 = sub_20D567838();
  v50 = v49;

  if (!v45)
  {
    goto LABEL_14;
  }

  v51 = HIBYTE(v45) & 0xF;
  if ((v45 & 0x2000000000000000) == 0)
  {
    v51 = v44 & 0xFFFFFFFFFFFFLL;
  }

  if (!v51)
  {

LABEL_14:

    v55 = 1;
    goto LABEL_16;
  }

  v145 = 980182388;
  v146 = 0xE400000000000000;
  MEMORY[0x20F31CDB0](v44, v45);

  v52 = v137;
  sub_20D5636A8();

  v53 = v134;
  v54 = v135;
  if ((*(v134 + 48))(v52, 1, v135) == 1)
  {

    sub_20CEF928C(v52, &unk_27C81CDF0);
    v55 = 1;
  }

  else
  {
    v120 = 0x800000020D5CE2C0;
    v56 = *(v53 + 32);
    v57 = v136;
    v56(v136, v52, v54);
    v137 = v48;
    v58 = v121;
    v56(v121, v57, v54);
    v59 = (v58 + v42[5]);
    *v59 = v137;
    v59[1] = v50;
    v60 = (v58 + v42[6]);
    *v60 = 0x69662E656E6F6870;
    v60[1] = 0xEA00000000006C6CLL;
    v61 = (v58 + v42[7]);
    v62 = v120;
    *v61 = 0xD000000000000020;
    v61[1] = v62;
    sub_20CF1501C(v58, v138, type metadata accessor for UtilityDetailsView.SupportMethod);
    v55 = 0;
  }

LABEL_16:
  v63 = (v140 + 56);
  v137 = *(v140 + 56);
  v137(v138, v55, 1, v42);
  if (*(v36 + 16) && (v64 = sub_20CEED668(0xD000000000000012, 0x800000020D5CE2F0), (v65 & 1) != 0) && (sub_20CED43FC(*(v36 + 56) + 32 * v64, &v145), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CE20), swift_dynamicCast()))
  {
    v67 = v143;
    v66 = v144;
  }

  else
  {
    v67 = 0;
    v66 = 0;
  }

  v68 = sub_20D5677F8();
  v69 = HULocalizedString(v68);

  v70 = sub_20D567838();
  v72 = v71;

  v136 = v63;
  if (!v66)
  {
    goto LABEL_28;
  }

  v73 = HIBYTE(v66) & 0xF;
  if ((v66 & 0x2000000000000000) == 0)
  {
    v73 = v67 & 0xFFFFFFFFFFFFLL;
  }

  if (!v73)
  {

LABEL_28:

    goto LABEL_29;
  }

  v121 = v70;
  v145 = 980643187;
  v146 = 0xE400000000000000;
  MEMORY[0x20F31CDB0](v67, v66);

  v74 = v127;
  sub_20D5636A8();

  v75 = v134;
  v76 = v135;
  if ((*(v134 + 48))(v74, 1, v135) != 1)
  {
    v120 = 0x800000020D5CE340;
    v106 = *(v75 + 32);
    v107 = v124;
    v106(v124, v74, v76);
    v108 = v123;
    v106(v123, v107, v76);
    v109 = (v108 + v42[5]);
    *v109 = v121;
    v109[1] = v72;
    v110 = v108 + v42[6];
    strcpy(v110, "message.fill");
    *(v110 + 13) = 0;
    *(v110 + 14) = -5120;
    v111 = (v108 + v42[7]);
    v112 = v120;
    *v111 = v122;
    v111[1] = v112;
    sub_20CF1501C(v108, v138 + v142, type metadata accessor for UtilityDetailsView.SupportMethod);
    v77 = 0;
    goto LABEL_30;
  }

  sub_20CEF928C(v74, &unk_27C81CDF0);
LABEL_29:
  v77 = 1;
LABEL_30:
  v137(v138 + v142, v77, 1, v42);
  if (*(v36 + 16) && (v78 = sub_20CEED668(0x577974696C697475, 0xEE00657469736265), (v79 & 1) != 0) && (sub_20CED43FC(*(v36 + 56) + 32 * v78, &v145), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CE20), swift_dynamicCast()))
  {
    v81 = v143;
    v80 = v144;
  }

  else
  {
    v81 = 0;
    v80 = 0;
  }

  v82 = v138 + 2 * v142;
  v83 = sub_20D5677F8();
  v84 = HULocalizedString(v83);

  v85 = sub_20D567838();
  v87 = v86;

  v132 = v36;
  if (!v80)
  {
    goto LABEL_42;
  }

  v88 = HIBYTE(v80) & 0xF;
  if ((v80 & 0x2000000000000000) == 0)
  {
    v88 = v81 & 0xFFFFFFFFFFFFLL;
  }

  if (!v88)
  {

LABEL_42:

    goto LABEL_43;
  }

  v89 = v128;
  sub_20D5636A8();

  v90 = v134;
  v91 = v135;
  if ((*(v134 + 48))(v89, 1, v135) != 1)
  {
    v127 = 0x800000020D5CE390;
    v113 = *(v90 + 32);
    v134 = v82;
    v114 = v126;
    v113(v126, v89, v91);
    v115 = v125;
    v116 = v114;
    v82 = v134;
    v113(v125, v116, v91);
    v117 = (v115 + v42[5]);
    *v117 = v85;
    v117[1] = v87;
    v118 = (v115 + v42[6]);
    *v118 = 0x662E697261666173;
    v118[1] = 0xEB000000006C6C69;
    v119 = (v115 + v42[7]);
    *v119 = 0xD000000000000022;
    v119[1] = v127;
    sub_20CF1501C(v115, v82, type metadata accessor for UtilityDetailsView.SupportMethod);
    v92 = 0;
    goto LABEL_44;
  }

  sub_20CEF928C(v89, &unk_27C81CDF0);
LABEL_43:
  v92 = 1;
LABEL_44:
  v137(v82, v92, 1, v42);
  v93 = (v140 + 48);
  v94 = MEMORY[0x277D84F90];
  v95 = 3;
  v96 = v138;
  do
  {
    sub_20CEF9178(v96, v12, &qword_27C81CB80);
    sub_20CF15584(v12, v10, &qword_27C81CB80);
    if ((*v93)(v10, 1, v42) == 1)
    {
      sub_20CEF928C(v10, &qword_27C81CB80);
    }

    else
    {
      sub_20CF1501C(v10, v141, type metadata accessor for UtilityDetailsView.SupportMethod);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v94 = sub_20CEE82E8(0, v94[2] + 1, 1, v94);
      }

      v98 = v94[2];
      v97 = v94[3];
      if (v98 >= v97 >> 1)
      {
        v94 = sub_20CEE82E8(v97 > 1, v98 + 1, 1, v94);
      }

      v94[2] = v98 + 1;
      sub_20CF1501C(v141, v94 + ((*(v140 + 80) + 32) & ~*(v140 + 80)) + *(v140 + 72) * v98, type metadata accessor for UtilityDetailsView.SupportMethod);
      v42 = v139;
    }

    v96 += v142;
    --v95;
  }

  while (v95);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v100 = v132;
  v99 = v133;
  *(v133 + 24) = v94;
  v101 = v99;
  if (!*(v100 + 16) || (v102 = sub_20CEED668(0x6E6F637369447369, 0xEE0064657463656ELL), (v103 & 1) == 0))
  {

    goto LABEL_58;
  }

  sub_20CED43FC(*(v100 + 56) + 32 * v102, &v145);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CE20);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_58:
    v105 = 0;
    goto LABEL_59;
  }

  v105 = v143;
LABEL_59:
  *(v101 + 32) = v105;
  return result;
}

uint64_t sub_20CF0CD94@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_20D566AE8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C8F0);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for UtilityDetailsView(0);
  sub_20CEF9178(v1 + *(v10 + 36), v9, &qword_27C81C8F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_20D566868();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_20D567EB8();
    v13 = sub_20D566EE8();
    sub_20D565868();

    sub_20D566AD8();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_20CF0CF9C()
{
  sub_20D568D48();
  sub_20D5636B8();
  sub_20CF14128(&qword_27C81CB78, MEMORY[0x277CC9260]);
  sub_20D5677C8();
  sub_20D5678C8();
  sub_20D5678C8();
  sub_20D5678C8();
  return sub_20D568D98();
}

uint64_t sub_20CF0D06C()
{
  sub_20D5636B8();
  sub_20CF14128(&qword_27C81CB78, MEMORY[0x277CC9260]);
  sub_20D5677C8();
  sub_20D5678C8();
  sub_20D5678C8();

  return sub_20D5678C8();
}

uint64_t sub_20CF0D130()
{
  sub_20D568D48();
  sub_20D5636B8();
  sub_20CF14128(&qword_27C81CB78, MEMORY[0x277CC9260]);
  sub_20D5677C8();
  sub_20D5678C8();
  sub_20D5678C8();
  sub_20D5678C8();
  return sub_20D568D98();
}

uint64_t sub_20CF0D264@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v128 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C838);
  v130 = *(v3 - 8);
  v131 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v129 = v114 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v138 = v114 - v6;
  v7 = type metadata accessor for UtilityDetailsView(0);
  v117 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v118 = v8;
  v119 = v114 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C840);
  MEMORY[0x28223BE20](v9 - 8);
  v132 = (v114 - v10);
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C848);
  MEMORY[0x28223BE20](v120);
  v123 = v114 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C850);
  v124 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v122 = v114 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v121 = v114 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C858);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v137 = v114 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v135 = v114 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C860);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v136 = v114 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v139 = v114 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C868);
  v25 = MEMORY[0x28223BE20](v24);
  v134 = v114 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = v114 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81CDF0);
  v30 = MEMORY[0x28223BE20](v29 - 8);
  v32 = v114 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v34 = v114 - v33;
  v35 = *(a1 + 16);
  v36 = *(v35 + 16);
  v125 = v12;
  if (v36)
  {
    v37 = sub_20CEED668(0xD000000000000011, 0x800000020D5CDD90);
    if (v38)
    {
      sub_20CED43FC(*(v35 + 56) + 32 * v37, v145);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CE20);
      swift_dynamicCast();
    }
  }

  sub_20D5636A8();

  v126 = v34;
  sub_20CEF9178(v34, v32, &unk_27C81CDF0);
  *(swift_allocObject() + 16) = 0x4053000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C870);
  sub_20CF13CE8();
  sub_20D566748();
  sub_20D5675E8();
  sub_20D566848();
  v39 = &v28[*(v24 + 36)];
  v40 = v150;
  *v39 = v149;
  *(v39 + 1) = v40;
  *(v39 + 2) = v151;
  v41 = *(v35 + 16);
  v127 = a1;
  v133 = v28;
  if (v41 && (v42 = sub_20CEED668(0x4E7974696C697475, 0xEB00000000656D61), (v43 & 1) != 0) && (sub_20CED43FC(*(v35 + 56) + 32 * v42, v145), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CE20), (swift_dynamicCast() & 1) != 0))
  {
    v45 = *(&v140 + 1);
    v44 = v140;
  }

  else
  {
    v44 = 0;
    v45 = 0xE000000000000000;
  }

  *&v145[0] = v44;
  *(&v145[0] + 1) = v45;
  sub_20CEF44D8();
  v46 = sub_20D5670E8();
  v48 = v47;
  v50 = v49;
  sub_20D566FB8();
  sub_20D566FA8();

  v51 = sub_20D5670C8();
  v53 = v52;
  v55 = v54;
  v57 = v56;

  sub_20CF13F34(v46, v48, v50 & 1);

  KeyPath = swift_getKeyPath();
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C8B0);
  inited = swift_initStackObject();
  v115 = xmmword_20D5BC4B0;
  *(inited + 16) = xmmword_20D5BC4B0;
  LOBYTE(v46) = sub_20D566F18();
  *(inited + 32) = v46;
  v60 = sub_20D566F28();
  *(inited + 33) = v60;
  v61 = sub_20D566F48();
  sub_20D566F48();
  if (sub_20D566F48() != v46)
  {
    v61 = sub_20D566F48();
  }

  sub_20D566F48();
  if (sub_20D566F48() != v60)
  {
    v61 = sub_20D566F48();
  }

  sub_20D566778();
  v148 = v55 & 1;
  v147 = 0;
  *&v140 = v51;
  *(&v140 + 1) = v53;
  LOBYTE(v141) = v55 & 1;
  *(&v141 + 1) = v57;
  *&v142 = KeyPath;
  BYTE8(v142) = 1;
  LOBYTE(v143) = v61;
  *(&v143 + 1) = v62;
  *&v144[0] = v63;
  *(&v144[0] + 1) = v64;
  *&v144[1] = v65;
  BYTE8(v144[1]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C8B8);
  sub_20CF13F44();
  sub_20D567188();
  v145[2] = v142;
  v145[3] = v143;
  v146[0] = v144[0];
  *(v146 + 9) = *(v144 + 9);
  v145[0] = v140;
  v145[1] = v141;
  sub_20CEF928C(v145, &qword_27C81C8B8);
  v66 = v127;
  v67 = *(v127 + 24);
  if (*(v67 + 16))
  {
    v68 = sub_20D566B38();
    v69 = v132;
    *v132 = v68;
    v69[1] = 0x4024000000000000;
    *(v69 + 16) = 0;
    v114[1] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C8E8) + 44);
    v70 = *(v67 + 16) == 3;
    *&v140 = v67;
    v114[0] = swift_getKeyPath();
    v71 = v119;
    sub_20CF14FB4(v66, v119, type metadata accessor for UtilityDetailsView);
    v72 = (*(v117 + 80) + 16) & ~*(v117 + 80);
    v73 = v72 + v118;
    v74 = swift_allocObject();
    sub_20CF1501C(v71, v74 + v72, type metadata accessor for UtilityDetailsView);
    *(v74 + v73) = v70;
    sub_20D5663C8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C8F8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C900);
    sub_20CF156D0(&qword_27C81C908, &qword_27C81C8F8);
    sub_20CF14128(&qword_27C81C910, type metadata accessor for UtilityDetailsView.SupportMethod);
    sub_20CF14170();
    sub_20D567538();
    v75 = swift_initStackObject();
    *(v75 + 16) = v115;
    v76 = sub_20D566F38();
    *(v75 + 32) = v76;
    v77 = sub_20D566F58();
    *(v75 + 33) = v77;
    v78 = sub_20D566F48();
    sub_20D566F48();
    if (sub_20D566F48() != v76)
    {
      v78 = sub_20D566F48();
    }

    sub_20D566F48();
    v79 = sub_20D566F48();
    v80 = v125;
    if (v79 != v77)
    {
      v78 = sub_20D566F48();
    }

    v81 = v135;
    v82 = v123;
    sub_20CF15584(v132, v123, &qword_27C81C840);
    v83 = v82 + *(v120 + 36);
    *v83 = v78;
    *(v83 + 8) = 0u;
    *(v83 + 24) = 0u;
    *(v83 + 40) = 1;
    v84 = sub_20D566F28();
    sub_20D566778();
    v86 = v85;
    v88 = v87;
    v90 = v89;
    v92 = v91;
    v93 = v122;
    sub_20CF15584(v82, v122, &qword_27C81C848);
    v94 = v93 + *(v80 + 36);
    *v94 = v84;
    *(v94 + 8) = v86;
    *(v94 + 16) = v88;
    *(v94 + 24) = v90;
    *(v94 + 32) = v92;
    *(v94 + 40) = 0;
    v95 = v93;
    v96 = v121;
    sub_20CF15584(v95, v121, &qword_27C81C850);
    sub_20CF15584(v96, v81, &qword_27C81C850);
    v97 = 0;
  }

  else
  {
    v97 = 1;
    v81 = v135;
    v80 = v125;
  }

  v98 = (*(v124 + 56))(v81, v97, 1, v80);
  MEMORY[0x28223BE20](v98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C930);
  sub_20CF156D0(&qword_27C81C938, &qword_27C81C930);
  v99 = v138;
  sub_20D567068();
  v100 = v134;
  sub_20CEF9178(v133, v134, &qword_27C81C868);
  v101 = v136;
  sub_20CEF9178(v139, v136, &qword_27C81C860);
  v102 = v81;
  v103 = v137;
  sub_20CEF9178(v102, v137, &qword_27C81C858);
  v105 = v129;
  v104 = v130;
  v106 = *(v130 + 16);
  v107 = v131;
  v106(v129, v99, v131);
  v108 = v100;
  v109 = v128;
  sub_20CEF9178(v108, v128, &qword_27C81C868);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C940);
  sub_20CEF9178(v101, v109 + v110[12], &qword_27C81C860);
  sub_20CEF9178(v103, v109 + v110[16], &qword_27C81C858);
  v106((v109 + v110[20]), v105, v107);
  v111 = v109 + v110[24];
  *v111 = 0;
  *(v111 + 8) = 1;
  v112 = *(v104 + 8);
  v112(v138, v107);
  sub_20CEF928C(v135, &qword_27C81C858);
  sub_20CEF928C(v139, &qword_27C81C860);
  sub_20CEF928C(v133, &qword_27C81C868);
  sub_20CEF928C(v126, &unk_27C81CDF0);
  v112(v105, v107);
  sub_20CEF928C(v137, &qword_27C81C858);
  sub_20CEF928C(v136, &qword_27C81C860);
  return sub_20CEF928C(v134, &qword_27C81C868);
}

uint64_t sub_20CF0E100@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CB70);
  MEMORY[0x28223BE20](v4);
  v6 = (&v27 - v5);
  v7 = sub_20D5673D8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C898);
  MEMORY[0x28223BE20](v11);
  v13 = &v27 - v12;
  if (sub_20D566908())
  {
    (*(v8 + 104))(v10, *MEMORY[0x277CE0FE0], v7);
    v14 = sub_20D567418();
    (*(v8 + 8))(v10, v7);
    v15 = a2 * 0.225;
    v16 = &v13[*(v11 + 36)];
    v17 = *(sub_20D566978() + 20);
    v18 = *MEMORY[0x277CE0118];
    v19 = sub_20D566B58();
    (*(*(v19 - 8) + 104))(v16 + v17, v18, v19);
    *v16 = v15;
    v16[1] = v15;
    *(v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81EDF0) + 36)) = 256;
    *v13 = v14;
    *(v13 + 1) = 0;
    *(v13 + 8) = 1;
    sub_20CEF9178(v13, v6, &qword_27C81C898);
    swift_storeEnumTagMultiPayload();
    sub_20CF13DF8();
    sub_20D566D18();

    sub_20CEF928C(v13, &qword_27C81C898);
LABEL_5:
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C888);
    return (*(*(v23 - 8) + 56))(a1, 0, 1, v23);
  }

  v20 = sub_20D5668F8();
  if (v20)
  {

    v21 = sub_20D5677F8();
    v22 = HUImageNamed(v21);

    *v6 = sub_20D5673B8();
    swift_storeEnumTagMultiPayload();
    sub_20CF13DF8();
    sub_20D566D18();
    goto LABEL_5;
  }

  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C888);
  v26 = *(*(v25 - 8) + 56);

  return v26(a1, 1, 1, v25);
}

uint64_t sub_20CF0E53C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v17 = a3;
  v16 = a2;
  v18 = a4;
  v5 = type metadata accessor for UtilityDetailsView.SupportMethod(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C928);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - v10;
  sub_20CF14FB4(a1, &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for UtilityDetailsView.SupportMethod);
  v12 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v13 = swift_allocObject();
  sub_20CF1501C(&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for UtilityDetailsView.SupportMethod);
  v19 = v16;
  v20 = a1;
  v21 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CAC0);
  sub_20CF150BC();
  sub_20D567498();
  sub_20CF156D0(&qword_27C81C920, &qword_27C81C928);
  sub_20D567188();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_20CF0E7B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v139 = a2;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C948);
  MEMORY[0x28223BE20](v127);
  v126 = &v108 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C950);
  MEMORY[0x28223BE20](v4 - 8);
  v119 = &v108 - v5;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C958);
  v124 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v123 = &v108 - v6;
  v7 = type metadata accessor for UtilityDetailsView(0);
  v115 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v116 = v8;
  v117 = &v108 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C960);
  MEMORY[0x28223BE20](v122);
  v121 = &v108 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C968);
  v132 = *(v10 - 8);
  v133 = v10;
  MEMORY[0x28223BE20](v10);
  v120 = &v108 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C970);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v138 = &v108 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v135 = &v108 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C978);
  v136 = *(v16 - 8);
  v137 = v16;
  v17 = MEMORY[0x28223BE20](v16);
  v134 = &v108 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v142 = &v108 - v19;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C980);
  MEMORY[0x28223BE20](v131);
  v113 = &v108 - v20;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C988);
  v111 = *(v140 - 1);
  v21 = MEMORY[0x28223BE20](v140);
  v112 = &v108 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v108 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C990);
  v26 = *(v25 - 8);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v108 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = &v108 - v30;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C998);
  MEMORY[0x28223BE20](v128);
  v129 = &v108 - v32;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C9A0);
  v33 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v35 = &v108 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C9A8);
  v37 = MEMORY[0x28223BE20](v36 - 8);
  v141 = &v108 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v143 = &v108 - v39;
  v40 = *(a1 + 32);
  v144 = a1;
  v114 = v40;
  if (v40 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C9E8);
    sub_20CF14400();
    sub_20D567598();
    v41 = v130;
    (*(v33 + 16))(v129, v35, v130);
    swift_storeEnumTagMultiPayload();
    sub_20CF14370();
    sub_20CF156D0(&qword_27C81CA00, &qword_27C81C980);
    sub_20D566D18();
    v42 = (*(v33 + 8))(v35, v41);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C9B0);
    v118 = a1;
    v110 = MEMORY[0x277CE14C0];
    sub_20CF156D0(&qword_27C81C9B8, &qword_27C81C9B0);
    v109 = v31;
    sub_20D567598();
    v43 = sub_20D5677F8();
    v44 = HULocalizedString(v43);

    v45 = sub_20D567838();
    v47 = v46;

    v145 = v45;
    v146 = v47;
    MEMORY[0x28223BE20](v48);
    *(&v108 - 2) = v118;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C9C0);
    sub_20CF14270();
    sub_20CEF44D8();
    v108 = v24;
    sub_20D567568();
    v49 = *(v26 + 16);
    v50 = v31;
    v51 = v25;
    v49(v29, v50, v25);
    v52 = v111;
    v53 = *(v111 + 16);
    v54 = v112;
    v53(v112, v24, v140);
    v55 = v113;
    v49(v113, v29, v51);
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C9D0);
    v57 = v140;
    v53((v55 + *(v56 + 48)), v54, v140);
    v58 = *(v52 + 8);
    v58(v54, v57);
    v59 = *(v26 + 8);
    v59(v29, v51);
    sub_20CEF9178(v55, v129, &qword_27C81C980);
    swift_storeEnumTagMultiPayload();
    sub_20CF14370();
    sub_20CF156D0(&qword_27C81CA00, &qword_27C81C980);
    sub_20D566D18();
    sub_20CEF928C(v55, &qword_27C81C980);
    v58(v108, v140);
    v42 = (v59)(v109, v51);
    a1 = v118;
  }

  MEMORY[0x28223BE20](v42);
  *(&v108 - 2) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CA08);
  sub_20CF144F0();
  sub_20D567598();
  if ([*(a1 + 8) hf_currentUserIsAdministrator])
  {
    if (v114)
    {
      v60 = sub_20D5677F8();
      v61 = HULocalizedString(v60);

      v131 = sub_20D567838();
      v63 = v62;

      v140 = "HUUtilityDetailsRemoveUtility";
      v64 = v117;
      sub_20CF14FB4(a1, v117, type metadata accessor for UtilityDetailsView);
      v65 = (*(v115 + 80) + 16) & ~*(v115 + 80);
      v66 = v65 + v116;
      v67 = swift_allocObject();
      sub_20CF1501C(v64, v67 + v65, type metadata accessor for UtilityDetailsView);
      v68 = v119;
      sub_20D566758();
      v69 = sub_20D566768();
      (*(*(v69 - 8) + 56))(v68, 0, 1, v69);
      sub_20CF14FB4(a1, v64, type metadata accessor for UtilityDetailsView);
      v70 = (v66 + 7) & 0xFFFFFFFFFFFFFFF8;
      v71 = swift_allocObject();
      v72 = sub_20CF1501C(v64, v71 + v65, type metadata accessor for UtilityDetailsView);
      v73 = (v71 + v70);
      *v73 = sub_20CF1487C;
      v73[1] = v67;
      MEMORY[0x28223BE20](v72);
      *(&v108 - 4) = v131;
      *(&v108 - 3) = v63;
    }

    else
    {
      v79 = sub_20D5677F8();
      v80 = HULocalizedString(v79);

      v81 = sub_20D567838();
      v130 = v82;
      v131 = v81;

      v140 = "DisconnectAccount";
      v83 = v117;
      sub_20CF14FB4(a1, v117, type metadata accessor for UtilityDetailsView);
      v84 = (*(v115 + 80) + 16) & ~*(v115 + 80);
      v85 = v84 + v116;
      v86 = swift_allocObject();
      sub_20CF1501C(v83, v86 + v84, type metadata accessor for UtilityDetailsView);
      v87 = v119;
      sub_20D566758();
      v88 = sub_20D566768();
      (*(*(v88 - 8) + 56))(v87, 0, 1, v88);
      sub_20CF14FB4(a1, v83, type metadata accessor for UtilityDetailsView);
      v89 = (v85 + 7) & 0xFFFFFFFFFFFFFFF8;
      v90 = swift_allocObject();
      v91 = sub_20CF1501C(v83, v90 + v84, type metadata accessor for UtilityDetailsView);
      v92 = (v90 + v89);
      *v92 = sub_20CF145D8;
      v92[1] = v86;
      MEMORY[0x28223BE20](v91);
      v93 = v130;
      *(&v108 - 4) = v131;
      *(&v108 - 3) = v93;
    }

    *(&v108 - 2) = a1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CA28);
    sub_20CF156D0(&qword_27C81CA30, &qword_27C81CA28);
    v74 = v123;
    sub_20D567488();

    sub_20CF156D0(&qword_27C81CA38, &qword_27C81C958);
    v75 = v121;
    v76 = v125;
    sub_20D567188();

    (*(v124 + 8))(v74, v76);
    sub_20CEF9178(v75, v126, &qword_27C81C960);
    swift_storeEnumTagMultiPayload();
    sub_20CF14644();
    v94 = v120;
    sub_20D566D18();
    sub_20CEF928C(v75, &qword_27C81C960);
    v78 = v135;
    sub_20CF15584(v94, v135, &qword_27C81C968);
    v77 = 0;
  }

  else
  {
    v77 = 1;
    v78 = v135;
  }

  v95 = v143;
  (*(v132 + 56))(v78, v77, 1, v133);
  v96 = v141;
  sub_20CEF9178(v95, v141, &qword_27C81C9A8);
  v97 = v78;
  v98 = v136;
  v99 = v137;
  v100 = *(v136 + 16);
  v101 = v134;
  v102 = v142;
  v100(v134, v142, v137);
  v103 = v138;
  sub_20CEF9178(v97, v138, &qword_27C81C970);
  v104 = v139;
  sub_20CEF9178(v96, v139, &qword_27C81C9A8);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CA20);
  v100((v104 + *(v105 + 48)), v101, v99);
  sub_20CEF9178(v103, v104 + *(v105 + 64), &qword_27C81C970);
  sub_20CEF928C(v97, &qword_27C81C970);
  v106 = *(v98 + 8);
  v106(v102, v99);
  sub_20CEF928C(v143, &qword_27C81C9A8);
  sub_20CEF928C(v103, &qword_27C81C970);
  v106(v101, v99);
  return sub_20CEF928C(v141, &qword_27C81C9A8);
}

uint64_t sub_20CF0FB54(uint64_t a1)
{
  v2 = sub_20D566B28();
  v7 = 0;
  sub_20CF0FD58(a1, &v17);
  v12 = v21;
  v13 = v22;
  v14 = v23;
  v15 = v24;
  v8 = v17;
  v9 = v18;
  v10 = v19;
  v11 = v20;
  v16[0] = v17;
  v16[1] = v18;
  v16[2] = v19;
  v16[3] = v20;
  v16[4] = v21;
  v16[5] = v22;
  v16[6] = v23;
  v16[7] = v24;
  sub_20CEF9178(&v8, &v4, &qword_27C81CA48);
  sub_20CEF928C(v16, &qword_27C81CA48);
  *&v6[71] = v12;
  *&v6[87] = v13;
  *&v6[103] = v14;
  *&v6[119] = v15;
  *&v6[7] = v8;
  *&v6[23] = v9;
  *&v6[39] = v10;
  *&v6[55] = v11;
  *&v5[81] = *&v6[80];
  *&v5[97] = *&v6[96];
  *&v5[113] = *&v6[112];
  *&v5[17] = *&v6[16];
  *&v5[33] = *&v6[32];
  *&v5[49] = *&v6[48];
  *&v5[65] = *&v6[64];
  *&v4 = v2;
  *(&v4 + 1) = 0x4030000000000000;
  v5[0] = v7;
  *&v5[128] = *(&v15 + 1);
  *&v5[1] = *v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C9F8);
  sub_20CF156D0(&qword_27C81C9F0, &qword_27C81C9F8);
  sub_20D567188();
  v23 = *&v5[80];
  v24 = *&v5[96];
  v25 = *&v5[112];
  v26 = *&v5[128];
  v19 = *&v5[16];
  v20 = *&v5[32];
  v21 = *&v5[48];
  v22 = *&v5[64];
  v17 = v4;
  v18 = *v5;
  return sub_20CEF928C(&v17, &qword_27C81C9F8);
}

uint64_t sub_20CF0FD58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_20D5673C8();
  v5 = sub_20D566FB8();
  KeyPath = swift_getKeyPath();
  v7 = [objc_opt_self() systemGray2Color];
  v8 = sub_20D5672E8();
  v9 = swift_getKeyPath();
  v10 = sub_20D566BA8();
  LOBYTE(v23[0]) = 1;
  sub_20CF0FF80(a1, v19);
  *&v18[55] = v20;
  *&v18[39] = v19[2];
  *&v18[23] = v19[1];
  *&v18[7] = v19[0];
  v11 = v23[0];
  v21 = v10;
  v22[0] = v23[0];
  v12 = *&v18[16];
  *&v22[1] = *v18;
  *&v22[64] = *(&v20 + 1);
  *&v22[49] = *&v18[48];
  v13 = *&v18[32];
  *&v22[33] = *&v18[32];
  v14 = *v18;
  *&v22[17] = *&v18[16];
  *(a2 + 56) = *v22;
  *(a2 + 40) = v10;
  *(a2 + 104) = *&v22[48];
  v15 = *&v22[16];
  *(a2 + 88) = *&v22[32];
  *(a2 + 72) = v15;
  *a2 = v4;
  *(a2 + 8) = KeyPath;
  *(a2 + 16) = v5;
  *(a2 + 24) = v9;
  *(a2 + 32) = v8;
  *(a2 + 120) = *&v22[64];
  v23[0] = v10;
  v23[1] = 0;
  v24 = v11;
  v25 = v14;
  *&v28[15] = *&v18[63];
  *v28 = *&v18[48];
  v27 = v13;
  v26 = v12;

  sub_20CEF9178(&v21, &v17, &qword_27C81CA50);
  sub_20CEF928C(v23, &qword_27C81CA50);
}

uint64_t sub_20CF0FF80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_20D5677F8();
  v5 = HULocalizedString(v4);

  v6 = sub_20D567838();
  v8 = v7;

  v48 = v6;
  v49 = v8;
  sub_20CEF44D8();
  v9 = sub_20D5670E8();
  v11 = v10;
  v13 = v12;
  sub_20D566F88();
  sub_20D566FA8();

  v14 = sub_20D5670C8();
  v43 = v15;
  v44 = v14;
  v42 = v16;
  v45 = v17;

  sub_20CF13F34(v9, v11, v13 & 1);

  v18 = *(a1 + 16);
  if (*(v18 + 16))
  {
    v19 = sub_20CEED668(0xD000000000000011, 0x800000020D5CDF10);
    if (v20)
    {
      sub_20CED43FC(*(v18 + 56) + 32 * v19, &v48);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CE20);
      if (swift_dynamicCast())
      {
        if (v46 == 0x64657269707865 && v47 == 0xE700000000000000)
        {
        }

        else
        {
          sub_20D568BF8();
        }
      }
    }
  }

  v21 = sub_20D5677F8();
  v22 = HULocalizedString(v21);

  v23 = sub_20D567838();
  v25 = v24;

  v48 = v23;
  v49 = v25;
  v26 = sub_20D5670E8();
  v28 = v27;
  LOBYTE(v25) = v29;
  sub_20D567038();
  v30 = sub_20D5670C8();
  v32 = v31;
  v34 = v33;

  sub_20CF13F34(v26, v28, v25 & 1);

  LODWORD(v48) = sub_20D566D68();
  v35 = sub_20D5670B8();
  v37 = v36;
  LOBYTE(v25) = v38;
  v40 = v39;
  sub_20CF13F34(v30, v32, v34 & 1);

  LOBYTE(v48) = v42 & 1;
  *a2 = v44;
  *(a2 + 8) = v43;
  *(a2 + 16) = v42 & 1;
  *(a2 + 24) = v45;
  *(a2 + 32) = v35;
  *(a2 + 40) = v37;
  *(a2 + 48) = v25 & 1;
  *(a2 + 56) = v40;
  sub_20CF14B58(v44, v43, v42 & 1);
  sub_20D5663C8();
  sub_20CF14B58(v35, v37, v25 & 1);
  sub_20D5663C8();
  sub_20CF13F34(v35, v37, v25 & 1);

  sub_20CF13F34(v44, v43, v42 & 1);
}

uint64_t sub_20CF1031C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v88 = a2;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CA88);
  MEMORY[0x28223BE20](v83);
  v82 = (&v79 - v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CA90);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v87 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v86 = &v79 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v85 = &v79 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v84 = &v79 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v79 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v79 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v79 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v79 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v79 - v25;
  v27 = sub_20D5677F8();
  v28 = HULocalizedString(v27);

  v29 = sub_20D567838();
  v31 = v30;

  v32 = *(a1 + 16);
  if (!*(v32 + 16))
  {
    goto LABEL_10;
  }

  v33 = sub_20CEED668(0xD000000000000013, 0x800000020D5CE140);
  if ((v34 & 1) == 0)
  {
    goto LABEL_10;
  }

  sub_20CED43FC(*(v32 + 56) + 32 * v33, v91);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CE20);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_10;
  }

  v35 = v90;
  if (!v90)
  {
    goto LABEL_10;
  }

  v36 = HIBYTE(v90) & 0xF;
  if ((v90 & 0x2000000000000000) == 0)
  {
    v36 = v89 & 0xFFFFFFFFFFFFLL;
  }

  if (!v36)
  {

LABEL_10:

    v40 = 1;
    goto LABEL_11;
  }

  v80 = v89;
  v81 = "utilityCustomerName";
  v37 = sub_20D566B38();
  v38 = v82;
  *v82 = v37;
  *(v38 + 8) = 0;
  *(v38 + 16) = 1;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CAA8);
  sub_20CF124D0(v29, v31, v80, v35, v38 + *(v39 + 44));

  sub_20CF156D0(&qword_27C81CAB0, &qword_27C81CA88);
  sub_20D567188();

  sub_20CEF928C(v38, &qword_27C81CA88);
  v40 = 0;
LABEL_11:
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CA98);
  (*(*(v41 - 8) + 56))(v24, v40, 1, v41);
  sub_20CEBC4A0(v24, v26);
  v42 = sub_20D5677F8();
  v43 = HULocalizedString(v42);

  v44 = sub_20D567838();
  v46 = v45;

  if (!*(v32 + 16))
  {
    goto LABEL_20;
  }

  v47 = sub_20CEED668(0xD000000000000014, 0x800000020D5CE1B0);
  if ((v48 & 1) == 0)
  {
    goto LABEL_20;
  }

  sub_20CED43FC(*(v32 + 56) + 32 * v47, v91);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CE20);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_20;
  }

  v49 = v90;
  if (!v90)
  {
    goto LABEL_20;
  }

  v50 = v89;
  v51 = HIBYTE(v90) & 0xF;
  if ((v90 & 0x2000000000000000) == 0)
  {
    v51 = v89 & 0xFFFFFFFFFFFFLL;
  }

  if (!v51)
  {

LABEL_20:

    v55 = 1;
    goto LABEL_21;
  }

  v81 = "utilityAccountNumber";
  v52 = sub_20D566B38();
  v53 = v82;
  *v82 = v52;
  *(v53 + 8) = 0;
  *(v53 + 16) = 1;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CAA8);
  sub_20CF124D0(v44, v46, v50, v49, v53 + *(v54 + 44));

  sub_20CF156D0(&qword_27C81CAB0, &qword_27C81CA88);
  sub_20D567188();

  sub_20CEF928C(v53, &qword_27C81CA88);
  v55 = 0;
LABEL_21:
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CA98);
  (*(*(v56 - 8) + 56))(v18, v55, 1, v56);
  sub_20CEBC4A0(v18, v21);
  v57 = sub_20D5677F8();
  v58 = HULocalizedString(v57);

  v59 = sub_20D567838();
  v61 = v60;

  v62 = v84;
  if (!*(v32 + 16))
  {
    goto LABEL_30;
  }

  v63 = sub_20CEED668(0xD000000000000012, 0x800000020D5CE230);
  if ((v64 & 1) == 0)
  {
    goto LABEL_30;
  }

  sub_20CED43FC(*(v32 + 56) + 32 * v63, v91);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CE20);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_30;
  }

  v65 = v90;
  if (!v90)
  {
    goto LABEL_30;
  }

  v66 = v89;
  v67 = HIBYTE(v90) & 0xF;
  if ((v90 & 0x2000000000000000) == 0)
  {
    v67 = v89 & 0xFFFFFFFFFFFFLL;
  }

  if (!v67)
  {

LABEL_30:

    v71 = 1;
    goto LABEL_31;
  }

  v68 = sub_20D566B38();
  v69 = v82;
  *v82 = v68;
  *(v69 + 8) = 0;
  *(v69 + 16) = 1;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CAA8);
  sub_20CF124D0(v59, v61, v66, v65, v69 + *(v70 + 44));

  sub_20CF156D0(&qword_27C81CAB0, &qword_27C81CA88);
  sub_20D567188();

  sub_20CEF928C(v69, &qword_27C81CA88);
  v71 = 0;
LABEL_31:
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CA98);
  (*(*(v72 - 8) + 56))(v62, v71, 1, v72);
  sub_20CEBC4A0(v62, v15);
  v73 = v85;
  sub_20CEF9178(v26, v85, &qword_27C81CA90);
  v74 = v86;
  sub_20CEF9178(v21, v86, &qword_27C81CA90);
  v75 = v87;
  sub_20CEF9178(v15, v87, &qword_27C81CA90);
  v76 = v88;
  sub_20CEF9178(v73, v88, &qword_27C81CA90);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CAA0);
  sub_20CEF9178(v74, v76 + *(v77 + 48), &qword_27C81CA90);
  sub_20CEF9178(v75, v76 + *(v77 + 64), &qword_27C81CA90);
  sub_20CEF928C(v15, &qword_27C81CA90);
  sub_20CEF928C(v21, &qword_27C81CA90);
  sub_20CEF928C(v26, &qword_27C81CA90);
  sub_20CEF928C(v75, &qword_27C81CA90);
  sub_20CEF928C(v74, &qword_27C81CA90);
  return sub_20CEF928C(v73, &qword_27C81CA90);
}

uint64_t sub_20CF10CA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = sub_20D566DD8();
  v24 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CA80);
  v25 = *(v6 - 8);
  v26 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - v7;
  v9 = *(a1 + 16);
  if (*(v9 + 16) && (v10 = sub_20CEED668(0x4165636976726573, 0xEE00737365726464), (v11 & 1) != 0) && (sub_20CED43FC(*(v9 + 56) + 32 * v10, &v30), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CE20), (swift_dynamicCast() & 1) != 0))
  {
    v12 = v28;
    v13 = v29;
  }

  else
  {
    v12 = 0;
    v13 = 0xE000000000000000;
  }

  v30 = v12;
  v31 = v13;
  sub_20CEF44D8();
  v14 = sub_20D5670E8();
  v16 = v15;
  v30 = v14;
  v31 = v15;
  v18 = v17 & 1;
  LOBYTE(v32) = v17 & 1;
  v33 = v19;
  sub_20D566DC8();
  v20 = MEMORY[0x277CE0BD8];
  v21 = MEMORY[0x277CE06D0];
  sub_20D5671A8();
  (*(v24 + 8))(v5, v3);
  sub_20CF13F34(v14, v16, v18);

  v30 = v20;
  v31 = v3;
  v32 = MEMORY[0x277CE0BC8];
  v33 = v21;
  swift_getOpaqueTypeConformance2();
  v22 = v26;
  sub_20D567188();
  return (*(v25 + 8))(v8, v22);
}

uint64_t sub_20CF10F8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18[1] = a2;
  v3 = type metadata accessor for UtilityDetailsView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81EE50);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v18 - v8;
  v10 = sub_20D5677F8();
  v11 = HULocalizedString(v10);

  v12 = sub_20D567838();
  v14 = v13;

  v18[2] = v12;
  v18[3] = v14;
  sub_20CF14FB4(a1, v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for UtilityDetailsView);
  v15 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v16 = swift_allocObject();
  sub_20CF1501C(v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for UtilityDetailsView);
  sub_20CEF44D8();
  sub_20D5674A8();
  sub_20CF156D0(&qword_27C81CA18, &unk_27C81EE50);
  sub_20D567188();
  return (*(v7 + 8))(v9, v6);
}

void sub_20CF11218()
{
  v0 = sub_20D5677F8();
  v2 = [objc_opt_self() presenterForPrivacySplashWithIdentifier_];

  if (v2)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    [v2 setPresentingViewController_];

    [v2 present];
  }
}

uint64_t sub_20CF112EC(uint64_t a1)
{
  v2 = type metadata accessor for UtilityDetailsView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C610);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  v9 = sub_20D567C58();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_20CF14FB4(a1, v5, type metadata accessor for UtilityDetailsView);
  sub_20D567C18();
  v10 = sub_20D567C08();
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  *(v12 + 16) = v10;
  *(v12 + 24) = v13;
  sub_20CF1501C(v5, v12 + v11, type metadata accessor for UtilityDetailsView);
  sub_20CF18960(0, 0, v8, &unk_20D5BD980, v12);
}

uint64_t sub_20CF114C0()
{
  v1 = type metadata accessor for UtilityDetailsView(0);
  v33 = *(v1 - 8);
  v2 = *(v33 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20D5677F8();
  v5 = HULocalizedString(v4);

  v32 = sub_20D567838();
  v7 = v6;

  v8 = sub_20D5677F8();
  v9 = HULocalizedString(v8);

  sub_20D567838();
  v11 = v10;

  v12 = sub_20D5677F8();
  v13 = HULocalizedString(v12);

  sub_20D567838();
  sub_20CF14FB4(v0, v3, type metadata accessor for UtilityDetailsView);
  v14 = (*(v33 + 80) + 16) & ~*(v33 + 80);
  v15 = swift_allocObject();
  sub_20CF1501C(v3, v15 + v14, type metadata accessor for UtilityDetailsView);
  v33 = v7;
  v16 = sub_20D5677F8();
  v32 = v11;
  v17 = sub_20D5677F8();
  v18 = [objc_opt_self() alertControllerWithTitle:v16 message:v17 preferredStyle:0];

  v19 = swift_allocObject();
  *(v19 + 16) = sub_20CF14C58;
  *(v19 + 24) = v15;

  v20 = sub_20D5677F8();
  aBlock[4] = sub_20CF14D00;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20CF13714;
  aBlock[3] = &block_descriptor_2;
  v21 = _Block_copy(aBlock);

  v22 = objc_opt_self();
  v23 = [v22 actionWithTitle:v20 style:2 handler:v21];
  _Block_release(v21);

  [v18 addAction_];
  v24 = sub_20D5677F8();
  v25 = HULocalizedString(v24);

  sub_20D567838();
  v26 = sub_20D5677F8();

  v27 = [v22 actionWithTitle:v26 style:1 handler:0];

  [v18 addAction_];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v29 = Strong;
    [Strong presentViewController:v18 animated:1 completion:0];
  }

  else
  {
  }
}

void sub_20CF11924()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = sub_20D563678();
}

void *sub_20CF119B0@<X0>(uint64_t a1@<X1>, char a2@<W2>, char *a3@<X8>)
{
  v6 = type metadata accessor for UtilityDetailsView.SupportMethod(0);
  sub_20CF11B6C(*(a1 + *(v6 + 20)), *(a1 + *(v6 + 20) + 8), a2, __src);
  v27 = sub_20D5675E8();
  v28 = v7;
  LOBYTE(v26) = 1;
  LOBYTE(v25) = 1;
  sub_20D566988();
  v8 = sub_20D5675E8();
  v10 = v9;
  v11 = &a3[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CAC0) + 36)];
  v12 = *(sub_20D566978() + 20);
  v13 = *MEMORY[0x277CE0118];
  v14 = sub_20D566B58();
  (*(*(v14 - 8) + 104))(&v11[v12], v13, v14);
  __asm { FMOV            V0.2D, #12.0 }

  *v11 = _Q0;
  v20 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  v21 = sub_20D5672E8();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CB50);
  *&v11[*(v22 + 52)] = v21;
  *&v11[*(v22 + 56)] = 256;
  v23 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CB48) + 36)];
  *v23 = v8;
  v23[1] = v10;
  return memcpy(a3, __src, 0x160uLL);
}

__n128 sub_20CF11B6C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W4>, uint64_t a4@<X8>)
{
  if (a3)
  {
    v7 = sub_20D566B98();
    sub_20CF120AC(a1, a2, &v79);
    v67 = v83;
    v68 = v84;
    *&v69 = v85;
    v63 = v79;
    v64 = v80;
    v65 = v81;
    v66 = v82;
    v71 = v79;
    v72 = v80;
    v73 = v81;
    v74 = v82;
    v75 = v83;
    v76 = v84;
    *&v77 = v85;
    sub_20CEF9178(&v63, &v39, &qword_27C81CB60);
    sub_20CEF928C(&v71, &qword_27C81CB60);
    *&v38[55] = v66;
    *&v38[71] = v67;
    *&v38[87] = v68;
    *&v38[7] = v63;
    *&v38[23] = v64;
    *&v38[103] = v69;
    *&v38[39] = v65;
    v8 = sub_20D566F08();
    sub_20D566778();
    v45 = *&v38[48];
    v46 = *&v38[64];
    *v47 = *&v38[80];
    *&v47[15] = *&v38[95];
    v42 = *v38;
    v43 = *&v38[16];
    v39 = v7;
    v40 = 0x4000000000000000;
    v41 = 0;
    v44 = *&v38[32];
    v47[31] = v8;
    *&v48[7] = v9;
    v49 = v10;
    v50 = v11;
    v51 = v12;
    LOBYTE(v52) = 0;
    sub_20CF15494(&v39);
  }

  else
  {
    v37 = sub_20D566B38();
    v60 = 0;
    sub_20CF12308(a1, a2, &v79);
    v67 = v83;
    v68 = v84;
    v69 = v85;
    v70 = v86;
    v63 = v79;
    v64 = v80;
    v65 = v81;
    v66 = v82;
    v71 = v79;
    v72 = v80;
    v73 = v81;
    v74 = v82;
    v75 = v83;
    v76 = v84;
    v77 = v85;
    v78 = v86;
    sub_20CEF9178(&v63, &v39, &qword_27C81CB58);
    sub_20CEF928C(&v71, &qword_27C81CB58);
    *&v59[71] = v67;
    *&v59[87] = v68;
    *&v59[103] = v69;
    *&v59[7] = v63;
    *&v59[23] = v64;
    *&v59[39] = v65;
    v59[119] = v70;
    *&v59[55] = v66;
    v36 = v60;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C8B0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_20D5BC4B0;
    v14 = sub_20D566F18();
    *(v13 + 32) = v14;
    v15 = sub_20D566F28();
    *(v13 + 33) = v15;
    v16 = sub_20D566F48();
    sub_20D566F48();
    if (sub_20D566F48() != v14)
    {
      v16 = sub_20D566F48();
    }

    sub_20D566F48();
    if (sub_20D566F48() != v15)
    {
      v16 = sub_20D566F48();
    }

    sub_20D566778();
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v61 = 0;
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_20D5BC4B0;
    v26 = sub_20D566F38();
    *(v25 + 32) = v26;
    v27 = sub_20D566F58();
    *(v25 + 33) = v27;
    v28 = sub_20D566F48();
    sub_20D566F48();
    if (sub_20D566F48() != v26)
    {
      v28 = sub_20D566F48();
    }

    sub_20D566F48();
    if (sub_20D566F48() != v27)
    {
      v28 = sub_20D566F48();
    }

    v46 = *&v59[64];
    *v47 = *&v59[80];
    *&v47[16] = *&v59[96];
    v42 = *v59;
    v43 = *&v59[16];
    v44 = *&v59[32];
    v62 = 1;
    v39 = v37;
    v40 = 0x4028000000000000;
    v41 = v36;
    *v48 = *&v59[112];
    v45 = *&v59[48];
    LOBYTE(v49) = v16;
    v50 = v18;
    v51 = v20;
    v52 = v22;
    v53 = v24;
    v54 = 0;
    v55 = v28;
    v56 = 0u;
    v57 = 0u;
    v58 = 1;
    sub_20CF15488(&v39);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CAF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CB18);
  sub_20CF1528C();
  sub_20CF15344();
  sub_20D566D18();
  v29 = v90;
  v30 = v92[0];
  *(a4 + 192) = v91;
  *(a4 + 208) = v30;
  *(a4 + 218) = *(v92 + 10);
  v31 = v88;
  *(a4 + 128) = v87;
  *(a4 + 144) = v31;
  *(a4 + 160) = v89;
  *(a4 + 176) = v29;
  v32 = v84;
  *(a4 + 64) = v83;
  *(a4 + 80) = v32;
  v33 = v86;
  *(a4 + 96) = v85;
  *(a4 + 112) = v33;
  v34 = v80;
  *a4 = v79;
  *(a4 + 16) = v34;
  result = v82;
  *(a4 + 32) = v81;
  *(a4 + 48) = result;
  return result;
}

uint64_t sub_20CF120AC@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  sub_20D5663C8();
  v28 = sub_20D5673C8();
  v27 = sub_20D567018();
  KeyPath = swift_getKeyPath();
  sub_20D5675E8();
  sub_20D566848();
  v34 = a1;
  v35 = a2;
  sub_20CEF44D8();
  sub_20D5663C8();
  v6 = sub_20D5670E8();
  v8 = v7;
  v10 = v9;
  sub_20D567038();
  v11 = sub_20D5670C8();
  v13 = v12;
  v15 = v14;

  sub_20CF13F34(v6, v8, v10 & 1);

  sub_20D566FE8();
  v16 = sub_20D567098();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  sub_20CF13F34(v11, v13, v15 & 1);

  *&v32 = v28;
  *(&v32 + 1) = KeyPath;
  *v33 = v27;
  *&v33[8] = v29;
  *&v33[24] = v30;
  *&v33[40] = v31;
  v23 = *v33;
  *a3 = v32;
  *(a3 + 16) = v23;
  v24 = *&v33[32];
  *(a3 + 32) = *&v33[16];
  *(a3 + 48) = v24;
  *(a3 + 64) = *&v33[48];
  *(a3 + 72) = v16;
  *(a3 + 80) = v18;
  *(a3 + 88) = v20 & 1;
  *(a3 + 96) = v22;
  sub_20CEF9178(&v32, &v34, &qword_27C81CB68);
  sub_20CF14B58(v16, v18, v20 & 1);
  sub_20D5663C8();
  sub_20CF13F34(v16, v18, v20 & 1);

  v34 = v28;
  v35 = KeyPath;
  v36 = v27;
  v37 = v29;
  v38 = v30;
  v39 = v31;
  return sub_20CEF928C(&v34, &qword_27C81CB68);
}

uint64_t sub_20CF12308@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  sub_20D5663C8();
  v6 = sub_20D5673C8();
  v7 = sub_20D567018();
  KeyPath = swift_getKeyPath();
  sub_20D5675E8();
  sub_20D566848();
  v24 = a1;
  v25 = a2;
  sub_20CEF44D8();
  sub_20D5663C8();
  v9 = sub_20D5670E8();
  v11 = v10;
  *&v22 = v6;
  *(&v22 + 1) = KeyPath;
  *v23 = v7;
  *&v23[8] = v19;
  *&v23[24] = v20;
  *&v23[40] = v21;
  v13 = v12 & 1;
  v14 = v22;
  v15 = *v23;
  v16 = *&v23[32];
  *(a3 + 32) = *&v23[16];
  *(a3 + 48) = v16;
  *a3 = v14;
  *(a3 + 16) = v15;
  *(a3 + 64) = *(&v21 + 1);
  *(a3 + 72) = v9;
  *(a3 + 80) = v10;
  *(a3 + 88) = v12 & 1;
  *(a3 + 96) = v17;
  *(a3 + 104) = 0;
  *(a3 + 112) = 1;
  sub_20CEF9178(&v22, &v24, &qword_27C81CB68);
  sub_20CF14B58(v9, v11, v13);
  sub_20D5663C8();
  sub_20CF13F34(v9, v11, v13);

  v24 = v6;
  v25 = KeyPath;
  v26 = v7;
  v27 = v19;
  v28 = v20;
  v29 = v21;
  return sub_20CEF928C(&v24, &qword_27C81CB68);
}

uint64_t sub_20CF124D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v49 = sub_20D566DD8();
  v51 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CA80);
  v48 = *(v50 - 8);
  v12 = MEMORY[0x28223BE20](v50);
  v47 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v52 = &v42 - v14;
  v53 = a1;
  v54 = a2;
  sub_20CEF44D8();
  sub_20D5663C8();
  v15 = sub_20D5670E8();
  v43 = v16;
  v44 = v15;
  v45 = v17;
  v46 = v18;
  v53 = a3;
  v54 = a4;
  sub_20D5663C8();
  v19 = sub_20D5670E8();
  v21 = v20;
  LOBYTE(a2) = v22;
  LODWORD(v53) = sub_20D566D68();
  v23 = sub_20D5670B8();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  sub_20CF13F34(v19, v21, a2 & 1);

  v53 = v23;
  v54 = v25;
  v27 &= 1u;
  v55 = v27;
  v56 = v29;
  sub_20D566DC8();
  v30 = v52;
  v31 = v49;
  sub_20D5671A8();
  (*(v51 + 8))(v11, v31);
  sub_20CF13F34(v23, v25, v27);

  v33 = v47;
  v32 = v48;
  v34 = *(v48 + 16);
  v35 = v30;
  v36 = v50;
  v34(v47, v35, v50);
  v37 = v43;
  v38 = v44;
  *a5 = v44;
  *(a5 + 8) = v37;
  LOBYTE(v19) = v45 & 1;
  *(a5 + 16) = v45 & 1;
  *(a5 + 24) = v46;
  *(a5 + 32) = 0;
  *(a5 + 40) = 1;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CAB8);
  v34((a5 + *(v39 + 64)), v33, v36);
  sub_20CF14B58(v38, v37, v19);
  v40 = *(v32 + 8);
  sub_20D5663C8();
  v40(v52, v36);
  v40(v33, v36);
  sub_20CF13F34(v38, v37, v19);
}

uint64_t sub_20CF12860(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  type metadata accessor for UtilityDetailsView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CA58);
  result = sub_20D567448();
  if ((v4 & 1) == 0)
  {
    if (a2)
    {
      return a2(result);
    }
  }

  return result;
}

uint64_t sub_20CF128F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = sub_20D566B38();
  *(a4 + 8) = 0;
  *(a4 + 16) = 1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CA60);
  return sub_20CF12960(a1, a2, a3, a4 + *(v8 + 44));
}

uint64_t sub_20CF12960@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CA68);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CA70);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v31 - v16;
  v34 = a1;
  v35 = a2;
  sub_20CEF44D8();
  sub_20D5663C8();
  v18 = sub_20D5670E8();
  v20 = v19;
  v32 = v21;
  v23 = v22;
  v24 = (a3 + *(type metadata accessor for UtilityDetailsView(0) + 40));
  v25 = *v24;
  v26 = *(v24 + 1);
  LOBYTE(v34) = v25;
  v35 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CA58);
  sub_20D567448();
  v27 = 1;
  if (v33 == 1)
  {
    sub_20D566808();
    (*(v9 + 32))(v17, v11, v8);
    v27 = 0;
  }

  (*(v9 + 56))(v17, v27, 1, v8);
  sub_20CEF9178(v17, v15, &qword_27C81CA70);
  *a4 = v18;
  *(a4 + 8) = v20;
  v28 = v32 & 1;
  *(a4 + 16) = v32 & 1;
  *(a4 + 24) = v23;
  *(a4 + 32) = 0;
  *(a4 + 40) = 1;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CA78);
  sub_20CEF9178(v15, a4 + *(v29 + 64), &qword_27C81CA70);
  sub_20CF14B58(v18, v20, v28);
  sub_20D5663C8();
  sub_20CEF928C(v17, &qword_27C81CA70);
  sub_20CEF928C(v15, &qword_27C81CA70);
  sub_20CF13F34(v18, v20, v28);
}

uint64_t sub_20CF12C30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v5 = sub_20D566868();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v6 = sub_20D568998();
  v4[10] = v6;
  v4[11] = *(v6 - 8);
  v4[12] = swift_task_alloc();
  sub_20D567C18();
  v4[13] = sub_20D567C08();
  v8 = sub_20D567BA8();
  v4[14] = v8;
  v4[15] = v7;

  return MEMORY[0x2822009F8](sub_20CF12D80, v8, v7);
}

uint64_t sub_20CF12D80()
{
  v1 = *(v0 + 48);
  v2 = (v1 + *(type metadata accessor for UtilityDetailsView(0) + 40));
  v3 = *v2;
  *(v0 + 170) = *v2;
  v4 = *(v2 + 1);
  *(v0 + 16) = v3;
  *(v0 + 128) = v4;
  *(v0 + 24) = v4;
  *(v0 + 168) = 1;

  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CA58);
  sub_20D567458();
  *(v0 + 144) = [*(v1 + 8) hf_energyManager];
  v7 = (*MEMORY[0x277D13238] + MEMORY[0x277D13238]);
  v5 = swift_task_alloc();
  *(v0 + 152) = v5;
  *v5 = v0;
  v5[1] = sub_20CF12EAC;

  return v7();
}

uint64_t sub_20CF12EAC(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  *(*v1 + 171) = a1;

  v4 = *(v2 + 120);
  v5 = *(v2 + 112);

  return MEMORY[0x2822009F8](sub_20CF12FF4, v5, v4);
}

uint64_t sub_20CF12FF4()
{
  if (*(v0 + 171) == 1)
  {
    sub_20D568C98();
    v1 = swift_task_alloc();
    *(v0 + 160) = v1;
    *v1 = v0;
    v1[1] = sub_20CF13158;

    return sub_20CF13828(2000000000000000000, 0, 0, 0, 1);
  }

  else
  {

    v3 = *(v0 + 128);
    *(v0 + 32) = *(v0 + 170);
    *(v0 + 40) = v3;
    *(v0 + 169) = 0;
    sub_20D567458();

    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_20CF13158()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[12];
  v5 = v2[11];
  v6 = v2[10];
  if (v0)
  {

    (*(v5 + 8))(v4, v6);
    v7 = v3[14];
    v8 = v3[15];
    v9 = sub_20CF15718;
  }

  else
  {
    (*(v5 + 8))(v4, v6);
    v7 = v3[14];
    v8 = v3[15];
    v9 = sub_20CF132EC;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_20CF132EC()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);

  sub_20CF0CD94(v1);
  sub_20D566858();
  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 128);
  *(v0 + 32) = *(v0 + 170);
  *(v0 + 40) = v4;
  *(v0 + 169) = 0;
  sub_20D567458();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_20CF133C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81D090);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v23 - v3;
  v5 = sub_20D563BA8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UtilityDetailsView(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C610);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v23 - v14;
  v16 = sub_20D567C58();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  sub_20CF14FB4(a1, v12, type metadata accessor for UtilityDetailsView);
  sub_20D567C18();
  v17 = sub_20D567C08();
  v18 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v19 = swift_allocObject();
  v20 = MEMORY[0x277D85700];
  *(v19 + 16) = v17;
  *(v19 + 24) = v20;
  sub_20CF1501C(v12, v19 + v18, type metadata accessor for UtilityDetailsView);
  sub_20CF18960(0, 0, v15, &unk_20D5BD9C0, v19);

  sub_20D563AE8();
  (*(v6 + 104))(v8, *MEMORY[0x277D16FD0], v5);
  v21 = sub_20D563B98();
  (*(*(v21 - 8) + 56))(v4, 1, 1, v21);
  sub_20D563B48();
  swift_allocObject();
  sub_20D563B38();
  MEMORY[0x20F318F80]();
}

void sub_20CF13714(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_20CF1377C@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_20D566B98();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C828);
  sub_20CF0D264(v1, a1 + *(v3 + 44));
  v4 = [objc_opt_self() systemGroupedBackgroundColor];
  v5 = sub_20D5672E8();
  v6 = sub_20D566F08();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C830);
  v8 = a1 + *(result + 36);
  *v8 = v5;
  *(v8 + 8) = v6;
  return result;
}

uint64_t sub_20CF13828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_20D568988();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_20CF13928, 0, 0);
}

uint64_t sub_20CF13928()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_20D568998();
  v5 = sub_20CF14128(&qword_28111FAA8, MEMORY[0x277D85928]);
  sub_20D568C78();
  sub_20CF14128(&qword_28111FAB0, MEMORY[0x277D858F8]);
  sub_20D5689A8();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_20CF13AB8;
  v8 = v0[11];

  return MEMORY[0x2822008C8](v8, v0 + 2, v4, v5);
}

uint64_t sub_20CF13AB8()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_20CF13C74, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_20CF13C74()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_20CF13CE8()
{
  result = qword_27C81C878;
  if (!qword_27C81C878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C81C870);
    sub_20CF13D6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81C878);
  }

  return result;
}

unint64_t sub_20CF13D6C()
{
  result = qword_27C81C880;
  if (!qword_27C81C880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C81C888);
    sub_20CF13DF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81C880);
  }

  return result;
}

unint64_t sub_20CF13DF8()
{
  result = qword_27C81C890;
  if (!qword_27C81C890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C81C898);
    sub_20CF13EB0();
    sub_20CF156D0(&qword_27C81C8A8, &qword_27C81EDF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81C890);
  }

  return result;
}

unint64_t sub_20CF13EB0()
{
  result = qword_27C8203F0;
  if (!qword_27C8203F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C81C8A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8203F0);
  }

  return result;
}

uint64_t sub_20CF13F34(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_20CF13F44()
{
  result = qword_27C81C8C0;
  if (!qword_27C81C8C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C81C8B8);
    sub_20CF13FD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81C8C0);
  }

  return result;
}

unint64_t sub_20CF13FD0()
{
  result = qword_27C81C8C8;
  if (!qword_27C81C8C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C81C8D0);
    sub_20CF156D0(&qword_27C81C8D8, &qword_27C81C8E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81C8C8);
  }

  return result;
}

uint64_t sub_20CF14088@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for UtilityDetailsView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));
  v7 = *(v6 + *(v5 + 64));

  return sub_20CF0E53C(a1, v6, v7, a2);
}

uint64_t sub_20CF14128(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_20CF14170()
{
  result = qword_27C81C918;
  if (!qword_27C81C918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C81C900);
    sub_20CF156D0(&qword_27C81C920, &qword_27C81C928);
    sub_20CF14128(&qword_27C820400, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81C918);
  }

  return result;
}

unint64_t sub_20CF14270()
{
  result = qword_27C81C9C8;
  if (!qword_27C81C9C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C81C9C0);
    sub_20D566DD8();
    swift_getOpaqueTypeConformance2();
    sub_20CF14128(&qword_27C820400, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81C9C8);
  }

  return result;
}

unint64_t sub_20CF14370()
{
  result = qword_27C81C9D8;
  if (!qword_27C81C9D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C81C9A0);
    sub_20CF14400();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81C9D8);
  }

  return result;
}

unint64_t sub_20CF14400()
{
  result = qword_27C81C9E0;
  if (!qword_27C81C9E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C81C9E8);
    sub_20CF156D0(&qword_27C81C9F0, &qword_27C81C9F8);
    sub_20CF14128(&qword_27C820400, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81C9E0);
  }

  return result;
}

unint64_t sub_20CF144F0()
{
  result = qword_27C81CA10;
  if (!qword_27C81CA10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C81CA08);
    sub_20CF156D0(&qword_27C81CA18, &unk_27C81EE50);
    sub_20CF14128(&qword_27C820400, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81CA10);
  }

  return result;
}

unint64_t sub_20CF14644()
{
  result = qword_27C81CA40;
  if (!qword_27C81CA40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C81C960);
    sub_20CF156D0(&qword_27C81CA38, &qword_27C81C958);
    sub_20CF14128(&qword_27C820400, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81CA40);
  }

  return result;
}

uint64_t objectdestroy_18Tm()
{
  v1 = type metadata accessor for UtilityDetailsView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  MEMORY[0x20F31FD50](v0 + v3);

  v5 = *(v1 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C8F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_20D566868();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroy_21Tm()
{
  v1 = type metadata accessor for UtilityDetailsView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*(v1 - 8) + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  MEMORY[0x20F31FD50](v0 + v3);

  v6 = *(v1 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C8F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_20D566868();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  if (*(v0 + v4))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v4 + 16, v2 | 7);
}

uint64_t sub_20CF14A10()
{
  v1 = *(type metadata accessor for UtilityDetailsView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_20CF12860(v0 + v2, v3);
}

uint64_t sub_20CF14AA8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_20D566A68();
  *a1 = result;
  return result;
}

uint64_t sub_20CF14B00@<X0>(uint64_t *a1@<X8>)
{
  result = sub_20D566A28();
  *a1 = result;
  return result;
}

uint64_t sub_20CF14B58(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    return sub_20D5663C8();
  }
}

uint64_t sub_20CF14B68(uint64_t a1)
{
  v4 = *(type metadata accessor for UtilityDetailsView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20CEF934C;

  return sub_20CF12C30(a1, v6, v7, v1 + v5);
}

uint64_t sub_20CF14C84(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_40Tm()
{
  v1 = type metadata accessor for UtilityDetailsView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();
  MEMORY[0x20F31FD50](v0 + v3);

  v5 = *(v1 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C8F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_20D566868();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_20CF14E98(uint64_t a1)
{
  v4 = *(type metadata accessor for UtilityDetailsView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20CEF5FFC;

  return sub_20CF12C30(a1, v6, v7, v1 + v5);
}

uint64_t sub_20CF14FB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20CF1501C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_20CF150BC()
{
  result = qword_27C81CAC8;
  if (!qword_27C81CAC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C81CAC0);
    sub_20CF15174();
    sub_20CF156D0(&qword_27C81CB40, &qword_27C81CB48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81CAC8);
  }

  return result;
}

unint64_t sub_20CF15174()
{
  result = qword_27C81CAD0;
  if (!qword_27C81CAD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C81CAD8);
    sub_20CF15200();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81CAD0);
  }

  return result;
}

unint64_t sub_20CF15200()
{
  result = qword_27C81CAE0;
  if (!qword_27C81CAE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C81CAE8);
    sub_20CF1528C();
    sub_20CF15344();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81CAE0);
  }

  return result;
}

unint64_t sub_20CF1528C()
{
  result = qword_27C81CAF0;
  if (!qword_27C81CAF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C81CAF8);
    sub_20CF156D0(&qword_27C81CB00, &qword_27C81CB08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81CAF0);
  }

  return result;
}

unint64_t sub_20CF15344()
{
  result = qword_27C81CB10;
  if (!qword_27C81CB10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C81CB18);
    sub_20CF153D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81CB10);
  }

  return result;
}

unint64_t sub_20CF153D0()
{
  result = qword_27C81CB20;
  if (!qword_27C81CB20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C81CB28);
    sub_20CF156D0(&qword_27C81CB30, &qword_27C81CB38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81CB20);
  }

  return result;
}

uint64_t sub_20CF1549C(uint64_t a1, uint64_t a2)
{
  if ((sub_20D563688() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for UtilityDetailsView.SupportMethod(0);
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (sub_20D568BF8() & 1) == 0)
  {
    return 0;
  }

  v10 = v4[6];
  v11 = *(a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = v11 == *v13 && v12 == v13[1];
  if (!v14 && (sub_20D568BF8() & 1) == 0)
  {
    return 0;
  }

  v15 = v4[7];
  v16 = *(a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  if (v16 == *v18 && v17 == v18[1])
  {
    return 1;
  }

  return sub_20D568BF8();
}

uint64_t sub_20CF15584(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_20CF155EC()
{
  result = qword_27C81CB90;
  if (!qword_27C81CB90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C81C830);
    sub_20CF156D0(&qword_27C81CB98, &qword_27C81CBA0);
    sub_20CF156D0(&qword_27C81CBA8, &unk_27C81EEC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81CB90);
  }

  return result;
}

uint64_t sub_20CF156D0(unint64_t *a1, uint64_t *a2)
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

void sub_20CF1576C()
{
  sub_20CF15808();
  if (v0 <= 0x3F)
  {
    sub_20CF1589C();
    if (v1 <= 0x3F)
    {
      sub_20CF158F4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20CF15808()
{
  if (!qword_27C81CBC0)
  {
    sub_20D565A48();
    sub_20CF17BB8(&qword_27C81CBC8, MEMORY[0x277D13218]);
    v0 = sub_20D566898();
    if (!v1)
    {
      atomic_store(v0, &qword_27C81CBC0);
    }
  }
}

void sub_20CF1589C()
{
  if (!qword_27C820310)
  {
    sub_20D566938();
    v0 = sub_20D5667C8();
    if (!v1)
    {
      atomic_store(v0, &qword_27C820310);
    }
  }
}

void sub_20CF158F4()
{
  if (!qword_27C81CBD0)
  {
    sub_20CECF940(255, &qword_27C821580);
    v0 = sub_20D568538();
    if (!v1)
    {
      atomic_store(v0, &qword_27C81CBD0);
    }
  }
}

uint64_t sub_20CF15978@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v32 = a1;
  v33 = sub_20D566B78();
  v31 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v30 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20D566DF8();
  v28 = *(v4 - 8);
  v29 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20D566938();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CBD8);
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CBE0);
  v15 = *(v14 - 8);
  v26 = v14;
  v27 = v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v26 - v16;
  v18 = sub_20D566B38();
  sub_20CF16B80(type metadata accessor for StatusContentView, v10);
  v19 = sub_20D566918();
  (*(v8 + 8))(v10, v7);
  v20 = 0x4020000000000000;
  if (v19)
  {
    v20 = 0x4024000000000000;
  }

  *v13 = v18;
  *(v13 + 1) = v20;
  v13[16] = 0;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CBE8);
  sub_20CF15D88(v2, &v13[*(v21 + 44)]);
  sub_20D566DE8();
  v22 = sub_20CF156D0(&qword_27C81CBF0, &qword_27C81CBD8);
  sub_20D5671D8();
  (*(v28 + 8))(v6, v29);
  sub_20CEF928C(v13, &qword_27C81CBD8);
  v23 = v30;
  sub_20D566B68();
  v34 = v11;
  v35 = v22;
  swift_getOpaqueTypeConformance2();
  v24 = v26;
  sub_20D567198();
  (*(v31 + 8))(v23, v33);
  return (*(v27 + 8))(v17, v24);
}

uint64_t sub_20CF15D88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = type metadata accessor for StatusIconView(0);
  MEMORY[0x28223BE20](v3);
  v5 = (&v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CBF8);
  v6 = MEMORY[0x28223BE20](v47);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v45 - v9;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CC00);
  MEMORY[0x28223BE20](v46);
  v12 = &v45 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CC08);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v45 - v17;
  v19 = *(a1 + 8);
  v20 = sub_20D5659F8();
  if (v20)
  {

    v21 = sub_20D565A48();
    sub_20CF17BB8(&qword_27C81CBC8, MEMORY[0x277D13218]);
    v22 = v19;
    v45 = v21;
    v23 = sub_20D566888();
    v25 = v24;
    v26 = *(type metadata accessor for StatusContentView(0) + 24);
    v27 = *(a1 + v26);
    if (v27)
    {
      [*(a1 + v26) iconSize];
      [v27 iconSize];
    }

    sub_20D5675E8();
    sub_20D566848();
    v32 = v51;
    v33 = BYTE8(v51);
    v34 = v52;
    v35 = BYTE8(v52);
    v50 = BYTE8(v51);
    v49 = BYTE8(v52);
    *v12 = v23;
    *(v12 + 1) = v25;
    *(v12 + 2) = v32;
    v12[24] = v33;
    *(v12 + 4) = v34;
    v12[40] = v35;
    *(v12 + 3) = v53;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CC10);
    sub_20CF17A1C();
    sub_20CF17AFC();
    sub_20D566D18();
  }

  else
  {
    *(v5 + *(v3 + 20)) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8215C0);
    swift_storeEnumTagMultiPayload();
    v28 = sub_20D565A48();
    sub_20CF17BB8(&qword_27C81CBC8, MEMORY[0x277D13218]);
    v29 = v19;
    v45 = v28;
    *v5 = sub_20D566888();
    v5[1] = v30;
    v31 = *(a1 + *(type metadata accessor for StatusContentView(0) + 24));
    if (v31)
    {
      [v31 iconSize];
      [v31 iconSize];
    }

    sub_20D5675E8();
    sub_20D566848();
    sub_20CF179B8(v5, v8);
    v36 = &v8[*(v47 + 36)];
    v37 = v52;
    *v36 = v51;
    *(v36 + 1) = v37;
    *(v36 + 2) = v53;
    sub_20CF15584(v8, v10, &qword_27C81CBF8);
    sub_20CEF9178(v10, v12, &qword_27C81CBF8);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CC10);
    sub_20CF17A1C();
    sub_20CF17AFC();
    sub_20D566D18();
    sub_20CEF928C(v10, &qword_27C81CBF8);
  }

  sub_20D565A48();
  sub_20CF17BB8(&qword_27C81CBC8, MEMORY[0x277D13218]);
  v38 = sub_20D566888();
  v40 = v39;
  sub_20CEF9178(v18, v16, &qword_27C81CC08);
  v41 = v48;
  sub_20CEF9178(v16, v48, &qword_27C81CC08);
  v42 = (v41 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CC38) + 48));
  *v42 = v38;
  v42[1] = v40;
  v43 = v40;
  sub_20CEF928C(v18, &qword_27C81CC08);

  return sub_20CEF928C(v16, &qword_27C81CC08);
}

void sub_20CF16390(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a1;
  v52 = a2;
  v2 = sub_20D566E18();
  v50 = *(v2 - 8);
  v51 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CC60);
  v47 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v44 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CC68);
  v48 = *(v8 - 8);
  v49 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v44 - v9;
  v11 = sub_20D5659F8();
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v13 = objc_opt_self();
    sub_20CECF940(0, &qword_28111FB20);
    v14 = sub_20D5683B8();
    v12 = [v13 valueWithValue_];
  }

  v15 = sub_20D565A28();
  if (v15)
  {
    v16 = v15;
  }

  else
  {
    sub_20CECF940(0, &qword_28111FB20);
    v17 = sub_20D5683D8();
    v18 = sub_20D5683D8();
    v16 = [objc_opt_self() rangeWithMaxValue:v17 minValue:v18];
  }

  v19 = [v16 minValue];
  [v19 floatValue];
  v21 = v20;

  v22 = [v12 midValue];
  [v22 floatValue];
  v24 = v23;

  if (v21 > v24)
  {
    v24 = v21;
  }

  v45 = v12;
  v25 = [v16 maxValue];
  [v25 floatValue];
  v27 = v26;

  if (v27 >= v24)
  {
    v28 = v24;
  }

  else
  {
    v28 = v27;
  }

  v57 = v28;
  v29 = [v16 minValue];
  [v29 floatValue];
  v31 = v30;

  v32 = [v16 maxValue];
  [v32 floatValue];
  v34 = v33;

  if (v31 > v34)
  {
    __break(1u);
  }

  else
  {
    v53 = __PAIR64__(LODWORD(v34), LODWORD(v31));
    MEMORY[0x28223BE20](v35);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CC70);
    sub_20CF18044();
    sub_20CF182F0();
    sub_20D5673A8();
    sub_20D566E08();
    v36 = sub_20CF156D0(&qword_27C81CCD8, &qword_27C81CC60);
    v37 = sub_20CF17BB8(&qword_27C81CCE0, MEMORY[0x277CDE3B8]);
    v38 = v51;
    sub_20D567128();
    (*(v50 + 8))(v4, v38);
    (*(v47 + 8))(v7, v5);
    v53 = v5;
    v54 = v38;
    v55 = v36;
    v56 = v37;
    swift_getOpaqueTypeConformance2();
    v39 = v52;
    v40 = v49;
    sub_20D5671C8();
    (*(v48 + 8))(v10, v40);
    v41 = sub_20D567348();
    KeyPath = swift_getKeyPath();
    v43 = (v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CCE8) + 36));
    *v43 = KeyPath;
    v43[1] = v41;
    LODWORD(v41) = sub_20D566D58();

    *(v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CCF0) + 36)) = v41;
  }
}

uint64_t sub_20CF169A0@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CCF8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15 - v3;
  result = sub_20D565A18();
  v6 = result;
  if (!result)
  {
    KeyPath = 0;
    v9 = 0;
    v14 = 0;
LABEL_6:
    v13 = 0;
    goto LABEL_7;
  }

  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (!v7)
  {
    swift_unknownObjectRelease();
    v6 = 0;
    KeyPath = 0;
    v9 = 0;
    v14 = 0;
    result = 0;
    goto LABEL_6;
  }

  v8 = [v7 imageIdentifier];
  swift_unknownObjectRelease();
  sub_20D567838();

  v6 = sub_20D5673C8();
  v9 = sub_20D567348();
  KeyPath = swift_getKeyPath();
  v11 = sub_20D566D58();
  sub_20D566FF8();
  v12 = sub_20D566FC8();
  (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
  v13 = sub_20D567008();
  sub_20CEF928C(v4, &qword_27C81CCF8);
  result = swift_getKeyPath();
  v14 = v11;
LABEL_7:
  *a1 = v6;
  a1[1] = KeyPath;
  a1[2] = v9;
  a1[3] = v14;
  a1[4] = result;
  a1[5] = v13;
  return result;
}

uint64_t sub_20CF16B80@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_20D566AE8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8215C0);
  MEMORY[0x28223BE20](v9);
  v11 = &v16 - v10;
  v12 = a1(0);
  sub_20CEF9178(v2 + *(v12 + 20), v11, &qword_27C8215C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_20D566938();
    return (*(*(v13 - 8) + 32))(a2, v11, v13);
  }

  else
  {
    sub_20D567EB8();
    v15 = sub_20D566EE8();
    sub_20D565868();

    sub_20D566AD8();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_20CF16D98@<X0>(uint64_t a1@<X8>)
{
  v32 = sub_20D563C28();
  v3 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v5 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CD00);
  MEMORY[0x28223BE20](v6);
  v8 = v27 - v7;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CD08);
  MEMORY[0x28223BE20](v33);
  v10 = v27 - v9;
  v11 = sub_20D566938();
  v30 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v1;
  v14 = sub_20D565A18();
  if (!v14)
  {
    goto LABEL_8;
  }

  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  v16 = v14;
  v14 = v15;
  if (!v15)
  {
    swift_unknownObjectRelease();
LABEL_8:
    sub_20D565A18();
    (*(v3 + 104))(v5, *MEMORY[0x277D18088], v32);
    sub_20D563C38();
    *&v8[*(v6 + 36)] = sub_20D566D58();
    sub_20CEF9178(v8, v10, &qword_27C81CD00);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CD10);
    sub_20CF18344();
    sub_20CF1856C();
    sub_20D566D18();

    return sub_20CEF928C(v8, &qword_27C81CD00);
  }

  v27[1] = v16;
  v28 = v6;
  v29 = a1;
  v17 = [v15 imageIdentifier];
  v27[0] = sub_20D567838();

  if (([v14 isSystemImage] & 1) == 0)
  {

    v6 = v28;
    goto LABEL_8;
  }

  v18 = sub_20D5673C8();
  sub_20CF16B80(type metadata accessor for StatusIconView, v13);
  v19 = sub_20D566918();
  (*(v30 + 8))(v13, v11);
  if (v19)
  {
    v20 = sub_20D566F78();
  }

  else
  {
    v20 = sub_20D567018();
  }

  v22 = v20;
  KeyPath = swift_getKeyPath();
  v24 = sub_20D567348();
  v25 = swift_getKeyPath();
  v26 = sub_20D566D58();
  *v10 = v18;
  *(v10 + 1) = KeyPath;
  *(v10 + 2) = v22;
  *(v10 + 3) = v25;
  *(v10 + 4) = v24;
  *(v10 + 10) = v26;
  swift_storeEnumTagMultiPayload();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CD10);
  sub_20CF18344();
  sub_20CF1856C();
  sub_20D566D18();

  return swift_unknownObjectRelease();
}

uint64_t sub_20CF17244@<X0>(uint64_t a1@<X8>)
{
  v88 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CD58);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v89 = &v80 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v87 = &v80 - v4;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CD60);
  v86 = *(v90 - 8);
  v5 = MEMORY[0x28223BE20](v90);
  v85 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v91 = &v80 - v7;
  v92 = sub_20D565A38();
  v93 = v8;
  v84 = sub_20CEF44D8();
  v9 = sub_20D5670E8();
  v11 = v10;
  v13 = v12;
  sub_20D567048();
  v14 = sub_20D5670C8();
  v16 = v15;
  v18 = v17;

  sub_20CF13F34(v9, v11, v13 & 1);

  sub_20D566FD8();
  v19 = sub_20D567098();
  v21 = v20;
  v23 = v22;
  sub_20CF13F34(v14, v16, v18 & 1);

  sub_20D567378();
  v24 = sub_20D5670A8();
  v26 = v25;
  LOBYTE(v14) = v27;

  sub_20CF13F34(v19, v21, v23 & 1);

  LODWORD(v92) = sub_20D566D58();
  v28 = sub_20D5670B8();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  sub_20CF13F34(v24, v26, v14 & 1);

  KeyPath = swift_getKeyPath();
  v36 = v91;
  v37 = (v91 + *(v90 + 36));
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CD68);
  v38 = *(v83 + 28);
  v39 = *MEMORY[0x277CDF3C0];
  v40 = sub_20D5667B8();
  v41 = *(v40 - 8);
  v42 = *(v41 + 104);
  v82 = v39;
  v43 = v39;
  v44 = v40;
  v80 = v41 + 104;
  v81 = v42;
  v42(v37 + v38, v43, v40);
  *v37 = KeyPath;
  *v36 = v28;
  *(v36 + 8) = v30;
  *(v36 + 16) = v32 & 1;
  *(v36 + 24) = v34;
  v45 = sub_20D565A08();
  if (v46)
  {
    v92 = v45;
    v93 = v46;
    v47 = sub_20D5670E8();
    v49 = v48;
    v51 = v50;
    sub_20D567048();
    v52 = sub_20D5670C8();
    v54 = v53;
    v56 = v55;

    sub_20CF13F34(v47, v49, v51 & 1);

    sub_20D567378();
    v57 = sub_20D5670A8();
    v59 = v58;
    v61 = v60;

    sub_20CF13F34(v52, v54, v56 & 1);

    LODWORD(v92) = sub_20D566D68();
    v62 = sub_20D5670B8();
    v64 = v63;
    LOBYTE(v52) = v65;
    v67 = v66;
    sub_20CF13F34(v57, v59, v61 & 1);

    v68 = swift_getKeyPath();
    v69 = v90;
    v70 = v85;
    v71 = &v85[*(v90 + 36)];
    v81(v71 + *(v83 + 28), v82, v44);
    *v71 = v68;
    *v70 = v62;
    *(v70 + 8) = v64;
    *(v70 + 16) = v52 & 1;
    *(v70 + 24) = v67;
    v72 = v87;
    sub_20CF15584(v70, v87, &qword_27C81CD60);
    v73 = 0;
    v74 = v69;
  }

  else
  {
    v73 = 1;
    v72 = v87;
    v70 = v85;
    v74 = v90;
  }

  (*(v86 + 56))(v72, v73, 1, v74);
  v75 = v91;
  sub_20CEF9178(v91, v70, &qword_27C81CD60);
  v76 = v89;
  sub_20CEF9178(v72, v89, &qword_27C81CD58);
  v77 = v88;
  sub_20CEF9178(v70, v88, &qword_27C81CD60);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CD70);
  sub_20CEF9178(v76, v77 + *(v78 + 48), &qword_27C81CD58);
  sub_20CEF928C(v72, &qword_27C81CD58);
  sub_20CEF928C(v75, &qword_27C81CD60);
  sub_20CEF928C(v76, &qword_27C81CD58);
  return sub_20CEF928C(v70, &qword_27C81CD60);
}

uint64_t sub_20CF17868@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_20D566BA8();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CD50);
  return sub_20CF17244(a1 + *(v2 + 44));
}

uint64_t sub_20CF178F0(uint64_t a1)
{
  v2 = sub_20D566938();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_20D566A18();
}

uint64_t sub_20CF179B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StatusIconView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_20CF17A1C()
{
  result = qword_27C81CC18;
  if (!qword_27C81CC18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C81CC10);
    sub_20CF17AA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81CC18);
  }

  return result;
}

unint64_t sub_20CF17AA8()
{
  result = qword_27C81CC20;
  if (!qword_27C81CC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81CC20);
  }

  return result;
}

unint64_t sub_20CF17AFC()
{
  result = qword_27C81CC28;
  if (!qword_27C81CC28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C81CBF8);
    sub_20CF17BB8(&qword_27C81CC30, type metadata accessor for StatusIconView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81CC28);
  }

  return result;
}

uint64_t sub_20CF17BB8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8202F0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8202F0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_20CF17DA4()
{
  sub_20CF15808();
  if (v0 <= 0x3F)
  {
    sub_20CF1589C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_20CF17E28(uint64_t a1, int a2)
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

uint64_t sub_20CF17E70(uint64_t result, int a2, int a3)
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

unint64_t sub_20CF17EBC()
{
  result = qword_27C81CC50;
  if (!qword_27C81CC50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C81CC58);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C81CBD8);
    sub_20CF156D0(&qword_27C81CBF0, &qword_27C81CBD8);
    swift_getOpaqueTypeConformance2();
    sub_20CF17BB8(&qword_27C820400, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81CC50);
  }

  return result;
}

unint64_t sub_20CF18044()
{
  result = qword_27C81CC78;
  if (!qword_27C81CC78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C81CC70);
    sub_20CF180C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81CC78);
  }

  return result;
}

unint64_t sub_20CF180C8()
{
  result = qword_27C81CC80;
  if (!qword_27C81CC80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C81CC88);
    sub_20CF18180();
    sub_20CF156D0(&qword_27C81CCC8, &qword_27C8203B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81CC80);
  }

  return result;
}

unint64_t sub_20CF18180()
{
  result = qword_27C81CC90;
  if (!qword_27C81CC90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C81CC98);
    sub_20CF18238();
    sub_20CF156D0(&qword_27C81CCB8, &qword_27C81CCC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81CC90);
  }

  return result;
}

unint64_t sub_20CF18238()
{
  result = qword_27C81CCA0;
  if (!qword_27C81CCA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C81CCA8);
    sub_20CF156D0(&qword_27C81CCB0, &qword_27C81EE60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81CCA0);
  }

  return result;
}

unint64_t sub_20CF182F0()
{
  result = qword_27C81CCD0;
  if (!qword_27C81CCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81CCD0);
  }

  return result;
}

unint64_t sub_20CF18344()
{
  result = qword_27C81CD18;
  if (!qword_27C81CD18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C81CD10);
    sub_20CF183FC();
    sub_20CF156D0(&qword_27C81CCB8, &qword_27C81CCC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81CD18);
  }

  return result;
}

unint64_t sub_20CF183FC()
{
  result = qword_27C81CD20;
  if (!qword_27C81CD20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C81CD28);
    sub_20CF184B4();
    sub_20CF156D0(&qword_27C81CCB0, &qword_27C81EE60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81CD20);
  }

  return result;
}

unint64_t sub_20CF184B4()
{
  result = qword_27C81CD30;
  if (!qword_27C81CD30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C81CD38);
    sub_20CF156D0(&qword_27C81CCC8, &qword_27C8203B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81CD30);
  }

  return result;
}

unint64_t sub_20CF1856C()
{
  result = qword_27C81CD40;
  if (!qword_27C81CD40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C81CD00);
    sub_20CF17BB8(&qword_27C81CD48, MEMORY[0x277D180A0]);
    sub_20CF156D0(&qword_27C81CCB8, &qword_27C81CCC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81CD40);
  }

  return result;
}

unint64_t sub_20CF18654()
{
  result = qword_27C81CD78;
  if (!qword_27C81CD78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C81CCF0);
    sub_20CF1870C();
    sub_20CF156D0(&qword_27C81CCB8, &qword_27C81CCC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81CD78);
  }

  return result;
}

unint64_t sub_20CF1870C()
{
  result = qword_27C81CD80;
  if (!qword_27C81CD80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C81CCE8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C81CC68);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C81CC60);
    sub_20D566E18();
    sub_20CF156D0(&qword_27C81CCD8, &qword_27C81CC60);
    sub_20CF17BB8(&qword_27C81CCE0, MEMORY[0x277CDE3B8]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_20CF156D0(&qword_27C81CCB0, &qword_27C81EE60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81CD80);
  }

  return result;
}

unint64_t sub_20CF188C0()
{
  result = qword_27C81CD88;
  if (!qword_27C81CD88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C81CD90);
    sub_20CF18344();
    sub_20CF1856C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81CD88);
  }

  return result;
}

uint64_t sub_20CF18960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C610);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_20CEF9178(a3, v25 - v10, &qword_27C81C610);
  v12 = sub_20D567C58();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_20CEF928C(v11, &qword_27C81C610);
  }

  else
  {
    sub_20D567C48();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_20D567BA8();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_20D567878() + 32;
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

      sub_20CEF928C(a3, &qword_27C81C610);

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

  sub_20CEF928C(a3, &qword_27C81C610);
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

uint64_t sub_20CF18C60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C610);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_20CEF9178(a3, v25 - v10, &qword_27C81C610);
  v12 = sub_20D567C58();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_20CEF928C(v11, &qword_27C81C610);
  }

  else
  {
    sub_20D567C48();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_20D567BA8();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_20D567878() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CE18);
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

      sub_20CEF928C(a3, &qword_27C81C610);

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

  sub_20CEF928C(a3, &qword_27C81C610);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CE18);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_20CF18F74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C610);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_20CEF9178(a3, v25 - v10, &qword_27C81C610);
  v12 = sub_20D567C58();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_20CEF928C(v11, &qword_27C81C610);
  }

  else
  {
    sub_20D567C48();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_20D567BA8();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_20D567878() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81E180);
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

      sub_20CEF928C(a3, &qword_27C81C610);

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

  sub_20CEF928C(a3, &qword_27C81C610);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81E180);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

id HomeEnergyManagerHelper.__allocating_init(home:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___HUHomeEnergyManagerHelper_home] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id HomeEnergyManagerHelper.init(home:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___HUHomeEnergyManagerHelper_home] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for HomeEnergyManagerHelper();
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_20CF193C4()
{
  v0[3] = [*(v0[2] + OBJC_IVAR___HUHomeEnergyManagerHelper_home) hf_energyManager];
  v3 = (*MEMORY[0x277D13220] + MEMORY[0x277D13220]);
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_20CF19490;

  return v3();
}

uint64_t sub_20CF19490(char a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_20CF195E8, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6(a1 & 1);
  }
}

uint64_t sub_20CF195E8()
{
  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_20CF197C4(const void *a1, void *a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);
  v4 = a2;

  return MEMORY[0x2822009F8](sub_20CF1983C, 0, 0);
}

uint64_t sub_20CF1983C()
{
  v0[4] = [*(v0[2] + OBJC_IVAR___HUHomeEnergyManagerHelper_home) hf_energyManager];
  v3 = (*MEMORY[0x277D13220] + MEMORY[0x277D13220]);
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_20CF19908;

  return v3();
}

uint64_t sub_20CF19908(char a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_20CF19A84, 0, 0);
  }

  else
  {
    v6 = *(v4 + 24);
    v7 = *(v4 + 16);

    (*(v6 + 16))(v6, a1 & 1, 0);
    _Block_release(*(v4 + 24));
    v8 = *(v5 + 8);

    return v8();
  }
}

uint64_t sub_20CF19A84()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = *(v0 + 16);

  v4 = sub_20D5635C8();
  (*(v2 + 16))(v2, 0, v4);

  _Block_release(*(v0 + 24));
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_20CF19B30()
{
  sub_20D563AA8();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_20CF19BCC;

  return MEMORY[0x282171308]();
}

uint64_t sub_20CF19BCC(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t sub_20CF19E44(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  sub_20D563AA8();
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_20CF19EE8;

  return MEMORY[0x282171308]();
}

uint64_t sub_20CF19EE8()
{
  v1 = *(*v0 + 16);
  v5 = *v0;

  v2 = sub_20D5677F8();

  (v1)[2](v1, v2);

  _Block_release(v1);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_20CF1A038()
{
  v1[2] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C180);
  v1[3] = swift_task_alloc();
  v2 = sub_20D565988();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CF1A13C, 0, 0);
}

uint64_t sub_20CF1A13C()
{
  v45 = v0;
  if (qword_28111FAF0 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  qword_281120C18;
  sub_20D565998();
  v2 = v1;
  v3 = sub_20D565968();
  v4 = sub_20D567EC8();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[7];
  v8 = v0[4];
  v7 = v0[5];
  if (v5)
  {
    v42 = v0[7];
    v9 = v0[2];
    v10 = swift_slowAlloc();
    v41 = v8;
    v11 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v12 = v44;
    *v10 = 136315650;
    *(v10 + 4) = sub_20CEE913C(0xD000000000000014, 0x800000020D5CE3C0, &v44);
    *(v10 + 12) = 2112;
    v13 = *(v9 + OBJC_IVAR___HUHomeEnergyManagerHelper_home);
    *(v10 + 14) = v13;
    *v11 = v13;
    *(v10 + 22) = 2080;
    v14 = [v13 location];
    v15 = sub_20D564B88();
    v17 = v16;

    v18 = sub_20CEE913C(v15, v17, &v44);

    *(v10 + 24) = v18;
    _os_log_impl(&dword_20CEB6000, v3, v4, "%s RE-initializing fixed snapshots with home:%@ at new location (%s)...", v10, 0x20u);
    sub_20CEF928C(v11, &unk_27C81BE60);
    MEMORY[0x20F31FC70](v11, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x20F31FC70](v12, -1, -1);
    MEMORY[0x20F31FC70](v10, -1, -1);

    v19 = *(v7 + 8);
    v19(v42, v41);
  }

  else
  {

    v19 = *(v7 + 8);
    v19(v6, v8);
  }

  v20 = v0[2];
  sub_20D565998();
  v21 = v20;
  v22 = sub_20D565968();
  v23 = sub_20D567E98();

  if (os_log_type_enabled(v22, v23))
  {
    v43 = v19;
    v24 = v0[2];
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v44 = v26;
    *v25 = 136315394;
    *(v25 + 4) = sub_20CEE913C(0xD000000000000014, 0x800000020D5CE3C0, &v44);
    *(v25 + 12) = 2080;
    v27 = [*(v24 + OBJC_IVAR___HUHomeEnergyManagerHelper_home) location];
    if (v27)
    {
      v28 = v27;
      v29 = [v27 description];

      v30 = sub_20D567838();
      v32 = v31;
    }

    else
    {
      v32 = 0xE300000000000000;
      v30 = 4999502;
    }

    v35 = v0[6];
    v36 = v0[4];
    v37 = sub_20CEE913C(v30, v32, &v44);

    *(v25 + 14) = v37;
    _os_log_impl(&dword_20CEB6000, v22, v23, "\t...%s home loc: %s", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F31FC70](v26, -1, -1);
    MEMORY[0x20F31FC70](v25, -1, -1);

    v43(v35, v36);
  }

  else
  {
    v33 = v0[6];
    v34 = v0[4];

    v19(v33, v34);
  }

  v0[8] = sub_20D563BF8();
  v0[9] = sub_20D567C18();
  v0[10] = sub_20D567C08();
  v39 = sub_20D567BA8();

  return MEMORY[0x2822009F8](sub_20CF1A5F4, v39, v38);
}

uint64_t sub_20CF1A5F4()
{

  *(v0 + 88) = sub_20D563BE8();

  return MEMORY[0x2822009F8](sub_20CF1A668, 0, 0);
}

uint64_t sub_20CF1A668()
{
  v1 = *(v0[2] + OBJC_IVAR___HUHomeEnergyManagerHelper_home);
  v2 = [v1 location];
  if (!v2)
  {
    v2 = sub_20D564B78();
  }

  v0[12] = v2;
  v3 = v0[3];
  v4 = [v1 name];
  v5 = sub_20D567838();
  v7 = v6;

  v0[13] = v5;
  v0[14] = v7;
  v8 = [v1 uniqueIdentifier];
  sub_20D5637E8();

  v9 = sub_20D563818();
  (*(*(v9 - 8) + 56))(v3, 0, 1, v9);
  v0[15] = sub_20D567C08();
  v11 = sub_20D567BA8();

  return MEMORY[0x2822009F8](sub_20CF1A7D4, v11, v10);
}

uint64_t sub_20CF1A7D4()
{
  v1 = v0[12];
  v2 = v0[3];

  sub_20D563BD8();

  sub_20CEF928C(v2, &qword_27C81C180);

  v3 = v0[1];

  return v3();
}

uint64_t sub_20CF1AA2C(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_20CF1AAD4;

  return sub_20CF1A038();
}

uint64_t sub_20CF1AAD4()
{
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 16);
  v5 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_20CF1AC0C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C610);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = sub_20D567C58();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v0;
  v6 = v0;
  sub_20CF18960(0, 0, v3, &unk_20D5BDEC8, v5);
}

uint64_t sub_20CF1AD10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C180);
  v4[3] = swift_task_alloc();
  v5 = sub_20D565988();
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  v4[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CF1AE14, 0, 0);
}

uint64_t sub_20CF1AE14()
{
  v41 = v0;
  v1 = *(v0[2] + OBJC_IVAR___HUHomeEnergyManagerHelper_home);
  v0[8] = v1;
  if (qword_28111FAF0 != -1)
  {
    swift_once();
  }

  qword_281120C18;
  sub_20D565998();
  v2 = v1;
  v3 = sub_20D565968();
  v4 = sub_20D567EC8();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[7];
  v7 = v0[5];
  v38 = v0[4];
  if (v5)
  {
    v37 = v0[7];
    v8 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v40 = v36;
    *v8 = 136315650;
    *(v8 + 4) = sub_20CEE913C(0xD000000000000021, 0x800000020D5CE8E0, &v40);
    *(v8 + 12) = 2112;
    *(v8 + 14) = v2;
    *v35 = v2;
    *(v8 + 22) = 2080;
    v9 = [v2 location];
    v10 = sub_20D564B88();
    v12 = v11;

    v13 = sub_20CEE913C(v10, v12, &v40);

    *(v8 + 24) = v13;
    _os_log_impl(&dword_20CEB6000, v3, v4, "%s initializing fixed snapshots with home:%@ w/%s ...", v8, 0x20u);
    sub_20CEF928C(v35, &unk_27C81BE60);
    MEMORY[0x20F31FC70](v35, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x20F31FC70](v36, -1, -1);
    MEMORY[0x20F31FC70](v8, -1, -1);

    v14 = *(v7 + 8);
    v14(v37, v38);
  }

  else
  {

    v14 = *(v7 + 8);
    v14(v6, v38);
  }

  sub_20D565998();
  v15 = v2;
  v16 = sub_20D565968();
  v17 = sub_20D567E98();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v40 = v19;
    *v18 = 136315394;
    *(v18 + 4) = sub_20CEE913C(0xD000000000000021, 0x800000020D5CE8E0, &v40);
    *(v18 + 12) = 2080;
    v20 = [v15 location];
    if (v20)
    {
      v21 = v20;
      v22 = [v20 description];

      v23 = sub_20D567838();
      v25 = v24;
    }

    else
    {
      v25 = 0xE300000000000000;
      v23 = 4999502;
    }

    v39 = v0[6];
    v30 = v0[4];
    v31 = sub_20CEE913C(v23, v25, &v40);

    *(v18 + 14) = v31;
    _os_log_impl(&dword_20CEB6000, v16, v17, "\t...%s home loc: %s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F31FC70](v19, -1, -1);
    MEMORY[0x20F31FC70](v18, -1, -1);

    v28 = v39;
    v29 = v30;
  }

  else
  {
    v26 = v0[6];
    v27 = v0[4];

    v28 = v26;
    v29 = v27;
  }

  v14(v28, v29);
  v0[9] = sub_20D563BF8();
  v0[10] = sub_20D567C18();
  v0[11] = sub_20D567C08();
  v33 = sub_20D567BA8();

  return MEMORY[0x2822009F8](sub_20CF1B2BC, v33, v32);
}

uint64_t sub_20CF1B2BC()
{

  *(v0 + 96) = sub_20D563BE8();

  return MEMORY[0x2822009F8](sub_20CF1B330, 0, 0);
}

uint64_t sub_20CF1B330()
{
  v1 = [*(v0 + 64) location];
  if (!v1)
  {
    v1 = sub_20D564B78();
  }

  *(v0 + 104) = v1;
  v2 = *(v0 + 64);
  v3 = *(v0 + 24);
  v4 = [v2 name];
  v5 = sub_20D567838();
  v7 = v6;

  *(v0 + 112) = v5;
  *(v0 + 120) = v7;
  v8 = [v2 uniqueIdentifier];
  sub_20D5637E8();

  v9 = sub_20D563818();
  (*(*(v9 - 8) + 56))(v3, 0, 1, v9);
  *(v0 + 128) = sub_20D567C08();
  v11 = sub_20D567BA8();

  return MEMORY[0x2822009F8](sub_20CF1B490, v11, v10);
}

uint64_t sub_20CF1B490()
{
  v1 = v0[13];
  v2 = v0[3];

  sub_20D563BD8();

  sub_20CEF928C(v2, &qword_27C81C180);

  v3 = v0[1];

  return v3();
}

uint64_t sub_20CF1B67C()
{
  v1[2] = v0;
  v2 = sub_20D565988();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CF1B73C, 0, 0);
}

uint64_t sub_20CF1B73C()
{
  v14 = v0;
  if (qword_28111FAF0 != -1)
  {
    swift_once();
  }

  v1 = qword_281120C18;
  sub_20D565998();
  v2 = sub_20D565968();
  v3 = sub_20D567EC8();
  v4 = os_log_type_enabled(v2, v3);
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[3];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_20CEE913C(0xD000000000000014, 0x800000020D5CE3E0, &v13);
    _os_log_impl(&dword_20CEB6000, v2, v3, "%s Finding home region", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x20F31FC70](v9, -1, -1);
    MEMORY[0x20F31FC70](v8, -1, -1);
  }

  (*(v6 + 8))(v5, v7);
  v0[6] = [*(v0[2] + OBJC_IVAR___HUHomeEnergyManagerHelper_home) hf_energyManager];
  v12 = (*MEMORY[0x277D13228] + MEMORY[0x277D13228]);
  v10 = swift_task_alloc();
  v0[7] = v10;
  *v10 = v0;
  v10[1] = sub_20CF1B94C;

  return v12();
}

uint64_t sub_20CF1B94C(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 48);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t sub_20CF1BC00(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_20CF1BCA8;

  return sub_20CF1B67C();
}

uint64_t sub_20CF1BCA8()
{
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 16);
  v6 = *v0;

  v3 = sub_20D5677F8();

  (v1)[2](v1, v3);

  _Block_release(v1);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_20CF1BE30()
{
  v0[3] = [*(v0[2] + OBJC_IVAR___HUHomeEnergyManagerHelper_home) hf_energyManager];
  v3 = (*MEMORY[0x277D13230] + MEMORY[0x277D13230]);
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_20CF1BEFC;

  return v3();
}

uint64_t sub_20CF1BEFC(uint64_t a1)
{
  v3 = *(*v1 + 24);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_20CF1C184(const void *a1, void *a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);
  v4 = a2;

  return MEMORY[0x2822009F8](sub_20CF1C1FC, 0, 0);
}

uint64_t sub_20CF1C1FC()
{
  v0[4] = [*(v0[2] + OBJC_IVAR___HUHomeEnergyManagerHelper_home) hf_energyManager];
  v3 = (*MEMORY[0x277D13230] + MEMORY[0x277D13230]);
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_20CF1C2C8;

  return v3();
}

uint64_t sub_20CF1C2C8()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CE20);
  v4 = sub_20D567738();

  (v2)[2](v2, v4);

  _Block_release(v2);
  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_20CF1C494()
{
  v0[3] = [*(v0[2] + OBJC_IVAR___HUHomeEnergyManagerHelper_home) hf_energyManager];
  v3 = (*MEMORY[0x277D13238] + MEMORY[0x277D13238]);
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_20CF1BEFC;

  return v3();
}

uint64_t sub_20CF1C6D4(const void *a1, void *a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);
  v4 = a2;

  return MEMORY[0x2822009F8](sub_20CF1C74C, 0, 0);
}

uint64_t sub_20CF1C74C()
{
  v0[4] = [*(v0[2] + OBJC_IVAR___HUHomeEnergyManagerHelper_home) hf_energyManager];
  v3 = (*MEMORY[0x277D13238] + MEMORY[0x277D13238]);
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_20CF1C818;

  return v3();
}

uint64_t sub_20CF1C818(char a1)
{
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v8 = *v1;

  v4[2](v4, a1 & 1);
  _Block_release(v4);
  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_20CF1C978(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C610);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v16 - v3;
  v5 = sub_20D563818();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 uniqueIdentifier];
  sub_20D5637E8();

  v10 = sub_20D5637B8();
  v12 = v11;
  (*(v6 + 8))(v8, v5);
  v13 = sub_20D567C58();
  (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v10;
  v14[5] = v12;
  sub_20CF18960(0, 0, v4, &unk_20D5BDEF0, v14);
}

uint64_t sub_20CF1CB48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_20CF1CB68, 0, 0);
}

uint64_t sub_20CF1CB68()
{
  sub_20D5649C8();
  v0[4] = sub_20D5649B8();
  v5 = (*MEMORY[0x277D075A0] + MEMORY[0x277D075A0]);
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_20CF1CC28;
  v2 = v0[2];
  v3 = v0[3];

  return v5(1, v2, v3);
}

uint64_t sub_20CF1CC28()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_20CF1CF18(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_20CF1CFCC;

  return (sub_20CF237E4)(a1, a2);
}

uint64_t sub_20CF1CFCC(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_20CF1D0C8(char a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v10 = sub_20D565988();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28111FAF0 != -1)
  {
    swift_once();
  }

  v14 = qword_281120C18;
  sub_20D565998();
  sub_20D5663C8();
  sub_20D5663C8();
  v15 = sub_20D565968();
  v16 = sub_20D567EC8();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v26 = v11;
    v18 = a4;
    v19 = v17;
    v20 = swift_slowAlloc();
    v25 = v10;
    v21 = a2;
    v22 = v20;
    v27 = v20;
    *v19 = 136315650;
    *(v19 + 4) = sub_20CEE913C(v18, a5, &v27);
    *(v19 + 12) = 1024;
    *(v19 + 14) = a1 & 1;
    *(v19 + 18) = 2080;
    *(v19 + 20) = sub_20CEE913C(v21, a3, &v27);
    _os_log_impl(&dword_20CEB6000, v15, v16, "shouldShowConnectAccountBanner for home %s %{BOOL}d because: %s", v19, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x20F31FC70](v22, -1, -1);
    MEMORY[0x20F31FC70](v19, -1, -1);

    return (*(v26 + 8))(v13, v25);
  }

  else
  {

    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_20CF1D4C0(void *a1, char a2, void *aBlock)
{
  v3[2] = a1;
  v3[3] = _Block_copy(aBlock);
  v6 = a1;
  v7 = swift_task_alloc();
  v3[4] = v7;
  *v7 = v3;
  v7[1] = sub_20CF1D594;

  return sub_20CF237E4(v6, a2);
}

uint64_t sub_20CF1D594(char a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  v3[2](v3, a1 & 1);
  _Block_release(v3);
  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_20CF1D6DC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_20CF1CFCC;

  return sub_20CF2285C(a1);
}

uint64_t sub_20CF1D784(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_20CF26F00;

  return sub_20CF22204(a1, a2);
}

uint64_t sub_20CF1D838(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_20CF1D858, 0, 0);
}

uint64_t sub_20CF1D858()
{
  sub_20D564D98();
  v1 = sub_20D564D58();
  v0[4] = v1;
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_20CF1D90C;
  v4 = v0[2];
  v3 = v0[3];

  return MEMORY[0x282172648](v4, v3, v1);
}

uint64_t sub_20CF1D90C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 48) = a1;
  *(v3 + 56) = v1;

  if (v1)
  {
    v4 = sub_20CF1DAB8;
  }

  else
  {

    v4 = sub_20CF1DA28;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_20CF1DA28()
{
  v1 = *(v0 + 48);
  if (v1)
  {
    v2 = objc_allocWithZone(type metadata accessor for UtilityConfigurationHelper());
    v3 = sub_20D036ED0(v1);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_20CF1DAB8()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20CF1DCA0(int a1, void *aBlock)
{
  v2[2] = _Block_copy(aBlock);
  v2[3] = sub_20D567838();
  v2[4] = v3;

  return MEMORY[0x2822009F8](sub_20CF1DD1C, 0, 0);
}

uint64_t sub_20CF1DD1C()
{
  sub_20D564D98();
  v1 = sub_20D564D58();
  v0[5] = v1;
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_20CF1DDD0;
  v4 = v0[3];
  v3 = v0[4];

  return MEMORY[0x282172648](v4, v3, v1);
}

uint64_t sub_20CF1DDD0(uint64_t a1)
{
  v3 = *v2;
  v3[7] = a1;
  v3[8] = v1;

  if (v1)
  {
    v4 = sub_20CF1DFA0;
  }

  else
  {
    v5 = v3[5];

    v4 = sub_20CF1DEF0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_20CF1DEF0()
{
  v1 = v0[7];
  if (v1)
  {
    v2 = objc_allocWithZone(type metadata accessor for UtilityConfigurationHelper());
    v3 = sub_20D036ED0(v1);
  }

  else
  {
    v3 = 0;
  }

  v4 = v0[2];
  (v4)[2](v4, v3, 0);
  _Block_release(v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_20CF1DFA0()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 16);

  v3 = sub_20D5635C8();

  (v2)[2](v2, 0, v3);
  _Block_release(v2);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_20CF1E050(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  v3[9] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81BEA0);
  v3[12] = v4;
  v3[13] = *(v4 - 8);
  v3[14] = swift_task_alloc();
  v5 = type metadata accessor for Utility();
  v3[15] = v5;
  v3[16] = *(v5 - 8);
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CE38);
  v3[19] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81CE40);
  v3[20] = v6;
  v3[21] = *(v6 - 8);
  v3[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C610);
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CF1E26C, 0, 0);
}

uint64_t sub_20CF1E26C()
{
  v1 = *(v0 + 88);
  v2 = *(v1 + 16);
  if (v2)
  {
    v27 = **(v0 + 80);
    v3 = sub_20D567C58();
    v4 = *(v3 - 8);
    v26 = *(v4 + 56);
    v24 = v3;
    v25 = (v4 + 48);
    v23 = (v4 + 8);
    v5 = (v1 + 40);
    do
    {
      v28 = v2;
      v9 = *(v0 + 184);
      v8 = *(v0 + 192);
      v10 = *(v5 - 1);
      v11 = *v5;
      v26(v8, 1, 1, v3);
      v12 = swift_allocObject();
      v12[2] = 0;
      v13 = v12 + 2;
      v12[3] = 0;
      v12[4] = v10;
      v12[5] = v11;
      sub_20CEF9178(v8, v9, &qword_27C81C610);
      LODWORD(v9) = (*v25)(v9, 1, v3);
      sub_20D5663C8();
      v14 = *(v0 + 184);
      if (v9 == 1)
      {
        sub_20CEF928C(*(v0 + 184), &qword_27C81C610);
        if (*v13)
        {
          goto LABEL_9;
        }
      }

      else
      {
        sub_20D567C48();
        (*v23)(v14, v3);
        if (*v13)
        {
LABEL_9:
          swift_getObjectType();
          swift_unknownObjectRetain();
          v15 = sub_20D567BA8();
          v16 = v17;
          swift_unknownObjectRelease();
          goto LABEL_10;
        }
      }

      v15 = 0;
      v16 = 0;
LABEL_10:
      v18 = swift_allocObject();
      *(v18 + 16) = &unk_20D5BE300;
      *(v18 + 24) = v12;

      if (v16 | v15)
      {
        v6 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v15;
        *(v0 + 40) = v16;
      }

      else
      {
        v6 = 0;
      }

      v7 = *(v0 + 192);
      *(v0 + 48) = 1;
      *(v0 + 56) = v6;
      *(v0 + 64) = v27;
      swift_task_create();

      sub_20CEF928C(v7, &qword_27C81C610);
      v5 += 2;
      v2 = v28 - 1;
      v3 = v24;
    }

    while (v28 != 1);
  }

  sub_20D567BD8();
  *(v0 + 200) = MEMORY[0x277D84F90];
  v19 = swift_task_alloc();
  *(v0 + 208) = v19;
  *v19 = v0;
  v19[1] = sub_20CF1E5B8;
  v20 = *(v0 + 152);
  v21 = *(v0 + 160);

  return MEMORY[0x2822002E8](v20, 0, 0, v21);
}

uint64_t sub_20CF1E5B8()
{

  return MEMORY[0x2822009F8](sub_20CF1E6B4, 0, 0);
}

uint64_t sub_20CF1E6B4()
{
  v1 = v0[19];
  if ((*(v0[13] + 48))(v1, 1, v0[12]) == 1)
  {
    v2 = v0[25];
    v3 = v0[9];
    (*(v0[21] + 8))(v0[22], v0[20]);
    *v3 = v2;

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[15];
    v7 = v0[16];
    v8 = v0[14];
    sub_20CF26C48(v1, v8);
    if ((*(v7 + 48))(v8, 1, v6) == 1)
    {
      sub_20CEF928C(v0[14], &qword_27C81BEA0);
    }

    else
    {
      v10 = v0[17];
      v9 = v0[18];
      sub_20CF26CB8(v0[14], v9);
      sub_20CF26D1C(v9, v10);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v12 = v0[25];
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v12 = sub_20CEE8310(0, v12[2] + 1, 1, v0[25]);
      }

      v14 = v12[2];
      v13 = v12[3];
      if (v14 >= v13 >> 1)
      {
        v12 = sub_20CEE8310(v13 > 1, v14 + 1, 1, v12);
      }

      v15 = v0[17];
      v16 = v0[16];
      sub_20CF26D80(v0[18]);
      v12[2] = v14 + 1;
      sub_20CF26CB8(v15, v12 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v14);
      v0[25] = v12;
    }

    v17 = swift_task_alloc();
    v0[26] = v17;
    *v17 = v0;
    v17[1] = sub_20CF1E5B8;
    v18 = v0[19];
    v19 = v0[20];

    return MEMORY[0x2822002E8](v18, 0, 0, v19);
  }
}

uint64_t sub_20CF1E950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[7] = a1;
  v6 = sub_20D565988();
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  v7 = sub_20D5636B8();
  v5[13] = v7;
  v5[14] = *(v7 - 8);
  v5[15] = swift_task_alloc();
  v8 = type metadata accessor for Utility();
  v5[16] = v8;
  v5[17] = *(v8 - 8);
  v5[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81CDF0);
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CF1EB10, 0, 0);
}

uint64_t sub_20CF1EB10()
{
  sub_20D564D98();
  v1 = sub_20D564D58();
  v0[21] = v1;
  v2 = swift_task_alloc();
  v0[22] = v2;
  *v2 = v0;
  v2[1] = sub_20CF1EBC4;
  v4 = v0[8];
  v3 = v0[9];

  return MEMORY[0x282172648](v4, v3, v1);
}

uint64_t sub_20CF1EBC4(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 184) = a1;

  v4 = *(v3 + 168);
  if (v1)
  {

    v5 = sub_20CF1F96C;
  }

  else
  {

    v5 = sub_20CF1ED0C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}