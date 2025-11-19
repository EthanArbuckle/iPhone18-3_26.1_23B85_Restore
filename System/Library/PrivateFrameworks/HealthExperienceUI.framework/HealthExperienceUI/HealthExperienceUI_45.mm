void sub_1BA3CEEA0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v30 = a2;
  v31 = a1;
  v4 = sub_1BA4A35F8();
  v28 = *(v4 - 8);
  v29 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BA4A3678();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v3;
  v12 = [v3 userActivity];
  [v12 invalidate];

  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  sub_1B9F1B758(0, &qword_1EDC6B410, &qword_1EDC6B3D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v13 = swift_allocObject();
  v27 = xmmword_1BA4B5480;
  *(v13 + 16) = xmmword_1BA4B5480;
  *(v13 + 56) = MEMORY[0x1E69E6158];
  *(v13 + 64) = sub_1B9F1BE20();
  v15 = v30;
  v14 = v31;
  *(v13 + 32) = v31;
  *(v13 + 40) = v15;

  sub_1BA4A6768();

  (*(v8 + 104))(v11, *MEMORY[0x1E69A2C48], v7);
  v16 = sub_1BA4A35B8();

  (*(v8 + 8))(v11, v7);
  sub_1BA3D2130(0, &qword_1EDC6B418, sub_1BA1284D4, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = v27;
  v19 = v28;
  v18 = v29;
  (*(v28 + 104))(v6, *MEMORY[0x1E69A2BA8], v29);
  v20 = sub_1BA4A35E8();
  v22 = v21;
  (*(v19 + 8))(v6, v18);
  v33 = v20;
  v34 = v22;
  v23 = MEMORY[0x1E69E6158];
  sub_1BA4A7D58();
  *(inited + 96) = v23;
  *(inited + 72) = v14;
  *(inited + 80) = v15;

  sub_1B9FDB524(inited);
  swift_setDeallocating();
  sub_1BA3D29CC(inited + 32, sub_1BA1284D4);
  v24 = sub_1BA4A6618();

  [v16 addUserInfoEntriesFromDictionary_];

  v25 = sub_1BA4A6758();
  [v16 setPersistentIdentifier_];

  v26 = v32;
  [v32 setUserActivity_];
  [v26 submitUserActivityForRestoration_];
}

uint64_t sub_1BA3CF370(uint64_t a1, unint64_t a2)
{
  v4 = sub_1B9F2192C();
  v5 = [v4 searchBar];

  v6 = sub_1BA4A6758();
  [v5 setText_];

  return sub_1BA3CE94C(a1, a2, 1);
}

void sub_1BA3CF440()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC18HealthExperienceUI20SearchViewController_healthExperienceStore);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC18HealthExperienceUI20SearchViewController_pinnedContentManager);

  v1 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI20SearchViewController____lazy_storage___searchController);
}

id sub_1BA3CF4C8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

Swift::Bool __swiftcall SearchViewController.textFieldShouldReturn(_:)(UITextField *a1)
{
  v1 = [(UITextField *)a1 text];
  if (v1)
  {
    v2 = v1;
    v3 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v5 = v4;

    sub_1BA3CE94C(v3, v5, 1);
  }

  return 1;
}

uint64_t sub_1BA3CF764(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v98 = sub_1BA4A3EA8();
  v6 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v8 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v99 = &v81 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v91 = &v81 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v89 = &v81 - v14;
  v92 = sub_1BA4A1C68();
  v94 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v90 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v93 = &v81 - v17;
  sub_1BA3D2130(0, &qword_1EDC6AE90, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v81 - v19;
  v21 = sub_1BA4A15D8();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v81 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = a1;
  v96 = a2;
  sub_1BA4A15C8();
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_1B9F0DFE0(v20, &qword_1EDC6AE90, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1BA3D2130);
    v25 = v99;
    goto LABEL_6;
  }

  v83 = v8;
  (*(v22 + 32))(v24, v20, v21);
  v84 = v3;
  v26 = &v3[OBJC_IVAR____TtC18HealthExperienceUI20SearchViewController_healthExperienceStore];
  __swift_project_boxed_opaque_existential_1(&v3[OBJC_IVAR____TtC18HealthExperienceUI20SearchViewController_healthExperienceStore], *&v3[OBJC_IVAR____TtC18HealthExperienceUI20SearchViewController_healthExperienceStore + 24]);
  v27 = sub_1BA4A1B88();
  v25 = v99;
  if (!v27)
  {
    (*(v22 + 8))(v24, v21);
LABEL_6:
    sub_1BA4A3DD8();
    v31 = v96;

    v32 = sub_1BA4A3E88();
    v33 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = v6;
      v36 = swift_slowAlloc();
      *&v112[0] = v36;
      *v34 = 136315394;
      v37 = sub_1BA4A85D8();
      v39 = sub_1B9F0B82C(v37, v38, v112);

      *(v34 + 4) = v39;
      *(v34 + 12) = 2082;
      *(v34 + 14) = sub_1B9F0B82C(v95, v31, v112);
      _os_log_impl(&dword_1B9F07000, v32, v33, "[%s] Could not find a feed item when restoring from a core spotlight search item.  ID: %{public}s", v34, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v36, -1, -1);
      MEMORY[0x1BFAF43A0](v34, -1, -1);

      return (*(v35 + 8))(v25, v98);
    }

    else
    {

      return (*(v6 + 8))(v25, v98);
    }
  }

  v28 = v27;
  v86 = v24;
  v87 = v21;
  v88 = v22;
  v85 = v6;
  sub_1BA4A27B8();
  __swift_project_boxed_opaque_existential_1(v26, *(v26 + 3));
  v29 = sub_1BA4A1B68();
  v30 = v28;
  v41 = sub_1BA4A2598();

  v42 = v93;
  sub_1BA4A26B8();
  v43 = v92;
  v44 = (*(v94 + 88))(v42, v92);
  if (v44 == *MEMORY[0x1E69A3BB0] || v44 == *MEMORY[0x1E69A3BB8])
  {
    v82 = v41;
    sub_1B9F0A534(v26, v111);
    v54 = v84;
    v55 = *&v84[OBJC_IVAR____TtC18HealthExperienceUI20SearchViewController_healthStore];
    v56 = [v55 profileIdentifier];
    LOBYTE(v105[0]) = 15;
    v57 = _s18HealthExperienceUI18DataTypeDetailModeO07defaultG03for12presentationACSo19HKProfileIdentifierC_AA12PresentationOSgtFZ_0(v56, v105);

    sub_1B9F0A534(v54 + OBJC_IVAR____TtC18HealthExperienceUI20SearchViewController_pinnedContentManager, v110);
    sub_1B9F0A534(v111, v105);
    *(&v106 + 1) = v55;
    LOBYTE(v107) = v57;
    sub_1BA4A2488();
    swift_allocObject();
    v58 = v55;
    *(&v107 + 1) = sub_1BA4A2468();
    sub_1BA10F7B4(v110, &v100);
    v59 = v88;
    if (v101)
    {

      sub_1BA10F728(v110);
      __swift_destroy_boxed_opaque_existential_1(v111);
      sub_1B9F1134C(&v100, &v102);
      v60 = v82;
    }

    else
    {
      v61 = sub_1BA4A22B8();
      v62 = sub_1BA4A22A8();
      v103 = v61;
      v104 = MEMORY[0x1E69A3CF8];
      *&v102 = v62;
      sub_1BA10F728(v110);
      __swift_destroy_boxed_opaque_existential_1(v111);
      v60 = v82;
      if (v101)
      {
        sub_1BA10F728(&v100);
      }
    }

    sub_1B9F1134C(&v102, v108);
    *(&v109 + 1) = 0;
    v113 = 0;
    v112[4] = v108[0];
    v112[5] = v108[1];
    v112[0] = v105[0];
    v112[1] = v105[1];
    v112[2] = v106;
    v112[3] = v107;
    v112[6] = v109;
    v63 = sub_1BA4A2758();
    v64 = sub_1BA1591A8(v63);

    if (v64)
    {
      v74 = HKTDataTypeDetailFactory.makeViewController(hkType:context:)(v64, v112);
      v75 = [v54 navigationController];
      if (v75)
      {
        v76 = v75;
        sub_1B9F23348(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
        v77 = swift_allocObject();
        *(v77 + 16) = xmmword_1BA4B7510;
        *(v77 + 32) = v54;
        *(v77 + 40) = v74;
        sub_1B9F0ADF8(0, &qword_1EDC6B5D0);
        v78 = v54;
        v79 = v74;
        v80 = sub_1BA4A6AE8();

        [v76 setViewControllers:v80 animated:0];
      }

      else
      {
      }
    }

    else
    {
      v65 = v89;
      sub_1BA4A3DD8();
      v66 = sub_1BA4A3E88();
      v67 = sub_1BA4A6FA8();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        *&v105[0] = v69;
        *v68 = 136315138;
        v70 = sub_1BA4A85D8();
        v72 = v59;
        v73 = sub_1B9F0B82C(v70, v71, v105);

        *(v68 + 4) = v73;
        _os_log_impl(&dword_1B9F07000, v66, v67, "[%s] Feed item is missing associated type", v68, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v69);
        MEMORY[0x1BFAF43A0](v69, -1, -1);
        MEMORY[0x1BFAF43A0](v68, -1, -1);

        (*(v85 + 8))(v65, v98);
        sub_1BA114E30(v112);
        return (*(v72 + 8))(v86, v87);
      }

      (*(v85 + 8))(v65, v98);
    }

    sub_1BA114E30(v112);
    return (*(v59 + 8))(v86, v87);
  }

  else
  {
    v45 = v91;
    sub_1BA4A3DD8();
    v46 = v41;
    v47 = sub_1BA4A3E88();
    v48 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *&v112[0] = v50;
      *v49 = 136315138;
      sub_1BA4A26B8();
      v51 = sub_1BA4A6808();
      v53 = sub_1B9F0B82C(v51, v52, v112);

      *(v49 + 4) = v53;
      _os_log_impl(&dword_1B9F07000, v47, v48, "Attempting restoration for unsupported feed item content kind%s", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v50);
      MEMORY[0x1BFAF43A0](v50, -1, -1);
      MEMORY[0x1BFAF43A0](v49, -1, -1);

      (*(v85 + 8))(v91, v98);
    }

    else
    {

      (*(v85 + 8))(v45, v98);
    }

    (*(v88 + 8))(v86, v87);
    return (*(v94 + 8))(v93, v43);
  }
}

Swift::Void __swiftcall SearchViewController.restoreUserActivityState(_:)(NSUserActivity a1)
{
  isa = a1.super.isa;
  ObjectType = swift_getObjectType();
  sub_1BA3D2130(0, &qword_1EBBED070, MEMORY[0x1E69A2C78], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v97 - v2;
  v110 = sub_1BA4A3678();
  v108 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v98 = &v97 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v100 = &v97 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v103 = &v97 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v105 = &v97 - v10;
  v99 = type metadata accessor for SearchDataSource.State(0);
  MEMORY[0x1EEE9AC00](v99);
  v12 = &v97 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BA4A35F8();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v97 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_1BA4A3EA8();
  v17 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v104 = &v97 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v101 = &v97 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v97 - v22;
  sub_1BA4A3DD8();
  v24 = sub_1BA4A3E88();
  v25 = sub_1BA4A6F98();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_1B9F07000, v24, v25, "Attempting to restore Search View Controller from User Activity.", v26, 2u);
    MEMORY[0x1BFAF43A0](v26, -1, -1);
  }

  v27 = *(v17 + 8);
  v106 = v17 + 8;
  v107 = v27;
  v27(v23, v111);
  v28 = isa;
  v29 = [(objc_class *)isa userInfo];
  if (!v29)
  {
    v30 = MEMORY[0x1E69E7CA0];
    v117 = 0u;
    v118 = 0u;
    goto LABEL_11;
  }

  v30 = MEMORY[0x1E69E7CA0];
  v31 = v29;
  v32 = sub_1BA4A6628();

  (*(v14 + 104))(v16, *MEMORY[0x1E69A2BA8], v13);
  v33 = sub_1BA4A35E8();
  v35 = v34;
  (*(v14 + 8))(v16, v13);
  v115 = v33;
  v116 = v35;
  sub_1BA4A7D58();
  if (!*(v32 + 16) || (v36 = sub_1B9FDA8E4(&v119), (v37 & 1) == 0))
  {

    sub_1B9FDC768(&v119);
    v117 = 0u;
    v118 = 0u;
    v28 = isa;
LABEL_11:
    v38 = v108;
    goto LABEL_12;
  }

  sub_1B9F0AD9C(*(v32 + 56) + 32 * v36, &v117);
  sub_1B9FDC768(&v119);

  v28 = isa;
  v38 = v108;
  if (!*(&v118 + 1))
  {
LABEL_12:
    sub_1B9F0DFE0(&v117, &qword_1EDC6E300, v30 + 8, MEMORY[0x1E69E6720], sub_1B9F23348);
    goto LABEL_13;
  }

  if (swift_dynamicCast())
  {
LABEL_27:
    v51 = v120;
    *v12 = v119;
    *(v12 + 1) = v51;
    v12[16] = 1;
    swift_storeEnumTagMultiPayload();
    sub_1BA3CC650(v12);
    sub_1BA3D29CC(v12, type metadata accessor for SearchDataSource.State);
    goto LABEL_31;
  }

LABEL_13:
  v39 = [(objc_class *)v28 userInfo];
  if (!v39)
  {
LABEL_20:
    v117 = 0u;
    v118 = 0u;
    goto LABEL_21;
  }

  v40 = v39;
  v41 = sub_1BA4A6628();

  v115 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v116 = v42;
  sub_1BA4A7D58();
  if (!*(v41 + 16) || (v43 = sub_1B9FDA8E4(&v119), (v44 & 1) == 0))
  {

    sub_1B9FDC768(&v119);
    goto LABEL_20;
  }

  sub_1B9F0AD9C(*(v41 + 56) + 32 * v43, &v117);
  sub_1B9FDC768(&v119);

  if (!*(&v118 + 1))
  {
LABEL_21:
    sub_1B9F0DFE0(&v117, &qword_1EDC6E300, v30 + 8, MEMORY[0x1E69E6720], sub_1B9F23348);
    goto LABEL_22;
  }

  if (swift_dynamicCast())
  {
    sub_1BA3CF764(v119, v120);

    goto LABEL_31;
  }

LABEL_22:
  v45 = [(objc_class *)v28 userInfo];
  if (!v45)
  {
LABEL_29:
    v117 = 0u;
    v118 = 0u;
    goto LABEL_30;
  }

  v46 = v45;
  v47 = sub_1BA4A6628();

  v115 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v116 = v48;
  sub_1BA4A7D58();
  if (!*(v47 + 16) || (v49 = sub_1B9FDA8E4(&v119), (v50 & 1) == 0))
  {

    sub_1B9FDC768(&v119);
    goto LABEL_29;
  }

  sub_1B9F0AD9C(*(v47 + 56) + 32 * v49, &v117);
  sub_1B9FDC768(&v119);

  if (*(&v118 + 1))
  {
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_27;
  }

LABEL_30:
  sub_1B9F0DFE0(&v117, &qword_1EDC6E300, v30 + 8, MEMORY[0x1E69E6720], sub_1B9F23348);
LABEL_31:
  v52 = [(objc_class *)v28 activityType];
  _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  sub_1BA4A3688();
  v53 = v110;
  if ((*(v38 + 48))(v3, 1, v110) != 1)
  {
    v65 = v107;
    v66 = v105;
    (*(v38 + 32))(v105, v3, v53);
    v67 = sub_1BA4A70A8();
    v68 = v109;
    if (v67)
    {
      v69 = v67;
      if ([v67 type] == 3)
      {
        v70 = [objc_allocWithZone(MEMORY[0x1E696C1C0]) init];
        [v70 setProfileIdentifier_];
        [v70 resume];
        v71 = v70;
        UIViewController.resolvedHealthExperienceStore.getter(&v119);
        sub_1B9F0A534(v68 + OBJC_IVAR____TtC18HealthExperienceUI20SearchViewController_pinnedContentManager, &v117);
        type metadata accessor for ProfileGradientsProviderFactory();
        swift_initStaticObject();
        __swift_project_boxed_opaque_existential_1(&v119, v121);
        v72 = sub_1BA4A1B68();
        v73 = sub_1B9FE10EC(v71, v72);

        sub_1B9F0A534(&v119, &v115);
        sub_1B9F0A534(&v117, v114);
        v74 = objc_allocWithZone(type metadata accessor for ProfileOverviewViewController());
        v75 = sub_1BA1803C4(v71, &v115, v114, v73);

        __swift_destroy_boxed_opaque_existential_1(&v117);
        __swift_destroy_boxed_opaque_existential_1(&v119);
        v76 = [v68 navigationController];
        if (v76)
        {
          v77 = v76;
          [v76 pushViewController:v75 animated:0];

          (*(v108 + 8))(v66, v110);
        }

        else
        {
          (*(v108 + 8))(v66, v110);
        }

        v28 = isa;
        v63 = type metadata accessor for SearchViewController();
        v113 = v68;
        v64 = &v113;
        goto LABEL_54;
      }
    }

    v78 = *(v38 + 16);
    v79 = v103;
    v78(v103, v66, v53);
    v80 = (*(v38 + 88))(v79, v53);
    if (v80 == *MEMORY[0x1E69A2C60] || v80 == *MEMORY[0x1E69A2C08] || v80 == *MEMORY[0x1E69A2C00])
    {
      sub_1BA3D1C3C(v28);
    }

    else
    {
      if (v80 != *MEMORY[0x1E69A2BF8])
      {
        sub_1BA4A3DD8();
        v81 = v100;
        v78(v100, v66, v53);
        v82 = sub_1BA4A3E88();
        LODWORD(v108) = sub_1BA4A6FA8();
        if (os_log_type_enabled(v82, v108))
        {
          v83 = swift_slowAlloc();
          v84 = v38;
          v104 = swift_slowAlloc();
          *&v117 = v104;
          *v83 = 136446466;
          v119 = ObjectType;
          swift_getMetatypeMetadata();
          v85 = sub_1BA4A6808();
          v87 = sub_1B9F0B82C(v85, v86, &v117);

          *(v83 + 4) = v87;
          *(v83 + 12) = 2080;
          v88 = v100;
          v78(v98, v100, v110);
          v89 = sub_1BA4A6808();
          v91 = v90;
          v92 = *(v84 + 8);
          v92(v88, v110);
          v93 = sub_1B9F0B82C(v89, v91, &v117);
          v28 = isa;

          *(v83 + 14) = v93;
          v94 = v110;
          _os_log_impl(&dword_1B9F07000, v82, v108, "[%{public}s]: no restoration configured for %s", v83, 0x16u);
          v95 = v104;
          swift_arrayDestroy();
          MEMORY[0x1BFAF43A0](v95, -1, -1);
          MEMORY[0x1BFAF43A0](v83, -1, -1);

          v65(v101, v111);
          v92(v105, v94);
          v92(v103, v94);
        }

        else
        {

          v96 = *(v38 + 8);
          v96(v81, v53);
          v65(v101, v111);
          v96(v66, v53);
          v96(v103, v53);
        }

        goto LABEL_53;
      }

      sub_1BA3D1500(v28);
    }

    (*(v38 + 8))(v66, v53);
LABEL_53:
    v63 = type metadata accessor for SearchViewController();
    v122 = v68;
    v64 = &v122;
    goto LABEL_54;
  }

  sub_1B9F0DFE0(v3, &qword_1EBBED070, MEMORY[0x1E69A2C78], MEMORY[0x1E69E6720], sub_1BA3D2130);
  v54 = v104;
  sub_1BA4A3E48();
  v55 = sub_1BA4A3E88();
  v56 = sub_1BA4A6FA8();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    *&v117 = v58;
    *v57 = 136446210;
    v119 = ObjectType;
    swift_getMetatypeMetadata();
    v59 = sub_1BA4A6808();
    v61 = sub_1B9F0B82C(v59, v60, &v117);
    v28 = isa;

    *(v57 + 4) = v61;
    _os_log_impl(&dword_1B9F07000, v55, v56, "[%{public}s] user activity passed in does not have a valid activity type", v57, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v58);
    MEMORY[0x1BFAF43A0](v58, -1, -1);
    MEMORY[0x1BFAF43A0](v57, -1, -1);
  }

  v107(v54, v111);
  v62 = v109;
  v63 = type metadata accessor for SearchViewController();
  v123.receiver = v62;
  v64 = &v123;
LABEL_54:
  v64->super_class = v63;
  [(objc_super *)v64 restoreUserActivityState:v28];
}

