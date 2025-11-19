void sub_21EA77294()
{
  v1 = v0;
  v2 = sub_21EAA8790();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR___CCUIPagingViewController_isFinishedRunningFirstUnlockTasks))
  {
    if (qword_28125B8C0 == -1)
    {
      goto LABEL_3;
    }

    while (1)
    {
      v80 = v4;
      swift_once();
      v4 = v80;
LABEL_3:
      v91 = __swift_project_value_buffer(v4, qword_28125B8C8);
      v7 = sub_21EAA8760();
      v8 = sub_21EAA9000();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_21E9F5000, v7, v8, "Check for app protected control icon elements.", v9, 2u);
        MEMORY[0x223D68580](v9, -1, -1);
      }

      v10 = OBJC_IVAR___CCUIPagingViewController_iconModel;
      swift_beginAccess();
      v11 = [*(v1 + v10) leafIcons];
      v12 = sub_21E9F8880(0, &qword_28125B848);
      sub_21E9FBE14(&qword_28125B840, &qword_28125B848);
      v13 = sub_21EAA8F60();

      v105 = MEMORY[0x277D84F90];
      if ((v13 & 0xC000000000000001) != 0)
      {
        sub_21EAA9370();
        v4 = sub_21EAA8F90();
        v13 = v106[0];
        v15 = v106[1];
        v16 = v106[2];
        v17 = v106[3];
        v18 = v106[4];
      }

      else
      {
        v17 = 0;
        v24 = -1 << *(v13 + 32);
        v15 = v13 + 56;
        v16 = ~v24;
        v25 = -v24;
        if (v25 < 64)
        {
          v26 = ~(-1 << v25);
        }

        else
        {
          v26 = -1;
        }

        v18 = v26 & *(v13 + 56);
      }

      v89 = v16;
      v27 = (v16 + 64) >> 6;
      v92 = 0x800000021EABE100;
      v88 = 0x800000021EABE140;
      v86 = 0x800000021EABE120;
      v95 = MEMORY[0x277D84F90];
      *&v14 = 136315394;
      v87 = v14;
      v96 = v27;
LABEL_15:
      v28 = v17;
      while (v13 < 0)
      {
        v33 = sub_21EAA93A0();
        if (!v33)
        {
          goto LABEL_55;
        }

        v100 = v33;
        swift_dynamicCast();
        v32 = v102;
        v17 = v28;
        v31 = v18;
        v27 = v96;
        if (!v102)
        {
          goto LABEL_55;
        }

LABEL_24:
        v98 = v31;
        v99 = v32;
        v34 = [v32 iconDataSources];
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEDD6F8);
        v35 = sub_21EAA8EC0();

        if (v35 >> 62)
        {
          v36 = sub_21EAA9380();
          v37 = v99;
          if (v36)
          {
LABEL_29:
            v82 = v15;
            v83 = v13;
            v84 = v12;
            v85 = v1;
            if (v36 < 1)
            {
LABEL_68:
              __break(1u);
              return;
            }

            v38 = 0;
            v97 = v35 & 0xC000000000000001;
            v39 = &selRef_centralManager_didUpdateFindMyPeripherals_;
            v90 = v36;
            while (2)
            {
              if (v97)
              {
                v40 = MEMORY[0x223D67210](v38, v35);
              }

              else
              {
                v40 = *(v35 + 8 * v38 + 32);
                swift_unknownObjectRetain();
              }

              v104 = v39[448];
              v41 = swift_dynamicCastObjCProtocolConditional();
              if (v41 && (v42 = [v41 containerBundleIdentifier]) != 0)
              {
                v43 = v42;
                v93 = sub_21EAA8E00();
                v45 = v44;
                v46 = [objc_opt_self() applicationWithBundleIdentifier_];

                if ([v46 isHidden])
                {

                  goto LABEL_41;
                }

                v47 = [v46 isLocked];

                if (v47)
                {
LABEL_41:
                  v48 = v99;
                  MEMORY[0x223D66C60]();
                  if (*((v105 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v105 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    sub_21EAA8EE0();
                  }

                  sub_21EAA8EF0();
                  v95 = v105;
                  v102 = 0xD000000000000012;
                  v103 = v92;
                  objc_opt_self();
                  v49 = swift_dynamicCastObjCClass();
                  v94 = v40;
                  if (v49)
                  {
                    v50 = v49;
                    v100 = 0;
                    v101 = 0xE000000000000000;
                    swift_unknownObjectRetain();
                    sub_21EAA9440();

                    v100 = 0xD000000000000013;
                    v101 = v88;
                    v51 = [v50 extensionBundleIdentifier];
                    v52 = sub_21EAA8E00();
                    v54 = v53;

                    MEMORY[0x223D66C10](v52, v54);

                    MEMORY[0x223D66C10](14906, 0xE200000000000000);
                    v55 = [v50 kind];
                    v56 = sub_21EAA8E00();
                    v58 = v57;

                    MEMORY[0x223D66C10](v56, v58);
                    swift_unknownObjectRelease();

                    v59 = v100;
                    v60 = v101;
                    goto LABEL_47;
                  }

                  objc_opt_self();
                  v61 = swift_dynamicCastObjCClass();
                  if (v61)
                  {
                    v62 = v61;
                    v100 = 0;
                    v101 = 0xE000000000000000;
                    swift_unknownObjectRetain();
                    sub_21EAA9440();

                    v100 = 0xD000000000000012;
                    v101 = v86;
                    v63 = [v62 moduleIdentifier];
                    v64 = sub_21EAA8E00();
                    v66 = v65;

                    MEMORY[0x223D66C10](v64, v66);
                    swift_unknownObjectRelease();

                    v59 = v100;
                    v60 = v101;
LABEL_47:
                    swift_beginAccess();
                    v102 = v59;
                    v103 = v60;
                  }

                  else
                  {
                    v60 = v92;
                    v59 = 0xD000000000000012;
                  }

                  v67 = v45;

                  v68 = sub_21EAA8760();
                  v69 = sub_21EAA9000();

                  if (os_log_type_enabled(v68, v69))
                  {
                    v70 = swift_slowAlloc();
                    v71 = swift_slowAlloc();
                    v100 = v71;
                    *v70 = v87;

                    v72 = sub_21E9FE748(v59, v60, &v100);

                    *(v70 + 4) = v72;
                    *(v70 + 12) = 2080;
                    v73 = sub_21E9FE748(v93, v67, &v100);

                    *(v70 + 14) = v73;
                    _os_log_impl(&dword_21E9F5000, v68, v69, "Remove %s because container %s is protected.", v70, 0x16u);
                    swift_arrayDestroy();
                    MEMORY[0x223D68580](v71, -1, -1);
                    v74 = v70;
                    v39 = &selRef_centralManager_didUpdateFindMyPeripherals_;
                    MEMORY[0x223D68580](v74, -1, -1);
                  }

                  else
                  {
                  }

                  swift_unknownObjectRelease();

                  v27 = v96;
                  v36 = v90;
                }

                else
                {
                  swift_unknownObjectRelease();

                  v27 = v96;
                  v36 = v90;
                }
              }

              else
              {
                swift_unknownObjectRelease();
              }

              if (v36 == ++v38)
              {

                v1 = v85;
                v12 = v84;
                v13 = v83;
                v15 = v82;
                v18 = v98;
                goto LABEL_15;
              }

              continue;
            }
          }
        }

        else
        {
          v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v37 = v99;
          if (v36)
          {
            goto LABEL_29;
          }
        }

        v28 = v17;
        v18 = v98;
      }

      v29 = v28;
      v30 = v18;
      v17 = v28;
      if (v18)
      {
        break;
      }

      while (1)
      {
        v17 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          break;
        }

        if (v17 >= v27)
        {
          goto LABEL_55;
        }

        v30 = *(v15 + 8 * v17);
        ++v29;
        if (v30)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
    }

LABEL_20:
    v31 = (v30 - 1) & v30;
    v32 = *(*(v13 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v30)))));
    if (v32)
    {
      goto LABEL_24;
    }

LABEL_55:
    sub_21E9FBFD4();
    v75 = v95;
    if (v95 >> 62)
    {
      v76 = sub_21EAA9380();
      if (v76)
      {
        goto LABEL_57;
      }
    }

    else
    {
      v76 = *((v95 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v76)
      {
LABEL_57:
        if (v76 >= 1)
        {
          for (i = 0; i != v76; ++i)
          {
            if ((v75 & 0xC000000000000001) != 0)
            {
              v78 = MEMORY[0x223D67210](i, v75);
            }

            else
            {
              v78 = *(v75 + 8 * i + 32);
            }

            v79 = v78;
            sub_21EA73EF0(v78);
          }

          goto LABEL_66;
        }

        __break(1u);
        goto LABEL_68;
      }
    }

LABEL_66:

    return;
  }

  v19 = v4;
  sub_21EAA8750();
  v20 = sub_21EAA8760();
  v21 = sub_21EAA9000();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v106[0] = v23;
    *v22 = 136315138;
    *(v22 + 4) = sub_21E9FE748(0xD000000000000026, 0x800000021EABE0D0, v106);
    _os_log_impl(&dword_21E9F5000, v20, v21, "Awaiting first unlock, skipping %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x223D68580](v23, -1, -1);
    MEMORY[0x223D68580](v22, -1, -1);
  }

  (*(v3 + 8))(v6, v19);
}

void sub_21EA77DD4()
{
  v1 = v0;
  v2 = sub_21EAA8790();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR___CCUIPagingViewController_isFinishedRunningFirstUnlockTasks))
  {
    if (qword_28125B8C0 != -1)
    {
      v15 = v4;
      swift_once();
      v4 = v15;
    }

    __swift_project_value_buffer(v4, qword_28125B8C8);
    v7 = sub_21EAA8760();
    v8 = sub_21EAA9000();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_21E9F5000, v7, v8, "Check for invalid control icon elements.", v9, 2u);
      MEMORY[0x223D68580](v9, -1, -1);
    }

    sub_21E9FB444();
    sub_21EA76708();

    sub_21EA77294();
  }

  else
  {
    v10 = v4;
    sub_21EAA8750();
    v11 = sub_21EAA8760();
    v12 = sub_21EAA9000();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v17 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_21E9FE748(0xD000000000000024, 0x800000021EABE0A0, &v17);
      _os_log_impl(&dword_21E9F5000, v11, v12, "Awaiting first unlock, skipping %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x223D68580](v14, -1, -1);
      MEMORY[0x223D68580](v13, -1, -1);
    }

    (*(v3 + 8))(v6, v10);
  }
}

void sub_21EA78070()
{
  v1 = v0;
  v2 = sub_21EAA8790();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21EAA8750();
  v6 = sub_21EAA8760();
  v7 = sub_21EAA9000();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_21E9F5000, v6, v7, "Prewarm the view controller cache...", v8, 2u);
    MEMORY[0x223D68580](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  [v1 loadViewIfNeeded];
  v9 = *&v1[OBJC_IVAR___CCUIPagingViewController___rootFolderController];
  if (v9)
  {
    v10 = [v9 folderView];
    aBlock[4] = sub_21EA78274;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21EA89FE0;
    aBlock[3] = &block_descriptor_262;
    v11 = _Block_copy(aBlock);
    [v10 enumerateIconListViewsUsingBlock_];
    _Block_release(v11);
  }

  else
  {
    __break(1u);
  }
}

id sub_21EA78274(void *a1)
{
  [a1 showAllIcons];

  return [a1 hideAllIcons];
}

void sub_21EA782BC(void *a1, uint64_t a2)
{
  v3 = [a1 icon];
  if (!v3)
  {
    return;
  }

  v12 = v3;
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (!v4 || ![v4 activeDataSource])
  {
    goto LABEL_15;
  }

  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = v5;
    v7 = [*(a2 + OBJC_IVAR___CCUIPagingViewController_controlDescriptorProvider) descriptorFor_];
    v8 = v7;
    if (v7 && (v9 = [v7 displayName]) != 0 || (v9 = objc_msgSend(v6, sel_sbh_appName)) != 0)
    {
      v10 = v9;
      sub_21EAA8E00();

      v11 = sub_21EAA8DC0();
    }

    else
    {
      v11 = 0;
    }

    [v6 setDisplayName_];
    swift_unknownObjectRelease();

LABEL_15:

    return;
  }

  swift_unknownObjectRelease();
}

void sub_21EA78484()
{
  v1 = OBJC_IVAR___CCUIPagingViewController_iconModel;
  swift_beginAccess();
  v2 = [*&v0[v1] rootFolder];
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = v2;
  if ([*&v0[v1] isIconStateDirty])
  {

LABEL_4:
    if (qword_28125B8C0 != -1)
    {
      swift_once();
    }

    v4 = sub_21EAA8790();
    __swift_project_value_buffer(v4, qword_28125B8C8);
    v5 = sub_21EAA8760();
    v6 = sub_21EAA8FE0();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_21E9F5000, v5, v6, "Unexpectedly found dirty folder icon state while updating supported sizes for Dynamic Type setting.", v7, 2u);
      MEMORY[0x223D68580](v7, -1, -1);
    }

    goto LABEL_12;
  }

  [v3 setDelegate_];
  [v3 removeFolderObserver_];
  [*&v0[v1] layout];
  v8 = [*&v0[v1] rootFolder];
  v5 = v8;
  if (v8)
  {
    v9 = v8;
    [v9 addFolderObserver:v0];
    [v9 setDelegate:v0];
  }

  [v0 loadViewIfNeeded];
  v10 = *&v0[OBJC_IVAR___CCUIPagingViewController___rootFolderController];
  if (v10)
  {
    [v10 setFolder_];

LABEL_12:
    return;
  }

  __break(1u);
}

void sub_21EA7867C()
{
  if ((*(v0 + OBJC_IVAR___CCUIPagingViewController_isSuppressingUpdatesToSupportedSizesForAccessibility) & 1) == 0)
  {
    v1 = OBJC_IVAR___CCUIPagingViewController_needsUpdateToSupportedSizesForAccessibility;
    if (*(v0 + OBJC_IVAR___CCUIPagingViewController_needsUpdateToSupportedSizesForAccessibility) == 1)
    {
      v2 = v0;
      if (qword_28125B8C0 != -1)
      {
        swift_once();
      }

      v3 = sub_21EAA8790();
      __swift_project_value_buffer(v3, qword_28125B8C8);
      v4 = sub_21EAA8760();
      v5 = sub_21EAA8FE0();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&dword_21E9F5000, v4, v5, "Updating supported sizes for accessibility after delay.", v6, 2u);
        MEMORY[0x223D68580](v6, -1, -1);
      }

      *(v2 + v1) = 0;

      sub_21EA787B4(1, 0);
    }
  }
}

void sub_21EA787B4(char a1, uint64_t a2)
{
  v134 = sub_21EAA85F0();
  v5 = *(v134 - 8);
  MEMORY[0x28223BE20](v134);
  if (v2[OBJC_IVAR___CCUIPagingViewController_isUpdatingSupportedSizesForAccessibility])
  {
    if (qword_28125B8C0 == -1)
    {
LABEL_3:
      v7 = sub_21EAA8790();
      __swift_project_value_buffer(v7, qword_28125B8C8);
      v149 = sub_21EAA8760();
      v8 = sub_21EAA8FF0();
      if (os_log_type_enabled(v149, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_21E9F5000, v149, v8, "Unexpectedly tried to update supported sizes for Dynamic Type setting recursively.", v9, 2u);
        MEMORY[0x223D68580](v9, -1, -1);
      }

      v10 = v149;

      return;
    }

LABEL_97:
    swift_once();
    goto LABEL_3;
  }

  v135 = v125 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = OBJC_IVAR___CCUIPagingViewController_isUpdatingSupportedSizesForAccessibility;
  v11 = OBJC_IVAR___CCUIPagingViewController_iconModel;
  swift_beginAccess();
  v126 = v11;
  if ([*&v2[v11] isIconStateDirty])
  {
    if (qword_28125B8C0 != -1)
    {
      swift_once();
    }

    v12 = sub_21EAA8790();
    __swift_project_value_buffer(v12, qword_28125B8C8);
    v13 = sub_21EAA8760();
    v14 = sub_21EAA8FE0();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_21E9F5000, v13, v14, "Unexpectedly found dirty icon state while updating supported sizes for Dynamic Type setting.", v15, 2u);
      MEMORY[0x223D68580](v15, -1, -1);
    }

    return;
  }

  v2[v127] = 1;
  if (a1)
  {
    sub_21EA78484();
  }

  [v2 loadViewIfNeeded];
  v143 = v2;
  v139 = OBJC_IVAR___CCUIPagingViewController___rootFolderController;
  v16 = *&v2[OBJC_IVAR___CCUIPagingViewController___rootFolderController];
  if (!v16)
  {
    goto LABEL_103;
  }

  v136 = [v16 folder];
  if (!v136)
  {
    if (qword_28125B8C0 != -1)
    {
      swift_once();
    }

    v22 = sub_21EAA8790();
    __swift_project_value_buffer(v22, qword_28125B8C8);
    v23 = sub_21EAA8760();
    v24 = sub_21EAA8FE0();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_21E9F5000, v23, v24, "Unexpectedly missing root folder.", v25, 2u);
      MEMORY[0x223D68580](v25, -1, -1);
    }

    v143[v127] = 0;
    return;
  }

  v17 = v143;
  v18 = [v143 traitCollection];
  v19 = [v18 preferredContentSizeCategory];

  v20 = sub_21EAA9160();
  if (a2)
  {
    v21 = a2;
  }

  else
  {
    v26 = [*&v17[v126] leafIcons];
    sub_21E9F8880(0, &qword_28125B848);
    sub_21E9FBE14(&qword_28125B840, &qword_28125B848);
    v21 = sub_21EAA8F60();
  }

  v152 = MEMORY[0x277D84F90];
  v27 = swift_allocObject();
  v27[2] = v21;
  v27[3] = &v152;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_21EA87804;
  *(v28 + 24) = v27;
  v125[1] = v27;
  aBlock[4] = sub_21EA8780C;
  aBlock[5] = v28;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21EA9E8D0;
  aBlock[3] = &block_descriptor_259;
  v29 = _Block_copy(aBlock);

  [v136 enumerateAllIconsWithOptions:1 usingBlock:v29];
  _Block_release(v29);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v32 = v143;
    [v143 loadViewIfNeeded];
    v33 = *&v32[v139];
    if (!v33)
    {
      goto LABEL_104;
    }

    v29 = v20;
    v34 = v33;

    v144 = [v34 orientation];

    v35 = *&v32[v126];
    v36 = sub_21EAA8DC0();
    v125[0] = [v35 disableIconStateAutosaveForReason_];

    v31 = v152;
    if (!(v152 >> 62))
    {
      v37 = *((v152 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v37)
      {
LABEL_93:
        v123 = v143;
        [*&v143[v126] markIconStateClean];
        [v125[0] invalidate];
        swift_unknownObjectRelease();

        v123[v127] = 0;

        return;
      }

      goto LABEL_30;
    }
  }

  v124 = v31;
  v37 = sub_21EAA9380();
  v31 = v124;
  if (!v37)
  {
    goto LABEL_93;
  }

LABEL_30:
  v138 = v31 & 0xC000000000000001;
  v129 = v31 & 0xFFFFFFFFFFFFFF8;
  v128 = v31 + 32;
  v131 = (v5 + 8);
  v132 = v31;

  v38 = 0;
  v39 = &selRef_centralManager_didUpdateFindMyPeripherals_;
  v40 = &selRef_addIcon_;
  v41 = &selRef_filterWithType_;
  *&v42 = 136315650;
  v130 = v42;
  v145 = v29;
  v137 = v37;
  while (1)
  {
    if (v138)
    {
      v43 = MEMORY[0x223D67210](v38, v132);
    }

    else
    {
      if (v38 >= *(v129 + 16))
      {
        goto LABEL_96;
      }

      v43 = *(v128 + 8 * v38);
    }

    v149 = v43;
    v44 = __OFADD__(v38, 1);
    v45 = v38 + 1;
    if (v44)
    {
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
      goto LABEL_97;
    }

    v46 = [v149 iconDataSources];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEDD6F8);
    v47 = sub_21EAA8EC0();

    v142 = v45;
    if (!(v47 >> 62))
    {
      v48 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v48)
      {
        break;
      }

      goto LABEL_31;
    }

    v48 = sub_21EAA9380();
    if (v48)
    {
      break;
    }

LABEL_31:

    v38 = v142;
    if (v142 == v137)
    {

      goto LABEL_93;
    }
  }

  if (v48 < 1)
  {
    goto LABEL_95;
  }

  v49 = 0;
  v50 = v47 & 0xC000000000000001;
  v146 = v48;
  v147 = v47 & 0xC000000000000001;
  v148 = v47;
  while (1)
  {
    if (v50)
    {
      MEMORY[0x223D67210](v49, v47);
    }

    else
    {
      swift_unknownObjectRetain();
    }

    v150 = v39[448];
    v51 = swift_dynamicCastObjCProtocolConditional();
    if (!v51 || (v52 = v51, [v51 updateSupportedGridSizeClassesForAccessibilityContentSizeCategory_], (objc_msgSend(v52, sel_respondsToSelector_, v40[66]) & 1) == 0))
    {
      swift_unknownObjectRelease();
      goto LABEL_42;
    }

    v53 = v39;
    v54 = v29;
    v55 = v149;
    v56 = [v52 v40[66]];
    v57 = v55;
    v58 = [v57 v41[37]];
    v59 = v41;
    v60 = [v56 containsGridSizeClass_];

    if (v60)
    {

      swift_unknownObjectRelease();
      v40 = &selRef_addIcon_;
      v41 = v59;
      v50 = v147;
      v48 = v146;
      v29 = v54;
      v39 = v53;
      v47 = v148;
      goto LABEL_42;
    }

    v61 = [v57 v59 + 2680];
    CCUIGridSizeClassForSBHIconGridSizeClass();

    CCUIAdjustGridSizeClassForAccessibility();
    v62 = SBHIconGridSizeClassForCCUIGridSizeClass();
    v63 = (v59 + 335);
    v64 = v62;
    v65 = [v57 v63];

    v66 = sub_21EAA8E00();
    v68 = v67;
    if (v66 == sub_21EAA8E00() && v68 == v69)
    {
      swift_unknownObjectRelease();

      v29 = v145;
      v39 = &selRef_centralManager_didUpdateFindMyPeripherals_;
      v40 = &selRef_addIcon_;
      v41 = &selRef_filterWithType_;
      v47 = v148;
LABEL_55:
      v48 = v146;
      v50 = v147;
      goto LABEL_42;
    }

    v70 = sub_21EAA9530();

    v47 = v148;
    if (v70)
    {
      swift_unknownObjectRelease();

      v29 = v145;
      v39 = &selRef_centralManager_didUpdateFindMyPeripherals_;
      v40 = &selRef_addIcon_;
      v41 = &selRef_filterWithType_;
      goto LABEL_55;
    }

    objc_opt_self();
    v71 = swift_dynamicCastObjCClass();
    if (v71)
    {
      v72 = v71;
      swift_unknownObjectRetain();
      v73 = [v72 kind];
LABEL_60:
      v76 = v73;
      v77 = sub_21EAA8E00();
      v79 = v78;
      swift_unknownObjectRelease();
LABEL_61:

      goto LABEL_62;
    }

    objc_opt_self();
    v74 = swift_dynamicCastObjCClass();
    if (v74)
    {
      v75 = v74;
      swift_unknownObjectRetain();
      v73 = [v75 moduleIdentifier];
      goto LABEL_60;
    }

    v113 = [v52 containerBundleIdentifier];
    if (v113)
    {
      v76 = v113;
      v77 = sub_21EAA8E00();
      v79 = v114;
      goto LABEL_61;
    }

    v77 = 0x6E656469206F6E3CLL;
    v79 = 0xEF3E726569666974;
LABEL_62:
    if (qword_28125B8C0 != -1)
    {
      swift_once();
    }

    v80 = sub_21EAA8790();
    __swift_project_value_buffer(v80, qword_28125B8C8);
    v81 = v57;

    v82 = v64;
    v83 = v64;
    v84 = sub_21EAA8760();
    v85 = sub_21EAA9000();
    v141 = v83;

    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      v133 = v82;
      v87 = v86;
      v140 = swift_slowAlloc();
      aBlock[0] = v140;
      *v87 = v130;
      v88 = sub_21E9FE748(v77, v79, aBlock);

      *(v87 + 4) = v88;
      *(v87 + 12) = 2080;
      v89 = [v81 gridSizeClass];
      v90 = sub_21EAA8E00();
      v91 = v85;
      v92 = v81;
      v94 = v93;

      v95 = sub_21E9FE748(v90, v94, aBlock);

      *(v87 + 14) = v95;
      *(v87 + 22) = 2080;
      v47 = v148;
      v96 = sub_21EAA8E00();
      v98 = sub_21E9FE748(v96, v97, aBlock);

      *(v87 + 24) = v98;
      _os_log_impl(&dword_21E9F5000, v84, v91, "Adjusting size class of %s from %s to %s due to Dynamic Type setting.", v87, 0x20u);
      v99 = v140;
      swift_arrayDestroy();
      MEMORY[0x223D68580](v99, -1, -1);
      MEMORY[0x223D68580](v87, -1, -1);

      v100 = v143;
      v29 = v145;
    }

    else
    {

      v100 = v143;
      v29 = v145;
      v92 = v81;
    }

    v39 = &selRef_centralManager_didUpdateFindMyPeripherals_;
    v40 = &selRef_addIcon_;
    v50 = v147;
    v140 = v92;
    v101 = [v136 indexPathForIcon_];
    v41 = &selRef_filterWithType_;
    if (v101)
    {
      v102 = v135;
      v103 = v101;
      sub_21EAA85E0();

      v100 = v143;
      v104 = sub_21EA75998();
      v106 = v105;

      if (v106)
      {
        v107 = [v106 displayedIconViewForIcon_];
        if (v107)
        {
          v108 = v107;
          v109 = [v107 listLayout];
          v29 = v145;
          if (v109)
          {
            [v108 iconImageInfo];
            SBHIconListLayoutIconImageInfoForGridSizeClass();
            [v108 setIconImageInfo_];
            v110 = [v108 customIconImageViewController];
            if (v110)
            {
              v111 = v110;
              objc_opt_self();
              v112 = swift_dynamicCastObjCClass();
              if (v112)
              {
                [v112 setGridSizeClass_];

                swift_unknownObjectRelease();
              }

              else
              {
                swift_unknownObjectRelease();
              }

              (*v131)(v135, v134);
              v100 = v143;
              v40 = &selRef_addIcon_;
              v41 = &selRef_filterWithType_;
              goto LABEL_84;
            }

            (*v131)(v135, v134);
            swift_unknownObjectRelease();
          }

          else
          {
            (*v131)(v135, v134);
          }

          v100 = v143;
          v41 = &selRef_filterWithType_;
          goto LABEL_85;
        }

        (*v131)(v135, v134);
      }

      else
      {
        (*v131)(v102, v134);
      }

LABEL_84:
      v29 = v145;
    }

LABEL_85:
    [v100 loadViewIfNeeded];
    v115 = *&v100[v139];
    if (!v115)
    {
      break;
    }

    v116 = [v115 folder];
    if (v116)
    {
      v117 = v116;
      v118 = v143;
      [v143 loadViewIfNeeded];
      v119 = *&v118[v139];
      if (!v119)
      {
        goto LABEL_102;
      }

      v120 = [objc_opt_self() gridCellInfoOptionsWithInterfaceOrientation:objc_msgSend(v119 reversedLayout:{sel_orientation), 0}];
      v121 = v141;
      v122 = [v117 changeGridSizeClassOfIcon:v140 toGridSizeClass:v141 options:26214914 listGridCellInfoOptions:v120];
      swift_unknownObjectRelease();

      v48 = v146;
      v29 = v145;
    }

    else
    {
      swift_unknownObjectRelease();

      v48 = v146;
    }

LABEL_42:
    if (v48 == ++v49)
    {
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
}

void sub_21EA79980(void *a1, uint64_t a2, _BYTE *a3, uint64_t a4, void *a5)
{
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (!v9)
  {
    return;
  }

  v10 = v9;
  v15 = a1;
  v11 = sub_21EA765F0(v10, a4);
  v12 = v15;
  if (v11)
  {
    MEMORY[0x223D66C60](v15);
    if (*((*a5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21EAA8EE0();
    }

    sub_21EAA8EF0();
    if (*a5 >> 62)
    {
      v13 = sub_21EAA9380();
      if ((a4 & 0xC000000000000001) != 0)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v13 = *((*a5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if ((a4 & 0xC000000000000001) != 0)
      {
LABEL_7:
        v14 = sub_21EAA9380();
        goto LABEL_11;
      }
    }

    v14 = *(a4 + 16);
LABEL_11:
    v12 = v15;
    if (v13 == v14)
    {
      *a3 = 1;
    }
  }
}

void sub_21EA79AD4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  [v3 loadViewIfNeeded];
  v6 = OBJC_IVAR___CCUIPagingViewController___rootFolderController;
  v7 = *&v3[OBJC_IVAR___CCUIPagingViewController___rootFolderController];
  if (!v7)
  {
    __break(1u);
    goto LABEL_9;
  }

  v8 = [v7 folder];
  if (!v8)
  {
    return;
  }

  v10 = v8;
  [v3 loadViewIfNeeded];
  v9 = *&v3[v6];
  if (!v9)
  {
LABEL_9:
    __break(1u);
    return;
  }
}

void sub_21EA79C7C(void *a1, void *a2)
{
  v3 = v2;
  if (qword_28125B8C0 != -1)
  {
    swift_once();
  }

  v6 = sub_21EAA8790();
  __swift_project_value_buffer(v6, qword_28125B8C8);
  v7 = a1;
  v8 = a2;
  v9 = sub_21EAA8760();
  v10 = sub_21EAA9000();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    aBlock[0] = v12;
    *v11 = 136315394;
    v13 = [v7 moduleIdentifier];
    v14 = sub_21EAA8E00();
    v16 = v15;

    v17 = sub_21E9FE748(v14, v16, aBlock);

    *(v11 + 4) = v17;
    *(v11 + 12) = 2080;
    v18 = [v8 containerBundleIdentifier];
    v19 = sub_21EAA8E00();
    v21 = v20;

    v22 = sub_21E9FE748(v19, v21, aBlock);

    *(v11 + 14) = v22;
    _os_log_impl(&dword_21E9F5000, v9, v10, "Processing configuration update... (module: %s, container: %s)", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D68580](v12, -1, -1);
    v23 = v11;
    v3 = v2;
    MEMORY[0x223D68580](v23, -1, -1);
  }

  v24 = [v7 contentViewController];
  if (([v24 respondsToSelector_] & 1) != 0 && objc_msgSend(v24, sel_wantsConfigurationIntent))
  {
    v25 = *(v3 + OBJC_IVAR___CCUIPagingViewController_controlIntentStore);
    v26 = [v8 containerBundleIdentifier];
    if (!v26)
    {
      sub_21EAA8E00();
      v26 = sub_21EAA8DC0();
    }

    v27 = [v8 uniqueIdentifier];
    if (!v27)
    {
      sub_21EAA8E00();
      v27 = sub_21EAA8DC0();
    }

    v28 = swift_allocObject();
    *(v28 + 16) = v24;
    aBlock[4] = sub_21EA879DC;
    aBlock[5] = v28;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21EA7A1F0;
    aBlock[3] = &block_descriptor_360;
    v29 = _Block_copy(aBlock);
    v30 = v24;

    v31 = [v25 intentWithBundleIdentifier:v26 dataSourceIdentifier:v27 defaultIntentProvider:v29];
    _Block_release(v29);

    v32 = v31;
    v33 = sub_21EAA8760();
    v34 = sub_21EAA9000();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v35 = 138412290;
      *(v35 + 4) = v32;
      *v36 = v32;
      v37 = v32;
      _os_log_impl(&dword_21E9F5000, v33, v34, "Setting the new configuration intent: %@", v35, 0xCu);
      sub_21EA488A0(v36, &unk_27CEDCC30);
      MEMORY[0x223D68580](v36, -1, -1);
      MEMORY[0x223D68580](v35, -1, -1);
    }

    if (v32)
    {
      [v30 setConfigurationIntent_];
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    oslog = sub_21EAA8760();
    v38 = sub_21EAA9000();
    if (os_log_type_enabled(oslog, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_21E9F5000, oslog, v38, "Module does not want configuration intent", v39, 2u);
      MEMORY[0x223D68580](v39, -1, -1);
    }
  }
}

id sub_21EA7A194(void *a1)
{
  result = [a1 respondsToSelector_];
  if (result)
  {
    v3 = [a1 defaultConfigurationIntent];

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_21EA7A1F0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  return v3;
}

void _s15ControlCenterUI20PagingViewControllerC07controlB8GridSize3forSo6CGSizeVSo026CCUIContentModuleContainereF0C_tF_0()
{
  [v0 loadViewIfNeeded];
  v1 = *&v0[OBJC_IVAR___CCUIPagingViewController___rootFolderController];
  if (v1)
  {
    v2 = v1;
    v3 = [v2 listLayoutProvider];
    v4 = [type metadata accessor for IconListRootFolderController() iconLocation];
    v5 = [v3 layoutForIconLocation_];

    if (v5)
    {
      UIInterfaceOrientationIsPortrait([v2 orientation]);
      v6 = sub_21EAA9120();
      v7 = [v2 orientation];

      [v5 iconImageInfoForGridSizeClass:v6 orientation:v7];
      swift_unknownObjectRelease();

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

void sub_21EA7A384(void *a1)
{
  v2 = _s15ControlCenterUI20PagingViewControllerC017compactModeSourceE03forSo6UIViewCSgSo026CCUIContentModuleContainereF0C_tF_0(a1);
  if (v2)
  {
    v11 = v2;
    v3 = sub_21EAA8DC0();
    v4 = [v11 ccui:v3 disallowGlassGroupingForReason:?];

    if (v4)
    {
      v5 = OBJC_IVAR___CCUIPagingViewController_disallowGlassGroupingAssertionsByIconView;
      v6 = *(v1 + OBJC_IVAR___CCUIPagingViewController_disallowGlassGroupingAssertionsByIconView);
      v7 = v6;
      if (v6 || (v7 = [objc_opt_self() mapTableWithKeyOptions:5 valueOptions:0], v8 = *(v1 + v5), *(v1 + v5) = v7, v9 = v7, v8, v9))
      {
        v10 = v6;
        [v7 setObject:v4 forKey:v11];
      }

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_21EA7A4B0()
{
  v1 = v0;
  v2 = sub_21EAA8790();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21EAA8750();
  v6 = sub_21EAA8760();
  v7 = sub_21EAA9000();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_21E9F5000, v6, v7, "Running first unlock tasks...", v8, 2u);
    MEMORY[0x223D68580](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  *(v1 + OBJC_IVAR___CCUIPagingViewController_isFinishedRunningFirstUnlockTasks) = 1;
  sub_21EA77DD4();
  if (qword_28125B8C0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v2, qword_28125B8C8);
  v9 = sub_21EAA8760();
  v10 = sub_21EAA9000();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_21E9F5000, v9, v10, "Updating module configurations for all known icon views...", v11, 2u);
    MEMORY[0x223D68580](v11, -1, -1);
  }

  MEMORY[0x28223BE20](v12);
  *(&v14 - 2) = v1;
  sub_21EA744E4(sub_21EA877FC, (&v14 - 4));
  return sub_21EAA56A0();
}

void sub_21EA7A704(void *a1)
{
  v2 = [a1 icon];
  if (!v2)
  {
    return;
  }

  v9 = v2;
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (!v3 || ![v3 activeDataSource])
  {
    goto LABEL_14;
  }

  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v8 = [a1 customIconImageViewController];
    if (v8)
    {
      objc_opt_self();
      v6 = swift_dynamicCastObjCClass();
      if (v6)
      {
        sub_21EA79C7C(v6, v5);

        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }

      v7 = v8;
      goto LABEL_15;
    }

    swift_unknownObjectRelease();
LABEL_14:
    v7 = v9;
LABEL_15:

    return;
  }

  swift_unknownObjectRelease();
}

void sub_21EA7A880()
{
  v1 = v0;
  v2 = sub_21EAA8790();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21EAA8750();
  v6 = sub_21EAA8760();
  v7 = sub_21EAA9000();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_21E9F5000, v6, v7, "Registering for first unlock event...", v8, 2u);
    MEMORY[0x223D68580](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  sub_21E9F8880(0, &qword_28125B7F0);
  v9 = sub_21EAA90C0();
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_21EA87E44;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21EA7AB80;
  aBlock[3] = &block_descriptor_433;
  v11 = _Block_copy(aBlock);

  v12 = AKSEventsRegister();
  _Block_release(v11);

  *(v1 + OBJC_IVAR___CCUIPagingViewController_appleKeyStoreEventsRegister) = v12;
}

void sub_21EA7AAA0(int a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (a1 == 1)
    {
      v4 = MKBGetDeviceLockState();
      if ((v4 == 3 || !v4) && (v3[OBJC_IVAR___CCUIPagingViewController_isFinishedRunningFirstUnlockTasks] & 1) == 0)
      {
        sub_21EA7A4B0();
      }
    }

    v5 = [v3 view];
    if (v5)
    {
      v6 = v5;
      if (CCUISensitiveUIAllowed())
      {
        v7 = 1;
      }

      else
      {
        v8 = MKBGetDeviceLockState();
        if (v8)
        {
          v9 = v8 == 3;
        }

        else
        {
          v9 = 1;
        }

        v7 = v9;
      }

      [v6 setUserInteractionEnabled_];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_21EA7AB80(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_21EA7ABF8()
{
  v1 = v0;
  v2 = sub_21EAA8790();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - v10;
  sub_21EAA8750();
  v12 = sub_21EAA8760();
  v13 = sub_21EAA9000();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_21E9F5000, v12, v13, "Control Center detected buddy completion, reset first unlock tasks", v14, 2u);
    MEMORY[0x223D68580](v14, -1, -1);
  }

  v15 = *(v3 + 8);
  v15(v11, v2);
  *(v1 + OBJC_IVAR___CCUIPagingViewController_isFinishedRunningFirstUnlockTasks) = 0;
  v16 = MKBGetDeviceLockState();
  if (v16 != 3 && v16)
  {
    sub_21EAA8750();
    v21 = sub_21EAA8760();
    v22 = sub_21EAA9000();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_21E9F5000, v21, v22, "Device is locked; the next unlock will run first unlock tasks", v23, 2u);
      MEMORY[0x223D68580](v23, -1, -1);
    }

    return (v15)(v5, v2);
  }

  else
  {
    sub_21EAA8750();
    v17 = sub_21EAA8760();
    v18 = sub_21EAA9000();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_21E9F5000, v17, v18, "Device unlocked already (buddy finished while unlocked or device has no passcode), running first unlock tasks...", v19, 2u);
      MEMORY[0x223D68580](v19, -1, -1);
    }

    v15(v8, v2);
    return sub_21EA7A4B0();
  }
}

uint64_t sub_21EA7AF0C()
{
  v1 = v0;
  result = sub_21EAA8370();
  if (result)
  {
    v3 = result;
    v15[0] = sub_21EAA8E00();
    v15[1] = v4;
    sub_21EAA93E0();
    if (*(v3 + 16) && (v5 = sub_21EA4A05C(v14), (v6 & 1) != 0))
    {
      sub_21E9FE6EC(*(v3 + 56) + 32 * v5, v15);
      sub_21EA4A3FC(v14);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDD6F0);
      if (swift_dynamicCast())
      {
        v7 = v13[4];
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {

      sub_21EA4A3FC(v14);
      v7 = 0;
    }

    if (qword_28125B8C0 != -1)
    {
      swift_once();
    }

    v8 = sub_21EAA8790();
    __swift_project_value_buffer(v8, qword_28125B8C8);
    v9 = sub_21EAA8760();
    v10 = sub_21EAA9000();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_21E9F5000, v9, v10, "AppIntent metadata changed", v11, 2u);
      MEMORY[0x223D68580](v11, -1, -1);
    }

    MEMORY[0x28223BE20](v12);
    v13[2] = v7;
    v13[3] = v1;
    sub_21EA744E4(sub_21EA877D8, v13);
  }

  return result;
}

void sub_21EA7B114(void *a1, uint64_t a2)
{
  v4 = [a1 icon];
  if (!v4)
  {
    return;
  }

  v20 = v4;
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (!v5 || ![v5 activeDataSource])
  {
    goto LABEL_14;
  }

  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = v6;
    v8 = [a1 customIconImageViewController];
    if (v8)
    {
      v19 = v8;
      objc_opt_self();
      v9 = swift_dynamicCastObjCClass();
      if (v9)
      {
        v10 = v9;
        v11 = [v7 containerBundleIdentifier];
        v12 = sub_21EAA8E00();
        v14 = v13;

        if (a2)
        {
          v21[0] = v12;
          v21[1] = v14;
          MEMORY[0x28223BE20](v15);
          v18[2] = v21;
          v16 = sub_21EA68AE8(sub_21EA877E0, v18, a2);

          if ((v16 & 1) == 0)
          {
            goto LABEL_21;
          }
        }

        else
        {
        }

        sub_21EA79C7C(v10, v7);
LABEL_21:

        swift_unknownObjectRelease();
        return;
      }

      swift_unknownObjectRelease();

      v17 = v19;
      goto LABEL_15;
    }

    swift_unknownObjectRelease();
LABEL_14:
    v17 = v20;
LABEL_15:

    return;
  }

  swift_unknownObjectRelease();
}

id PagingViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
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

Swift::Void __swiftcall PagingViewController.settings(_:changedValueForKey:)(PTSettings_optional *_, Swift::String_optional changedValueForKey)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_21EA71B0C();
    v5 = v4;
    [v4 longPressToEditDuration];
    v7 = v6;

    [v3 setMinimumPressDuration_];
  }
}

__C::CGRect __swiftcall PagingViewController.compactModeFrame(for:)(CCUIContentModuleContainerViewController *a1)
{
  v2 = [v1 compactModeSourceViewForContentModuleContainerViewController_];
  if (v2)
  {
    v3 = v2;
    v4 = [v1 bs_presentationContextDefiningViewController];
    if (!v4)
    {
      __break(1u);
      goto LABEL_7;
    }

    v9 = v4;
    [v3 bounds];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v18 = [v9 view];
    [v3 convertRect:v18 toView:{v11, v13, v15, v17}];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;
  }

  else
  {
    v20 = 0.0;
    v22 = 0.0;
    v24 = 0.0;
    v26 = 0.0;
  }

  v5 = v20;
  v6 = v22;
  v7 = v24;
  v8 = v26;
LABEL_7:
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

__C::CGRect __swiftcall PagingViewController.expandedModeFrame(for:)(CCUIContentModuleContainerViewController *a1)
{
  v3 = [v1 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_17;
  }

  v8 = v3;
  [v3 frame];
  v10 = v9;
  v12 = v11;

  [v1 loadViewIfNeeded];
  v13 = *&v1[OBJC_IVAR___CCUIPagingViewController___rootFolderController];
  if (!v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v14 = [v13 listLayoutProvider];
  v15 = [type metadata accessor for IconListRootFolderController() iconLocation];
  v16 = [v14 layoutForIconLocation_];

  if (!v16)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  swift_unknownObjectRelease();
  [v16 layoutInsetsForOrientation_];
  v18 = v17;
  v20 = v19;
  _s15ControlCenterUI20PagingViewControllerC07controlB8GridSize3forSo6CGSizeVSo026CCUIContentModuleContainereF0C_tF_0();
  v22 = v21;
  v24 = v23;
  v25 = v10 + v20;
  v26 = v12 + v18 + CCUIPortraitHeaderHeight();
  v27 = [(CCUIContentModuleContainerViewController *)a1 moduleIdentifier];
  v28 = sub_21EAA8E00();
  v30 = v29;

  if (v28 == 0xD000000000000026 && 0x800000021EABD1F0 == v30)
  {
    swift_unknownObjectRelease();
  }

  else
  {
    v31 = sub_21EAA9530();

    if ((v31 & 1) == 0)
    {
      v32 = [(CCUIContentModuleContainerViewController *)a1 moduleIdentifier];
      v33 = sub_21EAA8E00();
      v35 = v34;

      if (v33 != 0xD000000000000029 || 0x800000021EABD220 != v35)
      {
        v36 = sub_21EAA9530();

        swift_unknownObjectRelease();
        if ((v36 & 1) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_12;
      }
    }

    swift_unknownObjectRelease();
  }

LABEL_12:
  v25 = v25 + -50.0;
  v26 = v26 + -120.0;
  v22 = v22 + 100.0;
  v24 = v24 + 160.0;
LABEL_13:
  v4 = v25;
  v5 = v26;
  v6 = v22;
  v7 = v24;
LABEL_19:
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

BOOL PagingViewController.contentModuleContainerViewController(_:canBeginInteractionWith:)()
{
  if ([v0 isEditing])
  {
    return 0;
  }

  v2 = [*&v0[OBJC_IVAR___CCUIPagingViewController_expandedViewControllers] allObjects];
  sub_21E9F8880(0, &qword_28125B748);
  v3 = sub_21EAA8EC0();

  if (v3 >> 62)
  {
    v4 = sub_21EAA9380();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v4 == 0;
}

void *PagingViewController.contentModuleContainerViewController(_:didOpenExpandedModule:)(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result pagingViewController:v1 didExpand:a1];
    return swift_unknownObjectRelease();
  }

  return result;
}

void PagingViewController.contentModuleContainerViewController(_:willCloseExpandedModule:)(void *a1)
{
  [*(v1 + OBJC_IVAR___CCUIPagingViewController_expandedViewControllers) removeObject_];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong pagingViewController:v1 willClose:a1];
    swift_unknownObjectRelease();
  }

  sub_21EA75610(0, a1);
}

uint64_t sub_21EA7BFBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_21EAA8F20();
  *(v4 + 24) = sub_21EAA8F10();
  v6 = sub_21EAA8F00();

  return MEMORY[0x2822009F8](sub_21EA7C054, v6, v5);
}

uint64_t sub_21EA7C054()
{
  v1 = *(v0 + 16);

  *(v1 + OBJC_IVAR___CCUIPagingViewController_isSuppressingUpdatesToSupportedSizesForAccessibility) = 0;
  sub_21EA7867C();
  v2 = *(v0 + 8);

  return v2();
}

void sub_21EA7C0DC(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(id))
{
  v7 = a3;
  swift_unknownObjectRetain();
  v8 = a1;
  a5(v7);

  swift_unknownObjectRelease();
}

void sub_21EA7C190(uint64_t a1, uint64_t a2, SEL *a3, char a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong *a3];
    swift_unknownObjectRelease();
  }

  sub_21EA75610(a4 & 1, 0);
}

void sub_21EA7C230(void *a1, uint64_t a2, void *a3, uint64_t a4, SEL *a5, char a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v11 = a3;
  v12 = a1;
  if (Strong)
  {
    [Strong *a5];
    swift_unknownObjectRelease();
  }

  sub_21EA75610(a6 & 1, 0);
}

Swift::Void __swiftcall PagingViewController.pointerWillEnterContentModuleContainerViewController(_:)(CCUIContentModuleContainerViewController *a1)
{
  v2 = _s15ControlCenterUI20PagingViewControllerC017compactModeSourceE03forSo6UIViewCSgSo026CCUIContentModuleContainereF0C_tF_0(a1);
  if (v2)
  {
    v11 = v2;
    v3 = sub_21EAA8DC0();
    v4 = [v11 ccui:v3 disallowGlassGroupingForReason:?];

    if (v4)
    {
      v5 = OBJC_IVAR___CCUIPagingViewController_disallowGlassGroupingAssertionsByIconView;
      v6 = *(v1 + OBJC_IVAR___CCUIPagingViewController_disallowGlassGroupingAssertionsByIconView);
      v7 = v6;
      if (v6 || (v7 = [objc_opt_self() mapTableWithKeyOptions:5 valueOptions:0], v8 = *(v1 + v5), *(v1 + v5) = v7, v9 = v7, v8, v9))
      {
        v10 = v6;
        [v7 setObject:v4 forKey:v11];
      }

      swift_unknownObjectRelease();
    }
  }
}

Swift::Void __swiftcall PagingViewController.pointerDidExitContentModuleContainerViewController(_:)(CCUIContentModuleContainerViewController *a1)
{
  v2 = _s15ControlCenterUI20PagingViewControllerC017compactModeSourceE03forSo6UIViewCSgSo026CCUIContentModuleContainereF0C_tF_0(a1);
  if (!v2)
  {
    return;
  }

  v3 = OBJC_IVAR___CCUIPagingViewController_disallowGlassGroupingAssertionsByIconView;
  v4 = *(v1 + OBJC_IVAR___CCUIPagingViewController_disallowGlassGroupingAssertionsByIconView);
  if (v4)
  {
    v9 = v2;
    v8 = v4;
    v5 = [v8 objectForKey_];
    if (v5)
    {
      v6 = v5;
      [v8 removeObjectForKey_];
      if (![v8 count])
      {
        v7 = *(v1 + v3);
        *(v1 + v3) = 0;
      }

      [v6 invalidate];

      swift_unknownObjectRelease();
      return;
    }

    v2 = v8;
  }
}

Swift::Void __swiftcall PagingViewController.contentModuleContainerViewController(_:didUpdateContainerViewPlatters:)(CCUIContentModuleContainerViewController *_, Swift::OpaquePointer_optional didUpdateContainerViewPlatters)
{
  rawValue = didUpdateContainerViewPlatters.value._rawValue;
  v5 = _s15ControlCenterUI20PagingViewControllerC017compactModeSourceE03forSo6UIViewCSgSo026CCUIContentModuleContainereF0C_tF_0(_);
  if (v5)
  {
    v6 = v5;
    [v2 loadViewIfNeeded];
    v7 = *&v2[OBJC_IVAR___CCUIPagingViewController___rootFolderController];
    if (v7)
    {
      v8 = v7;
      v9 = [(CCUIContentModuleContainerViewController *)_ containerViewPlatters];
      if (v9)
      {
        v10 = v9;
        sub_21E9F8880(0, &unk_28125B720);
        v11 = sub_21EAA8EC0();
      }

      else
      {
        v11 = 0;
      }

      if ([*&v8[OBJC_IVAR____TtC15ControlCenterUI28IconListRootFolderController_stretchedIconViews] containsObject_])
      {
        v12 = OBJC_IVAR____TtC15ControlCenterUI28IconListRootFolderController_stretchApplier;
        v13 = *&v8[OBJC_IVAR____TtC15ControlCenterUI28IconListRootFolderController_stretchApplier];
        v14 = v13;
        sub_21EA9167C(v6, rawValue, v13);

        v15 = *&v8[v12];
        v16 = v15;
        sub_21EA914CC(v6, v11, v15);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

id PagingViewController.recycledViewsContainerProvider(for:)()
{
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v2 = result;
  v3 = [result window];

  if (v3)
  {
    result = swift_dynamicCastObjCProtocolConditional();
    if (result)
    {
      return result;
    }
  }

  return 0;
}

Swift::Void __swiftcall PagingViewController.folderControllerWillBeginScrolling(_:)(SBFolderController *a1)
{
  sub_21EA73CF8(0x63537265646C6F66, 0xEF676E696C6C6F72);
  v2 = *(v1 + OBJC_IVAR___CCUIPagingViewController_iconDragManager);
  if (v2)
  {

    [v2 noteFolderBeganScrolling];
  }

  else
  {
    __break(1u);
  }
}

id PagingViewController.draggingDelegate(for:)()
{
  result = *(v0 + OBJC_IVAR___CCUIPagingViewController_iconDragManager);
  if (result)
  {
    return result;
  }

  __break(1u);
  return result;
}

id PagingViewController.customImageViewController(for:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEDCFF0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v123 - v4;
  v6 = sub_21EAA8530();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v123 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = v123 - v12;
  v14 = [a1 icon];
  if (!v14)
  {
    v27 = [objc_opt_self() blackColor];
    v28 = type metadata accessor for ColorViewController();
    v29 = objc_allocWithZone(v28);
    v30 = &v29[OBJC_IVAR____TtC15ControlCenterUI19ColorViewController_iconImageInfo];
    *v30 = 0u;
    v30[1] = 0u;
    v31 = &v29[OBJC_IVAR____TtC15ControlCenterUI19ColorViewController_visibleBounds];
    v31->i64[0] = 0;
    v31->i64[1] = 0;
    v31[1] = vdupq_n_s64(0x4049000000000000uLL);
    *&v29[OBJC_IVAR____TtC15ControlCenterUI19ColorViewController_continuousCornerRadius] = 0;
    v29[OBJC_IVAR____TtC15ControlCenterUI19ColorViewController_showsSquareCorners] = 1;
    *&v29[OBJC_IVAR____TtC15ControlCenterUI19ColorViewController_color] = v27;
    v140.receiver = v29;
    v140.super_class = v28;
    return objc_msgSendSuper2(&v140, sel_initWithNibName_bundle_, 0, 0);
  }

  v15 = v14;
  objc_opt_self();
  v16 = swift_dynamicCastObjCClass();
  if (!v16)
  {
    v32 = [objc_opt_self() magentaColor];
    v33 = type metadata accessor for ColorViewController();
    v34 = objc_allocWithZone(v33);
    v35 = &v34[OBJC_IVAR____TtC15ControlCenterUI19ColorViewController_iconImageInfo];
    *v35 = 0u;
    v35[1] = 0u;
    v36 = &v34[OBJC_IVAR____TtC15ControlCenterUI19ColorViewController_visibleBounds];
    v36->i64[0] = 0;
    v36->i64[1] = 0;
    v36[1] = vdupq_n_s64(0x4049000000000000uLL);
    *&v34[OBJC_IVAR____TtC15ControlCenterUI19ColorViewController_continuousCornerRadius] = 0;
    v34[OBJC_IVAR____TtC15ControlCenterUI19ColorViewController_showsSquareCorners] = 1;
    *&v34[OBJC_IVAR____TtC15ControlCenterUI19ColorViewController_color] = v32;
    v139.receiver = v34;
    v139.super_class = v33;
    v37 = v32;
    v22 = objc_msgSendSuper2(&v139, sel_initWithNibName_bundle_, 0, 0);

    return v22;
  }

  v17 = v16;
  v133 = v7;
  v18 = v15;
  [v1 loadViewIfNeeded];
  result = *&v1[OBJC_IVAR___CCUIPagingViewController___rootFolderController];
  if (result)
  {
    v134 = [result orientation];
    v20 = [v17 activeDataSource];
    if (v20)
    {
      v21 = [*(*&v1[OBJC_IVAR___CCUIPagingViewController_iconImageViewControllerCache] + 32) objectForKey_];
      if (v21)
      {
        v22 = v21;
        objc_opt_self();
        v23 = swift_dynamicCastObjCClass();
        if (v23)
        {
          v24 = v23;
          v22 = v22;
          v25 = [v18 gridSizeClass];

          v26 = CCUIGridSizeClassForSBHIconGridSizeClass();
          [v24 setGridSizeClass_];

          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();
        }

        return v22;
      }

      swift_unknownObjectRelease();
    }

    v38 = [v17 activeDataSource];
    if (v38)
    {
      v39 = v38;
      v40 = *&v1[OBJC_IVAR___CCUIPagingViewController_overrideIconImageViewControllersByDataSource];
      if (v40)
      {
        v41 = [v40 objectForKey_];
        if (v41)
        {
          v42 = v41;
          swift_getObjectType();
          v22 = v42;
          sub_21EA59000();

          swift_unknownObjectRelease();
          return v22;
        }
      }

      swift_unknownObjectRelease();
    }

    objc_opt_self();
    v43 = swift_dynamicCastObjCClass();
    if (v43)
    {
      v44 = v43;
      v45 = v18;
      v46 = [v44 activeDataSource];
      if (v46)
      {
        v47 = v46;
        v132 = v45;
        objc_opt_self();
        v48 = swift_dynamicCastObjCClass();
        if (v48)
        {
          v49 = v48;
          v131 = v47;
          v50 = [v48 containerBundleIdentifier];
          if (v50)
          {
            v51 = v50;
            v52 = [*&v1[OBJC_IVAR___CCUIPagingViewController_controlDescriptorProvider] descriptorFor_];
            v53 = *&v1[OBJC_IVAR___CCUIPagingViewController_controlIntentStore];
            v54 = [v49 uniqueIdentifier];
            if (!v54)
            {
              sub_21EAA8E00();
              v54 = sub_21EAA8DC0();
            }

            v55 = swift_allocObject();
            *(v55 + 16) = v52;
            aBlock[4] = sub_21EA84CD0;
            aBlock[5] = v55;
            aBlock[0] = MEMORY[0x277D85DD0];
            aBlock[1] = 1107296256;
            aBlock[2] = sub_21EA7A1F0;
            aBlock[3] = &block_descriptor_114_0;
            v56 = _Block_copy(aBlock);
            v57 = v52;

            v58 = [v53 intentWithBundleIdentifier:v51 dataSourceIdentifier:v54 defaultIntentProvider:v56];
            _Block_release(v56);

            v127 = v1;
            if (v57 && (v59 = [v57 displayName]) != 0 || (v59 = objc_msgSend(v49, sel_sbh_appName)) != 0)
            {
              v60 = v59;
              sub_21EAA8E00();

              v61 = sub_21EAA8DC0();
            }

            else
            {
              v61 = 0;
            }

            [v49 setDisplayName_];

            sub_21E9F8880(0, &qword_28125B7D0);
            swift_unknownObjectRetain();
            v89 = v58;
            v90 = sub_21EA43678(v49, v58);
            swift_unknownObjectRelease();
            v129 = v89;

            v91 = [v49 controlType];
            v92 = [v49 uniqueIdentifier];
            if (!v92)
            {
              sub_21EAA8E00();
              v92 = sub_21EAA8DC0();
            }

            v130 = v57;
            v93 = objc_allocWithZone(MEMORY[0x277CFC970]);
            v94 = v90;
            v95 = [v93 initWithIdentity:v94 type:v91 contentType:0 configurationIdentifier:v92];
            v128 = v94;

            v96 = [v49 uniqueIdentifier];
            if (!v96)
            {
              sub_21EAA8E00();
              v96 = sub_21EAA8DC0();
            }

            v123[1] = sub_21EAA8E00();
            v123[0] = v97;
            sub_21EAA8520();
            v98 = objc_allocWithZone(MEMORY[0x277CFC948]);
            v99 = sub_21EAA84F0();
            v100 = [v98 initWithModuleIdentifier:v96 uniqueIdentifier:v99];

            v101 = *(v133 + 8);
            v133 += 8;
            v126 = v101;
            v101(v13, v6);
            v102 = v127;
            [v100 setDelegate_];
            swift_unknownObjectRelease();
            v125 = v100;
            [v95 setContentModuleContext_];
            v103 = v95;
            v124 = v103;
            v104 = [v103 supportedGridSizeClasses];
            v105 = type metadata accessor for SimpleContentModule();
            v106 = objc_allocWithZone(v105);
            *&v106[OBJC_IVAR____TtC15ControlCenterUI19SimpleContentModule_contentModuleViewController] = v103;
            *&v106[OBJC_IVAR____TtC15ControlCenterUI19SimpleContentModule_supportedGridSizeClasses] = v104;
            v135.receiver = v106;
            v135.super_class = v105;
            v107 = objc_msgSendSuper2(&v135, sel_init);
            v108 = [v100 uniqueIdentifier];
            sub_21EAA8510();

            v109 = objc_opt_self();
            swift_unknownObjectRetain();
            v110 = v107;
            v111 = [v109 defaultControlCenterPresentationContext];
            v112 = objc_allocWithZone(CCUIContentModuleContainerViewController);
            v113 = sub_21EAA8DC0();
            v114 = sub_21EAA84F0();
            v115 = [v112 initWithModuleIdentifier:v113 uniqueIdentifier:v114 contentModule:v110 presentationContext:v111 contentRenderingMode:0];

            [v115 setDelegate_];
            v116 = sub_21EA74FEC();
            [v115 setContentMetrics_];

            v117 = v132;
            v118 = [v132 gridSizeClass];
            v119 = CCUIGridSizeClassForSBHIconGridSizeClass();

            [v115 setGridSizeClass_];
            v120 = *&v102[OBJC_IVAR___CCUIPagingViewController_iconImageViewControllerCache];
            v121 = v115;
            sub_21EA828A0(v121, v49, v120);

            swift_unknownObjectRelease();

            v126(v13, v6);
            v22 = v121;
            v122 = v124;
            [v124 setDelegate_];

            swift_unknownObjectRelease();
            return v22;
          }
        }

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    v62 = [v17 activeDataSource];
    if (v62)
    {
      v63 = v62;
      objc_opt_self();
      v64 = swift_dynamicCastObjCClass();
      if (v64)
      {
        v65 = v64;
        v131 = v63;
        v66 = [v64 moduleIdentifier];
        if (!v66)
        {
          sub_21EAA8E00();
          v66 = sub_21EAA8DC0();
        }

        v130 = sub_21EAA8E00();
        v68 = v67;
        v69 = *&v1[OBJC_IVAR___CCUIPagingViewController_moduleInstanceManager];
        v70 = [v65 uniqueIdentifier];
        v132 = v68;
        if (!v70)
        {
          sub_21EAA8E00();
          v70 = sub_21EAA8DC0();
        }

        v71 = [v69 obtainModuleWithBundleIdentifier:v66 uniqueIdentifier:v70];

        if (v71)
        {
          v72 = [v71 displayName];
          [v65 setDisplayName_];

          v129 = v71;
          v73 = [v71 module];
          v74 = [v65 uniqueIdentifier];
          sub_21EAA8E00();

          sub_21EAA84D0();

          v75 = v133;
          v76 = *(v133 + 48);
          if (v76(v5, 1, v6) == 1)
          {
            sub_21EAA8520();
            if (v76(v5, 1, v6) != 1)
            {
              sub_21EA488A0(v5, &unk_27CEDCFF0);
            }
          }

          else
          {
            (*(v75 + 32))(v9, v5, v6);
          }

          swift_getObjectType();
          sub_21EAA9130();
          swift_unknownObjectRetain_n();
          swift_unknownObjectRetain();
          v22 = sub_21EA82498(v130, v132, v9, v73, v65, v1, v18);

          swift_unknownObjectRelease();
          swift_unknownObjectRelease_n();

          sub_21EA79C7C(v22, v65);
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          (*(v133 + 8))(v9, v6);
        }

        else
        {

          v83 = [objc_opt_self() blueColor];
          v84 = type metadata accessor for ColorViewController();
          v85 = objc_allocWithZone(v84);
          v86 = &v85[OBJC_IVAR____TtC15ControlCenterUI19ColorViewController_iconImageInfo];
          *v86 = 0u;
          v86[1] = 0u;
          v87 = &v85[OBJC_IVAR____TtC15ControlCenterUI19ColorViewController_visibleBounds];
          v87->i64[0] = 0;
          v87->i64[1] = 0;
          v87[1] = vdupq_n_s64(0x4049000000000000uLL);
          *&v85[OBJC_IVAR____TtC15ControlCenterUI19ColorViewController_continuousCornerRadius] = 0;
          v85[OBJC_IVAR____TtC15ControlCenterUI19ColorViewController_showsSquareCorners] = 1;
          *&v85[OBJC_IVAR____TtC15ControlCenterUI19ColorViewController_color] = v83;
          v137.receiver = v85;
          v137.super_class = v84;
          v88 = v83;
          v22 = objc_msgSendSuper2(&v137, sel_initWithNibName_bundle_, 0, 0);

          swift_unknownObjectRelease();
        }

        return v22;
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }

    v77 = [objc_opt_self() yellowColor];
    v78 = type metadata accessor for ColorViewController();
    v79 = objc_allocWithZone(v78);
    v80 = &v79[OBJC_IVAR____TtC15ControlCenterUI19ColorViewController_iconImageInfo];
    *v80 = 0u;
    v80[1] = 0u;
    v81 = &v79[OBJC_IVAR____TtC15ControlCenterUI19ColorViewController_visibleBounds];
    v81->i64[0] = 0;
    v81->i64[1] = 0;
    v81[1] = vdupq_n_s64(0x4049000000000000uLL);
    *&v79[OBJC_IVAR____TtC15ControlCenterUI19ColorViewController_continuousCornerRadius] = 0;
    v79[OBJC_IVAR____TtC15ControlCenterUI19ColorViewController_showsSquareCorners] = 1;
    *&v79[OBJC_IVAR____TtC15ControlCenterUI19ColorViewController_color] = v77;
    v138.receiver = v79;
    v138.super_class = v78;
    v82 = v77;
    v22 = objc_msgSendSuper2(&v138, sel_initWithNibName_bundle_, 0, 0);

    return v22;
  }

  __break(1u);
  return result;
}

id sub_21EA7DCA0(id result)
{
  if (result)
  {
    result = [result defaultIntentReference];
    if (result)
    {
      v1 = result;
      v2 = [result intent];

      return v2;
    }
  }

  return result;
}

void *PagingViewController.draggingDelegate(for:)()
{
  v1 = *(v0 + OBJC_IVAR___CCUIPagingViewController_iconDragManager);
  v2 = v1;
  return v1;
}

Swift::Bool __swiftcall PagingViewController.iconViewDisplaysResizeHandle(_:)(SBIconView *a1)
{
  v1 = [(SBIconView *)a1 icon];
  if (!v1)
  {
    return 1;
  }

  v2 = v1;
  v3 = [v1 isPlaceholder];

  return v3 ^ 1;
}

void __swiftcall PagingViewController.resizeHandleMetrics(for:)(SBIconResizeHandleMetrics *__return_ptr retstr, SBIconView *a2)
{
  v3 = [(SBIconView *)a2 icon];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 gridSizeClass];
  }

  else
  {
    v5 = 0;
  }

  v6 = SBHIconGridSizeClassForCCUIGridSizeClass();
  v7 = v6;
  if (!v5)
  {

    goto LABEL_11;
  }

  v8 = sub_21EAA8E00();
  v10 = v9;
  if (v8 != sub_21EAA8E00() || v10 != v11)
  {
    v12 = sub_21EAA9530();

    if (v12)
    {
      goto LABEL_10;
    }

LABEL_11:
    v13 = sub_21EA71BCC();
    goto LABEL_12;
  }

LABEL_10:
  v13 = sub_21EA71BE0();
LABEL_12:
  v14 = v13;
  SBIconResizeHandleMetricsForIconResizingSettings();

  *&retstr->var4 = v17;
  *&retstr->var6.top = v18;
  *&retstr->var6.bottom = v19;
  *&retstr->var0 = v15;
  *&retstr->var2 = v16;
}

void *PagingViewController.resizeGestureHandler(for:)(void *a1)
{
  result = [a1 icon];
  if (result)
  {
    v4 = result;
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5 && [v5 activeDataSource])
    {
      swift_unknownObjectRelease();
      [v1 loadViewIfNeeded];
      result = *&v1[OBJC_IVAR___CCUIPagingViewController___rootFolderController];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v6 = [result folderView];
      v7 = [v6 iconListViewDisplayingIconView_];

      if (v7)
      {
        sub_21EA73CF8(0x676E697A69736572, 0xEC0000006E6F6349);
        type metadata accessor for ControlResizeGestureHandler();
        swift_allocObject();
        v8 = sub_21EA5E124(a1, v7);
        v9 = a1;

        v10 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v11 = v8[5];
        v8[5] = sub_21EA84CD8;
        v8[6] = v10;

        sub_21E9FFAF0(v11);

        v12 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v13 = v8[7];
        v8[7] = sub_21EA84CE0;
        v8[8] = v12;

        sub_21E9FFAF0(v13);

        v14 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v15 = v8[9];
        v8[9] = sub_21EA84CE8;
        v8[10] = v14;

        sub_21E9FFAF0(v15);

        return v8;
      }
    }

    return 0;
  }

  return result;
}

void sub_21EA7E2AC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    *(Strong + OBJC_IVAR___CCUIPagingViewController_allowsIconAdornments) = 0;
    sub_21EA74790();
  }

  swift_beginAccess();
  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = v2;
    swift_unknownObjectWeakAssign();
  }
}

void sub_21EA7E354()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    *(Strong + OBJC_IVAR___CCUIPagingViewController_allowsIconAdornments) = 1;
    sub_21EA74790();
  }
}