uint64_t sub_1BA3D1500(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v62 = sub_1BA4A3EA8();
  v4 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v6 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v60 = &v58 - v8;
  v9 = OBJC_IVAR____TtC18HealthExperienceUI20SearchViewController_healthExperienceStore;
  sub_1B9F0A534(&v1[OBJC_IVAR____TtC18HealthExperienceUI20SearchViewController_healthExperienceStore], v72);
  v10 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI20SearchViewController_healthStore];
  v11 = [v10 profileIdentifier];
  LOBYTE(v73) = 15;
  v12 = _s18HealthExperienceUI18DataTypeDetailModeO07defaultG03for12presentationACSo19HKProfileIdentifierC_AA12PresentationOSgtFZ_0(v11, &v73);

  sub_1B9F0A534(v2 + OBJC_IVAR____TtC18HealthExperienceUI20SearchViewController_pinnedContentManager, v71);
  sub_1B9F0A534(v72, v65);
  *(&v66 + 1) = v10;
  LOBYTE(v67) = v12;
  sub_1BA4A2488();
  swift_allocObject();
  v13 = v10;
  *(&v67 + 1) = sub_1BA4A2468();
  sub_1BA10F7B4(v71, &v63);
  if (v64)
  {

    sub_1BA10F728(v71);
    __swift_destroy_boxed_opaque_existential_1(v72);
    sub_1B9F1134C(&v63, &v73);
  }

  else
  {
    v14 = sub_1BA4A22B8();
    v15 = sub_1BA4A22A8();
    *(&v74 + 1) = v14;
    *&v75 = MEMORY[0x1E69A3CF8];
    *&v73 = v15;
    sub_1BA10F728(v71);
    __swift_destroy_boxed_opaque_existential_1(v72);
    if (v64)
    {
      sub_1BA10F728(&v63);
    }
  }

  sub_1B9F1134C(&v73, v68);
  v70 = 0;
  v80 = 0;
  v77 = v68[0];
  v78 = v68[1];
  v73 = v65[0];
  v74 = v65[1];
  v75 = v66;
  v76 = v67;
  v79 = v69;
  v30 = HKTDataTypeDetailFactory.createViewController(userActivity:context:)(a1, &v73);
  type metadata accessor for AllHighlightsForDataTypeViewController();
  sub_1B9F0A534(v2 + v9, v65);
  v31 = v13;
  v32 = a1;
  v33 = AllHighlightsForDataTypeViewController.__allocating_init(userActivity:healthStore:healthExperienceStore:provenance:)(v32, v31, v65);
  if (v33)
  {
    v34 = v33;
    v35 = [v2 navigationController];
    if (v35)
    {
      v36 = v35;
      v37 = [v35 viewControllers];
      sub_1B9F0ADF8(0, &qword_1EDC6B5D0);
      v38 = sub_1BA4A6B08();

      *&v65[0] = v38;
      v39 = v30;
      MEMORY[0x1BFAF1510]();
      if (*((*&v65[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v65[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BA4A6B68();
      }

      sub_1BA4A6BB8();
      v40 = v34;
      MEMORY[0x1BFAF1510]();
      if (*((*&v65[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v65[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BA4A6B68();
      }

      sub_1BA4A6BB8();
      v41 = sub_1BA4A6AE8();

      [v36 setViewControllers:v41 animated:0];
    }

    else
    {
      v42 = v60;
      sub_1BA4A3DD8();
      v43 = v32;
      v44 = sub_1BA4A3E88();
      v45 = sub_1BA4A6FA8();

      v46 = v44;
      if (os_log_type_enabled(v44, v45))
      {
        v47 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v72[0] = v59;
        *v47 = 136446466;
        *&v65[0] = ObjectType;
        swift_getMetatypeMetadata();
        v48 = sub_1BA4A6808();
        v50 = sub_1B9F0B82C(v48, v49, v72);

        *(v47 + 4) = v50;
        *(v47 + 12) = 2080;
        v51 = [v43 activityType];
        v52 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v54 = v53;

        v55 = sub_1B9F0B82C(v52, v54, v72);

        *(v47 + 14) = v55;
        v56 = v46;
        _os_log_impl(&dword_1B9F07000, v46, v45, "[%{public}s]: Failed to restore state from UserActivity %s due to missing navigation controller", v47, 0x16u);
        v57 = v59;
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v57, -1, -1);
        MEMORY[0x1BFAF43A0](v47, -1, -1);

        (*(v4 + 8))(v60, v62);
      }

      else
      {

        (*(v4 + 8))(v42, v62);
      }
    }
  }

  else
  {

    sub_1BA4A3DD8();
    v16 = a1;
    v17 = sub_1BA4A3E88();
    v18 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v72[0] = v20;
      *v19 = 136446466;
      *&v65[0] = ObjectType;
      swift_getMetatypeMetadata();
      v21 = sub_1BA4A6808();
      v23 = sub_1B9F0B82C(v21, v22, v72);

      *(v19 + 4) = v23;
      *(v19 + 12) = 2080;
      v24 = [v16 activityType];
      v25 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v27 = v26;

      v28 = sub_1B9F0B82C(v25, v27, v72);

      *(v19 + 14) = v28;
      _os_log_impl(&dword_1B9F07000, v17, v18, "[%{public}s]: Failed to create viewcontrollers from UserActivity %s", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v20, -1, -1);
      MEMORY[0x1BFAF43A0](v19, -1, -1);
    }

    (*(v4 + 8))(v6, v62);
  }

  return sub_1BA114E30(&v73);
}

void sub_1BA3D1C3C(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_1BA4A3EA8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v45 - v10;
  v12 = _s18HealthExperienceUI22CategoryViewControllerC04makedeF012userActivity11healthStore0jbK020pinnedContentManagerACSgSo06NSUserI0C_So08HKHealthK0C0A8Platform0abK0_pAN06PinnedM8Managing_ptFZ_0(a1, *&v2[OBJC_IVAR____TtC18HealthExperienceUI20SearchViewController_healthStore], &v2[OBJC_IVAR____TtC18HealthExperienceUI20SearchViewController_healthExperienceStore], &v2[OBJC_IVAR____TtC18HealthExperienceUI20SearchViewController_pinnedContentManager]);
  if (!v12)
  {
    sub_1BA4A3DD8();
    v16 = a1;
    v17 = sub_1BA4A3E88();
    v18 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v47 = v20;
      v48 = ObjectType;
      *v19 = 136446466;
      swift_getMetatypeMetadata();
      v21 = sub_1BA4A6808();
      v23 = sub_1B9F0B82C(v21, v22, &v47);

      *(v19 + 4) = v23;
      *(v19 + 12) = 2080;
      v24 = [v16 activityType];
      v25 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v27 = v26;

      v28 = sub_1B9F0B82C(v25, v27, &v47);

      *(v19 + 14) = v28;
      _os_log_impl(&dword_1B9F07000, v17, v18, "[%{public}s]: Failed to create viewcontrollers from UserActivity %s", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v20, -1, -1);
      MEMORY[0x1BFAF43A0](v19, -1, -1);
    }

    v29 = *(v6 + 8);
    v30 = v8;
LABEL_12:
    v29(v30, v5);
    return;
  }

  v13 = v12;
  v14 = [v2 navigationController];
  if (!v14)
  {
    sub_1BA4A3DD8();
    v31 = a1;
    v32 = sub_1BA4A3E88();
    v33 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v47 = v35;
      v48 = ObjectType;
      *v34 = 136446466;
      swift_getMetatypeMetadata();
      v36 = sub_1BA4A6808();
      v38 = sub_1B9F0B82C(v36, v37, &v47);
      v46 = v5;
      v39 = v38;

      *(v34 + 4) = v39;
      *(v34 + 12) = 2080;
      v40 = [v31 activityType];
      v41 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v43 = v42;

      v44 = sub_1B9F0B82C(v41, v43, &v47);

      *(v34 + 14) = v44;
      _os_log_impl(&dword_1B9F07000, v32, v33, "[%{public}s]: Failed to restore state from UserActivity %s due to missing navigation controller", v34, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v35, -1, -1);
      MEMORY[0x1BFAF43A0](v34, -1, -1);

      (*(v6 + 8))(v11, v46);
      return;
    }

    v29 = *(v6 + 8);
    v30 = v11;
    goto LABEL_12;
  }

  v46 = v14;
  [v14 pushViewController:v13 animated:0];
  [v13 restoreUserActivityState_];

  v15 = v46;
}

void sub_1BA3D2130(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1BA3D2194()
{
  if (!qword_1EBBE99C0)
  {
    sub_1B9F0ADF8(255, &qword_1EDC5E4A0);
    v0 = sub_1BA4A6BF8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBE99C0);
    }
  }
}

unint64_t sub_1BA3D21FC()
{
  result = qword_1EBBF2078;
  if (!qword_1EBBF2078)
  {
    sub_1BA3D2194();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF2078);
  }

  return result;
}

void sub_1BA3D2254(void *a1)
{
  v2 = [a1 traitCollection];
  v3 = [v2 horizontalSizeClass];

  if (v3 == 1)
  {
    if (qword_1EDC5E100 != -1)
    {
      swift_once();
    }

    sub_1BA4A1318();
    v4 = sub_1BA4A6758();

    [a1 setTitle_];
  }

  else
  {

    [a1 setTitle_];
  }
}

void sub_1BA3D239C(void *a1)
{
  v2 = [a1 searchBar];
  v3 = [v2 cancelButton];

  if (v3)
  {
    v4 = v3;
    sub_1BA4A7DF8();
    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

    MEMORY[0x1BFAF1350](0xD00000000000001ELL, 0x80000001BA505FD0);
    v5 = sub_1BA4A6758();

    [v4 setAccessibilityIdentifier_];
  }

  v6 = [a1 searchBar];
  v7 = [v6 searchTextField];

  v8 = [v7 _clearButton];
  if (v8)
  {
    v9 = v8;
    sub_1BA4A7DF8();
    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

    MEMORY[0x1BFAF1350](0xD00000000000001DLL, 0x80000001BA505FB0);
    v10 = sub_1BA4A6758();

    [v9 setAccessibilityIdentifier_];
  }
}

uint64_t sub_1BA3D28FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BA3D2964(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BA3D29CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t PersonalizedFeedItemTrainableCell<>.submitFeedItemTraining()(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v34[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v34[-1] - v9;
  v11 = sub_1BA4A1C68();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v34[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*(a2 + 16) + 8))(v34, a1, v13);
  if (v34[3])
  {
    sub_1B9FCD918();
    sub_1BA4A27B8();
    if (swift_dynamicCast())
    {
      v16 = v33;
      if (UIResponder.resolvedPersonalizedFeedTrainer()())
      {
        if (qword_1EDC6CB58 != -1)
        {
          swift_once();
        }

        v17 = off_1EDC6CB60;
        sub_1BA4A26B8();
        LOBYTE(v17) = sub_1BA3D2E98(v15, v17);
        (*(v12 + 8))(v15, v11);
        if (v17)
        {
          sub_1BA3C0D3C(v16);
        }
      }

      else
      {
        sub_1BA4A3DB8();
        v26 = sub_1BA4A3E88();
        v27 = sub_1BA4A6F98();
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          v34[0] = v29;
          *v28 = 136315138;
          v30 = sub_1BA4A85D8();
          v32 = sub_1B9F0B82C(v30, v31, v34);

          *(v28 + 4) = v32;
          _os_log_impl(&dword_1B9F07000, v26, v27, "[%s]: Unable to resolve PersonalizedFeedTrainer; cannot submit feedback", v28, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v29);
          MEMORY[0x1BFAF43A0](v29, -1, -1);
          MEMORY[0x1BFAF43A0](v28, -1, -1);
        }

        return (*(v5 + 8))(v10, v4);
      }
    }
  }

  else
  {
    sub_1B9F7B644(v34);
  }

  sub_1BA4A3DB8();
  v19 = sub_1BA4A3E88();
  v20 = sub_1BA4A6FA8();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v34[0] = v22;
    *v21 = 136315138;
    v23 = sub_1BA4A85D8();
    v25 = sub_1B9F0B82C(v23, v24, v34);

    *(v21 + 4) = v25;
    _os_log_impl(&dword_1B9F07000, v19, v20, "[%s]: SectionedItem is not a feed item, only submit training on feed items", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    MEMORY[0x1BFAF43A0](v22, -1, -1);
    MEMORY[0x1BFAF43A0](v21, -1, -1);
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1BA3D2E98(uint64_t a1, uint64_t a2)
{
  v3 = sub_1BA4A1C68();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_1BA3D35DC(&qword_1EDC6E240, MEMORY[0x1E69A3C08]), v7 = sub_1BA4A6698(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
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
      sub_1BA3D35DC(&qword_1EDC6E230, MEMORY[0x1E69A3C08]);
      v15 = sub_1BA4A6728();
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

uint64_t sub_1BA3D30B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1BA4A8488();
  sub_1BA4A68C8();
  v6 = sub_1BA4A84D8();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1BA4A8338() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1BA3D31A8(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_1BA4A8488();
  v4 = a1 >> 6;
  if (v4 > 1)
  {
    if (v4 == 3)
    {
      v5 = 0x80504u >> (8 * (a1 + 64));
    }

    else
    {
      LOBYTE(v5) = a1 ^ 0x80;
    }
  }

  else if (a1 >> 6)
  {
    LOBYTE(v5) = a1 & 0x3F;
    MEMORY[0x1BFAF2ED0](7);
  }

  else
  {
    MEMORY[0x1BFAF2ED0](6);
    LOBYTE(v5) = a1;
  }

  MEMORY[0x1BFAF2ED0](v5);
  v7 = sub_1BA4A84D8();
  v8 = -1 << *(a2 + 32);
  v9 = v7 & ~v8;
  if ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    do
    {
      v11 = *(*(a2 + 48) + v9);
      v12 = v11 >> 6;
      if (v11 >> 6 > 1)
      {
        if (v12 == 3)
        {
          if (v11 == 192)
          {
            if (a1 == 192)
            {
              return 1;
            }
          }

          else if (v11 == 193)
          {
            if (a1 == 193)
            {
              return 1;
            }
          }

          else if (a1 == 194)
          {
            return 1;
          }
        }

        else if (*(*(a2 + 48) + v9) > 0x81u)
        {
          if (v11 == 130)
          {
            if (a1 == 130)
            {
              return 1;
            }
          }

          else if (a1 == 131)
          {
            return 1;
          }
        }

        else if (v11 == 128)
        {
          if (a1 == 128)
          {
            return 1;
          }
        }

        else if (a1 == 129)
        {
          return 1;
        }
      }

      else if (v12)
      {
        if (v4 == 1 && ((v11 ^ a1) & 0x3F) == 0)
        {
          return 1;
        }
      }

      else if (a1 <= 0x3Fu && v11 == a1)
      {
        return 1;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return 0;
}

uint64_t sub_1BA3D33B0(uint64_t a1, uint64_t a2)
{
  v3 = sub_1BA4A2A88();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_1BA3D35DC(&qword_1EBBE9D88, MEMORY[0x1E69A31E0]), v7 = sub_1BA4A6698(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
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
      sub_1BA3D35DC(&qword_1EBBE9D90, MEMORY[0x1E69A31E0]);
      v15 = sub_1BA4A6728();
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

uint64_t sub_1BA3D35DC(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1BA3D3628(uint64_t a1)
{
  v2 = [objc_opt_self() effectWithStyle_];
  v3 = [objc_opt_self() effectForBlurEffect:v2 style:4];

  v4 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  v5 = [v4 contentView];
  [v5 addSubview_];

  [v4 hk:a1 alignConstraintsWithView:?];
  return v4;
}

void sub_1BA3D37D4(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*sub_1BA3D3830(uint64_t *a1))(id **, char)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_chromeHostView;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1BA0BAB9C;
}

uint64_t sub_1BA3D38C8(uint64_t a1, uint64_t *a2)
{
  sub_1B9F6DEE0(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_dataSource;
  swift_beginAccess();
  sub_1B9F6E028(v6, v3 + v4);
  return swift_endAccess();
}

uint64_t sub_1BA3D392C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_dataSource;
  swift_beginAccess();
  return sub_1B9F6DEE0(v1 + v3, a1);
}

uint64_t sub_1BA3D3984(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_dataSource;
  swift_beginAccess();
  sub_1B9F6E028(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1BA3D3A44(uint64_t a1)
{
  sub_1B9F6DEE0(a1, v5);
  v3 = OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_dataSource;
  swift_beginAccess();
  sub_1B9F6E028(v5, v1 + v3);
  swift_endAccess();
  return sub_1BA3D40BC(a1);
}

uint64_t sub_1BA3D3AB4(uint64_t a1)
{
  sub_1BA3D3B2C();
  sub_1B9F6DEE0(a1, v5);
  v3 = OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_dataSource;
  swift_beginAccess();
  sub_1B9F6E028(v5, v1 + v3);
  swift_endAccess();
  return sub_1BA3D40BC(a1);
}

id sub_1BA3D3B2C()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_titleLabel;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_accessoryLabel;
  swift_beginAccess();
  v4 = *(v0 + v3);
  v5 = OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_detailContainerView;
  swift_beginAccess();
  v6 = *(v0 + v5);
  v7 = v2;
  v8 = v4;
  [v7 removeFromSuperview];
  [v8 removeFromSuperview];
  [v6 removeFromSuperview];
  sub_1B9F6DF70(0, &unk_1EDC5E200, &qword_1EDC6B4A0, 0x1E69DD250, sub_1B9F0ADF8);
  swift_arrayDestroy();
  v9 = *(v0 + v1);
  *(v0 + v1) = 0;

  v10 = *(v0 + v3);
  *(v0 + v3) = 0;

  v11 = *(v0 + v5);
  *(v0 + v5) = 0;

  result = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_heightConstraint);
  if (result)
  {
    return [result setActive_];
  }

  return result;
}

void *sub_1BA3D3CAC()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_detailLabel;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1BA3D3CF8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_detailLabel;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_1BA3D3DB0()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_titleLabel;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1BA3D3DFC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_titleLabel;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_1BA3D3EB4()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_accessoryLabel;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1BA3D3F00(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_accessoryLabel;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_1BA3D3FB8()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_detailContainerView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1BA3D4004(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_detailContainerView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1BA3D40BC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v68[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B9F6DEE0(a1, v70);
  if (v71)
  {
    sub_1B9F0D950(0, qword_1EDC6CD18);
    sub_1B9F0D950(0, &qword_1EBBF20B8);
    if (swift_dynamicCast())
    {
      if (*(&v73 + 1))
      {
        sub_1B9F1134C(&v72, v75);
        [v2 setUserInteractionEnabled_];
        v9 = v76;
        v8 = v77;
        __swift_project_boxed_opaque_existential_1(v75, v76);
        v10 = (*(*(v8 + 8) + 32))(v9);
        if (v11)
        {
          v12 = (v2 + OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_title);
          *v12 = v10;
          v12[1] = v11;

          type metadata accessor for DynamicFontLabel();
          v13 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
          [v13 setNumberOfLines_];
          [v13 setLineBreakMode_];
          [v13 setTranslatesAutoresizingMaskIntoConstraints_];
          LODWORD(v14) = 1148846080;
          [v13 setContentCompressionResistancePriority:1 forAxis:v14];
          v15 = [objc_opt_self() labelColor];
          [v13 setTextColor_];

          v16 = sub_1B9F6B774(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DB980], 0, 0, 0, 0, 1);
          [v13 setFont_];

          [v2 addSubview_];
          v17 = OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_titleLabel;
          swift_beginAccess();
          v18 = *(v2 + v17);
          *(v2 + v17) = v13;
        }

        sub_1BA3D6114();
        sub_1BA3D6008();
        sub_1BA3D5BAC();
        sub_1BA3D6810();
        v69 = MEMORY[0x1E69E7CC0];
        v19 = sub_1BA3D4BE0();
        if (v19)
        {
          sub_1B9F73B50(v19);
        }

        v20 = OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_titleLabel;
        swift_beginAccess();
        v21 = *(v2 + v20);
        if (v21)
        {
          v22 = v21;
          v23 = [v22 topAnchor];
          v24 = [v2 safeAreaLayoutGuide];
          v25 = [v24 topAnchor];

          v26 = [v23 constraintEqualToAnchor:v25 constant:12.0];
          MEMORY[0x1BFAF1510]();
          if (*((v69 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v69 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1BA4A6B68();
          }

          sub_1BA4A6BB8();
          v27 = [v22 leadingAnchor];
          v28 = [v2 safeAreaLayoutGuide];
          v29 = [v28 leadingAnchor];

          v30 = [v27 constraintEqualToAnchor:v29 constant:16.0];
          MEMORY[0x1BFAF1510]();
          if (*((v69 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v69 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1BA4A6B68();
          }

          sub_1BA4A6BB8();
          v31 = [v22 bottomAnchor];
          v32 = [v2 safeAreaLayoutGuide];
          v33 = [v32 bottomAnchor];

          v34 = [v31 constraintEqualToAnchor:v33 constant:-0.0];
          MEMORY[0x1BFAF1510]();
          if (*((v69 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v69 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1BA4A6B68();
          }

          sub_1BA4A6BB8();
          v35 = OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_detailContainerView;
          swift_beginAccess();
          if (*(v2 + v35))
          {
          }

          else
          {
            v40 = [v22 trailingAnchor];

            v41 = [v2 safeAreaLayoutGuide];
            v42 = [v41 trailingAnchor];

            v43 = [v40 constraintEqualToAnchor:v42 constant:-16.0];
            MEMORY[0x1BFAF1510]();
            if (*((v69 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v69 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1BA4A6B68();
            }

            sub_1BA4A6BB8();
          }
        }

        v44 = OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_detailContainerView;
        swift_beginAccess();
        v45 = *(v2 + v44);
        if (v45)
        {
          v46 = *(v2 + v20);
          if (v46)
          {
            v47 = v45;
            v48 = v46;
            v49 = [v48 trailingAnchor];
            v50 = [v47 leadingAnchor];
            v51 = [v49 constraintEqualToAnchor:v50 constant:-8.0];

            MEMORY[0x1BFAF1510]();
            if (*((v69 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v69 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1BA4A6B68();
            }

            sub_1BA4A6BB8();
          }

          else
          {
            v52 = [v45 bottomAnchor];
            v53 = [v2 safeAreaLayoutGuide];
            v54 = [v53 bottomAnchor];

            v55 = [v52 constraintEqualToAnchor:v54 constant:-0.0];
            MEMORY[0x1BFAF1510]();
            if (*((v69 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v69 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1BA4A6B68();
            }

            sub_1BA4A6BB8();
          }
        }

        v56 = &selRef_constraintGreaterThanOrEqualToConstant_;
        if (!*(v2 + v20) && !*(v2 + v44))
        {
          v56 = &selRef_constraintEqualToConstant_;
        }

        v57 = [v2 heightAnchor];
        v58 = [v57 *v56];

        v59 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_heightConstraint);
        *(v2 + OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_heightConstraint) = v58;
        v60 = v58;

        MEMORY[0x1BFAF1510]();
        if (*((v69 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v69 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1BA4A6B68();
        }

        v61 = sub_1BA4A6BB8();
        (*((*MEMORY[0x1E69E7D40] & *v2) + 0x1C0))(v61);
        v63 = v76;
        v62 = v77;
        __swift_project_boxed_opaque_existential_1(v75, v76);
        (*(*(v62 + 8) + 32))(v63);
        if (v64)
        {
        }

        else
        {
          v65 = [objc_opt_self() clearColor];
          [v2 setBackgroundColor_];
        }

        v66 = objc_opt_self();
        sub_1B9F0ADF8(0, &qword_1EDC6B570);
        v67 = sub_1BA4A6AE8();

        [v66 activateConstraints_];

        return __swift_destroy_boxed_opaque_existential_1(v75);
      }
    }

    else
    {
      v74 = 0;
      v72 = 0u;
      v73 = 0u;
    }
  }

  else
  {
    sub_1B9F6F238(v70, &qword_1EDC6CD10, qword_1EDC6CD18, &protocol descriptor for TileHeaderDataSource, sub_1B9F0D950);
    v72 = 0u;
    v73 = 0u;
    v74 = 0;
  }

  sub_1B9F6F238(&v72, &qword_1EBBF20B0, &qword_1EBBF20B8, &protocol descriptor for DismissibleBoldTitleHeaderDataSource, sub_1B9F0D950);
  sub_1BA4A3DD8();
  v36 = sub_1BA4A3E88();
  v37 = sub_1BA4A6FB8();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_1B9F07000, v36, v37, "Incorrect configuration: expecting a DismissibleBoldTitleHeaderDataSource", v38, 2u);
    MEMORY[0x1BFAF43A0](v38, -1, -1);
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1BA3D4BE0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_detailContainerView;
  swift_beginAccess();
  v3 = *&v0[v2];
  if (!v3)
  {
    return 0;
  }

  v38 = MEMORY[0x1E69E7CC0];
  v4 = OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_dataSource;
  swift_beginAccess();
  sub_1B9F6DEE0(&v1[v4], v35);
  v5 = v36;
  if (v36)
  {
    v6 = v37;
    v7 = __swift_project_boxed_opaque_existential_1(v35, v36);
    v8 = *(v5 - 8);
    v9 = MEMORY[0x1EEE9AC00](v7);
    v11 = &v34[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v8 + 16))(v11, v9);
    v12 = v3;
    sub_1B9F6F238(v35, &qword_1EDC6CD10, qword_1EDC6CD18, &protocol descriptor for TileHeaderDataSource, sub_1B9F0D950);
    LOBYTE(v6) = (*(v6 + 48))(v5, v6);
    (*(v8 + 8))(v11, v5);
    if ((v6 & 1) == 0)
    {
      v13 = sub_1BA3D50F8();
      if (v13)
      {
        sub_1B9F73B50(v13);
      }
    }
  }

  else
  {
    v15 = v3;
    sub_1B9F6F238(v35, &qword_1EDC6CD10, qword_1EDC6CD18, &protocol descriptor for TileHeaderDataSource, sub_1B9F0D950);
  }

  v16 = [v3 topAnchor];
  v17 = [v1 safeAreaLayoutGuide];
  v18 = [v17 topAnchor];

  v19 = [v16 constraintEqualToAnchor:v18 constant:12.0];
  MEMORY[0x1BFAF1510]();
  if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1BA4A6B68();
  }

  sub_1BA4A6BB8();
  v20 = [v3 trailingAnchor];
  v21 = [v1 safeAreaLayoutGuide];
  v22 = [v21 trailingAnchor];

  v23 = [v20 constraintEqualToAnchor:v22 constant:-16.0];
  MEMORY[0x1BFAF1510]();
  if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1BA4A6B68();
  }

  sub_1BA4A6BB8();
  v24 = [v3 widthAnchor];
  v25 = [v1 widthAnchor];
  v26 = [v24 constraintLessThanOrEqualToAnchor:v25 multiplier:0.37];

  MEMORY[0x1BFAF1510]();
  if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1BA4A6B68();
  }

  sub_1BA4A6BB8();
  v14 = v38;
  v27 = OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_accessoryLabel;
  swift_beginAccess();
  v28 = *&v1[v27];
  if (v28 && (v29 = [v28 heightAnchor]) != 0)
  {
    v30 = v29;
    v31 = [v3 heightAnchor];
    v32 = [v31 constraintEqualToAnchor_];

    MEMORY[0x1BFAF1510]();
    if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BA4A6B68();
    }

    sub_1BA4A6BB8();

    return v38;
  }

  else
  {
  }

  return v14;
}

uint64_t sub_1BA3D50F8()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_accessoryLabel;
  swift_beginAccess();
  v3 = *&v0[v2];
  if (!v3)
  {
    return 0;
  }

  v4 = OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_detailContainerView;
  swift_beginAccess();
  v5 = *&v1[v4];
  if (!v5)
  {
    return 0;
  }

  v30 = MEMORY[0x1E69E7CC0];
  v6 = v3;
  v7 = v5;
  [v7 addSubview_];
  v8 = [v6 leadingAnchor];
  v9 = [v7 leadingAnchor];
  v10 = [v8 constraintEqualToAnchor_];

  MEMORY[0x1BFAF1510]();
  if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1BA4A6B68();
  }

  sub_1BA4A6BB8();
  v11 = OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_titleLabel;
  swift_beginAccess();
  v12 = *&v1[v11];
  if (v12)
  {
    v13 = v12;

    v14 = [v6 firstBaselineAnchor];
    v15 = [v13 firstBaselineAnchor];
    v16 = [v14 constraintEqualToAnchor_];

    LODWORD(v17) = 1144750080;
    [v16 setPriority_];
    v18 = v16;
    MEMORY[0x1BFAF1510]();
    if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BA4A6B68();
    }

    sub_1BA4A6BB8();
    v19 = [v6 topAnchor];

    v20 = [v1 layoutMarginsGuide];
    v21 = [v20 topAnchor];

    v22 = [v19 constraintGreaterThanOrEqualToAnchor_];
    MEMORY[0x1BFAF1510]();
    if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BA4A6B68();
    }

    sub_1BA4A6BB8();
  }

  else
  {

    v24 = [v6 centerYAnchor];
    v25 = [v7 centerYAnchor];
    v26 = [v24 constraintEqualToAnchor_];

    MEMORY[0x1BFAF1510]();
    if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BA4A6B68();
    }

    sub_1BA4A6BB8();
  }

  v27 = [v6 trailingAnchor];

  v28 = [v7 trailingAnchor];
  v29 = [v27 constraintEqualToAnchor_];

  MEMORY[0x1BFAF1510]();
  if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1BA4A6B68();
  }

  sub_1BA4A6BB8();

  return v30;
}

void sub_1BA3D55B4(void *a1)
{
  v2 = v1;
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DismissibleBoldTitleHeaderView();
  v58.receiver = v2;
  v58.super_class = v8;
  objc_msgSendSuper2(&v58, sel_traitCollectionDidChange_, a1);
  v9 = [v2 traitCollection];
  v10 = [v9 preferredContentSizeCategory];

  if (!a1)
  {

LABEL_9:
    v18 = OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_titleLabel;
    swift_beginAccess();
    v19 = *&v2[v18];
    if (v19)
    {
      v20 = *MEMORY[0x1E69DDCF8];
      v21 = *MEMORY[0x1E69DB980];
      v22 = v19;
      v23 = sub_1B9F6B774(v20, v21, 0, 0, 0, 0, 1);
      [v22 setFont_];
    }

    v24 = OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_accessoryLabel;
    swift_beginAccess();
    v25 = *&v2[v24];
    if (v25)
    {
      v26 = *MEMORY[0x1E69DDD28];
      v27 = objc_opt_self();
      v28 = v25;
      v29 = [v27 preferredFontDescriptorWithTextStyle:v26 compatibleWithTraitCollection:0];
      v30 = [v29 fontDescriptorWithSymbolicTraits_];

      if (v30)
      {
        v31 = [objc_opt_self() fontWithDescriptor:v30 size:0.0];
      }

      else
      {
        v54 = v2;
        sub_1BA4A3DD8();
        v32 = v26;
        v33 = sub_1BA4A3E88();
        v34 = sub_1BA4A6FB8();

        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          v52 = swift_slowAlloc();
          v57 = v52;
          *v35 = 136315906;
          v36 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
          v53 = v32;
          v38 = sub_1B9F0B82C(v36, v37, &v57);

          *(v35 + 4) = v38;
          *(v35 + 12) = 2080;
          v55 = 0;
          v56 = 1;
          sub_1BA1508E8();
          v39 = sub_1BA4A6808();
          v41 = sub_1B9F0B82C(v39, v40, &v57);

          *(v35 + 14) = v41;
          *(v35 + 22) = 2080;
          LODWORD(v55) = 2;
          type metadata accessor for SymbolicTraits(0);
          v42 = sub_1BA4A6808();
          v44 = sub_1B9F0B82C(v42, v43, &v57);
          v32 = v53;

          *(v35 + 24) = v44;
          *(v35 + 32) = 2112;
          v45 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
          *(v35 + 34) = v45;
          v46 = v34;
          v47 = v51;
          *v51 = v45;
          _os_log_impl(&dword_1B9F07000, v33, v46, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v35, 0x2Au);
          sub_1B9F6F238(v47, &qword_1EDC6B490, &qword_1EDC6E350, 0x1E69E58C0, sub_1B9F0ADF8);
          MEMORY[0x1BFAF43A0](v47, -1, -1);
          v48 = v52;
          swift_arrayDestroy();
          MEMORY[0x1BFAF43A0](v48, -1, -1);
          MEMORY[0x1BFAF43A0](v35, -1, -1);
        }

        (*(v5 + 8))(v7, v4);
        v30 = [v27 preferredFontDescriptorWithTextStyle_];
        v31 = [objc_opt_self() fontWithDescriptor:v30 size:0.0];
      }

      v49 = v31;

      [v28 setFont_];
    }

    sub_1BA3D5BAC();
    sub_1BA3D6810();
    return;
  }

  v11 = [a1 preferredContentSizeCategory];
  v12 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v14 = v13;
  if (v12 == _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0() && v14 == v15)
  {

    return;
  }

  v17 = sub_1BA4A8338();

  if ((v17 & 1) == 0)
  {
    goto LABEL_9;
  }
}

void sub_1BA3D5BAC()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_titleLabel;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_title + 8);
    if (v3)
    {
      v4 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_title);
      v5 = v2;

      v6 = sub_1BA4A6758();
      [v5 setAccessibilityLabel_];

      v7 = OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_dataSource;
      swift_beginAccess();
      sub_1B9F6DEE0(v0 + v7, v30);
      v8 = v31;
      if (v31)
      {
        v9 = v32;
        v10 = __swift_project_boxed_opaque_existential_1(v30, v31);
        v11 = *(v8 - 8);
        v12 = MEMORY[0x1EEE9AC00](v10);
        v14 = v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
        (*(v11 + 16))(v14, v12);
        sub_1B9F6F238(v30, &qword_1EDC6CD10, qword_1EDC6CD18, &protocol descriptor for TileHeaderDataSource, sub_1B9F0D950);
        v15 = (*(v9 + 24))(v8, v9);
        (*(v11 + 8))(v14, v8);
        if (v15)
        {
          v16 = v5;
          v17 = [v16 font];
          if (!v17)
          {
            __break(1u);
            return;
          }

          v18 = v17;
          v19 = [objc_opt_self() configurationWithFont:v17 scale:-1];

          v20 = [v15 imageWithConfiguration_];
          v21 = [v20 imageWithRenderingMode_];
          v22 = [objc_allocWithZone(MEMORY[0x1E69DB7F0]) init];
          if (([v20 isSymbolImage] & 1) == 0)
          {
            [v22 setAdjustsImageSizeForAccessibilityContentSizeCategory_];
          }

          [v22 setImage_];
          sub_1B9F0ADF8(0, &qword_1EDC6B520);
          v23 = [swift_getObjCClassFromMetadata() attributedStringWithAttachment_];

          v30[0] = 9011426;
          v30[1] = 0xA300000000000000;
          MEMORY[0x1BFAF1350](v4, v3);

          v24 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
          v25 = sub_1BA4A6758();

          v26 = [v24 initWithString_];

          [v23 appendAttributedString_];
          v27 = v23;
          [v16 setAttributedText_];

          goto LABEL_11;
        }
      }

      else
      {
        sub_1B9F6F238(v30, &qword_1EDC6CD10, qword_1EDC6CD18, &protocol descriptor for TileHeaderDataSource, sub_1B9F0D950);
      }

      v28 = v5;
      v27 = sub_1BA4A6758();

      [v28 setText_];
LABEL_11:
    }
  }
}

void sub_1BA3D6008()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_accessoryLabel;
  swift_beginAccess();
  if (*&v0[v1])
  {
    v2 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
    LODWORD(v3) = 1148846080;
    [v2 setContentHuggingPriority:1 forAxis:v3];
    LODWORD(v4) = 1148846080;
    [v2 setContentCompressionResistancePriority:0 forAxis:v4];
    LODWORD(v5) = 1148846080;
    [v2 setContentCompressionResistancePriority:1 forAxis:v5];
    [v2 setTranslatesAutoresizingMaskIntoConstraints_];
    [v0 addSubview_];
    v6 = OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_detailContainerView;
    swift_beginAccess();
    v7 = *&v0[v6];
    *&v0[v6] = v2;
  }
}

void sub_1BA3D6114()
{
  v1 = v0;
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_dataSource;
  swift_beginAccess();
  sub_1B9F6DEE0(v1 + v6, &v58);
  v7 = v60;
  if (v60)
  {
    v8 = v61;
    v9 = __swift_project_boxed_opaque_existential_1(&v58, v60);
    v10 = *(v7 - 8);
    v11 = MEMORY[0x1EEE9AC00](v9);
    v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v13, v11);
    sub_1B9F6F238(&v58, &qword_1EDC6CD10, qword_1EDC6CD18, &protocol descriptor for TileHeaderDataSource, sub_1B9F0D950);
    LOBYTE(v8) = (*(v8 + 48))(v7, v8);
    (*(v10 + 8))(v13, v7);
    if ((v8 & 1) == 0)
    {
      type metadata accessor for DynamicFontLabel();
      v14 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      v15 = MEMORY[0x1E69E7D40];
      v16 = *((*MEMORY[0x1E69E7D40] & *v14) + 0x68);
      v17 = *MEMORY[0x1E69DDD28];
      v16();
      (*((*v15 & *v14) + 0x80))(2);
      v18 = objc_opt_self();
      v19 = v14;
      v20 = [v18 tertiaryLabelColor];
      [v19 setTextColor_];

      [v19 setTextAlignment_];
      [v19 setTranslatesAutoresizingMaskIntoConstraints_];
      [v19 setAdjustsFontSizeToFitWidth_];
      LODWORD(v21) = 1148846080;
      [v19 setContentCompressionResistancePriority:0 forAxis:v21];
      LODWORD(v22) = 1148846080;
      [v19 setContentCompressionResistancePriority:1 forAxis:v22];
      LODWORD(v23) = 1148846080;
      [v19 setContentHuggingPriority:0 forAxis:v23];
      v24 = objc_opt_self();
      v25 = [v24 preferredFontDescriptorWithTextStyle:v17 compatibleWithTraitCollection:0];
      v26 = [v25 fontDescriptorWithSymbolicTraits_];

      if (v26)
      {
        v27 = [objc_opt_self() fontWithDescriptor:v26 size:0.0];
      }

      else
      {
        sub_1BA4A3DD8();
        v28 = v17;
        v29 = sub_1BA4A3E88();
        v30 = sub_1BA4A6FB8();
        v56 = v28;

        v55 = v29;
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          v52 = v30;
          v32 = v31;
          v51 = swift_slowAlloc();
          v53 = swift_slowAlloc();
          v57 = v53;
          *v32 = 136315906;
          v33 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
          v35 = sub_1B9F0B82C(v33, v34, &v57);
          v54 = v24;
          v36 = v35;

          *(v32 + 4) = v36;
          *(v32 + 12) = 2080;
          v58 = 0;
          v59 = 1;
          sub_1BA1508E8();
          v37 = sub_1BA4A6808();
          v39 = sub_1B9F0B82C(v37, v38, &v57);

          *(v32 + 14) = v39;
          *(v32 + 22) = 2080;
          LODWORD(v58) = 2;
          type metadata accessor for SymbolicTraits(0);
          v40 = sub_1BA4A6808();
          v42 = sub_1B9F0B82C(v40, v41, &v57);

          *(v32 + 24) = v42;
          v24 = v54;
          *(v32 + 32) = 2112;
          v43 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
          *(v32 + 34) = v43;
          v44 = v51;
          *v51 = v43;
          v45 = v55;
          _os_log_impl(&dword_1B9F07000, v55, v52, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v32, 0x2Au);
          sub_1B9F6F238(v44, &qword_1EDC6B490, &qword_1EDC6E350, 0x1E69E58C0, sub_1B9F0ADF8);
          MEMORY[0x1BFAF43A0](v44, -1, -1);
          v46 = v53;
          swift_arrayDestroy();
          MEMORY[0x1BFAF43A0](v46, -1, -1);
          MEMORY[0x1BFAF43A0](v32, -1, -1);
        }

        else
        {
        }

        (*(v3 + 8))(v5, v2);
        v26 = [v24 preferredFontDescriptorWithTextStyle_];
        v27 = [objc_opt_self() fontWithDescriptor:v26 size:0.0];
      }

      v47 = v27;

      [v19 setFont_];
      v48 = OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_accessoryLabel;
      swift_beginAccess();
      v49 = *(v1 + v48);
      *(v1 + v48) = v14;
    }
  }

  else
  {
    sub_1B9F6F238(&v58, &qword_1EDC6CD10, qword_1EDC6CD18, &protocol descriptor for TileHeaderDataSource, sub_1B9F0D950);
  }
}

void sub_1BA3D6810()
{
  v1 = sub_1BA4A3EA8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_accessoryLabel;
  swift_beginAccess();
  v6 = *(v0 + v5);
  if (!v6 || (v7 = [v6 font]) == 0)
  {
    v8 = *MEMORY[0x1E69DDD28];
    v9 = objc_opt_self();
    v10 = [v9 preferredFontDescriptorWithTextStyle:v8 compatibleWithTraitCollection:0];
    v11 = [v10 fontDescriptorWithSymbolicTraits_];

    if (v11)
    {
      v12 = [objc_opt_self() fontWithDescriptor:v11 size:0.0];
    }

    else
    {
      v38 = v0;
      sub_1BA4A3DD8();
      v13 = v8;
      v14 = sub_1BA4A3E88();
      v15 = sub_1BA4A6FB8();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v41 = v36;
        *v16 = 136315906;
        v17 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v37 = v13;
        v19 = sub_1B9F0B82C(v17, v18, &v41);

        *(v16 + 4) = v19;
        *(v16 + 12) = 2080;
        v39 = 0;
        v40 = 1;
        sub_1BA1508E8();
        v20 = sub_1BA4A6808();
        v22 = sub_1B9F0B82C(v20, v21, &v41);

        *(v16 + 14) = v22;
        *(v16 + 22) = 2080;
        LODWORD(v39) = 2;
        type metadata accessor for SymbolicTraits(0);
        v23 = sub_1BA4A6808();
        v25 = sub_1B9F0B82C(v23, v24, &v41);

        *(v16 + 24) = v25;
        v13 = v37;
        *(v16 + 32) = 2112;
        v26 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
        *(v16 + 34) = v26;
        v27 = v35;
        *v35 = v26;
        _os_log_impl(&dword_1B9F07000, v14, v15, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v16, 0x2Au);
        sub_1B9F6F238(v27, &qword_1EDC6B490, &qword_1EDC6E350, 0x1E69E58C0, sub_1B9F0ADF8);
        MEMORY[0x1BFAF43A0](v27, -1, -1);
        v28 = v36;
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v28, -1, -1);
        MEMORY[0x1BFAF43A0](v16, -1, -1);
      }

      (*(v2 + 8))(v4, v1);
      v11 = [v9 preferredFontDescriptorWithTextStyle_];
      v12 = [objc_opt_self() fontWithDescriptor:v11 size:0.0];
      v0 = v38;
    }

    v7 = v12;
  }

  v29 = _sSo7UIImageC18HealthExperienceUIE9makeXMark4fontABSgSo6UIFontC_tFZ_0(v7);

  if (v29)
  {
    v30 = *(v0 + v5);
    if (v30)
    {
      v31 = v30;
      v32 = [v29 imageWithRenderingMode_];
      v33 = [objc_allocWithZone(MEMORY[0x1E69DB7F0]) init];
      if (([v29 isSymbolImage] & 1) == 0)
      {
        [v33 setAdjustsImageSizeForAccessibilityContentSizeCategory_];
      }

      [v33 setImage_];
      sub_1B9F0ADF8(0, &qword_1EDC6B520);
      v34 = [swift_getObjCClassFromMetadata() attributedStringWithAttachment_];

      [v31 setAttributedText_];
    }
  }
}

void sub_1BA3D6D00()
{
  v1 = objc_opt_self();
  v2 = [v1 clearColor];
  [v0 setBackgroundColor_];

  v3 = OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_titleLabel;
  swift_beginAccess();
  v4 = *&v0[v3];
  if (v4)
  {
    v5 = v4;
    v6 = [v1 labelColor];
    [v5 setTextColor_];
  }

  v7 = OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_accessoryLabel;
  swift_beginAccess();
  v8 = *&v0[v7];
  if (v8)
  {
    v9 = v8;
    v10 = [v1 tertiaryLabelColor];
    [v9 setTextColor_];
  }
}

void sub_1BA3D6E48(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_1BA15930C(a1);
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = v5;
  v7 = OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_accessoryLabel;
  swift_beginAccess();
  v8 = *&v2[v7];
  v9 = v8;
  LOBYTE(v8) = sub_1BA2EC9D4(v6, v8, 36.0, 36.0);

  if ((v8 & 1) == 0)
  {

LABEL_10:
    sub_1B9F0ADF8(0, &qword_1EBBECB58);
    sub_1BA3955EC();
    v15 = sub_1BA4A6D68();
    v34.receiver = v3;
    v34.super_class = type metadata accessor for DismissibleBoldTitleHeaderView();
    objc_msgSendSuper2(&v34, sel_touchesBegan_withEvent_, v15, a2);
    goto LABEL_16;
  }

  v10 = [v2 viewController];
  if (v10)
  {
    v11 = v10;
    UIViewController.resolvedPresentation.getter(&aBlock);

    v12 = aBlock;
    v13 = *&v3[v7];
    if (v13)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v12 = 0;
    v13 = *&v2[v7];
    if (v13)
    {
LABEL_5:
      if ((v12 - 6) < 2)
      {
        v21 = objc_opt_self();
        v15 = v13;
        v22 = [v21 systemGray5Color];
        v23 = [v21 tertiarySystemGroupedBackgroundColor];
        v24 = swift_allocObject();
        v24[2] = 0;
        v24[3] = v23;
        v24[4] = 0;
        v24[5] = v22;
        v19 = objc_allocWithZone(MEMORY[0x1E69DC888]);
        v32 = sub_1B9FD7F54;
        v33 = v24;
        aBlock = MEMORY[0x1E69E9820];
        v29 = 1107296256;
        v20 = &block_descriptor_108;
      }

      else
      {
        if (v12 != 4 && v12 != 12)
        {
          v27 = objc_opt_self();
          v15 = v13;
          v26 = [v27 systemGray5Color];
          goto LABEL_15;
        }

        v14 = objc_opt_self();
        v15 = v13;
        v16 = [v14 systemGray5Color];
        v17 = [v14 systemGray4Color];
        v18 = swift_allocObject();
        v18[2] = 0;
        v18[3] = v17;
        v18[4] = 0;
        v18[5] = v16;
        v19 = objc_allocWithZone(MEMORY[0x1E69DC888]);
        v32 = sub_1B9FE1088;
        v33 = v18;
        aBlock = MEMORY[0x1E69E9820];
        v29 = 1107296256;
        v20 = &block_descriptor_9_0;
      }

      v30 = sub_1B9F7EBBC;
      v31 = v20;
      v25 = _Block_copy(&aBlock);
      v26 = [v19 initWithDynamicProvider_];
      _Block_release(v25);

LABEL_15:
      [v15 setTextColor_];

      goto LABEL_16;
    }
  }

  v15 = v6;
LABEL_16:
}

void sub_1BA3D71F8(uint64_t a1, uint64_t a2)
{
  sub_1B9F0ADF8(0, &qword_1EBBECB58);
  sub_1BA3955EC();
  v5 = sub_1BA4A6D68();
  v22.receiver = v2;
  v22.super_class = type metadata accessor for DismissibleBoldTitleHeaderView();
  objc_msgSendSuper2(&v22, sel_touchesEnded_withEvent_, v5, a2);

  v6 = OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_accessoryLabel;
  swift_beginAccess();
  v7 = *&v2[v6];
  if (v7)
  {
    v8 = v7;
    v9 = [v2 backgroundColor];
    v10 = objc_opt_self();
    v11 = [v10 clearColor];
    v12 = v11;
    if (v9)
    {
      if (v11)
      {
        sub_1B9F0ADF8(0, &qword_1EDC6E380);
        v13 = sub_1BA4A7798();

        if ((v13 & 1) == 0)
        {
          goto LABEL_10;
        }

LABEL_7:
        v14 = &selRef_tertiaryLabelColor;
LABEL_11:
        v15 = [v10 *v14];
        [v8 setTextColor_];

        goto LABEL_12;
      }

      v12 = v9;
    }

    else if (!v11)
    {
      goto LABEL_7;
    }

LABEL_10:
    v14 = &selRef_whiteColor;
    goto LABEL_11;
  }

LABEL_12:
  v16 = sub_1BA15930C(a1);
  if (v16)
  {
    v17 = v16;
    v18 = *&v2[v6];
    v19 = v18;
    LOBYTE(v18) = sub_1BA2EC9D4(v17, v18, 36.0, 36.0);

    if (v18)
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v21 = Strong;
        sub_1BA40B7AC();
      }
    }
  }
}

uint64_t sub_1BA3D7438(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t, void *))
{
  sub_1B9F0ADF8(0, &qword_1EBBECB58);
  sub_1BA3955EC();
  v8 = sub_1BA4A6D78();
  v9 = a4;
  v10 = a1;
  a5(v8, a4);
}

void sub_1BA3D74E8(uint64_t a1, uint64_t a2)
{
  sub_1B9F0ADF8(0, &qword_1EBBECB58);
  sub_1BA3955EC();
  v4 = sub_1BA4A6D68();
  v15.receiver = v2;
  v15.super_class = type metadata accessor for DismissibleBoldTitleHeaderView();
  objc_msgSendSuper2(&v15, sel_touchesCancelled_withEvent_, v4, a2);

  v5 = OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_accessoryLabel;
  swift_beginAccess();
  v6 = *&v2[v5];
  if (v6)
  {
    v7 = v6;
    v8 = [v2 backgroundColor];
    v9 = objc_opt_self();
    v10 = [v9 clearColor];
    v11 = v10;
    if (v8)
    {
      if (v10)
      {
        sub_1B9F0ADF8(0, &qword_1EDC6E380);
        v12 = sub_1BA4A7798();

        if ((v12 & 1) == 0)
        {
          goto LABEL_10;
        }

LABEL_7:
        v13 = &selRef_tertiaryLabelColor;
LABEL_11:
        v14 = [v9 *v13];
        [v7 setTextColor_];

        return;
      }

      v11 = v8;
    }

    else if (!v10)
    {
      goto LABEL_7;
    }

LABEL_10:
    v13 = &selRef_whiteColor;
    goto LABEL_11;
  }
}

id DismissibleBoldTitleHeaderView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id DismissibleBoldTitleHeaderView.init(frame:)(double a1, double a2, double a3, double a4)
{
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_heightConstraint] = 0;
  v9 = &v4[OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_dataSource];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_detailLabel] = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_titleLabel] = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_accessoryLabel] = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_detailContainerView] = 0;
  v10 = &v4[OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_title];
  v11 = type metadata accessor for DismissibleBoldTitleHeaderView();
  *v10 = 0;
  *(v10 + 1) = 0;
  v13.receiver = v4;
  v13.super_class = v11;
  return objc_msgSendSuper2(&v13, sel_initWithFrame_, a1, a2, a3, a4);
}

id DismissibleBoldTitleHeaderView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id DismissibleBoldTitleHeaderView.init(coder:)(void *a1)
{
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_heightConstraint] = 0;
  v3 = &v1[OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_dataSource];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_detailLabel] = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_titleLabel] = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_accessoryLabel] = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_detailContainerView] = 0;
  v4 = &v1[OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_title];
  v5 = type metadata accessor for DismissibleBoldTitleHeaderView();
  *v4 = 0;
  *(v4 + 1) = 0;
  v8.receiver = v1;
  v8.super_class = v5;
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, a1);

  if (v6)
  {
  }

  return v6;
}

id DismissibleBoldTitleHeaderView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DismissibleBoldTitleHeaderView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*sub_1BA3D7AB0(uint64_t *a1))(id **, char)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_chromeHostView;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1BA0C36E0;
}

void sub_1BA3D7B98(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*sub_1BA3D7BF8(uint64_t *a1))(id **, char)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC18HealthExperienceUI30DismissibleBoldTitleHeaderView_chromeHostView;
  *(v3 + 32) = *v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1BA0C36E0;
}

void *static FeatureStatusSupport.getHealthChecklistSettingsSource(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[5];
  v4 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v3);
  result = (*(v4 + 40))(&v16, v3, v4);
  if (v16 == 6)
  {
    v10 = 0;
    v12 = 1;
  }

  else if (v16 == 4)
  {
    type metadata accessor for DataTypeDetailViewController();
    result = swift_dynamicCastClass();
    if (result)
    {
      v6 = OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_viewModel;
      v7 = result;
      swift_beginAccess();
      sub_1B9F0A534(v7 + v6, v13);
      v8 = v14;
      v9 = v15;
      __swift_project_boxed_opaque_existential_1(v13, v14);
      v10 = (*(v9 + 24))(v8, v9);
      v12 = v11;
      result = __swift_destroy_boxed_opaque_existential_1(v13);
    }

    else
    {
      v10 = 0;
      v12 = 0;
    }
  }

  else
  {
    v10 = 0;
    v12 = 2;
  }

  *a2 = v10;
  a2[1] = v12;
  return result;
}

uint64_t static PDFRenderableBuilder.buildExpression(_:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_1BA3D8580(v3, v1, v2);
}

uint64_t static PDFRenderableBuilder.buildOptional(_:)(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC0];
  }

  return v1;
}

uint64_t static PDFSectionProviderBuilder.buildExpression(_:)(uint64_t a1)
{
  sub_1B9F1B560(0, &qword_1EBBEF6B8, &qword_1EBBEDF00);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1BA4B5480;
  sub_1B9F0A534(a1, v2 + 32);
  return v2;
}

uint64_t sub_1BA3D8400(uint64_t result, uint64_t (*a2)(void), unint64_t *a3)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = result + 32;
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v8 = *v6;
    v9 = *(*v6 + 16);
    v10 = *(v7 + 16);
    if (__OFADD__(v10, v9))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v10 + v9 <= *(v7 + 24) >> 1)
    {
      if (*(v8 + 16))
      {
        goto LABEL_11;
      }
    }

    else
    {
      result = a2();
      v7 = result;
      if (*(v8 + 16))
      {
LABEL_11:
        if ((*(v7 + 24) >> 1) - *(v7 + 16) < v9)
        {
          goto LABEL_19;
        }

        sub_1B9F0D950(0, a3);
        swift_arrayInitWithCopy();

        if (v9)
        {
          v11 = *(v7 + 16);
          v12 = __OFADD__(v11, v9);
          v13 = v11 + v9;
          if (v12)
          {
            goto LABEL_20;
          }

          *(v7 + 16) = v13;
        }

        goto LABEL_4;
      }
    }

    if (v9)
    {
      goto LABEL_18;
    }

LABEL_4:
    v6 += 8;
    if (!--v3)
    {
      return v7;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1BA3D8580(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2;
  v10 = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v8);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);
  sub_1B9F1B560(0, &qword_1EDC5DC80, qword_1EDC69430);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1BA4B5480;
  sub_1B9F25598(&v8, v6 + 32);
  return v6;
}

void *_s18HealthExperienceUI20PDFRenderableBuilderV10buildBlockySayAA0D0_pGAFd_tFZ_0(void *result)
{
  v1 = result[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = MEMORY[0x1E69E7CC0];
  for (i = result + 4; ; ++i)
  {
    v4 = *i;
    v5 = *(*i + 16);
    v6 = v2[2];
    v7 = v6 + v5;
    if (__OFADD__(v6, v5))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v7 <= v2[3] >> 1)
    {
      if (*(v4 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v6 <= v7)
      {
        v8 = v6 + v5;
      }

      else
      {
        v8 = v6;
      }

      result = sub_1BA27FAAC(result, v8, 1, v2);
      v2 = result;
      if (*(v4 + 16))
      {
LABEL_14:
        if ((v2[3] >> 1) - v2[2] < v5)
        {
          goto LABEL_22;
        }

        sub_1B9F0D950(0, qword_1EDC69430);
        swift_arrayInitWithCopy();

        if (v5)
        {
          v9 = v2[2];
          v10 = __OFADD__(v9, v5);
          v11 = v9 + v5;
          if (v10)
          {
            goto LABEL_23;
          }

          v2[2] = v11;
        }

        goto LABEL_4;
      }
    }

    if (v5)
    {
      goto LABEL_21;
    }

LABEL_4:
    if (!--v1)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1BA3D88A4()
{
  sub_1BA3DAE94(0, &qword_1EDC5DCA0, &qword_1EDC6AD50, MEMORY[0x1E69A3310], MEMORY[0x1E69E6F90]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1BA4B5480;
  v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI28DownloadingPinningDataSource_downloadingDataItem);
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI28DownloadingPinningDataSource_downloadingDataItem + 8);
  v5 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI28DownloadingPinningDataSource_downloadingDataItem + 16);
  v4 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI28DownloadingPinningDataSource_downloadingDataItem + 24);
  v6 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI28DownloadingPinningDataSource_downloadingDataItem + 32);
  *(v1 + 56) = &type metadata for EmptyStateCollectionViewCellItem;
  *(v1 + 64) = sub_1BA02090C();
  v7 = swift_allocObject();
  *(v1 + 32) = v7;
  *(v7 + 16) = v3;
  *(v7 + 24) = v2;
  *(v7 + 32) = v5;
  *(v7 + 40) = v4;
  *(v7 + 48) = v6;

  sub_1BA0EB668(0, v1, 1);
}

uint64_t sub_1BA3D8A20()
{
}

uint64_t DownloadingPinningDataSource.deinit()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t DownloadingPinningDataSource.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1BA3D8C84(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI29BrowsePinnedContentDataSource_pinnedFeedItemsPublisher;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t sub_1BA3D8D34(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI29BrowsePinnedContentDataSource_pinnedFeedItemsPublisher;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t BrowsePinnedContentDataSource.init(healthExperienceStore:healthStore:pinnedContentManager:)(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v7 = OBJC_IVAR____TtC18HealthExperienceUI29BrowsePinnedContentDataSource_pinnedFeedItemsPublisher;
  v8 = MEMORY[0x1E69E7CC0];
  v50[0] = MEMORY[0x1E69E7CC0];
  sub_1BA3DABB4();
  swift_allocObject();
  *(v3 + v7) = sub_1BA4A4DF8();
  *(v3 + OBJC_IVAR____TtC18HealthExperienceUI29BrowsePinnedContentDataSource_pinnedContentChangesCancellable) = 0;
  sub_1BA3DAC4C(a1, a3);
  v10 = v9;
  v11 = type metadata accessor for ListLayoutConfiguration();
  v12 = swift_allocBox();
  v14 = v13;
  if (qword_1EDC6CBB0 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v11, qword_1EDC6CBB8);
  sub_1B9F37E38(v15, v14);
  *(v14 + 152) = 0;
  *(v14 + 64) = 0;
  type metadata accessor for MutableArrayDataSourceWithLayout();
  sub_1B9F320F0();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5480;
  *(inited + 32) = v8;

  v17 = MutableArrayDataSourceWithLayout.__allocating_init(_:collapseEmptySections:layoutConstructor:)(inited, 0, sub_1BA3DAF00, v12);
  v50[3] = type metadata accessor for HeaderItem();
  v50[4] = sub_1B9F3252C(&qword_1EDC69800, type metadata accessor for HeaderItem);
  v50[0] = v10;
  sub_1B9F0A534(v50, v49);
  v18 = swift_allocObject();
  sub_1B9F1134C(v49, v18 + 16);
  sub_1B9F32574(0, qword_1EDC693A8, type metadata accessor for Supplementary);
  v19 = swift_allocObject();
  v19[4] = v17;
  v19[5] = sub_1B9F79BC8;
  v19[6] = v18;
  v20 = *(v17 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier);
  v21 = *(v17 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier + 8);
  v19[2] = v20;
  v19[3] = v21;

  __swift_destroy_boxed_opaque_existential_1(v50);
  if (qword_1EBBE8920 != -1)
  {
    swift_once();
  }

  v23 = qword_1EBBF20E0;
  v22 = *algn_1EBBF20E8;
  type metadata accessor for DownloadingPinningDataSource(0);
  v24 = swift_allocObject();
  v50[0] = type metadata accessor for EmptyStateCollectionViewCell();
  sub_1B9F2E628(0, &qword_1EDC6C3D0, type metadata accessor for EmptyStateCollectionViewCell);

  v25 = sub_1BA4A6808();
  v26 = v24 + OBJC_IVAR____TtC18HealthExperienceUI28DownloadingPinningDataSource_downloadingDataItem;
  *v26 = v25;
  *(v26 + 8) = v27;
  *(v26 + 16) = v23;
  *(v26 + 24) = v22;
  *(v26 + 32) = 1;
  sub_1B9F2E074(MEMORY[0x1E69E7CC0], 1, sub_1BA1DF920, 0);
  sub_1B9F0A534(a3, v50);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v28 = sub_1BA4A1B68();
  v29 = objc_allocWithZone(type metadata accessor for PinnedContentDataSource());
  v46 = PinnedContentDataSource.init(pinnedContentManager:context:)(v50, v28);
  sub_1BA3DAF1C();
  swift_allocObject();

  v31 = sub_1BA064790(v30, v46);

  v47 = a3;
  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI29BrowsePinnedContentDataSource_pinnedContentWithCloudStateDataSource) = v31;
  v32 = sub_1BA3DAFA0();
  sub_1BA3DB1F0();
  swift_allocObject();

  v34 = sub_1BA064574(v33, v32);

  v35 = OBJC_IVAR____TtC18HealthExperienceUI29BrowsePinnedContentDataSource_cloudStateOrPinnedContentOrEmptyStateDataSource;
  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI29BrowsePinnedContentDataSource_cloudStateOrPinnedContentOrEmptyStateDataSource) = v34;
  v36 = swift_initStackObject();
  *(v36 + 16) = xmmword_1BA4B5480;
  sub_1BA3DAE94(0, &qword_1EDC5DCA0, &qword_1EDC6AD50, MEMORY[0x1E69A3310], MEMORY[0x1E69E6F90]);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1BA4B5480;
  *(v37 + 56) = type metadata accessor for ContentConfigurationItem();
  *(v37 + 64) = sub_1B9F3252C(&qword_1EDC664A0, type metadata accessor for ContentConfigurationItem);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v37 + 32));
  sub_1BA3D9BD0(a1, a2, boxed_opaque_existential_1);
  *(v36 + 32) = v37;
  v39 = MutableArrayDataSourceWithLayout.__allocating_init(_:collapseEmptySections:layoutConstructor:)(v36, 1, sub_1B9F5AEA0, 0);
  sub_1B9F32574(0, &qword_1EDC69040, type metadata accessor for CellRegistering);
  v40 = swift_allocObject();
  v40[4] = v39;
  v40[5] = sub_1B9F405BC;
  v40[6] = 0;
  v41 = *(v39 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier);
  v42 = *(v39 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier + 8);
  v40[2] = v41;
  v40[3] = v42;
  sub_1B9F1DEA0();
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_1BA4B9FD0;
  *(v43 + 32) = v19;
  *(v43 + 40) = &protocol witness table for Supplementary<A>;
  *(v43 + 48) = *(v4 + v35);
  *(v43 + 56) = &protocol witness table for PrimarySecondaryDataSource<A, B>;
  *(v43 + 64) = v40;
  *(v43 + 72) = &protocol witness table for CellRegistering<A>;

  v44 = CompoundSectionedDataSource.init(_:)(v43);
  swift_beginAccess();

  *&v49[0] = sub_1BA3DA3B0();
  sub_1BA4A4DA8();

  __swift_destroy_boxed_opaque_existential_1(v47);

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v44;
}

uint64_t sub_1BA3D94E4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = sub_1BA4A3EA8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F264E0();
  swift_beginAccess();
  v13 = *(v4 + 16);
  v14 = swift_allocObject();
  *(v14 + 16) = v4;
  *(v14 + 24) = a4;
  aBlock[4] = sub_1B9F8C0CC;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B9F8A254;
  aBlock[3] = &block_descriptor_109;
  v15 = _Block_copy(aBlock);
  v16 = v13;

  [v16 notifyObservers_];
  _Block_release(v15);

  v17 = *(v5 + OBJC_IVAR____TtC18HealthExperienceUI29BrowsePinnedContentDataSource_cloudStateOrPinnedContentOrEmptyStateDataSource);
  v18 = *(v17 + 24) == a1 && *(v17 + 32) == a2;
  if (v18 || (result = sub_1BA4A8338(), (result & 1) != 0))
  {
    v20 = sub_1BA3DA3B0();
    sub_1BA4A3D68();
    swift_bridgeObjectRetain_n();
    v21 = sub_1BA4A3E88();
    v22 = sub_1BA4A6FC8();
    if (os_log_type_enabled(v21, v22))
    {
      v34 = v9;
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      aBlock[0] = v24;
      *v23 = 136315650;
      v25 = sub_1BA4A85D8();
      v27 = sub_1B9F0B82C(v25, v26, aBlock);

      *(v23 + 4) = v27;
      *(v23 + 12) = 2048;
      if (v20 >> 62)
      {
        v28 = sub_1BA4A7CC8();
      }

      else
      {
        v28 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v23 + 14) = v28;

      *(v23 + 22) = 2080;
      v29 = sub_1BA4A27B8();
      v30 = MEMORY[0x1BFAF1560](v20, v29);
      v32 = sub_1B9F0B82C(v30, v31, aBlock);

      *(v23 + 24) = v32;
      _os_log_impl(&dword_1B9F07000, v21, v22, "[%s]: Received updates to pinned content, sending update with %ld items: %s", v23, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v24, -1, -1);
      MEMORY[0x1BFAF43A0](v23, -1, -1);

      (*(v10 + 8))(v12, v34);
    }

    else
    {

      swift_bridgeObjectRelease_n();
      (*(v10 + 8))(v12, v9);
    }

    swift_beginAccess();
    v35 = v20;

    sub_1BA4A4DA8();
  }

  return result;
}

void sub_1BA3D9A10(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1B9F0A534(a2, v12);
  sub_1BA15E094();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1BA4B5480;
  *(v5 + 32) = sub_1BA4A1D78();
  sub_1B9F0A534(a3, v11);
  v6 = objc_allocWithZone(type metadata accessor for EditFavoritesCollectionViewController());
  v7 = EditFavoritesCollectionViewController.init(pinnedContentManager:sourceProfiles:healthExperienceStore:)(v12, v5, v11);
  v8 = [objc_allocWithZone(MEMORY[0x1E69A4420]) initWithRootViewController_];
  v9 = [a1 viewController];
  if (v9)
  {
    v10 = v9;
    [v9 presentViewController:v8 animated:1 completion:0];
  }
}

void *sub_1BA3D9B14(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for ListLayoutConfiguration();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = swift_projectBox();
  swift_beginAccess();
  sub_1B9F37E38(v6, v5);
  v7 = ListLayoutConfiguration.layout(for:)(a2);
  sub_1BA047354(v5);
  return v7;
}

uint64_t sub_1BA3D9BD0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v49 = a1;
  v50 = a2;
  sub_1BA3DB458(0, &qword_1EDC6B780, MEMORY[0x1E69DBF38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v46 = &v40 - v5;
  v6 = sub_1BA4A3FB8();
  v47 = *(v6 - 8);
  v48 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1BA4A3F18();
  v9 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1BA4A4428();
  v12 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ContentConfigurationCollectionViewListCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v43 = [objc_opt_self() bundleForClass_];
  sub_1BA4A43A8();
  v16 = [objc_opt_self() configurationPreferringMulticolor];
  v17 = sub_1BA4A6758();
  v18 = objc_opt_self();
  v45 = v16;
  v19 = [v18 _systemImageNamed_withConfiguration_];

  sub_1BA4A43D8();
  sub_1BA4A1318();
  sub_1BA4A43B8();
  *&v55[0] = sub_1BA4A85D8();
  *(&v55[0] + 1) = v20;
  MEMORY[0x1BFAF1350](0x6C6C41776F68735FLL, 0xEC00000061746144);
  v41 = *(&v55[0] + 1);
  v42 = *&v55[0];
  v21 = MEMORY[0x1E69DC110];
  v22 = v51;
  *(a3 + 96) = v51;
  *(a3 + 104) = v21;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((a3 + 72));
  (*(v12 + 16))(boxed_opaque_existential_1, v14, v22);
  sub_1BA3DB458(0, &qword_1EDC6B430, MEMORY[0x1E69DBF68], MEMORY[0x1E69E6F90]);
  sub_1BA4A3FE8();
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1BA4B5480;
  v25 = v44;
  (*(v9 + 104))(v11, *MEMORY[0x1E69DBF28], v44);
  v26 = sub_1BA4A3F48();
  (*(*(v26 - 8) + 56))(v46, 1, 1, v26);
  sub_1BA4A3FA8();
  sub_1BA4A3F78();
  (*(v47 + 8))(v8, v48);
  (*(v9 + 8))(v11, v25);
  sub_1B9F0A534(v49, v55);
  v27 = swift_allocObject();
  v28 = v50;
  *(v27 + 16) = v50;
  sub_1B9F1134C(v55, v27 + 24);
  v29 = type metadata accessor for ContentConfigurationItem();
  v30 = v29[10];
  v31 = sub_1BA4A4168();
  (*(*(v31 - 8) + 56))(a3 + v30, 1, 1, v31);
  *&v52 = 0;
  *(&v52 + 1) = 0xE000000000000000;
  v32 = v28;
  sub_1BA4A7DF8();
  v33 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v35 = v34;

  *&v52 = v33;
  *(&v52 + 1) = v35;
  MEMORY[0x1BFAF1350](0xD000000000000012, 0x80000001BA5062C0);
  v36 = v52;
  v54 = 0;
  v52 = 0u;
  v53 = 0u;
  sub_1B9F2F610(&v52);
  *(&v53 + 1) = &type metadata for BasicCellSelectionHandler;
  v54 = &off_1F381BCC8;

  *&v52 = sub_1BA3DB4BC;
  *(&v52 + 1) = v27;
  LOBYTE(v53) = 2;
  (*(v12 + 8))(v14, v51);
  sub_1B9F2F698(&v52, a3 + 16);
  *(a3 + v29[12]) = 0;
  *(a3 + v29[13]) = 0;
  v37 = v41;
  *a3 = v42;
  *(a3 + 8) = v37;
  *(a3 + 112) = 0;
  *(a3 + 120) = v24;
  *(a3 + 56) = v36;
  v38 = (a3 + v29[11]);
  *v38 = 0;
  v38[1] = 0;
  return sub_1B9F2F610(&v52);
}

void sub_1BA3DA2C0(void *a1, void *a2, uint64_t a3)
{
  sub_1B9F0A534(a3, v9);
  v5 = objc_allocWithZone(type metadata accessor for AllHealthDataViewController());
  v5[OBJC_IVAR____TtC18HealthExperienceUI27AllHealthDataViewController_providedPresentation] = 1;
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI27AllHealthDataViewController_healthStore] = a2;
  sub_1B9F0A534(v9, &v5[OBJC_IVAR____TtC18HealthExperienceUI27AllHealthDataViewController_healthExperienceStore]);
  sub_1B9F0A534(v9, v8);
  type metadata accessor for AllHealthDataDataSource(0);
  swift_allocObject();
  v6 = sub_1BA1ECE48(a2, v8);
  v7 = CompoundDataSourceCollectionViewController.init(dataSource:)(v6);
  __swift_destroy_boxed_opaque_existential_1(v9);
  [a1 showViewController:v7 sender:a1];
}