void sub_21EA7E3B8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    swift_unknownObjectWeakAssign();
    sub_21EA73E04(0x676E697A69736572, 0xEC0000006E6F6349);
    v6 = [*(a1 + 16) icon];
    if (!v6)
    {

      return;
    }

    v7 = v6;
    v8 = [v6 gridSizeClass];
    v9 = sub_21EAA8E00();
    v11 = v10;
    if (v9 == sub_21EAA8E00() && v11 == v12)
    {

      return;
    }

    v14 = sub_21EAA9530();

    if ((v14 & 1) == 0)
    {
      [v5 loadViewIfNeeded];
      v15 = OBJC_IVAR___CCUIPagingViewController___rootFolderController;
      v16 = *&v5[OBJC_IVAR___CCUIPagingViewController___rootFolderController];
      if (!v16)
      {
        __break(1u);
LABEL_17:
        __break(1u);
        return;
      }

      v17 = [v16 folder];
      if (v17)
      {
        v18 = v17;
        [v5 loadViewIfNeeded];
        v19 = *&v5[v15];
        if (v19)
        {
          v20 = [v18 changeGridSizeClassOfIcon:v7 toGridSizeClass:a2 options:26214914 listGridCellInfoOptions:{objc_msgSend(objc_opt_self(), sel_gridCellInfoOptionsWithInterfaceOrientation_reversedLayout_, objc_msgSend(v19, sel_orientation), 0)}];

          return;
        }

        goto LABEL_17;
      }
    }
  }
}

id PagingViewController.gridSizeClassDomain(for:)()
{
  v0 = [objc_opt_self() controlCenterDomain];

  return v0;
}

Swift::Void __swiftcall PagingViewController.iconTapped(_:)(SBIconView *a1)
{
  v3 = [(SBIconView *)a1 icon];
  if (v3)
  {
    v4 = v3;
    if ([v3 isLeafIcon] && objc_msgSend(v1, sel_isEditing) && -[SBIconView supportsConfigurationCard](a1, sel_supportsConfigurationCard))
    {
      [(SBIconView *)a1 presentConfigurationCard];
    }
  }
}

Swift::Void __swiftcall PagingViewController.iconCloseBoxTapped(_:)(SBIconView *a1)
{
  if ([v1 isEditing])
  {
    v3 = [(SBIconView *)a1 icon];
    if (v3)
    {
      v4 = v3;
      sub_21EA73EF0(v3);
      _s15ControlCenterUI20PagingViewControllerC15iconDragManager_0gE0011willAnimateH16LiftWithAnimator7sessionySo06SBIconhI0C_So0pE0CSo15UIDragAnimating_pSo0Q7Session_ptF_0();
    }
  }
}

id PagingViewController.iconView(_:configurationInteractionFor:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDC630);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v86 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEDD080);
  MEMORY[0x28223BE20](v6 - 8);
  v93[1] = &unk_28309CD88;
  result = swift_dynamicCastObjCProtocolConditional();
  if (result)
  {
    v8 = result;
    if ([result respondsToSelector_])
    {
      swift_unknownObjectRetain();
      v9 = [v8 uniqueIdentifier];
      v92 = sub_21EAA8E00();
      v11 = v10;

      v12 = [a1 icon];
      if (v12)
      {
        v13 = v12;
        v14 = [v8 containerBundleIdentifier];
        if (v14)
        {
          v91 = v11;
          v15 = v14;
          v90._countAndFlagsBits = sub_21EAA8E00();
          v90._object = v16;

          objc_opt_self();
          v17 = swift_dynamicCastObjCClass();
          if (v17)
          {
            v18 = v17;
            v19 = *(v1 + OBJC_IVAR___CCUIPagingViewController_controlDescriptorProvider);
            swift_unknownObjectRetain();
            v20 = [v19 descriptorFor_];
            if (v20)
            {
              v21 = v20;
              swift_unknownObjectRelease();
LABEL_32:
              swift_getObjectType();
              v68._countAndFlagsBits = v92;
              v68._object = v91;
              v69 = ControlIntentStorage.intent(bundleIdentifier:dataSourceIdentifier:)(v90, v68);

              if (v69)
              {
                sub_21E9F8880(0, &unk_27CEDD1F0);
                v70 = v13;
                v71 = [v13 gridSizeClass];
                v72 = [objc_opt_self() controlCenterDomain];
                ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
                swift_unknownObjectRetain();
                v74 = [objc_allocWithZone(ObjCClassFromMetadata) initWithDescriptor:v21 gridSizeClass:v71 gridSizeClassDomain:v72 intent:v69 configuredDataSource:v8];

                swift_unknownObjectRelease_n();
                return v74;
              }

              if (qword_28125B8C0 != -1)
              {
                swift_once();
              }

              v75 = sub_21EAA8790();
              __swift_project_value_buffer(v75, qword_28125B8C8);
              swift_unknownObjectRetain();
              v76 = sub_21EAA8760();
              v77 = sub_21EAA8FE0();
              swift_unknownObjectRelease();
              if (os_log_type_enabled(v76, v77))
              {
                v78 = swift_slowAlloc();
                v79 = swift_slowAlloc();
                v93[0] = v79;
                *v78 = 136315138;
                v80 = v13;
                v81 = [v8 description];
                v82 = sub_21EAA8E00();
                v84 = v83;

                v85 = sub_21E9FE748(v82, v84, v93);

                *(v78 + 4) = v85;
                _os_log_impl(&dword_21E9F5000, v76, v77, "No intent found for configuration of %s", v78, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v79);
                MEMORY[0x223D68580](v79, -1, -1);
                MEMORY[0x223D68580](v78, -1, -1);
                swift_unknownObjectRelease();
              }

              else
              {
                swift_unknownObjectRelease();
              }

              return 0;
            }

            if (qword_28125B8C0 != -1)
            {
              swift_once();
            }

            v37 = sub_21EAA8790();
            __swift_project_value_buffer(v37, qword_28125B8C8);
            swift_unknownObjectRetain();
            v38 = sub_21EAA8760();
            v39 = sub_21EAA8FE0();
            swift_unknownObjectRelease();
            if (os_log_type_enabled(v38, v39))
            {
              v40 = swift_slowAlloc();
              v41 = swift_slowAlloc();
              v93[0] = v41;
              *v40 = 136315394;
              v42 = [v18 extensionBundleIdentifier];
              v43 = sub_21EAA8E00();
              v45 = v44;

              v46 = sub_21E9FE748(v43, v45, v93);

              *(v40 + 4) = v46;
              *(v40 + 12) = 2080;
              v47 = [v18 kind];
              v48 = sub_21EAA8E00();
              v50 = v49;

              v51 = sub_21E9FE748(v48, v50, v93);

              *(v40 + 14) = v51;
              _os_log_impl(&dword_21E9F5000, v38, v39, "No descriptor found for configuration of %s:%s", v40, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x223D68580](v41, -1, -1);
              MEMORY[0x223D68580](v40, -1, -1);

              swift_unknownObjectRelease_n();
              return 0;
            }

LABEL_29:

            swift_unknownObjectRelease_n();
            return 0;
          }

          objc_opt_self();
          v22 = swift_dynamicCastObjCClass();
          if (v22)
          {
            v23 = v22;
            v88 = *(v1 + OBJC_IVAR___CCUIPagingViewController_moduleInstanceManager);
            swift_unknownObjectRetain();
            v24 = [v23 moduleIdentifier];
            v87 = v23;
            if (!v24)
            {
              sub_21EAA8E00();
              v24 = sub_21EAA8DC0();
              v23 = v87;
            }

            v25 = [v23 uniqueIdentifier];
            v89 = v13;
            if (!v25)
            {
              sub_21EAA8E00();
              v25 = sub_21EAA8DC0();
            }

            v26 = [v88 obtainModuleWithBundleIdentifier:v24 uniqueIdentifier:v25];

            if (v26)
            {
              v27 = v26;
              sub_21EAA9110();
              sub_21EAA86C0();
              v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDC638);
              (*(*(v28 - 8) + 56))(v5, 1, 1, v28);
              v29 = sub_21EAA9100();
              v30 = objc_allocWithZone(MEMORY[0x277CFA2A0]);
              v31 = v29;
              v32 = sub_21EAA8DC0();
              v21 = [v30 initWithExtensionIdentity:v31 kind:v32 controlType:0 intentType:0];

              v33 = [v27 displayName];
              [v21 setDisplayName_];

              v34 = [v27 module];
              v35 = v27;
              if ([v34 respondsToSelector_])
              {
                v36 = [v34 moduleDescription];
                swift_unknownObjectRelease();
                if (!v36)
                {
                  sub_21EAA8E00();
                  v36 = sub_21EAA8DC0();
                }
              }

              else
              {
                swift_unknownObjectRelease();
                v36 = 0;
              }

              [v21 setWidgetDescription_];

              swift_unknownObjectRelease();
              v13 = v89;
              goto LABEL_32;
            }

            v13 = v89;
            if (qword_28125B8C0 != -1)
            {
              swift_once();
            }

            v52 = sub_21EAA8790();
            __swift_project_value_buffer(v52, qword_28125B8C8);
            swift_unknownObjectRetain();
            v38 = sub_21EAA8760();
            v53 = sub_21EAA8FE0();
            swift_unknownObjectRelease();
            v54 = os_log_type_enabled(v38, v53);
            v55 = v87;
            if (v54)
            {
              v56 = swift_slowAlloc();
              v57 = swift_slowAlloc();
              v93[0] = v57;
              *v56 = 136315394;
              v58 = [v55 moduleIdentifier];
              v59 = sub_21EAA8E00();
              v61 = v60;

              v62 = sub_21E9FE748(v59, v61, v93);

              *(v56 + 4) = v62;
              *(v56 + 12) = 2080;
              v63 = [v55 uniqueIdentifier];
              v64 = sub_21EAA8E00();
              v66 = v65;

              v67 = sub_21E9FE748(v64, v66, v93);

              *(v56 + 14) = v67;
              _os_log_impl(&dword_21E9F5000, v38, v53, "No module instance found for configuration of %s:%s", v56, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x223D68580](v57, -1, -1);
              MEMORY[0x223D68580](v56, -1, -1);

              swift_unknownObjectRelease_n();
              return 0;
            }

            goto LABEL_29;
          }

          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    return 0;
  }

  return result;
}

id PagingViewController.iconView(_:containerViewFor:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = [Strong configurationInteractionContainerView_];
    swift_unknownObjectRelease();
    return v2;
  }

  else
  {
    result = [v0 view];
    if (!result)
    {
      __break(1u);
    }
  }

  return result;
}

void PagingViewController.iconView(_:contentBoundingRectFor:)()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 safeAreaLayoutGuide];

    [v3 layoutFrame];
  }

  else
  {
    __break(1u);
  }
}

void PagingViewController.iconView(_:configurationDidUpdateWith:)(void *a1, void *a2)
{
  v4 = [a1 icon];
  if (!v4)
  {
    goto LABEL_13;
  }

  v5 = v4;
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6)
  {
    goto LABEL_12;
  }

  v7 = v6;
  if (![a2 configuredDataSource] && !objc_msgSend(v7, sel_activeDataSource))
  {
    goto LABEL_12;
  }

  v8 = swift_dynamicCastObjCProtocolConditional();
  if (!v8)
  {

    swift_unknownObjectRelease();
    goto LABEL_13;
  }

  v9 = v8;
  if (![a2 configuration])
  {
    swift_unknownObjectRelease();
LABEL_12:

    goto LABEL_13;
  }

  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (v10)
  {
    v11 = v10;
    swift_getObjectType();
    v12 = [v9 copyWithUniqueIdentifier];
    v25 = [v9 containerBundleIdentifier];
    if (v25)
    {
      sub_21EAA8E00();
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if ([v12 respondsToSelector_])
    {
      v19 = [v12 uniqueIdentifier];
      if (!v19)
      {
        sub_21EAA8E00();
        v19 = sub_21EAA8DC0();
      }

      if (v14)
      {
        v23 = *(v2 + OBJC_IVAR___CCUIPagingViewController_controlIntentStore);

        v24 = v12;
        v20 = sub_21EAA8DC0();

        [v23 storeIntent:v11 bundleIdentifier:v20 dataSourceIdentifier:v19];

        v12 = v24;
      }
    }

    [v7 replaceIconDataSource:v9 withIconDataSource:v12];
    if ([v9 respondsToSelector_])
    {
      v21 = [v9 uniqueIdentifier];
      if (!v21)
      {
        sub_21EAA8E00();
        v21 = sub_21EAA8DC0();
      }

      if (v14)
      {

        [*(v2 + OBJC_IVAR___CCUIPagingViewController_controlIntentStore) deleteIntentWithBundleIdentifier:v25 dataSourceIdentifier:v21];
      }
    }

    else
    {
    }

    v22 = *(v2 + OBJC_IVAR___CCUIPagingViewController_iconImageViewControllerCache);
    swift_unknownObjectRetain();
    sub_21EA58BD0(v9, v22);
    swift_unknownObjectRelease();
    sub_21EA75F18();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return;
  }

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
LABEL_13:
  if (qword_28125B8C0 != -1)
  {
    swift_once();
  }

  v15 = sub_21EAA8790();
  __swift_project_value_buffer(v15, qword_28125B8C8);
  v16 = sub_21EAA8760();
  v17 = sub_21EAA8FE0();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_21E9F5000, v16, v17, "Invalid control configuration update", v18, 2u);
    MEMORY[0x223D68580](v18, -1, -1);
  }
}

uint64_t PagingViewController.iconView(_:configurationWillBeginWith:)()
{
  sub_21EA73CF8(0xD00000000000001FLL, 0x800000021EABD260);

  return swift_unknownObjectWeakAssign();
}

uint64_t PagingViewController.iconView(_:configurationDidEndWith:)()
{
  sub_21EA73E04(0xD00000000000001FLL, 0x800000021EABD260);

  return swift_unknownObjectWeakAssign();
}