uint64_t sub_1BA3DA3B0()
{
  v0 = sub_1BA4A3EA8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA0FC234();
  v5 = v4;
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  v7 = SnapshotDataSource.numberOfSections.getter(ObjectType, v5);
  swift_unknownObjectRelease();
  if (v7 != 1)
  {
    goto LABEL_13;
  }

  sub_1BA0FC234();
  v9 = v8;
  v10 = swift_getObjectType();
  swift_unknownObjectRetain();
  v11 = SnapshotDataSource.contentsAsArray()(v10, v9);
  swift_unknownObjectRelease();
  if (!*(v11 + 16))
  {

LABEL_13:
    sub_1BA4A3D68();

    v16 = sub_1BA4A3E88();
    v17 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *&v33[0] = v19;
      *v18 = 136315394;
      v20 = sub_1BA4A85D8();
      v22 = sub_1B9F0B82C(v20, v21, v33);

      *(v18 + 4) = v22;
      *(v18 + 12) = 2080;
      sub_1BA0FC234();
      v24 = v23;
      v25 = swift_getObjectType();
      swift_unknownObjectRetain();
      v26 = SnapshotDataSource.numberOfSections.getter(v25, v24);
      swift_unknownObjectRelease();
      v32[0] = v26;
      v27 = sub_1BA4A82D8();
      v29 = sub_1B9F0B82C(v27, v28, v33);

      *(v18 + 14) = v29;
      _os_log_impl(&dword_1B9F07000, v16, v17, "[%s]: Unexpected number of sections when resolving gradient content: %s", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v19, -1, -1);
      MEMORY[0x1BFAF43A0](v18, -1, -1);
    }

    (*(v1 + 8))(v3, v0);
    return MEMORY[0x1E69E7CC0];
  }

  v12 = *(v11 + 48);

  v34 = MEMORY[0x1E69E7CC0];
  v13 = *(v12 + 16);
  if (!v13)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = MEMORY[0x1E69E7CC0];
  do
  {
    sub_1B9F0A534(v14, v33);
    sub_1B9F1134C(v33, v32);
    sub_1B9F0D9AC(0, &qword_1EDC6AD50);
    sub_1BA4A27B8();
    if ((swift_dynamicCast() & 1) != 0 && v32[5])
    {
      MEMORY[0x1BFAF1510]();
      if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v31[1] = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1BA4A6B68();
      }

      sub_1BA4A6BB8();
      v15 = v34;
    }

    v14 += 40;
    --v13;
  }

  while (v13);

  return v15;
}

uint64_t sub_1BA3DA854()
{
}

uint64_t BrowsePinnedContentDataSource.deinit()
{

  v1 = OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t BrowsePinnedContentDataSource.__deallocating_deinit()
{
  BrowsePinnedContentDataSource.deinit();

  return swift_deallocClassInstance();
}

void sub_1BA3DA9FC()
{
  type metadata accessor for BrowsePinnedContentDataSource(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1BA4A1318();
  v4 = v3;

  qword_1EBBF20D0 = v2;
  *algn_1EBBF20D8 = v4;
}

void sub_1BA3DAAD8()
{
  type metadata accessor for BrowsePinnedContentDataSource(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1BA4A1318();
  v4 = v3;

  qword_1EBBF20E0 = v2;
  *algn_1EBBF20E8 = v4;
}

void sub_1BA3DABB4()
{
  if (!qword_1EBBF20F0)
  {
    sub_1BA3DB458(255, &qword_1EBBEA8F0, MEMORY[0x1E69A3DD0], MEMORY[0x1E69E62F8]);
    v0 = sub_1BA4A4DD8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBF20F0);
    }
  }
}

void sub_1BA3DAC4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BA4A4428();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for EditFavoritesCollectionViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = objc_opt_self();
  v9 = [v8 bundleForClass_];
  v10 = sub_1BA4A1318();
  v12 = v11;

  v13 = [v8 bundleForClass_];
  v14 = sub_1BA4A1318();
  v16 = v15;

  sub_1B9F0A534(a2, v19);
  sub_1B9F0A534(a1, v18);
  v17 = swift_allocObject();
  sub_1B9F1134C(v19, v17 + 16);
  sub_1B9F1134C(v18, v17 + 56);
  _s18HealthExperienceUI29CollectionViewHeaderProvidingPAAE24makeDefaultConfiguration5UIKit013UIListContentJ0VyFZ_0();
  type metadata accessor for HeaderItem();
  swift_allocObject();
  HeaderItem.init(title:buttonText:buttonWasTapped:configuration:automationIdentifier:)(v10, v12, v14, v16, sub_1BA3DB4C8, v17, v6, 0, 0);
}

void sub_1BA3DAE94(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1B9F0D9AC(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1BA3DAF1C()
{
  if (!qword_1EBBF2100)
  {
    type metadata accessor for DownloadingPinningDataSource(255);
    type metadata accessor for PinnedContentDataSource();
    v0 = type metadata accessor for PrimarySecondaryDataSource();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBF2100);
    }
  }
}

uint64_t sub_1BA3DAFA0()
{
  v0 = type metadata accessor for ListLayoutConfiguration();
  v1 = swift_allocBox();
  v3 = v2;
  if (qword_1EDC6CB88 != -1)
  {
    swift_once();
  }

  v4 = __swift_project_value_buffer(v0, qword_1EDC6CB90);
  sub_1B9F37E38(v4, v3);
  if (qword_1EDC6D268 != -1)
  {
    swift_once();
  }

  *(v3 + 64) = xmmword_1EDC6D270;
  type metadata accessor for MutableArrayDataSourceWithLayout();
  sub_1B9F320F0();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5480;
  sub_1BA3DAE94(0, &qword_1EDC5DCA0, &qword_1EDC6AD50, MEMORY[0x1E69A3310], MEMORY[0x1E69E6F90]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1BA4B5480;
  if (qword_1EBBE8918 != -1)
  {
    swift_once();
  }

  v8 = qword_1EBBF20D0;
  v7 = *algn_1EBBF20D8;
  *(v6 + 56) = &type metadata for TitleEmptyStateCollectionViewCellItem;
  *(v6 + 64) = sub_1B9F2F068();
  v9 = swift_allocObject();
  *(v6 + 32) = v9;
  type metadata accessor for TitleEmptyStateCollectionViewCell();
  sub_1B9F2E628(0, qword_1EDC6BBE0, type metadata accessor for TitleEmptyStateCollectionViewCell);

  v9[2] = sub_1BA4A6808();
  v9[3] = v10;
  v9[4] = v8;
  v9[5] = v7;
  *(inited + 32) = v6;

  v11 = MutableArrayDataSourceWithLayout.__allocating_init(_:collapseEmptySections:layoutConstructor:)(inited, 1, sub_1BA3DB4F4, v1);

  return v11;
}

void sub_1BA3DB1F0()
{
  if (!qword_1EBBF2108)
  {
    sub_1BA3DAF1C();
    type metadata accessor for MutableArrayDataSourceWithLayout();
    v0 = type metadata accessor for PrimarySecondaryDataSource();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBF2108);
    }
  }
}

void sub_1BA3DB458(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1BA3DB518()
{
  sub_1B9F820AC();
}

uint64_t sub_1BA3DB540(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = type metadata accessor for DisclosureCellHeaderView.ViewModel(0);
  if (v3 == a1)
  {
  }

  else
  {
    MEMORY[0x1EEE9AC00](v4);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1BA3DB93C();
  }
}

uint64_t sub_1BA3DB69C()
{
  sub_1B9F8224C();
}

uint64_t sub_1BA3DB6C4(uint64_t a1)
{
  v3 = *(v1 + 24);
  v4 = type metadata accessor for SnidgetContentView.ViewModel();
  if (v3 != a1)
  {
    MEMORY[0x1EEE9AC00](v4);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1BA3DB93C();
  }
}

uint64_t SnidgetTileView.ViewModel.__allocating_init(headerViewModel:snidgetDataViewModel:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_1BA4A19D8();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  return v4;
}

uint64_t SnidgetTileView.ViewModel.init(headerViewModel:snidgetDataViewModel:)(uint64_t a1, uint64_t a2)
{
  sub_1BA4A19D8();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t sub_1BA3DBA10(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001BA5063E0 == a2 || (sub_1BA4A8338() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001BA506400 == a2 || (sub_1BA4A8338() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001BA506420 == a2)
  {

    return 2;
  }

  else
  {
    v5 = sub_1BA4A8338();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1BA3DBB6C(unsigned __int8 a1)
{
  sub_1BA4A8488();
  MEMORY[0x1BFAF2ED0](a1);
  return sub_1BA4A84D8();
}

uint64_t sub_1BA3DBC68()
{
  sub_1BA4A8488();
  sub_1BA3DBB44(v2, *v0);
  return sub_1BA4A84D8();
}

uint64_t sub_1BA3DBCC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BA3DBA10(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BA3DBD08@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BA3DC450();
  *a1 = result;
  return result;
}

uint64_t sub_1BA3DBD44(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1BA3DBD98(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t SnidgetTileView.ViewModel.deinit()
{

  v1 = qword_1EDC6DA40;
  v2 = sub_1BA4A19E8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t SnidgetTileView.ViewModel.__deallocating_deinit()
{
  SnidgetTileView.ViewModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1BA3DBEB4(void *a1)
{
  v2 = v1;
  v4 = *(*v2 + 80);
  v5 = *(*v2 + 96);
  v6 = *(*v2 + 104);
  v7 = *(*v2 + 112);
  v8 = *(*v2 + 120);
  v9 = *(*v2 + 128);
  v10 = *(*v2 + 136);
  v23 = *(*v2 + 88);
  v24 = v4;
  v27 = v4;
  v28 = v23;
  v21 = v6;
  v22 = v5;
  v29 = v5;
  v30 = v6;
  v19 = v8;
  v20 = v7;
  v31 = v7;
  v32 = v8;
  v17 = v10;
  v18 = v9;
  v33 = v9;
  v34 = v10;
  type metadata accessor for SnidgetTileView.ViewModel.CodingKeys();
  swift_getWitnessTable();
  v11 = sub_1BA4A8298();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v17 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA4A8548();
  v27 = v2[2];
  LOBYTE(v35) = 0;
  type metadata accessor for DisclosureCellHeaderView.ViewModel(0);
  sub_1B9F4A8E0(&qword_1EDC663C0, type metadata accessor for DisclosureCellHeaderView.ViewModel);
  v15 = v25;
  sub_1BA4A8288();
  if (!v15)
  {
    v35 = v2[3];
    v26 = 1;
    v27 = v24;
    v28 = v23;
    v29 = v22;
    v30 = v21;
    v31 = v20;
    v32 = v19;
    v33 = v18;
    v34 = v17;
    type metadata accessor for SnidgetContentView.ViewModel();
    swift_getWitnessTable();
    sub_1BA4A8288();
    LOBYTE(v27) = 2;
    sub_1BA4A19E8();
    sub_1B9F4A8E0(&qword_1EDC6AE20, MEMORY[0x1E69E81E0]);
    sub_1BA4A8288();
  }

  return (*(v12 + 8))(v14, v11);
}

uint64_t SnidgetTileView.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SnidgetTileView.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t SnidgetTileView.viewModel.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t SnidgetTileView.previousViewModel.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

__n128 SnidgetTileView.init(_:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 24);
  *a2 = *a1;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 24) = v2;
  return result;
}

uint64_t sub_1BA3DC458()
{
  *(*(v0 + 16) + 24) = *(v0 + 24);
}

uint64_t keypath_getTm_4@<X0>(uint64_t (*a1)(void)@<X3>, void *a2@<X8>)
{
  *a2 = a1();
}

uint64_t sub_1BA3DC508()
{
  *(*(v0 + 16) + 16) = *(v0 + 24);
}

unint64_t sub_1BA3DC544(char a1)
{
  result = 0x5F7972616D6D7573;
  switch(a1)
  {
    case 1:
      result = 0x6C6C615F776F6873;
      break;
    case 2:
      result = 0x745F6573776F7262;
      break;
    case 3:
      result = 0x79726F6765746163;
      break;
    case 4:
      result = 0x725F6C6961746564;
      break;
    case 5:
      result = 0xD000000000000014;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 0x656C69666F7270;
      break;
    case 8:
    case 9:
      result = 0x5F676E6972616873;
      break;
    case 10:
      result = 0x72616265646973;
      break;
    case 11:
      result = 0xD000000000000011;
      break;
    case 12:
      result = 0xD000000000000010;
      break;
    case 13:
      result = 0x6E6572745F6C6C61;
      break;
    case 14:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

void __swiftcall PromotionFeedItemViewActionHandler.createDataTypeDetailViewController(for:)(UIViewController_optional *__return_ptr retstr, HKObjectType a2)
{
  v20 = v2;
  v5 = sub_1BA4A3EA8();
  v21 = *(v5 - 8);
  v22 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v6 = (v3 + OBJC_IVAR____TtC18HealthExperienceUI36AnyPlatformFeedItemViewActionHandler_context);
  UIViewController.resolvedHealthExperienceStore.getter(v32);
  v7 = v6[5];
  v8 = v6[6];
  __swift_project_boxed_opaque_existential_1(v6 + 2, v7);
  v9 = (*(v8 + 24))(v7, v8);
  v10 = v6[5];
  v11 = v6[6];
  __swift_project_boxed_opaque_existential_1(v6 + 2, v10);
  v12 = (*(v11 + 24))(v10, v11);
  v13 = [v12 profileIdentifier];

  LOBYTE(v33) = 15;
  LOBYTE(v11) = _s18HealthExperienceUI18DataTypeDetailModeO07defaultG03for12presentationACSo19HKProfileIdentifierC_AA12PresentationOSgtFZ_0(v13, &v33);

  v14 = v6[5];
  v15 = v6[6];
  __swift_project_boxed_opaque_existential_1(v6 + 2, v14);
  (*(v15 + 32))(v31, v14, v15);
  sub_1B9F0A534(v32, v25);
  *(&v26 + 1) = v9;
  LOBYTE(v27) = v11;
  sub_1BA4A2488();
  swift_allocObject();
  v16 = v9;
  *(&v27 + 1) = sub_1BA4A2468();
  sub_1BA3E2F04(v31, &v23, &unk_1EDC6ADB0, &qword_1EDC6ADC0, MEMORY[0x1E69A3D48]);
  if (v24)
  {

    sub_1BA3E389C(v31, &unk_1EDC6ADB0, &qword_1EDC6ADC0, MEMORY[0x1E69A3D48], sub_1B9F0D950);
    __swift_destroy_boxed_opaque_existential_1(v32);
    sub_1B9F1134C(&v23, &v33);
  }

  else
  {
    v17 = sub_1BA4A22B8();
    v18 = sub_1BA4A22A8();
    *(&v34 + 1) = v17;
    *&v35 = MEMORY[0x1E69A3CF8];
    *&v33 = v18;
    sub_1BA3E389C(v31, &unk_1EDC6ADB0, &qword_1EDC6ADC0, MEMORY[0x1E69A3D48], sub_1B9F0D950);
    __swift_destroy_boxed_opaque_existential_1(v32);
    if (v24)
    {
      sub_1BA3E389C(&v23, &unk_1EDC6ADB0, &qword_1EDC6ADC0, MEMORY[0x1E69A3D48], sub_1B9F0D950);
    }
  }

  sub_1B9F1134C(&v33, v28);
  v30 = 0;
  v40 = 0;
  v37 = v28[0];
  v38 = v28[1];
  v33 = v25[0];
  v34 = v25[1];
  v35 = v26;
  v36 = v27;
  v39 = v29;
  v19 = sub_1BA4A6C68();
  MEMORY[0x1EEE9AC00](v19);
  *(&v20 - 2) = a2.super.isa;
  *(&v20 - 1) = &v33;
  sub_1BA1E0DE4(sub_1BA3E2ED4, (&v20 - 4), "HealthExperienceUI/PromotionTileView.swift", 42);
  sub_1BA114E30(&v33);
}

void (*sub_1BA3DCCB0(uint64_t *a1))(id **, char)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_parentViewController;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1BA0C36E0;
}

void (*sub_1BA3DCD60(uint64_t *a1))(id **, char)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_chromeHostView;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1BA0BAB9C;
}

uint64_t sub_1BA3DCDF8(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_baseIdentifier);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_1BA3DCE64()
{
  v1 = (v0 + OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_baseIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1BA3DCEBC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_baseIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

void sub_1BA3DCF7C(uint64_t a1, uint64_t *a2)
{
  sub_1BA3E2F04(a1, v10, &qword_1EDC6C130, &qword_1EDC6C140, &protocol descriptor for FeedItemViewControllerContext);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_context;
  swift_beginAccess();
  sub_1BA0BACD4(v10, v3 + v4);
  swift_endAccess();
  sub_1BA3DE788();
  v5 = sub_1BA3E0BD8();
  v7 = v6;
  sub_1BA3E389C(v10, &qword_1EDC6C130, &qword_1EDC6C140, &protocol descriptor for FeedItemViewControllerContext, sub_1B9F0D950);
  v8 = (v3 + OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_pluginActionHandler);
  v9 = *(v3 + OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_pluginActionHandler);
  *v8 = v5;
  v8[1] = v7;
}

uint64_t sub_1BA3DD064@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_context;
  swift_beginAccess();
  return sub_1BA3E2F04(v1 + v3, a1, &qword_1EDC6C130, &qword_1EDC6C140, &protocol descriptor for FeedItemViewControllerContext);
}

void sub_1BA3DD0D4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_context;
  swift_beginAccess();
  sub_1BA0BACD4(a1, v1 + v3);
  swift_endAccess();
  sub_1BA3DE788();
  v4 = sub_1BA3E0BD8();
  v6 = v5;
  sub_1BA3E389C(a1, &qword_1EDC6C130, &qword_1EDC6C140, &protocol descriptor for FeedItemViewControllerContext, sub_1B9F0D950);
  v7 = (v1 + OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_pluginActionHandler);
  v8 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_pluginActionHandler);
  *v7 = v4;
  v7[1] = v6;
}

void (*sub_1BA3DD190(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA3DD1F4;
}

void sub_1BA3DD1F4(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(a1 + 24);
    sub_1BA3DE788();
    v5 = sub_1BA3E0BD8();
    v6 = (v4 + OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_pluginActionHandler);
    v7 = *(v4 + OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_pluginActionHandler);
    *v6 = v5;
    v6[1] = v8;
  }
}

void sub_1BA3DD25C(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_accessoryColor;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id sub_1BA3DD2BC()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_accessoryColor;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1BA3DD310(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_accessoryColor;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_1BA3DD3C8(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_accessoryLabel;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *sub_1BA3DD428()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_accessoryLabel;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1BA3DD474(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_accessoryLabel;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_1BA3DD52C()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView____lazy_storage___heroView;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView____lazy_storage___heroView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView____lazy_storage___heroView);
  }

  else
  {
    type metadata accessor for PromotionTileHeroView();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1BA3DD5B8()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView____lazy_storage___title;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView____lazy_storage___title);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView____lazy_storage___title);
  }

  else
  {
    v4 = sub_1BA3DD618();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1BA3DD618()
{
  v0 = sub_1BA4A3EA8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v5 = *MEMORY[0x1E69DDD40];
  v6 = objc_opt_self();
  v7 = [v6 preferredFontDescriptorWithTextStyle:v5 compatibleWithTraitCollection:0];
  v8 = [v7 fontDescriptorWithSymbolicTraits_];

  if (v8)
  {
    v9 = [objc_opt_self() fontWithDescriptor:v8 size:0.0];
  }

  else
  {
    sub_1BA4A3DD8();
    v10 = v5;
    v11 = sub_1BA4A3E88();
    v12 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v34 = v30;
      *v13 = 136315906;
      v14 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v31 = v10;
      v16 = sub_1B9F0B82C(v14, v15, &v34);

      *(v13 + 4) = v16;
      *(v13 + 12) = 2080;
      v32 = 0;
      v33 = 1;
      sub_1BA3E3838(0, &qword_1EBBECB00, type metadata accessor for Weight, MEMORY[0x1E69E6720]);
      v17 = sub_1BA4A6808();
      v19 = sub_1B9F0B82C(v17, v18, &v34);

      *(v13 + 14) = v19;
      *(v13 + 22) = 2080;
      LODWORD(v32) = 2;
      type metadata accessor for SymbolicTraits(0);
      v20 = sub_1BA4A6808();
      v22 = sub_1B9F0B82C(v20, v21, &v34);
      v10 = v31;

      *(v13 + 24) = v22;
      *(v13 + 32) = 2112;
      v23 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(v13 + 34) = v23;
      v24 = v29;
      *v29 = v23;
      _os_log_impl(&dword_1B9F07000, v11, v12, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v13, 0x2Au);
      sub_1BA3E389C(v24, &qword_1EDC6B490, &qword_1EDC6E350, 0x1E69E58C0, sub_1B9F0ADF8);
      MEMORY[0x1BFAF43A0](v24, -1, -1);
      v25 = v30;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v25, -1, -1);
      MEMORY[0x1BFAF43A0](v13, -1, -1);
    }

    (*(v1 + 8))(v3, v0);
    v26 = [v6 preferredFontDescriptorWithTextStyle_];
    v9 = [objc_opt_self() fontWithDescriptor:v26 size:0.0];
  }

  [v4 setFont_];

  [v4 setNumberOfLines_];
  [v4 setAdjustsFontForContentSizeCategory_];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v27) = 1148846080;
  [v4 setContentHuggingPriority:1 forAxis:v27];
  return v4;
}

id sub_1BA3DDA8C()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView____lazy_storage___body;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView____lazy_storage___body);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView____lazy_storage___body);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
    v5 = sub_1B9F6B774(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DB978], 0, 0, 1, 0, 1);
    [v4 setFont_];

    [v4 setNumberOfLines_];
    [v4 setAdjustsFontForContentSizeCategory_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    LODWORD(v6) = 1148846080;
    [v4 setContentHuggingPriority:1 forAxis:v6];
    v7 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_1BA3DDBC8(uint64_t a1)
{
  v25 = a1;
  sub_1BA3E3838(0, &qword_1EDC5E0A8, MEMORY[0x1E69DC598], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v24 - v2;
  v4 = sub_1BA4A7888();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BA4A7938();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BA4A79A8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A7968();
  (*(v9 + 104))(v11, *MEMORY[0x1E69DC560], v8);
  sub_1BA4A7828();
  v16 = [objc_opt_self() systemBlueColor];
  sub_1BA4A78F8();
  (*(v5 + 104))(v7, *MEMORY[0x1E69DC540], v4);
  sub_1BA4A78B8();
  sub_1BA4A7878();
  v17 = sub_1BA4A7808();
  sub_1BA4A4108();
  v17(v26, 0);
  v18 = [objc_opt_self() buttonWithType_];
  (*(v13 + 16))(v3, v15, v12);
  (*(v13 + 56))(v3, 0, 1, v12);
  sub_1BA4A79D8();
  v19 = v18;
  [v19 addTarget:v25 action:sel_didTapLinkAction_ forControlEvents:64];
  [v19 setContentHorizontalAlignment_];

  v20 = v19;
  LODWORD(v21) = 1148846080;
  [v20 setContentCompressionResistancePriority:1 forAxis:v21];
  LODWORD(v22) = 1148846080;
  [v20 setContentHuggingPriority:1 forAxis:v22];
  [v20 setTranslatesAutoresizingMaskIntoConstraints_];

  (*(v13 + 8))(v15, v12);
  return v20;
}

id sub_1BA3DE000(uint64_t *a1, uint64_t (*a2)(uint64_t))
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

id sub_1BA3DE064(uint64_t a1)
{
  sub_1BA3E3838(0, &qword_1EDC5E0A8, MEMORY[0x1E69DC598], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v22 - v3;
  v5 = sub_1BA4A7938();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BA4A79A8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A7988();
  v13 = [objc_opt_self() systemWhiteColor];
  sub_1BA4A78F8();
  v14 = HKHealthTintColor();
  sub_1BA4A78E8();
  (*(v6 + 104))(v8, *MEMORY[0x1E69DC560], v5);
  sub_1BA4A7828();
  v15 = [objc_opt_self() buttonWithType_];
  (*(v10 + 16))(v4, v12, v9);
  (*(v10 + 56))(v4, 0, 1, v9);
  sub_1BA4A79D8();
  [v15 setRole_];
  [v15 addTarget:a1 action:sel_didTapAction_ forControlEvents:64];
  v16 = [v15 titleLabel];
  if (v16)
  {
    v17 = v16;
    [v16 setLineBreakMode_];
  }

  v18 = [v15 titleLabel];
  if (v18)
  {
    v19 = v18;
    [v18 setNumberOfLines_];
  }

  [v15 setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v20) = 1148846080;
  [v15 setContentHuggingPriority:1 forAxis:v20];
  (*(v10 + 8))(v12, v9);
  return v15;
}

id PromotionTileView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id PromotionTileView.init(frame:)(double a1, double a2, double a3, double a4)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v9 = &v4[OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_baseIdentifier];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = &v4[OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_pluginActionHandler];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = &v4[OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_context];
  *v11 = 0u;
  *(v11 + 1) = 0u;
  *(v11 + 4) = 0;
  v12 = OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_accessoryColor;
  *&v4[v12] = [objc_opt_self() tertiaryLabelColor];
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_accessoryLabel] = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView____lazy_storage___heroView] = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView____lazy_storage___title] = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView____lazy_storage___body] = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView____lazy_storage___link] = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView____lazy_storage___primaryButton] = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_viewSpecificConstraints] = 0;
  v20.receiver = v4;
  v20.super_class = type metadata accessor for PromotionTileView();
  v13 = objc_msgSendSuper2(&v20, sel_initWithFrame_, a1, a2, a3, a4);
  v14 = sub_1BA3DD52C();
  [v13 addSubview_];

  v15 = sub_1BA3DD5B8();
  [v13 addSubview_];

  v16 = sub_1BA3DDA8C();
  [v13 addSubview_];

  v17 = sub_1BA3DDBA8();
  [v13 addSubview_];

  v18 = sub_1BA3DDFE0();
  [v13 addSubview_];

  sub_1BA3DF31C();
  sub_1BA3DE788();
  sub_1BA3E0358();

  return v13;
}

id PromotionTileView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

uint64_t sub_1BA3DE788()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_1BA4A3EA8();
  v81 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v3 = MEMORY[0x1E69E6720];
  sub_1BA3E3838(0, &qword_1EDC6E198, MEMORY[0x1E69A33F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v80 = &v72 - v5;
  sub_1BA3E3838(0, &qword_1EDC5E0A8, MEMORY[0x1E69DC598], v3);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v72 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v78 = &v72 - v13;
  v14 = sub_1BA4A31F8();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1BA4A3258();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_context;
  swift_beginAccess();
  sub_1BA3E2F04(&v1[v21], &v83, &qword_1EDC6C130, &qword_1EDC6C140, &protocol descriptor for FeedItemViewControllerContext);
  if (!v84)
  {
    return sub_1BA3E389C(&v83, &qword_1EDC6C130, &qword_1EDC6C140, &protocol descriptor for FeedItemViewControllerContext, sub_1B9F0D950);
  }

  v74 = v21;
  v76 = v11;
  v77 = v18;
  v75 = v17;
  sub_1B9F1134C(&v83, v86);
  v22 = v87;
  v23 = v88;
  __swift_project_boxed_opaque_existential_1(v86, v87);
  v24 = (*(v23 + 8))(v22, v23);
  if (v25 >> 60 != 15)
  {
    v26 = v25;
    v72 = v8;
    v27 = v24;
    sub_1B9F206D4(v24, v25);
    v73 = v27;
    sub_1BA4A3218();
    v29 = v87;
    v30 = v88;
    __swift_project_boxed_opaque_existential_1(v86, v87);
    v31 = (*(v30 + 72))(v29, v30);
    v33 = v32;
    v34 = &v1[OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_baseIdentifier];
    swift_beginAccess();
    *v34 = v31;
    v34[1] = v33;

    v35 = sub_1BA3DD52C();
    sub_1BA4A3228();
    v36 = v87;
    v37 = v88;
    __swift_project_boxed_opaque_existential_1(v86, v87);
    v38 = (*(v37 + 24))(v36, v37);
    sub_1BA0DAFB4(v16, v38);

    sub_1BA3E38F8(v16);
    v39 = OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_accessoryLabel;
    swift_beginAccess();
    v40 = *&v1[v39];
    if (v40)
    {
      [v40 removeFromSuperview];
    }

    v41 = sub_1BA40BDE8();
    v42 = *&v1[v39];
    *&v1[v39] = v41;
    v43 = v41;

    v44 = v72;
    if (v41)
    {
      if ([v1 isDismissible])
      {
        [v1 addSubview_];
        sub_1BA40CCB0();
      }
    }

    v45 = sub_1BA3DD5B8();
    sub_1BA4A3238();
    v46 = sub_1BA4A6758();

    [v45 setText_];

    v47 = sub_1BA3DDA8C();
    sub_1BA4A3208();
    v48 = sub_1BA4A6758();

    [v47 setText_];

    sub_1BA4A3248();
    v50 = v49;
    v51 = sub_1BA3DDBA8();
    v52 = v51;
    if (v50)
    {
      v53 = v78;
      sub_1BA4A79C8();
      v54 = sub_1BA4A79A8();
      if ((*(*(v54 - 8) + 48))(v53, 1, v54))
      {

        sub_1BA1ADDF4(v53, v76);
        sub_1BA4A79D8();

        sub_1BA3E3954(v53, &qword_1EDC5E0A8, MEMORY[0x1E69DC598]);
      }

      else
      {
        sub_1BA4A7978();
        sub_1BA4A79D8();
      }

      v55 = v26;
      [v1 addSubview_];
    }

    else
    {
      [v51 removeFromSuperview];

      v55 = v26;
    }

    v56 = v75;
    v57 = v50 != 0;
    v58 = v77;
    v59 = v80;
    (*(v77 + 16))(v80, v20, v75);
    (*(v58 + 56))(v59, 0, 1, v56);
    sub_1BA3DFCC0(v57);
    sub_1BA3E3954(v59, &qword_1EDC6E198, MEMORY[0x1E69A33F0]);
    v60 = sub_1BA3DDFE0();
    sub_1BA4A79C8();
    v61 = sub_1BA4A79A8();
    if ((*(*(v61 - 8) + 48))(v44, 1, v61))
    {
      sub_1BA1ADDF4(v44, v76);
      sub_1BA4A79D8();

      sub_1BA3E3954(v44, &qword_1EDC5E0A8, MEMORY[0x1E69DC598]);
    }

    else
    {
      sub_1BA4A3168();
      sub_1BA4A7978();
      sub_1BA4A79D8();
    }

    result = sub_1BA3E2F04(&v1[v74], &v83, &qword_1EDC6C130, &qword_1EDC6C140, &protocol descriptor for FeedItemViewControllerContext);
    v62 = v84;
    if (!v84)
    {
      __break(1u);
      return result;
    }

    v63 = v85;
    v64 = __swift_project_boxed_opaque_existential_1(&v83, v84);
    v65 = *(v62 - 8);
    v66 = MEMORY[0x1EEE9AC00](v64);
    v68 = &v72 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v65 + 16))(v68, v66);
    (*(v63 + 40))(&v82, v62, v63);
    (*(v65 + 8))(v68, v62);
    LOBYTE(v68) = v82 - 4;
    v69 = objc_opt_self();
    v70 = &selRef_tertiarySystemBackgroundColor;
    if ((v68 & 0xF7) != 0)
    {
      v70 = &selRef_secondarySystemGroupedBackgroundColor;
    }

    v71 = [v69 *v70];
    [v1 setBackgroundColor_];

    sub_1B9F6AC8C(v73, v55);
    (*(v77 + 8))(v20, v56);
    __swift_destroy_boxed_opaque_existential_1(&v83);
  }

  return __swift_destroy_boxed_opaque_existential_1(v86);
}