id PagingViewController.iconDragManager(_:dragItemsFor:)(int a1, id a2)
{
  result = [a2 icon];
  if (result)
  {
    v3 = result;
    v4 = sub_21EAA8DC0();
    v5 = SBHIconDragItemWithIconAndIconView();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDCF10);
    result = swift_allocObject();
    *(result + 1) = xmmword_21EAB6F60;
    *(result + 4) = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id PagingViewController.iconDragManagerUserActiveIconDraggingDidChange(_:)(void *a1)
{
  result = [a1 isTrackingUserActiveIconDrags];
  if ((result & 1) == 0)
  {
    *(v1 + OBJC_IVAR___CCUIPagingViewController_allowsIconAdornments) = 1;

    return sub_21EA74790();
  }

  return result;
}

id PagingViewController.rootView(for:)()
{
  [v0 loadViewIfNeeded];
  result = *&v0[OBJC_IVAR___CCUIPagingViewController___rootFolderController];
  if (!result)
  {
    __break(1u);
    goto LABEL_5;
  }

  result = [result view];
  if (!result)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

id PagingViewController.iconViewQueryable(for:)()
{
  result = [v0 loadViewIfNeeded];
  v2 = *&v0[OBJC_IVAR___CCUIPagingViewController___rootFolderController];
  if (v2)
  {
    v3 = v2;
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id PagingViewController.rootFolder(for:)()
{
  [v0 loadViewIfNeeded];
  result = *&v0[OBJC_IVAR___CCUIPagingViewController___rootFolderController];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = [result folder];
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  objc_opt_self();

  return swift_dynamicCastObjCClassUnconditional();
}

uint64_t PagingViewController.iconListView(for:)()
{
  v0 = sub_21EA75998();
  v2 = v1;

  return v2;
}

id PagingViewController.listGridCellInfoOptions(for:)()
{
  result = [v0 loadViewIfNeeded];
  v2 = *&v0[OBJC_IVAR___CCUIPagingViewController___rootFolderController];
  if (v2)
  {
    v3 = objc_opt_self();
    v4 = [v2 orientation];

    return [v3 gridCellInfoOptionsWithInterfaceOrientation:v4 reversedLayout:0];
  }

  else
  {
    __break(1u);
  }

  return result;
}

id _s15ControlCenterUI20PagingViewControllerC010rootFolderF03forSo08SBFolderF0CSo17SBIconDragManagerC_tF_0()
{
  [v0 loadViewIfNeeded];
  result = *&v0[OBJC_IVAR___CCUIPagingViewController___rootFolderController];
  if (result)
  {

    return result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_21EA808B4(void *a1)
{
  v1 = a1;
  result = [v1 loadViewIfNeeded];
  v3 = *&v1[OBJC_IVAR___CCUIPagingViewController___rootFolderController];
  if (v3)
  {
    v4 = v3;

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id PagingViewController.layoutIconLists(with:forceRelayout:)(uint64_t a1, char a2)
{
  v3 = v2;
  [v3 loadViewIfNeeded];
  result = *&v3[OBJC_IVAR___CCUIPagingViewController___rootFolderController];
  if (result)
  {

    return [result layoutIconListsWithAnimationType:a1 forceRelayout:a2 & 1];
  }

  else
  {
    __break(1u);
  }

  return result;
}

id PagingViewController.rootFolder(_:canBounce:)()
{
  result = *(v0 + OBJC_IVAR___CCUIPagingViewController_iconDragManager);
  if (result)
  {
    return [result isIconDragging];
  }

  __break(1u);
  return result;
}

void sub_21EA80C44(void *a1, void *a2)
{
  if (a1)
  {
    v3 = a1;
    if ([a2 promptsForUserConfiguration] && objc_msgSend(v3, sel_supportsConfigurationCard))
    {
      [v3 presentConfigurationCard];
    }
  }
}

uint64_t PagingViewController.customApplicationWidgetCollections(for:)()
{
  v18 = MEMORY[0x277D84F90];
  v1 = *&v0[OBJC_IVAR___CCUIPagingViewController_moduleInstanceManager];
  v2 = *&v0[OBJC_IVAR___CCUIPagingViewController_moduleSettingsManager];
  v3 = [v1 loadableModuleIdentifiers];
  v4 = sub_21EAA8F60();

  v5 = 1 << *(v4 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v4 + 56);
  v8 = (v5 + 63) >> 6;
  v9 = v0;
  v10 = v1;
  v11 = v2;

  for (i = 0; v7; result = )
  {
    v14 = i;
LABEL_9:
    v15 = (*(v4 + 48) + ((v14 << 10) | (16 * __clz(__rbit64(v7)))));
    v16 = v15[1];
    v7 &= v7 - 1;
    v17[0] = *v15;
    v17[1] = v16;

    sub_21EA81024(v17, v9, v10, v11, &v18);
  }

  while (1)
  {
    v14 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v14 >= v8)
    {

      return v18;
    }

    v7 = *(v4 + 56 + 8 * v14);
    ++i;
    if (v7)
    {
      i = v14;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_21EA81024(uint64_t *a1, char *a2, void *a3, void *a4, void *a5)
{
  v76 = a4;
  v79 = a3;
  v9 = sub_21EAA8530();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v15 = a1[1];
  v74 = a2;
  v16 = [a2 traitCollection];
  v17 = [v16 userInterfaceIdiom];

  v73 = a5;
  if (v17 == 1)
  {
    v18 = sub_21EAA8720();
  }

  else
  {
    v18 = sub_21EAA8730();
  }

  v19 = v18;
  v77 = v14;
  v78 = v15;
  MEMORY[0x28223BE20](v18);
  *(&v71 - 2) = &v77;
  v20 = sub_21EA68AE8(sub_21EA880B8, (&v71 - 4), v19);

  if (v20)
  {
    return;
  }

  v75 = v5;
  sub_21EAA8520();
  v21 = sub_21EAA84E0();
  v23 = v22;
  (*(v10 + 8))(v13, v9);
  v24 = sub_21EAA8DC0();
  v25 = sub_21EAA8DC0();
  v26 = [v79 obtainModuleWithBundleIdentifier:v24 uniqueIdentifier:v25];

  if (!v26)
  {

    return;
  }

  v27 = [v26 metadata];
  v28 = [v27 associatedBundleIdentifier];

  v72 = v21;
  if (!v28)
  {
    v31 = sub_21EAA8DC0();
    goto LABEL_11;
  }

  sub_21EAA8E00();
  v30 = v29;

  v31 = sub_21EAA8DC0();
  if (!v30)
  {
LABEL_11:
    v32 = 0;
    goto LABEL_12;
  }

  v32 = sub_21EAA8DC0();

LABEL_12:
  v71 = [objc_allocWithZone(MEMORY[0x277D663F8]) initWithLeafIdentifier:v31 applicationBundleID:v32];

  v33 = sub_21EAA8DC0();
  v34 = [v76 moduleSettingsForModuleIdentifier_];

  v35 = [v34 moduleContainerBundleIdentifier];
  v36 = v35;
  v37 = v35;
  if (!v35)
  {
    sub_21EAA8E00();
    v37 = sub_21EAA8DC0();

    sub_21EAA8E00();
    v36 = sub_21EAA8DC0();
  }

  v76 = v36;
  v38 = objc_opt_self();
  v39 = v35;
  v40 = [v38 applicationWithBundleIdentifier_];

  if ([v40 isHidden])
  {

LABEL_17:
    v42 = sub_21EAA8DC0();

    [v79 removeModuleWithUniqueIdentifier_];

    return;
  }

  v41 = [v40 isLocked];

  if (v41)
  {
    goto LABEL_17;
  }

  v43 = OBJC_IVAR___CCUIPagingViewController_controlsGalleryModuleInstanceUniqueIdentifiers;
  v44 = *&v74[OBJC_IVAR___CCUIPagingViewController_controlsGalleryModuleInstanceUniqueIdentifiers];
  if (v44)
  {
    v45 = *&v74[OBJC_IVAR___CCUIPagingViewController_controlsGalleryModuleInstanceUniqueIdentifiers];
  }

  else
  {
    v45 = MEMORY[0x277D84F90];
  }

  v77 = v72;
  v78 = v23;
  MEMORY[0x28223BE20](v44);
  *(&v71 - 2) = &v77;
  swift_bridgeObjectRetain_n();
  v46 = v75;
  v47 = sub_21EA68AE8(sub_21EA880B8, (&v71 - 4), v45);
  v75 = v46;

  if ((v47 & 1) == 0)
  {

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v45 = sub_21EA48368(0, *(v45 + 2) + 1, 1, v45);
    }

    v49 = *(v45 + 2);
    v48 = *(v45 + 3);
    if (v49 >= v48 >> 1)
    {
      v45 = sub_21EA48368((v48 > 1), v49 + 1, 1, v45);
    }

    *(v45 + 2) = v49 + 1;
    v50 = &v45[16 * v49];
    *(v50 + 4) = v72;
    *(v50 + 5) = v23;
  }

  *&v74[v43] = v45;

  v74 = v34;
  v79 = [v34 gridSizeClass];
  v51 = [v26 module];
  if ([v51 respondsToSelector_])
  {
    [v51 supportedGridSizeClasses];
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    CCUIDefaultSupportedGridSizeClassesForChronoControls();
  }

  v52 = SBHIconGridSizeClassSetForCCUIGridSizeClassMask();
  v53 = [v26 module];
  if ([v53 respondsToSelector_])
  {
    v54 = [v53 expandsGridSizeClassesForAccessibility];
  }

  else
  {
    v54 = 0;
  }

  swift_unknownObjectRelease();
  v55 = objc_allocWithZone(MEMORY[0x277CFC9E0]);
  v56 = sub_21EAA8DC0();

  v57 = sub_21EAA8DC0();
  v58 = v76;
  v59 = [v55 initWithUniqueIdentifier:v56 moduleIdentifier:v57 containerBundleIdentifier:v76 standardSupportedGridSizeClasses:v52 expandsGridSizeClassesForAccessibility:v54];

  v60 = [v26 displayName];
  [v59 setDisplayName_];

  v61 = v79;
  [v59 setPreferredGallerySizeClass_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDCF10);
  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_21EAB6F60;
  *(v62 + 32) = v59;
  v63 = objc_allocWithZone(MEMORY[0x277D66130]);
  v64 = v59;
  v65 = v71;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDD708);
  v66 = sub_21EAA8EB0();

  v67 = sub_21EAA8DC0();
  v68 = [v63 initWithIcon:v65 galleryItems:v66 vendorName:v67];

  v69 = v68;
  v70 = v73;
  MEMORY[0x223D66C60]();
  if (*((*v70 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v70 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_21EAA8EE0();
  }

  sub_21EAA8EF0();
}

void *PagingViewController.controlsGalleryViewController(_:widgetIconFor:)()
{
  objc_opt_self();
  v0 = swift_dynamicCastObjCClass();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  swift_unknownObjectRetain();
  [v1 preferredGallerySizeClass];
  v2 = SBHIconGridSizeClassForCCUIGridSizeClass();
  sub_21E9F8880(0, &unk_27CEDCDA0);
  v3 = sub_21EAA8FA0();
  [v3 addIconDataSource_];
  [v3 setGridSizeClass_];
  swift_unknownObjectRelease();

  return v3;
}

void sub_21EA81C38(void *a1)
{
  if (a1)
  {
    v8 = a1;
    if ([v8 supportsConfigurationCard] && (v1 = objc_msgSend(v8, sel_customIconImageViewController)) != 0)
    {
      v2 = v1;
      objc_opt_self();
      v3 = swift_dynamicCastObjCClass();
      if (v3)
      {
        v4 = [v3 contentViewController];
        if ([v4 respondsToSelector_])
        {
          v5 = [v4 promptsForUserConfiguration];

          if (v5)
          {
            [v8 presentConfigurationCard];
          }

          v6 = v2;
          v4 = v8;
        }

        else
        {

          v6 = v8;
        }
      }

      else
      {
        v6 = v8;
        v4 = v2;
      }

      v7 = v4;
    }

    else
    {
      v7 = v8;
    }
  }
}

void sub_21EA81E58(char *a1, int a2, void *a3, void *aBlock, void (*a5)(id, uint64_t, void *))
{
  v8 = _Block_copy(aBlock);
  v9 = *&a1[OBJC_IVAR___CCUIPagingViewController_controlCenterOperationsServiceController];
  _Block_copy(v8);
  v11 = a3;
  v10 = a1;
  a5(v11, v9, v8);
  _Block_release(v8);
  _Block_release(v8);
}

id sub_21EA82000(char *a1)
{
  sub_21EA76708();
  v8[2] = a1;
  v2 = swift_allocObject();
  *(v2 + 16) = sub_21EA878E4;
  *(v2 + 24) = v8;
  result = [a1 loadViewIfNeeded];
  v4 = *&a1[OBJC_IVAR___CCUIPagingViewController___rootFolderController];
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = sub_21EA87FEC;
    *(v5 + 24) = v2;
    aBlock[4] = sub_21EA87FE8;
    aBlock[5] = v5;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21E9FEC38;
    aBlock[3] = &block_descriptor_323;
    v6 = _Block_copy(aBlock);
    v7 = v4;

    [v7 enumerateDisplayedIconViewsUsingBlock_];

    _Block_release(v6);
    LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

    if ((v6 & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21EA82224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 32);

  v9 = swift_unknownObjectRetain();
  v8(v9, a3, a4, a5);

  return swift_unknownObjectRelease();
}

uint64_t sub_21EA822A8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21EA823A0;

  return v6(a1);
}

uint64_t sub_21EA823A0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

id sub_21EA82498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v10 = [objc_opt_self() defaultControlCenterPresentationContext];
  v11 = objc_allocWithZone(CCUIContentModuleContainerViewController);
  v12 = sub_21EAA8DC0();
  v13 = sub_21EAA84F0();
  v14 = [v11 initWithModuleIdentifier:v12 uniqueIdentifier:v13 contentModule:a4 presentationContext:v10 contentRenderingMode:0];

  [v14 setDelegate_];
  v15 = sub_21EA74FEC();
  [v14 setContentMetrics_];

  v16 = [a7 gridSizeClass];
  v17 = CCUIGridSizeClassForSBHIconGridSizeClass();

  [v14 setGridSizeClass_];
  v18 = v14;
  sub_21EA59000();

  return v18;
}

void sub_21EA82624(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDD710);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v21 - v6;
  v8 = [a2 preferredContentSizeCategory];
  v9 = sub_21EAA9160() & 1;

  v10 = [a1 traitCollection];
  v11 = [v10 preferredContentSizeCategory];

  LODWORD(v10) = sub_21EAA9160() & 1;
  if (v9 != v10)
  {
    if (*(a1 + OBJC_IVAR___CCUIPagingViewController_isSuppressingUpdatesToSupportedSizesForAccessibility))
    {
      if (qword_28125B8C0 != -1)
      {
        swift_once();
      }

      v12 = sub_21EAA8790();
      __swift_project_value_buffer(v12, qword_28125B8C8);
      v13 = sub_21EAA8760();
      v14 = sub_21EAA9000();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_21E9F5000, v13, v14, "Suppressed an update to supported sizes for accessibility.", v15, 2u);
        MEMORY[0x223D68580](v15, -1, -1);
      }

      *(a1 + OBJC_IVAR___CCUIPagingViewController_needsUpdateToSupportedSizesForAccessibility) = 1;
    }

    else
    {
      v16 = sub_21EAA8F40();
      (*(*(v16 - 8) + 56))(v7, 1, 1, v16);
      sub_21EAA8F20();
      v17 = a1;
      v18 = sub_21EAA8F10();
      v19 = swift_allocObject();
      v20 = MEMORY[0x277D85700];
      v19[2] = v18;
      v19[3] = v20;
      v19[4] = v17;
      sub_21EA68DF8(0, 0, v7, &unk_21EAB71E8, v19);
    }
  }
}

uint64_t sub_21EA828A0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_21EAA8790();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a3[4];
  [v11 setObject:a1 forKey:{a2, v8}];
  sub_21EAA8750();

  v12 = sub_21EAA8760();
  v13 = sub_21EAA9000();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v21 = v6;
    v15 = v14;
    v16 = swift_slowAlloc();
    v22 = v16;
    *v15 = 136315394;
    v17 = a3[2];
    v18 = a3[3];

    v19 = sub_21E9FE748(v17, v18, &v22);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2048;
    *(v15 + 14) = [v11 count];

    _os_log_impl(&dword_21E9F5000, v12, v13, "[IconImageViewControllerCache (%s)] Added entry. Cache size: %ld", v15, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x223D68580](v16, -1, -1);
    MEMORY[0x223D68580](v15, -1, -1);

    return (*(v7 + 8))(v10, v21);
  }

  else
  {

    return (*(v7 + 8))(v10, v6);
  }
}

void sub_21EA82ABC(void *a1, void *a2)
{
  v5 = [*(v2 + OBJC_IVAR___CCUIPagingViewController_expandedViewControllers) allObjects];
  sub_21E9F8880(0, &qword_28125B748);
  v6 = sub_21EAA8EC0();

  if (v6 >> 62)
  {
    v7 = sub_21EAA9380();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v7 >= 1)
  {
    [a1 setAlpha_];
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = [Strong pagingViewControllerDidAddModuleView_];
    swift_unknownObjectRelease();
    if (v9)
    {
      v10 = [a1 icon];
      if (v10)
      {
        v11 = v10;
        v12 = [a2 coordinateForIcon_];
        v14 = v13;
        if (sub_21EAA9030())
        {
          _Block_release(v9);

          return;
        }

        [a2 orientation];
        v15 = [v11 gridSizeClass];
        CCUIGridSizeClassForSBHIconGridSizeClass();

        v16 = sub_21EAA9010();
        (*(v9 + 2))(v9, a1, v12, v14, v16);
      }

      _Block_release(v9);
    }
  }
}

void sub_21EA82CB8(uint64_t a1)
{
  v1 = a1;
  v36 = MEMORY[0x277D84F90];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_21EAA9370();
    sub_21E9F8880(0, &qword_28125B848);
    sub_21E9FBE14(&qword_28125B840, &qword_28125B848);
    sub_21EAA8F90();
    v1 = v31;
    v2 = v32;
    v3 = v33;
    v4 = v34;
    v5 = v35;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

LABEL_7:
  v9 = &off_278383000;
  while (1)
  {
    if (v1 < 0)
    {
      if (!sub_21EAA93A0() || (sub_21E9F8880(0, &qword_28125B848), swift_dynamicCast(), v12 = v30, v9 = &off_278383000, !v30))
      {
LABEL_29:
        sub_21E9FBFD4();
        return;
      }

      goto LABEL_18;
    }

    v10 = v4;
    v11 = v5;
    if (!v5)
    {
      break;
    }

LABEL_14:
    v5 = (v11 - 1) & v11;
    v12 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v12)
    {
      goto LABEL_29;
    }

LABEL_18:
    if ([v12 v9[361]])
    {
      objc_opt_self();
      v13 = swift_dynamicCastObjCClass();
      if (v13)
      {
        v14 = v13;
        v27 = [v13 uniqueIdentifier];
        if (!v27)
        {
          sub_21EAA8E00();
          v27 = sub_21EAA8DC0();
        }

        v23 = sub_21EAA8E00();
        dataSourceIdentifier = v15;
        v16 = [v14 containerBundleIdentifier];
        if (v16)
        {
          v17 = v16;
          v22 = sub_21EAA8E00();
          bundleIdentifier = v18;

          swift_getObjectType();
          v19._countAndFlagsBits = v22;
          v20._countAndFlagsBits = v23;
          v19._object = bundleIdentifier;
          v20._object = dataSourceIdentifier;
          v24 = ControlIntentStorage.intent(bundleIdentifier:dataSourceIdentifier:)(v19, v20);
        }

        else
        {
          v24 = 0;
        }

        sub_21E9F8880(0, &qword_28125B7D0);
        dataSourceIdentifiera = v24;
        swift_unknownObjectRetain();
        bundleIdentifiera = sub_21EA43678(v14, v24);
        swift_unknownObjectRelease();

        v21 = [objc_allocWithZone(MEMORY[0x277CFA298]) initWithUniqueIdentifier:v27 controlIdentity:bundleIdentifiera location:8];
        [v21 setPushPolicy_];
        [v21 setCanAppearInSecureEnvironment_];

        swift_unknownObjectRelease();
        MEMORY[0x223D66C60]();
        if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_21EAA8EE0();
        }

        sub_21EAA8EF0();
        goto LABEL_7;
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_29;
    }

    v11 = *(v2 + 8 * v4);
    ++v10;
    if (v11)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

char *sub_21EA830FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  swift_getObjectType();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v5[OBJC_IVAR___CCUIPagingViewController_endEditingTimer] = 0;
  *&v5[OBJC_IVAR___CCUIPagingViewController_endEditingTimerSuppressionReasons] = MEMORY[0x277D84F90];
  *&v5[OBJC_IVAR___CCUIPagingViewController____lazy_storage___iconEditingSettings] = 0;
  *&v5[OBJC_IVAR___CCUIPagingViewController____lazy_storage___iconResizeHandleSettings] = 0;
  *&v5[OBJC_IVAR___CCUIPagingViewController____lazy_storage___smallIconResizeHandleSettings] = 0;
  *&v5[OBJC_IVAR___CCUIPagingViewController____lazy_storage___editingFeedbackGenerator] = 0;
  *&v5[OBJC_IVAR___CCUIPagingViewController____lazy_storage___editingNotificationFeedbackGenerator] = 0;
  v5[OBJC_IVAR___CCUIPagingViewController__isEditing] = 0;
  v5[OBJC_IVAR___CCUIPagingViewController_allowsIconAdornments] = 1;
  v5[OBJC_IVAR___CCUIPagingViewController_wantsSubduedIconBackgrounds] = 0;
  *&v5[OBJC_IVAR___CCUIPagingViewController_moduleInstanceObserver] = 0;
  *&v5[OBJC_IVAR___CCUIPagingViewController_controlHost] = 0;
  swift_unknownObjectWeakInit();
  *&v5[OBJC_IVAR___CCUIPagingViewController_apSubjectMonitorSubscription] = 0;
  *&v5[OBJC_IVAR___CCUIPagingViewController___rootFolderController] = 0;
  *&v5[OBJC_IVAR___CCUIPagingViewController_iconDragManager] = 0;
  *&v5[OBJC_IVAR___CCUIPagingViewController_maximumNumberOfIconViewsInHierarchy] = 0;
  *&v5[OBJC_IVAR___CCUIPagingViewController_iconViewMap] = 0;
  *&v5[OBJC_IVAR___CCUIPagingViewController_iconViewProvider] = 0;
  *&v5[OBJC_IVAR___CCUIPagingViewController_addButton] = 0;
  v12 = OBJC_IVAR___CCUIPagingViewController_expandedViewControllers;
  *&v6[v12] = [objc_opt_self() weakObjectsHashTable];
  v13 = OBJC_IVAR___CCUIPagingViewController_expandedViewControllersDispatchGroup;
  *&v6[v13] = dispatch_group_create();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v14 = OBJC_IVAR___CCUIPagingViewController_iconImageViewControllerCache;
  type metadata accessor for IconImageViewControllerCache();
  v15 = swift_allocObject();
  v16 = [objc_opt_self() mapTableWithKeyOptions:5 valueOptions:0];
  v15[2] = 0x73696C2072657375;
  v15[3] = 0xE900000000000074;
  v15[4] = v16;
  v17 = [objc_opt_self() defaultCenter];
  [v17 addObserver:v15 selector:sel_purgeCache name:*MEMORY[0x277D76670] object:0];

  *&v6[v14] = v15;
  *&v6[OBJC_IVAR___CCUIPagingViewController_overrideIconImageViewControllersByDataSource] = 0;
  *&v6[OBJC_IVAR___CCUIPagingViewController_disallowGlassGroupingAssertionsByIconView] = 0;
  *&v6[OBJC_IVAR___CCUIPagingViewController_controlsGalleryModuleInstanceUniqueIdentifiers] = 0;
  *&v6[OBJC_IVAR___CCUIPagingViewController_controlsGalleryViewController] = 0;
  v18 = OBJC_IVAR___CCUIPagingViewController_controlCenterOperationsServiceController;
  type metadata accessor for ControlCenterOperationServiceController();
  v19 = swift_allocObject();
  *(v19 + 24) = 0;
  swift_unknownObjectWeakInit();
  *&v6[v18] = v19;
  *&v6[OBJC_IVAR___CCUIPagingViewController_controlDragWindow] = 0;
  *&v6[OBJC_IVAR___CCUIPagingViewController_hiddenDroppingIconViews] = 0;
  *&v6[OBJC_IVAR___CCUIPagingViewController_appIntentMetadataChangedObserverToken] = 0;
  *&v6[OBJC_IVAR___CCUIPagingViewController____lazy_storage___moduleContentMetrics] = 0;
  v6[OBJC_IVAR___CCUIPagingViewController_isSuppressingUpdatesToSupportedSizesForAccessibility] = 0;
  v6[OBJC_IVAR___CCUIPagingViewController_needsUpdateToSupportedSizesForAccessibility] = 0;
  v6[OBJC_IVAR___CCUIPagingViewController_isUpdatingSupportedSizesForAccessibility] = 0;
  *&v6[OBJC_IVAR___CCUIPagingViewController_appleKeyStoreEventsRegister] = 0;
  v6[OBJC_IVAR___CCUIPagingViewController_isFinishedRunningFirstUnlockTasks] = 0;
  sub_21E9FE6EC(a1, v51);
  sub_21E9F8880(0, &unk_28125B770);
  swift_dynamicCast();
  v20 = v50;
  *&v6[OBJC_IVAR___CCUIPagingViewController_moduleInstanceManager] = v50;
  v21 = a2;
  sub_21E9FE6EC(a2, v51);
  sub_21E9F8880(0, &unk_28125B760);
  v22 = v20;
  swift_dynamicCast();
  v23 = v50;
  *&v6[OBJC_IVAR___CCUIPagingViewController_moduleSettingsManager] = v50;
  v24 = type metadata accessor for ControlsIconModelLoader();
  v25 = objc_allocWithZone(v24);
  *&v25[OBJC_IVAR____TtC15ControlCenterUI23ControlsIconModelLoader_maxListCountForFolders] = 15;
  v25[OBJC_IVAR____TtC15ControlCenterUI23ControlsIconModelLoader_iconStateDirty] = 0;
  *&v25[OBJC_IVAR____TtC15ControlCenterUI23ControlsIconModelLoader_moduleInstanceManager] = v22;
  *&v25[OBJC_IVAR____TtC15ControlCenterUI23ControlsIconModelLoader_moduleSettingsManager] = v23;
  *&v25[OBJC_IVAR____TtC15ControlCenterUI23ControlsIconModelLoader_controlIntentStore] = a3;
  v49.receiver = v25;
  v49.super_class = v24;
  v26 = v23;
  swift_unknownObjectRetain();
  v27 = objc_msgSendSuper2(&v49, sel_init);
  *&v6[OBJC_IVAR___CCUIPagingViewController_iconModelLoader] = v27;
  v28 = v27;
  v29 = sub_21EA9EA04();

  *&v6[OBJC_IVAR___CCUIPagingViewController_iconModel] = v29;
  *&v6[OBJC_IVAR___CCUIPagingViewController_controlIntentStore] = a3;
  *&v6[OBJC_IVAR___CCUIPagingViewController_controlDescriptorProvider] = a4;
  *&v6[OBJC_IVAR___CCUIPagingViewController_controlExtensionProvider] = a5;
  v48.receiver = v6;
  v48.super_class = type metadata accessor for PagingViewController();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v30 = a5;
  v31 = objc_msgSendSuper2(&v48, sel_initWithNibName_bundle_, 0, 0);
  v32 = *&v31[OBJC_IVAR___CCUIPagingViewController_controlExtensionProvider];
  v33 = v31;
  [v32 registerObserver_];
  v34 = [objc_opt_self() subjectMonitorRegistry];
  v35 = v33;
  v36 = [v34 addMonitor:v35 subjectMask:1 subscriptionOptions:1];

  swift_unknownObjectRelease();
  *&v35[OBJC_IVAR___CCUIPagingViewController_apSubjectMonitorSubscription] = v36;
  swift_unknownObjectRelease();
  v37 = *&v35[OBJC_IVAR___CCUIPagingViewController_moduleInstanceManager];
  v38 = *&v35[OBJC_IVAR___CCUIPagingViewController_moduleSettingsManager];
  objc_allocWithZone(type metadata accessor for ModuleInstanceObserver());
  v39 = v37;
  v40 = v38;
  v41 = sub_21EA43AC4(v35, v37, v38);
  v42 = *&v35[OBJC_IVAR___CCUIPagingViewController_moduleInstanceObserver];
  *&v35[OBJC_IVAR___CCUIPagingViewController_moduleInstanceObserver] = v41;

  sub_21EA75F18();
  sub_21EA787B4(0, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEDD0C0);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_21EAB6F50;
  v44 = sub_21EAA87D0();
  v45 = MEMORY[0x277D74DB8];
  *(v43 + 32) = v44;
  *(v43 + 40) = v45;
  sub_21EAA9070();

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v21);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v35;
}

void sub_21EA837E8()
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR___CCUIPagingViewController_endEditingTimer) = 0;
  *(v0 + OBJC_IVAR___CCUIPagingViewController_endEditingTimerSuppressionReasons) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR___CCUIPagingViewController____lazy_storage___iconEditingSettings) = 0;
  *(v0 + OBJC_IVAR___CCUIPagingViewController____lazy_storage___iconResizeHandleSettings) = 0;
  *(v0 + OBJC_IVAR___CCUIPagingViewController____lazy_storage___smallIconResizeHandleSettings) = 0;
  *(v0 + OBJC_IVAR___CCUIPagingViewController____lazy_storage___editingFeedbackGenerator) = 0;
  *(v0 + OBJC_IVAR___CCUIPagingViewController____lazy_storage___editingNotificationFeedbackGenerator) = 0;
  *(v0 + OBJC_IVAR___CCUIPagingViewController__isEditing) = 0;
  *(v0 + OBJC_IVAR___CCUIPagingViewController_allowsIconAdornments) = 1;
  *(v0 + OBJC_IVAR___CCUIPagingViewController_wantsSubduedIconBackgrounds) = 0;
  *(v0 + OBJC_IVAR___CCUIPagingViewController_moduleInstanceObserver) = 0;
  *(v0 + OBJC_IVAR___CCUIPagingViewController_controlHost) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR___CCUIPagingViewController_apSubjectMonitorSubscription) = 0;
  *(v0 + OBJC_IVAR___CCUIPagingViewController___rootFolderController) = 0;
  *(v0 + OBJC_IVAR___CCUIPagingViewController_iconDragManager) = 0;
  *(v0 + OBJC_IVAR___CCUIPagingViewController_maximumNumberOfIconViewsInHierarchy) = 0;
  *(v0 + OBJC_IVAR___CCUIPagingViewController_iconViewMap) = 0;
  *(v0 + OBJC_IVAR___CCUIPagingViewController_iconViewProvider) = 0;
  *(v0 + OBJC_IVAR___CCUIPagingViewController_addButton) = 0;
  v1 = OBJC_IVAR___CCUIPagingViewController_expandedViewControllers;
  *(v0 + v1) = [objc_opt_self() weakObjectsHashTable];
  v2 = OBJC_IVAR___CCUIPagingViewController_expandedViewControllersDispatchGroup;
  *(v0 + v2) = dispatch_group_create();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v3 = OBJC_IVAR___CCUIPagingViewController_iconImageViewControllerCache;
  type metadata accessor for IconImageViewControllerCache();
  v4 = swift_allocObject();
  v5 = [objc_opt_self() mapTableWithKeyOptions:5 valueOptions:0];
  v4[2] = 0x73696C2072657375;
  v4[3] = 0xE900000000000074;
  v4[4] = v5;
  v6 = [objc_opt_self() defaultCenter];
  [v6 addObserver:v4 selector:sel_purgeCache name:*MEMORY[0x277D76670] object:0];

  *(v0 + v3) = v4;
  *(v0 + OBJC_IVAR___CCUIPagingViewController_overrideIconImageViewControllersByDataSource) = 0;
  *(v0 + OBJC_IVAR___CCUIPagingViewController_disallowGlassGroupingAssertionsByIconView) = 0;
  *(v0 + OBJC_IVAR___CCUIPagingViewController_controlsGalleryModuleInstanceUniqueIdentifiers) = 0;
  *(v0 + OBJC_IVAR___CCUIPagingViewController_controlsGalleryViewController) = 0;
  v7 = OBJC_IVAR___CCUIPagingViewController_controlCenterOperationsServiceController;
  type metadata accessor for ControlCenterOperationServiceController();
  v8 = swift_allocObject();
  *(v8 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + v7) = v8;
  *(v0 + OBJC_IVAR___CCUIPagingViewController_controlDragWindow) = 0;
  *(v0 + OBJC_IVAR___CCUIPagingViewController_hiddenDroppingIconViews) = 0;
  *(v0 + OBJC_IVAR___CCUIPagingViewController_appIntentMetadataChangedObserverToken) = 0;
  *(v0 + OBJC_IVAR___CCUIPagingViewController____lazy_storage___moduleContentMetrics) = 0;
  *(v0 + OBJC_IVAR___CCUIPagingViewController_isSuppressingUpdatesToSupportedSizesForAccessibility) = 0;
  *(v0 + OBJC_IVAR___CCUIPagingViewController_needsUpdateToSupportedSizesForAccessibility) = 0;
  *(v0 + OBJC_IVAR___CCUIPagingViewController_isUpdatingSupportedSizesForAccessibility) = 0;
  *(v0 + OBJC_IVAR___CCUIPagingViewController_appleKeyStoreEventsRegister) = 0;
  *(v0 + OBJC_IVAR___CCUIPagingViewController_isFinishedRunningFirstUnlockTasks) = 0;
  sub_21EAA94A0();
  __break(1u);
}

void sub_21EA83B68(char *a1, uint64_t a2, uint64_t a3, void **a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v22 = a2;
  v23 = a3;
  v24 = a4;
  v20 = 0;
  [a1 loadViewIfNeeded];
  v8 = *&a1[OBJC_IVAR___CCUIPagingViewController___rootFolderController];
  if (!v8)
  {
LABEL_14:
    __break(1u);
  }

  v9 = swift_allocObject();
  v9[2] = sub_21EA87E4C;
  v9[3] = &v21;
  v9[4] = a1;
  v9[5] = &v20;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_21EA87FE0;
  *(v10 + 24) = v9;
  aBlock[4] = sub_21EA87FE8;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21E9FEC38;
  aBlock[3] = &block_descriptor_447;
  v11 = _Block_copy(aBlock);
  v12 = v8;
  v13 = a1;

  [v12 enumerateDisplayedIconViewsUsingBlock_];

  _Block_release(v11);
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v20 == 1 || (Strong = swift_unknownObjectWeakLoadStrong()) == 0)
  {

    return;
  }

  v15 = Strong;
  v16 = [Strong customIconImageViewController];
  if (!v16)
  {

    goto LABEL_10;
  }

  v17 = v16;
  objc_opt_self();
  v18 = swift_dynamicCastObjCClass();
  if (v18)
  {
    LOBYTE(aBlock[0]) = 0;
    sub_21EA6BAF0(v18, aBlock, a2, a3, a4);

LABEL_10:
    return;
  }
}

uint64_t sub_21EA83E1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDD078);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_21EA83EEC(void (**a1)(uint64_t a1, void *a2), uint64_t a2)
{
  isEscapingClosureAtFileLocation = sub_21EAA83E0();
  v5 = *(isEscapingClosureAtFileLocation - 8);
  v6 = MEMORY[0x28223BE20](isEscapingClosureAtFileLocation);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = a2;
  v45 = a2;
  [a1 loadViewIfNeeded];
  v9 = *(a1 + OBJC_IVAR___CCUIPagingViewController___rootFolderController);
  if (!v9)
  {
LABEL_34:
    __break(1u);
    return;
  }

  v10 = [v9 visibleIconListViews];
  sub_21E9F8880(0, &unk_28125B830);
  v11 = sub_21EAA8EC0();

  if (v11 >> 62)
  {
    goto LABEL_18;
  }

  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v40 = v5;
  v41 = isEscapingClosureAtFileLocation;
  if (v12)
  {
    while (v12 >= 1)
    {
      v38 = a1;
      a1 = &v49;
      v43 = v11 & 0xC000000000000001;
      v39 = v8;
      if ((v11 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x223D67210](0, v11);
      }

      else
      {
        v13 = *(v11 + 32);
      }

      v14 = v13;
      v15 = [v13 orientation];
      v5 = swift_allocObject();
      v5[2] = v14;
      v5[3] = v15;
      v5[4] = sub_21EA87870;
      v5[5] = v44;
      v16 = v14;
      sub_21E9FFAF0(0);
      v17 = swift_allocObject();
      *(v17 + 16) = sub_21EA87FE4;
      *(v17 + 24) = v5;
      v51 = sub_21EA87FE8;
      v52 = v17;
      v8 = MEMORY[0x277D85DD0];
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      v49 = sub_21E9FEC38;
      v50 = &block_descriptor_300;
      v18 = _Block_copy(&aBlock);

      [v16 enumerateDisplayedIconViewsUsingBlock_];

      _Block_release(v18);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        v19 = v12 - 1;
        if (v12 == 1)
        {
LABEL_16:

          v26 = sub_21EA87FE4;
          v8 = v39;
          a1 = v38;
          goto LABEL_20;
        }

        v20 = 5;
        while (1)
        {
          v21 = v43 ? MEMORY[0x223D67210](v20 - 4, v11) : *(v11 + 8 * v20);
          v22 = v21;
          v23 = [v21 orientation];
          v5 = swift_allocObject();
          v5[2] = v22;
          v5[3] = v23;
          v5[4] = sub_21EA87870;
          v5[5] = v44;
          v24 = v22;
          sub_21E9FFAF0(sub_21EA87FE4);
          v25 = swift_allocObject();
          *(v25 + 16) = sub_21EA87FE4;
          *(v25 + 24) = v5;
          v51 = sub_21EA87FE8;
          v52 = v25;
          *&aBlock = v8;
          *(&aBlock + 1) = 1107296256;
          v49 = sub_21E9FEC38;
          v50 = &block_descriptor_300;
          a1 = _Block_copy(&aBlock);

          [v24 enumerateDisplayedIconViewsUsingBlock_];

          _Block_release(a1);
          isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

          if (isEscapingClosureAtFileLocation)
          {
            break;
          }

          ++v20;
          if (!--v19)
          {
            goto LABEL_16;
          }
        }
      }

      __break(1u);
LABEL_18:
      v12 = sub_21EAA9380();
      v40 = v5;
      v41 = isEscapingClosureAtFileLocation;
      if (!v12)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
    goto LABEL_34;
  }

LABEL_19:

  v26 = 0;
LABEL_20:
  v27 = *(a1 + OBJC_IVAR___CCUIPagingViewController_controlDragWindow);
  if (v27)
  {
    v43 = v26;
    v28 = *&v27[OBJC_IVAR____TtC15ControlCenterUI17ControlDragWindow_platterViews];
    v38 = v27;
    v29 = [v28 objectEnumerator];
    sub_21EAA8FB0();

    sub_21EAA83D0();
    while (v50)
    {
      sub_21EA51D48(&aBlock, &v47);
      type metadata accessor for ControlIconDragPreview();
      if (swift_dynamicCast())
      {
        v30 = v46;
        v31 = *&v46[OBJC_IVAR____TtC15ControlCenterUI22ControlIconDragPreview_iconView];
        if (v31)
        {
          v32 = v31;
          v33 = [v32 icon];
          if (v33)
          {
            v34 = v33;
            v35 = [v33 gridSizeClass];
            CCUIGridSizeClassForSBHIconGridSizeClass();

            v36 = sub_21EAA9010();
            (*(v42 + 16))(v42, v32, 1, 1, v36);
          }
        }

        else
        {
        }
      }

      sub_21EAA83D0();
    }

    (v40[1])(v8, v41);
    v37 = v43;
  }

  else
  {
    v37 = v26;
  }

  sub_21E9FFAF0(v37);
}

void sub_21EA84534(uint64_t a1, void *a2, char *a3, uint64_t a4)
{
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (!v7)
  {
    return;
  }

  v8 = v7;
  swift_unknownObjectRetain();
  [a3 loadViewIfNeeded];
  v9 = *&a3[OBJC_IVAR___CCUIPagingViewController___rootFolderController];
  if (!v9)
  {
    __break(1u);
    goto LABEL_36;
  }

  v10 = v9;
  v11 = [v10 folderView];
  v41 = [v8 icon];
  if (!v41)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v37 = a2;
  v12 = [v11 visibleIconListViews];
  sub_21E9F8880(0, &unk_28125B830);
  v13 = sub_21EAA8EC0();

  if (v13 >> 62)
  {
LABEL_30:
    v14 = sub_21EAA9380();
    if (v14)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
LABEL_6:
      v35 = v8;
      v36 = a4;
      v38 = v11;
      v39 = v10;
      v10 = 0;
      v8 = (v13 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        if ((v13 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x223D67210](v10, v13);
        }

        else
        {
          if (v10 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_29;
          }

          v15 = *(v13 + 8 * v10 + 32);
        }

        v16 = v15;
        v11 = (v10 + 1);
        if (__OFADD__(v10, 1))
        {
          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

        type metadata accessor for IconListFolderView.IconListView();
        v17 = swift_dynamicCastClass();
        if (v17)
        {
          v18 = v17;
          v19 = [v17 coordinateForIcon_];
          a4 = v20;
          if ((sub_21EAA9030() & 1) == 0)
          {
            break;
          }
        }

        ++v10;
        if (v11 == v14)
        {

          swift_unknownObjectRelease();
          goto LABEL_32;
        }
      }

      if (v37)
      {
        v21 = v37;
        v22 = sub_21EA900C4(v21);
        v24 = v36;
        if (v25)
        {
          v26 = sub_21EAA9040();
        }

        else
        {
          v26 = [v18 coordinateAtPoint_];
        }

        v30 = v26;
        v31 = v27;
        v29 = v38;
        v28 = v39;
        v32 = sub_21EAA9030();

        if ((v32 & 1) == 0)
        {
          v19 = v30;
          a4 = v31;
        }
      }

      else
      {
        v29 = v38;
        v28 = v39;
        v24 = v36;
      }

      v40 = [v35 icon];
      if (v40)
      {
        [v28 orientation];
        v33 = [v40 gridSizeClass];
        CCUIGridSizeClassForSBHIconGridSizeClass();

        v34 = sub_21EAA9010();
        (*(v24 + 16))(v24, v19, a4, v34);

        swift_unknownObjectRelease();

        return;
      }

LABEL_37:
      __break(1u);
      return;
    }
  }

  swift_unknownObjectRelease();
LABEL_32:
}

uint64_t sub_21EA848EC(uint64_t a1, char *a2, void *a3, void *a4, void *a5)
{
  v21 = a5;
  v9 = a1 + 56;
  v10 = 1 << *(a1 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a1 + 56);
  v13 = (v10 + 63) >> 6;

  v15 = 0;
  if (v12)
  {
    while (1)
    {
      v16 = v15;
LABEL_8:
      v17 = (*(a1 + 48) + ((v16 << 10) | (16 * __clz(__rbit64(v12)))));
      v18 = v17[1];
      v20[0] = *v17;
      v20[1] = v18;

      sub_21EA81024(v20, a2, a3, a4, v21);
      if (v5)
      {
        break;
      }

      v12 &= v12 - 1;

      v15 = v16;
      if (!v12)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v16 >= v13)
      {
      }

      v12 = *(v9 + 8 * v16);
      ++v15;
      if (v12)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

void _s15ControlCenterUI20PagingViewControllerC022contentModuleContainereF0_016willOpenExpandedH0ySo011CCUIContenthieF0C_So0mH0_ptF_0(void *a1)
{
  *(v1 + OBJC_IVAR___CCUIPagingViewController_isSuppressingUpdatesToSupportedSizesForAccessibility) = 1;
  sub_21EA7867C();
  dispatch_group_enter(*(v1 + OBJC_IVAR___CCUIPagingViewController_expandedViewControllersDispatchGroup));
  [*(v1 + OBJC_IVAR___CCUIPagingViewController_expandedViewControllers) addObject_];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong pagingViewController:v1 willExpand:a1];
    swift_unknownObjectRelease();
  }

  sub_21EA75610(1, a1);
}

id _s15ControlCenterUI20PagingViewControllerC022contentModuleContainereF0_016didCloseExpandedH0ySo011CCUIContenthieF0C_So0mH0_ptF_0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDD710);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v17 - v5;
  v7 = *&v1[OBJC_IVAR___CCUIPagingViewController_expandedViewControllers];
  [v7 removeObject_];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong pagingViewController:v1 didClose:a1];
    swift_unknownObjectRelease();
  }

  v9 = _s15ControlCenterUI20PagingViewControllerC017compactModeSourceE03forSo6UIViewCSgSo026CCUIContentModuleContainereF0C_tF_0(a1);
  if (v9)
  {
    v10 = v9;
    [v9 setNeedsLayout];
  }

  dispatch_group_leave(*&v1[OBJC_IVAR___CCUIPagingViewController_expandedViewControllersDispatchGroup]);
  result = [v7 count];
  if (!result)
  {
    v12 = sub_21EAA8F40();
    (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
    sub_21EAA8F20();
    v13 = v1;
    v14 = sub_21EAA8F10();
    v15 = swift_allocObject();
    v16 = MEMORY[0x277D85700];
    v15[2] = v14;
    v15[3] = v16;
    v15[4] = v13;
    sub_21EA68DF8(0, 0, v6, &unk_21EAB71B8, v15);
  }

  return result;
}

uint64_t sub_21EA84CF0()
{
  v0 = swift_dynamicCastObjCProtocolConditional();
  if (!v0)
  {
    goto LABEL_8;
  }

  v1 = v0;
  if (([v0 respondsToSelector_] & 1) == 0)
  {
    goto LABEL_8;
  }

  swift_unknownObjectRetain();
  v2 = [v1 uniqueIdentifier];
  v3 = sub_21EAA8E00();
  v5 = v4;

  v6 = [v1 containerBundleIdentifier];
  if (!v6)
  {
    swift_unknownObjectRelease();

LABEL_8:
    v15 = 0;
    return v15 & 1;
  }

  v7 = v6;
  v8 = sub_21EAA8E00();
  v10 = v9;

  swift_getObjectType();
  v11._countAndFlagsBits = v8;
  v11._object = v10;
  v12._countAndFlagsBits = v3;
  v12._object = v5;
  v13 = ControlIntentStorage.intent(bundleIdentifier:dataSourceIdentifier:)(v11, v12);

  if (!v13)
  {
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  sub_21EA5F54C();
  v15 = v14;
  swift_unknownObjectRelease();

  return v15 & 1;
}

id sub_21EA84E48(id a1)
{
  [v1 loadViewIfNeeded];
  result = *&v1[OBJC_IVAR___CCUIPagingViewController___rootFolderController];
  if (result)
  {
    v4 = [result folderView];
    v5 = [v4 window];

    if (v5)
    {
      v6 = [v5 windowScene];

      if (v6)
      {
        if (v6 == a1)
        {
          v7 = OBJC_IVAR___CCUIPagingViewController_controlDragWindow;
          v5 = *&v1[OBJC_IVAR___CCUIPagingViewController_controlDragWindow];
          if (!v5)
          {
            v5 = [objc_allocWithZone(type metadata accessor for ControlDragWindow()) initWithWindowScene_];

            v6 = *&v1[v7];
            *&v1[v7] = v5;
          }

          v8 = v5;
        }

        else
        {
          v5 = 0;
        }
      }

      else
      {
        return 0;
      }
    }

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_21EA84F58(void *a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(type metadata accessor for ControlIconDragPreview());
  v5 = a1;
  v6 = sub_21EA4AADC(v5);
  [v5 iconImageCenter];
  v8 = v7;
  v10 = v9;
  v11 = [v5 window];
  [v5 convertPoint:v11 toView:{v8, v10}];
  v13 = v12;
  v15 = v14;

  [v6 setCenter_];
  v16 = [v5 icon];
  if (v16)
  {
    v17 = v16;
    objc_opt_self();
    v18 = swift_dynamicCastObjCClass();
    if (v18 && [v18 activeDataSource])
    {
      v19 = swift_dynamicCastObjCProtocolConditional();
      if (v19 && (v20 = v19, ([v19 respondsToSelector_] & 1) != 0))
      {
        v21 = [v20 uniqueIdentifier];
        sub_21EAA8E00();

        v22 = [v20 containerBundleIdentifier];
        if (v22)
        {
          v23 = v22;
          v24 = *(v2 + OBJC_IVAR___CCUIPagingViewController_controlIntentStore);
          v25 = sub_21EAA8DC0();

          v26 = [v24 acquireIntentPersistenceAssertionWithBundleIdentifier:v23 dataSourceIdentifier:v25];

          swift_unknownObjectRelease();
          v27 = swift_allocObject();
          *(v27 + 16) = v26;
          v28 = &v6[OBJC_IVAR____TtC15ControlCenterUI22ControlIconDragPreview_onCleanUp];
          v29 = *&v6[OBJC_IVAR____TtC15ControlCenterUI22ControlIconDragPreview_onCleanUp];
          *v28 = sub_21EA879A4;
          v28[1] = v27;
          sub_21E9FFAF0(v29);
        }

        else
        {

          swift_unknownObjectRelease();
        }
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }

    else
    {
    }
  }

  return v6;
}

char *sub_21EA851F4(char *result)
{
  if (!result)
  {
    return result;
  }

  v2 = result;
  [v1 loadViewIfNeeded];
  v3 = OBJC_IVAR___CCUIPagingViewController___rootFolderController;
  result = *&v1[OBJC_IVAR___CCUIPagingViewController___rootFolderController];
  if (!result)
  {
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  result = [result isScrolling];
  if (result)
  {
    return result;
  }

  [v1 loadViewIfNeeded];
  result = *&v1[v3];
  if (!result)
  {
    goto LABEL_23;
  }

  result = [result contentVisibility];
  if (result)
  {
    return result;
  }

  [v1 loadViewIfNeeded];
  result = *&v1[v3];
  if (!result)
  {
    goto LABEL_24;
  }

  result = [result currentPageIndex];
  v4 = result;
  if (v2 != 2)
  {
    if (v2 != 1)
    {
      return result;
    }

    [v1 loadViewIfNeeded];
    result = *&v1[v3];
    if (result)
    {
      result = [result minimumPageIndex];
      if (result >= v4)
      {
        return result;
      }

      v5 = v4 - 1;
LABEL_18:
      [v1 loadViewIfNeeded];
      result = *&v1[v3];
      if (result)
      {

        return [result setCurrentPageIndex:v5 animated:1];
      }

LABEL_27:
      __break(1u);
      return result;
    }

    goto LABEL_25;
  }

  [v1 loadViewIfNeeded];
  result = *&v1[v3];
  if (!result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  result = [result maximumPageIndex];
  if (v4 >= result)
  {
    v5 = v4;
  }

  else
  {
    v5 = v4 + 1;
  }

  if (v4 < result)
  {
    goto LABEL_18;
  }

  return result;
}

void sub_21EA8536C(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR___CCUIPagingViewController_iconDragManager);
  if (!v4)
  {
    goto LABEL_42;
  }

  [v4 noteRootFolderDidMutate];
  v32 = MEMORY[0x277D84FA0];
  if (a1)
  {
    sub_21EA6D6A4(a1);
  }

  if (*(v30 + OBJC_IVAR___CCUIPagingViewController_isUpdatingSupportedSizesForAccessibility))
  {
    goto LABEL_8;
  }

  if ((v32 & 0xC000000000000001) == 0)
  {
    if (*(v32 + 16) < 1)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (sub_21EAA9380() >= 1)
  {
LABEL_7:
    v6 = OBJC_IVAR___CCUIPagingViewController_iconModel;
    swift_beginAccess();
    [*(v30 + v6) saveIconStateIfNeeded];
    sub_21EA787B4(0, v32);
  }

LABEL_8:
  if (!a2)
  {
LABEL_38:
    sub_21EA75F18();

    return;
  }

  if ((a2 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_21EAA9370();
    sub_21E9F8880(0, &qword_28125B730);
    sub_21E9FBE14(&qword_27CEDD6E0, &qword_28125B730);
    sub_21EAA8F90();
    a2 = v33;
    v7 = v34;
    v9 = v35;
    v8 = v36;
    v10 = v37;
  }

  else
  {
    v11 = -1 << *(a2 + 32);
    v7 = a2 + 56;
    v9 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(a2 + 56);

    v8 = 0;
  }

  v14 = (v9 + 64) >> 6;
  while (a2 < 0)
  {
    if (!sub_21EAA93A0() || (sub_21E9F8880(0, &qword_28125B730), swift_dynamicCast(), v19 = v31, v17 = v8, v18 = v10, !v31))
    {
LABEL_37:
      sub_21E9FBFD4();
      goto LABEL_38;
    }

LABEL_26:
    objc_opt_self();
    v20 = swift_dynamicCastObjCClass();
    if (v20 && [v20 activeDataSource])
    {
      v21 = swift_dynamicCastObjCProtocolConditional();
      if (v21)
      {
        v22 = v21;
        swift_getObjectType();
        if ([v22 respondsToSelector_])
        {
          v29 = v9;
          v23 = [v22 uniqueIdentifier];
          sub_21EAA8E00();

          v24 = [v22 containerBundleIdentifier];
          if (v24)
          {
            v25 = v24;
            v28 = *(v30 + OBJC_IVAR___CCUIPagingViewController_controlIntentStore);
            v26 = sub_21EAA8DC0();

            [v28 deleteIntentWithBundleIdentifier:v25 dataSourceIdentifier:v26];
          }

          else
          {
          }

          v9 = v29;
        }

        v27 = *(v30 + OBJC_IVAR___CCUIPagingViewController_iconImageViewControllerCache);
        swift_unknownObjectRetain();
        sub_21EA58BD0(v22, v27);

        swift_unknownObjectRelease_n();
      }

      else
      {

        swift_unknownObjectRelease();
      }

      v8 = v17;
      v10 = v18;
    }

    else
    {

      v8 = v17;
      v10 = v18;
    }
  }

  v15 = v8;
  v16 = v10;
  v17 = v8;
  if (v10)
  {
LABEL_22:
    v18 = (v16 - 1) & v16;
    v19 = *(*(a2 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));
    if (!v19)
    {
      goto LABEL_37;
    }

    goto LABEL_26;
  }

  while (1)
  {
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v17 >= v14)
    {
      goto LABEL_37;
    }

    v16 = *(v7 + 8 * v17);
    ++v15;
    if (v16)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
}

id sub_21EA857BC(void *a1, id a2)
{
  v3 = v2;
  if (a2)
  {
    v5 = a2;
    if (qword_27CEDBBD8 != -1)
    {
      swift_once();
    }

    v6 = sub_21EAA8790();
    __swift_project_value_buffer(v6, qword_27CEDC720);
    v7 = a2;
    v8 = sub_21EAA8760();
    v9 = sub_21EAA8FE0();

    if (!os_log_type_enabled(v8, v9))
    {

      goto LABEL_11;
    }

    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = a2;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_21E9F5000, v8, v9, "Controls gallery returned an error: %@", v10, 0xCu);
    sub_21EA488A0(v11, &unk_27CEDCC30);
    MEMORY[0x223D68580](v11, -1, -1);
    MEMORY[0x223D68580](v10, -1, -1);

    goto LABEL_6;
  }

  if (!a1)
  {
    if (qword_27CEDBBD8 != -1)
    {
      swift_once();
    }

    v22 = sub_21EAA8790();
    __swift_project_value_buffer(v22, qword_27CEDC720);
    v8 = sub_21EAA8760();
    v23 = sub_21EAA8FE0();
    if (os_log_type_enabled(v8, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_21E9F5000, v8, v23, "Controls gallery returned nil control without an error", v24, 2u);
      MEMORY[0x223D68580](v24, -1, -1);
    }

LABEL_6:

    goto LABEL_11;
  }

  v14 = a1;
  result = [v3 loadViewIfNeeded];
  v16 = *&v3[OBJC_IVAR___CCUIPagingViewController___rootFolderController];
  if (!v16)
  {
    __break(1u);
    return result;
  }

  v17 = v16;
  v18 = [v14 control];
  v19 = *&v3[OBJC_IVAR___CCUIPagingViewController_controlIntentStore];
  v20 = swift_allocObject();
  *(v20 + 16) = v14;
  v21 = v14;
  sub_21EA5B20C(v18, v19, sub_21EA8799C, v20);

LABEL_11:

  return [v3 dismissViewControllerAnimated:1 completion:0];
}

void *_s15ControlCenterUI20PagingViewControllerC015controlsGalleryeF11WillPresentyySo013CCUISControlsheF0CF_0()
{
  sub_21EA73CF8(0xD000000000000013, 0x800000021EABE5A0);
  [v0 loadViewIfNeeded];
  result = *&v0[OBJC_IVAR___CCUIPagingViewController___rootFolderController];
  if (result)
  {
    v2 = [result folderView];
    [v2 setSuppressesEditingStateForListViews:1 animated:1];

    v3 = sub_21E9F8880(0, &unk_28125B720);
    MEMORY[0x28223BE20](v3);
    return sub_21EAA91F0();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *_s15ControlCenterUI20PagingViewControllerC015controlsGalleryeF11WillDismissyySo013CCUISControlsheF0CF_0()
{
  [objc_opt_self() resetEditingBorderPulseAnimationStartTime];
  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceIdiom];

  [v0 loadViewIfNeeded];
  result = *&v0[OBJC_IVAR___CCUIPagingViewController___rootFolderController];
  if (result)
  {
    v4 = [result folderView];
    [v4 setSuppressesEditingStateForListViews:0 animated:v2 != 0];

    v5 = sub_21E9F8880(0, &unk_28125B720);
    MEMORY[0x28223BE20](v5);
    return sub_21EAA91F0();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _s15ControlCenterUI20PagingViewControllerC015controlsGalleryeF10DidDismissyySo013CCUISControlsheF0CF_0()
{
  sub_21EA73E04(0xD000000000000013, 0x800000021EABE5A0);
  v1 = OBJC_IVAR___CCUIPagingViewController_controlsGalleryModuleInstanceUniqueIdentifiers;
  v2 = *(v0 + OBJC_IVAR___CCUIPagingViewController_controlsGalleryModuleInstanceUniqueIdentifiers);
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      v4 = *(v0 + OBJC_IVAR___CCUIPagingViewController_moduleInstanceManager);

      v5 = v2 + 40;
      do
      {

        v6 = sub_21EAA8DC0();

        [v4 removeModuleWithUniqueIdentifier_];

        v5 += 16;
        --v3;
      }

      while (v3);
    }
  }

  *(v0 + v1) = 0;
}

id sub_21EA85E30(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEDCFF0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v70 - v8;
  v10 = sub_21EAA8530();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a1 activeDataSource];
  if (!v15)
  {
    goto LABEL_21;
  }

  v16 = v15;
  v77 = v10;
  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (!v17)
  {
    swift_unknownObjectRelease();
LABEL_21:
    v46 = [objc_opt_self() systemPinkColor];
    v47 = type metadata accessor for ColorViewController();
    v48 = objc_allocWithZone(v47);
    v49 = &v48[OBJC_IVAR____TtC15ControlCenterUI19ColorViewController_iconImageInfo];
    *v49 = 0u;
    v49[1] = 0u;
    v50 = &v48[OBJC_IVAR____TtC15ControlCenterUI19ColorViewController_visibleBounds];
    v50->i64[0] = 0;
    v50->i64[1] = 0;
    v50[1] = vdupq_n_s64(0x4049000000000000uLL);
    *&v48[OBJC_IVAR____TtC15ControlCenterUI19ColorViewController_continuousCornerRadius] = 0;
    v48[OBJC_IVAR____TtC15ControlCenterUI19ColorViewController_showsSquareCorners] = 1;
    *&v48[OBJC_IVAR____TtC15ControlCenterUI19ColorViewController_color] = v46;
    v81.receiver = v48;
    v81.super_class = v47;
    return objc_msgSendSuper2(&v81, sel_initWithNibName_bundle_, 0, 0);
  }

  v18 = v17;
  v75 = v14;
  v76 = v16;
  v72 = a3;
  v73 = a1;
  v74 = a2;
  v78 = v11;
  v19 = OBJC_IVAR___CCUIPagingViewController_controlsGalleryModuleInstanceUniqueIdentifiers;
  if (*(v3 + OBJC_IVAR___CCUIPagingViewController_controlsGalleryModuleInstanceUniqueIdentifiers))
  {
    v20 = *(v3 + OBJC_IVAR___CCUIPagingViewController_controlsGalleryModuleInstanceUniqueIdentifiers);
  }

  else
  {
    v20 = MEMORY[0x277D84F90];
  }

  swift_bridgeObjectRetain_n();
  v21 = [v18 uniqueIdentifier];
  v22 = sub_21EAA8E00();
  v24 = v23;

  v80[0] = v22;
  v80[1] = v24;
  MEMORY[0x28223BE20](v25);
  *(&v70 - 2) = v80;
  LOBYTE(v21) = sub_21EA68AE8(sub_21EA880B8, (&v70 - 4), v20);

  if ((v21 & 1) == 0)
  {
    v26 = [v18 uniqueIdentifier];
    v27 = sub_21EAA8E00();
    v29 = v28;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_21EA48368(0, *(v20 + 2) + 1, 1, v20);
    }

    v31 = *(v20 + 2);
    v30 = *(v20 + 3);
    if (v31 >= v30 >> 1)
    {
      v20 = sub_21EA48368((v30 > 1), v31 + 1, 1, v20);
    }

    *(v20 + 2) = v31 + 1;
    v32 = &v20[16 * v31];
    *(v32 + 4) = v27;
    *(v32 + 5) = v29;
  }

  *(v3 + v19) = v20;

  v33 = [v18 moduleIdentifier];
  v34 = v33;
  v35 = v33;
  if (!v33)
  {
    sub_21EAA8E00();
    v35 = sub_21EAA8DC0();

    sub_21EAA8E00();
    v34 = sub_21EAA8DC0();
  }

  v36 = *(v3 + OBJC_IVAR___CCUIPagingViewController_moduleInstanceManager);
  v37 = v33;
  v38 = [v18 &selRef_startedTest_];
  if (!v38)
  {
    sub_21EAA8E00();
    v38 = sub_21EAA8DC0();
  }

  v39 = [v36 obtainModuleWithBundleIdentifier:v35 uniqueIdentifier:v38];

  if (v39)
  {
    v71 = v39;
    v40 = [v39 module];
    v41 = [v18 &selRef_startedTest_];
    sub_21EAA8E00();

    sub_21EAA84D0();

    v43 = v77;
    v42 = v78;
    v44 = *(v78 + 48);
    if (v44(v9, 1, v77) == 1)
    {
      v45 = v75;
      sub_21EAA8520();
      if (v44(v9, 1, v43) != 1)
      {
        sub_21EA488A0(v9, &unk_27CEDCFF0);
      }
    }

    else
    {
      v45 = v75;
      (*(v42 + 32))(v75, v9, v43);
    }

    v59 = objc_opt_self();
    swift_unknownObjectRetain();
    v60 = [v59 defaultControlCenterPresentationContext];
    v61 = objc_allocWithZone(CCUIContentModuleContainerViewController);
    v62 = sub_21EAA84F0();
    v63 = [v61 initWithModuleIdentifier:v34 uniqueIdentifier:v62 contentModule:v40 presentationContext:v60 contentRenderingMode:1];
    swift_unknownObjectRelease();

    [v63 setContentMetrics_];
    v64 = [v73 gridSizeClass];
    v65 = CCUIGridSizeClassForSBHIconGridSizeClass();

    [v63 setGridSizeClass_];
    [v63 setAllowsAutomaticForwardingOfAppearanceMethods_];
    [v63 setWantsSubduedBackground_];
    [v63 redirectTapsWithAction_];
    v66 = [v63 contentViewController];
    if ([v66 respondsToSelector_])
    {
      v67 = [v66 wantsConfigurationIntent];
      v68 = v78;
      if (v67)
      {
        result = [v66 respondsToSelector_];
        if (result)
        {
          v69 = [v66 defaultConfigurationIntent];

          [v66 setConfigurationIntent_];
          swift_unknownObjectRelease();

          swift_unknownObjectRelease();
          (*(v68 + 8))(v75, v43);
          return v63;
        }

        else
        {
          __break(1u);
        }
      }

      else
      {
        (*(v78 + 8))(v75, v43);

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        return v63;
      }
    }

    else
    {
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      (*(v78 + 8))(v45, v43);

      return v63;
    }
  }

  else
  {

    v52 = [objc_opt_self() systemCyanColor];
    v53 = type metadata accessor for ColorViewController();
    v54 = objc_allocWithZone(v53);
    v55 = &v54[OBJC_IVAR____TtC15ControlCenterUI19ColorViewController_iconImageInfo];
    *v55 = 0u;
    v55[1] = 0u;
    v56 = &v54[OBJC_IVAR____TtC15ControlCenterUI19ColorViewController_visibleBounds];
    v56->i64[0] = 0;
    v56->i64[1] = 0;
    v56[1] = vdupq_n_s64(0x4049000000000000uLL);
    *&v54[OBJC_IVAR____TtC15ControlCenterUI19ColorViewController_continuousCornerRadius] = 0;
    v54[OBJC_IVAR____TtC15ControlCenterUI19ColorViewController_showsSquareCorners] = 1;
    *&v54[OBJC_IVAR____TtC15ControlCenterUI19ColorViewController_color] = v52;
    v79.receiver = v54;
    v79.super_class = v53;
    v57 = v52;
    v58 = objc_msgSendSuper2(&v79, sel_initWithNibName_bundle_, 0, 0);

    swift_unknownObjectRelease();
    return v58;
  }

  return result;
}

id sub_21EA866FC(void *a1)
{
  v2 = v1;
  v3 = [a1 copyWithUniqueLeafIdentifier];
  if ([v3 activeDataSource])
  {
    v4 = swift_dynamicCastObjCProtocolConditional();
    if (v4)
    {
      v5 = v4;
      [v3 addIconDataSource_];
      [v3 removeIconDataSource_];
      if ([v5 respondsToSelector_])
      {
        v6 = [v5 uniqueIdentifier];
        sub_21EAA8E00();

        v7 = [v5 containerBundleIdentifier];
        if (v7)
        {
          v8 = v7;
          v9 = *&v1[OBJC_IVAR___CCUIPagingViewController_controlIntentStore];
          v10 = sub_21EAA8DC0();

          [v9 deleteIntentWithBundleIdentifier:v8 dataSourceIdentifier:v10];
        }

        else
        {
        }
      }

      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  result = [v1 loadViewIfNeeded];
  v12 = *&v1[OBJC_IVAR___CCUIPagingViewController___rootFolderController];
  if (v12)
  {
    v13 = v12;
    sub_21EA5B4E8(v3, sub_21EA81C38, 0);

    return [v2 dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21EA86908(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21EAA8CD0();
  v18 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_21EAA8D10();
  v9 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21E9F8880(0, &qword_28125B7F0);
  v12 = sub_21EAA90C0();
  v13 = swift_allocObject();
  *(v13 + 16) = v3;
  aBlock[4] = a2;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21EA87FF0;
  aBlock[3] = a3;
  v14 = _Block_copy(aBlock);
  v15 = v3;

  sub_21EAA8CF0();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_21EA87D30(&qword_28125B890, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEDCC40);
  sub_21EA87D78(&qword_28125B860, &unk_27CEDCC40);
  sub_21EAA9340();
  MEMORY[0x223D66E90](0, v11, v8, v14);
  _Block_release(v14);

  (*(v18 + 8))(v8, v6);
  return (*(v9 + 8))(v11, v17);
}

uint64_t keypath_getTm@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_21EA87870(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v9 = *(v4 + 16);
  swift_getObjectType();

  return sub_21EA83EC4(a1, a2, a3, a4, v9);
}

uint64_t sub_21EA87910(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_21EAA9530() & 1;
  }
}

id sub_21EA8796C()
{
  result = *(*(v0 + 16) + OBJC_IVAR___CCUIPagingViewController_addButton);
  if (result)
  {
    return [result setEnabled_];
  }

  __break(1u);
  return result;
}

uint64_t sub_21EA879E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21EA87A98;

  return sub_21EA7BFBC(a1, v4, v5, v6);
}

uint64_t sub_21EA87A98()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_21EA87B8C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21EA87FF8;

  return sub_21EA822A8(a1, v4);
}

uint64_t sub_21EA87C44(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21EA87A98;

  return sub_21EA822A8(a1, v4);
}

uint64_t sub_21EA87D30(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21EA87D78(unint64_t *a1, uint64_t *a2)
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

unint64_t sub_21EA87DF0()
{
  result = qword_28125BBF0;
  if (!qword_28125BBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28125BBF0);
  }

  return result;
}

uint64_t objectdestroy_362Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21EA87E98(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21EA87FF8;

  return sub_21EA68CF4(a1, v4, v5, v6);
}

Swift::Void __swiftcall SBIconView.applyStretchScale(_:)(CGPoint a1)
{
  y = a1.y;
  x = a1.x;
  v4 = [v1 contentContainerView];
  [v4 transform];
  CGAffineTransformDecompose(&v5, &transform);
  transform.a = x;
  transform.b = y;
  *&transform.c = *&v5.c;
  *&transform.tx = *&v5.tx;
  CGAffineTransformMakeWithComponents(&v5, &transform);
  transform = v5;
  [v4 setTransform_];
}

void sub_21EA881A0(void *a1, CGFloat a2, CGFloat a3)
{
  v5 = a1;
  v6 = [v5 contentContainerView];
  [v6 transform];
  CGAffineTransformDecompose(&v7, &transform);
  transform.a = a2;
  transform.b = a3;
  *&transform.c = *&v7.c;
  *&transform.tx = *&v7.tx;
  CGAffineTransformMakeWithComponents(&v7, &transform);
  transform = v7;
  [v6 setTransform_];
}

Swift::Void __swiftcall SBIconView.applyStretchTranslation(_:)(CGVector a1)
{
  dy = a1.dy;
  dx = a1.dx;
  v4 = [v1 contentContainerView];
  [v4 transform];
  CGAffineTransformDecompose(&v5, &transform);
  *&transform.a = *&v5.a;
  *&transform.c = *&v5.c;
  transform.tx = dx;
  transform.ty = dy;
  CGAffineTransformMakeWithComponents(&v5, &transform);
  transform = v5;
  [v4 setTransform_];
}

void sub_21EA88320(void *a1, CGFloat a2, CGFloat a3)
{
  v5 = a1;
  v6 = [v5 contentContainerView];
  [v6 transform];
  CGAffineTransformDecompose(&v7, &transform);
  *&transform.a = *&v7.a;
  *&transform.c = *&v7.c;
  transform.tx = a2;
  transform.ty = a3;
  CGAffineTransformMakeWithComponents(&v7, &transform);
  transform = v7;
  [v6 setTransform_];
}

void sub_21EA884F8()
{
  v1 = OBJC_IVAR___CCUISystemControlsCoordinator_userInterfaceStyleMode;
  if (!*(v0 + OBJC_IVAR___CCUISystemControlsCoordinator_userInterfaceStyleMode))
  {
    v2 = [objc_allocWithZone(MEMORY[0x277D777F8]) initWithDelegate_];
    v3 = *(v0 + v1);
    *(v0 + v1) = v2;
  }

  v4 = OBJC_IVAR___CCUISystemControlsCoordinator_silentModeObservation;
  if (!*(v0 + OBJC_IVAR___CCUISystemControlsCoordinator_silentModeObservation))
  {
    v5 = *(v0 + OBJC_IVAR___CCUISystemControlsCoordinator_systemHost);
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v9[4] = sub_21EA88AE4;
    v9[5] = v6;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 1107296256;
    v9[2] = sub_21EA88694;
    v9[3] = &block_descriptor_9;
    v7 = _Block_copy(v9);

    v8 = [v5 observeSilentModeWithBlock_];
    _Block_release(v7);
    *(v0 + v4) = v8;
    swift_unknownObjectRelease();
  }
}

void sub_21EA8863C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_21EA88890(1);
  }
}

uint64_t sub_21EA88694(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void *sub_21EA88730()
{
  v1 = *(v0 + OBJC_IVAR___CCUISystemControlsCoordinator_userInterfaceStyleMode);
  *(v0 + OBJC_IVAR___CCUISystemControlsCoordinator_userInterfaceStyleMode) = 0;

  v2 = OBJC_IVAR___CCUISystemControlsCoordinator_silentModeObservation;
  result = *(v0 + OBJC_IVAR___CCUISystemControlsCoordinator_silentModeObservation);
  if (result)
  {
    [result invalidate];
    *(v0 + v2) = 0;

    return swift_unknownObjectRelease();
  }

  return result;
}

void __swiftcall CCUISystemControlsCoordinator.init()(CCUISystemControlsCoordinator *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

uint64_t sub_21EA88890(char a1)
{
  v12 = 0;
  v13 = 0xE000000000000000;
  sub_21EAA9440();
  MEMORY[0x223D66C10](0xD000000000000037, 0x800000021EABE740);
  if (a1)
  {
    v2 = 0x6F4D746E656C6973;
  }

  else
  {
    v2 = 0x6E61726165707061;
  }

  if (a1)
  {
    v3 = 0xEA00000000006564;
  }

  else
  {
    v3 = 0xEA00000000006563;
  }

  MEMORY[0x223D66C10](v2, v3);

  v5 = v12;
  v4 = v13;
  if (qword_27CEDBBE8 != -1)
  {
    swift_once();
  }

  v6 = sub_21EAA8790();
  __swift_project_value_buffer(v6, qword_27CEDC750);

  v7 = sub_21EAA8760();
  v8 = sub_21EAA9000();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v12 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_21E9FE748(v5, v4, &v12);
    _os_log_impl(&dword_21E9F5000, v7, v8, "[SystemControlsCoordinator] reloading controls of kind: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x223D68580](v10, -1, -1);
    MEMORY[0x223D68580](v9, -1, -1);
  }

  sub_21EAA8D90();
  sub_21EAA8D80();
  sub_21EAA8D70();
}

unint64_t type metadata accessor for CCUISystemControlsCoordinator()
{
  result = qword_27CEDD7B0;
  if (!qword_27CEDD7B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CEDD7B0);
  }

  return result;
}

uint64_t sub_21EA88AEC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDD820);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v12 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEDCFF0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  sub_21EAA8520();
  v7 = sub_21EAA8530();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = OBJC_IVAR___CCUIAnalyticsEventsController_currentSessionIdentifier;
  swift_beginAccess();
  sub_21EA88CD0(v6, v0 + v8, &unk_27CEDCFF0);
  swift_endAccess();
  sub_21EAA84B0();
  v9 = sub_21EAA84C0();
  (*(*(v9 - 8) + 56))(v3, 0, 1, v9);
  v10 = OBJC_IVAR___CCUIAnalyticsEventsController_sessionBeginTime;
  swift_beginAccess();
  sub_21EA88CD0(v3, v0 + v10, &qword_27CEDD820);
  return swift_endAccess();
}

uint64_t sub_21EA88CD0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_21EA88F2C()
{
  v1 = v0;
  v35 = sub_21EAA8790();
  v2 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEDCFF0);
  MEMORY[0x28223BE20](v5 - 8);
  v36 = &v35 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDD820);
  MEMORY[0x28223BE20](v7 - 8);
  v37 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v35 - v10;
  v12 = sub_21EAA84C0();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR___CCUIAnalyticsEventsController_sessionBeginTime;
  swift_beginAccess();
  sub_21EA48990(v1 + v16, v11, &qword_27CEDD820);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_21EA488A0(v11, &qword_27CEDD820);
    sub_21EAA8780();
    v17 = sub_21EAA8760();
    v18 = sub_21EAA8FE0();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_21E9F5000, v17, v18, "Control Center invocation analytics ended with missing begin.", v19, 2u);
      MEMORY[0x223D68580](v19, -1, -1);
    }

    return (*(v2 + 8))(v4, v35);
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    v21 = swift_allocObject();
    sub_21EAA84A0();
    *(v21 + 16) = -v22;
    if (v22 < 0.0)
    {
      if (v22 <= -1.0)
      {
        v24 = v22 <= -10.0 || v22 > -1.0;
        v25 = round(-v22);
        v23 = round(v22 * -10.0) / 10.0;
        if (v24)
        {
          v23 = v25;
        }
      }

      else
      {
        v23 = round(v22 * -100.0) / 100.0;
      }

      *(v21 + 16) = v23;
      if (v23 > 0.0)
      {
        v26 = *MEMORY[0x277D66468];
        v27 = swift_allocObject();
        *(v27 + 16) = v21;
        *(v27 + 24) = v1;
        aBlock[4] = sub_21EA89D5C;
        aBlock[5] = v27;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_21EA89A18;
        aBlock[3] = &block_descriptor_10;
        v28 = _Block_copy(aBlock);
        v29 = v26;

        v30 = v1;

        MEMORY[0x223D67910](v29, v28);
        _Block_release(v28);
      }
    }

    (*(v13 + 8))(v15, v12);
    v31 = sub_21EAA8530();
    v32 = v36;
    (*(*(v31 - 8) + 56))(v36, 1, 1, v31);
    v33 = OBJC_IVAR___CCUIAnalyticsEventsController_currentSessionIdentifier;
    swift_beginAccess();
    sub_21EA88CD0(v32, v1 + v33, &unk_27CEDCFF0);
    swift_endAccess();
    v34 = v37;
    (*(v13 + 56))(v37, 1, 1, v12);
    swift_beginAccess();
    sub_21EA88CD0(v34, v1 + v16, &qword_27CEDD820);
    swift_endAccess();
  }
}