void sub_1BA3DF31C()
{
  sub_1B9F1C048(0, &qword_1EDC6B400);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1BA4C9890;
  v2 = sub_1BA3DD52C();
  v3 = [v2 leadingAnchor];

  v4 = [v0 &selRef__totalDistance + 1];
  v5 = [v3 constraintEqualToAnchor:v4 constant:18.0];

  *(v1 + 32) = v5;
  v6 = OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView____lazy_storage___heroView;
  v7 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView____lazy_storage___heroView] widthAnchor];
  v8 = [v7 constraintEqualToConstant_];

  *(v1 + 40) = v8;
  v9 = [v0 bottomAnchor];
  v10 = [*&v0[v6] bottomAnchor];
  v11 = [v9 constraintGreaterThanOrEqualToAnchor:v10 constant:18.0];

  *(v1 + 48) = v11;
  v12 = sub_1BA3DD5B8();
  v13 = [v12 topAnchor];

  v14 = [v0 topAnchor];
  v15 = [v13 &selRef:v14 objectAtIndex:18.0 + 6];

  *(v1 + 56) = v15;
  v16 = OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView____lazy_storage___title;
  v17 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView____lazy_storage___title] &selRef__totalDistance + 1];
  v18 = [*&v0[v6] trailingAnchor];
  v19 = [v17 &selRef:v18 objectAtIndex:20.0 + 6];

  *(v1 + 64) = v19;
  v20 = [v0 &selRef_cloudSyncObserverSyncCompleted_ + 4];
  v21 = [*&v0[v16] &selRef_cloudSyncObserverSyncCompleted_ + 4];
  v22 = [v20 constraintGreaterThanOrEqualToAnchor:v21 constant:30.0];

  *(v1 + 72) = v22;
  v23 = sub_1BA3DDA8C();
  v24 = [v23 topAnchor];

  v25 = [*&v0[v16] bottomAnchor];
  v26 = [v24 &selRef:v25 objectAtIndex:6.0 + 6];

  *(v1 + 80) = v26;
  v27 = OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView____lazy_storage___body;
  v28 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView____lazy_storage___body] leadingAnchor];
  v29 = [*&v0[v16] leadingAnchor];
  v30 = [v28 constraintEqualToAnchor_];

  *(v1 + 88) = v30;
  v31 = [v0 trailingAnchor];
  v32 = [*&v0[v27] trailingAnchor];
  v33 = [v31 &selRef:v32 objectAtIndex:18.0 + 6];

  *(v1 + 96) = v33;
  v34 = sub_1BA3DDFE0();
  v35 = [v34 leadingAnchor];

  v36 = [*&v0[v16] leadingAnchor];
  v37 = [v35 constraintEqualToAnchor_];

  *(v1 + 104) = v37;
  v38 = [v0 bottomAnchor];
  v39 = OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView____lazy_storage___primaryButton;
  v40 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView____lazy_storage___primaryButton] bottomAnchor];
  v41 = [v38 &selRef:v40 objectAtIndex:18.0 + 6];

  *(v1 + 112) = v41;
  v42 = [v0 trailingAnchor];
  v43 = [*&v0[v39] trailingAnchor];
  v44 = [v42 constraintGreaterThanOrEqualToAnchor:v43 constant:18.0];

  *(v1 + 120) = v44;
  v45 = objc_opt_self();
  sub_1B9F0ADF8(0, &qword_1EDC6B570);
  v46 = sub_1BA4A6AE8();

  [v45 activateConstraints_];
}

uint64_t sub_1BA3DF8C4()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = [v2 horizontalSizeClass];

  if (v3 != 2)
  {
    sub_1B9F1C048(0, &qword_1EDC6B400);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1BA4B5470;
    v21 = sub_1BA3DD52C();
    v22 = [v21 topAnchor];

    v23 = [v1 topAnchor];
    v24 = [v22 constraintEqualToAnchor:v23 constant:18.0];

    *(v13 + 32) = v24;
    return v13;
  }

  v4 = OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_context;
  swift_beginAccess();
  result = sub_1BA3E2F04(&v1[v4], v31, &qword_1EDC6C130, &qword_1EDC6C140, &protocol descriptor for FeedItemViewControllerContext);
  v6 = v32;
  if (v32)
  {
    v7 = v33;
    v8 = __swift_project_boxed_opaque_existential_1(v31, v32);
    v9 = *(v6 - 8);
    v10 = MEMORY[0x1EEE9AC00](v8);
    v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v12, v10);
    (*(v7 + 40))(&v30, v6, v7);
    (*(v9 + 8))(v12, v6);
    LODWORD(v12) = v30;
    sub_1B9F1C048(0, &qword_1EDC6B400);
    v13 = swift_allocObject();
    if (v12 == 4)
    {
      *(v13 + 16) = xmmword_1BA4B7510;
      v14 = sub_1BA3DD52C();
      v15 = [v14 topAnchor];

      v16 = [v1 topAnchor];
      v17 = [v15 constraintGreaterThanOrEqualToAnchor:v16 constant:18.0];

      *(v13 + 32) = v17;
      v18 = [*&v1[OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView____lazy_storage___heroView] centerYAnchor];
      v19 = [v1 centerYAnchor];
      v20 = [v18 constraintEqualToAnchor_];

      *(v13 + 40) = v20;
    }

    else
    {
      *(v13 + 16) = xmmword_1BA4B5470;
      v25 = sub_1BA3DD52C();
      v26 = [v25 topAnchor];

      v27 = [v1 topAnchor];
      v28 = [v26 constraintEqualToAnchor:v27 constant:18.0];

      *(v13 + 32) = v28;
    }

    __swift_destroy_boxed_opaque_existential_1(v31);
    return v13;
  }

  __break(1u);
  return result;
}

void sub_1BA3DFCC0(char a1)
{
  v2 = v1;
  v54 = OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_viewSpecificConstraints;
  if (*&v1[OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_viewSpecificConstraints])
  {
    v3 = objc_opt_self();
    sub_1B9F0ADF8(0, &qword_1EDC6B570);

    v4 = sub_1BA4A6AE8();

    [v3 deactivateConstraints_];
  }

  v56 = MEMORY[0x1E69E7CC0];
  v5 = sub_1BA3DF8C4();
  sub_1B9F73B50(v5);
  v6 = OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_accessoryLabel;
  swift_beginAccess();
  v7 = *&v1[v6];
  if (v7)
  {
    v8 = v7;
    if ([v2 isDismissible])
    {
      sub_1B9F1C048(0, &qword_1EDC6B400);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1BA4B8B60;
      v10 = v8;
      v11 = [v10 topAnchor];
      v12 = [v2 topAnchor];
      v13 = [v11 constraintEqualToAnchor:v12 constant:13.0];

      *(inited + 32) = v13;
      v14 = [v2 trailingAnchor];
      v15 = [v10 trailingAnchor];
      v16 = [v14 constraintEqualToAnchor:v15 constant:13.0];

      *(inited + 40) = v16;
      v17 = sub_1BA3DD5B8();
      v18 = [v17 trailingAnchor];

      v19 = [v10 leadingAnchor];
      v20 = [v18 constraintEqualToAnchor:v19 constant:-8.0];

      *(inited + 48) = v20;
      sub_1B9F73B50(inited);
    }

    else
    {
    }
  }

  v21 = sub_1BA3DDFE0();
  v22 = [v21 topAnchor];

  v23 = sub_1BA3DDBA8();
  v24 = [v23 bottomAnchor];

  v25 = [v22 constraintEqualToAnchor:v24 constant:18.0];
  type metadata accessor for UILayoutPriority(0);
  sub_1BA3E37F0(&qword_1EDC6B5E0, type metadata accessor for UILayoutPriority);
  sub_1BA4A3EB8();
  LODWORD(v26) = v55;
  [v25 setPriority_];
  v27 = [*&v2[OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView____lazy_storage___primaryButton] topAnchor];
  v28 = sub_1BA3DDA8C();
  v29 = [v28 bottomAnchor];

  v30 = [v27 &selRef:v29 objectAtIndex:18.0 + 6];
  sub_1BA4A3EB8();
  LODWORD(v31) = v55;
  v32 = v25;
  [v30 setPriority_];
  sub_1B9F1C048(0, &qword_1EDC6B400);
  v33 = swift_initStackObject();
  *(v33 + 16) = xmmword_1BA4B5890;
  v34 = OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView____lazy_storage___link;
  v35 = [*&v2[OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView____lazy_storage___link] topAnchor];
  v36 = OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView____lazy_storage___body;
  v37 = [*&v2[OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView____lazy_storage___body] bottomAnchor];
  v38 = [v35 constraintEqualToAnchor:v37 constant:6.0];

  *(v33 + 32) = v38;
  v39 = [*&v2[v34] leadingAnchor];
  v40 = [*&v2[v36] leadingAnchor];
  v41 = [v39 constraintEqualToAnchor_];

  *(v33 + 40) = v41;
  v42 = [*&v2[v34] trailingAnchor];
  v43 = [v2 trailingAnchor];
  v44 = [v42 constraintLessThanOrEqualToAnchor:v43 constant:-18.0];

  *(v33 + 48) = v44;
  *(v33 + 56) = v32;
  v45 = swift_initStackObject();
  *(v45 + 16) = xmmword_1BA4B5470;
  *(v45 + 32) = v30;
  if (a1)
  {
    swift_setDeallocating();
    v46 = v32;
    v47 = v30;
    swift_unknownObjectRelease();
    v48 = v33;
  }

  else
  {
    v49 = v32;
    v50 = v30;

    v48 = v45;
  }

  sub_1B9F73B50(v48);
  *&v2[v54] = v56;

  v51 = objc_opt_self();
  sub_1B9F0ADF8(0, &qword_1EDC6B570);
  v52 = sub_1BA4A6AE8();

  [v51 activateConstraints_];
}

uint64_t sub_1BA3E0358()
{
  swift_getObjectType();
  sub_1BA3E3838(0, &qword_1EDC5DC30, sub_1B9F3BF3C, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BA4B5480;
  v1 = sub_1BA4A4858();
  v2 = MEMORY[0x1E69DC2B0];
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  MEMORY[0x1BFAF2130](v0, sel_didChangePreferredContentSize);
  swift_unknownObjectRelease();

  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1BA4B5480;
  v4 = sub_1BA4A4438();
  v5 = MEMORY[0x1E69DC130];
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  sub_1BA4A7708();
  swift_unknownObjectRelease();
}

Swift::Void __swiftcall PromotionTileView.submitTapAnalytics()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1BA4A3EA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v45 - v8;
  v10 = OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_context;
  swift_beginAccess();
  sub_1BA3E2F04(v1 + v10, &v48, &qword_1EDC6C130, &qword_1EDC6C140, &protocol descriptor for FeedItemViewControllerContext);
  if (v50)
  {
    v46 = v4;
    sub_1B9F1134C(&v48, v52);
    v11 = v53;
    v12 = v54;
    __swift_project_boxed_opaque_existential_1(v52, v53);
    (*(v12 + 48))(v11, v12);
    v13 = v53;
    v14 = v54;
    __swift_project_boxed_opaque_existential_1(v52, v53);
    (*(v14 + 40))(&v48, v13, v14);
    v15 = v48;
    v16 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
    v17 = sub_1BA4A6758();

    sub_1BA3DC544(v15);
    v18 = sub_1BA4A6758();

    sub_1BA4A3E58();
    v19 = v16;
    v20 = v17;
    v21 = v18;
    v22 = sub_1BA4A3E88();
    v23 = sub_1BA4A6FC8();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v45 = v3;
      v26 = v25;
      v47[0] = v25;
      *v24 = 136446466;
      *&v48 = ObjectType;
      swift_getMetatypeMetadata();
      v27 = sub_1BA4A6808();
      v29 = sub_1B9F0B82C(v27, v28, v47);

      *(v24 + 4) = v29;
      *(v24 + 12) = 2080;
      *&v48 = v19;
      *(&v48 + 1) = v20;
      v49 = v21;
      v30 = v19;
      v31 = v20;
      v32 = v21;
      v33 = sub_1BA4A6808();
      v35 = sub_1B9F0B82C(v33, v34, v47);

      *(v24 + 14) = v35;
      _os_log_impl(&dword_1B9F07000, v22, v23, "[%{public}s]: Submitting suggested action analytics for: %s", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v26, -1, -1);
      MEMORY[0x1BFAF43A0](v24, -1, -1);

      (*(v46 + 8))(v9, v45);
    }

    else
    {

      (*(v46 + 8))(v9, v3);
    }

    v47[0] = v19;
    v47[1] = v20;
    v47[2] = v21;
    v43 = sub_1BA4A29B8();
    v44 = sub_1BA4A29A8();
    v50 = v43;
    v51 = MEMORY[0x1E69A3198];
    *&v48 = v44;
    sub_1BA3E30EC();
    sub_1BA4A2B58();
    __swift_destroy_boxed_opaque_existential_1(&v48);

    __swift_destroy_boxed_opaque_existential_1(v52);
  }

  else
  {
    sub_1BA3E389C(&v48, &qword_1EDC6C130, &qword_1EDC6C140, &protocol descriptor for FeedItemViewControllerContext, sub_1B9F0D950);
    sub_1BA4A3E58();
    v36 = sub_1BA4A3E88();
    v37 = sub_1BA4A6FB8();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *&v48 = v39;
      *v38 = 136446210;
      v52[0] = ObjectType;
      swift_getMetatypeMetadata();
      v40 = sub_1BA4A6808();
      v42 = sub_1B9F0B82C(v40, v41, &v48);

      *(v38 + 4) = v42;
      _os_log_impl(&dword_1B9F07000, v36, v37, "[%{public}s]: Context is not set for view controller; cannot submit analytics", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v39);
      MEMORY[0x1BFAF43A0](v39, -1, -1);
      MEMORY[0x1BFAF43A0](v38, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
  }
}

void *sub_1BA3E0BD8()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_context;
  swift_beginAccess();
  sub_1BA3E2F04(v0 + v1, &v10, &qword_1EDC6C130, &qword_1EDC6C140, &protocol descriptor for FeedItemViewControllerContext);
  if (v11[1])
  {
    sub_1B9F1134C(&v10, v12);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      sub_1B9F0A534(v12, v11);
      *&v10 = v0;
      *(&v10 + 1) = v3;
      v4 = v13;
      v5 = v14;
      __swift_project_boxed_opaque_existential_1(v12, v13);
      v6 = *(v5 + 80);
      v7 = v0;
      v8 = v6(&v10, v4, v5);
      sub_1BA0C3344(&v10);
      if (v8)
      {
        swift_getObjectType();
        if (swift_conformsToProtocol2())
        {
          __swift_destroy_boxed_opaque_existential_1(v12);
          return v8;
        }
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    sub_1BA3E389C(&v10, &qword_1EDC6C130, &qword_1EDC6C140, &protocol descriptor for FeedItemViewControllerContext, sub_1B9F0D950);
  }

  return 0;
}

void static PromotionTileView.createPromotionBaseAutomationIdentifier(for:)(uint64_t a1, uint64_t a2)
{
  sub_1B9F1C048(0, &qword_1EDC6E330);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1BA4B5460;
  *(v4 + 32) = 0x6574736567677553;
  *(v4 + 40) = 0xEF6E6F6974634164;
  *(v4 + 48) = a1;
  *(v4 + 56) = a2;

  v5 = sub_1BA4A6AE8();

  v6 = HKUIJoinStringsForAutomationIdentifier();

  if (v6)
  {
    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  }

  else
  {
    __break(1u);
  }
}

void sub_1BA3E0E60(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_1BA3DD52C();

    MEMORY[0x1BFAF1350](0x6567616D492ELL, 0xE600000000000000);
    v3 = sub_1BA4A6758();

    [v2 setAccessibilityIdentifier_];

    v4 = sub_1BA3DD5B8();

    MEMORY[0x1BFAF1350](0x656C7469542ELL, 0xE600000000000000);
    v5 = sub_1BA4A6758();

    [v4 setAccessibilityIdentifier_];

    v6 = sub_1BA3DDA8C();

    MEMORY[0x1BFAF1350](0x706972637365442ELL, 0xEC0000006E6F6974);
    v7 = sub_1BA4A6758();

    [v6 setAccessibilityIdentifier_];

    v8 = sub_1BA3DDBA8();

    MEMORY[0x1BFAF1350](0x6B6E694C2ELL, 0xE500000000000000);
    v9 = sub_1BA4A6758();

    [v8 setAccessibilityIdentifier_];

    v10 = sub_1BA3DDFE0();

    MEMORY[0x1BFAF1350](0x7972616D6972502ELL, 0xEE006E6F74747542);
    v15 = sub_1BA4A6758();

    [v10 setAccessibilityIdentifier_];
  }

  else
  {
    v11 = sub_1BA3DD52C();
    [v11 setAccessibilityIdentifier_];

    v12 = sub_1BA3DD5B8();
    [v12 setAccessibilityIdentifier_];

    v13 = sub_1BA3DDA8C();
    [v13 setAccessibilityIdentifier_];

    v14 = sub_1BA3DDBA8();
    [v14 setAccessibilityIdentifier_];

    v15 = sub_1BA3DDFE0();
    [v15 setAccessibilityIdentifier_];
  }
}

id PromotionTileView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PromotionTileView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1BA3E12DC(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*sub_1BA3E1338(uint64_t *a1))(id **, char)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_parentViewController;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1BA0C36E0;
}

uint64_t sub_1BA3E14A4()
{
  v1 = (*v0 + OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_baseIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1BA3E1500(uint64_t a1, uint64_t a2)
{
  v5 = (*v2 + OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_baseIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

HealthExperienceUI::PromotionTileView::SuggestedActionAnalyticsEvent __swiftcall PromotionTileView.SuggestedActionAnalyticsEvent.init(didTapAction:uniqueIdentifier:presentation:)(Swift::Bool didTapAction, Swift::String uniqueIdentifier, HealthExperienceUI::Presentation presentation)
{
  v4 = v3;
  v5 = *presentation;
  v6 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  v7 = sub_1BA4A6758();

  sub_1BA3DC544(v5);
  v8 = sub_1BA4A6758();

  *v4 = v6;
  v4[1] = v7;
  v4[2] = v8;
  result.onboardLocation = v11;
  result.onboardTileType = v10;
  result.onboardTileDidClick.super.super.isa = v9;
  return result;
}

HealthExperienceUI::PromotionTileView::SuggestedActionAnalyticsEvent __swiftcall PromotionTileView.SuggestedActionAnalyticsEvent.init(onboardTileDidClick:onboardTileType:onboardLocation:)(NSNumber onboardTileDidClick, NSString onboardTileType, NSString onboardLocation)
{
  v3->super.super.isa = onboardTileDidClick.super.super.isa;
  v3[1].super.super.isa = onboardTileType;
  v3[2].super.super.isa = onboardLocation;
  result.onboardLocation = onboardLocation;
  result.onboardTileType = onboardTileType;
  result.onboardTileDidClick = onboardTileDidClick;
  return result;
}

BOOL PromotionTileView.isDismissible.getter()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_context;
  swift_beginAccess();
  sub_1BA3E2F04(v0 + v1, v12, &qword_1EDC6C130, &qword_1EDC6C140, &protocol descriptor for FeedItemViewControllerContext);
  v2 = v13;
  if (v13)
  {
    v3 = v14;
    v4 = __swift_project_boxed_opaque_existential_1(v12, v13);
    v5 = *(v2 - 8);
    v6 = MEMORY[0x1EEE9AC00](v4);
    v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v8, v6);
    sub_1BA3E389C(v12, &qword_1EDC6C130, &qword_1EDC6C140, &protocol descriptor for FeedItemViewControllerContext, sub_1B9F0D950);
    (*(v3 + 40))(&v11, v2, v3);
    (*(v5 + 8))(v8, v2);
    return v11 == 0;
  }

  else
  {
    sub_1BA3E389C(v12, &qword_1EDC6C130, &qword_1EDC6C140, &protocol descriptor for FeedItemViewControllerContext, sub_1B9F0D950);
    return 0;
  }
}

Swift::Void __swiftcall PromotionTileView.didTapDismiss()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_pluginActionHandler);
  if (v3)
  {
    v4 = swift_getObjectType();
    v5 = swift_conformsToProtocol2();
    if (v5)
    {
      v6 = *(v5 + 8);
      v7 = v5;
      v8 = v3;
      v6(v4, v7);
    }
  }

  v9 = OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_context;
  swift_beginAccess();
  sub_1BA3E2F04(v1 + v9, v35, &qword_1EDC6C130, &qword_1EDC6C140, &protocol descriptor for FeedItemViewControllerContext);
  v10 = v36;
  if (v36)
  {
    v11 = v37;
    v12 = __swift_project_boxed_opaque_existential_1(v35, v36);
    v13 = *(v10 - 8);
    v14 = MEMORY[0x1EEE9AC00](v12);
    v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v13 + 16))(v16, v14);
    v17 = (*(v11 + 48))(v10, v11);
    v19 = v18;
    (*(v13 + 8))(v16, v10);
    __swift_destroy_boxed_opaque_existential_1(v35);
    sub_1BA3E2F04(v1 + v9, v35, &qword_1EDC6C130, &qword_1EDC6C140, &protocol descriptor for FeedItemViewControllerContext);
    v20 = v36;
    if (v36)
    {
      v21 = v37;
      v22 = __swift_project_boxed_opaque_existential_1(v35, v36);
      v23 = *(v20 - 8);
      v24 = MEMORY[0x1EEE9AC00](v22);
      v26 = &v33 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v23 + 16))(v26, v24);
      (*(v21 + 24))(v20, v21);
      (*(v23 + 8))(v26, v20);
      sub_1BA4A2438();
      swift_allocObject();

      sub_1BA4A2408();
      __swift_destroy_boxed_opaque_existential_1(v35);
      v34 = sub_1BA4A2428();
      v27 = MEMORY[0x1E695C028];
      sub_1BA3E319C(0, &qword_1EBBEC2A0, MEMORY[0x1E695C028]);
      sub_1BA3E3140(&qword_1EBBEC2A8, &qword_1EBBEC2A0, v27);
      v28 = sub_1BA4A4F98();

      v34 = v28;
      v29 = swift_allocObject();
      v29[2] = v17;
      v29[3] = v19;
      v29[4] = ObjectType;
      v30 = swift_allocObject();
      v30[2] = v17;
      v30[3] = v19;
      v30[4] = ObjectType;
      v31 = swift_allocObject();
      *(v31 + 16) = sub_1BA3E3190;
      *(v31 + 24) = v30;
      v32 = MEMORY[0x1E695BED0];
      sub_1BA3E319C(0, &qword_1EBBEA138, MEMORY[0x1E695BED0]);
      sub_1BA3E3140(&qword_1EBBEA140, &qword_1EBBEA138, v32);

      sub_1BA4A4F88();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1BA3E1DF0(void **a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_1BA4A3EA8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  if (v10)
  {
    v11 = v10;
    sub_1BA4A3DD8();
    v12 = v10;

    v13 = sub_1BA4A3E88();
    v14 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v29 = v26;
      *v15 = 136446722;
      v16 = sub_1BA4A85D8();
      v18 = sub_1B9F0B82C(v16, v17, &v29);
      v27 = v6;
      v19 = a2;
      v20 = v18;

      *(v15 + 4) = v20;
      *(v15 + 12) = 2080;
      *(v15 + 14) = sub_1B9F0B82C(v19, a3, &v29);
      *(v15 + 22) = 2080;
      v28 = v10;
      v21 = v10;
      sub_1B9F0D950(0, &qword_1EDC6E310);
      v22 = sub_1BA4A6808();
      v24 = sub_1B9F0B82C(v22, v23, &v29);

      *(v15 + 24) = v24;
      _os_log_impl(&dword_1B9F07000, v13, v14, "[%{public}s] Failed to save dismissal state for %s: %s", v15, 0x20u);
      v25 = v26;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v25, -1, -1);
      MEMORY[0x1BFAF43A0](v15, -1, -1);

      (*(v7 + 8))(v9, v27);
    }

    else
    {

      (*(v7 + 8))(v9, v6);
    }
  }
}

uint64_t sub_1BA3E2080(uint64_t a1, unint64_t a2)
{
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3DD8();

  v8 = sub_1BA4A3E88();
  v9 = sub_1BA4A6FC8();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v17 = a1;
    v11 = v10;
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136446466;
    v13 = sub_1BA4A85D8();
    v15 = sub_1B9F0B82C(v13, v14, &v18);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_1B9F0B82C(v17, a2, &v18);
    _os_log_impl(&dword_1B9F07000, v8, v9, "[%{public}s] Saved dismissal state for %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v12, -1, -1);
    MEMORY[0x1BFAF43A0](v11, -1, -1);
  }

  return (*(v5 + 8))(v7, v4);
}

void PromotionTileView.touchesBegan(_:with:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BA15930C(a1);
  if (v4 && (v5 = v4, v6 = OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_accessoryLabel, swift_beginAccess(), v7 = *&v2[v6], v8 = v7, LOBYTE(v7) = sub_1BA2EC9D4(v5, v7, 36.0, 36.0), v8, v5, (v7 & 1) != 0))
  {
    sub_1BA3E2368();
  }

  else
  {
    sub_1B9F0ADF8(0, &qword_1EBBECB58);
    sub_1BA3955EC();
    v9 = sub_1BA4A6D68();
    v10.receiver = v2;
    v10.super_class = type metadata accessor for PromotionTileView();
    objc_msgSendSuper2(&v10, sel_touchesBegan_withEvent_, v9, a2);
  }
}

void sub_1BA3E2368()
{
  v1 = v0;
  v2 = [v0 viewController];
  if (v2)
  {
    UIViewController.resolvedPresentation.getter(&aBlock);

    LODWORD(v2) = aBlock;
  }

  v3 = OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_accessoryLabel;
  swift_beginAccess();
  v4 = *&v1[v3];
  if (v4)
  {
    if ((v2 - 6) < 2)
    {
      v12 = objc_opt_self();
      v6 = v4;
      v13 = [v12 systemGray5Color];
      v14 = [v12 tertiarySystemGroupedBackgroundColor];
      v15 = swift_allocObject();
      v15[2] = 0;
      v15[3] = v14;
      v15[4] = 0;
      v15[5] = v13;
      v10 = objc_allocWithZone(MEMORY[0x1E69DC888]);
      v23 = sub_1B9FE1088;
      v24 = v15;
      aBlock = MEMORY[0x1E69E9820];
      v20 = 1107296256;
      v11 = &block_descriptor_52_0;
    }

    else
    {
      if (v2 != 4 && v2 != 12)
      {
        v18 = objc_opt_self();
        v6 = v4;
        v17 = [v18 systemGray5Color];
        goto LABEL_10;
      }

      v5 = objc_opt_self();
      v6 = v4;
      v7 = [v5 systemGray5Color];
      v8 = [v5 systemGray4Color];
      v9 = swift_allocObject();
      v9[2] = 0;
      v9[3] = v8;
      v9[4] = 0;
      v9[5] = v7;
      v10 = objc_allocWithZone(MEMORY[0x1E69DC888]);
      v23 = sub_1B9FE1088;
      v24 = v9;
      aBlock = MEMORY[0x1E69E9820];
      v20 = 1107296256;
      v11 = &block_descriptor_59_0;
    }

    v21 = sub_1B9F7EBBC;
    v22 = v11;
    v16 = _Block_copy(&aBlock);
    v17 = [v10 initWithDynamicProvider_];
    _Block_release(v16);

LABEL_10:
    [v6 setTextColor_];
  }
}

void sub_1BA3E2640()
{
  v1 = v0;
  v2 = [v0 viewController];
  if (v2)
  {
    UIViewController.resolvedPresentation.getter(&aBlock);

    LODWORD(v2) = aBlock;
  }

  v3 = OBJC_IVAR____TtC18HealthExperienceUI25DismissibleTileHeaderView_accessoryLabel;
  swift_beginAccess();
  v4 = *&v1[v3];
  if (v4)
  {
    if ((v2 - 6) < 2)
    {
      v12 = objc_opt_self();
      v6 = v4;
      v13 = [v12 systemGray5Color];
      v14 = [v12 tertiarySystemGroupedBackgroundColor];
      v15 = swift_allocObject();
      v15[2] = 0;
      v15[3] = v14;
      v15[4] = 0;
      v15[5] = v13;
      v10 = objc_allocWithZone(MEMORY[0x1E69DC888]);
      v23 = sub_1B9FD7F54;
      v24 = v15;
      aBlock = MEMORY[0x1E69E9820];
      v20 = 1107296256;
      v11 = &block_descriptor_110;
    }

    else
    {
      if (v2 != 4 && v2 != 12)
      {
        v18 = objc_opt_self();
        v6 = v4;
        v17 = [v18 systemGray5Color];
        goto LABEL_10;
      }

      v5 = objc_opt_self();
      v6 = v4;
      v7 = [v5 systemGray5Color];
      v8 = [v5 systemGray4Color];
      v9 = swift_allocObject();
      v9[2] = 0;
      v9[3] = v8;
      v9[4] = 0;
      v9[5] = v7;
      v10 = objc_allocWithZone(MEMORY[0x1E69DC888]);
      v23 = sub_1B9FE1088;
      v24 = v9;
      aBlock = MEMORY[0x1E69E9820];
      v20 = 1107296256;
      v11 = &block_descriptor_45_0;
    }

    v21 = sub_1B9F7EBBC;
    v22 = v11;
    v16 = _Block_copy(&aBlock);
    v17 = [v10 initWithDynamicProvider_];
    _Block_release(v16);

LABEL_10:
    [v6 setTextColor_];
  }
}

void PromotionTileView.touchesEnded(_:with:)(uint64_t a1, uint64_t a2)
{
  sub_1B9F0ADF8(0, &qword_1EBBECB58);
  sub_1BA3955EC();
  v5 = sub_1BA4A6D68();
  v15.receiver = v2;
  v15.super_class = type metadata accessor for PromotionTileView();
  objc_msgSendSuper2(&v15, sel_touchesEnded_withEvent_, v5, a2);

  v6 = OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_accessoryLabel;
  swift_beginAccess();
  v7 = *&v2[v6];
  if (v7)
  {
    v8 = OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_accessoryColor;
    swift_beginAccess();
    [v7 setTextColor_];
  }

  v9 = sub_1BA15930C(a1);
  if (v9)
  {
    v10 = v9;
    v11 = *&v2[v6];
    v12 = v11;
    LOBYTE(v11) = sub_1BA2EC9D4(v10, v11, 36.0, 36.0);

    if (v11)
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v14 = Strong;
        sub_1BA40B7AC();
      }
    }
  }
}

uint64_t sub_1BA3E2AAC(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t, void *))
{
  sub_1B9F0ADF8(0, &qword_1EBBECB58);
  sub_1BA3955EC();
  v8 = sub_1BA4A6D78();
  v9 = a4;
  v10 = a1;
  a5(v8, a4);
}

id PromotionTileView.touchesCancelled(_:with:)(uint64_t a1, uint64_t a2)
{
  sub_1B9F0ADF8(0, &qword_1EBBECB58);
  sub_1BA3955EC();
  v4 = sub_1BA4A6D68();
  v9.receiver = v2;
  v9.super_class = type metadata accessor for PromotionTileView();
  objc_msgSendSuper2(&v9, sel_touchesCancelled_withEvent_, v4, a2);

  v5 = OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_accessoryLabel;
  result = swift_beginAccess();
  v7 = *&v2[v5];
  if (v7)
  {
    v8 = OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_accessoryColor;
    swift_beginAccess();
    return [v7 setTextColor_];
  }

  return result;
}

void sub_1BA3E2DB0(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*sub_1BA3E2E10(uint64_t *a1))(id **, char)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_chromeHostView;
  *(v3 + 32) = *v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1BA0C36E0;
}

uint64_t sub_1BA3E2ED4@<X0>(uint64_t *a1@<X8>)
{
  result = HKTDataTypeDetailFactory.makeViewController(hkType:context:)(*(v1 + 16), *(v1 + 24));
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1BA3E2F04(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  sub_1B9F21CC8(0, a3, a4, a5, sub_1B9F0D950);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

void _s18HealthExperienceUI17PromotionTileViewC5coderACSgSo7NSCoderC_tcfc_0()
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v1 = (v0 + OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_baseIdentifier);
  *v1 = 0;
  v1[1] = 0;
  v2 = (v0 + OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_pluginActionHandler);
  *v2 = 0;
  v2[1] = 0;
  v3 = v0 + OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_context;
  *v3 = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_accessoryColor;
  *(v0 + v4) = [objc_opt_self() tertiaryLabelColor];
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_accessoryLabel) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView____lazy_storage___heroView) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView____lazy_storage___title) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView____lazy_storage___body) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView____lazy_storage___link) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView____lazy_storage___primaryButton) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_viewSpecificConstraints) = 0;
  sub_1BA4A8018();
  __break(1u);
}

unint64_t sub_1BA3E30EC()
{
  result = qword_1EBBF2188;
  if (!qword_1EBBF2188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF2188);
  }

  return result;
}

uint64_t sub_1BA3E3140(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, void))
{
  result = *a1;
  if (!result)
  {
    sub_1BA3E319C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1BA3E319C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    v6 = sub_1B9F0D950(255, &qword_1EDC6E310);
    v7 = a3(a1, MEMORY[0x1E69E7CA8] + 8, v6, MEMORY[0x1E69E7288]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1BA3E32B4()
{
  result = qword_1EBBF2190;
  if (!qword_1EBBF2190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF2190);
  }

  return result;
}

unint64_t sub_1BA3E330C()
{
  result = qword_1EBBF2198;
  if (!qword_1EBBF2198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF2198);
  }

  return result;
}

uint64_t sub_1BA3E37F0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1BA3E3838(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1BA3E389C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_1B9F21CC8(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1BA3E38F8(uint64_t a1)
{
  v2 = sub_1BA4A31F8();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BA3E3954(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1BA3E3838(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t TableViewSupplementaryViewKind.rawValue.getter()
{
  if (*v0)
  {
    return 0x7265746F6F66;
  }

  else
  {
    return 0x726564616568;
  }
}

HealthExperienceUI::TableViewSupplementaryViewKind_optional __swiftcall TableViewSupplementaryViewKind.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1BA4A8108();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1BA3E3A6C(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x7265746F6F66;
  }

  else
  {
    v2 = 0x726564616568;
  }

  if (*a2)
  {
    v3 = 0x7265746F6F66;
  }

  else
  {
    v3 = 0x726564616568;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1BA4A8338();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

unint64_t sub_1BA3E3AF0()
{
  result = qword_1EBBF21A0;
  if (!qword_1EBBF21A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF21A0);
  }

  return result;
}

uint64_t sub_1BA3E3B44()
{
  sub_1BA4A8488();
  sub_1BA4A68C8();

  return sub_1BA4A84D8();
}

uint64_t sub_1BA3E3BB4()
{
  sub_1BA4A68C8();
}

uint64_t sub_1BA3E3C08()
{
  sub_1BA4A8488();
  sub_1BA4A68C8();

  return sub_1BA4A84D8();
}

uint64_t sub_1BA3E3C74@<X0>(char *a1@<X8>)
{
  v2 = sub_1BA4A8108();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_1BA3E3CD4(uint64_t *a1@<X8>)
{
  v2 = 0x726564616568;
  if (*v1)
  {
    v2 = 0x7265746F6F66;
  }

  *a1 = v2;
  a1[1] = 0xE600000000000000;
}

void DataTypeDetailConfiguration.PromptsComponent.init(hkType:prominentPrompts:)(void *a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  sub_1BA4A27B8();
  sub_1B9F1C048(0, &qword_1EDC6B400);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1BA4B5470;
  *(v6 + 32) = a1;
  v7 = a1;
  v8 = MEMORY[0x1BFAED000](v6);

  if (a2)
  {
    sub_1BA4A2118();
  }

  else
  {
    sub_1BA4A2108();
  }

  v9 = sub_1BA4A2628();

  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1BA4B7510;
  *(v10 + 32) = v8;
  *(v10 + 40) = v9;
  sub_1B9F0ADF8(0, &qword_1EDC6B630);
  v11 = v8;
  v12 = v9;
  v13 = sub_1BA4A6AE8();

  v14 = [objc_opt_self() andPredicateWithSubpredicates_];

  *a3 = v14;
}

uint64_t DataTypeDetailConfiguration.PromptsComponent.init(measureIdentifier:prominentPrompts:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  sub_1BA4A27B8();
  sub_1BA3E48B0(0, &qword_1EBBEB208, MEMORY[0x1E69A30D0], MEMORY[0x1E69E6F90]);
  v6 = sub_1BA4A1A48();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1BA4B5480;
  (*(v7 + 16))(v9 + v8, a1, v6);
  v10 = sub_1BA4A2618();

  if (a2)
  {
    sub_1BA4A2118();
  }

  else
  {
    sub_1BA4A2108();
  }

  v11 = sub_1BA4A2628();

  sub_1B9F1C048(0, &qword_1EDC6B400);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1BA4B7510;
  *(v12 + 32) = v10;
  *(v12 + 40) = v11;
  sub_1B9F0ADF8(0, &qword_1EDC6B630);
  v13 = v10;
  v14 = v11;
  v15 = sub_1BA4A6AE8();

  v16 = [objc_opt_self() andPredicateWithSubpredicates_];

  result = (*(v7 + 8))(a1, v6);
  *a3 = v16;
  return result;
}

uint64_t DataTypeDetailConfiguration.PromptsComponent.makeDataSource(context:)(uint64_t a1)
{
  sub_1BA3E48B0(0, &qword_1EDC6E2A0, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v49 - v4;
  v6 = *v1;
  v7 = *(a1 + 48);
  v8 = sub_1BA4A6F38();
  if (v7 == 1 && (v9 = sub_1BA4A1D78(), v10 = sub_1BA4A1D68(), v9, (v10 & 1) != 0))
  {
    v52 = v8;
    v11 = sub_1BA4A6F38();
    __swift_project_boxed_opaque_existential_1(a1, *(a1 + 24));
    v51 = sub_1BA4A1B68();
    v12 = sub_1BA4A27B8();
    v54 = v6;
    v13 = v12;
    sub_1B9F1C048(0, &qword_1EDC6B450);
    v14 = swift_allocObject();
    v53 = xmmword_1BA4B5480;
    *(v14 + 16) = xmmword_1BA4B5480;
    *(v14 + 32) = v11;
    v50 = v11;
    v15 = MEMORY[0x1BFAED1E0](v14);

    sub_1BA3E48B0(0, &qword_1EDC6B460, MEMORY[0x1E69A3C08], MEMORY[0x1E69E6F90]);
    v16 = sub_1BA4A1C68();
    v17 = *(v16 - 8);
    v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v19 = swift_allocObject();
    *(v19 + 16) = v53;
    (*(v17 + 104))(v19 + v18, *MEMORY[0x1E69A3BC0], v16);
    v20 = sub_1BA4A0FA8();
    (*(*(v20 - 8) + 56))(v5, 1, 1, v20);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1BA4B5460;
    *(v21 + 32) = sub_1BA4A1D78();
    *(v21 + 40) = 0;
    *&v53 = v13;
    v22 = MEMORY[0x1BFAED020](v19, 0, v5, v21);

    sub_1B9F1C1B0(v5);
    v67[4] = v54;
    v67[5] = v15;
    v67[6] = v22;
    v66 = MEMORY[0x1E69E7CC0];
    v23 = v54;
    v24 = v15;
    v25 = v22;
    v26 = 0;
LABEL_4:
    if (v26 <= 3)
    {
      v27 = 3;
    }

    else
    {
      v27 = v26;
    }

    while (v26 != 3)
    {
      if (v27 == v26)
      {
        __break(1u);
        goto LABEL_18;
      }

      v28 = v67[v26++ + 4];
      if (v28)
      {
        v15 = v28;
        MEMORY[0x1BFAF1510]();
        if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1BA4A6B68();
        }

        sub_1BA4A6BB8();
        goto LABEL_4;
      }
    }

    v49 = v25;
    v54 = v24;
    sub_1B9F8AE1C();
    swift_arrayDestroy();
    sub_1B9F0ADF8(0, &qword_1EDC6B630);
    v32 = sub_1BA4A6AE8();

    v25 = [objc_opt_self() andPredicateWithSubpredicates_];

    sub_1B9F0ADF8(0, &qword_1EDC6E3E0);
    swift_getKeyPath();
    v33 = sub_1BA4A71B8();
    v24 = MEMORY[0x1BFAED110]();
    [v24 setPredicate_];
    sub_1B9F1C048(0, &qword_1EDC6B400);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1BA4B5470;
    *(v34 + 32) = v33;
    v22 = v33;
    v35 = sub_1BA4A6AE8();

    [v24 setSortDescriptors_];

    v36 = objc_allocWithZone(MEMORY[0x1E695D600]);
    v26 = v51;
    v15 = [v36 initWithFetchRequest:v24 managedObjectContext:v51 sectionNameKeyPath:0 cacheName:0];
    if (qword_1EDC6D268 == -1)
    {
      goto LABEL_15;
    }

LABEL_18:
    swift_once();
LABEL_15:
    v65[4] = xmmword_1EDC6D2B0;
    v65[5] = *&qword_1EDC6D2C0;
    v65[6] = xmmword_1EDC6D2D0;
    v65[7] = unk_1EDC6D2E0;
    v65[0] = xmmword_1EDC6D270;
    v65[1] = *&qword_1EDC6D280;
    v65[2] = xmmword_1EDC6D290;
    v65[3] = *&qword_1EDC6D2A0;
    v55 = xmmword_1EDC6D270;
    v56 = qword_1EDC6D280;
    v37 = *algn_1EDC6D288;
    v39 = xmmword_1EDC6D290;
    v38 = qword_1EDC6D2A0;
    v60 = *(&xmmword_1EDC6D2B0 + 8);
    v61 = unk_1EDC6D2C8;
    v62 = *(&xmmword_1EDC6D2D0 + 8);
    v63 = qword_1EDC6D2E8;
    v59 = *algn_1EDC6D2A8;
    sub_1B9F1D9A4(v65, &v64);
    sub_1B9F1DA18(v37, v39, *(&v39 + 1), v38);
    sub_1B9F0ADF8(0, &qword_1EDC6B530);
    v57 = 0u;
    v58 = 0u;
    v40 = sub_1B9F293A8(&v55);
    sub_1BA0649AC();
    v42 = objc_allocWithZone(v41);
    v43 = swift_allocObject();
    *(v43 + 16) = v40;
    v44 = &v42[qword_1EDC61AF0];
    *v44 = sub_1BA064A10;
    v44[1] = v43;
    v45 = v40;
    v46 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v15);

    sub_1BA3E4914();
    v30 = swift_allocObject();
    v47 = *&v46[qword_1EDC84AD0 + 8];
    *(v30 + 16) = *&v46[qword_1EDC84AD0];
    *(v30 + 24) = v47;
    *(v30 + 32) = v46;
    *(v30 + 40) = 0;
  }

  else
  {

    type metadata accessor for EmptyDataSource();
    swift_allocObject();
    v29 = EmptyDataSource.init()();
    sub_1BA3E4914();
    v30 = swift_allocObject();
    v31 = *(v29 + 24);
    *(v30 + 16) = *(v29 + 16);
    *(v30 + 24) = v31;
    *(v30 + 32) = v29;
    *(v30 + 40) = 1;
  }

  return v30;
}

void sub_1BA3E48B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1BA3E4914()
{
  if (!qword_1EDC66D10[0])
  {
    sub_1BA0649AC();
    type metadata accessor for EmptyDataSource();
    v0 = type metadata accessor for _ConditionalDataSource();
    if (!v1)
    {
      atomic_store(v0, qword_1EDC66D10);
    }
  }
}

id SharedProfileNotificationSettingsManager.__allocating_init(healthStore:legacyKeyValueDomain:notificationCenter:settingsManagerDefaults:)(void *a1, id a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v20 = a4;
  sub_1BA3E8ACC(0, &qword_1EDC5F360, sub_1BA078F34, MEMORY[0x1E695C070]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v20 - v12;
  v14 = objc_allocWithZone(v4);
  v15 = OBJC_IVAR____TtC18HealthExperienceUI40SharedProfileNotificationSettingsManager_lock;
  sub_1BA4A1C18();
  swift_allocObject();
  *&v14[v15] = sub_1BA4A1C08();
  v16 = OBJC_IVAR____TtC18HealthExperienceUI40SharedProfileNotificationSettingsManager__currentValues;
  v22 = sub_1B9FDB444(MEMORY[0x1E69E7CC0]);
  sub_1BA078F34();
  sub_1BA4A4EE8();
  (*(v11 + 32))(&v14[v16], v13, v10);
  *&v14[OBJC_IVAR____TtC18HealthExperienceUI40SharedProfileNotificationSettingsManager_healthStore] = a1;
  if (a2)
  {
    v17 = a1;
  }

  else
  {
    a2 = [objc_allocWithZone(MEMORY[0x1E696C210]) initWithCategory:1 domainName:*MEMORY[0x1E696C890] healthStore:a1];
  }

  *&v14[OBJC_IVAR____TtC18HealthExperienceUI40SharedProfileNotificationSettingsManager_legacyKeyValueDomain] = a2;
  *&v14[OBJC_IVAR____TtC18HealthExperienceUI40SharedProfileNotificationSettingsManager_notificationCenter] = a3;
  *&v14[OBJC_IVAR____TtC18HealthExperienceUI40SharedProfileNotificationSettingsManager_userDefaults] = v20;
  v21.receiver = v14;
  v21.super_class = v5;
  v18 = objc_msgSendSuper2(&v21, sel_init, v20);

  return v18;
}

HealthExperienceUI::SharedProfileNotificationType_optional __swiftcall SharedProfileNotificationType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1BA4A8108();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t SharedProfileNotificationType.rawValue.getter()
{
  v1 = 0xD000000000000012;
  if (*v0 != 1)
  {
    v1 = 0x73657461647075;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x737472656C61;
  }
}

uint64_t sub_1BA3E4CCC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000012;
  v4 = 0x80000001BA4E14D0;
  v5 = 0xE700000000000000;
  if (v2 == 1)
  {
    v5 = 0x80000001BA4E14D0;
  }

  else
  {
    v3 = 0x73657461647075;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x737472656C61;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  v8 = 0xD000000000000012;
  if (*a2 != 1)
  {
    v8 = 0x73657461647075;
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x737472656C61;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1BA4A8338();
  }

  return v11 & 1;
}

uint64_t sub_1BA3E4DC4()
{
  sub_1BA4A8488();
  sub_1BA4A68C8();

  return sub_1BA4A84D8();
}

uint64_t sub_1BA3E4E68()
{
  sub_1BA4A68C8();
}

uint64_t sub_1BA3E4EF8()
{
  sub_1BA4A8488();
  sub_1BA4A68C8();

  return sub_1BA4A84D8();
}

void sub_1BA3E4FA4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x80000001BA4E14D0;
  v5 = 0xD000000000000012;
  if (v2 != 1)
  {
    v5 = 0x73657461647075;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x737472656C61;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1BA3E5014()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BA4A4F28();

  return v1;
}

id SharedProfileNotificationSettingsManager.init(healthStore:legacyKeyValueDomain:notificationCenter:settingsManagerDefaults:)(void *a1, id a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  sub_1BA3E8ACC(0, &qword_1EDC5F360, sub_1BA078F34, MEMORY[0x1E695C070]);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v21 - v13;
  v15 = OBJC_IVAR____TtC18HealthExperienceUI40SharedProfileNotificationSettingsManager_lock;
  sub_1BA4A1C18();
  swift_allocObject();
  *&v4[v15] = sub_1BA4A1C08();
  v16 = OBJC_IVAR____TtC18HealthExperienceUI40SharedProfileNotificationSettingsManager__currentValues;
  v23 = sub_1B9FDB444(MEMORY[0x1E69E7CC0]);
  sub_1BA078F34();
  sub_1BA4A4EE8();
  (*(v12 + 32))(&v5[v16], v14, v11);
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI40SharedProfileNotificationSettingsManager_healthStore] = a1;
  if (a2)
  {
    v17 = a1;
  }

  else
  {
    a2 = [objc_allocWithZone(MEMORY[0x1E696C210]) initWithCategory:1 domainName:*MEMORY[0x1E696C890] healthStore:a1];
  }

  *&v5[OBJC_IVAR____TtC18HealthExperienceUI40SharedProfileNotificationSettingsManager_legacyKeyValueDomain] = a2;
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI40SharedProfileNotificationSettingsManager_notificationCenter] = a3;
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI40SharedProfileNotificationSettingsManager_userDefaults] = a4;
  v18 = type metadata accessor for SharedProfileNotificationSettingsManager();
  v22.receiver = v5;
  v22.super_class = v18;
  v19 = objc_msgSendSuper2(&v22, sel_init);

  return v19;
}

uint64_t sub_1BA3E529C(char *a1)
{
  v2 = v1;
  v4 = sub_1BA4A23F8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v27 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = v23 - v9;
  v11 = *a1;
  v12 = **(&unk_1E7EEDB90 + v11);
  v26 = *(v5 + 104);
  v26(v23 - v9, v12, v4, v8);
  v25 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI40SharedProfileNotificationSettingsManager_healthStore);
  v13 = [v25 profileIdentifier];
  v14 = sub_1BA4A23E8();

  v24 = *(v5 + 8);
  v24(v10, v4);
  v15 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI40SharedProfileNotificationSettingsManager_userDefaults);
  v16 = sub_1BA4A6758();
  v17 = [v15 objectForKey_];

  if (v17)
  {
    sub_1BA4A7BF8();
    swift_unknownObjectRelease();
  }

  else
  {
    v29 = 0u;
    v30 = 0u;
  }

  v31[0] = v29;
  v31[1] = v30;
  if (*(&v30 + 1))
  {
    if (swift_dynamicCast())
    {

      v18 = v28;
      return v18 & 1;
    }

    v23[0] = v15;
  }

  else
  {
    v23[0] = v15;
    sub_1B9F23224(v31);
  }

  v23[1] = v14;
  sub_1BA4A1BE8();
  v18 = sub_1BA4A7168();

  if (v18 == 2)
  {
    v19 = v27;
    (v26)(v27, **(&unk_1E7EEDB90 + v11), v4);
    v20 = [v25 profileIdentifier];
    v18 = sub_1BA4A23D8();

    v24(v19, v4);
  }

  v21 = sub_1BA4A6758();

  [v23[0] setBool:v18 & 1 forKey:v21];

  sub_1BA4A1BF8();
  return v18 & 1;
}

uint64_t sub_1BA3E5630(int a1, char *a2, int a3)
{
  v4 = v3;
  HIDWORD(v15) = a1;
  v16 = a3;
  v6 = sub_1BA4A23F8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a2;
  sub_1BA4A1BE8();
  v11 = *(v4 + OBJC_IVAR____TtC18HealthExperienceUI40SharedProfileNotificationSettingsManager_userDefaults);
  (*(v7 + 104))(v9, **(&unk_1E7EEDB90 + v10), v6);
  v12 = [*(v4 + OBJC_IVAR____TtC18HealthExperienceUI40SharedProfileNotificationSettingsManager_healthStore) profileIdentifier];
  sub_1BA4A23E8();

  (*(v7 + 8))(v9, v6);
  v13 = sub_1BA4A6758();

  LOBYTE(v7) = BYTE4(v15);
  [v11 setBool:BYTE4(v15) & 1 forKey:v13];

  sub_1BA4A1BF8();
  v17 = v10;
  return sub_1BA3E7154(v7, &v17, v16);
}

uint64_t sub_1BA3E57F0(char *a1)
{
  sub_1BA3E8ACC(0, &qword_1EDC5F368, sub_1BA078F34, MEMORY[0x1E695C060]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - v5;
  sub_1BA3E8388();
  v20 = v7;
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA3E84AC();
  v12 = *(v11 - 8);
  v21 = v11;
  v22 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  sub_1BA3E613C();
  swift_beginAccess();
  sub_1BA3E8ACC(0, &qword_1EDC5F360, sub_1BA078F34, MEMORY[0x1E695C070]);
  sub_1BA4A4EF8();
  swift_endAccess();
  *(swift_allocObject() + 16) = v15;
  sub_1BA3E8424();
  sub_1BA4A4FA8();

  (*(v4 + 8))(v6, v3);
  sub_1B9F85D50(&qword_1EDC5F710, sub_1BA3E8388);
  v16 = v20;
  sub_1BA4A5118();
  (*(v8 + 8))(v10, v16);
  sub_1B9F85D50(&qword_1EDC5F6A0, sub_1BA3E84AC);
  v17 = v21;
  v18 = sub_1BA4A4F98();
  (*(v22 + 8))(v14, v17);
  return v18;
}

uint64_t sub_1BA3E5B78(uint64_t a1)
{
  sub_1BA3E8ACC(0, &qword_1EDC5F368, sub_1BA078F34, MEMORY[0x1E695C060]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v19 - v5;
  sub_1BA3E8590();
  v19 = v7;
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA3E863C();
  v12 = *(v11 - 8);
  v20 = v11;
  v21 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA3E613C();
  swift_beginAccess();
  sub_1BA3E8ACC(0, &qword_1EDC5F360, sub_1BA078F34, MEMORY[0x1E695C070]);
  sub_1BA4A4EF8();
  swift_endAccess();
  *(swift_allocObject() + 16) = a1;
  sub_1BA078F34();
  sub_1BA3E8424();

  sub_1BA4A4FE8();

  (*(v4 + 8))(v6, v3);
  sub_1B9F85D50(&qword_1EBBF21E0, sub_1BA3E8590);
  sub_1BA3E86D8();
  v15 = v19;
  sub_1BA4A5118();
  (*(v8 + 8))(v10, v15);
  sub_1B9F85D50(&qword_1EBBF21F0, sub_1BA3E863C);
  v16 = v20;
  v17 = sub_1BA4A4F98();
  (*(v21 + 8))(v14, v16);
  return v17;
}

unint64_t sub_1BA3E5F14@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  if (sub_1B9FF14D4(a2, &unk_1F37FD908))
  {
    *a3 = v5;
  }

  result = sub_1B9FDB444(MEMORY[0x1E69E7CC0]);
  v7 = result;
  v8 = *(a2 + 16);
  if (!v8)
  {
LABEL_25:
    *a3 = v7;
    return result;
  }

  v9 = (a2 + 32);
  while (1)
  {
    v11 = *v9++;
    v10 = v11;
    if (!*(v5 + 16) || (v12 = sub_1B9FDA81C(v10), (v13 & 1) == 0))
    {
      result = sub_1B9FDA81C(v10);
      if (v23)
      {
        v24 = result;
        if (!swift_isUniquelyReferenced_nonNull_native())
        {
          sub_1BA0F3580();
        }

        result = sub_1BA0F7B28(v24, v7);
      }

      goto LABEL_8;
    }

    v14 = *(*(v5 + 56) + v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = v7;
    result = sub_1B9FDA81C(v10);
    v17 = v7[2];
    v18 = (v16 & 1) == 0;
    v19 = __OFADD__(v17, v18);
    v20 = v17 + v18;
    if (v19)
    {
      break;
    }

    v21 = v16;
    if (v7[3] < v20)
    {
      sub_1BA0F6290(v20, isUniquelyReferenced_nonNull_native);
      result = sub_1B9FDA81C(v10);
      if ((v21 & 1) != (v22 & 1))
      {
        goto LABEL_28;
      }

LABEL_20:
      if (v21)
      {
        goto LABEL_7;
      }

      goto LABEL_21;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_20;
    }

    v27 = result;
    sub_1BA0F3580();
    result = v27;
    v7 = v28;
    if (v21)
    {
LABEL_7:
      *(v7[7] + result) = v14;
      goto LABEL_8;
    }

LABEL_21:
    v7[(result >> 6) + 8] |= 1 << result;
    *(v7[6] + result) = v10;
    *(v7[7] + result) = v14;
    v25 = v7[2];
    v19 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (v19)
    {
      goto LABEL_27;
    }

    v7[2] = v26;
LABEL_8:
    if (!--v8)
    {
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  result = sub_1BA4A83B8();
  __break(1u);
  return result;
}

uint64_t sub_1BA3E613C()
{
  v1 = v0;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BA4A4F28();

  v2 = v20[2];

  if (v2)
  {
    return result;
  }

  v4 = sub_1B9FDB444(MEMORY[0x1E69E7CC0]);
  v5 = 0;
  while (1)
  {
    LOBYTE(v20) = byte_1F37FD8E0[v5 + 32];
    v6 = v20;
    v7 = sub_1BA3E529C(&v20);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = v4;
    v9 = sub_1B9FDA81C(v6);
    v11 = v4[2];
    v12 = (v10 & 1) == 0;
    v13 = __OFADD__(v11, v12);
    v14 = v11 + v12;
    if (v13)
    {
      break;
    }

    v15 = v10;
    if (v4[3] < v14)
    {
      sub_1BA0F6290(v14, isUniquelyReferenced_nonNull_native);
      v9 = sub_1B9FDA81C(v6);
      if ((v15 & 1) != (v16 & 1))
      {
        goto LABEL_19;
      }

LABEL_10:
      v4 = v20;
      if (v15)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    v19 = v9;
    sub_1BA0F3580();
    v9 = v19;
    v4 = v20;
    if (v15)
    {
LABEL_3:
      *(v4[7] + v9) = v7 & 1;
      goto LABEL_4;
    }

LABEL_11:
    v4[(v9 >> 6) + 8] |= 1 << v9;
    *(v4[6] + v9) = v6;
    *(v4[7] + v9) = v7 & 1;
    v17 = v4[2];
    v13 = __OFADD__(v17, 1);
    v18 = v17 + 1;
    if (v13)
    {
      goto LABEL_18;
    }

    v4[2] = v18;
LABEL_4:
    if (++v5 == 3)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v20 = v4;
      v1;
      sub_1BA4A4F38();
      return sub_1BA3E6368();
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_1BA4A83B8();
  __break(1u);
  return result;
}

uint64_t sub_1BA3E6368()
{
  ObjectType = swift_getObjectType();
  v22 = sub_1BA078F34;
  sub_1BA3E8ACC(0, &qword_1EDC5F368, sub_1BA078F34, MEMORY[0x1E695C060]);
  v24 = *(v0 - 8);
  v25 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v23 = &ObjectType - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &ObjectType - v3;
  v5 = sub_1BA4A7488();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &ObjectType - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA3E8A18();
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &ObjectType - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BA4A73E8();
  sub_1BA4A7498();

  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  v17 = ObjectType;
  *(v16 + 16) = v15;
  *(v16 + 24) = v17;
  sub_1BA078F34();
  sub_1B9F85D50(&unk_1EDC6B560, MEMORY[0x1E6969F20]);
  sub_1BA4A4FA8();

  (*(v6 + 8))(v8, v5);
  swift_beginAccess();
  sub_1BA3E8ACC(0, &qword_1EDC5F360, v22, MEMORY[0x1E695C070]);
  sub_1BA4A4EF8();
  swift_endAccess();
  sub_1B9F85D50(&qword_1EDC5F700, sub_1BA3E8A18);
  sub_1BA4A5158();
  (*(v11 + 8))(v13, v10);
  v18 = v24;
  v19 = v25;
  (*(v24 + 16))(v23, v4, v25);
  swift_beginAccess();
  sub_1BA4A4F08();
  swift_endAccess();
  return (*(v18 + 8))(v4, v19);
}

void sub_1BA3E6798(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v75 = a2;
  v79 = sub_1BA4A1018();
  v76 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v6 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v71 - v8;
  v10 = sub_1BA4A3EA8();
  v77 = *(v10 - 8);
  v78 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v71 - v14;
  v16 = sub_1BA4A1798();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v36 = 0;
    goto LABEL_24;
  }

  v72 = v17;
  v73 = Strong;
  v74 = a3;
  v21 = sub_1BA4A1008();
  if (!v21)
  {
    goto LABEL_18;
  }

  v22 = v21;
  v80 = 0xD000000000000010;
  v81 = 0x80000001BA5066F0;
  sub_1BA4A7D58();
  if (!*(v22 + 16) || (v23 = sub_1B9FDA8E4(v82), (v24 & 1) == 0))
  {

    sub_1B9FDC768(v82);
LABEL_18:
    v83 = 0u;
    v84 = 0u;
    goto LABEL_19;
  }

  sub_1B9F0AD9C(*(v22 + 56) + 32 * v23, &v83);
  sub_1B9FDC768(v82);

  if (!*(&v84 + 1))
  {
LABEL_19:
    sub_1B9F23224(&v83);
    goto LABEL_20;
  }

  if (swift_dynamicCast())
  {
    v25 = sub_1BA4A8108();

    if (v25 <= 2)
    {
      v26 = sub_1BA4A1008();
      if (v26)
      {
        v27 = v26;
        v80 = 0xD000000000000011;
        v81 = 0x80000001BA506710;
        sub_1BA4A7D58();
        a3 = v74;
        if (*(v27 + 16) && (v28 = sub_1B9FDA8E4(v82), (v29 & 1) != 0))
        {
          sub_1B9F0AD9C(*(v27 + 56) + 32 * v28, &v83);
          sub_1B9FDC768(v82);

          if (*(&v84 + 1))
          {
            if (swift_dynamicCast())
            {
              v30 = v82[1];
              v71 = v82[0];
              v31 = [*&v73[OBJC_IVAR____TtC18HealthExperienceUI40SharedProfileNotificationSettingsManager_healthStore] profileIdentifier];
              v32 = [v31 identifier];

              sub_1BA4A1778();
              v33 = sub_1BA4A1748();
              v35 = v34;
              (*(v72 + 8))(v19, v16);
              if (v33 == v71 && v35 == v30)
              {

                a3 = v74;
LABEL_33:
                swift_getKeyPath();
                swift_getKeyPath();
                v67 = v73;
                sub_1BA4A4F28();

                v68 = v82[0];
                LOBYTE(v82[0]) = v25;
                v69 = sub_1BA3E529C(v82);
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v82[0] = v68;
                sub_1B9FF263C(v69 & 1, v25, isUniquelyReferenced_nonNull_native);

                v36 = v82[0];
                goto LABEL_24;
              }

              v66 = sub_1BA4A8338();

              a3 = v74;
              if (v66)
              {
                goto LABEL_33;
              }
            }

            goto LABEL_28;
          }
        }

        else
        {

          sub_1B9FDC768(v82);
          v83 = 0u;
          v84 = 0u;
        }
      }

      else
      {
        v83 = 0u;
        v84 = 0u;
        a3 = v74;
      }

      sub_1B9F23224(&v83);
LABEL_28:
      sub_1BA4A3E28();
      v51 = v76;
      v52 = a1;
      v53 = v79;
      (*(v76 + 16))(v9, v52, v79);
      v54 = sub_1BA4A3E88();
      v55 = sub_1BA4A6FA8();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        v82[0] = v72;
        *v56 = 136446722;
        v57 = sub_1BA4A85D8();
        v59 = sub_1B9F0B82C(v57, v58, v82);

        *(v56 + 4) = v59;
        *(v56 + 12) = 2080;
        *(v56 + 14) = sub_1B9F0B82C(0xD000000000000011, 0x80000001BA506710, v82);
        *(v56 + 22) = 2080;
        *&v83 = sub_1BA4A1008();
        sub_1BA3E8ACC(0, &qword_1EBBF2208, sub_1BA3E8B30, MEMORY[0x1E69E6720]);
        v60 = sub_1BA4A6808();
        v62 = v61;
        (*(v51 + 8))(v9, v79);
        v63 = sub_1B9F0B82C(v60, v62, v82);

        *(v56 + 24) = v63;
        _os_log_impl(&dword_1B9F07000, v54, v55, "%{public}s Invalid %s in %s", v56, 0x20u);
        v64 = v72;
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v64, -1, -1);
        v65 = v56;
        a3 = v74;
        MEMORY[0x1BFAF43A0](v65, -1, -1);
      }

      else
      {

        (*(v51 + 8))(v9, v53);
      }

      (*(v77 + 8))(v15, v78);
      v36 = 0;
      goto LABEL_24;
    }
  }

LABEL_20:
  sub_1BA4A3E28();
  v37 = v76;
  v38 = a1;
  v39 = v79;
  (*(v76 + 16))(v6, v38, v79);
  v40 = sub_1BA4A3E88();
  v41 = sub_1BA4A6FA8();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v82[0] = v43;
    *v42 = 136446722;
    v44 = sub_1BA4A85D8();
    v46 = sub_1B9F0B82C(v44, v45, v82);

    *(v42 + 4) = v46;
    *(v42 + 12) = 2080;
    *(v42 + 14) = sub_1B9F0B82C(0xD000000000000010, 0x80000001BA5066F0, v82);
    *(v42 + 22) = 2080;
    *&v83 = sub_1BA4A1008();
    sub_1BA3E8ACC(0, &qword_1EBBF2208, sub_1BA3E8B30, MEMORY[0x1E69E6720]);
    v47 = sub_1BA4A6808();
    v49 = v48;
    (*(v37 + 8))(v6, v79);
    v50 = sub_1B9F0B82C(v47, v49, v82);

    *(v42 + 24) = v50;
    _os_log_impl(&dword_1B9F07000, v40, v41, "%{public}s Invalid %s in %s", v42, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v43, -1, -1);
    MEMORY[0x1BFAF43A0](v42, -1, -1);
  }

  else
  {

    (*(v37 + 8))(v6, v39);
  }

  (*(v77 + 8))(v12, v78);
  v36 = 0;
  a3 = v74;
LABEL_24:
  *a3 = v36;
}

uint64_t sub_1BA3E7154(char a1, unsigned __int8 *a2, int a3)
{
  v73 = a3;
  ObjectType = swift_getObjectType();
  v71 = sub_1BA4A1728();
  v6 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v69 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v65 - v9;
  v11 = sub_1BA4A3EA8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v67 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v65 - v15;
  v17 = *a2;
  sub_1BA4A3E28();
  v18 = sub_1BA4A3E88();
  v19 = sub_1BA4A6FC8();
  v20 = os_log_type_enabled(v18, v19);
  v72 = v11;
  v74 = v17;
  v70 = v12;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v68 = ObjectType;
    v22 = v21;
    v23 = swift_slowAlloc();
    *v22 = 136446722;
    v76 = v23;
    v77 = v68;
    swift_getMetatypeMetadata();
    v24 = sub_1BA4A6808();
    v26 = sub_1B9F0B82C(v24, v25, &v76);
    v66 = v10;
    v27 = v6;
    v28 = v26;

    *(v22 + 4) = v28;
    *(v22 + 12) = 2080;
    LOBYTE(v77) = v17;
    v29 = sub_1BA4A6808();
    v31 = sub_1B9F0B82C(v29, v30, &v76);

    *(v22 + 14) = v31;
    *(v22 + 22) = 2080;
    if (a1)
    {
      v32 = 1702195828;
    }

    else
    {
      v32 = 0x65736C6166;
    }

    if (a1)
    {
      v33 = 0xE400000000000000;
    }

    else
    {
      v33 = 0xE500000000000000;
    }

    v34 = sub_1B9F0B82C(v32, v33, &v76);

    *(v22 + 24) = v34;
    v6 = v27;
    v10 = v66;
    _os_log_impl(&dword_1B9F07000, v18, v19, "[%{public}s]: value for notification type %s successfully updated to %s", v22, 0x20u);
    swift_arrayDestroy();
    v35 = v23;
    v36 = v72;
    MEMORY[0x1BFAF43A0](v35, -1, -1);
    MEMORY[0x1BFAF43A0](v22, -1, -1);

    v37 = *(v70 + 8);
    v37(v16, v36);
  }

  else
  {

    v37 = *(v12 + 8);
    v37(v16, v11);
  }

  v38 = [*(v75 + OBJC_IVAR____TtC18HealthExperienceUI40SharedProfileNotificationSettingsManager_healthStore) profileIdentifier];
  v39 = [v38 type];

  v40 = v74;
  v41 = v69;
  if (v39 == 1 && (a1 & 1) != 0)
  {
    v68 = v37;
    sub_1BA4A1718();
    v42 = *(v75 + OBJC_IVAR____TtC18HealthExperienceUI40SharedProfileNotificationSettingsManager_userDefaults);
    v43 = sub_1BA4A16B8();
    sub_1BA4A1F78();
    v44 = sub_1BA4A6758();

    [v42 setObject:v43 forKey:v44];

    v45 = v67;
    sub_1BA4A3E28();
    (*(v6 + 16))(v41, v10, v71);
    v46 = sub_1BA4A3E88();
    v47 = sub_1BA4A6FC8();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v77 = v49;
      *v48 = 136446466;
      v50 = sub_1BA4A85D8();
      v52 = sub_1B9F0B82C(v50, v51, &v77);
      v66 = v10;
      v53 = v6;
      v54 = v52;

      *(v48 + 4) = v54;
      *(v48 + 12) = 2080;
      sub_1B9F85D50(&qword_1EDC6E448, MEMORY[0x1E6969530]);
      v55 = v71;
      v56 = sub_1BA4A82D8();
      v58 = v57;
      v59 = *(v53 + 8);
      v59(v41, v55);
      v60 = sub_1B9F0B82C(v56, v58, &v77);

      *(v48 + 14) = v60;
      _os_log_impl(&dword_1B9F07000, v46, v47, "%{public}s Set significant changes primary profile date enabled to %s", v48, 0x16u);
      swift_arrayDestroy();
      v61 = v49;
      v40 = v74;
      MEMORY[0x1BFAF43A0](v61, -1, -1);
      MEMORY[0x1BFAF43A0](v48, -1, -1);

      v68(v67, v72);
      v59(v66, v55);
    }

    else
    {

      v62 = *(v6 + 8);
      v63 = v71;
      v62(v41, v71);
      v68(v45, v72);
      v62(v10, v63);
    }
  }

  LOBYTE(v77) = v40;
  return sub_1BA3E77BC(&v77, v73 & 1);
}

uint64_t sub_1BA3E77BC(_BYTE *a1, int a2)
{
  v72 = a2;
  ObjectType = swift_getObjectType();
  v5 = sub_1BA4A3EA8();
  v74 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v70 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v65 - v8;
  v10 = sub_1BA4A1018();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v69 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v65 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v65 - v17;
  LOBYTE(v78) = *a1;
  v71 = v2;
  sub_1BA3E7DC8(&v78);
  sub_1BA4A3E28();
  v77 = v11;
  v19 = *(v11 + 16);
  v75 = v18;
  v68 = v19;
  v19(v15, v18, v10);
  v20 = sub_1BA4A3E88();
  v21 = sub_1BA4A6FC8();
  v22 = os_log_type_enabled(v20, v21);
  v73 = v5;
  v67 = ObjectType;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v76 = v10;
    v66 = v24;
    v78 = v24;
    *v23 = 136446466;
    v25 = sub_1BA4A85D8();
    v27 = sub_1B9F0B82C(v25, v26, &v78);

    *(v23 + 4) = v27;
    *(v23 + 12) = 2082;
    v28 = sub_1BA4A0FE8();
    v29 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v31 = v30;

    v32 = *(v77 + 8);
    v32(v15, v76);
    v33 = sub_1B9F0B82C(v29, v31, &v78);
    v34 = v32;

    *(v23 + 14) = v33;
    _os_log_impl(&dword_1B9F07000, v20, v21, "%{public}s Sending notification %{public}s", v23, 0x16u);
    v35 = v66;
    swift_arrayDestroy();
    v10 = v76;
    MEMORY[0x1BFAF43A0](v35, -1, -1);
    v36 = v23;
    v5 = v73;
    MEMORY[0x1BFAF43A0](v36, -1, -1);
  }

  else
  {

    v34 = *(v77 + 8);
    v34(v15, v10);
  }

  v37 = *(v74 + 8);
  v37(v9, v5);
  v38 = *(v71 + OBJC_IVAR____TtC18HealthExperienceUI40SharedProfileNotificationSettingsManager_notificationCenter);
  v39 = v75;
  v40 = sub_1BA4A0FB8();
  [v38 postNotification_];

  if (v72)
  {
    v41 = v70;
    sub_1BA4A3E28();
    v42 = v69;
    v68(v69, v39, v10);
    v43 = sub_1BA4A3E88();
    v44 = sub_1BA4A6FC8();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v76 = v10;
      v47 = v46;
      v78 = v46;
      *v45 = 136446466;
      v48 = sub_1BA4A85D8();
      v49 = v42;
      v51 = sub_1B9F0B82C(v48, v50, &v78);

      *(v45 + 4) = v51;
      *(v45 + 12) = 2082;
      v52 = sub_1BA4A0FE8();
      v53 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v54 = v34;
      v56 = v55;

      v54(v49, v76);
      v57 = sub_1B9F0B82C(v53, v56, &v78);
      v34 = v54;

      *(v45 + 14) = v57;
      _os_log_impl(&dword_1B9F07000, v43, v44, "%{public}s Sending daemon notification %{public}s", v45, 0x16u);
      swift_arrayDestroy();
      v58 = v47;
      v10 = v76;
      MEMORY[0x1BFAF43A0](v58, -1, -1);
      v59 = v45;
      v39 = v75;
      MEMORY[0x1BFAF43A0](v59, -1, -1);

      v60 = v70;
    }

    else
    {

      v34(v42, v10);
      v60 = v41;
    }

    v37(v60, v73);
    sub_1BA4A0FE8();
    sub_1BA4A1008();
    v61 = objc_allocWithZone(sub_1BA4A34C8());
    v62 = sub_1BA4A34B8();
    sub_1BA15F6D0();
    v63 = sub_1BA4A7198();
    [v63 addOperation_];
  }

  return (v34)(v39, v10);
}