uint64_t sub_21EA894A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21EAA8530();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEDCFF0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v25 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEDDD30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21EAB7210;
  *(inited + 32) = sub_21EAA8E00();
  *(inited + 40) = v12;
  swift_beginAccess();
  v13 = *(a1 + 16);
  *(inited + 72) = MEMORY[0x277D839F8];
  *(inited + 48) = v13;
  *(inited + 80) = sub_21EAA8E00();
  *(inited + 88) = v14;
  v15 = OBJC_IVAR___CCUIAnalyticsEventsController_currentSessionIdentifier;
  swift_beginAccess();
  sub_21EA48990(a2 + v15, v10, &unk_27CEDCFF0);
  if ((*(v5 + 48))(v10, 1, v4))
  {
    sub_21EA488A0(v10, &unk_27CEDCFF0);
    v16 = (inited + 96);
    *(inited + 120) = MEMORY[0x277D837D0];
  }

  else
  {
    (*(v5 + 16))(v7, v10, v4);
    sub_21EA488A0(v10, &unk_27CEDCFF0);
    v17 = sub_21EAA84E0();
    v19 = v20;
    (*(v5 + 8))(v7, v4);
    v16 = (inited + 96);
    *(inited + 120) = MEMORY[0x277D837D0];
    if (v19)
    {
      goto LABEL_5;
    }
  }

  sub_21EAA8520();
  v17 = sub_21EAA84E0();
  v19 = v18;
  (*(v5 + 8))(v7, v4);
LABEL_5:
  *v16 = v17;
  *(inited + 104) = v19;
  v21 = sub_21EA515F8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDCC10);
  swift_arrayDestroy();
  sub_21EA897B4(v21);
  v23 = v22;

  return v23;
}