uint64_t sub_1BA3E7DC8(unsigned __int8 *a1)
{
  v3 = sub_1BA4A1798();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  sub_1BA3E8ACC(0, &qword_1EDC6B418, sub_1BA1284D4, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5460;
  v18[0] = 0xD000000000000010;
  v18[1] = 0x80000001BA5066F0;
  v9 = MEMORY[0x1E69E6158];
  sub_1BA4A7D58();
  if (v7)
  {
    if (v7 == 1)
    {
      v10 = 0x80000001BA4E14D0;
      v11 = 0xD000000000000012;
    }

    else
    {
      v10 = 0xE700000000000000;
      v11 = 0x73657461647075;
    }
  }

  else
  {
    v10 = 0xE600000000000000;
    v11 = 0x737472656C61;
  }

  *(inited + 96) = v9;
  *(inited + 72) = v11;
  *(inited + 80) = v10;
  v18[0] = 0xD000000000000011;
  v18[1] = 0x80000001BA506710;
  sub_1BA4A7D58();
  v12 = [*(v1 + OBJC_IVAR____TtC18HealthExperienceUI40SharedProfileNotificationSettingsManager_healthStore) profileIdentifier];
  v13 = [v12 identifier];

  sub_1BA4A1778();
  v14 = sub_1BA4A1748();
  v16 = v15;
  (*(v4 + 8))(v6, v3);
  *(inited + 168) = v9;
  *(inited + 144) = v14;
  *(inited + 152) = v16;
  sub_1B9FDB524(inited);
  swift_setDeallocating();
  sub_1BA1284D4();
  swift_arrayDestroy();
  sub_1BA4A73E8();
  memset(v18, 0, sizeof(v18));
  return sub_1BA4A0FD8();
}

id SharedProfileNotificationSettingsManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SharedProfileNotificationSettingsManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SharedProfileNotificationSettingsManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BA3E8244@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BA4A4F28();

  *a1 = v3;
  return result;
}

uint64_t sub_1BA3E82C4(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_1BA4A4F38();
}

uint64_t type metadata accessor for SharedProfileNotificationSettingsManager()
{
  result = qword_1EDC60930;
  if (!qword_1EDC60930)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BA3E8388()
{
  if (!qword_1EDC5F708)
  {
    sub_1BA3E8ACC(255, &qword_1EDC5F368, sub_1BA078F34, MEMORY[0x1E695C060]);
    sub_1BA3E8424();
    v0 = sub_1BA4A4AC8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5F708);
    }
  }
}

unint64_t sub_1BA3E8424()
{
  result = qword_1EDC5F370;
  if (!qword_1EDC5F370)
  {
    sub_1BA3E8ACC(255, &qword_1EDC5F368, sub_1BA078F34, MEMORY[0x1E695C060]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5F370);
  }

  return result;
}

void sub_1BA3E84AC()
{
  if (!qword_1EDC5F698)
  {
    sub_1BA3E8388();
    sub_1B9F85D50(&qword_1EDC5F710, sub_1BA3E8388);
    v0 = sub_1BA4A4B58();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5F698);
    }
  }
}

unint64_t sub_1BA3E8540@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v5 = *result;
  if (*(*result + 16) && (result = sub_1B9FDA81C(*(v3 + 16)), (v6 & 1) != 0))
  {
    v7 = *(*(v5 + 56) + result);
  }

  else
  {
    v7 = 2;
  }

  *a2 = v7;
  return result;
}

void sub_1BA3E8590()
{
  if (!qword_1EBBF21D0)
  {
    sub_1BA3E8ACC(255, &qword_1EDC5F368, sub_1BA078F34, MEMORY[0x1E695C060]);
    sub_1BA078F34();
    sub_1BA3E8424();
    v0 = sub_1BA4A4B78();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBF21D0);
    }
  }
}

void sub_1BA3E863C()
{
  if (!qword_1EBBF21D8)
  {
    sub_1BA3E8590();
    sub_1B9F85D50(&qword_1EBBF21E0, sub_1BA3E8590);
    v0 = sub_1BA4A4B58();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBF21D8);
    }
  }
}

unint64_t sub_1BA3E86D8()
{
  result = qword_1EBBF21E8;
  if (!qword_1EBBF21E8)
  {
    sub_1BA078F34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF21E8);
  }

  return result;
}

unint64_t sub_1BA3E874C()
{
  result = qword_1EDC63C90;
  if (!qword_1EDC63C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC63C90);
  }

  return result;
}

unint64_t sub_1BA3E87A4()
{
  result = qword_1EBBF21F8;
  if (!qword_1EBBF21F8)
  {
    sub_1B9F23434(255, &qword_1EBBF2200, &type metadata for SharedProfileNotificationType, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF21F8);
  }

  return result;
}

void sub_1BA3E8838()
{
  sub_1BA3E8ACC(319, &qword_1EDC5F360, sub_1BA078F34, MEMORY[0x1E695C070]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of SharedProfileNotificationSettingsManager.createCurrentValueStream(for:)()
{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0xD8))();
}

{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0xE0))();
}

void sub_1BA3E8A18()
{
  if (!qword_1EDC5F6F8)
  {
    sub_1BA4A7488();
    sub_1BA078F34();
    sub_1B9F85D50(&unk_1EDC6B560, MEMORY[0x1E6969F20]);
    v0 = sub_1BA4A4AC8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5F6F8);
    }
  }
}

void sub_1BA3E8ACC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1BA3E8B30()
{
  if (!qword_1EBBF2210)
  {
    v0 = sub_1BA4A6688();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBF2210);
    }
  }
}

uint64_t sub_1BA3E8B94()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBF2218 = result;
  unk_1EBBF2220 = v1;
  return result;
}

uint64_t sub_1BA3E8C40()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBF2228 = result;
  unk_1EBBF2230 = v1;
  return result;
}

uint64_t sub_1BA3E8CEC()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBF2238 = result;
  unk_1EBBF2240 = v1;
  return result;
}

uint64_t sub_1BA3E8DC0()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBF2248 = result;
  unk_1EBBF2250 = v1;
  return result;
}

id sub_1BA3E8E8C(char a1)
{
  v3 = 0xD000000000000010;
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v93 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v93 - v12;
  v14 = *v1;
  if (a1)
  {
    if (!v14)
    {
      v3 = 0xD00000000000001DLL;
    }

    v15 = *MEMORY[0x1E69DDD80];
    v16 = objc_opt_self();
    v17 = [v16 preferredFontDescriptorWithTextStyle:v15 compatibleWithTraitCollection:0];
    if (v17)
    {
      v18 = v17;
      v19 = [objc_opt_self() fontWithDescriptor:v17 size:0.0];
    }

    else
    {
      sub_1BA4A3DD8();
      v26 = v15;
      v27 = sub_1BA4A3E88();
      v28 = sub_1BA4A6FB8();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v97 = v5;
        v30 = v29;
        v94 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        v100 = v95;
        *v30 = 136315906;
        v31 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v96 = v3;
        v33 = sub_1B9F0B82C(v31, v32, &v100);

        *(v30 + 4) = v33;
        *(v30 + 12) = 2080;
        v98 = 0;
        v99 = 1;
        sub_1B9F48158(0, &qword_1EBBECB00, type metadata accessor for Weight, MEMORY[0x1E69E6720]);
        v34 = sub_1BA4A6808();
        v36 = sub_1B9F0B82C(v34, v35, &v100);

        *(v30 + 14) = v36;
        *(v30 + 22) = 2080;
        LODWORD(v98) = 0;
        type metadata accessor for SymbolicTraits(0);
        v37 = sub_1BA4A6808();
        v39 = sub_1B9F0B82C(v37, v38, &v100);

        *(v30 + 24) = v39;
        *(v30 + 32) = 2112;
        v40 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
        *(v30 + 34) = v40;
        v41 = v94;
        *v94 = v40;
        _os_log_impl(&dword_1B9F07000, v27, v28, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v30, 0x2Au);
        sub_1B9F8C6C8(v41);
        MEMORY[0x1BFAF43A0](v41, -1, -1);
        v42 = v95;
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v42, -1, -1);
        MEMORY[0x1BFAF43A0](v30, -1, -1);

        (*(v97 + 8))(v13, v4);
      }

      else
      {

        (*(v5 + 8))(v13, v4);
      }

      v88 = [v16 preferredFontDescriptorWithTextStyle_];
      v19 = [objc_opt_self() fontWithDescriptor:v88 size:0.0];
    }

    v89 = [objc_opt_self() configurationWithFont:v19 scale:-1];

    v90 = sub_1BA4A6758();

    v62 = [objc_opt_self() systemImageNamed:v90 withConfiguration:v89];

    if (v62)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v20 = *MEMORY[0x1E69DDD80];
    v21 = objc_opt_self();
    v22 = [v21 preferredFontDescriptorWithTextStyle:v20 compatibleWithTraitCollection:0];
    v23 = v22;
    if ((v14 & 1) == 0)
    {
      if (v22)
      {
        v25 = [objc_opt_self() fontWithDescriptor:v22 size:0.0];
      }

      else
      {
        v97 = v5;
        sub_1BA4A3DD8();
        v63 = v20;
        v64 = sub_1BA4A3E88();
        v65 = sub_1BA4A6FB8();

        if (os_log_type_enabled(v64, v65))
        {
          v66 = swift_slowAlloc();
          v95 = swift_slowAlloc();
          v96 = swift_slowAlloc();
          v100 = v96;
          *v66 = 136315906;
          v67 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
          v69 = sub_1B9F0B82C(v67, v68, &v100);

          *(v66 + 4) = v69;
          *(v66 + 12) = 2080;
          v98 = 0;
          v99 = 1;
          sub_1B9F48158(0, &qword_1EBBECB00, type metadata accessor for Weight, MEMORY[0x1E69E6720]);
          v70 = sub_1BA4A6808();
          v72 = sub_1B9F0B82C(v70, v71, &v100);

          *(v66 + 14) = v72;
          *(v66 + 22) = 2080;
          LODWORD(v98) = 0;
          type metadata accessor for SymbolicTraits(0);
          v73 = sub_1BA4A6808();
          v75 = sub_1B9F0B82C(v73, v74, &v100);

          *(v66 + 24) = v75;
          *(v66 + 32) = 2112;
          v76 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
          *(v66 + 34) = v76;
          v77 = v95;
          *v95 = v76;
          _os_log_impl(&dword_1B9F07000, v64, v65, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v66, 0x2Au);
          sub_1B9F8C6C8(v77);
          MEMORY[0x1BFAF43A0](v77, -1, -1);
          v78 = v96;
          swift_arrayDestroy();
          MEMORY[0x1BFAF43A0](v78, -1, -1);
          MEMORY[0x1BFAF43A0](v66, -1, -1);
        }

        (*(v97 + 8))(v10, v4);
        v79 = [v21 preferredFontDescriptorWithTextStyle_];
        v25 = [objc_opt_self() fontWithDescriptor:v79 size:0.0];
      }

      v80 = objc_opt_self();
      v81 = [v80 configurationWithFont:v25 scale:-1];

      sub_1BA3EE16C(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
      v82 = swift_allocObject();
      *(v82 + 16) = xmmword_1BA4B7510;
      v83 = objc_opt_self();
      *(v82 + 32) = [v83 systemBlackColor];
      *(v82 + 40) = [v83 systemYellowColor];
      sub_1B9F0ADF8(0, &qword_1EDC6E380);
      v84 = sub_1BA4A6AE8();

      v85 = [v80 configurationWithPaletteColors_];

      v86 = [v81 configurationByApplyingConfiguration_];
      v87 = sub_1BA4A6758();
      v62 = [objc_opt_self() systemImageNamed:v87 withConfiguration:v86];

      goto LABEL_26;
    }

    if (v22)
    {
      v24 = [objc_opt_self() fontWithDescriptor:v22 size:0.0];
    }

    else
    {
      v97 = v5;
      sub_1BA4A3DD8();
      v43 = v20;
      v44 = sub_1BA4A3E88();
      v45 = sub_1BA4A6FB8();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v96 = swift_slowAlloc();
        v100 = v96;
        *v46 = 136315906;
        v48 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v50 = sub_1B9F0B82C(v48, v49, &v100);

        *(v46 + 4) = v50;
        *(v46 + 12) = 2080;
        v98 = 0;
        v99 = 1;
        sub_1B9F48158(0, &qword_1EBBECB00, type metadata accessor for Weight, MEMORY[0x1E69E6720]);
        v51 = sub_1BA4A6808();
        v53 = sub_1B9F0B82C(v51, v52, &v100);

        *(v46 + 14) = v53;
        *(v46 + 22) = 2080;
        LODWORD(v98) = 0;
        type metadata accessor for SymbolicTraits(0);
        v54 = sub_1BA4A6808();
        v56 = sub_1B9F0B82C(v54, v55, &v100);

        *(v46 + 24) = v56;
        *(v46 + 32) = 2112;
        v57 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
        *(v46 + 34) = v57;
        *v47 = v57;
        _os_log_impl(&dword_1B9F07000, v44, v45, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v46, 0x2Au);
        sub_1B9F8C6C8(v47);
        MEMORY[0x1BFAF43A0](v47, -1, -1);
        v58 = v96;
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v58, -1, -1);
        MEMORY[0x1BFAF43A0](v46, -1, -1);
      }

      (*(v97 + 8))(v7, v4);
      v59 = [v21 preferredFontDescriptorWithTextStyle_];
      v24 = [objc_opt_self() fontWithDescriptor:v59 size:0.0];
    }

    v60 = [objc_opt_self() configurationWithFont:v24 scale:-1];

    v61 = sub_1BA4A6758();
    v62 = [objc_opt_self() systemImageNamed:v61 withConfiguration:v60];

    if (v62)
    {
LABEL_25:
      v91 = [objc_opt_self() secondaryLabelColor];
      v86 = [v62 imageWithTintColor_];

      v62 = [v86 imageWithRenderingMode_];
LABEL_26:
    }
  }

  return v62;
}

unint64_t sub_1BA3E9BB8(char a1)
{
  v3 = sub_1BA4A3EA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v80 - v8;
  v10 = *v1;
  sub_1B9F48158(0, &qword_1EDC5DBB0, sub_1B9FE9628, MEMORY[0x1E69E6F90]);
  if (a1)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BA4B5460;
    v12 = *MEMORY[0x1E69DB648];
    *(inited + 32) = *MEMORY[0x1E69DB648];
    v13 = *MEMORY[0x1E69DDD80];
    if (v10)
    {
      v14 = objc_opt_self();
      v15 = v12;
      v16 = [v14 preferredFontDescriptorWithTextStyle:v13 compatibleWithTraitCollection:0];
      if (v16)
      {
        v17 = v16;
        v18 = [objc_opt_self() fontWithDescriptor:v16 size:0.0];
      }

      else
      {
        sub_1BA4A3DD8();
        v31 = v13;
        v32 = sub_1BA4A3E88();
        v33 = sub_1BA4A6FB8();

        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          LODWORD(v81) = v33;
          v35 = v34;
          v80 = swift_slowAlloc();
          v82 = swift_slowAlloc();
          v86 = v82;
          *v35 = 136315906;
          v36 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
          v38 = sub_1B9F0B82C(v36, v37, &v86);
          v83 = v31;
          v39 = v38;

          *(v35 + 4) = v39;
          *(v35 + 12) = 2080;
          v84 = 0;
          v85 = 1;
          sub_1B9F48158(0, &qword_1EBBECB00, type metadata accessor for Weight, MEMORY[0x1E69E6720]);
          v40 = sub_1BA4A6808();
          v42 = sub_1B9F0B82C(v40, v41, &v86);

          *(v35 + 14) = v42;
          *(v35 + 22) = 2080;
          LODWORD(v84) = 0;
          type metadata accessor for SymbolicTraits(0);
          v43 = sub_1BA4A6808();
          v45 = sub_1B9F0B82C(v43, v44, &v86);
          v31 = v83;

          *(v35 + 24) = v45;
          *(v35 + 32) = 2112;
          v46 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
          *(v35 + 34) = v46;
          v47 = v80;
          *v80 = v46;
          _os_log_impl(&dword_1B9F07000, v32, v81, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v35, 0x2Au);
          sub_1B9F8C6C8(v47);
          MEMORY[0x1BFAF43A0](v47, -1, -1);
          v48 = v82;
          swift_arrayDestroy();
          MEMORY[0x1BFAF43A0](v48, -1, -1);
          MEMORY[0x1BFAF43A0](v35, -1, -1);
        }

        (*(v4 + 8))(v9, v3);
        v49 = [v14 preferredFontDescriptorWithTextStyle_];
        v18 = [objc_opt_self() fontWithDescriptor:v49 size:0.0];
      }
    }

    else
    {
      v26 = *MEMORY[0x1E69DB980];
      v27 = v12;
      v18 = sub_1B9F6B774(v13, v26, 0, 0, 0, 0, 1);
    }

    v50 = sub_1B9F0ADF8(0, &unk_1EDC5E210);
    *(inited + 40) = v18;
    v51 = *MEMORY[0x1E69DB650];
    *(inited + 64) = v50;
    *(inited + 72) = v51;
    v52 = objc_opt_self();
    v53 = v51;
    v54 = [v52 secondaryLabelColor];
  }

  else
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BA4B5460;
    v19 = *MEMORY[0x1E69DB648];
    *(inited + 32) = *MEMORY[0x1E69DB648];
    v20 = *MEMORY[0x1E69DDD80];
    if (v10)
    {
      v21 = objc_opt_self();
      v22 = v19;
      v23 = [v21 preferredFontDescriptorWithTextStyle:v20 compatibleWithTraitCollection:0];
      if (v23)
      {
        v24 = v23;
        v25 = [objc_opt_self() fontWithDescriptor:v23 size:0.0];
      }

      else
      {
        sub_1BA4A3DD8();
        v55 = v20;
        v56 = sub_1BA4A3E88();
        v57 = sub_1BA4A6FB8();

        if (os_log_type_enabled(v56, v57))
        {
          v58 = swift_slowAlloc();
          v81 = swift_slowAlloc();
          v82 = swift_slowAlloc();
          v86 = v82;
          *v58 = 136315906;
          v59 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
          LODWORD(v80) = v57;
          v61 = sub_1B9F0B82C(v59, v60, &v86);
          v83 = v55;
          v62 = v61;

          *(v58 + 4) = v62;
          *(v58 + 12) = 2080;
          v84 = 0;
          v85 = 1;
          sub_1B9F48158(0, &qword_1EBBECB00, type metadata accessor for Weight, MEMORY[0x1E69E6720]);
          v63 = sub_1BA4A6808();
          v65 = sub_1B9F0B82C(v63, v64, &v86);

          *(v58 + 14) = v65;
          *(v58 + 22) = 2080;
          LODWORD(v84) = 0;
          type metadata accessor for SymbolicTraits(0);
          v66 = sub_1BA4A6808();
          v68 = sub_1B9F0B82C(v66, v67, &v86);

          *(v58 + 24) = v68;
          v55 = v83;
          *(v58 + 32) = 2112;
          v69 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
          *(v58 + 34) = v69;
          v70 = v81;
          *v81 = v69;
          _os_log_impl(&dword_1B9F07000, v56, v80, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v58, 0x2Au);
          sub_1B9F8C6C8(v70);
          MEMORY[0x1BFAF43A0](v70, -1, -1);
          v71 = v82;
          swift_arrayDestroy();
          MEMORY[0x1BFAF43A0](v71, -1, -1);
          MEMORY[0x1BFAF43A0](v58, -1, -1);
        }

        (*(v4 + 8))(v6, v3);
        v72 = [v21 preferredFontDescriptorWithTextStyle_];
        v25 = [objc_opt_self() fontWithDescriptor:v72 size:0.0];
      }

      v30 = &selRef_secondaryLabelColor;
    }

    else
    {
      v28 = *MEMORY[0x1E69DB980];
      v29 = v19;
      v25 = sub_1B9F6B774(v20, v28, 0, 0, 0, 0, 1);
      v30 = &selRef_labelColor;
    }

    v73 = sub_1B9F0ADF8(0, &unk_1EDC5E210);
    *(inited + 40) = v25;
    v74 = *MEMORY[0x1E69DB650];
    *(inited + 64) = v73;
    *(inited + 72) = v74;
    v75 = objc_opt_self();
    v76 = v74;
    v54 = [v75 *v30];
  }

  v77 = v54;
  *(inited + 104) = sub_1B9F0ADF8(0, &qword_1EDC6E380);
  *(inited + 80) = v77;
  v78 = sub_1B9FDB1C4(inited);
  swift_setDeallocating();
  sub_1B9FE9628();
  swift_arrayDestroy();
  return v78;
}

uint64_t DetailType.hashValue.getter()
{
  v1 = *v0;
  sub_1BA4A8488();
  MEMORY[0x1BFAF2ED0](v1);
  return sub_1BA4A84D8();
}

unint64_t sub_1BA3EA564()
{
  result = qword_1EBBF2258;
  if (!qword_1EBBF2258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF2258);
  }

  return result;
}

id sub_1BA3EA5C8()
{
  sub_1BA1925B0();
  v1 = sub_1BA191D10();
  [v1 addSubview_];

  v2 = OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___tileContentView;
  [*(v0 + OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___tileContentView) addSubview_];
  v3 = *(v0 + v2);
  v4 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI37SummarySharingAcceptedProfileTileCell_changesLabel);

  return [v3 addSubview_];
}

void sub_1BA3EA658()
{
  v1 = [v0 traitCollection];
  v2 = [v1 preferredContentSizeCategory];

  v3 = sub_1BA192798();
  sub_1BA191E60(v3);
  v4 = sub_1BA1946B4();
  sub_1BA19452C(v4);
  v5 = sub_1BA191DB4();
  [v5 setHidden_];

  [*(v0 + OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___spinner) stopAnimating];
  v6 = OBJC_IVAR____TtC18HealthExperienceUI37SummarySharingAcceptedProfileTileCell_tileContentLabel;
  v7 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI37SummarySharingAcceptedProfileTileCell_tileContentLabel);
  v8 = sub_1BA191D10();
  v9 = *MEMORY[0x1E69DC5C0];
  v10 = *(MEMORY[0x1E69DC5C0] + 8);
  v11 = *(MEMORY[0x1E69DC5C0] + 16);
  v12 = *(MEMORY[0x1E69DC5C0] + 24);
  [v7 hk:v8 alignHorizontalConstraintsWithView:*MEMORY[0x1E69DC5C0] insets:{v10, v11, v12}];

  v13 = OBJC_IVAR____TtC18HealthExperienceUI37SummarySharingAcceptedProfileTileCell_alertsLabel;
  v14 = OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___tileContentView;
  [*(v0 + OBJC_IVAR____TtC18HealthExperienceUI37SummarySharingAcceptedProfileTileCell_alertsLabel) hk:*(v0 + OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___tileContentView) alignHorizontalConstraintsWithView:v9 insets:{v10, v11, v12}];
  v29 = OBJC_IVAR____TtC18HealthExperienceUI37SummarySharingAcceptedProfileTileCell_changesLabel;
  [*(v0 + OBJC_IVAR____TtC18HealthExperienceUI37SummarySharingAcceptedProfileTileCell_changesLabel) hk:*(v0 + v14) alignHorizontalConstraintsWithView:v9 insets:{v10, v11, v12}];
  v28 = objc_opt_self();
  sub_1BA3EE16C(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1BA4B5890;
  v16 = [*(v0 + v6) topAnchor];
  v17 = [*(v0 + v14) topAnchor];
  v18 = [v16 constraintEqualToAnchor_];

  *(v15 + 32) = v18;
  v19 = [*(v0 + v13) topAnchor];
  v20 = [*(v0 + v6) bottomAnchor];
  v21 = [v19 constraintEqualToAnchor_];

  *(v15 + 40) = v21;
  v22 = [*&v29[v0] topAnchor];
  v23 = [*(v0 + v13) bottomAnchor];
  v24 = [v22 constraintEqualToAnchor_];

  *(v15 + 48) = v24;
  v25 = [*&v29[v0] bottomAnchor];
  v26 = [*(v0 + v14) bottomAnchor];
  v27 = [v25 constraintLessThanOrEqualToAnchor_];

  *(v15 + 56) = v27;
  sub_1B9F0ADF8(0, &qword_1EDC6B570);
  v30 = sub_1BA4A6AE8();

  [v28 activateConstraints_];
}

uint64_t sub_1BA3EAA24()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v44 = sub_1BA4A3EA8();
  v2 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA3EE16C(0, &qword_1EBBF22A8, MEMORY[0x1E69E6530], MEMORY[0x1E695C060]);
  v6 = v5;
  v41 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v40 - v10;
  sub_1BA3EE024();
  v13 = v12;
  v42 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F48158(0, &qword_1EBBE97C8, MEMORY[0x1E69A33B0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v40 - v17;
  sub_1BA193198();
  v19 = OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell_item;
  swift_beginAccess();
  sub_1B9F68124(v1 + v19, v46);
  if (v46[3])
  {
    sub_1B9F0D950(0, &qword_1EDC6E1B0);
    type metadata accessor for SummarySharingAcceptedProfileTileItem();
    if (swift_dynamicCast())
    {
      v20 = v45;
      v21 = OBJC_IVAR____TtC18HealthExperienceUI37SummarySharingAcceptedProfileTileItem_endSharingRelationshipState;
      swift_beginAccess();
      v44 = v13;
      v22 = MEMORY[0x1E69A33B0];
      sub_1BA3EDBB4(v20 + v21, v18, &qword_1EBBE97C8, MEMORY[0x1E69A33B0]);
      sub_1BA3EB21C(v18, *(v20 + OBJC_IVAR____TtC18HealthExperienceUI37SummarySharingAcceptedProfileTileItem_disabledState) & 1, 0, 0);
      sub_1BA3EDFB4(v18, &qword_1EBBE97C8, v22);
      v23 = sub_1BA3EC47C();
      swift_beginAccess();
      sub_1BA3EE16C(0, &qword_1EBBF0E68, MEMORY[0x1E69E6530], MEMORY[0x1E695C070]);
      sub_1BA4A4EF8();
      swift_endAccess();

      v24 = *(v20 + OBJC_IVAR____TtC18HealthExperienceUI37SummarySharingAcceptedProfileTileItem____lazy_storage___detailsProvider);
      swift_beginAccess();
      v25 = v24;
      sub_1BA4A4EF8();
      swift_endAccess();

      sub_1BA3EE0B8();
      sub_1BA4A4FC8();
      v26 = *(v41 + 8);
      v26(v8, v6);
      v26(v11, v6);
      v27 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v28 = swift_allocObject();
      *(v28 + 16) = v27;
      *(v28 + 24) = v20;
      v29 = swift_allocObject();
      *(v29 + 16) = sub_1BA3EE134;
      *(v29 + 24) = v28;
      sub_1BA3ED604(&qword_1EBBF22C0, sub_1BA3EE024);

      v30 = v44;
      v31 = sub_1BA4A5148();

      (*(v42 + 8))(v15, v30);
      *(v1 + OBJC_IVAR____TtC18HealthExperienceUI37SummarySharingAcceptedProfileTileCell_cancellable) = v31;
    }
  }

  else
  {
    sub_1B9F7B644(v46);
  }

  sub_1BA4A3E28();
  v33 = sub_1BA4A3E88();
  v34 = sub_1BA4A6FA8();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v46[0] = v36;
    *v35 = 136315138;
    v37 = sub_1BA4A85D8();
    v39 = sub_1B9F0B82C(v37, v38, v46);

    *(v35 + 4) = v39;
    _os_log_impl(&dword_1B9F07000, v33, v34, "[%s] item is not an SummarySharingAcceptedProfileTileItem", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v36);
    MEMORY[0x1BFAF43A0](v36, -1, -1);
    MEMORY[0x1BFAF43A0](v35, -1, -1);
  }

  return (*(v2 + 8))(v4, v44);
}

uint64_t sub_1BA3EB0B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B9F48158(0, &qword_1EBBE97C8, MEMORY[0x1E69A33B0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v14[-v8];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    v12 = OBJC_IVAR____TtC18HealthExperienceUI37SummarySharingAcceptedProfileTileItem_endSharingRelationshipState;
    swift_beginAccess();
    v13 = MEMORY[0x1E69A33B0];
    sub_1BA3EDBB4(a4 + v12, v9, &qword_1EBBE97C8, MEMORY[0x1E69A33B0]);
    sub_1BA3EB21C(v9, *(a4 + OBJC_IVAR____TtC18HealthExperienceUI37SummarySharingAcceptedProfileTileItem_disabledState) & 1, a1, a2);

    return sub_1BA3EDFB4(v9, &qword_1EBBE97C8, v13);
  }

  return result;
}

void sub_1BA3EB21C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_1BA4A3118();
  if ((*(*(v9 - 8) + 48))(a1, 1, v9) != 1)
  {
    v13 = qword_1EBBE8940;
    v12 = *(v4 + OBJC_IVAR____TtC18HealthExperienceUI37SummarySharingAcceptedProfileTileCell_tileContentLabel);
    if (v13 == -1)
    {
LABEL_6:
      v14 = sub_1BA4A6758();
      [v12 setText_];

      [*(v4 + OBJC_IVAR____TtC18HealthExperienceUI37SummarySharingAcceptedProfileTileCell_alertsLabel) setAttributedText_];
      v15 = *(v4 + OBJC_IVAR____TtC18HealthExperienceUI37SummarySharingAcceptedProfileTileCell_changesLabel);

      [v15 setAttributedText_];
      return;
    }

LABEL_12:
    swift_once();
    goto LABEL_6;
  }

  v10 = *(v4 + OBJC_IVAR____TtC18HealthExperienceUI37SummarySharingAcceptedProfileTileCell_tileContentLabel);
  if (!(a3 | a4))
  {
    v11 = qword_1EBBE8938;
    v12 = v10;
    if (v11 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

  [v10 setText_];
  v16 = *(v4 + OBJC_IVAR____TtC18HealthExperienceUI37SummarySharingAcceptedProfileTileCell_alertsLabel);
  v23 = 0;
  v17 = v16;
  v18 = sub_1BA3EDC78(a3, &v23, a2 & 1);
  [v17 setAttributedText_];

  v19 = *(v4 + OBJC_IVAR____TtC18HealthExperienceUI37SummarySharingAcceptedProfileTileCell_changesLabel);
  v22 = 1;
  v20 = v19;
  v21 = sub_1BA3EDC78(a4, &v22, a2 & 1);
  [v20 setAttributedText_];
}

id sub_1BA3EB474(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_1BA4A3EA8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];
  [v14 setNumberOfLines_];
  v15 = [objc_opt_self() secondaryLabelColor];
  [v14 setTextColor_];

  [v14 setAdjustsFontForContentSizeCategory_];
  v16 = *MEMORY[0x1E69DDD80];
  v17 = objc_opt_self();
  v18 = [v17 preferredFontDescriptorWithTextStyle:v16 compatibleWithTraitCollection:0];
  if (v18)
  {
    v19 = v18;
    v20 = [objc_opt_self() fontWithDescriptor:v18 size:0.0];
  }

  else
  {
    v54 = v11;
    sub_1BA4A3DD8();
    v21 = v16;
    v22 = sub_1BA4A3E88();
    v23 = sub_1BA4A6FB8();

    v53 = v23;
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v57 = v51;
      *v24 = 136315906;
      v25 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v27 = sub_1B9F0B82C(v25, v26, &v57);
      v52 = v21;
      v28 = v27;

      *(v24 + 4) = v28;
      *(v24 + 12) = 2080;
      v55 = 0;
      v56 = 1;
      sub_1B9F48158(0, &qword_1EBBECB00, type metadata accessor for Weight, MEMORY[0x1E69E6720]);
      v29 = sub_1BA4A6808();
      v31 = sub_1B9F0B82C(v29, v30, &v57);

      *(v24 + 14) = v31;
      *(v24 + 22) = 2080;
      LODWORD(v55) = 0;
      type metadata accessor for SymbolicTraits(0);
      v32 = sub_1BA4A6808();
      v34 = sub_1B9F0B82C(v32, v33, &v57);
      v21 = v52;

      *(v24 + 24) = v34;
      *(v24 + 32) = 2112;
      v35 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(v24 + 34) = v35;
      v36 = v50;
      *v50 = v35;
      _os_log_impl(&dword_1B9F07000, v22, v53, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v24, 0x2Au);
      sub_1B9F8C6C8(v36);
      MEMORY[0x1BFAF43A0](v36, -1, -1);
      v37 = v51;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v37, -1, -1);
      MEMORY[0x1BFAF43A0](v24, -1, -1);
    }

    (*(v54 + 8))(v13, v10);
    v38 = [v17 preferredFontDescriptorWithTextStyle_];
    v20 = [objc_opt_self() fontWithDescriptor:v38 size:0.0];
  }

  v39 = OBJC_IVAR____TtC18HealthExperienceUI37SummarySharingAcceptedProfileTileCell_tileContentLabel;
  [v14 setFont_];

  *&v5[v39] = v14;
  v40 = OBJC_IVAR____TtC18HealthExperienceUI37SummarySharingAcceptedProfileTileCell_alertsLabel;
  v41 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v41 setTranslatesAutoresizingMaskIntoConstraints_];
  [v41 setNumberOfLines_];
  [v41 setAdjustsFontForContentSizeCategory_];
  LODWORD(v42) = 1148846080;
  [v41 setContentHuggingPriority:1 forAxis:v42];
  LODWORD(v43) = 1148846080;
  [v41 setContentCompressionResistancePriority:1 forAxis:v43];
  *&v5[v40] = v41;
  v44 = OBJC_IVAR____TtC18HealthExperienceUI37SummarySharingAcceptedProfileTileCell_changesLabel;
  v45 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v45 setTranslatesAutoresizingMaskIntoConstraints_];
  [v45 setNumberOfLines_];
  [v45 setAdjustsFontForContentSizeCategory_];
  LODWORD(v46) = 1148846080;
  [v45 setContentHuggingPriority:1 forAxis:v46];
  LODWORD(v47) = 1148846080;
  [v45 setContentCompressionResistancePriority:1 forAxis:v47];
  *&v5[v44] = v45;
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI37SummarySharingAcceptedProfileTileCell_cancellable] = 0;
  v48 = type metadata accessor for SummarySharingAcceptedProfileTileCell();
  v58.receiver = v5;
  v58.super_class = v48;
  return objc_msgSendSuper2(&v58, sel_initWithFrame_, a1, a2, a3, a4);
}

id sub_1BA3EBA5C(void *a1)
{
  v2 = v1;
  v49 = a1;
  v3 = sub_1BA4A3EA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  [v7 setNumberOfLines_];
  v8 = [objc_opt_self() secondaryLabelColor];
  [v7 setTextColor_];

  [v7 setAdjustsFontForContentSizeCategory_];
  v9 = *MEMORY[0x1E69DDD80];
  v10 = objc_opt_self();
  v11 = [v10 preferredFontDescriptorWithTextStyle:v9 compatibleWithTraitCollection:0];
  if (v11)
  {
    v12 = v11;
    v13 = [objc_opt_self() fontWithDescriptor:v11 size:0.0];
  }

  else
  {
    sub_1BA4A3DD8();
    v14 = v9;
    v15 = sub_1BA4A3E88();
    v16 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v52 = v47;
      *v17 = 136315906;
      v18 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v48 = v14;
      v20 = sub_1B9F0B82C(v18, v19, &v52);
      HIDWORD(v45) = v16;
      v21 = v20;

      *(v17 + 4) = v21;
      *(v17 + 12) = 2080;
      v50 = 0;
      v51 = 1;
      sub_1B9F48158(0, &qword_1EBBECB00, type metadata accessor for Weight, MEMORY[0x1E69E6720]);
      v22 = sub_1BA4A6808();
      v24 = sub_1B9F0B82C(v22, v23, &v52);

      *(v17 + 14) = v24;
      *(v17 + 22) = 2080;
      LODWORD(v50) = 0;
      type metadata accessor for SymbolicTraits(0);
      v25 = sub_1BA4A6808();
      v27 = sub_1B9F0B82C(v25, v26, &v52);
      v14 = v48;

      *(v17 + 24) = v27;
      *(v17 + 32) = 2112;
      v28 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(v17 + 34) = v28;
      v29 = v46;
      *v46 = v28;
      _os_log_impl(&dword_1B9F07000, v15, BYTE4(v45), "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v17, 0x2Au);
      sub_1B9F8C6C8(v29);
      MEMORY[0x1BFAF43A0](v29, -1, -1);
      v30 = v47;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v30, -1, -1);
      MEMORY[0x1BFAF43A0](v17, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
    v31 = [v10 preferredFontDescriptorWithTextStyle_];
    v13 = [objc_opt_self() fontWithDescriptor:v31 size:0.0];
  }

  v32 = OBJC_IVAR____TtC18HealthExperienceUI37SummarySharingAcceptedProfileTileCell_tileContentLabel;
  [v7 setFont_];

  *&v2[v32] = v7;
  v33 = OBJC_IVAR____TtC18HealthExperienceUI37SummarySharingAcceptedProfileTileCell_alertsLabel;
  v34 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v34 setTranslatesAutoresizingMaskIntoConstraints_];
  [v34 setNumberOfLines_];
  [v34 setAdjustsFontForContentSizeCategory_];
  LODWORD(v35) = 1148846080;
  [v34 setContentHuggingPriority:1 forAxis:v35];
  LODWORD(v36) = 1148846080;
  [v34 setContentCompressionResistancePriority:1 forAxis:v36];
  *&v2[v33] = v34;
  v37 = OBJC_IVAR____TtC18HealthExperienceUI37SummarySharingAcceptedProfileTileCell_changesLabel;
  v38 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v38 setTranslatesAutoresizingMaskIntoConstraints_];
  [v38 setNumberOfLines_];
  [v38 setAdjustsFontForContentSizeCategory_];
  LODWORD(v39) = 1148846080;
  [v38 setContentHuggingPriority:1 forAxis:v39];
  LODWORD(v40) = 1148846080;
  [v38 setContentCompressionResistancePriority:1 forAxis:v40];
  *&v2[v37] = v38;
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI37SummarySharingAcceptedProfileTileCell_cancellable] = 0;
  v41 = type metadata accessor for SummarySharingAcceptedProfileTileCell();
  v53.receiver = v2;
  v53.super_class = v41;
  v42 = v49;
  v43 = objc_msgSendSuper2(&v53, sel_initWithCoder_, v49);

  if (v43)
  {
  }

  return v43;
}

uint64_t sub_1BA3EC038()
{
}

id sub_1BA3EC098()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SummarySharingAcceptedProfileTileCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1BA3EC184()
{
  v0 = objc_opt_self();
  v1 = [v0 systemGray5Color];
  v2 = [v0 tertiarySystemGroupedBackgroundColor];
  v3 = swift_allocObject();
  v3[2] = 0;
  v3[3] = v2;
  v3[4] = 0;
  v3[5] = v1;
  v4 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v8[4] = sub_1B9FD7F54;
  v8[5] = v3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1B9F7EBBC;
  v8[3] = &block_descriptor_111;
  v5 = _Block_copy(v8);
  v6 = [v4 initWithDynamicProvider_];
  _Block_release(v5);

  return v6;
}

char *sub_1BA3EC2B0()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI37SummarySharingAcceptedProfileTileItem____lazy_storage___gradientsProvider;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI37SummarySharingAcceptedProfileTileItem____lazy_storage___gradientsProvider);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI37SummarySharingAcceptedProfileTileItem____lazy_storage___gradientsProvider);
  }

  else
  {
    type metadata accessor for ProfileGradientsProviderFactory();
    swift_initStaticObject();
    v4 = [objc_allocWithZone(MEMORY[0x1E696C1C0]) init];
    v5 = v4;
    if (v0[14])
    {
      [v4 setProfileIdentifier_];
    }

    [v5 resume];
    v6 = v0[7];
    v7 = __swift_project_boxed_opaque_existential_1(v0 + 4, v6);
    v8 = *(v6 - 8);
    v9 = MEMORY[0x1EEE9AC00](v7);
    v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v11, v9);
    v12 = v0;
    v13 = sub_1BA4A1B68();
    (*(v8 + 8))(v11, v6);
    v14 = sub_1B9FE10EC(v5, v13);

    v15 = *(v0 + v1);
    *(v12 + v1) = v14;
    v3 = v14;

    v2 = 0;
  }

  v16 = v2;
  return v3;
}

char *sub_1BA3EC47C()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI37SummarySharingAcceptedProfileTileItem____lazy_storage___detailsProvider;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI37SummarySharingAcceptedProfileTileItem____lazy_storage___detailsProvider);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI37SummarySharingAcceptedProfileTileItem____lazy_storage___detailsProvider);
  }

  else
  {
    v4 = v0;
    v5 = *(v0 + 56);
    v6 = __swift_project_boxed_opaque_existential_1((v0 + 32), v5);
    v7 = *(v5 - 8);
    v8 = MEMORY[0x1EEE9AC00](v6);
    v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = sub_1BA4A1B68();
    (*(v7 + 8))(v10, v5);
    v12 = [objc_allocWithZone(MEMORY[0x1E696C1C0]) init];
    v13 = v12;
    if (*(v4 + 112))
    {
      [v12 setProfileIdentifier_];
    }

    [v13 resume];
    v14 = sub_1BA4A6F38();

    v15 = objc_allocWithZone(type metadata accessor for SummarySharingProfileTileEscalatedDetailsProvider());
    v16 = sub_1BA343120(v11, v14, 0, 0);

    v17 = *(v4 + v1);
    *(v4 + v1) = v16;
    v3 = v16;

    v2 = 0;
  }

  v18 = v2;
  return v3;
}

char *sub_1BA3EC638(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, unsigned __int8 *a5)
{
  v6 = v5;
  v87 = a4;
  v89 = a3;
  v90 = a2;
  v9 = *v6;
  v91 = sub_1BA4A33C8();
  v88 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v75 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_1BA4A3EA8();
  v76 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v85 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA2474C0();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = MEMORY[0x1E69A33B0];
  v15 = MEMORY[0x1E69E6720];
  sub_1B9F48158(0, &qword_1EBBE97C8, MEMORY[0x1E69A33B0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v78 = MEMORY[0x1E6969530];
  v79 = &v74 - v17;
  sub_1B9F48158(0, &qword_1EDC6E440, MEMORY[0x1E6969530], v15);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v74 - v19;
  v21 = sub_1BA4A1798();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v74 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = *a5;
  *(v6 + 14) = 0;
  v25 = OBJC_IVAR____TtC18HealthExperienceUI37SummarySharingAcceptedProfileTileItem_lastUpdatedDate;
  v26 = sub_1BA4A1728();
  (*(*(v26 - 8) + 56))(&v6[v25], 1, 1, v26);
  v6[OBJC_IVAR____TtC18HealthExperienceUI37SummarySharingAcceptedProfileTileItem_disabledState] = 2;
  *&v6[OBJC_IVAR____TtC18HealthExperienceUI37SummarySharingAcceptedProfileTileItem____lazy_storage___gradientsProvider] = 0;
  *&v6[OBJC_IVAR____TtC18HealthExperienceUI37SummarySharingAcceptedProfileTileItem____lazy_storage___detailsProvider] = 0;
  v27 = OBJC_IVAR____TtC18HealthExperienceUI37SummarySharingAcceptedProfileTileItem_endSharingRelationshipState;
  v28 = sub_1BA4A3118();
  (*(*(v28 - 8) + 56))(&v6[v27], 1, 1, v28);
  v74 = v9;
  *&v93 = sub_1BA4A85D8();
  *(&v93 + 1) = v29;
  MEMORY[0x1BFAF1350](95, 0xE100000000000000);
  sub_1BA4A3358();
  v30 = sub_1BA4A1748();
  v32 = v31;
  v82 = v24;
  v83 = v22;
  v33 = *(v22 + 8);
  v84 = v21;
  v33(v24, v21);
  MEMORY[0x1BFAF1350](v30, v32);

  v34 = *(&v93 + 1);
  *(v6 + 2) = v93;
  *(v6 + 3) = v34;
  sub_1B9F0A534(v90, (v6 + 32));
  sub_1B9F0A534(v89, (v6 + 72));
  v35 = *(v88 + 16);
  v35(&v6[OBJC_IVAR____TtC18HealthExperienceUI37SummarySharingAcceptedProfileTileItem_sharingEntryProfileInformation], a1, v91);
  sub_1BA4A32A8();
  v36 = OBJC_IVAR____TtC18HealthExperienceUI37SummarySharingAcceptedProfileTileItem_lastUpdatedDate;
  swift_beginAccess();
  sub_1BA3EE1BC(v20, &v6[v36], &qword_1EDC6E440, v78);
  swift_endAccess();
  v37 = v79;
  sub_1BA4A3278();
  v38 = OBJC_IVAR____TtC18HealthExperienceUI37SummarySharingAcceptedProfileTileItem_endSharingRelationshipState;
  swift_beginAccess();
  sub_1BA3EE1BC(v37, &v6[v38], &qword_1EBBE97C8, v80);
  swift_endAccess();
  sub_1BA4A32E8();
  sub_1BA246E78(0, &qword_1EBBEADE8, &qword_1EDC5E3D8, 0x1E696C338, MEMORY[0x1E696B370]);
  v40 = v39;
  v41 = *(v39 - 8);
  v42 = (*(v41 + 48))(v14, 1, v39);
  v81 = v35;
  if (v42 == 1)
  {
    sub_1BA3EE23C(v14);
    sub_1BA4A3DD8();
    v43 = v75;
    v44 = v91;
    v35(v75, a1, v91);
    v45 = sub_1BA4A3E88();
    v46 = sub_1BA4A6FB8();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v92 = v48;
      *v47 = 136315394;
      *&v93 = v74;
      swift_getMetatypeMetadata();
      v49 = sub_1BA4A6808();
      v51 = sub_1B9F0B82C(v49, v50, &v92);

      *(v47 + 4) = v51;
      *(v47 + 12) = 2080;
      sub_1BA3ED604(&qword_1EBBE9818, MEMORY[0x1E69A3430]);
      v52 = sub_1BA4A82D8();
      v54 = v53;
      v55 = v43;
      v56 = v88;
      (*(v88 + 8))(v55, v91);
      v57 = sub_1B9F0B82C(v52, v54, &v92);

      *(v47 + 14) = v57;
      _os_log_impl(&dword_1B9F07000, v45, v46, "[%s]: Attempting to display an accepted sharing entry without a profile identifier: %s", v47, 0x16u);
      swift_arrayDestroy();
      v58 = v48;
      v44 = v91;
      MEMORY[0x1BFAF43A0](v58, -1, -1);
      v59 = v47;
      v60 = v56;
      MEMORY[0x1BFAF43A0](v59, -1, -1);
    }

    else
    {

      v60 = v88;
      (*(v88 + 8))(v43, v44);
    }

    (*(v76 + 8))(v85, v77);
    v61 = 0;
  }

  else
  {
    v61 = sub_1BA4A65C8();
    (*(v41 + 8))(v14, v40);
    v44 = v91;
    v60 = v88;
  }

  v62 = *(v6 + 14);
  *(v6 + 14) = v61;
  v63 = v61;

  v64 = v82;
  sub_1BA4A3358();
  v65 = (*(v83 + 32))(&v6[OBJC_IVAR____TtC18HealthExperienceUI37SummarySharingAcceptedProfileTileItem_uuid], v64, v84);
  v66 = MEMORY[0x1BFAEDD10](v65);
  v67 = &v6[OBJC_IVAR____TtC18HealthExperienceUI37SummarySharingAcceptedProfileTileItem_accountIdentifier];
  v68 = MEMORY[0x1E69A3410];
  *v67 = v66;
  v67[1] = v69;
  v94 = v44;
  v95 = v68;
  v96 = MEMORY[0x1E69A3418];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v93);
  v81(boxed_opaque_existential_1, a1, v44);
  sub_1B9F0ADF8(0, &qword_1EDC5E540);
  sub_1BA4A6FF8();
  v71 = v87;
  v72 = sub_1BA4A7018();

  __swift_destroy_boxed_opaque_existential_1(&v93);
  sub_1BA4A3348();
  sub_1BA4A79E8();
  v94 = sub_1BA4A2FF8();
  v95 = MEMORY[0x1E69A3390];
  __swift_allocate_boxed_opaque_existential_1(&v93);
  sub_1BA4A2FE8();

  __swift_destroy_boxed_opaque_existential_1(v89);
  __swift_destroy_boxed_opaque_existential_1(v90);
  (*(v60 + 8))(a1, v44);
  sub_1B9F1134C(&v93, (v6 + 120));
  v6[OBJC_IVAR____TtC18HealthExperienceUI37SummarySharingAcceptedProfileTileItem_disabledState] = v86;
  return v6;
}

uint64_t sub_1BA3ECFF0()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  __swift_destroy_boxed_opaque_existential_1(v0 + 72);

  __swift_destroy_boxed_opaque_existential_1(v0 + 120);
  sub_1BA3EDFB4(v0 + OBJC_IVAR____TtC18HealthExperienceUI37SummarySharingAcceptedProfileTileItem_lastUpdatedDate, &qword_1EDC6E440, MEMORY[0x1E6969530]);

  v1 = OBJC_IVAR____TtC18HealthExperienceUI37SummarySharingAcceptedProfileTileItem_sharingEntryProfileInformation;
  v2 = sub_1BA4A33C8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC18HealthExperienceUI37SummarySharingAcceptedProfileTileItem_uuid;
  v4 = sub_1BA4A1798();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  sub_1BA3EDFB4(v0 + OBJC_IVAR____TtC18HealthExperienceUI37SummarySharingAcceptedProfileTileItem_endSharingRelationshipState, &qword_1EBBE97C8, MEMORY[0x1E69A33B0]);
  return v0;
}

uint64_t sub_1BA3ED144()
{
  sub_1BA3ECFF0();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SummarySharingAcceptedProfileTileItem()
{
  result = qword_1EBBF2290;
  if (!qword_1EBBF2290)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BA3ED1F0()
{
  sub_1B9F48158(319, &qword_1EDC6E440, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1BA4A33C8();
    if (v1 <= 0x3F)
    {
      sub_1BA4A1798();
      if (v2 <= 0x3F)
      {
        sub_1B9F48158(319, &qword_1EBBE97C8, MEMORY[0x1E69A33B0], MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t sub_1BA3ED440@<X0>(uint64_t *a1@<X2>, unint64_t *a2@<X3>, uint64_t (*a3)(uint64_t)@<X4>, uint64_t a4@<X8>)
{
  v8 = *v4;
  v9 = *a1;
  swift_beginAccess();
  return sub_1BA3EDBB4(v8 + v9, a4, a2, a3);
}

uint64_t sub_1BA3ED4B0()
{
  type metadata accessor for SummarySharingAcceptedProfileTileCell();
  sub_1BA3EDC34();
  return sub_1BA4A6808();
}

uint64_t sub_1BA3ED500(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE0DA58](a1, WitnessTable);
}

uint64_t sub_1BA3ED5AC(uint64_t a1)
{
  result = sub_1BA3ED604(&qword_1EBBED548, type metadata accessor for SummarySharingAcceptedProfileTileItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1BA3ED604(unint64_t *a1, void (*a2)(uint64_t))
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