void sub_21EA897B4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDD828);
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

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  do
  {
LABEL_10:
    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v7;
  }

  while (!v5);
  while (1)
  {
    v12 = __clz(__rbit64(v5)) | (v11 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    sub_21E9FE6EC(*(a1 + 56) + 32 * v12, v26);
    *&v25 = v14;
    *(&v25 + 1) = v15;
    v23[2] = v25;
    v24[0] = v26[0];
    v24[1] = v26[1];
    v16 = v25;
    sub_21EA51D48(v24, v23);
    sub_21EA49E90();

    if (!swift_dynamicCast())
    {
      break;
    }

    v5 &= v5 - 1;
    v17 = sub_21EA49DF4(v16, *(&v16 + 1));
    if (v18)
    {
      *(v2[6] + 16 * v17) = v16;
      v8 = v17;

      v9 = v2[7];
      v10 = *(v9 + 8 * v8);
      *(v9 + 8 * v8) = v22;

      v7 = v11;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_22;
      }

      *(v2 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v17;
      *(v2[6] + 16 * v17) = v16;
      *(v2[7] + 8 * v17) = v22;
      v19 = v2[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_23;
      }

      v2[2] = v21;
      v7 = v11;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

LABEL_9:
    v11 = v7;
  }
}

id sub_21EA89A18(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_21EA49E90();
    v4 = sub_21EAA8DA0();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id AnalyticsEventsController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AnalyticsEventsController.init()()
{
  v1 = OBJC_IVAR___CCUIAnalyticsEventsController_currentSessionIdentifier;
  v2 = sub_21EAA8530();
  (*(*(v2 - 8) + 56))(&v0[v1], 1, 1, v2);
  v3 = OBJC_IVAR___CCUIAnalyticsEventsController_sessionBeginTime;
  v4 = sub_21EAA84C0();
  (*(*(v4 - 8) + 56))(&v0[v3], 1, 1, v4);
  v6.receiver = v0;
  v6.super_class = type metadata accessor for AnalyticsEventsController();
  return objc_msgSendSuper2(&v6, sel_init);
}

id AnalyticsEventsController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AnalyticsEventsController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for AnalyticsEventsController()
{
  result = qword_28125BA00;
  if (!qword_28125BA00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21EA89DB8()
{
  sub_21EA89F3C(319, &qword_28125BBE0, MEMORY[0x277CC95F0]);
  if (v0 <= 0x3F)
  {
    sub_21EA89F3C(319, &qword_28125BBE8, MEMORY[0x277CC9578]);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_21EA89F3C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21EAA9310();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_21EA89FE0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

id sub_21EA8A054(void *a1)
{
  v2 = v1;
  __asm { FMOV            V0.2D, #1.0 }

  *&v1[OBJC_IVAR____TtC15ControlCenterUI22IconListRootFolderView_pageContentScale] = _Q0;
  v1[OBJC_IVAR____TtC15ControlCenterUI22IconListRootFolderView_isTouchDown] = 0;
  v1[OBJC_IVAR____TtC15ControlCenterUI22IconListRootFolderView_isTouchDownFromPagingContinuation] = 0;
  v1[OBJC_IVAR____TtC15ControlCenterUI22IconListRootFolderView_isScrubbing] = 0;
  *&v1[OBJC_IVAR____TtC15ControlCenterUI22IconListRootFolderView_pagingDidChangeHandlers] = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR____TtC15ControlCenterUI22IconListRootFolderView_interactivePagingTouchContinuationTimer] = 0;
  v9 = &v1[OBJC_IVAR____TtC15ControlCenterUI22IconListRootFolderView_pageControlVerticalPanRange];
  *v9 = 0;
  *(v9 + 1) = 0;
  v9[16] = 1;
  v10 = &v1[OBJC_IVAR____TtC15ControlCenterUI22IconListRootFolderView_beginPageContentTranslation];
  *v10 = 0;
  *(v10 + 1) = 0;
  v10[16] = 1;
  *&v1[OBJC_IVAR____TtC15ControlCenterUI22IconListRootFolderView_iconListViewAlpha] = 0x3FF0000000000000;
  *&v1[OBJC_IVAR____TtC15ControlCenterUI22IconListRootFolderView_internalScale] = _Q0;
  *&v1[OBJC_IVAR____TtC15ControlCenterUI22IconListRootFolderView_scrubbingScale] = _Q0;
  *&v1[OBJC_IVAR____TtC15ControlCenterUI22IconListRootFolderView_iconListViewScale] = _Q0;
  v11 = &v1[OBJC_IVAR____TtC15ControlCenterUI22IconListRootFolderView_iconListViewTranslation];
  *v11 = 0;
  *(v11 + 1) = 0;
  *&v1[OBJC_IVAR____TtC15ControlCenterUI22IconListRootFolderView____lazy_storage___pagingDidChangeAnimationSettings] = 0;
  *&v1[OBJC_IVAR____TtC15ControlCenterUI22IconListRootFolderView____lazy_storage___scrubbingAnimationSettings] = 0;
  v12 = [a1 folder];
  v13 = objc_allocWithZone(type metadata accessor for FolderPageIndicatorProvider());
  v14 = sub_21EA4CA20(v12);
  *&v2[OBJC_IVAR____TtC15ControlCenterUI22IconListRootFolderView_pageIndicatorProvider] = v14;
  v15 = objc_allocWithZone(MEMORY[0x277D75708]);
  v16 = v14;
  v17 = [v15 initWithTarget:0 action:0];
  [v17 setMinimumPressDuration_];
  [v17 setAllowableMovement_];
  *&v2[OBJC_IVAR____TtC15ControlCenterUI22IconListRootFolderView_pageControlScrubbingGestureRecognizer] = v17;
  v54.receiver = v2;
  v54.super_class = type metadata accessor for IconListRootFolderView();
  v44 = v17;
  v18 = objc_msgSendSuper2(&v54, sel_initWithConfiguration_, a1);
  *&v16[OBJC_IVAR____TtC15ControlCenterUI27FolderPageIndicatorProvider_delegate + 8] = &off_28301A090;
  swift_unknownObjectWeakAssign();
  v19 = v18;
  v20 = [v19 pageControl];
  [v20 setDirection_];
  [v20 setBackgroundStyle_];
  [v20 setAutoresizingMask_];
  v21 = objc_opt_self();
  v22 = [v21 blackColor];
  v23 = [v22 colorWithAlphaComponent_];

  [v20 setPageIndicatorTintColor_];
  v24 = [objc_opt_self() configurationWithPointSize:6 weight:-1 scale:16.0];
  v25 = sub_21EAA8DC0();
  v26 = [objc_opt_self() _systemImageNamed_withConfiguration_];

  [v20 setPreferredIndicatorImage_];
  [v20 _setPreferredNumberOfVisibleIndicators_];
  [v20 _setCustomIndicatorSpacing_];
  [v20 _setAllowsDiscreteInteraction_];
  [v20 _setPrefersTargetPageForDiscreteInteraction_];
  LODWORD(v24) = [v19 _shouldReverseLayoutDirection];
  CGAffineTransformMakeScale(&v51, 2.333, 2.333);
  v27 = -18.0;
  if (v24)
  {
    v27 = 18.0;
  }

  CGAffineTransformTranslate(&v48, &v51, v27, 0.0);
  v51 = v48;
  [v20 _setActiveTransformForTouchedPage_];
  [v20 _activeTransformForTouchedPage];
  v28 = *&v51.a;
  v29 = *&v51.c;
  v30 = *&v51.tx;
  v51.a = 1.0;
  v51.b = 0.0;
  v51.c = 0.0;
  v51.d = 1.0;
  v51.tx = 0.0;
  v51.ty = 0.0;
  *&v48.a = v28;
  *&v48.c = v29;
  *&v48.tx = v30;
  _UITransformLerp();
  v51 = v45;
  [v20 _setTargetTransformForTouchedPage_];
  v31 = [v21 whiteColor];
  sub_21EA42D10();
  CAColorMatrixMakeColorSourceOver();

  v51 = v48;
  v52 = v49;
  v53 = v50;
  [v20 _setActivePageIndicatorVibrantColorMatrix_];
  v32 = [v21 whiteColor];
  v33 = [v32 colorWithAlphaComponent_];

  sub_21EA42D10();
  CAColorMatrixMakePlusL();

  v45 = v51;
  v46 = v52;
  v47 = v53;
  [v20 _setPageIndicatorVibrantColorMatrix_];
  v34 = [v21 blackColor];
  [v20 setPageIndicatorTintColor_];

  sub_21EA8DA4C();
  v35 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v36 = v19;
  v43 = v35;
  v37 = sub_21EAA9230();
  [v20 addAction:v37 forControlEvents:{1, 0, 0, 0, sub_21EA8DA98, v43}];

  v38 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v39 = sub_21EAA9230();
  [v20 addAction:v39 forControlEvents:{448, 0, 0, 0, sub_21EA8DAC8, v38}];

  v40 = v44;
  v41 = v36;
  [v40 addTarget:v41 action:sel_handlePageControlInteraction_];
  [v40 setDelegate_];

  [v40 setCancelsTouchesInView_];
  [v20 addGestureRecognizer_];

  return v41;
}

void sub_21EA8A7F4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    a3();
  }
}

void sub_21EA8A91C(CGFloat a1, CGFloat a2)
{
  v3 = (v2 + OBJC_IVAR____TtC15ControlCenterUI18IconListFolderView_additionalLayoutOffset);
  v4 = *(v2 + OBJC_IVAR____TtC15ControlCenterUI18IconListFolderView_additionalLayoutOffset);
  v5 = *(v2 + OBJC_IVAR____TtC15ControlCenterUI18IconListFolderView_additionalLayoutOffset + 8);
  *v3 = a1;
  v3[1] = a2;
  if (v4 != a1 || v5 != a2)
  {
    v7 = *(v2 + OBJC_IVAR____TtC15ControlCenterUI18IconListFolderView_contentView);
    if (a1 == 0.0 && a2 == 0.0)
    {
      *&v9.a = 0x3FF0000000000000uLL;
      v9.c = 0.0;
      v9.d = 1.0;
      *&v9.tx = 0uLL;
      [v7 setTransform_];
    }

    else
    {
      CGAffineTransformMakeTranslation(&v9, a1, a2);
      [v7 setTransform_];
    }
  }

  if (v4 != *v3 || v5 != v3[1])
  {
    sub_21EA8B44C();
  }
}

id sub_21EA8AADC(void *a1)
{
  v13.receiver = v1;
  v13.super_class = type metadata accessor for IconListRootFolderView();
  objc_msgSendSuper2(&v13, sel__didAddIconListView_, a1);
  v3 = *&v1[OBJC_IVAR____TtC15ControlCenterUI22IconListRootFolderView_iconListViewScale];
  v4 = *&v1[OBJC_IVAR____TtC15ControlCenterUI22IconListRootFolderView_iconListViewScale + 8];
  v5 = *&v1[OBJC_IVAR____TtC15ControlCenterUI22IconListRootFolderView_iconListViewTranslation];
  v6 = *&v1[OBJC_IVAR____TtC15ControlCenterUI22IconListRootFolderView_iconListViewTranslation + 8];
  if (BSPointEqualToPoint() && BSPointEqualToPoint())
  {
    v7 = xmmword_21EAB72A0;
    v8 = xmmword_21EAB72B0;
    v9 = 0uLL;
  }

  else
  {
    CGAffineTransformMakeScale(&v12, v3, v4);
    CGAffineTransformTranslate(&v11, &v12, v5, v6);
    v8 = *&v11.a;
    v7 = *&v11.c;
    v9 = *&v11.tx;
  }

  *&v12.a = v8;
  *&v12.c = v7;
  *&v12.tx = v9;
  return [a1 setTransform_];
}

void sub_21EA8AD9C(void *a1, void *a2, double a3, double a4)
{
  v5 = (v4 + *a1);
  v6 = *v5;
  v7 = v5[1];
  *v5 = a3;
  v5[1] = a4;
  if (v6 != a3 || v7 != a4)
  {
    sub_21EA8C7B4(*(v4 + *a2) * a3 * *(v4 + OBJC_IVAR____TtC15ControlCenterUI22IconListRootFolderView_scrubbingScale), *(v4 + *a2 + 8) * a4 * *(v4 + OBJC_IVAR____TtC15ControlCenterUI22IconListRootFolderView_scrubbingScale + 8));
  }
}

void sub_21EA8ADEC(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v8 = [v4 minimumPageIndex];
  if (__OFADD__(v8, a1))
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v8 <= &v8[a1])
  {
    v9 = &v8[a1];
  }

  else
  {
    v9 = v8;
  }

  v10 = [v4 maximumPageIndex];
  if (v10 < v9)
  {
    v9 = v10;
  }

  if (v9 != [v4 scrollAnimationTargetPageIndex])
  {
    v4[OBJC_IVAR____TtC15ControlCenterUI18IconListFolderView_isTrackingDrag] = 0;
    *&v4[OBJC_IVAR____TtC15ControlCenterUI18IconListFolderView_numOutstandingScrollAnimations] = 0;
    v11 = &v4[OBJC_IVAR____TtC15ControlCenterUI18IconListFolderView_animatedTargetContentOffset];
    *v11 = 0;
    v11[8] = 1;
    [v4 setCurrentPageIndex:v9 animated:0];
    if (a2)
    {
      v12 = [v4 currentIconListView];
      if (v12)
      {
        v13 = v12;
        v14 = objc_opt_self();
        v15 = swift_allocObject();
        *(v15 + 16) = a3 & 1;
        *(v15 + 24) = v4;
        *(v15 + 32) = v13;
        v16 = swift_allocObject();
        *(v16 + 16) = sub_21EA8DA1C;
        *(v16 + 24) = v15;
        v32 = sub_21EA8DB38;
        v33 = v16;
        v28 = MEMORY[0x277D85DD0];
        v29 = 1107296256;
        v30 = sub_21EA89FB8;
        v31 = &block_descriptor_185;
        v17 = _Block_copy(&v28);
        v18 = v4;
        v19 = v13;

        [v14 performWithoutAnimation_];
        _Block_release(v17);
        LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

        if ((v13 & 1) == 0)
        {
          v20 = swift_allocObject();
          *(v20 + 16) = v19;
          *(v20 + 24) = v18;
          v32 = sub_21EA8DA28;
          v33 = v20;
          v28 = MEMORY[0x277D85DD0];
          v29 = 1107296256;
          v30 = sub_21EA87FF0;
          v31 = &block_descriptor_191;
          v21 = _Block_copy(&v28);
          v22 = v18;
          v23 = v19;

          [v14 animateWithDuration:2 delay:v21 options:0 animations:0.15 completion:0.0];
          _Block_release(v21);
          v24 = swift_allocObject();
          *(v24 + 16) = v23;
          *(v24 + 24) = v22;
          v32 = sub_21EA8DA44;
          v33 = v24;
          v28 = MEMORY[0x277D85DD0];
          v29 = 1107296256;
          v30 = sub_21EA87FF0;
          v31 = &block_descriptor_197;
          v25 = _Block_copy(&v28);
          v26 = v22;
          v27 = v23;

          [v14 animateWithDuration:2 delay:v25 usingSpringWithDamping:0 initialSpringVelocity:0.85 options:0.0 animations:0.525 completion:0.0];
          _Block_release(v25);

          return;
        }

LABEL_14:
        __break(1u);
      }
    }
  }
}

id sub_21EA8B1CC(char a1, uint64_t a2, id a3)
{
  v5 = *(a2 + OBJC_IVAR____TtC15ControlCenterUI22IconListRootFolderView_iconListViewAlpha);
  if (v5 > 0.7)
  {
    v5 = 0.7;
  }

  v6 = 0.75;
  if ((a1 & 1) == 0)
  {
    v6 = 1.0;
  }

  v7 = v6 * v5;
  if (a1)
  {
    v8 = 0.9;
  }

  else
  {
    v8 = 1.0;
  }

  [a3 setAlpha_];
  v9 = *(a2 + OBJC_IVAR____TtC15ControlCenterUI22IconListRootFolderView_iconListViewScale);
  v10 = *(a2 + OBJC_IVAR____TtC15ControlCenterUI22IconListRootFolderView_iconListViewScale + 8);
  if (v9 > 0.95)
  {
    v9 = 0.95;
  }

  if (v10 > 0.95)
  {
    v10 = 0.95;
  }

  v11 = v8 * v9;
  v12 = v8 * v10;
  v13 = *(a2 + OBJC_IVAR____TtC15ControlCenterUI22IconListRootFolderView_iconListViewTranslation);
  v14 = *(a2 + OBJC_IVAR____TtC15ControlCenterUI22IconListRootFolderView_iconListViewTranslation + 8);
  CGAffineTransformMakeScale(&v17, v11, v12);
  CGAffineTransformTranslate(&v16, &v17, v13, v14);
  v17 = v16;
  return [a3 setTransform_];
}

id sub_21EA8B2E4(void *a1, uint64_t a2)
{
  v3 = *(a2 + OBJC_IVAR____TtC15ControlCenterUI22IconListRootFolderView_iconListViewScale);
  v4 = *(a2 + OBJC_IVAR____TtC15ControlCenterUI22IconListRootFolderView_iconListViewScale + 8);
  v5 = *(a2 + OBJC_IVAR____TtC15ControlCenterUI22IconListRootFolderView_iconListViewTranslation);
  v6 = *(a2 + OBJC_IVAR____TtC15ControlCenterUI22IconListRootFolderView_iconListViewTranslation + 8);
  if (BSPointEqualToPoint() && BSPointEqualToPoint())
  {
    v7 = xmmword_21EAB72A0;
    v8 = xmmword_21EAB72B0;
    v9 = 0uLL;
  }

  else
  {
    CGAffineTransformMakeScale(&v12, v3, v4);
    CGAffineTransformTranslate(&v11, &v12, v5, v6);
    v8 = *&v11.a;
    v7 = *&v11.c;
    v9 = *&v11.tx;
  }

  *&v12.a = v8;
  *&v12.c = v7;
  *&v12.tx = v9;
  return [a1 setTransform_];
}

void sub_21EA8B44C()
{
  [v0 bounds];
  rect = v1;
  v39 = v3;
  v40 = v2;
  v5 = v4;
  v6 = [v0 orientation];
  v7 = [v0 traitCollection];
  [v7 displayScale];
  v41 = v8;

  v9 = [v0 _shouldReverseLayoutDirection];
  v11 = *&v0[OBJC_IVAR____TtC15ControlCenterUI18IconListFolderView_additionalLayoutOffset];
  v10 = *&v0[OBJC_IVAR____TtC15ControlCenterUI18IconListFolderView_additionalLayoutOffset + 8];
  v12 = [v0 listLayoutProvider];
  v13 = [v0 iconLocation];
  v14 = [v12 layoutForIconLocation_];

  if (v14)
  {
    swift_unknownObjectRelease();
    [v14 layoutInsetsForOrientation_];
    v16 = v15;
    v18 = v17;
    UIEdgeInsetsAdd();
    v20 = v19;
    v21 = [v0 traitCollection];
    v22 = [v21 userInterfaceIdiom];

    if (v22 == 1)
    {
      sub_21E9FCCE8();
      v24 = v23 - v16 - v18;
      v25 = v5;
      v26 = rect;
    }

    else
    {
      v45.origin.x = rect;
      v45.size.height = v39;
      v45.origin.y = v40;
      v45.size.width = v5;
      *&v26 = CGRectInset(v45, 0.0, v20);
      v20 = v27;
    }

    v28 = v20;
    v46 = CGRectOffset(*&v26, v11, v10);
    x = v46.origin.x;
    y = v46.origin.y;
    width = v46.size.width;
    height = v46.size.height;
    v33 = [v0 pageControl];
    v34 = [v0 window];
    if (v34)
    {
      v35 = v34;
      [v34 safeAreaInsets];
    }

    UIInterfaceOrientationIsLandscape(v6);
    if (!v9)
    {
      v47.origin.x = x;
      v47.origin.y = y;
      v47.size.width = width;
      v47.size.height = height;
      CGRectGetMaxX(v47);
    }

    v36 = v33;
    v37 = [v36 numberOfPages];
    if (v37 >= 8)
    {
      v38 = 8;
    }

    else
    {
      v38 = v37;
    }

    [v36 sizeForNumberOfPages_];
    [v36 _customHorizontalPadding];
    v48.origin.x = x;
    v48.origin.y = y;
    v48.size.width = width;
    v48.size.height = height;
    CGRectGetHeight(v48);
    UIRectCenteredYInRectScale();
    recta = v36;
    BSRectWithSize();
    [recta setBounds_];
    [recta _setCustomVerticalPadding_];
    [recta _setCustomHorizontalPadding_];

    UIRectGetCenter();
    [recta setCenter_];
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

void sub_21EA8B85C()
{
  v1 = [v0 pageControl];
  v2 = *&v0[OBJC_IVAR____TtC15ControlCenterUI22IconListRootFolderView_pageIndicatorProvider];
  v3 = OBJC_IVAR____TtC15ControlCenterUI27FolderPageIndicatorProvider_indicatorTypes;
  swift_beginAccess();
  v4 = *(v2 + v3);

  v5 = [v1 numberOfPages];
  if ((v5 & 0x8000000000000000) != 0)
  {
LABEL_16:
    __break(1u);
  }

  else
  {
    v6 = v5;
    if (v5)
    {
      v7 = 0;
      v8 = *(v4 + 16);
      v9 = v4 + 32;
      do
      {
        if (v7 >= v8)
        {
          goto LABEL_4;
        }

        if (v7 >= *(v4 + 16))
        {
          __break(1u);
          goto LABEL_16;
        }

        v11 = *(v9 + v7);
        if (v11 > 2 && *(v9 + v7) > 4u && v11 == 5)
        {
LABEL_4:
          v10 = 0;
        }

        else
        {
          v12 = [objc_opt_self() configurationWithPointSize:6 weight:-1 scale:16.0];
          v13 = sub_21EAA8DC0();

          v10 = [objc_opt_self() _systemImageNamed_withConfiguration_];
        }

        [v1 setIndicatorImage:v10 forPage:v7];

        ++v7;
      }

      while (v6 != v7);
    }
  }
}

uint64_t sub_21EA8BAE0(uint64_t a1)
{
  v3 = 0x646578696DLL;
  v4 = *(v1 + OBJC_IVAR____TtC15ControlCenterUI22IconListRootFolderView_pageIndicatorProvider);
  v5 = OBJC_IVAR____TtC15ControlCenterUI27FolderPageIndicatorProvider_indicatorTypes;
  swift_beginAccess();
  if ((a1 & 0x8000000000000000) == 0)
  {
    v6 = *(v4 + v5);
    if (*(v6 + 16) > a1)
    {
      v7 = *(v6 + a1 + 32);
      if (v7 <= 2)
      {
        if (v7)
        {
          if (v7 == 1)
          {
            return 1701670760;
          }

          else
          {
            return 0x697463656E6E6F63;
          }
        }

        else
        {
          return 0x6979616C50776F6ELL;
        }
      }

      else if (v7 > 4)
      {
        if (v7 == 6)
        {
          return 0x7974706D65;
        }
      }

      else
      {
        if (v7 == 3)
        {
          v8 = 0x6F6D65527674;
        }

        else
        {
          v8 = 0x69726F766166;
        }

        return v8 & 0xFFFFFFFFFFFFLL | 0x6574000000000000;
      }
    }
  }

  return v3;
}

uint64_t sub_21EA8BC68(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ControlCenterUI22IconListRootFolderView_pagingDidChangeHandlers;
  swift_beginAccess();
  v3 = *(a1 + v2);
  v4 = *(v3 + 16);
  v5 = OBJC_IVAR____TtC15ControlCenterUI22IconListRootFolderView_isScrubbing;

  if (!v4)
  {
  }

  v7 = 0;
  v8 = v3 + 40;
  while (v7 < *(v3 + 16))
  {
    ++v7;
    v9 = *(v8 - 8);
    v10 = *(a1 + v5);

    v9(&v10);

    v8 += 16;
    if (v4 == v7)
    {
    }
  }

  __break(1u);
  return result;
}

void sub_21EA8BD38()
{
  v0[OBJC_IVAR____TtC15ControlCenterUI22IconListRootFolderView_isTouchDown] = 1;
  v1 = OBJC_IVAR____TtC15ControlCenterUI22IconListRootFolderView_interactivePagingTouchContinuationTimer;
  v2 = *&v0[OBJC_IVAR____TtC15ControlCenterUI22IconListRootFolderView_interactivePagingTouchContinuationTimer];
  if (v2)
  {
    if ([v2 isValid])
    {
      [*&v0[v1] invalidate];
      v3 = *&v0[v1];
      *&v0[v1] = 0;

      v0[OBJC_IVAR____TtC15ControlCenterUI22IconListRootFolderView_isTouchDownFromPagingContinuation] = 1;
      v4 = v0[OBJC_IVAR____TtC15ControlCenterUI22IconListRootFolderView_isScrubbing];
      v0[OBJC_IVAR____TtC15ControlCenterUI22IconListRootFolderView_isScrubbing] = 1;
      if ((v4 & 1) == 0)
      {
        v5 = objc_opt_self();
        v6 = sub_21EA8CDE8();
        v7 = swift_allocObject();
        *(v7 + 16) = v0;
        v10[4] = sub_21EA8DB64;
        v10[5] = v7;
        v10[0] = MEMORY[0x277D85DD0];
        v10[1] = 1107296256;
        v10[2] = sub_21EA87FF0;
        v10[3] = &block_descriptor_175;
        v8 = _Block_copy(v10);
        v9 = v0;

        [v5 sb:v6 animateWithSettings:3 mode:v8 animations:0 completion:?];
        _Block_release(v8);
      }
    }
  }

  sub_21EA8C984(1);
  sub_21EA8B44C();
}

void sub_21EA8BEB8()
{
  v0[OBJC_IVAR____TtC15ControlCenterUI22IconListRootFolderView_isTouchDown] = 0;
  v0[OBJC_IVAR____TtC15ControlCenterUI22IconListRootFolderView_isTouchDownFromPagingContinuation] = 0;
  v1 = v0[OBJC_IVAR____TtC15ControlCenterUI22IconListRootFolderView_isScrubbing];
  v0[OBJC_IVAR____TtC15ControlCenterUI22IconListRootFolderView_isScrubbing] = 0;
  if (v1 == 1)
  {
    v2 = objc_opt_self();
    v3 = sub_21EA8CDE8();
    v4 = swift_allocObject();
    *(v4 + 16) = v0;
    v7[4] = sub_21EA8DB64;
    v7[5] = v4;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 1107296256;
    v7[2] = sub_21EA87FF0;
    v7[3] = &block_descriptor_168;
    v5 = _Block_copy(v7);
    v6 = v0;

    [v2 sb:v3 animateWithSettings:3 mode:v5 animations:0 completion:?];
    _Block_release(v5);
  }

  sub_21EA8C984(1);
  sub_21EA8B44C();
}

void sub_21EA8BFF8(void *a1)
{
  [v1 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [a1 state];
  if ((v11 - 3) >= 3)
  {
    if (v11 == 2)
    {
      v22 = *&v1[OBJC_IVAR____TtC15ControlCenterUI22IconListRootFolderView_pageControlVerticalPanRange];
      v23 = *&v1[OBJC_IVAR____TtC15ControlCenterUI22IconListRootFolderView_pageControlVerticalPanRange + 8];
      if (v1[OBJC_IVAR____TtC15ControlCenterUI22IconListRootFolderView_pageControlVerticalPanRange + 16])
      {
        v23 = 0.0;
        v22 = 0.0;
      }

      rect_24 = v22;
      v58 = v23;
      if (v1[OBJC_IVAR____TtC15ControlCenterUI22IconListRootFolderView_beginPageContentTranslation + 16])
      {
        v24 = 0.0;
      }

      else
      {
        v24 = *&v1[OBJC_IVAR____TtC15ControlCenterUI22IconListRootFolderView_beginPageContentTranslation];
      }

      if (v1[OBJC_IVAR____TtC15ControlCenterUI22IconListRootFolderView_beginPageContentTranslation + 16])
      {
        v25 = 0.0;
      }

      else
      {
        v25 = *&v1[OBJC_IVAR____TtC15ControlCenterUI22IconListRootFolderView_beginPageContentTranslation + 8];
      }

      v59 = v25;
      v60 = v24;
      v26 = [v1 pageControl];
      [a1 _translationInView_];
      v28 = v27;

      rect_16 = v28;
      if (fabs(v28) > 16.0 && (v1[OBJC_IVAR____TtC15ControlCenterUI22IconListRootFolderView_isScrubbing] & 1) == 0)
      {
        v1[OBJC_IVAR____TtC15ControlCenterUI22IconListRootFolderView_isScrubbing] = 1;
        v29 = objc_opt_self();
        v30 = v1;
        v31 = sub_21EA8CDE8();
        v32 = swift_allocObject();
        *(v32 + 16) = v30;
        v65 = sub_21EA8DA14;
        v66 = v32;
        aBlock = MEMORY[0x277D85DD0];
        v62 = 1107296256;
        v63 = sub_21EA87FF0;
        v64 = &block_descriptor_161;
        v33 = _Block_copy(&aBlock);
        v30;

        [v29 sb:v31 animateWithSettings:3 mode:v33 animations:0 completion:?];
        _Block_release(v33);

        sub_21EA8C984(1);
        v1 = v30;
      }

      sub_21E9FCCE8();
      SBHSizeScaled();
      BSRectWithSize();
      UIRectGetCenter();
      BSRectCenteredAboutPoint();
      v71 = CGRectOffset(v70, v60, v59);
      x = v71.origin.x;
      recta = v71.origin.x;
      y = v71.origin.y;
      width = v71.size.width;
      height = v71.size.height;
      v71.origin.x = v4;
      v71.origin.y = v6;
      v71.size.width = v8;
      v71.size.height = v10;
      v72 = CGRectInset(v71, 0.0, 50.0);
      v77.origin.x = x;
      v77.origin.y = y;
      v77.size.width = width;
      v77.size.height = height;
      v73 = CGRectUnion(v72, v77);
      v38 = v73.origin.x;
      v39 = v73.origin.y;
      v40 = v73.size.width;
      v41 = v73.size.height;
      v73.origin.x = x;
      v73.origin.y = y;
      v73.size.width = width;
      v73.size.height = height;
      rect_8 = CGRectGetMinY(v73);
      v74.origin.x = v38;
      v74.origin.y = v39;
      v74.size.width = v40;
      v74.size.height = v41;
      MinY = CGRectGetMinY(v74);
      v75.origin.x = v38;
      v75.origin.y = v39;
      v75.size.width = v40;
      v75.size.height = v41;
      MaxY = CGRectGetMaxY(v75);
      v76.origin.x = recta;
      v76.origin.y = y;
      v76.size.width = width;
      v76.size.height = height;
      v44 = CGRectGetMaxY(v76);
      v45 = rect_8 - MinY;
      v46 = MaxY - v44;
      v47 = v58;
      if (rect_16 >= 0.0)
      {
        v45 = v46;
      }

      else
      {
        v47 = rect_24;
      }

      v48 = _UILerp(rect_16 / v47, v45);
      v49 = objc_opt_self();
      v50 = sub_21EA8CE88();
      v51 = swift_allocObject();
      *(v51 + 2) = v1;
      v51[3] = v60;
      v51[4] = v59;
      v51[5] = v48;
      v65 = sub_21EA8D9F8;
      v66 = v51;
      aBlock = MEMORY[0x277D85DD0];
      v62 = 1107296256;
      v63 = sub_21EA87FF0;
      v64 = &block_descriptor_155;
      v52 = _Block_copy(&aBlock);
      v53 = v1;

      [v49 sb:v50 animateWithSettings:5 mode:v52 animations:0 completion:?];
      _Block_release(v52);
    }

    else if (v11 == 1)
    {
      [a1 locationInView_];
      v15 = v14;
      v68.origin.x = v4;
      v68.origin.y = v6;
      v68.size.width = v8;
      v68.size.height = v10;
      v16 = v15 - CGRectGetMinY(v68);
      v69.origin.x = v4;
      v69.origin.y = v6;
      v69.size.width = v8;
      v69.size.height = v10;
      v17 = CGRectGetMaxY(v69);
      v18 = &v1[OBJC_IVAR____TtC15ControlCenterUI22IconListRootFolderView_pageControlVerticalPanRange];
      *v18 = v16;
      v18[1] = v17 - v15;
      *(v18 + 16) = 0;
      [v1 pageContentTranslation];
      v19 = &v1[OBJC_IVAR____TtC15ControlCenterUI22IconListRootFolderView_beginPageContentTranslation];
      *v19 = v20;
      *(v19 + 1) = v21;
      v19[16] = 0;
    }
  }

  else
  {
    v12 = &v1[OBJC_IVAR____TtC15ControlCenterUI22IconListRootFolderView_pageControlVerticalPanRange];
    *v12 = 0;
    *(v12 + 1) = 0;
    v12[16] = 1;
    v13 = &v1[OBJC_IVAR____TtC15ControlCenterUI22IconListRootFolderView_beginPageContentTranslation];
    *v13 = 0;
    *(v13 + 1) = 0;
    v13[16] = 1;
    if ((v1[OBJC_IVAR____TtC15ControlCenterUI22IconListRootFolderView_isTouchDown] & 1) == 0 && (v1[OBJC_IVAR____TtC15ControlCenterUI22IconListRootFolderView_isScrubbing] & 1) == 0)
    {
      [v1 setPageContentTranslation_];

      sub_21EA8C984(1);
    }
  }
}

uint64_t sub_21EA8C5E0(void *a1, double a2, uint64_t a3, void *a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  if (a4 && a4 == a1)
  {
    [a1 setAlpha_];
  }

  else
  {
    v9 = objc_opt_self();
    v10 = swift_allocObject();
    *(v10 + 16) = sub_21EA8D958;
    *(v10 + 24) = v7;
    v14[4] = sub_21EA8D96C;
    v14[5] = v10;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 1107296256;
    v14[2] = sub_21EA89FB8;
    v14[3] = &block_descriptor_115;
    v11 = _Block_copy(v14);
    v12 = a1;

    [v9 performWithoutAnimation_];
    _Block_release(v11);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

void sub_21EA8C7B4(CGFloat a1, CGFloat a2)
{
  v3 = &v2[OBJC_IVAR____TtC15ControlCenterUI22IconListRootFolderView_iconListViewScale];
  v4 = *&v2[OBJC_IVAR____TtC15ControlCenterUI22IconListRootFolderView_iconListViewScale];
  v5 = *&v2[OBJC_IVAR____TtC15ControlCenterUI22IconListRootFolderView_iconListViewScale + 8];
  *v3 = a1;
  v3[1] = a2;
  if (v4 != a1 || v5 != a2)
  {
    v7 = *&v2[OBJC_IVAR____TtC15ControlCenterUI22IconListRootFolderView_iconListViewTranslation];
    v8 = *&v2[OBJC_IVAR____TtC15ControlCenterUI22IconListRootFolderView_iconListViewTranslation + 8];
    if (BSPointEqualToPoint() && (tx = 0.0, BSPointEqualToPoint()))
    {
      v16 = xmmword_21EAB72A0;
      v15 = xmmword_21EAB72B0;
      ty = 0.0;
    }

    else
    {
      CGAffineTransformMakeScale(&aBlock, a1, a2);
      CGAffineTransformTranslate(&v17, &aBlock, v7, v8);
      v15 = *&v17.a;
      v16 = *&v17.c;
      tx = v17.tx;
      ty = v17.ty;
    }

    v13 = swift_allocObject();
    *(v13 + 16) = v15;
    *(v13 + 32) = v16;
    *(v13 + 48) = tx;
    *(v13 + 56) = ty;
    *&aBlock.tx = sub_21EA8DB7C;
    *&aBlock.ty = v13;
    *&aBlock.a = MEMORY[0x277D85DD0];
    *&aBlock.b = 1107296256;
    *&aBlock.c = sub_21EA89FE0;
    *&aBlock.d = &block_descriptor_149;
    v14 = _Block_copy(&aBlock);

    [v2 enumerateIconListViewsUsingBlock_];
    _Block_release(v14);
  }
}

void sub_21EA8C984(char a1)
{
  if (v1[OBJC_IVAR____TtC15ControlCenterUI22IconListRootFolderView_isScrubbing])
  {
    v2 = 0.8;
  }

  else
  {
    if (v1[OBJC_IVAR____TtC15ControlCenterUI22IconListRootFolderView_isTouchDown] != 1)
    {
      v3 = 0.0;
      v2 = 1.0;
      v4 = 0.0;
      v5 = 1.0;
      if (a1)
      {
        goto LABEL_6;
      }

      goto LABEL_8;
    }

    v2 = 0.95;
  }

  v3 = *&v1[OBJC_IVAR____TtC15ControlCenterUI22IconListRootFolderView_iconListViewTranslation];
  v4 = *&v1[OBJC_IVAR____TtC15ControlCenterUI22IconListRootFolderView_iconListViewTranslation + 8];
  v5 = 0.7;
  if (a1)
  {
LABEL_6:
    v6 = objc_opt_self();
    v7 = sub_21EA8CE88();
    v8 = swift_allocObject();
    *(v8 + 16) = v1;
    *(v8 + 24) = v2;
    *(v8 + 32) = v3;
    *(v8 + 40) = v4;
    *(v8 + 48) = v5;
    v22 = sub_21EA8D994;
    v23 = v8;
    v18 = MEMORY[0x277D85DD0];
    v19 = 1107296256;
    v20 = sub_21EA87FF0;
    v21 = &block_descriptor_128;
    v9 = _Block_copy(&v18);
    v10 = v1;

    [v6 sb:v7 animateWithSettings:3 mode:v9 animations:0 completion:?];
LABEL_15:
    _Block_release(v9);

    return;
  }

LABEL_8:
  v11 = &v1[OBJC_IVAR____TtC15ControlCenterUI22IconListRootFolderView_scrubbingScale];
  v12 = *&v1[OBJC_IVAR____TtC15ControlCenterUI22IconListRootFolderView_scrubbingScale];
  v13 = *&v1[OBJC_IVAR____TtC15ControlCenterUI22IconListRootFolderView_scrubbingScale + 8];
  *v11 = v2;
  v11[1] = v2;
  if (v12 != v2 || v13 != v2)
  {
    sub_21EA8C7B4(v2 * (*&v1[OBJC_IVAR____TtC15ControlCenterUI22IconListRootFolderView_pageContentScale] * *&v1[OBJC_IVAR____TtC15ControlCenterUI22IconListRootFolderView_internalScale]), v2 * (*&v1[OBJC_IVAR____TtC15ControlCenterUI22IconListRootFolderView_pageContentScale + 8] * *&v1[OBJC_IVAR____TtC15ControlCenterUI22IconListRootFolderView_internalScale + 8]));
  }

  sub_21EA8C95C(v3, v4);
  v15 = *&v1[OBJC_IVAR____TtC15ControlCenterUI22IconListRootFolderView_iconListViewAlpha];
  *&v1[OBJC_IVAR____TtC15ControlCenterUI22IconListRootFolderView_iconListViewAlpha] = v5;
  if (v15 != v5)
  {
    v16 = [v1 currentIconListView];
    v17 = swift_allocObject();
    *(v17 + 16) = v5;
    *(v17 + 24) = v16;
    v22 = sub_21EA8DB34;
    v23 = v17;
    v18 = MEMORY[0x277D85DD0];
    v19 = 1107296256;
    v20 = sub_21EA89FE0;
    v21 = &block_descriptor_122;
    v9 = _Block_copy(&v18);
    v7 = v16;

    [v1 enumerateIconListViewsUsingBlock_];
    goto LABEL_15;
  }
}

void sub_21EA8CC50(char *a1, double a2, CGFloat a3, CGFloat a4, double a5)
{
  v9 = &a1[OBJC_IVAR____TtC15ControlCenterUI22IconListRootFolderView_scrubbingScale];
  v10 = *&a1[OBJC_IVAR____TtC15ControlCenterUI22IconListRootFolderView_scrubbingScale];
  v11 = *&a1[OBJC_IVAR____TtC15ControlCenterUI22IconListRootFolderView_scrubbingScale + 8];
  *v9 = a2;
  v9[1] = a2;
  if (v10 != a2 || v11 != a2)
  {
    sub_21EA8C7B4(*&a1[OBJC_IVAR____TtC15ControlCenterUI22IconListRootFolderView_pageContentScale] * *&a1[OBJC_IVAR____TtC15ControlCenterUI22IconListRootFolderView_internalScale] * a2, *&a1[OBJC_IVAR____TtC15ControlCenterUI22IconListRootFolderView_pageContentScale + 8] * *&a1[OBJC_IVAR____TtC15ControlCenterUI22IconListRootFolderView_internalScale + 8] * a2);
  }

  sub_21EA8C95C(a3, a4);
  v13 = *&a1[OBJC_IVAR____TtC15ControlCenterUI22IconListRootFolderView_iconListViewAlpha];
  *&a1[OBJC_IVAR____TtC15ControlCenterUI22IconListRootFolderView_iconListViewAlpha] = a5;
  if (v13 != a5)
  {
    v14 = [a1 currentIconListView];
    v15 = swift_allocObject();
    *(v15 + 16) = a5;
    *(v15 + 24) = v14;
    v18[4] = sub_21EA8DB34;
    v18[5] = v15;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 1107296256;
    v18[2] = sub_21EA89FE0;
    v18[3] = &block_descriptor_135_0;
    v16 = _Block_copy(v18);
    v17 = v14;

    [a1 enumerateIconListViewsUsingBlock_];
    _Block_release(v16);
  }
}

id sub_21EA8CDE8()
{
  v1 = OBJC_IVAR____TtC15ControlCenterUI22IconListRootFolderView____lazy_storage___pagingDidChangeAnimationSettings;
  v2 = *(v0 + OBJC_IVAR____TtC15ControlCenterUI22IconListRootFolderView____lazy_storage___pagingDidChangeAnimationSettings);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15ControlCenterUI22IconListRootFolderView____lazy_storage___pagingDidChangeAnimationSettings);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D65E60]) init];
    [v4 setDampingRatio_];
    [v4 setResponse_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_21EA8CE88()
{
  v1 = OBJC_IVAR____TtC15ControlCenterUI22IconListRootFolderView____lazy_storage___scrubbingAnimationSettings;
  v2 = *(v0 + OBJC_IVAR____TtC15ControlCenterUI22IconListRootFolderView____lazy_storage___scrubbingAnimationSettings);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15ControlCenterUI22IconListRootFolderView____lazy_storage___scrubbingAnimationSettings);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D65E60]) init];
    [v4 setTrackingResponse_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_21EA8CF14()
{

  v1 = *(v0 + OBJC_IVAR____TtC15ControlCenterUI22IconListRootFolderView____lazy_storage___scrubbingAnimationSettings);
}

id sub_21EA8CF94()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IconListRootFolderView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_21EA8D0BC(double a1)
{
  v3 = *&v1[OBJC_IVAR____TtC15ControlCenterUI22IconListRootFolderView_iconListViewAlpha];
  *&v1[OBJC_IVAR____TtC15ControlCenterUI22IconListRootFolderView_iconListViewAlpha] = a1;
  if (v3 != a1)
  {
    v4 = [v1 currentIconListView];
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = v4;
    v8[4] = sub_21EA8D94C;
    v8[5] = v5;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 1107296256;
    v8[2] = sub_21EA89FE0;
    v8[3] = &block_descriptor_106;
    v6 = _Block_copy(v8);
    v7 = v4;

    [v1 enumerateIconListViewsUsingBlock_];
    _Block_release(v6);
  }
}

void sub_21EA8D278(CGFloat a1, CGFloat a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = &v5[OBJC_IVAR____TtC15ControlCenterUI22IconListRootFolderView_iconListViewTranslation];
  v9 = *&v5[OBJC_IVAR____TtC15ControlCenterUI22IconListRootFolderView_iconListViewTranslation];
  v10 = *&v5[OBJC_IVAR____TtC15ControlCenterUI22IconListRootFolderView_iconListViewTranslation + 8];
  *v8 = a1;
  v8[1] = a2;
  if (v9 != a1 || v10 != a2)
  {
    v14 = *&v5[OBJC_IVAR____TtC15ControlCenterUI22IconListRootFolderView_iconListViewScale];
    v15 = *&v5[OBJC_IVAR____TtC15ControlCenterUI22IconListRootFolderView_iconListViewScale + 8];
    if (BSPointEqualToPoint() && (tx = 0.0, BSPointEqualToPoint()))
    {
      v21 = xmmword_21EAB72A0;
      v20 = xmmword_21EAB72B0;
      ty = 0.0;
    }

    else
    {
      CGAffineTransformMakeScale(&aBlock, v14, v15);
      CGAffineTransformTranslate(&v22, &aBlock, a1, a2);
      v20 = *&v22.a;
      v21 = *&v22.c;
      tx = v22.tx;
      ty = v22.ty;
    }

    v18 = swift_allocObject();
    *(v18 + 16) = v20;
    *(v18 + 32) = v21;
    *(v18 + 48) = tx;
    *(v18 + 56) = ty;
    *&aBlock.tx = a4;
    *&aBlock.ty = v18;
    *&aBlock.a = MEMORY[0x277D85DD0];
    *&aBlock.b = 1107296256;
    *&aBlock.c = sub_21EA89FE0;
    *&aBlock.d = a5;
    v19 = _Block_copy(&aBlock);

    [v5 enumerateIconListViewsUsingBlock_];
    _Block_release(v19);
  }
}

id sub_21EA8D57C(uint64_t a1, double a2, double a3)
{
  v7 = [v3 pageControl];
  [v7 convertPoint:a1 fromCoordinateSpace:{a2, a3}];
  v8 = [v7 hitTest:0 withEvent:?];
  if (v8)
  {
    v9 = v8;
    if (v8 == v7)
    {
      v10 = 0;
    }

    else
    {
      v10 = [v8 isDescendantOfView_];
    }
  }

  else
  {
    v10 = 0;
    v9 = v7;
  }

  return v10;
}

void sub_21EA8D6B4(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC15ControlCenterUI22IconListRootFolderView_interactivePagingTouchContinuationTimer);
    if (v4)
    {
      v5 = v4 == a1;
    }

    else
    {
      v5 = 0;
    }

    if (v5)
    {
      *(Strong + OBJC_IVAR____TtC15ControlCenterUI22IconListRootFolderView_interactivePagingTouchContinuationTimer) = 0;
    }

    sub_21EA8B44C();
  }
}

void sub_21EA8D774()
{
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9[4] = sub_21EA8D8FC;
  v9[5] = v1;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_21EA4FFB0;
  v9[3] = &block_descriptor_11;
  v2 = _Block_copy(v9);
  v3 = objc_opt_self();

  v4 = [v3 timerWithTimeInterval:0 repeats:v2 block:0.05];
  _Block_release(v2);

  v5 = OBJC_IVAR____TtC15ControlCenterUI22IconListRootFolderView_interactivePagingTouchContinuationTimer;
  [*(v0 + OBJC_IVAR____TtC15ControlCenterUI22IconListRootFolderView_interactivePagingTouchContinuationTimer) invalidate];
  v6 = *(v0 + v5);
  *(v0 + v5) = v4;
  v7 = v4;

  v8 = [objc_opt_self() currentRunLoop];
  [v8 addTimer:v7 forMode:*MEMORY[0x277CBE738]];
}

id sub_21EA8D9A4(void *a1)
{
  v2 = v1[2];
  v4[0] = v1[1];
  v4[1] = v2;
  v4[2] = v1[3];
  return [a1 setTransform_];
}

unint64_t sub_21EA8DA4C()
{
  result = qword_28125B630;
  if (!qword_28125B630)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28125B630);
  }

  return result;
}

void sub_21EA8DB80(double a1)
{
  v2[OBJC_IVAR____TtC15ControlCenterUI18IconListFolderView_isTrackingDrag] = 0;
  if (*&v2[OBJC_IVAR____TtC15ControlCenterUI18IconListFolderView_moduleStretchApplier])
  {
    v4 = &v2[OBJC_IVAR____TtC15ControlCenterUI18IconListFolderView_animatedTargetContentOffset];
    *v4 = a1;
    *(v4 + 8) = 0;
    v5 = *&v2[OBJC_IVAR____TtC15ControlCenterUI18IconListFolderView_numOutstandingScrollAnimations];
    v6 = __OFADD__(v5, 1);
    v7 = v5 + 1;
    if (v6)
    {
      __break(1u);
    }

    else
    {
      *&v2[OBJC_IVAR____TtC15ControlCenterUI18IconListFolderView_numOutstandingScrollAnimations] = v7;
      v1 = objc_opt_self();
      if (qword_28125BA40 == -1)
      {
LABEL_4:
        v8 = [qword_28125BA50 scrollSettlingAnimationSettings];
        v9 = swift_allocObject();
        *(v9 + 16) = v2;
        *(v9 + 24) = a1;
        v19 = sub_21EA9059C;
        v20 = v9;
        v15 = MEMORY[0x277D85DD0];
        v16 = 1107296256;
        v17 = sub_21EA87FF0;
        v18 = &block_descriptor_71_0;
        v10 = _Block_copy(&v15);
        v11 = v2;

        v12 = swift_allocObject();
        *(v12 + 16) = v11;
        v19 = sub_21EA905C4;
        v20 = v12;
        v15 = MEMORY[0x277D85DD0];
        v16 = 1107296256;
        v17 = sub_21EA5DB18;
        v18 = &block_descriptor_77_0;
        v13 = _Block_copy(&v15);
        v14 = v11;

        [v1 sb:v8 animateWithSettings:3 mode:v10 animations:v13 completion:?];
        _Block_release(v13);
        _Block_release(v10);

        return;
      }
    }

    swift_once();
    goto LABEL_4;
  }
}

void sub_21EA8DDB8()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D75D38]) init];
  v2 = *&v0[OBJC_IVAR____TtC15ControlCenterUI18IconListFolderView_scrollPositionProperty];
  *&v0[OBJC_IVAR____TtC15ControlCenterUI18IconListFolderView_scrollPositionProperty] = v1;
  v3 = v1;

  [v3 setValue_];
  v4 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDCF10);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_21EAB6F60;
  *(v5 + 32) = v3;
  sub_21E9F8880(0, qword_27CEDD9E0);
  v6 = v3;
  v7 = sub_21EAA8EB0();

  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  v11[4] = sub_21EA90578;
  v11[5] = v8;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_21EA87FF0;
  v11[3] = &block_descriptor_65;
  v9 = _Block_copy(v11);
  v10 = v0;

  [v4 _createTransformerWithInputAnimatableProperties_presentationValueChangedCallback_];
  _Block_release(v9);
}

void sub_21EA8DF68()
{
  v1 = *&v0[OBJC_IVAR____TtC15ControlCenterUI18IconListFolderView_moduleStretchApplier];
  if (v1)
  {
    v2 = qword_28125BA40;
    v3 = v1;
    if (v2 != -1)
    {
      swift_once();
    }

    v13 = qword_28125BA50;
    [v13 maxVelocityStretchScaleMagnitudeForModules];
    v5 = v4;
    [v13 maxVelocityStretchScaleScalarMagnitudeForModules];
    v7 = [v3 addStretchSourceWithParameters:0 primaryAxis:{v5, v6, 0.0}];
    *&v0[OBJC_IVAR____TtC15ControlCenterUI18IconListFolderView_scrollVelocityModuleStretchSource] = v7;
    swift_unknownObjectRelease();
    if (([v13 applyVelocityModuleSpreadWhileInteractive] & 1) != 0 || objc_msgSend(v13, sel_applyVelocityModuleSpreadWhileSettling))
    {
      [v13 maxVelocityModuleSpreadDistance];
      v9 = v8;
      v10 = swift_allocObject();
      *(v10 + 16) = v0;
      v11 = v0;
      v12 = CCUIStretchApplier.addStretchSource(parameters:primaryAxis:stretchTransformer:)(0, sub_21EA90570, v10, 0.0, 0.0, v9);

      *&v11[OBJC_IVAR____TtC15ControlCenterUI18IconListFolderView_scrollVelocityModuleTranslationSource] = v12;

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_21EA8E164()
{
  v1 = OBJC_IVAR____TtC15ControlCenterUI18IconListFolderView_scrollPositionProperty;
  v2 = *&v0[OBJC_IVAR____TtC15ControlCenterUI18IconListFolderView_scrollPositionProperty];
  if (!v2)
  {
    goto LABEL_22;
  }

  [v2 presentationValue];
  v4 = v3;
  v5 = [v0 scrollView];
  [v5 contentOffset];
  v7 = v6;

  [v0 bounds];
  v9 = v8;
  v11 = v10;
  [v0 bounds];
  UIRectGetCenter();
  v13 = v12;
  v15 = v14;
  v16 = *&v0[OBJC_IVAR____TtC15ControlCenterUI18IconListFolderView_contentView];
  [v16 setBounds_];
  [v16 setCenter_];
  [v0 updateVisibleColumnRange];
  if (!*&v0[OBJC_IVAR____TtC15ControlCenterUI18IconListFolderView_moduleStretchApplier])
  {
    return;
  }

  if (qword_28125BA40 != -1)
  {
    swift_once();
    v17 = *&v0[v1];
    if (v17)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

  v17 = *&v0[v1];
  if (!v17)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    return;
  }

LABEL_5:
  v18 = qword_28125BA50;
  [v17 velocity];
  v19 = *&v0[OBJC_IVAR____TtC15ControlCenterUI18IconListFolderView_scrollVelocityModuleStretchSource];
  if (v19)
  {
    swift_unknownObjectRetain();
    [v18 velocityForMaxStretch];
    [v18 velocityStretchPercentageQuantum];
    BSFloatIsZero();
    BSFloatRoundForScale();
    v21 = v20;
    [v19 stretchValue];
    if (BSFloatEqualToFloat())
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v22 = objc_opt_self();
      v23 = [v18 stretchAnimationSettings];
      v24 = swift_allocObject();
      v24[2] = v19;
      v24[3] = v21;
      v24[4] = v0;
      v38 = sub_21EA90560;
      v39 = v24;
      v34 = MEMORY[0x277D85DD0];
      v35 = 1107296256;
      v36 = sub_21EA87FF0;
      v37 = &block_descriptor_56_0;
      v25 = _Block_copy(&v34);
      swift_unknownObjectRetain();
      v26 = v0;

      [v22 sb:v23 animateWithSettings:3 mode:v25 animations:0 completion:?];
      swift_unknownObjectRelease();
      _Block_release(v25);
    }
  }

  v27 = *&v0[OBJC_IVAR____TtC15ControlCenterUI18IconListFolderView_scrollVelocityModuleTranslationSource];
  if (v27)
  {
    swift_unknownObjectRetain();
    if ([v18 applyVelocityModuleSpreadWhileInteractive] && (v0[OBJC_IVAR____TtC15ControlCenterUI18IconListFolderView_isTrackingDrag] & 1) != 0 || objc_msgSend(v18, sel_applyVelocityModuleSpreadWhileSettling) && *&v0[OBJC_IVAR____TtC15ControlCenterUI18IconListFolderView_numOutstandingScrollAnimations] >= 1)
    {
      [v18 velocityForMaxModuleSpread];
    }

    [v18 velocityModuleSpreadPercentageQuantum];
    BSFloatIsZero();
    BSFloatRoundForScale();
    v29 = v28;
    [v27 stretchValue];
    if (BSFloatEqualToFloat())
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v30 = objc_opt_self();
      v31 = [v18 velocityModuleSpreadAnimationSettings];
      v32 = swift_allocObject();
      *(v32 + 16) = v27;
      *(v32 + 24) = v29;
      v38 = sub_21EA9054C;
      v39 = v32;
      v34 = MEMORY[0x277D85DD0];
      v35 = 1107296256;
      v36 = sub_21EA87FF0;
      v37 = &block_descriptor_50_0;
      v33 = _Block_copy(&v34);
      swift_unknownObjectRetain();

      [v30 sb:v31 animateWithSettings:3 mode:v33 animations:0 completion:?];
      swift_unknownObjectRelease();

      _Block_release(v33);
      v18 = v31;
    }
  }
}

uint64_t sub_21EA8E69C()
{
  v1 = OBJC_IVAR____TtC15ControlCenterUI18IconListFolderView_scrollVelocityModuleStretchSource;
  v2 = *(v0 + OBJC_IVAR____TtC15ControlCenterUI18IconListFolderView_scrollVelocityModuleStretchSource);
  if (v2)
  {
    [v2 invalidate];
  }

  *(v0 + v1) = 0;
  swift_unknownObjectRelease();
  v3 = OBJC_IVAR____TtC15ControlCenterUI18IconListFolderView_scrollVelocityModuleTranslationSource;
  v4 = *(v0 + OBJC_IVAR____TtC15ControlCenterUI18IconListFolderView_scrollVelocityModuleTranslationSource);
  if (v4)
  {
    [v4 invalidate];
  }

  *(v0 + v3) = 0;

  return swift_unknownObjectRelease();
}

id sub_21EA8E748(void *a1)
{
  v3 = OBJC_IVAR____TtC15ControlCenterUI18IconListFolderView_iconViewConfigurationOptions;
  *&v1[v3] = [type metadata accessor for IconListFolderView.IconListView() defaultIconViewConfigurationOptions];
  v4 = &v1[OBJC_IVAR____TtC15ControlCenterUI18IconListFolderView_additionalLayoutInsets];
  v5 = *(MEMORY[0x277D768C8] + 16);
  *v4 = *MEMORY[0x277D768C8];
  v4[1] = v5;
  v6 = &v1[OBJC_IVAR____TtC15ControlCenterUI18IconListFolderView_additionalLayoutOffset];
  *v6 = 0;
  v6[1] = 0;
  *&v1[OBJC_IVAR____TtC15ControlCenterUI18IconListFolderView_moduleStretchApplier] = 0;
  *&v1[OBJC_IVAR____TtC15ControlCenterUI18IconListFolderView_scrollVelocityModuleStretchSource] = 0;
  *&v1[OBJC_IVAR____TtC15ControlCenterUI18IconListFolderView_scrollVelocityModuleTranslationSource] = 0;
  *&v1[OBJC_IVAR____TtC15ControlCenterUI18IconListFolderView_scrollPositionProperty] = 0;
  v1[OBJC_IVAR____TtC15ControlCenterUI18IconListFolderView_isTrackingDrag] = 0;
  *&v1[OBJC_IVAR____TtC15ControlCenterUI18IconListFolderView_numOutstandingScrollAnimations] = 0;
  v7 = &v1[OBJC_IVAR____TtC15ControlCenterUI18IconListFolderView_animatedTargetContentOffset];
  *v7 = 0;
  v7[8] = 1;
  v8 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  *&v1[OBJC_IVAR____TtC15ControlCenterUI18IconListFolderView_contentView] = v8;
  v18.receiver = v1;
  v18.super_class = type metadata accessor for IconListFolderView();
  v9 = v8;
  v10 = objc_msgSendSuper2(&v18, sel_initWithConfiguration_, a1);
  v11 = [v10 scrollView];
  [v11 setContentInsetAdjustmentBehavior_];
  v12 = [v10 scalingView];
  [v12 addSubview_];
  [v12 addSubview_];
  v13 = [v10 pageControl];
  [v12 addSubview_];

  v14 = [v11 panGestureRecognizer];
  [v9 addGestureRecognizer_];

  v15 = [v11 _swipeGestureRecognizer];
  [v9 addGestureRecognizer_];

  sub_21EA8DDB8();
  v16 = sub_21EAA8DC0();
  [v10 _setParallaxDisabled_forReason_];

  return v10;
}

id sub_21EA8EA18()
{
  result = *&v0[OBJC_IVAR____TtC15ControlCenterUI18IconListFolderView_scrollPositionProperty];
  if (result)
  {
    [result invalidate];
    v2.receiver = v0;
    v2.super_class = type metadata accessor for IconListFolderView();
    return objc_msgSendSuper2(&v2, sel_dealloc);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_21EA8EB50()
{
  v13.receiver = v0;
  v13.super_class = type metadata accessor for IconListFolderView();
  objc_msgSendSuper2(&v13, sel__layoutSubviews);
  v1 = [v0 scrollView];
  v2 = *&v0[OBJC_IVAR____TtC15ControlCenterUI18IconListFolderView_contentView];
  [v0 bounds];
  [v2 setBounds_];
  [v0 _updateIconListFrames];
  v3 = OBJC_IVAR____TtC15ControlCenterUI18IconListFolderView_scrollPositionProperty;
  v4 = *&v0[OBJC_IVAR____TtC15ControlCenterUI18IconListFolderView_scrollPositionProperty];
  if (v4)
  {
    [v4 value];
    v6 = v5;
    v7 = v1;
    [v7 contentOffset];
    if (v6 == v8)
    {

      sub_21EA8E164();
LABEL_6:
      [v0 updateVisibleColumnRange];

      return;
    }

    v9 = *&v0[v3];
    if (v9)
    {
      v10 = v9;
      [v7 contentOffset];
      v12 = v11;

      [v10 setValue_];
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_21EA8ED44(void *a1)
{
  v9.receiver = v1;
  v9.super_class = type metadata accessor for IconListFolderView();
  objc_msgSendSuper2(&v9, sel__configureIconListView_, a1);
  [objc_msgSend(a1 layout)];
  v4 = v3;
  v6 = v5;
  swift_unknownObjectRelease();
  [a1 setIconSpacing_];
  v7 = [a1 setAutomaticallyAdjustsLayoutMetricsToFit_];
  (*((*MEMORY[0x277D85000] & *v1) + 0xE0))(v7);
  [a1 setAdditionalLayoutInsets_];
  [a1 setIconViewConfigurationOptions_];
  v8 = [a1 layer];
  [a1 setAutomaticallyShowsEmptyGridCellsWhileEditing_];
  [v8 setAllowsGroupBlending_];
  [v8 setAllowsGroupOpacity_];
}

double sub_21EA8EFE4(uint64_t a1)
{
  v11.receiver = v1;
  v11.super_class = type metadata accessor for IconListFolderView();
  objc_msgSendSuper2(&v11, sel__frameForIconListAtIndex_, a1);
  v4 = v3;
  if (([v1 _shouldReverseLayoutDirection] & 1) == 0)
  {
    v5 = [v1 traitCollection];
    v6 = [v5 userInterfaceIdiom];

    if (v6 == 1 && [v1 iconListViewCount] > a1)
    {
      v7 = [v1 iconListViewAtIndex_];
      [v7 intrinsicContentSize];
      v9 = v8;

      [v1 bounds];
      return CGRectGetWidth(v12) - v9;
    }
  }

  return v4;
}

void sub_21EA8F174(void *a1)
{
  v25.receiver = v1;
  v25.super_class = type metadata accessor for IconListFolderView();
  objc_msgSendSuper2(&v25, sel_scrollViewDidScroll_, a1);
  v3 = [v1 scrollView];
  v4 = [v3 hostingDelegate];

  if (v4)
  {
    if ([v4 respondsToSelector_])
    {
      v6 = [v1 scrollView];
      [v4 scrollViewDidScroll_];
    }

    swift_unknownObjectRelease();
  }

  v7 = OBJC_IVAR____TtC15ControlCenterUI18IconListFolderView_isTrackingDrag;
  if ((v1[OBJC_IVAR____TtC15ControlCenterUI18IconListFolderView_isTrackingDrag] & 1) == 0)
  {
    if (*&v1[OBJC_IVAR____TtC15ControlCenterUI18IconListFolderView_moduleStretchApplier])
    {
      v8 = [v1 scrollView];
      v9 = [v8 isScrollAnimating];

      if (v9)
      {
        v10 = [v1 scrollView];
        [v10 _animationTargetContentOffset];
        v12 = v11;

        v13 = &v1[OBJC_IVAR____TtC15ControlCenterUI18IconListFolderView_animatedTargetContentOffset];
        if ((v1[OBJC_IVAR____TtC15ControlCenterUI18IconListFolderView_animatedTargetContentOffset + 8] & 1) != 0 || (v5 = *v13, *v13 != v12))
        {
          sub_21EA8DB80(v12);
        }
      }
    }
  }

  if ([a1 isScrollAnimating])
  {
    v14 = 0;
    v15 = v1[v7];
    if (v15)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v14 = [a1 isDecelerating] ^ 1;
    v15 = v1[v7];
    if (v15)
    {
      goto LABEL_18;
    }
  }

  if (*&v1[OBJC_IVAR____TtC15ControlCenterUI18IconListFolderView_moduleStretchApplier])
  {
    if ((v14 & 1) == 0)
    {
      return;
    }

    goto LABEL_19;
  }

LABEL_18:
  if (v14)
  {
LABEL_19:
    *&v1[OBJC_IVAR____TtC15ControlCenterUI18IconListFolderView_numOutstandingScrollAnimations] = 0;
    v16 = &v1[OBJC_IVAR____TtC15ControlCenterUI18IconListFolderView_animatedTargetContentOffset];
    *v16 = 0;
    v16[8] = 1;
  }

  if ((v15 & (*&v1[OBJC_IVAR____TtC15ControlCenterUI18IconListFolderView_moduleStretchApplier] != 0)) != 0)
  {
    v17 = 5;
  }

  else
  {
    v17 = 2;
  }

  v18 = objc_opt_self();
  if (qword_28125BA40 != -1)
  {
    swift_once();
  }

  v19 = [qword_28125BA50 scrollAnimationSettings];
  v20 = swift_allocObject();
  *(v20 + 16) = v1;
  *(v20 + 24) = a1;
  v24[4] = sub_21EA90544;
  v24[5] = v20;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 1107296256;
  v24[2] = sub_21EA87FF0;
  v24[3] = &block_descriptor_12;
  v21 = _Block_copy(v24);
  v22 = v1;
  v23 = a1;

  [v18 sb:v19 animateWithSettings:v17 mode:v21 animations:0 completion:?];
  _Block_release(v21);
}

void sub_21EA8F4B8(uint64_t a1, void *a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC15ControlCenterUI18IconListFolderView_scrollPositionProperty);
  if (v2)
  {
    v5 = v2;
    [a2 contentOffset];
    [v5 setValue_];
  }

  else
  {
    __break(1u);
  }
}

void sub_21EA8F77C(void *a1@<X1>, double *a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>, double a7@<D4>, double a8@<D5>)
{
  if (BSFloatIsZero())
  {
    goto LABEL_41;
  }

  objc_opt_self();
  v16 = swift_dynamicCastObjCClass();
  if (v16)
  {
    swift_unknownObjectRetain();
    v17 = [v16 iconView];
    if (v17)
    {
      v18 = v17;
LABEL_7:
      v20 = [v16 subview];
      goto LABEL_8;
    }
  }

  objc_opt_self();
  v19 = swift_dynamicCastObjCClass();
  if (!v19)
  {

LABEL_41:
    *a2 = a3;
    a2[1] = a4;
    a2[2] = a5;
    a2[3] = a6;
    a2[4] = a7;
    a2[5] = a8;
    return;
  }

  v18 = v19;
  swift_unknownObjectRetain();
  if (v16)
  {
    goto LABEL_7;
  }

  v20 = 0;
LABEL_8:
  v47 = [v18 icon];
  if (!v47)
  {
    goto LABEL_43;
  }

  v21 = [a1 visibleIconListViews];
  sub_21E9F8880(0, &unk_28125B830);
  v22 = sub_21EAA8EC0();

  if (v22 >> 62)
  {
LABEL_39:
    v23 = sub_21EAA9380();
    if (v23)
    {
      goto LABEL_11;
    }

    goto LABEL_40;
  }

  v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v23)
  {
LABEL_40:

    goto LABEL_41;
  }

LABEL_11:
  v43 = v20;
  v44 = v18;
  v45 = v16;
  v46 = a2;
  v24 = 0;
  v16 = (v22 & 0xC000000000000001);
  v18 = (v22 & 0xFFFFFFFFFFFFFF8);
  while (1)
  {
    if (v16)
    {
      v25 = MEMORY[0x223D67210](v24, v22);
    }

    else
    {
      if (v24 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_38;
      }

      v25 = *(v22 + 8 * v24 + 32);
    }

    v20 = v25;
    a2 = (v24 + 1);
    if (__OFADD__(v24, 1))
    {
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    type metadata accessor for IconListFolderView.IconListView();
    v26 = swift_dynamicCastClass();
    if (v26)
    {
      break;
    }

LABEL_12:

    ++v24;
    if (a2 == v23)
    {

      a2 = v46;
      goto LABEL_41;
    }
  }

  v27 = v26;
  v28 = v20;
  [v27 coordinateForIcon_];
  v30 = v29;
  if (sub_21EAA9030())
  {

    goto LABEL_12;
  }

  if (v43)
  {
    v31 = v43;
    v32 = sub_21EA900C4(v31);
    v34 = v45;
    a2 = v46;
    v35 = v44;
    if (v36)
    {
      sub_21EAA9040();
    }

    else
    {
      [v27 coordinateAtPoint_];
    }

    v38 = v37;
    v39 = sub_21EAA9030();

    if ((v39 & 1) == 0)
    {
      v30 = v38;
    }
  }

  else
  {
    v34 = v45;
    a2 = v46;
    v35 = v44;
  }

  v40 = [v28 layoutMetrics];

  v41 = [v40 rows];
  LODWORD(v40) = BSFloatLessThanFloat();

  if (v40)
  {
    v42 = v41 - v30;
    if (!__OFSUB__(v41, v30))
    {
      goto LABEL_36;
    }

    __break(1u);
  }

  v42 = v30 - 1;
  if (!__OFSUB__(v30, 1))
  {
LABEL_36:
    a8 = v42 * a8;
    goto LABEL_41;
  }

  __break(1u);
LABEL_43:
  __break(1u);
}

void sub_21EA8FB44(void *a1, void *a2, double a3)
{
  [a1 setStretchValue_];
  if (qword_28125BA40 != -1)
  {
    swift_once();
  }

  v12 = qword_28125BA50;
  [v12 maxVelocityStretchScaleMagnitudeForPages];
  v6 = v5 * a3;
  v7 = [v12 maxVelocityStretchScaleScalarMagnitudeForPages];
  v9 = v8 * a3;
  v10.n128_f64[0] = (1.0 - v6) * (1.0 - v8 * a3);
  v11.n128_f64[0] = (v6 + 1.0) * (v9 + 1.0);
  (*((*MEMORY[0x277D85000] & *a2) + 0x138))(v7, v10, v11);
}

void sub_21EA8FC60()
{
  v0 = [objc_opt_self() rootSettings];
  v1 = [v0 fluidPagingSettings];

  qword_28125BA50 = v1;
}

unint64_t sub_21EA8FE60()
{
  v1.receiver = swift_getObjCClassFromMetadata();
  v1.super_class = &OBJC_METACLASS____TtCC15ControlCenterUI18IconListFolderViewP33_DD187FCCAF2994A2EE3FBE03915C670412IconListView;
  return objc_msgSendSuper2(&v1, sel_defaultIconViewConfigurationOptions) | 0x1E;
}

id sub_21EA8FF80(void *a1)
{
  v3 = [v1 window];
  if (v3)
  {
    v4 = v3;
LABEL_4:
    [v1 setOrientation_];

    goto LABEL_5;
  }

  v5 = [a1 containerView];
  v4 = [v5 window];

  if (v4)
  {
    goto LABEL_4;
  }

LABEL_5:
  v7.receiver = v1;
  v7.super_class = type metadata accessor for IconListFolderView.IconListView();
  return objc_msgSendSuper2(&v7, sel_willRotateWithTransitionCoordinator_, a1);
}

uint64_t sub_21EA900C4(void *a1)
{
  v2 = [a1 layer];
  v3 = [v1 layer];
  [v2 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [v2 position];
  v13 = v12;
  v15 = v14;
  [v2 anchorPoint];
  v17 = v16;
  v19 = v18;
  v20 = [v2 superlayer];
  if (v20)
  {
    v21 = v20;
    v22 = v7 + v15 - v11 * v19;
    v23 = v5 + v13 - v9 * v17;
    while (v21 != v3)
    {
      [v21 bounds];
      v25 = v24;
      v27 = v26;
      v29 = v28;
      v31 = v30;
      [v21 position];
      v33 = v32;
      v35 = v34;
      [v21 anchorPoint];
      v23 = v23 + v25 + v33 - v29 * v36;
      v22 = v22 + v27 + v35 - v31 * v37;
      v38 = [v21 superlayer];

      v21 = v38;
      if (!v38)
      {
        goto LABEL_5;
      }
    }

    return *&v23;
  }

  else
  {
LABEL_5:

    return 0;
  }
}

id sub_21EA903BC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_21EA90444()
{
  v0 = [objc_allocWithZone(type metadata accessor for EmptyGridCell()) initWithFrame_];
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 whiteColor];
  v4 = [v3 colorWithAlphaComponent_];

  [v2 setBackgroundColor_];
  v5 = [v2 layer];
  [v5 setCompositingFilter_];

  return v2;
}

id sub_21EA9059C()
{
  result = *(*(v0 + 16) + OBJC_IVAR____TtC15ControlCenterUI18IconListFolderView_scrollPositionProperty);
  if (result)
  {
    return [result setValue_];
  }

  __break(1u);
  return result;
}

void sub_21EA905C4()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC15ControlCenterUI18IconListFolderView_numOutstandingScrollAnimations);
  v3 = __OFSUB__(v2, 1);
  v4 = v2 - 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC15ControlCenterUI18IconListFolderView_numOutstandingScrollAnimations) = v4 & ~(v4 >> 63);
  }
}

uint64_t sub_21EA9060C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_21EA90654(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_21EA9069C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_21EA906F8()
{
  v0 = sub_21EAA9310();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_21EA90754(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = v6 - 1;
  v8 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v8;
  }

  if (v5 < 2)
  {
    v7 = 0;
    ++v8;
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_30;
  }

  v10 = 8 * v8;
  if (v8 > 3)
  {
    goto LABEL_10;
  }

  v12 = ((v9 + ~(-1 << v10)) >> v10) + 1;
  if (HIWORD(v12))
  {
    v11 = *(a1 + v8);
    if (v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (v12 <= 0xFF)
    {
      if (v12 < 2)
      {
        goto LABEL_30;
      }

LABEL_10:
      v11 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_30;
      }

LABEL_17:
      v13 = (v11 - 1) << v10;
      if (v8 > 3)
      {
        v13 = 0;
      }

      if (v8)
      {
        if (v8 <= 3)
        {
          v14 = v8;
        }

        else
        {
          v14 = 4;
        }

        if (v14 > 2)
        {
          if (v14 == 3)
          {
            v15 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v15 = *a1;
          }
        }

        else if (v14 == 1)
        {
          v15 = *a1;
        }

        else
        {
          v15 = *a1;
        }
      }

      else
      {
        v15 = 0;
      }

      return v7 + (v15 | v13) + 1;
    }

    v11 = *(a1 + v8);
    if (*(a1 + v8))
    {
      goto LABEL_17;
    }
  }

LABEL_30:
  if (!v7)
  {
    return 0;
  }

  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  v17 = v16 >= 2;
  result = v16 - 2;
  if (result == 0 || !v17)
  {
    return 0;
  }

  return result;
}

void sub_21EA908E0(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  v10 = v8 - 1;
  if (!v8)
  {
    v10 = 0;
  }

  v11 = v10 - 1;
  if (!v8)
  {
    ++v9;
  }

  if (v8 >= 2)
  {
    v12 = v9;
  }

  else
  {
    v11 = 0;
    v12 = v9 + 1;
  }

  v13 = a3 >= v11;
  v14 = a3 - v11;
  if (v14 == 0 || !v13)
  {
LABEL_20:
    if (v11 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  if (v12 > 3)
  {
    v6 = 1;
    if (v11 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  v15 = ((v14 + ~(-1 << (8 * v12))) >> (8 * v12)) + 1;
  if (!HIWORD(v15))
  {
    if (v15 < 0x100)
    {
      v16 = 1;
    }

    else
    {
      v16 = 2;
    }

    if (v15 >= 2)
    {
      v6 = v16;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_20;
  }

  v6 = 4;
  if (v11 < a2)
  {
LABEL_21:
    v17 = ~v11 + a2;
    if (v12 < 4)
    {
      v18 = (v17 >> (8 * v12)) + 1;
      if (v12)
      {
        v19 = v17 & ~(-1 << (8 * v12));
        bzero(a1, v12);
        if (v12 != 3)
        {
          if (v12 == 2)
          {
            *a1 = v19;
            if (v6 > 1)
            {
LABEL_60:
              if (v6 == 2)
              {
                *&a1[v12] = v18;
              }

              else
              {
                *&a1[v12] = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v6 > 1)
            {
              goto LABEL_60;
            }
          }

          goto LABEL_57;
        }

        *a1 = v19;
        a1[2] = BYTE2(v19);
      }

      if (v6 > 1)
      {
        goto LABEL_60;
      }
    }

    else
    {
      bzero(a1, v12);
      *a1 = v17;
      v18 = 1;
      if (v6 > 1)
      {
        goto LABEL_60;
      }
    }

LABEL_57:
    if (v6)
    {
      a1[v12] = v18;
    }

    return;
  }

LABEL_30:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v12] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v12] = 0;
LABEL_36:
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!v6)
  {
    goto LABEL_36;
  }

  a1[v12] = 0;
  if (!a2)
  {
    return;
  }

LABEL_37:
  if (a2 + 1 <= v10)
  {
    if (a2 != -1 && v8 >= 2)
    {
      v23 = *(v7 + 56);

      v23();
    }
  }

  else
  {
    if (v9 <= 3)
    {
      v20 = ~(-1 << (8 * v9));
    }

    else
    {
      v20 = -1;
    }

    if (v9)
    {
      v21 = v20 & (a2 - v10);
      if (v9 <= 3)
      {
        v22 = v9;
      }

      else
      {
        v22 = 4;
      }

      bzero(a1, v9);
      if (v22 > 2)
      {
        if (v22 == 3)
        {
          *a1 = v21;
          a1[2] = BYTE2(v21);
        }

        else
        {
          *a1 = v21;
        }
      }

      else if (v22 == 1)
      {
        *a1 = v21;
      }

      else
      {
        *a1 = v21;
      }
    }
  }
}