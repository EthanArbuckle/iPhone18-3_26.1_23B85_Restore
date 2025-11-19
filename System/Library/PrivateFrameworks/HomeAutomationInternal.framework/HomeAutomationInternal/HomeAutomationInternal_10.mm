uint64_t sub_2529DDDE4(id *a1, void **a2)
{
  v4 = sub_252E32E84();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v25 - v10;
  v12 = *a2;
  v13 = [*a1 uniqueIdentifier];
  sub_252E32E64();

  v14 = sub_252E32E24();
  v16 = v15;
  v17 = *(v5 + 8);
  v17(v11, v4);
  v18 = [v12 uniqueIdentifier];
  sub_252E32E64();

  v19 = sub_252E32E24();
  v21 = v20;
  v17(v9, v4);
  if (v14 == v19 && v16 == v21)
  {
    v23 = 0;
  }

  else
  {
    v23 = sub_252E37DB4();
  }

  return v23 & 1;
}

uint64_t sub_2529DDFB0(uint64_t a1)
{
  v2 = sub_252E36E04();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2529E6168(&unk_27F541310, MEMORY[0x277CC55B0]);
  v7 = sub_252E371B4();
  v35 = MEMORY[0x277D84F90];
  sub_2529AA3A0(0, v7 & ~(v7 >> 63), 0);
  v8 = v35;
  (*(v3 + 16))(v6, a1, v2);
  result = sub_252E371A4();
  if ((v7 & 0x8000000000000000) == 0)
  {
    v10 = v34;
    if (v7)
    {
      v11 = v33;
      *&v32 = *(v33 + 16);
      v31 = xmmword_252E3C290;
      v12 = v34;
      while (v32 != v12)
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_21;
        }

        if (v12 >= *(v11 + 16))
        {
          goto LABEL_22;
        }

        v13 = *(v11 + 32 + v12);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540750, &unk_252E5C020);
        v14 = swift_allocObject();
        *(v14 + 16) = v31;
        *(v14 + 56) = MEMORY[0x277D84B78];
        *(v14 + 64) = MEMORY[0x277D84BC0];
        *(v14 + 32) = v13;
        result = sub_252E36F64();
        v35 = v8;
        v17 = *(v8 + 16);
        v16 = *(v8 + 24);
        if (v17 >= v16 >> 1)
        {
          v30 = result;
          v19 = v15;
          sub_2529AA3A0((v16 > 1), v17 + 1, 1);
          v15 = v19;
          result = v30;
          v8 = v35;
        }

        *(v8 + 16) = v17 + 1;
        v18 = v8 + 16 * v17;
        *(v18 + 32) = result;
        *(v18 + 40) = v15;
        ++v12;
        if (!--v7)
        {
          v34 = v12;
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
    }

    else
    {
      v12 = v34;
LABEL_12:
      v20 = v33;
      v21 = *(v33 + 16);
      if (v12 == v21)
      {
LABEL_13:

        return v8;
      }

      v32 = xmmword_252E3C290;
      while (v12 < v21)
      {
        v22 = *(v20 + 32 + v12);
        v34 = v12 + 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540750, &unk_252E5C020);
        v23 = swift_allocObject();
        *(v23 + 16) = v32;
        *(v23 + 56) = MEMORY[0x277D84B78];
        *(v23 + 64) = MEMORY[0x277D84BC0];
        *(v23 + 32) = v22;
        result = sub_252E36F64();
        v35 = v8;
        v26 = *(v8 + 16);
        v25 = *(v8 + 24);
        if (v26 >= v25 >> 1)
        {
          v28 = result;
          v29 = v24;
          sub_2529AA3A0((v25 > 1), v26 + 1, 1);
          v24 = v29;
          result = v28;
          v8 = v35;
        }

        *(v8 + 16) = v26 + 1;
        v27 = v8 + 16 * v26;
        *(v27 + 32) = result;
        *(v27 + 40) = v24;
        v21 = *(v20 + 16);
        v12 = v34;
        if (v34 == v21)
        {
          goto LABEL_13;
        }
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_2529DE350()
{
  if (qword_2814B0A30 != -1)
  {
    swift_once();
  }

  v0 = qword_2814B0A38;
  v1 = sub_252E374C4();
  result = os_log_type_enabled(v0, v1);
  if (result)
  {
    if (qword_2814B09D0 != -1)
    {
      swift_once();
    }

    v3 = sub_252E36AD4();
    __swift_project_value_buffer(v3, qword_2814B09D8);
    sub_252CC3D90(0xD000000000000021, 0x8000000252E70270, 0xD00000000000006FLL, 0x8000000252E70160);
    result = sub_2529D8DC0();
    v4 = result;
    if (result >> 62)
    {
      result = sub_252E378C4();
      v5 = result;
      if (result)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v5 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v5)
      {
LABEL_8:
        if (v5 < 1)
        {
          __break(1u);
          return result;
        }

        v6 = 0;
        do
        {
          if ((v4 & 0xC000000000000001) != 0)
          {
            MEMORY[0x2530ADF00](v6, v4);
          }

          else
          {
            v9 = *(v4 + 8 * v6 + 32);
          }

          ++v6;
          v7 = sub_2529E8734();
          sub_252CC3D90(v7, v8, 0xD00000000000006FLL, 0x8000000252E70160);
        }

        while (v5 != v6);
      }
    }
  }

  return result;
}

char *sub_2529DE548()
{
  v1 = v0;
  v2 = sub_252E36AB4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = &v1[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore__cachedResults];
  v8 = MEMORY[0x277D84F90];
  v9 = sub_252CC4788(MEMORY[0x277D84F90]);
  v10 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  *v7 = v9;
  v7[1] = v10;
  v11 = OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_cachedResultsLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541328, &qword_252E40460);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *&v1[v11] = v12;
  v13 = &v1[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore__cacheRequiresInvalidation];
  v14 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  *v13 = 1;
  *(v13 + 1) = v14;
  v1[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded] = 2;
  v1[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_refreshCompleted] = 2;
  v15 = OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_initializationSELFPerformanceLogger;
  *&v1[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_initializationSELFPerformanceLogger] = 0;
  *&v1[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_homeManagerInitTimeout] = 0x4014000000000000;
  *&v1[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore__currentHome] = 0;
  v16 = OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore__currentHomeLock;
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *&v1[v16] = v17;
  v18 = &v1[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore__cachedStableHomeGraphHash];
  v19 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  *v18 = 0;
  v18[1] = 0;
  v18[2] = v19;
  v20 = &v1[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore__isCachedStableHomeGraphHashValid];
  v21 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  *v20 = 0;
  *(v20 + 1) = v21;
  if (qword_2814B0A30 != -1)
  {
    swift_once();
  }

  v22 = qword_2814B0A38;
  sub_252E36A94();
  sub_252E375D4();
  sub_252E36A84();
  (*(v3 + 32))(&v1[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_initializationSignpostID], v6, v2);
  type metadata accessor for SELFPerformanceLogger();
  swift_allocObject();
  v23 = sub_252D2D190(206, 0x6E776F6E6B6E75, 0xE700000000000000);
  v24 = *&v1[v15];
  *&v1[v15] = v23;

  *&v1[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadWaitSemaphores] = v8;
  *&v1[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_refreshWaitSemaphores] = v8;
  if (qword_2814B0A98 != -1)
  {
    swift_once();
  }

  v25 = sub_252E36AD4();
  __swift_project_value_buffer(v25, qword_2814B0AA0);
  sub_252CC3D90(0xD000000000000018, 0x8000000252E707F0, 0xD00000000000006FLL, 0x8000000252E70160);
  v26 = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
  v27 = sub_252E36F04();
  [v26 setName_];

  [v26 setMaxConcurrentOperationCount_];
  [v26 setQualityOfService_];
  v28 = [objc_allocWithZone(MEMORY[0x277CD1C60]) initWithOptions:34397 cachePolicy:1];
  [v28 setDelegateQueue_];
  v29 = [objc_allocWithZone(MEMORY[0x277CD1A90]) initWithConfiguration_];
  *&v1[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore__homeManager] = v29;
  v30 = type metadata accessor for HomeStore();
  v41.receiver = v1;
  v41.super_class = v30;
  v31 = objc_msgSendSuper2(&v41, sel_init);
  v32 = *&v31[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore__homeManager];
  v33 = v31;
  [v32 setDelegate_];
  v34 = OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_cachedResultsLock;
  os_unfair_lock_lock((*&v33[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_cachedResultsLock] + 16));
  v35 = sub_252CC4788(MEMORY[0x277D84F90]);
  v36 = &v33[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore__cachedResults];
  swift_beginAccess();
  v37 = v36[1];
  [v37 lock];
  v38 = *v36;
  *v36 = v35;

  [v37 unlock];
  swift_endAccess();
  os_unfair_lock_unlock((*&v33[v34] + 16));

  return v33;
}

uint64_t sub_2529DEAE8(unint64_t a1)
{
  v2 = v1;
  v4 = sub_252E32E04();
  v84 = *(v4 - 1);
  v5 = *(v84 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v80 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v81 = &v80 - v8;
  j = sub_252E36AB4();
  v10 = *(j - 8);
  v11 = v10[8];
  v12 = MEMORY[0x28223BE20](j);
  v83 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v80 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CB8, &qword_252E3F8D0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v91 = &v80 - v18;
  if (qword_2814B0A98 != -1)
  {
    goto LABEL_34;
  }

  while (1)
  {
    v19 = sub_252E36AD4();
    v20 = __swift_project_value_buffer(v19, qword_2814B0AA0);
    aBlock = 0;
    v100 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD00000000000003ALL, 0x8000000252E702A0);
    v89 = OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded;
    LOBYTE(v105) = *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5410E8, &qword_252E403C0);
    v21 = sub_252E36F94();
    MEMORY[0x2530AD570](v21);

    sub_252CC3D90(aBlock, v100, 0xD00000000000006FLL, 0x8000000252E70160);

    v92 = a1;
    v22 = [a1 homes];
    v23 = sub_25293F638(0, &qword_2814B0210, 0x277CD1A60);
    v24 = sub_252E37264();

    v97 = v24;
    v93 = "Computing currentHome";
    v94 = v20;
    v87 = v10;
    v88 = j;
    v86 = v15;
    v85 = v4;
    v90 = v23;
    if (!(v24 >> 62))
    {
      v25 = *((v97 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v25)
      {
        break;
      }

      goto LABEL_4;
    }

    v25 = sub_252E378C4();
    if (!v25)
    {
      break;
    }

LABEL_4:
    a1 = 0;
    v98 = v97 & 0xC000000000000001;
    v95 = v97 + 32;
    v96 = v97 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v98)
      {
        v26 = MEMORY[0x2530ADF00](a1, v97);
      }

      else
      {
        if (a1 >= *(v96 + 16))
        {
          goto LABEL_33;
        }

        v26 = *(v95 + 8 * a1);
      }

      v10 = v26;
      if (__OFADD__(a1++, 1))
      {
        break;
      }

      [v26 setDelegate_];
      j = [v10 accessories];
      sub_25293F638(0, &qword_2814B0270, 0x277CD1650);
      v28 = sub_252E37264();

      if (v28 >> 62)
      {
        v15 = sub_252E378C4();
        if (!v15)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v15 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v15)
        {
          goto LABEL_20;
        }
      }

      if (v15 < 1)
      {
        goto LABEL_31;
      }

      for (i = 0; i != v15; ++i)
      {
        if ((v28 & 0xC000000000000001) != 0)
        {
          v30 = MEMORY[0x2530ADF00](i, v28);
        }

        else
        {
          v30 = *(v28 + 8 * i + 32);
        }

        v4 = v30;
        [v30 setDelegate_];
      }

LABEL_20:

      j = [v10 mediaSystems];
      sub_25293F638(0, &qword_2814B0258, 0x277CD1BE8);
      v31 = sub_252E37264();

      if (v31 >> 62)
      {
        v15 = sub_252E378C4();
        if (!v15)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v15 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v15)
        {
          goto LABEL_5;
        }
      }

      if (v15 < 1)
      {
        goto LABEL_32;
      }

      for (j = 0; j != v15; ++j)
      {
        if ((v31 & 0xC000000000000001) != 0)
        {
          v32 = MEMORY[0x2530ADF00](j, v31);
        }

        else
        {
          v32 = *(v31 + 8 * j + 32);
        }

        v4 = v32;
        [v32 setDelegate_];
      }

LABEL_5:

      if (a1 == v25)
      {
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    swift_once();
  }

LABEL_36:

  if (qword_2814B0E18 != -1)
  {
    swift_once();
  }

  sub_252E37604();
  v33 = *(v2 + v89);
  if (v33 == 2)
  {
    v34 = v89;
    sub_252CC3D90(0xD00000000000001DLL, 0x8000000252E702E0, 0xD00000000000006FLL, v93 | 0x8000000000000000);
    *(v2 + v34) = 1;
    v35 = v2 + OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore__cacheRequiresInvalidation;
    swift_beginAccess();
    v36 = *(v35 + 8);
    [v36 lock];
    *v35 = 1;
    [v36 unlock];
    swift_endAccess();
    v37 = v2 + OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore__isCachedStableHomeGraphHashValid;
    swift_beginAccess();
    v38 = *(v37 + 8);
    [v38 lock];
    *v37 = 0;
    [v38 unlock];
    v39 = swift_endAccess();
    v40 = *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore__currentHomeLock);
    v41 = MEMORY[0x28223BE20](v39);
    *(&v80 - 2) = v2;
    MEMORY[0x28223BE20](v41);
    *(&v80 - 2) = sub_2529E64D0;
    *(&v80 - 1) = v42;
    os_unfair_lock_lock(v40 + 4);
    sub_2529E4858();
    os_unfair_lock_unlock(v40 + 4);
  }

  v43 = v92;
  sub_252E37614();
  v44 = [v43 homes];
  v45 = sub_252E37264();

  v46 = sub_2529D8654(v45);

  v47 = type metadata accessor for MatterAccessoryManager();
  v48 = sub_252E37344();
  v49 = v91;
  (*(*(v48 - 8) + 56))(v91, 1, 1, v48);
  v50 = swift_allocObject();
  v50[2] = 0;
  v50[3] = 0;
  v50[4] = v47;
  v50[5] = v46;
  sub_2529D89C4(0, 0, v49, &unk_252E49130, v50);

  if (v33 != 2)
  {
    goto LABEL_43;
  }

  if (qword_2814B0A30 != -1)
  {
    goto LABEL_70;
  }

  while (2)
  {
    v51 = qword_2814B0A38;
    v52 = v86;
    sub_252E36A94();
    sub_252E375D4();
    sub_252E36A84();
    v53 = *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore__homeManager);
    v54 = v80;
    sub_252E32DF4();
    v55 = v81;
    sub_252E32D54();
    v56 = *(v84 + 8);
    v57 = v85;
    v56(v54, v85);
    v58 = sub_252E32D64();
    v56(v55, v57);
    v60 = v87;
    v59 = v88;
    v61 = v83;
    (v87[2])(v83, v52, v88);
    v62 = (*(v60 + 80) + 24) & ~*(v60 + 80);
    v63 = swift_allocObject();
    *(v63 + 16) = v2;
    (v60[4])(v63 + v62, v61, v59);
    v103 = sub_2529E4880;
    v104 = v63;
    aBlock = MEMORY[0x277D85DD0];
    v100 = 1107296256;
    v101 = sub_2529E0210;
    v102 = &block_descriptor_3;
    v64 = _Block_copy(&aBlock);
    v65 = v2;

    v66 = [v53 _refreshBeforeDate_completionHandler_];
    _Block_release(v64);
    swift_unknownObjectRelease();

    (v60[1])(v52, v59);
LABEL_43:
    v105 = MEMORY[0x277D84F90];
    sub_252E37604();
    v67 = OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadWaitSemaphores;
    swift_beginAccess();
    v68 = *(v2 + v67);
    if (v68 >> 62)
    {
      if (v68 < 0)
      {
        v73 = *(v2 + v67);
      }

      v2 = sub_252E378C4();
      if (!v2)
      {
        goto LABEL_57;
      }

LABEL_45:
      if (v2 >= 1)
      {

        for (k = 0; k != v2; ++k)
        {
          if ((v68 & 0xC000000000000001) != 0)
          {
            v70 = MEMORY[0x2530ADF00](k, v68);
          }

          else
          {
            v70 = *(v68 + 8 * k + 32);
          }

          v71 = v70;
          MEMORY[0x2530AD700]();
          if (*((v105 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v105 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v72 = *((v105 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_252E372A4();
          }

          sub_252E372D4();
        }

        v2 = v105;

        goto LABEL_58;
      }

      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      swift_once();
      continue;
    }

    break;
  }

  v2 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v2)
  {
    goto LABEL_45;
  }

LABEL_57:
  v2 = MEMORY[0x277D84F90];
LABEL_58:
  sub_252E37614();
  if (v2 >> 62)
  {
    v74 = sub_252E378C4();
    v75 = v93;
    if (!v74)
    {
    }
  }

  else
  {
    v74 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v75 = v93;
    if (!v74)
    {
    }
  }

  if (v74 < 1)
  {
    goto LABEL_69;
  }

  v76 = 0;
  do
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v77 = MEMORY[0x2530ADF00](v76, v2);
    }

    else
    {
      v77 = *(v2 + 8 * v76 + 32);
    }

    v78 = v77;
    ++v76;
    sub_252CC3D90(0xD000000000000030, 0x8000000252E70300, 0xD00000000000006FLL, v75 | 0x8000000000000000);
    sub_252E37614();
  }

  while (v74 != v76);
}

uint64_t sub_2529DF758@<X0>(id *a1@<X0>, unint64_t a2@<X8>)
{
  v3 = v2;
  v5 = [*a1 accessories];
  sub_25293F638(0, &qword_2814B0270, 0x277CD1650);
  v6 = sub_252E37264();

  v41 = MEMORY[0x277D84F90];
  if (v6 >> 62)
  {
LABEL_34:
    v40 = v6 & 0xFFFFFFFFFFFFFF8;
    v7 = sub_252E378C4();
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_35:
    v38 = MEMORY[0x277D84F90];
    goto LABEL_36;
  }

  v40 = v6 & 0xFFFFFFFFFFFFFF8;
  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    goto LABEL_35;
  }

LABEL_3:
  v8 = 0;
  v9 = v6 & 0xC000000000000001;
  v39 = *MEMORY[0x277CCE8C8];
  v37 = v3;
  v38 = MEMORY[0x277D84F90];
  v36 = a2;
  do
  {
    a2 = v8;
    while (1)
    {
      if (v9)
      {
        v10 = MEMORY[0x2530ADF00](a2, v6);
      }

      else
      {
        if (a2 >= *(v40 + 16))
        {
          goto LABEL_33;
        }

        v10 = *(v6 + 8 * a2 + 32);
      }

      v11 = v10;
      v8 = (a2 + 1);
      if (__OFADD__(a2, 1))
      {
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v12 = [v10 matterNodeID];
      if (v12)
      {

        v13 = [v11 matterNodeID];
        if (!v13 || (v14 = v13, v3 = [v13 unsignedLongLongValue], v14, v3))
        {
          v15 = v9;
          v16 = sub_252E37434();
          v18 = v17;
          v19 = sub_252E36F34();
          v3 = v20;
          if (v16 == v19 && v18 == v20)
          {

            v9 = v15;
          }

          else
          {
            v21 = sub_252E37DB4();

            v9 = v15;
            if ((v21 & 1) == 0)
            {
              goto LABEL_7;
            }
          }

          if (([v11 isBridged] & 1) == 0)
          {
            break;
          }
        }
      }

LABEL_7:

      ++a2;
      if (v8 == v7)
      {
        a2 = v36;
        goto LABEL_36;
      }
    }

    v22 = type metadata accessor for MatterAccessory();
    v23 = *(v22 + 48);
    v24 = *(v22 + 52);
    v25 = swift_allocObject();
    v26 = [v11 matterNodeID];
    if (!v26)
    {
      *(v25 + OBJC_IVAR____TtC22HomeAutomationInternal15MatterAccessory_matterNodeID) = 0;
      goto LABEL_24;
    }

    v27 = v26;
    v28 = [v26 unsignedLongLongValue];

    *(v25 + OBJC_IVAR____TtC22HomeAutomationInternal15MatterAccessory_matterNodeID) = v28;
    if (!v28)
    {
LABEL_24:
      if (qword_27F53F4B0 != -1)
      {
        swift_once();
      }

      v29 = sub_252E36AD4();
      __swift_project_value_buffer(v29, qword_27F544CB8);
      sub_252E379F4();

      v30 = [v11 name];
      v31 = sub_252E36F34();
      v33 = v32;

      MEMORY[0x2530AD570](v31, v33);

      MEMORY[0x2530AD570](0xD000000000000015, 0x8000000252E6DF20);
      sub_252CC4050(0xD000000000000018, 0x8000000252E6DF00, 0xD000000000000075, 0x8000000252E6B7C0, 0x293A5F2874696E69, 0xE800000000000000, 19);

      v9 = v15;
    }

    sub_252D4CE7C(v11);
    MEMORY[0x2530AD700]();
    if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v34 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_252E372A4();
    }

    sub_252E372D4();
    v38 = v41;
    a2 = v36;
    v3 = v37;
  }

  while (v8 != v7);
LABEL_36:

  *a2 = v38;
  return result;
}

uint64_t sub_2529DFBF4(void *a1, const char *a2, uint64_t a3)
{
  v6 = sub_252E36AB4();
  v35 = *(v6 - 8);
  v36 = v6;
  v7 = *(v35 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x277D84F90];
  if (qword_2814B0E18 != -1)
  {
    swift_once();
  }

  v10 = qword_2814B1370;
  sub_252E37604();
  if (!a1)
  {
    if (qword_2814B0A98 != -1)
    {
      goto LABEL_44;
    }

    goto LABEL_8;
  }

  v11 = a1;
  if (qword_2814B0A98 != -1)
  {
    swift_once();
  }

  v12 = sub_252E36AD4();
  __swift_project_value_buffer(v12, qword_2814B0AA0);
  v37 = 0;
  v38 = 0xE000000000000000;
  sub_252E379F4();

  v37 = 0xD000000000000020;
  v38 = 0x8000000252E708C0;
  swift_getErrorValue();
  v13 = sub_252E37E54();
  MEMORY[0x2530AD570](v13);

  sub_252CC4050(v37, v38, 0xD00000000000006FLL, 0x8000000252E70160, 0xD00000000000001DLL, 0x8000000252E708F0, 559);

  while (1)
  {
    v15 = OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_refreshWaitSemaphores;
    swift_beginAccess();
    v16 = *&a2[v15];
    if (v16 >> 62)
    {
      if (v16 < 0)
      {
        v31 = *&a2[v15];
      }

      v17 = sub_252E378C4();
    }

    else
    {
      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v17)
    {
      if (v17 < 1)
      {
        __break(1u);
        goto LABEL_43;
      }

      v34 = v10;
      v18 = a3;

      for (i = 0; i != v17; ++i)
      {
        if ((v16 & 0xC000000000000001) != 0)
        {
          v20 = MEMORY[0x2530ADF00](i, v16);
        }

        else
        {
          v20 = *(v16 + 8 * i + 32);
        }

        v21 = v20;
        MEMORY[0x2530AD700]();
        if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_252E372A4();
        }

        sub_252E372D4();
      }

      v22 = v39;

      a3 = v18;
    }

    else
    {
      v22 = MEMORY[0x277D84F90];
    }

    sub_252E37614();
    if (*&a2[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_initializationSELFPerformanceLogger])
    {
      v23 = *&a2[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_initializationSELFPerformanceLogger];

      sub_252D2D83C(0, 0);
    }

    v34 = a3;
    if (qword_2814B0A30 != -1)
    {
      swift_once();
    }

    v25 = v35;
    v24 = v36;
    (*(v35 + 16))(v9, &a2[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_initializationSignpostID], v36);
    sub_252E375C4();
    a3 = MEMORY[0x277D84F90];
    v10 = 21;
    a2 = " enableTelemetry=YES ";
    sub_252E36A74();
    (*(v25 + 8))(v9, v24);
    sub_252E375C4();
    sub_252E36A74();
    if (v22 >> 62)
    {
      v26 = sub_252E378C4();
      if (!v26)
      {
      }
    }

    else
    {
      v26 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v26)
      {
      }
    }

    if (v26 >= 1)
    {
      break;
    }

LABEL_43:
    __break(1u);
LABEL_44:
    swift_once();
LABEL_8:
    v14 = sub_252E36AD4();
    __swift_project_value_buffer(v14, qword_2814B0AA0);
    sub_252CC3D90(0xD000000000000020, 0x8000000252E70860, 0xD00000000000006FLL, 0x8000000252E70160);
    a2[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_refreshCompleted] = 1;
  }

  v27 = 0;
  do
  {
    if ((v22 & 0xC000000000000001) != 0)
    {
      v28 = MEMORY[0x2530ADF00](v27, v22);
    }

    else
    {
      v28 = *(v22 + 8 * v27 + 32);
    }

    v29 = v28;
    if (qword_2814B0A98 != -1)
    {
      swift_once();
    }

    ++v27;
    v30 = sub_252E36AD4();
    __swift_project_value_buffer(v30, qword_2814B0AA0);
    sub_252CC3D90(0xD000000000000029, 0x8000000252E70890, 0xD00000000000006FLL, 0x8000000252E70160);
    sub_252E37614();
  }

  while (v26 != v27);
}

void sub_2529E0210(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_2529E04B8()
{
  v1 = v0 + OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore__cacheRequiresInvalidation;
  swift_beginAccess();
  v2 = *(v1 + 8);
  [v2 lock];
  *v1 = 1;
  [v2 unlock];
  swift_endAccess();
  v3 = v0 + OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore__isCachedStableHomeGraphHashValid;
  swift_beginAccess();
  v4 = *(v3 + 8);
  [v4 lock];
  *v3 = 0;
  [v4 unlock];
  return swift_endAccess();
}

void sub_2529E0588(char *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = &a1[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore__cacheRequiresInvalidation];
  swift_beginAccess();
  v10 = *(v9 + 1);
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a1;
  [v10 lock];
  *v9 = 1;
  [v10 unlock];
  swift_endAccess();
  v15 = &v14[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore__isCachedStableHomeGraphHashValid];
  swift_beginAccess();
  v16 = *(v15 + 1);
  [v16 lock];
  *v15 = 0;
  [v16 unlock];
  swift_endAccess();
}

void sub_2529E06A0(char *a1, uint64_t a2, void *a3)
{
  v5 = &a1[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore__cacheRequiresInvalidation];
  swift_beginAccess();
  v6 = *(v5 + 1);
  v7 = a3;
  v8 = a1;
  [v6 lock];
  *v5 = 1;
  [v6 unlock];
  swift_endAccess();
  v9 = &v8[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore__isCachedStableHomeGraphHashValid];
  swift_beginAccess();
  v10 = *(v9 + 1);
  [v10 lock];
  *v9 = 0;
  [v10 unlock];
  swift_endAccess();
}

void sub_2529E0790(char *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = &a1[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore__cacheRequiresInvalidation];
  swift_beginAccess();
  v8 = *(v7 + 1);
  v9 = a3;
  v10 = a4;
  v11 = a1;
  [v8 lock];
  *v7 = 1;
  [v8 unlock];
  swift_endAccess();
  v12 = &v11[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore__isCachedStableHomeGraphHashValid];
  swift_beginAccess();
  v13 = *(v12 + 1);
  [v13 lock];
  *v12 = 0;
  [v13 unlock];
  swift_endAccess();
}

void sub_2529E0898()
{
  v208 = sub_252E32E84();
  v0 = *(v208 - 8);
  v1 = *(v0 + 64);
  v2 = MEMORY[0x28223BE20](v208);
  v203 = &v181 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v204 = &v181 - v5;
  MEMORY[0x28223BE20](v4);
  v7 = &v181 - v6;
  if (qword_2814B09D0 != -1)
  {
    goto LABEL_134;
  }

  while (1)
  {
    v8 = sub_252E36AD4();
    v9 = __swift_project_value_buffer(v8, qword_2814B09D8);
    v186 = "Computing currentHome";
    v187 = v9;
    sub_252CC3D90(0xD000000000000024, 0x8000000252E70360, 0xD00000000000006FLL, 0x8000000252E70160);
    v10 = sub_2529D8DC0();
    v11 = v10;
    if (!(v10 >> 62))
    {
      v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v12)
      {
        break;
      }

      goto LABEL_4;
    }

    v12 = sub_252E378C4();
    if (!v12)
    {
      break;
    }

LABEL_4:
    v192 = type metadata accessor for HomeStore();
    v185 = v11 & 0xC000000000000001;
    v189 = "eStore (prettified):";
    v188 = " {\nisCurrentHome: ";
    v182 = v11 & 0xFFFFFFFFFFFFFF8;
    v181 = v11 + 32;
    v207 = (v0 + 32);
    v202 = (v0 + 8);
    v195 = v7;
    v183 = v12;
    v13 = 0;
    v184 = v11;
    while (1)
    {
      if (v185)
      {
        v196 = MEMORY[0x2530ADF00](v13, v11);
        v14 = __OFADD__(v13, 1);
        v15 = v13 + 1;
        if (v14)
        {
          goto LABEL_129;
        }
      }

      else
      {
        if (v13 >= *(v182 + 16))
        {
          goto LABEL_133;
        }

        v196 = *(v181 + 8 * v13);

        v14 = __OFADD__(v13, 1);
        v15 = v13 + 1;
        if (v14)
        {
          goto LABEL_129;
        }
      }

      v191 = OBJC_IVAR____TtC22HomeAutomationInternal4Home_delegate;
      v16 = [*(v196 + OBJC_IVAR____TtC22HomeAutomationInternal4Home_delegate) zones];
      sub_25293F638(0, &qword_2814B01E8, 0x277CD1F50);
      v17 = sub_252E37264();

      v18 = v17 >> 62 ? sub_252E378C4() : *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v190 = v15;
      if (v18)
      {
        break;
      }

      v20 = MEMORY[0x277D84F90];
LABEL_50:
      v211 = v20;
      v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540480, &qword_252E3C910);
      v199 = sub_2529E6488(&qword_27F541110, &qword_27F540480, &qword_252E3C910);
      v200 = v65;
      v197 = sub_252E36EA4();
      v198 = v66;

      v67 = sub_2529E7CA0();
      if (v67 >> 62)
      {
        v101 = v67;
        v0 = sub_252E378C4();
        v67 = v101;
        if (!v0)
        {
LABEL_66:

          v70 = MEMORY[0x277D84F90];
          goto LABEL_67;
        }
      }

      else
      {
        v0 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v0)
        {
          goto LABEL_66;
        }
      }

      v68 = v67;
      v211 = MEMORY[0x277D84F90];
      sub_2529AA3A0(0, v0 & ~(v0 >> 63), 0);
      if (v0 < 0)
      {
        goto LABEL_131;
      }

      v69 = 0;
      v70 = v211;
      v71 = v68;
      v205 = (v68 & 0xC000000000000001);
      v206 = v0;
      v209 = v68;
      do
      {
        if (v205)
        {
          v72 = MEMORY[0x2530ADF00](v69, v71);
        }

        else
        {
          v72 = v71[v69 + 4];
        }

        v73 = v72;
        v74 = type metadata accessor for Room();
        v75 = *(v74 + 48);
        v76 = *(v74 + 52);
        v77 = swift_allocObject();
        *(v77 + OBJC_IVAR____TtC22HomeAutomationInternal4Room_delegate) = v73;
        v78 = v73;
        v79 = [v78 uniqueIdentifier];
        sub_252E32E64();

        v80 = [v78 name];
        v81 = sub_252E36F34();
        v83 = v82;

        v84 = [v78 assistantIdentifier];
        v210 = v70;
        if (v84)
        {
          v85 = sub_252E36F34();
          v87 = v86;
        }

        else
        {
          v85 = 0;
          v87 = 0;
        }

        v88 = v208;
        (*v207)(v77 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v204, v208);
        v89 = (v77 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
        *v89 = v81;
        v89[1] = v83;
        *(v77 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) = 3;
        v90 = (v77 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
        *v90 = v85;
        v90[1] = v87;
        v91 = sub_2529A3254();
        v93 = v92;

        swift_setDeallocating();
        (*v202)(v77 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v88);
        v94 = *(v77 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

        v95 = *(v77 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier + 8);

        v96 = *(*v77 + 48);
        v97 = *(*v77 + 52);
        swift_deallocClassInstance();
        v70 = v210;
        v211 = v210;
        v99 = *(v210 + 2);
        v98 = *(v210 + 3);
        if (v99 >= v98 >> 1)
        {
          sub_2529AA3A0((v98 > 1), v99 + 1, 1);
          v70 = v211;
        }

        ++v69;
        *(v70 + 2) = v99 + 1;
        v100 = &v70[16 * v99];
        *(v100 + 4) = v91;
        *(v100 + 5) = v93;
        v71 = v209;
      }

      while (v206 != v69);

      v7 = v195;
LABEL_67:
      v211 = v70;
      v194 = sub_252E36EA4();
      v201 = v102;

      v103 = [*(v196 + v191) serviceGroups];
      sub_25293F638(0, &unk_2814B0248, 0x277CD1D98);
      v104 = sub_252E37264();

      if (v104 >> 62)
      {
        v0 = sub_252E378C4();
        if (!v0)
        {
LABEL_82:

          v106 = MEMORY[0x277D84F90];
          goto LABEL_83;
        }
      }

      else
      {
        v0 = *((v104 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v0)
        {
          goto LABEL_82;
        }
      }

      v211 = MEMORY[0x277D84F90];
      sub_2529AA3A0(0, v0 & ~(v0 >> 63), 0);
      if (v0 < 0)
      {
        goto LABEL_132;
      }

      v105 = 0;
      v106 = v211;
      v107 = v104;
      v205 = (v104 & 0xC000000000000001);
      v206 = v0;
      v209 = v104;
      do
      {
        if (v205)
        {
          v108 = MEMORY[0x2530ADF00](v105, v107);
        }

        else
        {
          v108 = v107[v105 + 4];
        }

        v109 = v108;
        v110 = type metadata accessor for Group();
        v111 = *(v110 + 48);
        v112 = *(v110 + 52);
        v113 = swift_allocObject();
        *(v113 + OBJC_IVAR____TtC22HomeAutomationInternal5Group_delegate) = v109;
        v114 = v109;
        v115 = [v114 uniqueIdentifier];
        sub_252E32E64();

        v116 = [v114 name];
        v117 = sub_252E36F34();
        v119 = v118;

        v120 = [v114 assistantIdentifier];
        v210 = v106;
        if (v120)
        {
          v121 = v120;
          v122 = sub_252E36F34();
          v124 = v123;
        }

        else
        {

          v122 = 0;
          v124 = 0;
        }

        v125 = v208;
        (*v207)(v113 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v203, v208);
        v126 = (v113 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
        *v126 = v117;
        v126[1] = v119;
        *(v113 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) = 4;
        v127 = (v113 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
        *v127 = v122;
        v127[1] = v124;
        v128 = sub_2529503B8();
        v130 = v129;

        swift_setDeallocating();
        (*v202)(v113 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v125);
        v131 = *(v113 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

        v132 = *(v113 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier + 8);

        v133 = *(*v113 + 48);
        v134 = *(*v113 + 52);
        swift_deallocClassInstance();
        v106 = v210;
        v211 = v210;
        v136 = *(v210 + 2);
        v135 = *(v210 + 3);
        if (v136 >= v135 >> 1)
        {
          sub_2529AA3A0((v135 > 1), v136 + 1, 1);
          v106 = v211;
        }

        ++v105;
        *(v106 + 2) = v136 + 1;
        v137 = &v106[16 * v136];
        *(v137 + 4) = v128;
        *(v137 + 5) = v130;
        v107 = v209;
      }

      while (v206 != v105);

      v7 = v195;
LABEL_83:
      v211 = v106;
      v138 = sub_252E36EA4();
      v140 = v139;

      v211 = 0;
      v212 = 0xE000000000000000;
      sub_252E379F4();
      v141 = (v196 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      v142 = *(v196 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      v143 = *(v196 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

      MEMORY[0x2530AD570](v142, v143);

      MEMORY[0x2530AD570](0xD000000000000012, v189 | 0x8000000000000000);
      v144 = static HomeStore.shared.getter();
      v145 = sub_2529D9114();

      if (!v145)
      {
        goto LABEL_90;
      }

      v146 = v196;
      if ((sub_252E32E54() & 1) == 0 || *(v145 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) != *(v146 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType))
      {

LABEL_90:
        v147 = 0xE500000000000000;
        v148 = 0x65736C6166;
        goto LABEL_91;
      }

      if (*(v145 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) == *v141 && *(v145 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8) == v141[1])
      {
      }

      else
      {
        v177 = sub_252E37DB4();

        if ((v177 & 1) == 0)
        {
          goto LABEL_90;
        }
      }

      v147 = 0xE400000000000000;
      v148 = 1702195828;
LABEL_91:
      MEMORY[0x2530AD570](v148, v147);

      MEMORY[0x2530AD570](0xD000000000000012, v188 | 0x8000000000000000);
      v149 = static HomeStore.shared.getter();
      v150 = sub_2529F1BFC();

      if (v150)
      {
        v151 = v196;
        if ((sub_252E32E54() & 1) != 0 && *(v150 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) == *(v151 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType))
        {
          if (*(v150 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) == *v141 && *(v150 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8) == v141[1])
          {

LABEL_121:
            v152 = 0xE400000000000000;
            v153 = 1702195828;
            goto LABEL_99;
          }

          v178 = sub_252E37DB4();

          if (v178)
          {
            goto LABEL_121;
          }
        }

        else
        {
        }
      }

      v152 = 0xE500000000000000;
      v153 = 0x65736C6166;
LABEL_99:
      MEMORY[0x2530AD570](v153, v152);

      MEMORY[0x2530AD570](0x3A73656E6F7A0A0ALL, 0xE90000000000000ALL);
      MEMORY[0x2530AD570](v197, v198);
      MEMORY[0x2530AD570](0x3A736D6F6F720A0ALL, 0xE90000000000000ALL);
      v154 = v194;
      v155 = v201;
      MEMORY[0x2530AD570](v194, v201);
      MEMORY[0x2530AD570](0x7370756F72670A0ALL, 0xEA00000000000A3ALL);
      v210 = v138;
      MEMORY[0x2530AD570](v138, v140);
      MEMORY[0x2530AD570](0x73656E6563730A0ALL, 0xEA0000000000203ALL);
      v156 = sub_2529E789C();
      v0 = type metadata accessor for Scene();
      v157 = MEMORY[0x2530AD730](v156, v0);
      v159 = v158;

      MEMORY[0x2530AD570](v157, v159);

      MEMORY[0x2530AD570](32010, 0xE200000000000000);
      v161 = v211;
      v160 = v212;
      if (sub_252E37054() > 30000 || (v211 = v154, v212 = v155, sub_252947DBC(), v162 = *(sub_252E377D4() + 16), , v162 >= 0x4B1))
      {

        v211 = 0;
        v212 = 0xE000000000000000;
        sub_252E379F4();
        v163 = *v141;
        v164 = v141[1];

        MEMORY[0x2530AD570](v163, v164);

        MEMORY[0x2530AD570](0xD000000000000012, v189 | 0x8000000000000000);
        v165 = static HomeStore.shared.getter();
        v166 = sub_2529D9114();

        if (v166)
        {
          v167 = v196;
          if ((sub_252E32E54() & 1) != 0 && *(v166 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) == *(v167 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType))
          {
            if (*(v166 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) == *v141 && *(v166 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8) == v141[1])
            {

              goto LABEL_123;
            }

            v179 = sub_252E37DB4();

            if (v179)
            {
LABEL_123:
              v168 = 0xE400000000000000;
              v169 = 1702195828;
LABEL_109:
              MEMORY[0x2530AD570](v169, v168);

              MEMORY[0x2530AD570](0xD000000000000012, v188 | 0x8000000000000000);
              v170 = static HomeStore.shared.getter();
              v171 = sub_2529F1BFC();

              if (v171)
              {
                v172 = v196;
                if ((sub_252E32E54() & 1) != 0 && *(v171 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) == *(v172 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType))
                {
                  if (*(v171 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) == *v141 && *(v171 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8) == v141[1])
                  {

                    goto LABEL_125;
                  }

                  v180 = sub_252E37DB4();

                  if (v180)
                  {
LABEL_125:
                    v173 = 0xE400000000000000;
                    v174 = 1702195828;
                    goto LABEL_117;
                  }
                }

                else
                {
                }
              }

              v173 = 0xE500000000000000;
              v174 = 0x65736C6166;
LABEL_117:
              MEMORY[0x2530AD570](v174, v173);

              MEMORY[0x2530AD570](0x3A73656E6F7A0A0ALL, 0xE90000000000000ALL);
              MEMORY[0x2530AD570](v197, v198);

              MEMORY[0x2530AD570](0x73656E6563730A0ALL, 0xEA0000000000203ALL);
              sub_2529E789C();
              v0 = MEMORY[0x2530AD730]();
              v176 = v175;

              MEMORY[0x2530AD570](v0, v176);

              MEMORY[0x2530AD570](32010, 0xE200000000000000);
              sub_252CC3D90(v211, v212, 0xD00000000000006FLL, v186 | 0x8000000000000000);

              sub_2529E4C38(0x736D6F6F72, 0xE500000000000000, v194, v201, 30000, 1200);

              sub_2529E4C38(0x7370756F7267, 0xE600000000000000, v210, v140, 30000, 1200);
              goto LABEL_6;
            }
          }

          else
          {
          }
        }

        v168 = 0xE500000000000000;
        v169 = 0x65736C6166;
        goto LABEL_109;
      }

      sub_252CC3D90(v161, v160, 0xD00000000000006FLL, v186 | 0x8000000000000000);
LABEL_6:

      v13 = v190;
      v11 = v184;
      if (v190 == v183)
      {
        goto LABEL_136;
      }
    }

    v213 = MEMORY[0x277D84F90];
    sub_2529AA3A0(0, v18 & ~(v18 >> 63), 0);
    if (v18 < 0)
    {
      goto LABEL_130;
    }

    v19 = 0;
    v20 = v213;
    v198 = v17;
    v199 = v17 & 0xC000000000000001;
    v193 = v17 + 32;
    v194 = (v17 & 0xFFFFFFFFFFFFFF8);
    v197 = v18;
    while (2)
    {
      v21 = v19 + 1;
      if (!__OFADD__(v19, 1))
      {
        if (v199)
        {
          v22 = MEMORY[0x2530ADF00]();
        }

        else
        {
          if (v19 >= *(v194 + 2))
          {
            goto LABEL_128;
          }

          v22 = *(v193 + 8 * v19);
        }

        v23 = v22;
        v24 = type metadata accessor for Zone();
        v25 = *(v24 + 48);
        v26 = *(v24 + 52);
        v206 = swift_allocObject();
        *(v206 + OBJC_IVAR____TtC22HomeAutomationInternal4Zone_delegate) = v23;
        v27 = v23;
        v28 = [v27 uniqueIdentifier];
        sub_252E32E64();

        v29 = [v27 name];
        v205 = sub_252E36F34();
        v210 = v30;

        v31 = [v27 assistantIdentifier];
        v209 = v27;

        if (v31)
        {
          v32 = sub_252E36F34();
          v34 = v33;
        }

        else
        {
          v32 = 0;
          v34 = 0;
        }

        v35 = v206;
        (*v207)(v206 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v7, v208);
        v36 = (v35 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
        v37 = v209;
        v38 = v210;
        *v36 = v205;
        v36[1] = v38;
        *(v35 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) = 2;
        v39 = (v35 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
        *v39 = v32;
        v39[1] = v34;
        v40 = [v37 rooms];
        sub_25293F638(0, &qword_2814B0200, 0x277CD1D88);
        v0 = sub_252E37264();

        if (v0 >> 62)
        {
          v41 = sub_252E378C4();
        }

        else
        {
          v41 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v41)
        {
          v200 = v21;
          v42 = [v209 rooms];
          v43 = sub_252E37264();

          if (v43 >> 62)
          {
            v44 = sub_252E378C4();
            v201 = v20;
            if (!v44)
            {
              goto LABEL_43;
            }

LABEL_31:
            v211 = MEMORY[0x277D84F90];
            sub_2529AA3A0(0, v44 & ~(v44 >> 63), 0);
            if (v44 < 0)
            {
              goto LABEL_127;
            }

            v45 = 0;
            v46 = v211;
            do
            {
              if ((v43 & 0xC000000000000001) != 0)
              {
                v47 = MEMORY[0x2530ADF00](v45, v43);
              }

              else
              {
                v47 = *(v43 + 8 * v45 + 32);
              }

              v48 = v47;
              v49 = [v47 name];
              v50 = sub_252E36F34();
              v52 = v51;

              v211 = v46;
              v54 = *(v46 + 2);
              v53 = *(v46 + 3);
              if (v54 >= v53 >> 1)
              {
                sub_2529AA3A0((v53 > 1), v54 + 1, 1);
                v46 = v211;
              }

              ++v45;
              *(v46 + 2) = v54 + 1;
              v55 = &v46[16 * v54];
              *(v55 + 4) = v50;
              *(v55 + 5) = v52;
            }

            while (v44 != v45);

            v7 = v195;
          }

          else
          {
            v44 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
            v201 = v20;
            if (v44)
            {
              goto LABEL_31;
            }

LABEL_43:

            v46 = MEMORY[0x277D84F90];
          }

          v211 = v46;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540480, &qword_252E3C910);
          sub_2529E6488(&qword_27F541110, &qword_27F540480, &qword_252E3C910);
          v57 = sub_252E36EA4();
          v59 = v58;

          v211 = 0;
          v212 = 0xE000000000000000;
          sub_252E379F4();
          v60 = v210;

          v211 = v205;
          v212 = v60;
          MEMORY[0x2530AD570](0x6F6F7220200A7B20, 0xED00005B203A736DLL);
          MEMORY[0x2530AD570](v57, v59);

          MEMORY[0x2530AD570](8194653, 0xE300000000000000);
          v56 = sub_252AD24A4();
          v210 = v61;

          v18 = v197;
          v21 = v200;
          v20 = v201;
        }

        else
        {

          v56 = v205;
        }

        v213 = v20;
        v0 = v20[2];
        v62 = v20[3];
        if (v0 >= v62 >> 1)
        {
          sub_2529AA3A0((v62 > 1), v0 + 1, 1);
          v20 = v213;
        }

        v20[2] = v0 + 1;
        v63 = &v20[2 * v0];
        v64 = v210;
        v63[4] = v56;
        v63[5] = v64;
        v19 = v21;
        if (v21 == v18)
        {

          goto LABEL_50;
        }

        continue;
      }

      break;
    }

    __break(1u);
LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
LABEL_134:
    swift_once();
  }

LABEL_136:

  sub_252CC3D90(0xD00000000000001FLL, 0x8000000252E703D0, 0xD00000000000006FLL, v186 | 0x8000000000000000);
}

uint64_t sub_2529E1FF0(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v88 = a1;
  v89 = a2;
  v85 = sub_252E36C84();
  v87 = *(v85 - 8);
  v6 = *(v87 + 64);
  v7 = MEMORY[0x28223BE20](v85);
  v84 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v75 - v9;
  v11 = sub_252E36D54();
  v86 = *(v11 - 8);
  v12 = *(v86 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v82 = &v75 - v17;
  MEMORY[0x28223BE20](v16);
  v83 = &v75 - v18;
  v19 = sub_252E36AD4();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v80 = &v75 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v79 = &v75 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = &v75 - v26;
  if (qword_2814B0E18 != -1)
  {
    swift_once();
  }

  sub_252E37604();
  v81 = OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded;
  v28 = *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded);
  if (v28 != 2 && (v28 & 1) != 0)
  {
    if (qword_27F53F4F0 != -1)
    {
      swift_once();
    }

    v29 = 5457241;
    v30 = __swift_project_value_buffer(v19, qword_27F544D78);
    (*(v20 + 16))(v27, v30, v19);
    v90 = 0;
    v91 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000012, 0x8000000252E70410);
    MEMORY[0x2530AD570](v88, v89);
    MEMORY[0x2530AD570](0xD00000000000001BLL, 0x8000000252E704D0);
    v31 = *(v3 + v81);
    if (v31 == 2 || (v31 & 1) == 0)
    {
      v32 = 0xE200000000000000;
      v33 = 20302;
    }

    else
    {
      v32 = 0xE300000000000000;
      v33 = 5457241;
    }

    MEMORY[0x2530AD570](v33, v32);

    MEMORY[0x2530AD570](0xD00000000000001FLL, 0x8000000252E704F0);
    v61 = *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_refreshCompleted);
    if (v61 == 2 || (v61 & 1) == 0)
    {
      v62 = 0xE200000000000000;
      v29 = 20302;
    }

    else
    {
      v62 = 0xE300000000000000;
    }

    MEMORY[0x2530AD570](v29, v62);

    MEMORY[0x2530AD570](34, 0xE100000000000000);
    sub_252CC3D90(v90, v91, 0xD00000000000006FLL, 0x8000000252E70160);

    (*(v20 + 8))(v27, v19);
    sub_252E37614();
    return 1;
  }

  v34 = dispatch_semaphore_create(0);
  v35 = qword_2814B0A98;
  v36 = v34;
  v78 = v11;
  if (a3)
  {
    v77 = v20;
    if (v35 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v19, qword_2814B0AA0);
    v90 = 0;
    v91 = 0xE000000000000000;
    sub_252E379F4();
    v37 = v89;

    v90 = v88;
    v91 = v37;
    MEMORY[0x2530AD570](0xD000000000000015, 0x8000000252E70530);
    sub_252CC3D90(v90, v91, 0xD00000000000006FLL, 0x8000000252E70160);

    v38 = OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_refreshWaitSemaphores;
    swift_beginAccess();
    v39 = v36;
    MEMORY[0x2530AD700]();
    if (*((*(v4 + v38) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v4 + v38) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_252E372A4();
    }

    sub_252E372D4();
    swift_endAccess();
    v20 = v77;
  }

  else
  {
    if (v35 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v19, qword_2814B0AA0);
    v90 = 0;
    v91 = 0xE000000000000000;
    sub_252E379F4();
    v40 = v89;

    v90 = v88;
    v91 = v40;
    MEMORY[0x2530AD570](0xD00000000000001CLL, 0x8000000252E703F0);
    sub_252CC3D90(v90, v91, 0xD00000000000006FLL, 0x8000000252E70160);

    v41 = OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadWaitSemaphores;
    swift_beginAccess();
    v42 = v36;
    MEMORY[0x2530AD700]();
    if (*((*(v4 + v41) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v4 + v41) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v77 = v19;
      sub_252E372A4();
      v19 = v77;
    }

    sub_252E372D4();
    swift_endAccess();
  }

  sub_252E37614();
  if (!v36)
  {
    return 1;
  }

  v77 = v19;
  sub_252E36D14();
  *v10 = 5;
  v43 = v87;
  v44 = v85;
  (*(v87 + 104))(v10, *MEMORY[0x277D85188], v85);
  sub_252E36D24();
  v45 = *(v43 + 8);
  v87 = v43 + 8;
  v75 = v45;
  v45(v10, v44);
  v76 = v36;
  v46 = sub_252E375F4();
  sub_252E36D14();
  sub_252E36D34();
  v47 = *(v86 + 8);
  v48 = v78;
  v86 += 8;
  v47(v15, v78);
  if ((v46 & 1) == 0)
  {
    if (qword_27F53F4F0 != -1)
    {
      swift_once();
    }

    v54 = v77;
    v55 = __swift_project_value_buffer(v77, qword_27F544D78);
    v56 = v79;
    (*(v20 + 16))(v79, v55, v54);
    v90 = 0;
    v91 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000012, 0x8000000252E70410);
    MEMORY[0x2530AD570](v88, v89);
    MEMORY[0x2530AD570](0xD00000000000001BLL, 0x8000000252E704D0);
    v57 = *(v4 + v81);
    v58 = v76;
    if (v57 == 2 || (v57 & 1) == 0)
    {
      v59 = 0xE200000000000000;
      v60 = 20302;
    }

    else
    {
      v59 = 0xE300000000000000;
      v60 = 5457241;
    }

    MEMORY[0x2530AD570](v60, v59);

    MEMORY[0x2530AD570](0xD00000000000001FLL, 0x8000000252E704F0);
    v63 = *(v4 + OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_refreshCompleted);
    if (v63 == 2 || (v63 & 1) == 0)
    {
      v64 = 0xE200000000000000;
      v65 = 20302;
    }

    else
    {
      v64 = 0xE300000000000000;
      v65 = 5457241;
    }

    MEMORY[0x2530AD570](v65, v64);

    MEMORY[0x2530AD570](0xD00000000000001FLL, 0x8000000252E70510);
    v67 = v84;
    v66 = v85;
    sub_252E37AE4();
    MEMORY[0x2530AD570](34, 0xE100000000000000);
    sub_252CC3D90(v90, v91, 0xD00000000000006FLL, 0x8000000252E70160);

    (*(v20 + 8))(v56, v77);
    v75(v67, v66);
    v47(v82, v48);
    v47(v83, v48);
    return 1;
  }

  if (qword_27F53F4F0 != -1)
  {
    swift_once();
  }

  v49 = v77;
  v50 = __swift_project_value_buffer(v77, qword_27F544D78);
  (*(v20 + 16))(v80, v50, v49);
  v90 = 0;
  v91 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000012, 0x8000000252E70410);
  MEMORY[0x2530AD570](v88, v89);
  MEMORY[0x2530AD570](0xD000000000000028, 0x8000000252E70430);
  v51 = *(v4 + v81);
  if (v51 == 2 || (v51 & 1) != 0)
  {
    v52 = 0xE200000000000000;
    v53 = 20302;
  }

  else
  {
    v52 = 0xE300000000000000;
    v53 = 5457241;
  }

  MEMORY[0x2530AD570](v53, v52);

  MEMORY[0x2530AD570](0xD00000000000001ELL, 0x8000000252E70460);
  v69 = *(v4 + OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_refreshCompleted);
  if (v69 == 2 || (v69 & 1) == 0)
  {
    v70 = 0xE200000000000000;
    v71 = 20302;
  }

  else
  {
    v70 = 0xE300000000000000;
    v71 = 5457241;
  }

  MEMORY[0x2530AD570](v71, v70);

  MEMORY[0x2530AD570](0xD00000000000001ELL, 0x8000000252E70480);
  v73 = v84;
  v72 = v85;
  sub_252E37AE4();
  MEMORY[0x2530AD570](34, 0xE100000000000000);
  v74 = v80;
  sub_252CC4050(v90, v91, 0xD00000000000006FLL, 0x8000000252E70160, 0xD000000000000025, 0x8000000252E704A0, 981);

  (*(v20 + 8))(v74, v49);
  v75(v73, v72);
  v47(v82, v48);
  v47(v83, v48);
  return 0;
}

id HomeStore.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HomeStore();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2529E2E20(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2529E2F18;

  return v7(a1);
}

uint64_t sub_2529E2F18()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2529E3010(uint64_t *a1, uint64_t (*a2)(uint64_t), unint64_t *a3, uint64_t *a4)
{
  v8 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = a2(v8);
    *a1 = v8;
  }

  v10 = *(v8 + 16);
  v12[0] = v8 + 32;
  v12[1] = v10;
  sub_2529E30AC(v12, a3, a4);
  return sub_252E37AA4();
}

uint64_t sub_2529E30AC(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  v6 = *(a1 + 8);
  result = sub_252E37D74();
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_25293F638(0, a2, a3);
        v10 = sub_252E372B4();
        *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) = v9;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFF8;
      v12[0] = ((v10 & 0xFFFFFFFFFFFFFF8) + 32);
      v12[1] = v9;
      sub_2529E346C(v12, v13, a1, v8);
      *(v11 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    return sub_2529E31C8(0, v6, 1, a1);
  }

  return result;
}

uint64_t sub_2529E31C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v43 = sub_252E32E84();
  v8 = *(*(v43 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v43);
  v42 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v41 = &v35 - v13;
  v36 = a2;
  if (a3 != a2)
  {
    v14 = *a4;
    v40 = (v12 + 8);
    v44 = v14;
    v15 = v14 + 8 * a3 - 8;
    v16 = a1 - a3;
LABEL_6:
    v38 = v15;
    v39 = a3;
    v17 = *(v44 + 8 * a3);
    v37 = v16;
    while (1)
    {
      v18 = *v15;
      v19 = v17;
      v20 = v18;
      v46 = v19;
      v21 = [v19 uniqueIdentifier];
      v22 = v41;
      sub_252E32E64();

      v23 = sub_252E32E24();
      v45 = v24;
      v25 = *v40;
      v26 = v43;
      (*v40)(v22, v43);
      v47 = v20;
      v27 = [v20 uniqueIdentifier];
      v28 = v42;
      sub_252E32E64();

      v29 = sub_252E32E24();
      v31 = v30;
      v25(v28, v26);
      if (v23 == v29 && v45 == v31)
      {

LABEL_5:
        a3 = v39 + 1;
        v15 = v38 + 8;
        v16 = v37 - 1;
        if (v39 + 1 == v36)
        {
          return result;
        }

        goto LABEL_6;
      }

      v32 = sub_252E37DB4();

      if ((v32 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v44)
      {
        break;
      }

      v33 = *v15;
      v17 = *(v15 + 8);
      *v15 = v17;
      *(v15 + 8) = v33;
      v15 -= 8;
      if (__CFADD__(v16++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_2529E346C(void ***a1, uint64_t a2, void ***a3, uint64_t a4)
{
  v7 = v5;
  v125 = a1;
  v137 = sub_252E32E84();
  v10 = *(*(v137 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v137);
  v134 = &v120 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v133 = &v120 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v129 = &v120 - v16;
  MEMORY[0x28223BE20](v15);
  v128 = &v120 - v18;
  v19 = a3[1];
  v126 = a3;
  if (v19 < 1)
  {
    v21 = MEMORY[0x277D84F90];
LABEL_100:
    v6 = *v125;
    if (!*v125)
    {
      goto LABEL_141;
    }

    v4 = v21;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v114 = v4;
LABEL_103:
      v143 = v114;
      v4 = *(v114 + 2);
      if (v4 >= 2)
      {
        do
        {
          v115 = *a3;
          if (!*a3)
          {
            goto LABEL_139;
          }

          a3 = (v4 - 1);
          v116 = *&v114[16 * v4];
          v117 = v114;
          v118 = *&v114[16 * v4 + 24];
          sub_2529E3E28(&v115[v116], &v115[*&v114[16 * v4 + 16]], &v115[v118], v6);
          if (v7)
          {
            break;
          }

          if (v118 < v116)
          {
            goto LABEL_128;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v117 = sub_252934564(v117);
          }

          if (v4 - 2 >= *(v117 + 2))
          {
            goto LABEL_129;
          }

          v119 = &v117[16 * v4];
          *v119 = v116;
          *(v119 + 1) = v118;
          v143 = v117;
          sub_2529344D8(v4 - 1);
          v114 = v143;
          v4 = *(v143 + 2);
          a3 = v126;
        }

        while (v4 > 1);
      }

LABEL_111:

      return;
    }

LABEL_135:
    v114 = sub_252934564(v4);
    goto LABEL_103;
  }

  v20 = 0;
  v136 = (v17 + 8);
  v21 = MEMORY[0x277D84F90];
  v124 = a4;
  while (2)
  {
    v22 = v20++;
    if (v20 >= v19)
    {
      goto LABEL_27;
    }

    v123 = v21;
    v6 = *a3;
    v23 = (*a3)[v20];
    v141 = (*a3)[v22];
    v24 = v141;
    v142 = v23;
    v25 = v23;
    v4 = v24;
    LODWORD(v138) = sub_2529DDDE4(&v142, &v141);
    if (v7)
    {

      return;
    }

    v20 = v22 + 2;
    if (v22 + 2 >= v19)
    {
      v21 = v123;
      if (v138)
      {
        goto LABEL_19;
      }

      goto LABEL_27;
    }

    v122 = 0;
    v121 = v22;
    v26 = &v6[v22 + 2];
    v135 = v19;
    while (1)
    {
      v132 = v20;
      v28 = *(v26 - 1);
      v29 = *v26;
      v30 = v28;
      v139 = v29;
      v31 = [v29 uniqueIdentifier];
      v32 = v128;
      sub_252E32E64();

      v4 = sub_252E32E24();
      v6 = v33;
      v34 = v137;
      v35 = *v136;
      (*v136)(v32, v137);
      v140 = v30;
      v36 = [v30 uniqueIdentifier];
      v37 = v129;
      sub_252E32E64();

      v38 = sub_252E32E24();
      v40 = v39;
      v35(v37, v34);
      if (v4 == v38 && v6 == v40)
      {

        v27 = v135;
        if (v138)
        {
          a3 = v126;
          v21 = v123;
          a4 = v124;
          v7 = v122;
          v20 = v132;
          v22 = v121;
          goto LABEL_19;
        }

        goto LABEL_9;
      }

      v4 = sub_252E37DB4();

      v27 = v135;
      if ((v138 ^ v4))
      {
        break;
      }

LABEL_9:
      v20 = v132 + 1;
      ++v26;
      if (v27 == (v132 + 1))
      {
        v20 = v27;
        a3 = v126;
        v21 = v123;
        a4 = v124;
        v7 = v122;
        goto LABEL_18;
      }
    }

    a3 = v126;
    v21 = v123;
    a4 = v124;
    v7 = v122;
    v20 = v132;
LABEL_18:
    v22 = v121;
    if (v138)
    {
LABEL_19:
      if (v20 < v22)
      {
        goto LABEL_132;
      }

      if (v22 < v20)
      {
        v41 = 8 * v20 - 8;
        v42 = v22;
        v43 = v20;
        v44 = v22;
        do
        {
          if (v44 != --v43)
          {
            v46 = *a3;
            if (!*a3)
            {
              goto LABEL_138;
            }

            v45 = v46[v42];
            v46[v42] = *(v46 + v41);
            *(v46 + v41) = v45;
          }

          ++v44;
          v41 -= 8;
          ++v42;
        }

        while (v44 < v43);
      }
    }

LABEL_27:
    v47 = a3[1];
    if (v20 >= v47)
    {
      goto LABEL_47;
    }

    if (__OFSUB__(v20, v22))
    {
      goto LABEL_131;
    }

    if (v20 - v22 >= a4)
    {
LABEL_47:
      if (v20 < v22)
      {
        goto LABEL_130;
      }

      v68 = v21;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v21 = v68;
      }

      else
      {
        v21 = sub_252934578(0, *(v68 + 2) + 1, 1, v68);
      }

      v4 = *(v21 + 2);
      v69 = *(v21 + 3);
      v70 = v4 + 1;
      if (v4 >= v69 >> 1)
      {
        v21 = sub_252934578((v69 > 1), v4 + 1, 1, v21);
      }

      *(v21 + 2) = v70;
      v71 = &v21[16 * v4];
      *(v71 + 4) = v22;
      *(v71 + 5) = v20;
      v6 = *v125;
      if (!*v125)
      {
        goto LABEL_140;
      }

      if (!v4)
      {
LABEL_3:
        v19 = a3[1];
        a4 = v124;
        if (v20 >= v19)
        {
          goto LABEL_100;
        }

        continue;
      }

      while (1)
      {
        v72 = v70 - 1;
        if (v70 >= 4)
        {
          break;
        }

        if (v70 == 3)
        {
          v73 = *(v21 + 4);
          v74 = *(v21 + 5);
          v83 = __OFSUB__(v74, v73);
          v75 = v74 - v73;
          v76 = v83;
LABEL_67:
          if (v76)
          {
            goto LABEL_119;
          }

          v89 = &v21[16 * v70];
          v91 = *v89;
          v90 = *(v89 + 1);
          v92 = __OFSUB__(v90, v91);
          v93 = v90 - v91;
          v94 = v92;
          if (v92)
          {
            goto LABEL_122;
          }

          v95 = &v21[16 * v72 + 32];
          v97 = *v95;
          v96 = *(v95 + 1);
          v83 = __OFSUB__(v96, v97);
          v98 = v96 - v97;
          if (v83)
          {
            goto LABEL_125;
          }

          if (__OFADD__(v93, v98))
          {
            goto LABEL_126;
          }

          if (v93 + v98 >= v75)
          {
            if (v75 < v98)
            {
              v72 = v70 - 2;
            }

            goto LABEL_88;
          }

          goto LABEL_81;
        }

        v99 = &v21[16 * v70];
        v101 = *v99;
        v100 = *(v99 + 1);
        v83 = __OFSUB__(v100, v101);
        v93 = v100 - v101;
        v94 = v83;
LABEL_81:
        if (v94)
        {
          goto LABEL_121;
        }

        v102 = &v21[16 * v72];
        v104 = *(v102 + 4);
        v103 = *(v102 + 5);
        v83 = __OFSUB__(v103, v104);
        v105 = v103 - v104;
        if (v83)
        {
          goto LABEL_124;
        }

        if (v105 < v93)
        {
          goto LABEL_3;
        }

LABEL_88:
        v4 = v72 - 1;
        if (v72 - 1 >= v70)
        {
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
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
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
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
          goto LABEL_134;
        }

        if (!*a3)
        {
          goto LABEL_137;
        }

        v110 = v21;
        v111 = *&v21[16 * v4 + 32];
        v112 = *&v21[16 * v72 + 40];
        sub_2529E3E28(&(*a3)[v111], &(*a3)[*&v21[16 * v72 + 32]], &(*a3)[v112], v6);
        if (v7)
        {
          goto LABEL_111;
        }

        if (v112 < v111)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v110 = sub_252934564(v110);
        }

        if (v4 >= *(v110 + 2))
        {
          goto LABEL_116;
        }

        v113 = &v110[16 * v4];
        *(v113 + 4) = v111;
        *(v113 + 5) = v112;
        v143 = v110;
        sub_2529344D8(v72);
        v21 = v143;
        v70 = *(v143 + 2);
        if (v70 <= 1)
        {
          goto LABEL_3;
        }
      }

      v77 = &v21[16 * v70 + 32];
      v78 = *(v77 - 64);
      v79 = *(v77 - 56);
      v83 = __OFSUB__(v79, v78);
      v80 = v79 - v78;
      if (v83)
      {
        goto LABEL_117;
      }

      v82 = *(v77 - 48);
      v81 = *(v77 - 40);
      v83 = __OFSUB__(v81, v82);
      v75 = v81 - v82;
      v76 = v83;
      if (v83)
      {
        goto LABEL_118;
      }

      v84 = &v21[16 * v70];
      v86 = *v84;
      v85 = *(v84 + 1);
      v83 = __OFSUB__(v85, v86);
      v87 = v85 - v86;
      if (v83)
      {
        goto LABEL_120;
      }

      v83 = __OFADD__(v75, v87);
      v88 = v75 + v87;
      if (v83)
      {
        goto LABEL_123;
      }

      if (v88 >= v80)
      {
        v106 = &v21[16 * v72 + 32];
        v108 = *v106;
        v107 = *(v106 + 1);
        v83 = __OFSUB__(v107, v108);
        v109 = v107 - v108;
        if (v83)
        {
          goto LABEL_127;
        }

        if (v75 < v109)
        {
          v72 = v70 - 2;
        }

        goto LABEL_88;
      }

      goto LABEL_67;
    }

    break;
  }

  v48 = (v22 + a4);
  if (__OFADD__(v22, a4))
  {
    goto LABEL_133;
  }

  if (v48 >= v47)
  {
    v48 = a3[1];
  }

  if (v48 < v22)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v20 == v48)
  {
    goto LABEL_47;
  }

  v122 = v7;
  v123 = v21;
  v135 = *a3;
  v49 = &v135[v20 - 1];
  v121 = v22;
  v50 = v22 - v20;
  v127 = v48;
LABEL_38:
  v131 = v49;
  v132 = v20;
  v51 = v135[v20];
  v130 = v50;
  v52 = v50;
  while (1)
  {
    v53 = *v49;
    v54 = v51;
    v55 = v53;
    v139 = v54;
    v56 = [v54 uniqueIdentifier];
    v57 = v133;
    sub_252E32E64();

    v138 = sub_252E32E24();
    v59 = v58;
    v6 = v137;
    v60 = *v136;
    (*v136)(v57, v137);
    v140 = v55;
    v61 = [v55 uniqueIdentifier];
    v62 = v134;
    sub_252E32E64();

    v63 = sub_252E32E24();
    v4 = v64;
    v60(v62, v6);
    if (v138 == v63 && v59 == v4)
    {

LABEL_37:
      v20 = v132 + 1;
      v49 = v131 + 8;
      v50 = v130 - 1;
      if (v132 + 1 == v127)
      {
        v20 = v127;
        v7 = v122;
        v21 = v123;
        a3 = v126;
        v22 = v121;
        goto LABEL_47;
      }

      goto LABEL_38;
    }

    v65 = sub_252E37DB4();

    if ((v65 & 1) == 0)
    {
      goto LABEL_37;
    }

    if (!v135)
    {
      break;
    }

    v66 = *v49;
    v51 = *(v49 + 8);
    *v49 = v51;
    *(v49 + 8) = v66;
    v49 -= 8;
    if (__CFADD__(v52++, 1))
    {
      goto LABEL_37;
    }
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
}

uint64_t sub_2529E3E28(void **a1, void **a2, void **a3, void **a4)
{
  v76 = sub_252E32E84();
  v8 = *(v76 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v76);
  v70 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v69 = &v66 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v68 = (&v66 - v15);
  MEMORY[0x28223BE20](v14);
  v67 = &v66 - v16;
  v17 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v17 = a2 - a1;
  }

  v18 = v17 >> 3;
  v71 = a3;
  v19 = a3 - a2;
  v20 = v19 / 8;
  if (v17 >> 3 >= v19 / 8)
  {
    if (a4 != a2 || &a2[v20] <= a4)
    {
      memmove(a4, a2, 8 * v20);
    }

    v78 = &a4[v20];
    if (v19 >= 8 && a2 > a1)
    {
      v67 = (v8 + 8);
      v41 = v71;
      v77 = a4;
      v74 = a1;
      v42 = (v8 + 8);
LABEL_27:
      v75 = a2;
      v43 = a2 - 1;
      v44 = v41;
      v45 = v78;
      v68 = a2 - 1;
      do
      {
        v46 = *(v45 - 1);
        v71 = v45 - 1;
        v47 = *v43;
        v48 = v46;
        v49 = v47;
        v72 = v48;
        v50 = [v48 uniqueIdentifier];
        v51 = v69;
        sub_252E32E64();

        v52 = sub_252E32E24();
        v54 = v53;
        v55 = *v42;
        v56 = v51;
        v57 = v76;
        (*v42)(v56, v76);
        v73 = v49;
        v58 = [v49 uniqueIdentifier];
        v59 = v70;
        sub_252E32E64();

        v60 = sub_252E32E24();
        v62 = v61;
        v55(v59, v57);
        if (v52 == v60 && v54 == v62)
        {

          v41 = v44 - 1;
        }

        else
        {
          v63 = sub_252E37DB4();

          v41 = v44 - 1;
          if (v63)
          {
            a4 = v77;
            v64 = v68;
            if (v44 != v75)
            {
              *v41 = *v68;
            }

            if (v78 <= a4 || (a2 = v64, v64 <= v74))
            {
              a2 = v64;
              goto LABEL_41;
            }

            goto LABEL_27;
          }
        }

        a4 = v77;
        v43 = v68;
        v45 = v71;
        if (v78 != v44)
        {
          *v41 = *v71;
        }

        v78 = v45;
        v44 = v41;
      }

      while (v45 > a4);
      v78 = v45;
      a2 = v75;
    }
  }

  else
  {
    if (a4 != a1 || &a1[v18] <= a4)
    {
      memmove(a4, a1, 8 * v18);
    }

    v78 = &a4[v18];
    if (a2 - a1 >= 8 && a2 < v71)
    {
      v70 = (v8 + 8);
      while (1)
      {
        v74 = a1;
        v75 = a2;
        v21 = *a2;
        v77 = a4;
        v22 = *a4;
        v23 = v21;
        v24 = v22;
        v72 = v23;
        v25 = [v23 uniqueIdentifier];
        v26 = v67;
        sub_252E32E64();

        v27 = sub_252E32E24();
        v29 = v28;
        v30 = *v70;
        v31 = v76;
        (*v70)(v26, v76);
        v73 = v24;
        v32 = [v24 uniqueIdentifier];
        v33 = v68;
        sub_252E32E64();

        v34 = sub_252E32E24();
        v36 = v35;
        v30(v33, v31);
        if (v27 == v34 && v29 == v36)
        {
          break;
        }

        v37 = sub_252E37DB4();

        if ((v37 & 1) == 0)
        {
          goto LABEL_16;
        }

        v38 = v74;
        v39 = v75;
        a2 = v75 + 1;
        v40 = v71;
        a4 = v77;
        if (v74 != v75)
        {
          goto LABEL_17;
        }

LABEL_18:
        a1 = v38 + 1;
        if (a4 >= v78 || a2 >= v40)
        {
          goto LABEL_20;
        }
      }

LABEL_16:
      v39 = v77;
      a4 = v77 + 1;
      v38 = v74;
      a2 = v75;
      v40 = v71;
      if (v74 == v77)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v38 = *v39;
      goto LABEL_18;
    }

LABEL_20:
    a2 = a1;
  }

LABEL_41:
  if (a2 != a4 || a2 >= (a4 + ((v78 - a4 + (v78 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a2, a4, 8 * (v78 - a4));
  }

  return 1;
}

uint64_t type metadata accessor for HomeStore()
{
  result = qword_2814B0E08;
  if (!qword_2814B0E08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_2529E4490@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4(&v7);
  if (!v2)
  {
    *a1 = v7;
  }

  return result;
}

uint64_t sub_2529E44D4()
{
  if (qword_2814B0A70 != -1)
  {
    swift_once();
  }

  v0 = sub_252E36AD4();
  __swift_project_value_buffer(v0, qword_2814B0A78);
  sub_252CC3D90(0xD000000000000012, 0x8000000252E70940, 0xD00000000000006FLL, 0x8000000252E70160);
  if (qword_2814B0E18 != -1)
  {
    swift_once();
  }

  sub_252E37604();
  v1 = qword_2814B0E30;
  if (qword_2814B0E30)
  {
    v2 = OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_cachedResultsLock;
    v3 = *(qword_2814B0E30 + OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_cachedResultsLock);
    v4 = qword_2814B0E30;
    os_unfair_lock_lock(v3 + 4);
    v5 = sub_252CC4788(MEMORY[0x277D84F90]);
    v6 = &v4[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore__cachedResults];
    swift_beginAccess();
    v7 = v6[1];
    [v7 lock];
    v8 = *v6;
    *v6 = v5;

    [v7 unlock];
    swift_endAccess();
    os_unfair_lock_unlock((*(v1 + v2) + 16));

    v9 = qword_2814B0E30;
  }

  else
  {
    v9 = 0;
  }

  qword_2814B0E30 = 0;

  return sub_252E37614();
}

void sub_2529E4684()
{
  v1 = v0;
  if (qword_2814B0A98 != -1)
  {
    swift_once();
  }

  v2 = sub_252E36AD4();
  __swift_project_value_buffer(v2, qword_2814B0AA0);
  sub_252CC3D90(0xD000000000000026, 0x8000000252E70910, 0xD00000000000006FLL, 0x8000000252E70160);
  v3 = v0 + OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore__cacheRequiresInvalidation;
  swift_beginAccess();
  v4 = *(v3 + 8);
  [v4 lock];
  *v3 = 1;
  [v4 unlock];
  swift_endAccess();
  v5 = v1 + OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore__isCachedStableHomeGraphHashValid;
  swift_beginAccess();
  v6 = *(v5 + 8);
  [v6 lock];
  *v5 = 0;
  [v6 unlock];
  v7 = swift_endAccess();
  v8 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore__currentHomeLock);
  v9 = MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v9);
  os_unfair_lock_lock(v8 + 4);
  sub_2529E659C();
  os_unfair_lock_unlock(v8 + 4);
}

uint64_t sub_2529E4858()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_2529E4880(void *a1)
{
  v3 = *(sub_252E36AB4() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_2529DFBF4(a1, v4, v5);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_2529E490C()
{
  v1 = v0 + OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore__cacheRequiresInvalidation;
  swift_beginAccess();
  v2 = *(v1 + 8);
  [v2 lock];
  *v1 = 1;
  [v2 unlock];
  swift_endAccess();
  v3 = v0 + OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore__isCachedStableHomeGraphHashValid;
  swift_beginAccess();
  v4 = *(v3 + 8);
  [v4 lock];
  *v3 = 0;
  [v4 unlock];
  swift_endAccess();
  v5 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore__currentHomeLock);
  os_unfair_lock_lock(v5 + 4);
  sub_2529E659C();
  os_unfair_lock_unlock(v5 + 4);
}

id sub_2529E4A20(void *a1)
{
  v2 = v1;
  v4 = v1 + OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore__cacheRequiresInvalidation;
  swift_beginAccess();
  v5 = *(v4 + 8);
  [v5 lock];
  *v4 = 1;
  [v5 unlock];
  swift_endAccess();
  v6 = v2 + OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore__isCachedStableHomeGraphHashValid;
  swift_beginAccess();
  v7 = *(v6 + 8);
  [v7 lock];
  *v6 = 0;
  [v7 unlock];
  swift_endAccess();
  v8 = *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore__currentHomeLock);
  os_unfair_lock_lock(v8 + 4);
  sub_2529E659C();
  os_unfair_lock_unlock(v8 + 4);
  return [a1 setDelegate_];
}

id sub_2529E4B50(void *a1)
{
  v3 = v1 + OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore__cacheRequiresInvalidation;
  swift_beginAccess();
  v4 = *(v3 + 8);
  [v4 lock];
  *v3 = 1;
  [v4 unlock];
  swift_endAccess();
  v5 = v1 + OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore__isCachedStableHomeGraphHashValid;
  swift_beginAccess();
  v6 = *(v5 + 8);
  [v6 lock];
  *v5 = 0;
  [v6 unlock];
  swift_endAccess();
  return [a1 setDelegate_];
}

uint64_t sub_2529E4C38(uint64_t a1, unint64_t a2, char *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  sub_252947DBC();
  v10 = sub_252E377D4();
  v11 = sub_252E37054();
  v12 = *(v10 + 16);
  v43 = a5;
  if (v11 <= a5 && v12 <= a6)
  {

    if (qword_2814B09D0 != -1)
    {
LABEL_36:
      swift_once();
    }

    v13 = sub_252E36AD4();
    __swift_project_value_buffer(v13, qword_2814B09D8);
    MEMORY[0x2530AD570](a1, a2);
    MEMORY[0x2530AD570](2618, 0xE200000000000000);
    MEMORY[0x2530AD570](a3, a4);
    sub_252CC3D90(10, 0xE100000000000000, 0xD00000000000006FLL, 0x8000000252E70160);
  }

  if (!v12)
  {

    if (*(MEMORY[0x277D84F90] + 16))
    {
      goto LABEL_28;
    }
  }

  v14 = 0;
  v40 = a6;
  a4 = (v10 + 56);
  a3 = MEMORY[0x277D84F90];
  v15 = 1;
  do
  {
    v17 = *(a4 - 3);
    v16 = *(a4 - 2);
    v18 = *(a4 - 1);
    v19 = *a4;

    v20 = sub_252E37764();
    if (__OFADD__(v14, v20))
    {
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v45 = v18;
    if (v14 + v20 > v43 || *(a3 + 2) >= v40)
    {
      v44 = v15;
      if (v15 == 1)
      {
        v21 = a1;
      }

      else
      {
        sub_252E379F4();

        MEMORY[0x2530AD570](0x80E2746E6F632820, 0xAC00000023206499);
        v23 = sub_252E37D94();
        MEMORY[0x2530AD570](v23);

        MEMORY[0x2530AD570](41, 0xE100000000000000);
        v21 = a1;
        v22 = a2;
      }

      if (qword_2814B09D0 != -1)
      {
        swift_once();
      }

      v24 = sub_252E36AD4();
      __swift_project_value_buffer(v24, qword_2814B09D8);
      MEMORY[0x2530AD570](2618, 0xE200000000000000);
      v25 = v21;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541330, &qword_252E40468);
      sub_2529E6488(&qword_27F541338, &qword_27F541330, &qword_252E40468);
      sub_2529C7C0C();
      v26 = sub_252E371E4();
      v28 = v27;

      MEMORY[0x2530AD570](v26, v28);

      sub_252CC3D90(v25, v22, 0xD00000000000006FLL, 0x8000000252E70160);

      v15 = v44 + 1;
      if (__OFADD__(v44, 1))
      {
        goto LABEL_35;
      }

      v14 = 0;
      a3 = MEMORY[0x277D84F90];
    }

    else
    {

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_20;
      }
    }

    a3 = sub_2529F8778(0, *(a3 + 2) + 1, 1, a3);
LABEL_20:
    v30 = *(a3 + 2);
    v29 = *(a3 + 3);
    if (v30 >= v29 >> 1)
    {
      a3 = sub_2529F8778((v29 > 1), v30 + 1, 1, a3);
    }

    *(a3 + 2) = v30 + 1;
    v31 = &a3[32 * v30];
    *(v31 + 4) = v17;
    *(v31 + 5) = v16;
    *(v31 + 6) = v45;
    *(v31 + 7) = v19;
    v32 = sub_252E37764();

    v33 = __OFADD__(v14, v32);
    v14 += v32;
    if (v33)
    {
      goto LABEL_34;
    }

    a4 += 4;
    --v12;
  }

  while (v12);

  if (!*(a3 + 2))
  {
  }

  if (v15 != 1)
  {
    sub_252E379F4();

    MEMORY[0x2530AD570](0x80E2746E6F632820, 0xAC00000023206499);
    v34 = sub_252E37D94();
    MEMORY[0x2530AD570](v34);

    MEMORY[0x2530AD570](41, 0xE100000000000000);
    goto LABEL_29;
  }

LABEL_28:

LABEL_29:
  if (qword_2814B09D0 != -1)
  {
    swift_once();
  }

  v35 = sub_252E36AD4();
  __swift_project_value_buffer(v35, qword_2814B09D8);
  MEMORY[0x2530AD570](2618, 0xE200000000000000);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541330, &qword_252E40468);
  sub_2529E6488(&qword_27F541338, &qword_27F541330, &qword_252E40468);
  sub_2529C7C0C();
  v36 = sub_252E371E4();
  v38 = v37;

  MEMORY[0x2530AD570](v36, v38);

  sub_252CC3D90(a1, a2, 0xD00000000000006FLL, 0x8000000252E70160);
}

uint64_t sub_2529E5340()
{
  result = sub_252E36AB4();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t dispatch thunk of HomeStore.home(_:didAdd:)()
{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x288))();
}

{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x298))();
}

{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x2B8))();
}

{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x2E0))();
}

{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x308))();
}

{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x328))();
}

{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x348))();
}

uint64_t dispatch thunk of HomeStore.home(_:didRemove:)()
{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x290))();
}

{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x2A0))();
}

{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x2C0))();
}

{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x2E8))();
}

{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x310))();
}

{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x330))();
}

{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x350))();
}

uint64_t dispatch thunk of HomeStore.home(_:didUpdateNameFor:)()
{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x2A8))();
}

{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x2C8))();
}

{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x2F0))();
}

{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x318))();
}

{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x358))();
}

uint64_t dispatch thunk of HomeStore.home(_:didAdd:to:)()
{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x2D0))();
}

{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x2F8))();
}

uint64_t dispatch thunk of HomeStore.home(_:didRemove:from:)()
{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x2D8))();
}

{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x300))();
}

unint64_t sub_2529E6100()
{
  result = qword_27F53FBB0;
  if (!qword_27F53FBB0)
  {
    sub_25293F638(255, &qword_27F5412F0, 0x277CD17F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F53FBB0);
  }

  return result;
}

uint64_t sub_2529E6168(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2529E61B0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_2529E6204(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CB8, &qword_252E3F8D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2529E6274(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CB8, &qword_252E3F8D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2529E62DC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25294B954;

  return sub_2529E2E20(a1, v5);
}

uint64_t sub_2529E6394(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25293B808;

  return sub_2529E2E20(a1, v5);
}

uint64_t sub_2529E644C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore__currentHome);
  *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore__currentHome) = 0;
}

uint64_t sub_2529E6488(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2529E65BC(void *a1)
{
  v3 = sub_252E32E84();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal4Home_delegate) = a1;
  v8 = a1;
  v9 = [v8 uniqueIdentifier];
  sub_252E32E64();

  v10 = [v8 name];
  v11 = sub_252E36F34();
  v13 = v12;

  v14 = [v8 assistantIdentifier];
  if (v14)
  {
    v15 = v14;
    v16 = sub_252E36F34();
    v18 = v17;
  }

  else
  {

    v16 = 0;
    v18 = 0;
  }

  (*(v4 + 32))(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v7, v3);
  v19 = (v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
  *v19 = v11;
  v19[1] = v13;
  *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) = 1;
  v20 = (v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
  *v20 = v16;
  v20[1] = v18;
  return v1;
}

uint64_t sub_2529E6788@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal4Home_delegate);
  v4 = type metadata accessor for Home();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  v7 = swift_allocObject();
  result = sub_2529E65BC(v3);
  a1[3] = v4;
  *a1 = v7;
  return result;
}

uint64_t type metadata accessor for Home()
{
  result = qword_2814B1008;
  if (!qword_2814B1008)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_2529E6880(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  return sub_2529E68CC(a1);
}

void *sub_2529E68CC(uint64_t *a1)
{
  v3 = sub_252E32E84();
  v55 = *(v3 - 8);
  v4 = *(v55 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540488, &unk_252E3C940);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v44 - v10;
  v13 = a1[3];
  v12 = a1[4];
  v56 = a1;
  v14 = __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_252950A0C();
  sub_252E37F74();
  if (v1)
  {
    v16 = v56;
LABEL_4:
    __swift_destroy_boxed_opaque_existential_1(v16);
    type metadata accessor for Home();
    v17 = *(*v60 + 48);
    v18 = *(*v60 + 52);
    swift_deallocPartialClassInstance();
    return v14;
  }

  v15 = v8;
  LOBYTE(v57[0]) = 0;
  sub_252950ADC(&qword_27F540498);
  sub_252E37C64();
  v20 = v3;
  LOBYTE(v58) = 1;
  sub_252950A60();
  sub_252E37C64();
  v21 = v56;
  v22 = v6;
  v23 = v57[0];
  LOBYTE(v57[0]) = 2;
  v52 = sub_252E37C04();
  v53 = v23;
  v54 = v24;
  LOBYTE(v57[0]) = 3;
  v25 = sub_252E37BA4();
  v46 = v15;
  v48 = v11;
  v50 = v26;
  v51 = v20;
  v27 = v25;
  type metadata accessor for HomeStore();
  v28 = static HomeStore.shared.getter();
  v29 = sub_2529D8DC0();

  MEMORY[0x28223BE20](v30);
  v32 = v52;
  v31 = v53;
  *(&v44 - 6) = v22;
  *(&v44 - 5) = v32;
  *(&v44 - 4) = v54;
  *(&v44 - 3) = v27;
  v45 = v27;
  *(&v44 - 2) = v50;
  *(&v44 - 1) = v31;
  v33 = sub_2529A3DE8(sub_2529E965C, (&v44 - 8), v29);
  v47 = 0;

  v49 = v33;
  if (!v33)
  {
    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    v38 = sub_252E36AD4();
    v39 = __swift_project_value_buffer(v38, qword_27F544CB8);
    sub_252CC4050(0xD000000000000021, 0x8000000252E70A50, 0xD00000000000006ALL, 0x8000000252E70990, 0x6F72662874696E69, 0xEB00000000293A6DLL, 49);
    strcpy(v57, "identifier: ");
    BYTE5(v57[1]) = 0;
    HIWORD(v57[1]) = -5120;
    sub_252950ADC(&qword_27F5404A8);
    v40 = sub_252E37D94();
    MEMORY[0x2530AD570](v40);

    sub_252CC4050(v57[0], v57[1], 0xD00000000000006ALL, 0x8000000252E70990, 0x6F72662874696E69, 0xEB00000000293A6DLL, 50);

    v57[0] = 0x203A656D616ELL;
    v57[1] = 0xE600000000000000;
    MEMORY[0x2530AD570](v52, v54);

    sub_252CC4050(v57[0], v57[1], 0xD00000000000006ALL, 0x8000000252E70990, 0x6F72662874696E69, 0xEB00000000293A6DLL, 51);

    v57[0] = 0;
    v57[1] = 0xE000000000000000;
    sub_252E379F4();

    v57[0] = 0xD000000000000015;
    v57[1] = 0x8000000252E6AA20;
    v58 = v45;
    v59 = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
    v41 = sub_252E36F94();
    MEMORY[0x2530AD570](v41);

    sub_252CC4050(v57[0], v57[1], 0xD00000000000006ALL, 0x8000000252E70990, 0x6F72662874696E69, 0xEB00000000293A6DLL, 52);

    strcpy(v57, "entityType: ");
    BYTE5(v57[1]) = 0;
    HIWORD(v57[1]) = -5120;
    v58 = v53;
    v42 = sub_252E36F94();
    MEMORY[0x2530AD570](v42);

    v14 = v39;
    sub_252CC4050(v57[0], v57[1], 0xD00000000000006ALL, 0x8000000252E70990, 0x6F72662874696E69, 0xEB00000000293A6DLL, 53);

    sub_252950B20();
    swift_allocError();
    swift_willThrow();
    (*(v46 + 8))(v48, v7);
    (*(v55 + 8))(v22, v51);
    v16 = v21;
    goto LABEL_4;
  }

  v34 = v49;

  v35 = *(v34 + OBJC_IVAR____TtC22HomeAutomationInternal4Home_delegate);

  v14 = v60;
  *(v60 + OBJC_IVAR____TtC22HomeAutomationInternal4Home_delegate) = v35;
  sub_252929E74(v21, v57);
  v36 = v47;
  v37 = Entity.init(from:)(v57);
  if (v36)
  {
    (*(v15 + 8))(v48, v7);

    (*(v55 + 8))(v22, v51);
    __swift_destroy_boxed_opaque_existential_1(v21);
  }

  else
  {
    v14 = v37;
    (*(v15 + 8))(v48, v7);

    v43 = *(v55 + 8);

    v43(v22, v51);
    __swift_destroy_boxed_opaque_existential_1(v21);
  }

  return v14;
}

BOOL sub_2529E7124(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = *a1;
  if (sub_252E32E54())
  {
    v13 = *(v12 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) == a3 && *(v12 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8) == a4;
    if (v13 || (sub_252E37DB4() & 1) != 0)
    {
      v14 = *(v12 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier + 8);
      if (a6)
      {
        if (v14)
        {
          v15 = *(v12 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier) == a5 && v14 == a6;
          if (v15 || (sub_252E37DB4() & 1) != 0)
          {
            return a7 == 1;
          }
        }
      }

      else if (!v14)
      {
        return a7 == 1;
      }
    }
  }

  return 0;
}

uint64_t sub_2529E7220(void *a1)
{
  v2 = v1;
  type metadata accessor for HomeStore();
  v4 = static HomeStore.shared.getter();
  v5 = sub_2529F3704(a1);

  v8 = v2;
  v7[2] = &v8;
  LOBYTE(v2) = sub_252A00B58(sub_2529E963C, v7, v5);

  return v2 & 1;
}

uint64_t sub_2529E72B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2529E7424();
  v5 = v4;
  if (v4 >> 62)
  {
LABEL_20:
    v6 = sub_252E378C4();
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_3:
      v7 = 0;
      do
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x2530ADF00](v7, v5);
          v9 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
LABEL_16:
            __break(1u);
LABEL_17:

            return v8;
          }
        }

        else
        {
          if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_20;
          }

          v8 = *(v5 + 8 * v7 + 32);

          v9 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            goto LABEL_16;
          }
        }

        if (sub_252E32E24() == a1 && v10 == a2)
        {
          goto LABEL_17;
        }

        v12 = sub_252E37DB4();

        if (v12)
        {

          return v8;
        }

        ++v7;
      }

      while (v9 != v6);
    }
  }

  return 0;
}

uint64_t sub_2529E7424()
{
  v1 = [*(v0 + OBJC_IVAR____TtC22HomeAutomationInternal4Home_delegate) accessories];
  sub_25293F638(0, &qword_2814B0270, 0x277CD1650);
  v2 = sub_252E37264();

  v39 = MEMORY[0x277D84F90];
  if (v2 >> 62)
  {
    goto LABEL_32;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v4 = 0;
    v5 = v2 & 0xC000000000000001;
    v6 = v2 & 0xFFFFFFFFFFFFFF8;
    v38 = *MEMORY[0x277CCE8C8];
    while (1)
    {
      if (v5)
      {
        v7 = MEMORY[0x2530ADF00](v4, v2);
      }

      else
      {
        if (v4 >= *(v6 + 16))
        {
          goto LABEL_31;
        }

        v7 = *(v2 + 8 * v4 + 32);
      }

      v8 = v7;
      v9 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v10 = [v7 matterNodeID];
      if (!v10)
      {
        goto LABEL_16;
      }

      v11 = [v8 matterNodeID];
      if (v11)
      {
        v12 = v11;
        v13 = [v11 unsignedLongLongValue];

        if (!v13)
        {
          goto LABEL_16;
        }
      }

      v14 = sub_252E37434();
      v16 = v15;
      if (v14 == sub_252E36F34() && v16 == v17)
      {
      }

      else
      {
        v18 = sub_252E37DB4();

        if ((v18 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      if (([v8 isBridged] & 1) == 0)
      {
        v23 = type metadata accessor for MatterAccessory();
        v24 = *(v23 + 48);
        v25 = *(v23 + 52);
        v26 = swift_allocObject();
        v27 = [v8 matterNodeID];
        if (v27)
        {
          v28 = v27;
          v29 = [v27 unsignedLongLongValue];

          *(v26 + OBJC_IVAR____TtC22HomeAutomationInternal15MatterAccessory_matterNodeID) = v29;
          if (!v29)
          {
LABEL_25:
            if (qword_27F53F4B0 != -1)
            {
              swift_once();
            }

            v30 = sub_252E36AD4();
            __swift_project_value_buffer(v30, qword_27F544CB8);
            sub_252E379F4();

            v31 = [v8 name];
            v32 = sub_252E36F34();
            v34 = v33;

            MEMORY[0x2530AD570](v32, v34);

            MEMORY[0x2530AD570](0xD000000000000015, 0x8000000252E6DF20);
            sub_252CC4050(0xD000000000000018, 0x8000000252E6DF00, 0xD000000000000075, 0x8000000252E6B7C0, 0x293A5F2874696E69, 0xE800000000000000, 19);

            v5 = v2 & 0xC000000000000001;
            v6 = v2 & 0xFFFFFFFFFFFFFF8;
          }

          v22 = v8;
          goto LABEL_17;
        }

        *(v26 + OBJC_IVAR____TtC22HomeAutomationInternal15MatterAccessory_matterNodeID) = 0;
        goto LABEL_25;
      }

LABEL_16:
      v19 = type metadata accessor for Accessory();
      v20 = *(v19 + 48);
      v21 = *(v19 + 52);
      swift_allocObject();
      v22 = v8;
LABEL_17:
      sub_252D4CE7C(v22);
      MEMORY[0x2530AD700]();
      if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v35 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
        v6 = v2 & 0xFFFFFFFFFFFFFF8;
      }

      sub_252E372D4();
      ++v4;
      if (v9 == i)
      {
        v36 = v39;
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    ;
  }

  v36 = MEMORY[0x277D84F90];
LABEL_34:

  return v36;
}

uint64_t sub_2529E789C()
{
  v37 = sub_252E32E84();
  v1 = *(v37 - 8);
  v2 = v1[8];
  MEMORY[0x28223BE20](v37);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [*(v0 + OBJC_IVAR____TtC22HomeAutomationInternal4Home_delegate) actionSets];
  sub_25293F638(0, &unk_2814B0260, 0x277CD1800);
  v6 = sub_252E37264();

  v38 = MEMORY[0x277D84F90];
  if (v6 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v8 = 0;
    v35 = v6 & 0xFFFFFFFFFFFFFF8;
    v36 = v6 & 0xC000000000000001;
    v32 = v1 + 4;
    v33 = i;
    v34 = v6;
    while (1)
    {
      if (v36)
      {
        v9 = MEMORY[0x2530ADF00](v8, v6);
      }

      else
      {
        if (v8 >= *(v35 + 16))
        {
          goto LABEL_17;
        }

        v9 = *(v6 + 8 * v8 + 32);
      }

      v1 = v9;
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v11 = type metadata accessor for Scene();
      v12 = *(v11 + 48);
      v13 = *(v11 + 52);
      v14 = swift_allocObject();
      *(v14 + OBJC_IVAR____TtC22HomeAutomationInternal5Scene_delegate) = v1;
      v15 = v1;
      v16 = [v15 uniqueIdentifier];
      v17 = v4;
      sub_252E32E64();

      v18 = [v15 name];
      v19 = sub_252E36F34();
      v21 = v20;

      v22 = [v15 assistantIdentifier];
      if (v22)
      {
        v23 = v22;
        v24 = sub_252E36F34();
        v1 = v25;
      }

      else
      {

        v24 = 0;
        v1 = 0;
      }

      v4 = v17;
      v26 = (*v32)(v14 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v17, v37);
      v27 = (v14 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      *v27 = v19;
      v27[1] = v21;
      *(v14 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) = 5;
      v28 = (v14 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
      *v28 = v24;
      v28[1] = v1;
      MEMORY[0x2530AD700](v26);
      if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v1 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      sub_252E372D4();
      ++v8;
      v6 = v34;
      if (v10 == v33)
      {
        v29 = v38;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v29 = MEMORY[0x277D84F90];
LABEL_20:

  return v29;
}

uint64_t sub_2529E7C28(SEL *a1, unint64_t *a2, uint64_t *a3)
{
  v6 = [*(v3 + OBJC_IVAR____TtC22HomeAutomationInternal4Home_delegate) *a1];
  sub_25293F638(0, a2, a3);
  v7 = sub_252E37264();

  return v7;
}

char *sub_2529E7CA0()
{
  v1 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal4Home_delegate);
  v2 = [v1 rooms];
  sub_25293F638(0, &qword_2814B0200, 0x277CD1D88);
  v3 = sub_252E37264();

  v4 = sub_252C75928(v3);

  v8 = v4;
  sub_252DA6C70(&v7, [v1 roomForEntireHome]);

  v5 = sub_2529A372C(v8);

  return v5;
}

BOOL sub_2529E7DBC(uint64_t a1)
{
  v26 = a1;
  v2 = sub_252E32E84();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - v8;
  v10 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal4Home_delegate);
  v11 = [v10 rooms];
  sub_25293F638(0, &qword_2814B0200, 0x277CD1D88);
  v12 = sub_252E37264();

  v13 = sub_252C75928(v12);

  v29 = v13;
  sub_252DA6C70(&v28, [v10 roomForEntireHome]);

  v14 = sub_2529A372C(v29);

  if ((v14 & 0x8000000000000000) != 0 || (v14 & 0x4000000000000000) != 0)
  {
LABEL_16:
    v27 = sub_252E378C4();
  }

  else
  {
    v27 = *(v14 + 2);
  }

  v15 = 0;
  v25 = OBJC_IVAR____TtC22HomeAutomationInternal4Room_delegate;
  v16 = (v3 + 8);
  do
  {
    v3 = v15;
    if (v27 == v15)
    {
      break;
    }

    if ((v14 & 0xC000000000000001) != 0)
    {
      v17 = MEMORY[0x2530ADF00](v15, v14);
    }

    else
    {
      if (v15 >= *(v14 + 2))
      {
        goto LABEL_15;
      }

      v17 = *&v14[8 * v15 + 32];
    }

    v18 = v17;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v19 = [v17 uniqueIdentifier];
    sub_252E32E64();

    v20 = [*(v26 + v25) uniqueIdentifier];
    sub_252E32E64();

    LOBYTE(v20) = sub_252E32E54();
    v21 = *v16;
    (*v16)(v7, v2);
    v21(v9, v2);
    v15 = v3 + 1;
  }

  while ((v20 & 1) == 0);
  v22 = v27 != v3;

  return v22;
}

uint64_t sub_2529E8090()
{
  v1 = v0;
  type metadata accessor for HomeAutomationUserDefaults();
  inited = swift_initStackObject();
  v3 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v4 = sub_252E36F04();
  v5 = [v3 initWithSuiteName_];

  *(inited + 16) = v5;
  v6 = sub_2529AF248();

  if (v6 == 2)
  {
    v6 = [*(v1 + OBJC_IVAR____TtC22HomeAutomationInternal4Home_delegate) homeHubState] != 0;
  }

  else
  {
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v7 = sub_252E36AD4();
    __swift_project_value_buffer(v7, qword_27F544D60);
    sub_252E379F4();

    if (v6)
    {
      v8 = 1702195828;
    }

    else
    {
      v8 = 0x65736C6166;
    }

    if (v6)
    {
      v9 = 0xE400000000000000;
    }

    else
    {
      v9 = 0xE500000000000000;
    }

    MEMORY[0x2530AD570](v8, v9);

    sub_252CC3D90(0xD00000000000002CLL, 0x8000000252E70960, 0xD00000000000006ALL, 0x8000000252E70990);
  }

  return v6 & 1;
}

uint64_t sub_2529E8258()
{
  v1 = v0;
  type metadata accessor for HomeStore();
  v2 = static HomeStore.shared.getter();
  v3 = sub_2529F1BFC();

  if (!v3)
  {
    return 0;
  }

  v4 = _s22HomeAutomationInternal6EntityC2eeoiySbAC_ACtFZ_0(v3, v1);

  return v4 & 1;
}

unint64_t sub_2529E82CC(void *a1, uint64_t a2)
{
  v5 = [*(v2 + OBJC_IVAR____TtC22HomeAutomationInternal4Home_delegate) triggers];
  sub_25293F638(0, &qword_27F541320, 0x277CD1EC0);
  v6 = sub_252E37264();

  v7 = v6;
  v45 = MEMORY[0x277D84F90];
  if (v6 >> 62)
  {
    goto LABEL_54;
  }

  v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v10 = 0;
    v38 = v7 & 0xFFFFFFFFFFFFFF8;
    v39 = v7 & 0xC000000000000001;
    v36 = v8;
    v37 = v7 + 32;
    v11 = a2 & 0xFFFFFFFFFFFFFF8;
    v43 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v11 = a2;
    }

    v31 = v11;
    v32 = v7;
    v42 = a2 & 0xC000000000000001;
    v34 = a2;
    v35 = a2 >> 62;
    v33 = a1;
    while (1)
    {
      if (v39)
      {
        v7 = MEMORY[0x2530ADF00](v10, v32);
      }

      else
      {
        if (v10 >= *(v38 + 16))
        {
          goto LABEL_53;
        }

        v7 = *(v37 + 8 * v10);
      }

      v12 = v7;
      if (__OFADD__(v10++, 1))
      {
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        v29 = v7;
        v8 = sub_252E378C4();
        v7 = v29;
        goto LABEL_3;
      }

      if (sub_252BEFAF0(a1))
      {
        v40 = v12;
        v41 = v10;
        v14 = [v12 actionSets];
        sub_25293F638(0, &unk_2814B0260, 0x277CD1800);
        v15 = sub_252E37264();

        v44 = v9;
        if (v15 >> 62)
        {
          v7 = sub_252E378C4();
          v16 = v7;
          if (v7)
          {
LABEL_16:
            v17 = 0;
            a1 = (v15 & 0xFFFFFFFFFFFFFF8);
            while (1)
            {
              if ((v15 & 0xC000000000000001) != 0)
              {
                v7 = MEMORY[0x2530ADF00](v17, v15);
              }

              else
              {
                if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_49;
                }

                v7 = *(v15 + 8 * v17 + 32);
              }

              v18 = v7;
              a2 = v17 + 1;
              if (__OFADD__(v17, 1))
              {
                break;
              }

              v19 = [v7 actions];
              sub_25293F638(0, &qword_27F5412F0, 0x277CD17F8);
              sub_2529E6100();
              v20 = sub_252E373A4();

              v7 = sub_25297B314(v20);
              ++v17;
              if (a2 == v16)
              {
                v21 = v44;
                a1 = v33;
                a2 = v34;
                v9 = MEMORY[0x277D84F90];
                goto LABEL_27;
              }
            }

            __break(1u);
LABEL_49:
            __break(1u);
LABEL_50:
            __break(1u);
LABEL_51:
            __break(1u);
            goto LABEL_52;
          }
        }

        else
        {
          v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v16)
          {
            goto LABEL_16;
          }
        }

        v21 = v9;
LABEL_27:

        if (v21 >> 62)
        {
          v7 = sub_252E378C4();
        }

        else
        {
          v7 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v8 = v36;
        v22 = v40;
        v10 = v41;
        if (v7)
        {
          if (v35)
          {
            v7 = sub_252E378C4();
            v23 = v7;
            if (v7)
            {
LABEL_32:
              v24 = 0;
              while (v23 != v24)
              {
                if (v42)
                {
                  v7 = MEMORY[0x2530ADF00](v24, a2);
                }

                else
                {
                  if (v24 >= *(v43 + 16))
                  {
                    goto LABEL_51;
                  }

                  v7 = *(a2 + 8 * v24 + 32);
                }

                v25 = v7;
                if (__OFADD__(v24, 1))
                {
                  goto LABEL_50;
                }

                v44 = v7;
                MEMORY[0x28223BE20](v7);
                v30[2] = &v44;
                v26 = sub_252A00B74(sub_2529E9684, v30, v21);

                ++v24;
                if ((v26 & 1) == 0)
                {

                  goto LABEL_42;
                }
              }

              sub_252E37A94();
              v27 = *(v45 + 16);
              sub_252E37AC4();
              sub_252E37AD4();
              v7 = sub_252E37AA4();
LABEL_42:
              v8 = v36;
              v10 = v41;
              goto LABEL_8;
            }
          }

          else
          {
            v23 = *(v43 + 16);
            if (v23)
            {
              goto LABEL_32;
            }
          }
        }
      }

      else
      {
      }

LABEL_8:
      if (v10 == v8)
      {
        v9 = v45;
        break;
      }
    }
  }

  return v9;
}

uint64_t sub_2529E8734()
{
  v1 = v0;
  v132 = sub_252E32E84();
  v126 = *(v132 - 8);
  v2 = *(v126 + 64);
  v3 = MEMORY[0x28223BE20](v132);
  v130 = &v123 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v131 = &v123 - v6;
  MEMORY[0x28223BE20](v5);
  v8 = &v123 - v7;
  if ((sub_252979914() & 1) == 0)
  {
    return 0;
  }

  v9 = 0x65736C6166;
  v135 = 0;
  v136 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](*(v0 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name), *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8));
  MEMORY[0x2530AD570](0xD000000000000016, 0x8000000252E70A00);
  type metadata accessor for HomeStore();
  v10 = static HomeStore.shared.getter();
  v11 = sub_2529D9114();

  if (v11 && (v12 = _s22HomeAutomationInternal6EntityC2eeoiySbAC_ACtFZ_0(v11, v1), , (v12 & 1) != 0))
  {
    v13 = 0xE400000000000000;
    v14 = 1702195828;
  }

  else
  {
    v13 = 0xE500000000000000;
    v14 = 0x65736C6166;
  }

  MEMORY[0x2530AD570](v14, v13);

  MEMORY[0x2530AD570](0xD000000000000012, 0x8000000252E703B0);
  v16 = static HomeStore.shared.getter();
  v17 = sub_2529F1BFC();

  if (v17 && (v18 = _s22HomeAutomationInternal6EntityC2eeoiySbAC_ACtFZ_0(v17, v1), , (v18 & 1) != 0))
  {
    v19 = 0xE400000000000000;
    v9 = 1702195828;
  }

  else
  {
    v19 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v9, v19);

  MEMORY[0x2530AD570](0x6E6F7A202020200ALL, 0xEC000000203A7365);
  v20 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal4Home_delegate);
  v21 = [v20 zones];
  sub_25293F638(0, &qword_2814B01E8, 0x277CD1F50);
  v22 = sub_252E37264();

  if (v22 >> 62)
  {
    v23 = sub_252E378C4();
  }

  else
  {
    v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v24 = MEMORY[0x277D84F90];
  v124 = v20;
  v125 = v1;
  if (v23)
  {
    v134 = MEMORY[0x277D84F90];
    result = sub_252E37AB4();
    if (v23 < 0)
    {
      __break(1u);
      goto LABEL_58;
    }

    v25 = 0;
    v26 = v22;
    v127 = v22 & 0xC000000000000001;
    v128 = v23;
    v27 = (v126 + 32);
    v129 = v22;
    do
    {
      if (v127)
      {
        v33 = MEMORY[0x2530ADF00](v25, v26);
      }

      else
      {
        v33 = *(v26 + 8 * v25 + 32);
      }

      v34 = v33;
      v35 = type metadata accessor for Zone();
      v36 = *(v35 + 48);
      v37 = *(v35 + 52);
      v38 = swift_allocObject();
      *(v38 + OBJC_IVAR____TtC22HomeAutomationInternal4Zone_delegate) = v34;
      v39 = v34;
      v40 = [v39 uniqueIdentifier];
      v41 = v8;
      sub_252E32E64();

      v42 = [v39 name];
      v43 = sub_252E36F34();
      v45 = v44;

      v46 = [v39 assistantIdentifier];
      if (v46)
      {
        v47 = v46;
        v28 = sub_252E36F34();
        v29 = v48;
      }

      else
      {

        v28 = 0;
        v29 = 0;
      }

      v25 = (v25 + 1);
      v8 = v41;
      (*v27)(v38 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v41, v132);
      v30 = (v38 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      *v30 = v43;
      v30[1] = v45;
      *(v38 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) = 2;
      v31 = (v38 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
      *v31 = v28;
      v31[1] = v29;
      sub_252E37A94();
      v32 = *(v134 + 16);
      sub_252E37AC4();
      sub_252E37AD4();
      sub_252E37AA4();
      v26 = v129;
    }

    while (v128 != v25);

    v49 = v134;
    v20 = v124;
    v24 = MEMORY[0x277D84F90];
  }

  else
  {

    v49 = MEMORY[0x277D84F90];
  }

  v50 = type metadata accessor for Zone();
  v51 = MEMORY[0x2530AD730](v49, v50);
  v53 = v52;

  MEMORY[0x2530AD570](v51, v53);

  MEMORY[0x2530AD570](0x6F6F72202020200ALL, 0xEC000000203A736DLL);
  v54 = [v20 rooms];
  sub_25293F638(0, &qword_2814B0200, 0x277CD1D88);
  v55 = sub_252E37264();

  v56 = sub_252C75928(v55);

  v134 = v56;
  sub_252DA6C70(&v133, [v20 roomForEntireHome]);

  v57 = sub_2529A372C(v134);

  if ((v57 & 0x8000000000000000) == 0 && (v57 & 0x4000000000000000) == 0)
  {
    v58 = *(v57 + 2);
    if (v58)
    {
      goto LABEL_28;
    }

LABEL_40:

    v82 = MEMORY[0x277D84F90];
    goto LABEL_41;
  }

  v58 = sub_252E378C4();
  if (!v58)
  {
    goto LABEL_40;
  }

LABEL_28:
  v134 = v24;
  result = sub_252E37AB4();
  if (v58 < 0)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v59 = 0;
  v128 = (v126 + 32);
  v129 = v57 & 0xC000000000000001;
  do
  {
    if (v129)
    {
      v65 = MEMORY[0x2530ADF00](v59, v57);
    }

    else
    {
      v65 = *&v57[8 * v59 + 32];
    }

    v66 = v65;
    v67 = type metadata accessor for Room();
    v68 = *(v67 + 48);
    v69 = *(v67 + 52);
    v70 = swift_allocObject();
    *(v70 + OBJC_IVAR____TtC22HomeAutomationInternal4Room_delegate) = v66;
    v71 = v66;
    v72 = [v71 uniqueIdentifier];
    sub_252E32E64();

    v73 = [v71 name];
    v74 = sub_252E36F34();
    v76 = v75;

    v77 = [v71 assistantIdentifier];
    if (v77)
    {
      v78 = v57;
      v79 = v58;
      v80 = v77;
      v60 = sub_252E36F34();
      v61 = v81;

      v58 = v79;
      v57 = v78;
    }

    else
    {

      v60 = 0;
      v61 = 0;
    }

    ++v59;
    (*v128)(v70 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v131, v132);
    v62 = (v70 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
    *v62 = v74;
    v62[1] = v76;
    *(v70 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) = 3;
    v63 = (v70 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
    *v63 = v60;
    v63[1] = v61;
    sub_252E37A94();
    v64 = *(v134 + 16);
    sub_252E37AC4();
    sub_252E37AD4();
    sub_252E37AA4();
  }

  while (v58 != v59);

  v82 = v134;
  v20 = v124;
  v24 = MEMORY[0x277D84F90];
LABEL_41:
  v83 = type metadata accessor for Room();
  v84 = MEMORY[0x2530AD730](v82, v83);
  v86 = v85;

  MEMORY[0x2530AD570](v84, v86);

  MEMORY[0x2530AD570](0x6F7267202020200ALL, 0xED0000203A737075);
  v87 = [v20 serviceGroups];
  sub_25293F638(0, &unk_2814B0248, 0x277CD1D98);
  v88 = sub_252E37264();

  if (v88 >> 62)
  {
    v89 = sub_252E378C4();
    if (v89)
    {
LABEL_43:
      v134 = v24;
      result = sub_252E37AB4();
      if ((v89 & 0x8000000000000000) == 0)
      {
        v90 = 0;
        v91 = v88;
        v129 = v88 & 0xC000000000000001;
        v92 = (v126 + 32);
        v131 = v88;
        do
        {
          if (v129)
          {
            v100 = MEMORY[0x2530ADF00](v90, v91);
          }

          else
          {
            v100 = *&v91[8 * v90 + 32];
          }

          v101 = v100;
          v102 = type metadata accessor for Group();
          v103 = *(v102 + 48);
          v104 = *(v102 + 52);
          v105 = swift_allocObject();
          *(v105 + OBJC_IVAR____TtC22HomeAutomationInternal5Group_delegate) = v101;
          v106 = v101;
          v107 = [v106 uniqueIdentifier];
          sub_252E32E64();

          v108 = [v106 name];
          v109 = sub_252E36F34();
          v111 = v110;

          v112 = [v106 assistantIdentifier];
          if (v112)
          {
            v93 = v112;
            v94 = sub_252E36F34();
            v96 = v95;
          }

          else
          {

            v94 = 0;
            v96 = 0;
          }

          ++v90;
          (*v92)(v105 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v130, v132);
          v97 = (v105 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
          *v97 = v109;
          v97[1] = v111;
          *(v105 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) = 4;
          v98 = (v105 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
          *v98 = v94;
          v98[1] = v96;
          sub_252E37A94();
          v99 = *(v134 + 16);
          sub_252E37AC4();
          sub_252E37AD4();
          sub_252E37AA4();
          v91 = v131;
        }

        while (v89 != v90);

        v113 = v134;
        goto LABEL_55;
      }

LABEL_59:
      __break(1u);
      return result;
    }
  }

  else
  {
    v89 = *((v88 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v89)
    {
      goto LABEL_43;
    }
  }

  v113 = MEMORY[0x277D84F90];
LABEL_55:
  v114 = type metadata accessor for Group();
  v115 = MEMORY[0x2530AD730](v113, v114);
  v117 = v116;

  MEMORY[0x2530AD570](v115, v117);

  MEMORY[0x2530AD570](0x656373202020200ALL, 0xED0000203A73656ELL);
  v118 = sub_2529E789C();
  v119 = type metadata accessor for Scene();
  v120 = MEMORY[0x2530AD730](v118, v119);
  v122 = v121;

  MEMORY[0x2530AD570](v120, v122);

  MEMORY[0x2530AD570](32010, 0xE200000000000000);
  return v135;
}

uint64_t Home.deinit()
{
  v1 = OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier;
  v2 = sub_252E32E84();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

  v4 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier + 8);

  return v0;
}

uint64_t Home.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier;
  v2 = sub_252E32E84();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

  v4 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier + 8);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_2529E9684(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *v2;
  sub_25293F638(0, &qword_27F5412F0, 0x277CD17F8);
  return sub_252E37694() & 1;
}

uint64_t sub_2529E96EC()
{
  v1[7] = v0;
  v2 = sub_252E32E04();
  v1[8] = v2;
  v3 = *(v2 - 8);
  v1[9] = v3;
  v4 = *(v3 + 64) + 15;
  v1[10] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F38, &unk_252E41490) - 8) + 64) + 15;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v6 = sub_252E36AB4();
  v1[15] = v6;
  v7 = *(v6 - 8);
  v1[16] = v7;
  v8 = *(v7 + 64) + 15;
  v1[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2529E9864, 0, 0);
}

uint64_t sub_2529E9864()
{
  if (qword_27F53F600 != -1)
  {
    swift_once();
  }

  v1 = v0[17];
  v2 = qword_27F544F88;
  v0[18] = qword_27F544F88;
  v3 = v2;
  sub_252E36A94();
  sub_252E375D4();
  sub_252E36A84();
  v4 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v4 + 240), (v0 + 2));

  v5 = v0[5];
  v6 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v5);
  v7 = *(v6 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v0[19] = v9;
  *v9 = v0;
  v9[1] = sub_2529E9A1C;

  return v11(v5, v6);
}

uint64_t sub_2529E9A1C(uint64_t a1)
{
  v2 = *(*v1 + 152);
  v4 = *v1;
  *(*v1 + 160) = a1;

  return MEMORY[0x2822009F8](sub_2529E9B1C, 0, 0);
}

uint64_t sub_2529E9B1C()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  *(v5 + 16) = v0[20];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v6 = *(v4 + 56);
  v6(v2, 1, 1, v3);
  v6(v1, 1, 1, v3);
  v7 = *(v5 + 16);
  if (v7)
  {
    [v7 lat];
    v8 = *(v5 + 16);
    if (v8)
    {
      [v8 lng];
      v9 = [objc_allocWithZone(MEMORY[0x277D0EAB0]) init];
      GEOLocationCoordinate2DMake(v9);
      [v9 calculateAstronomicalTimeForLocation_];
      v10 = [v9 sunset];
      if (v10)
      {
        v11 = v0[12];
        v12 = v10;
        sub_252E32DB4();

        v13 = 0;
      }

      else
      {
        v13 = 1;
      }

      v15 = v0[12];
      v14 = v0[13];
      v16 = v0[8];
      sub_2529EB04C(v14);
      v6(v15, v13, 1, v16);
      sub_2529EB0B4(v15, v14);
      v17 = [v9 sunrise];
      v18 = v0[14];
      if (v17)
      {
        v19 = v0[11];
        v20 = v17;
        sub_252E32DB4();

        sub_2529EB04C(v18);
        v21 = 0;
      }

      else
      {
        sub_2529EB04C(v0[14]);

        v21 = 1;
      }

      v22 = v0[14];
      v23 = v0[11];
      v6(v23, v21, 1, v0[8]);
      sub_2529EB0B4(v23, v22);
    }
  }

  v24 = v0[17];
  v25 = v0[18];
  v26 = v0[16];
  v27 = v0[13];
  v28 = v0[14];
  v36 = v0[15];
  v37 = v0[12];
  v38 = v0[11];
  v30 = v0[9];
  v29 = v0[10];
  v31 = v0[7];
  v32 = v0[8];
  sub_2529EAFDC(v27, v31 + OBJC_IVAR____TtC22HomeAutomationInternal13TimeUtilities_sunsetDate);
  sub_2529EAFDC(v28, v31 + OBJC_IVAR____TtC22HomeAutomationInternal13TimeUtilities_sunriseDate);
  sub_252E32DC4();
  (*(v30 + 32))(v31 + OBJC_IVAR____TtC22HomeAutomationInternal13TimeUtilities_currentDate, v29, v32);
  sub_252E375C4();
  sub_252E36A74();
  sub_2529EB04C(v27);
  sub_2529EB04C(v28);
  (*(v26 + 8))(v24, v36);

  v33 = v0[1];
  v34 = v0[7];

  return v33(v34);
}

uint64_t sub_2529E9E68()
{
  v1 = v0;
  v109 = sub_252E36AD4();
  v99 = *(v109 - 8);
  v2 = *(v99 + 64);
  MEMORY[0x28223BE20](v109);
  v102 = &v96 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5415C8, &qword_252E40550);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v104 = &v96 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F38, &unk_252E41490);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v105 = &v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v96 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v96 - v14;
  v16 = sub_252E32E04();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v98 = &v96 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v101 = &v96 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v100 = &v96 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v106 = &v96 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v103 = &v96 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v107 = &v96 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v108 = &v96 - v32;
  MEMORY[0x28223BE20](v31);
  v34 = &v96 - v33;
  type metadata accessor for HomeAutomationUserDefaults();
  inited = swift_initStackObject();
  v36 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v37 = sub_252E36F04();
  v38 = [v36 initWithSuiteName_];

  *(inited + 16) = v38;
  v39 = sub_2529AED1C();

  if (v39 == 2)
  {
    sub_2529EAFDC(v1 + OBJC_IVAR____TtC22HomeAutomationInternal13TimeUtilities_sunsetDate, v15);
    v40 = *(v17 + 48);
    if (v40(v15, 1, v16) == 1)
    {
      v13 = v15;
LABEL_15:
      sub_2529EB04C(v13);
      v44 = v109;
      if (qword_27F53F4E8 != -1)
      {
        v95 = v109;
        swift_once();
        v44 = v95;
      }

      __swift_project_value_buffer(v44, qword_27F544D60);
      v112 = 0;
      v113 = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD000000000000035, 0x8000000252E70B00);
      v110 = *(v1 + 16);
      v45 = v110;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5415D0, &qword_252E40558);
      v46 = sub_252E36F94();
      MEMORY[0x2530AD570](v46);

      sub_252CC4050(v112, v113, 0xD000000000000074, 0x8000000252E70B40, 0xD000000000000020, 0x8000000252E70BC0, 68);

      v39 = 0;
      return v39 & 1;
    }

    v43 = *(v17 + 32);
    v43(v34, v15, v16);
    v97 = v1;
    sub_2529EAFDC(v1 + OBJC_IVAR____TtC22HomeAutomationInternal13TimeUtilities_sunriseDate, v13);
    if (v40(v13, 1, v16) == 1)
    {
      (*(v17 + 8))(v34, v16);
      v1 = v97;
      goto LABEL_15;
    }

    v96 = v34;
    v43(v108, v13, v16);
    v47 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v48 = sub_252E36F04();
    [v47 setDateFormat_];

    v49 = v104;
    sub_252E33004();
    v50 = sub_252E33044();
    v51 = *(v50 - 8);
    v52 = 0;
    if ((*(v51 + 48))(v49, 1, v50) != 1)
    {
      v52 = sub_252E33014();
      (*(v51 + 8))(v49, v50);
    }

    [v47 setTimeZone_];

    v53 = sub_252E32D64();
    v54 = [v47 stringFromDate_];

    if (!v54)
    {
      sub_252E36F34();
      v54 = sub_252E36F04();
    }

    v55 = [v47 dateFromString_];

    if (v55)
    {
      v56 = v105;
      sub_252E32DB4();

      v57 = 0;
    }

    else
    {
      v57 = 1;
      v56 = v105;
    }

    (*(v17 + 56))(v56, v57, 1, v16);
    sub_2529EB04C(v56);
    v58 = sub_252E32D64();
    v59 = [v47 stringFromDate_];

    if (!v59)
    {
      sub_252E36F34();
      v59 = sub_252E36F04();
    }

    v60 = [v47 dateFromString_];

    v61 = v107;
    if (v60)
    {
      v62 = v103;
      sub_252E32DB4();

      v43(v61, v62, v16);
      v63 = sub_252E32D64();
      v64 = [v47 stringFromDate_];

      if (!v64)
      {
        sub_252E36F34();
        v64 = sub_252E36F04();
      }

      v65 = [v47 dateFromString_];

      if (v65)
      {
        v66 = v100;
        sub_252E32DB4();

        v43(v106, v66, v16);
        v67 = sub_252E32D64();
        v68 = [v47 stringFromDate_];

        if (!v68)
        {
          sub_252E36F34();
          v68 = sub_252E36F04();
        }

        v69 = [v47 dateFromString_];

        if (v69)
        {
          v70 = v98;
          sub_252E32DB4();

          v43(v101, v70, v16);
          v71 = v109;
          if (qword_27F53F4E8 != -1)
          {
            swift_once();
          }

          v72 = __swift_project_value_buffer(v71, qword_27F544D60);
          v73 = v99;
          (*(v99 + 16))(v102, v72, v71);
          v112 = 0;
          v113 = 0xE000000000000000;
          sub_252E379F4();
          MEMORY[0x2530AD570](0x6E6F697461636F4CLL, 0xEA0000000000203ALL);
          v74 = *(v97 + 16);
          v75 = 0;
          v76 = 0;
          if (v74)
          {
            [v74 lat];
          }

          v110 = v76;
          v111 = v74 == 0;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540740, &unk_252E40560);
          v77 = sub_252E36F94();
          MEMORY[0x2530AD570](v77);

          MEMORY[0x2530AD570](2108704, 0xE300000000000000);
          if (v74)
          {
            [v74 lng];
            v75 = v78;
          }

          v110 = v75;
          v111 = v74 == 0;
          v79 = sub_252E36F94();
          MEMORY[0x2530AD570](v79);

          MEMORY[0x2530AD570](0xD000000000000012, 0x8000000252E70C30);
          sub_2529EB124();
          v80 = v107;
          v81 = sub_252E37D94();
          MEMORY[0x2530AD570](v81);

          MEMORY[0x2530AD570](0xD000000000000011, 0x8000000252E70C50);
          v82 = sub_252E37D94();
          MEMORY[0x2530AD570](v82);

          MEMORY[0x2530AD570](0xD000000000000012, 0x8000000252E70C70);
          v83 = v101;
          v84 = sub_252E37D94();
          MEMORY[0x2530AD570](v84);

          v85 = v102;
          sub_252CC3D90(v112, v113, 0xD000000000000074, 0x8000000252E70B40);

          (*(v73 + 8))(v85, v109);
          v86 = sub_252E32D74();
          v87 = sub_252E32D74();
          if (v86)
          {
            v88 = v96;
            if (v87)
            {
              v39 = 1;
LABEL_51:

              v93 = *(v17 + 8);
              v93(v83, v16);
              v93(v106, v16);
              v93(v80, v16);
              v93(v108, v16);
              v93(v88, v16);
              return v39 & 1;
            }
          }

          else
          {
            v88 = v96;
            if ((v87 & 1) == 0)
            {
              v39 = 0;
              goto LABEL_51;
            }
          }

          v39 = sub_252E32D84();
          goto LABEL_51;
        }

        v89 = *(v17 + 8);
        v89(v106, v16);
        v89(v61, v16);
      }

      else
      {
        (*(v17 + 8))(v61, v16);
      }
    }

    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v109, qword_27F544D60);
    v112 = 0;
    v113 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD00000000000003ALL, 0x8000000252E70BF0);
    v110 = *(v97 + 16);
    v90 = v110;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5415D0, &qword_252E40558);
    v91 = sub_252E36F94();
    MEMORY[0x2530AD570](v91);

    sub_252CC4050(v112, v113, 0xD000000000000074, 0x8000000252E70B40, 0xD000000000000020, 0x8000000252E70BC0, 80);

    v92 = *(v17 + 8);
    v92(v108, v16);
    v92(v96, v16);
    v39 = 0;
  }

  else
  {
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v109, qword_27F544D60);
    v112 = 0;
    v113 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000040, 0x8000000252E70C90);
    if (v39)
    {
      v41 = 1702195828;
    }

    else
    {
      v41 = 0x65736C6166;
    }

    if (v39)
    {
      v42 = 0xE400000000000000;
    }

    else
    {
      v42 = 0xE500000000000000;
    }

    MEMORY[0x2530AD570](v41, v42);

    sub_252CC3D90(v112, v113, 0xD000000000000074, 0x8000000252E70B40);
  }

  return v39 & 1;
}

uint64_t sub_2529EAD94()
{
  v1 = OBJC_IVAR____TtC22HomeAutomationInternal13TimeUtilities_currentDate;
  v2 = sub_252E32E04();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_2529EB04C(v0 + OBJC_IVAR____TtC22HomeAutomationInternal13TimeUtilities_sunriseDate);
  sub_2529EB04C(v0 + OBJC_IVAR____TtC22HomeAutomationInternal13TimeUtilities_sunsetDate);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TimeUtilities()
{
  result = qword_27F5415B0;
  if (!qword_27F5415B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2529EAEAC()
{
  v0 = sub_252E32E04();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_2529EAF84();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_2529EAF84()
{
  if (!qword_27F5415C0)
  {
    sub_252E32E04();
    v0 = sub_252E37734();
    if (!v1)
    {
      atomic_store(v0, &qword_27F5415C0);
    }
  }
}

uint64_t sub_2529EAFDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F38, &unk_252E41490);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2529EB04C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F38, &unk_252E41490);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2529EB0B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F38, &unk_252E41490);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2529EB124()
{
  result = qword_27F5415D8;
  if (!qword_27F5415D8)
  {
    sub_252E32E04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5415D8);
  }

  return result;
}

uint64_t sub_2529EB17C(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return MEMORY[0x2822009F8](sub_2529EB19C, 0, 0);
}

uint64_t sub_2529EB19C()
{
  v1 = v0[7];
  v2 = v0[8];
  sub_252929E74(v2 + 24, (v0 + 2));
  v3 = v0[5];
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
  v5 = *(v2 + 16);

  sub_252943BD0(sub_2529EB4A4, v5, 1, v3, v4);

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v6 = v0[1];

  return v6();
}

uint64_t sub_2529EB2AC(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25293B808;

  return sub_2529EB17C(a1);
}

uint64_t sub_2529EB368()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5415E0, &qword_252E40638);
  v2 = sub_252E34024();
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_2529EB3E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B4C8] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for DiscoverHomeUnsupportedValueFlowStrategy();
  *v9 = v4;
  v9[1] = sub_25294B954;

  return MEMORY[0x2821B9E00](a1, a2, v10, a4);
}

uint64_t sub_2529EB4E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1 == 0xD00000000000001CLL && 0x8000000252E70DF0 == a2;
  if (v5 || (sub_252E37DB4() & 1) != 0)
  {
    v7 = 19;
LABEL_7:
    result = sub_25299C950(v7);
LABEL_8:
    *(a3 + 24) = MEMORY[0x277D839B0];
    v9 = result & 1;
LABEL_9:
    *a3 = v9;
    return result;
  }

  if (a1 == 0xD000000000000019 && 0x8000000252E70E10 == a2 || (sub_252E37DB4() & 1) != 0)
  {
    swift_beginAccess();
    v10 = &unk_27F545D11;
    v11 = 19;
LABEL_15:
    v12 = sub_252D8D5A8(v10, v11);
    goto LABEL_16;
  }

  if (a1 == 0xD00000000000001CLL && 0x8000000252E70E30 == a2 || (sub_252E37DB4() & 1) != 0)
  {
    v7 = 17;
    goto LABEL_7;
  }

  if (a1 == 0xD000000000000019 && 0x8000000252E70E50 == a2 || (sub_252E37DB4() & 1) != 0)
  {
    swift_beginAccess();
    v10 = &unk_27F545D12;
    v11 = 17;
    goto LABEL_15;
  }

  if (a1 == 0xD000000000000017 && 0x8000000252E70E70 == a2 || (sub_252E37DB4() & 1) != 0)
  {
    v7 = 6;
    goto LABEL_7;
  }

  if (a1 == 0xD000000000000014 && 0x8000000252E70E90 == a2 || (sub_252E37DB4() & 1) != 0)
  {
    swift_beginAccess();
    v10 = &unk_27F545D10;
    v11 = 6;
    goto LABEL_15;
  }

  if (a1 == 0xD00000000000001ALL && 0x8000000252E70EB0 == a2 || (sub_252E37DB4() & 1) != 0)
  {
    v7 = 14;
    goto LABEL_7;
  }

  if (a1 == 0xD00000000000001CLL && 0x8000000252E70ED0 == a2 || (sub_252E37DB4() & 1) != 0)
  {
    v7 = 15;
    goto LABEL_7;
  }

  if (a1 == 0xD000000000000017 && 0x8000000252E70EF0 == a2 || (sub_252E37DB4() & 1) != 0)
  {
    swift_beginAccess();
    v10 = &unk_27F545D13;
    v11 = 14;
    goto LABEL_15;
  }

  if (a1 == 0xD000000000000019 && 0x8000000252E70F10 == a2 || (sub_252E37DB4() & 1) != 0)
  {
    swift_beginAccess();
    v10 = &unk_27F545D14;
    v11 = 15;
    goto LABEL_15;
  }

  if (a1 == 0xD000000000000014 && 0x8000000252E70F30 == a2 || (sub_252E37DB4() & 1) != 0)
  {
    swift_beginAccess();
    v12 = sub_252D8D5C0(&unk_27F545D15, 4);
    goto LABEL_16;
  }

  if (a1 == 0xD00000000000001ALL && 0x8000000252E70F50 == a2 || (sub_252E37DB4() & 1) != 0)
  {
    swift_beginAccess();
    v12 = sub_252D8D5C0(&unk_27F545D16, 5);
LABEL_16:
    v13 = v12;
    result = swift_endAccess();
    if (v13)
    {
      result = type metadata accessor for HomeAutomationClimateResponses();
      *(a3 + 24) = result;
      *a3 = v13;
    }

    else
    {
      *a3 = 0u;
      *(a3 + 16) = 0u;
    }

    return result;
  }

  if (a1 == 0x52776F6C65427369 && a2 == 0xEC00000065676E61 || (sub_252E37DB4() & 1) != 0)
  {
    result = sub_252D8C850();
    goto LABEL_8;
  }

  if (a1 == 0x5265766F62417369 && a2 == 0xEC00000065676E61 || (sub_252E37DB4() & 1) != 0)
  {
    result = sub_252D8CCA4();
    goto LABEL_8;
  }

  if (a1 == 0xD000000000000015 && 0x8000000252E70F70 == a2 || (sub_252E37DB4() & 1) != 0)
  {
    result = sub_252D8D0FC();
    goto LABEL_8;
  }

  if (a1 == 0x656C706D6F437369 && a2 == 0xEF65636976654478 || (sub_252E37DB4() & 1) != 0)
  {
    result = sub_252D8D2DC();
    goto LABEL_8;
  }

  if (a1 == 0x7265746165487369 && a2 == 0xE800000000000000 || (sub_252E37DB4() & 1) != 0)
  {
    result = sub_25299C950(19);
    if (result)
    {
      v14 = 17;
LABEL_85:
      result = sub_25299C950(v14);
      v15 = result ^ 1;
LABEL_87:
      *(a3 + 24) = MEMORY[0x277D839B0];
      v9 = v15 & 1;
      goto LABEL_9;
    }

    goto LABEL_86;
  }

  if (a1 == 0x72656C6F6F437369 && a2 == 0xE800000000000000 || (sub_252E37DB4() & 1) != 0)
  {
    result = sub_25299C950(17);
    if (result)
    {
      v14 = 19;
      goto LABEL_85;
    }

LABEL_86:
    v15 = 0;
    goto LABEL_87;
  }

  return sub_252CDF514(a1, a2, a3);
}

uint64_t PlaceHintSemantic.rawValue.getter()
{
  result = 0x69685F6573756F68;
  switch(*v0)
  {
    case 1:
      return 0x6E69685F6D6F6F72;
    case 2:
      return 0x657265685F6E69;
    case 3:
      return 0x6572656874;
    case 4:
      return 1936287860;
    case 5:
      return 0x725F6E6F6D6D6F63;
    case 6:
      return 1819042152;
    case 7:
      return 0x6E65686374696BLL;
    case 8:
      v2 = 1769367916;
      return v2 | 0x6F72676E00000000;
    case 9:
      v2 = 1768843620;
      return v2 | 0x6F72676E00000000;
    case 0xA:
      return 0x65636E6172746E65;
    case 0xB:
      return 0x6D6F6F7268746162;
    case 0xC:
      return 0x65636966666FLL;
    case 0xD:
      v3 = 1919182178;
      goto LABEL_23;
    case 0xE:
      return 0x625F72657473616DLL;
    case 0xF:
      return 0x746E656D65736162;
    case 0x10:
      return 1685217657;
    case 0x11:
      return 7174503;
    case 0x12:
      return 0x6F6F725F79616C70;
    case 0x13:
      v3 = 1918858868;
LABEL_23:
      result = v3 | 0x6D6F6F00000000;
      break;
    case 0x14:
      result = 0x706F68736B726F77;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t static PlaceHintSemantic.< infix(_:_:)(char *a1, char *a2)
{
  v2 = *a2;
  v10 = *a1;
  v3 = PlaceHintSemantic.rawValue.getter();
  v5 = v4;
  if (v3 == PlaceHintSemantic.rawValue.getter() && v5 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_252E37DB4();
  }

  return v8 & 1;
}

HomeAutomationInternal::PlaceHintSemantic_optional __swiftcall PlaceHintSemantic.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_252E37DE4();

  v5 = 0;
  v6 = 3;
  switch(v3)
  {
    case 0:
      goto LABEL_11;
    case 1:
      v5 = 1;
      goto LABEL_11;
    case 2:
      v5 = 2;
LABEL_11:
      v6 = v5;
      break;
    case 3:
      break;
    case 4:
      v6 = 4;
      break;
    case 5:
      v6 = 5;
      break;
    case 6:
      v6 = 6;
      break;
    case 7:
      v6 = 7;
      break;
    case 8:
      v6 = 8;
      break;
    case 9:
      v6 = 9;
      break;
    case 10:
      v6 = 10;
      break;
    case 11:
      v6 = 11;
      break;
    case 12:
      v6 = 12;
      break;
    case 13:
      v6 = 13;
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    default:
      v6 = 21;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_2529EBFB0(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = PlaceHintSemantic.rawValue.getter();
  v4 = v3;
  if (v2 == PlaceHintSemantic.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_252E37DB4();
  }

  return v7 & 1;
}

uint64_t sub_2529EC04C()
{
  v1 = *v0;
  sub_252E37EC4();
  PlaceHintSemantic.rawValue.getter();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_2529EC0B4()
{
  v2 = *v0;
  PlaceHintSemantic.rawValue.getter();
  sub_252E37044();
}

uint64_t sub_2529EC118()
{
  v1 = *v0;
  sub_252E37EC4();
  PlaceHintSemantic.rawValue.getter();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_2529EC188@<X0>(uint64_t *a1@<X8>)
{
  result = PlaceHintSemantic.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2529EC1B0(char *a1, char *a2)
{
  v2 = *a2;
  v10 = *a1;
  v3 = PlaceHintSemantic.rawValue.getter();
  v5 = v4;
  if (v3 == PlaceHintSemantic.rawValue.getter() && v5 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_252E37DB4();
  }

  return v8 & 1;
}

uint64_t sub_2529EC24C(char *a1, char *a2)
{
  v2 = *a1;
  v11 = *a2;
  v3 = PlaceHintSemantic.rawValue.getter();
  v5 = v4;
  if (v3 == PlaceHintSemantic.rawValue.getter() && v5 == v6)
  {

    v9 = 1;
  }

  else
  {
    v8 = sub_252E37DB4();

    v9 = v8 ^ 1;
  }

  return v9 & 1;
}

uint64_t sub_2529EC2FC(char *a1, char *a2)
{
  v2 = *a2;
  v11 = *a1;
  v3 = PlaceHintSemantic.rawValue.getter();
  v5 = v4;
  if (v3 == PlaceHintSemantic.rawValue.getter() && v5 == v6)
  {

    v9 = 1;
  }

  else
  {
    v8 = sub_252E37DB4();

    v9 = v8 ^ 1;
  }

  return v9 & 1;
}

uint64_t sub_2529EC3AC(char *a1, char *a2)
{
  v2 = *a1;
  v10 = *a2;
  v3 = PlaceHintSemantic.rawValue.getter();
  v5 = v4;
  if (v3 == PlaceHintSemantic.rawValue.getter() && v5 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_252E37DB4();
  }

  return v8 & 1;
}

uint64_t sub_2529EC508(uint64_t a1, uint64_t a2)
{
  v4 = sub_2529EC838();
  v5 = sub_2529EC88C();
  v6 = sub_2529EC8E0();

  return MEMORY[0x2821C21F8](a1, a2, v4, v5, v6);
}

unint64_t sub_2529EC57C()
{
  result = qword_27F5415E8;
  if (!qword_27F5415E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5415E8);
  }

  return result;
}

unint64_t sub_2529EC5D4()
{
  result = qword_27F5415F0;
  if (!qword_27F5415F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5415F0);
  }

  return result;
}

unint64_t sub_2529EC62C()
{
  result = qword_27F5415F8;
  if (!qword_27F5415F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F540960, &qword_252E3DF40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5415F8);
  }

  return result;
}

unint64_t sub_2529EC694()
{
  result = qword_27F541600;
  if (!qword_27F541600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F541600);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PlaceHintSemantic(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEC)
  {
    goto LABEL_17;
  }

  if (a2 + 20 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 20) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 20;
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

      return (*a1 | (v4 << 8)) - 20;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 20;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x15;
  v8 = v6 - 21;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PlaceHintSemantic(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 20 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 20) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEC)
  {
    v4 = 0;
  }

  if (a2 > 0xEB)
  {
    v5 = ((a2 - 236) >> 8) + 1;
    *result = a2 + 20;
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
    *result = a2 + 20;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2529EC838()
{
  result = qword_27F541608;
  if (!qword_27F541608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F541608);
  }

  return result;
}

unint64_t sub_2529EC88C()
{
  result = qword_27F541610;
  if (!qword_27F541610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F541610);
  }

  return result;
}

unint64_t sub_2529EC8E0()
{
  result = qword_27F541618;
  if (!qword_27F541618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F541618);
  }

  return result;
}

uint64_t HomeStore.scenes(matching:)(unint64_t a1)
{
  v143 = sub_252E32E84();
  v136 = *(v143 - 8);
  v3 = *(v136 + 64);
  MEMORY[0x28223BE20](v143);
  v142 = &v122 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_252E36AD4();
  v130 = *(v129 - 8);
  v5 = v130[8];
  v6 = MEMORY[0x28223BE20](v129);
  v128 = &v122 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v138 = &v122 - v8;
  v9 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded);
  if (v9 != 2 && (v9 & 1) == 0)
  {
    sub_2529318DC();
    v139 = swift_allocError();
    *v38 = 12;
    return v139;
  }

  v137 = v1;
  v10 = sub_2529D8DC0();
  v11 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_43:
    v12 = sub_252E378C4();
  }

  else
  {
    v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = MEMORY[0x277D84F90];
  if (v12)
  {
    v14 = 0;
    v140 = MEMORY[0x277D84F90];
    while (2)
    {
      v15 = v14;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x2530ADF00](v15, a1);
        }

        else
        {
          if (v15 >= *(v11 + 16))
          {
            goto LABEL_41;
          }

          v16 = *(a1 + 8 * v15 + 32);
        }

        v17 = v16;
        v14 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

        v18 = [v16 homeName];
        if (v18)
        {
          break;
        }

        ++v15;
        if (v14 == v12)
        {
          goto LABEL_23;
        }
      }

      v19 = v10;
      v20 = v18;
      v141 = sub_252E36F34();
      v139 = v21;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v140 = sub_2529F7A80(0, *(v140 + 2) + 1, 1, v140);
      }

      v23 = *(v140 + 2);
      v22 = *(v140 + 3);
      v10 = v19;
      if (v23 >= v22 >> 1)
      {
        v140 = sub_2529F7A80((v22 > 1), v23 + 1, 1, v140);
      }

      v24 = v140;
      v25 = v141;
      *(v140 + 2) = v23 + 1;
      v26 = &v24[16 * v23];
      v27 = v139;
      *(v26 + 4) = v25;
      *(v26 + 5) = v27;
      v13 = MEMORY[0x277D84F90];
      if (v14 != v12)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v140 = MEMORY[0x277D84F90];
  }

LABEL_23:
  v28 = *(v140 + 2);
  v141 = a1;
  if (!v28)
  {
    goto LABEL_47;
  }

  v144 = v13;
  if (v10 >> 62)
  {
    v29 = sub_252E378C4();
    if (v29)
    {
      goto LABEL_26;
    }

LABEL_45:
    v37 = MEMORY[0x277D84F90];
    goto LABEL_46;
  }

  v29 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v29)
  {
    goto LABEL_45;
  }

LABEL_26:
  v30 = 0;
  v139 = v10 & 0xC000000000000001;
  v31 = v10 & 0xFFFFFFFFFFFFFF8;
  while (v139)
  {
    v32 = v10;
    v34 = MEMORY[0x2530ADF00](v30, v10);
    v33 = v34;
    v35 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      goto LABEL_36;
    }

LABEL_32:
    v36 = *(v33 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);
    v149[0] = *(v33 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
    v149[1] = v36;
    MEMORY[0x28223BE20](v34);
    *(&v122 - 2) = v149;

    v11 = sub_2529ED970(sub_2529FBFE8, (&v122 - 4), v140);

    if (v11)
    {
      sub_252E37A94();
      v11 = *(v144 + 16);
      sub_252E37AC4();
      sub_252E37AD4();
      sub_252E37AA4();
    }

    else
    {
    }

    a1 = v141;
    ++v30;
    v10 = v32;
    if (v35 == v29)
    {
      goto LABEL_37;
    }
  }

  if (v30 >= *(v31 + 16))
  {
    goto LABEL_42;
  }

  v32 = v10;
  v33 = *(v10 + 8 * v30 + 32);

  v35 = v30 + 1;
  if (!__OFADD__(v30, 1))
  {
    goto LABEL_32;
  }

LABEL_36:
  __break(1u);
LABEL_37:
  v37 = v144;
LABEL_46:

  v10 = v37;
LABEL_47:
  v39 = sub_2529F442C(v10, a1);
  if (v39)
  {
    v40 = v39;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_252E3C130;
    *(v10 + 32) = v40;
  }

  if (qword_27F53F4C0 == -1)
  {
    goto LABEL_50;
  }

LABEL_149:
  swift_once();
LABEL_50:
  v41 = v129;
  v42 = __swift_project_value_buffer(v129, qword_27F544CE8);
  v149[0] = 0;
  v149[1] = 0xE000000000000000;
  sub_252E379F4();

  v149[0] = 0xD000000000000016;
  v149[1] = 0x8000000252E70FB0;
  v43 = MEMORY[0x277D837D0];
  v44 = v140;
  v45 = MEMORY[0x2530AD730](v140, MEMORY[0x277D837D0]);
  MEMORY[0x2530AD570](v45);

  v127 = "Looking for scenes in ";
  sub_252CC3D90(v149[0], v149[1], 0xD00000000000007FLL, 0x8000000252E70FD0);

  v46 = sub_2529EE06C(v10);

  v47 = v130[2];
  v126 = v42;
  v125 = v130 + 2;
  v124 = v47;
  v47(v138, v42, v41);
  v149[0] = 0;
  v149[1] = 0xE000000000000000;
  sub_252E379F4();

  strcpy(v149, "All scenes in ");
  HIBYTE(v149[1]) = -18;
  v48 = MEMORY[0x2530AD730](v44, v43);
  v50 = v49;

  MEMORY[0x2530AD570](v48, v50);

  MEMORY[0x2530AD570](8250, 0xE200000000000000);
  if (v46 >> 62)
  {
    v51 = sub_252E378C4();
  }

  else
  {
    v51 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v52 = MEMORY[0x277D84F90];
  v140 = v51;
  if (v51)
  {
    v53 = 0;
    v54 = v46 & 0xC000000000000001;
    v10 = v46 & 0xFFFFFFFFFFFFFF8;
    v55 = v46;
    do
    {
      if (v54)
      {
        v56 = MEMORY[0x2530ADF00](v53, v46);
        v57 = (v53 + 1);
        if (__OFADD__(v53, 1))
        {
          goto LABEL_142;
        }
      }

      else
      {
        if (v53 >= *(v10 + 16))
        {
          goto LABEL_143;
        }

        v56 = *(v46 + 8 * v53 + 32);

        v57 = (v53 + 1);
        if (__OFADD__(v53, 1))
        {
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
          goto LABEL_149;
        }
      }

      v59 = *(v56 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      v58 = *(v56 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v52 = sub_2529F7A80(0, *(v52 + 2) + 1, 1, v52);
      }

      v61 = *(v52 + 2);
      v60 = *(v52 + 3);
      if (v61 >= v60 >> 1)
      {
        v52 = sub_2529F7A80((v60 > 1), v61 + 1, 1, v52);
      }

      *(v52 + 2) = v61 + 1;
      v62 = &v52[16 * v61];
      *(v62 + 4) = v59;
      *(v62 + 5) = v58;
      ++v53;
      v51 = v140;
      a1 = v141;
      v46 = v55;
    }

    while (v57 != v140);
  }

  v63 = MEMORY[0x2530AD730](v52, MEMORY[0x277D837D0]);
  v65 = v64;

  MEMORY[0x2530AD570](v63, v65);

  v66 = v138;
  sub_252CC3D90(v149[0], v149[1], 0xD00000000000007FLL, v127 | 0x8000000000000000);

  v67 = v130[1];
  ++v130;
  v123 = v67;
  v67(v66, v129);
  v68 = MEMORY[0x277D84F90];
  v149[0] = MEMORY[0x277D84F90];
  if (!v51)
  {
    v73 = MEMORY[0x277D84F90];
    goto LABEL_80;
  }

  v69 = 0;
  v10 = v46 & 0xFFFFFFFFFFFFFF8;
  while (2)
  {
    if ((v46 & 0xC000000000000001) != 0)
    {
      MEMORY[0x2530ADF00](v69, v46);
      v71 = (v69 + 1);
      if (__OFADD__(v69, 1))
      {
        break;
      }

      goto LABEL_73;
    }

    if (v69 >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_144;
    }

    v70 = *(v46 + 8 * v69 + 32);

    v71 = (v69 + 1);
    if (!__OFADD__(v69, 1))
    {
LABEL_73:
      if (sub_252967B6C(a1))
      {
        sub_252E37A94();
        v72 = *(v149[0] + 16);
        sub_252E37AC4();
        v51 = v140;
        sub_252E37AD4();
        sub_252E37AA4();
      }

      else
      {
      }

      ++v69;
      if (v71 == v51)
      {
        goto LABEL_78;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_78:
  v73 = v149[0];
LABEL_80:

  v144 = v68;
  if (v73 < 0 || (v73 & 0x4000000000000000) != 0)
  {
    v74 = sub_252E378C4();
  }

  else
  {
    v74 = *(v73 + 16);
  }

  v139 = MEMORY[0x277D84F90];
  if (!v74)
  {
    goto LABEL_125;
  }

  v75 = 0;
  v134 = v73 & 0xC000000000000001;
  v133 = v73 + 32;
  v141 = (v136 + 8);
  v131 = v74;
  v132 = v73;
  while (2)
  {
    while (2)
    {
      if (v134)
      {
        v77 = MEMORY[0x2530ADF00](v75, v73);
        v78 = __OFADD__(v75, 1);
        v79 = (v75 + 1);
        if (v78)
        {
          goto LABEL_147;
        }
      }

      else
      {
        if (v75 >= *(v73 + 16))
        {
          goto LABEL_148;
        }

        v77 = *(v133 + 8 * v75);

        v78 = __OFADD__(v75, 1);
        v79 = (v75 + 1);
        if (v78)
        {
          goto LABEL_147;
        }
      }

      v80 = [*(v77 + OBJC_IVAR____TtC22HomeAutomationInternal5Scene_delegate) actions];
      v81 = sub_25293F638(0, &qword_27F5412F0, 0x277CD17F8);
      sub_2529E6100();
      v10 = sub_252E373A4();

      v148 = MEMORY[0x277D84F90];
      v137 = v77;
      v138 = v79;
      v136 = v10;
      v140 = v81;
      if ((v10 & 0xC000000000000001) != 0)
      {
        swift_unknownObjectRetain();
        sub_252E37874();
        sub_252E373E4();
        v10 = v149[0];
        v82 = v149[1];
        v83 = v149[2];
        v84 = v149[3];
        v85 = v149[4];
      }

      else
      {
        v86 = -1 << *(v10 + 32);
        v82 = v10 + 56;
        v83 = ~v86;
        v87 = -v86;
        if (v87 < 64)
        {
          v88 = ~(-1 << v87);
        }

        else
        {
          v88 = -1;
        }

        v85 = v88 & *(v10 + 56);

        v84 = 0;
      }

      v135 = v83;
      v89 = (v83 + 64) >> 6;
      v90 = MEMORY[0x277D84F90];
      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_102;
      }

      while (1)
      {
        v91 = v84;
        v92 = v85;
        a1 = v84;
        if (!v85)
        {
          while (1)
          {
            a1 = v91 + 1;
            if (__OFADD__(v91, 1))
            {
              break;
            }

            if (a1 >= v89)
            {
              goto LABEL_115;
            }

            v92 = *(v82 + 8 * a1);
            ++v91;
            if (v92)
            {
              goto LABEL_100;
            }
          }

          __break(1u);
          goto LABEL_142;
        }

LABEL_100:
        v93 = (v92 - 1) & v92;
        v94 = *(*(v10 + 48) + ((a1 << 9) | (8 * __clz(__rbit64(v92)))));
        if (!v94)
        {
          break;
        }

        while (1)
        {
          type metadata accessor for Action();
          v96 = swift_allocObject();
          *(v96 + 16) = v94;
          v97 = v94;
          v98 = [v97 uniqueIdentifier];
          v99 = v142;
          sub_252E32E64();

          v100 = sub_252E32E24();
          v102 = v101;
          (*v141)(v99, v143);
          *(v96 + 24) = v100;
          *(v96 + 32) = v102;
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            v103 = 1;
          }

          else
          {
            objc_opt_self();
            if (swift_dynamicCastObjCClass())
            {
              v103 = 2;
            }

            else
            {
              objc_opt_self();
              if (swift_dynamicCastObjCClass())
              {
                v103 = 3;
              }

              else
              {
                objc_opt_self();
                v103 = 4 * (swift_dynamicCastObjCClass() != 0);
              }
            }
          }

          *(v96 + 40) = v103;
          MEMORY[0x2530AD700]();
          if (*((v148 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v148 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v104 = *((v148 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_252E372A4();
          }

          sub_252E372D4();
          v90 = v148;
          v84 = a1;
          v85 = v93;
          if ((v10 & 0x8000000000000000) == 0)
          {
            break;
          }

LABEL_102:
          v95 = sub_252E37904();
          if (v95)
          {
            v146 = v95;
            swift_dynamicCast();
            v94 = v147;
            a1 = v84;
            v93 = v85;
            if (v147)
            {
              continue;
            }
          }

          goto LABEL_115;
        }
      }

LABEL_115:
      sub_25291AE30();

      if (v90 >> 62)
      {
        v105 = sub_252E378C4();
      }

      else
      {
        v105 = *((v90 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v73 = v132;
      v106 = v131;
      v75 = v138;

      if (v105)
      {
        sub_252E37A94();
        v76 = *(v144 + 16);
        sub_252E37AC4();
        sub_252E37AD4();
        sub_252E37AA4();
        if (v75 == v106)
        {
          goto LABEL_124;
        }

        continue;
      }

      break;
    }

    if (v75 != v106)
    {
      continue;
    }

    break;
  }

LABEL_124:
  v139 = v144;
LABEL_125:

  v124(v128, v126, v129);
  v144 = 0;
  v145 = 0xE000000000000000;
  sub_252E379F4();

  v144 = 0xD000000000000014;
  v145 = 0x8000000252E71050;
  if (v139 < 0 || (v139 & 0x4000000000000000) != 0)
  {
    v107 = sub_252E378C4();
    if (v107)
    {
      goto LABEL_128;
    }
  }

  else
  {
    v107 = *(v139 + 16);
    if (v107)
    {
LABEL_128:
      v108 = 0;
      v109 = v139 & 0xC000000000000001;
      v110 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v109)
        {
          v111 = MEMORY[0x2530ADF00](v108, v139);
          v112 = v108 + 1;
          if (__OFADD__(v108, 1))
          {
            goto LABEL_145;
          }
        }

        else
        {
          if (v108 >= *(v139 + 16))
          {
            goto LABEL_146;
          }

          v111 = *(v139 + 8 * v108 + 32);

          v112 = v108 + 1;
          if (__OFADD__(v108, 1))
          {
            goto LABEL_145;
          }
        }

        v114 = *(v111 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
        v113 = *(v111 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v110 = sub_2529F7A80(0, *(v110 + 2) + 1, 1, v110);
        }

        a1 = *(v110 + 2);
        v115 = *(v110 + 3);
        if (a1 >= v115 >> 1)
        {
          v110 = sub_2529F7A80((v115 > 1), a1 + 1, 1, v110);
        }

        *(v110 + 2) = a1 + 1;
        v116 = &v110[16 * a1];
        *(v116 + 4) = v114;
        *(v116 + 5) = v113;
        ++v108;
        if (v112 == v107)
        {
          goto LABEL_154;
        }
      }
    }
  }

  v110 = MEMORY[0x277D84F90];
LABEL_154:
  v117 = MEMORY[0x2530AD730](v110, MEMORY[0x277D837D0]);
  v119 = v118;

  MEMORY[0x2530AD570](v117, v119);

  v120 = v128;
  sub_252CC3D90(v144, v145, 0xD00000000000007FLL, v127 | 0x8000000000000000);

  v123(v120, v129);
  return v139;
}

uint64_t sub_2529ED970(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

uint64_t sub_2529EDA1C(uint64_t (*a1)(_BYTE *), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v7 = (a3 + 32);
    v8 = v5 - 1;
    while (1)
    {
      memcpy(__dst, v7, sizeof(__dst));
      memcpy(__src, v7, sizeof(__src));
      sub_2529353AC(__dst, v12);
      v9 = a1(__src);
      if (v3)
      {
        break;
      }

      v4 = v9;
      memcpy(v12, __src, sizeof(v12));
      sub_252935408(v12);
      v10 = v8-- == 0;
      v7 += 504;
      if ((v4 | v10))
      {
        return v4 & 1;
      }
    }

    memcpy(v12, __src, sizeof(v12));
    sub_252935408(v12);
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4 & 1;
}

uint64_t sub_2529EDB18(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v11 = *v6;

      v8 = a1(&v11);

      if (v3)
      {
        break;
      }

      v9 = v7-- == 0;
      ++v6;
    }

    while (((v8 | v9) & 1) == 0);
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8 & 1;
}

uint64_t sub_2529EDBC8(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
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
      v14 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (v14)
      {
        v7 = a3;
        v8 = MEMORY[0x2530ADF00](v5, a3);
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_13;
        }

LABEL_7:
        v16 = v8;
        v10 = a1(&v16);

        if (!v3 && (v10 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v9 != v4)
          {
            continue;
          }
        }

        return v10 & 1;
      }

      if (v5 >= *(v6 + 16))
      {
        goto LABEL_14;
      }

      v7 = a3;
      v8 = *(a3 + 8 * v5 + 32);

      v9 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        goto LABEL_7;
      }

LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v11 = a3;
      v12 = sub_252E378C4();
      a3 = v11;
      v4 = v12;
    }

    while (v12);
  }

  v10 = 0;
  return v10 & 1;
}

uint64_t sub_2529EDD04(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v7 = a3 + 32;
    v8 = v5 - 1;
    while (1)
    {
      v9 = *(v7 + 112);
      v10 = *(v7 + 80);
      v45 = *(v7 + 96);
      v46 = v9;
      v11 = *(v7 + 112);
      v47 = *(v7 + 128);
      v12 = *(v7 + 48);
      v13 = *(v7 + 16);
      v41 = *(v7 + 32);
      v42 = v12;
      v14 = *(v7 + 48);
      v15 = *(v7 + 80);
      v43 = *(v7 + 64);
      v44 = v15;
      v16 = *(v7 + 16);
      v40[0] = *v7;
      v40[1] = v16;
      v36 = v45;
      v37 = v11;
      v38 = *(v7 + 128);
      v32 = v41;
      v33 = v14;
      v34 = v43;
      v35 = v10;
      v48 = *(v7 + 144);
      v39 = *(v7 + 144);
      v30 = v40[0];
      v31 = v13;
      sub_25297DE08(v40, &v20);
      v17 = a1(&v30);
      if (v3)
      {
        break;
      }

      v4 = v17;
      v26 = v36;
      v27 = v37;
      v28 = v38;
      v29 = v39;
      v22 = v32;
      v23 = v33;
      v24 = v34;
      v25 = v35;
      v20 = v30;
      v21 = v31;
      sub_2529AEC80(&v20);
      v18 = v8-- == 0;
      v7 += 152;
      if ((v4 | v18))
      {
        return v4 & 1;
      }
    }

    v26 = v36;
    v27 = v37;
    v28 = v38;
    v29 = v39;
    v22 = v32;
    v23 = v33;
    v24 = v34;
    v25 = v35;
    v20 = v30;
    v21 = v31;
    sub_2529AEC80(&v20);
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4 & 1;
}

uint64_t sub_2529EDE80(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 56);
    do
    {
      v8 = v6;
      v9 = *v7;
      v10 = *(v7 - 1);
      v11 = *(v7 - 8);
      v12 = *(v7 - 2);
      v15[0] = *(v7 - 3);
      v15[1] = v12;
      v16 = v11;
      v17 = v10;
      v18 = v9;

      v13 = a1(v15);

      LOBYTE(v4) = (v3 != 0) | v13;
      if ((v3 != 0) | v13 & 1)
      {
        break;
      }

      v6 = v8 - 1;
      v7 += 32;
    }

    while (v8);
  }

  return v4 & 1;
}

uint64_t sub_2529EDF44(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
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
          v8 = MEMORY[0x2530ADF00](v5, a3);
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
      v13 = sub_252E378C4();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

unint64_t sub_2529EE06C(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_48;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v31 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v3 = MEMORY[0x277D84F90];
    v26 = isUniquelyReferenced_nonNull_bridgeObject;
    v29 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v27 = v1;
    while (1)
    {
      if (v31)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x2530ADF00](v2, v26);
        v5 = __OFADD__(v2++, 1);
        if (v5)
        {
          goto LABEL_42;
        }
      }

      else
      {
        if (v2 >= *(v30 + 16))
        {
          goto LABEL_43;
        }

        v4 = *(v29 + 8 * v2);

        v5 = __OFADD__(v2++, 1);
        if (v5)
        {
          goto LABEL_42;
        }
      }

      v6 = sub_2529E789C();

      v7 = v6 >> 62;
      v8 = v6 >> 62 ? sub_252E378C4() : *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = v3 >> 62;
      if (v3 >> 62)
      {
        break;
      }

      isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v10 = isUniquelyReferenced_nonNull_bridgeObject + v8;
      if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v8))
      {
        goto LABEL_41;
      }

LABEL_13:
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v34 = v8;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v9)
        {
          goto LABEL_20;
        }

        v11 = v3 & 0xFFFFFFFFFFFFFF8;
        if (v10 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v32 = v3;
          goto LABEL_22;
        }
      }

      else
      {
        if (v9)
        {
LABEL_20:
          sub_252E378C4();
          goto LABEL_21;
        }

        v11 = v3 & 0xFFFFFFFFFFFFFF8;
      }

      v12 = *(v11 + 16);
LABEL_21:
      isUniquelyReferenced_nonNull_bridgeObject = sub_252E37A54();
      v32 = isUniquelyReferenced_nonNull_bridgeObject;
      v11 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_22:
      v13 = *(v11 + 16);
      v14 = *(v11 + 24);
      if (v7)
      {
        v16 = v11;
        isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
        v11 = v16;
        v15 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_26:
          if (((v14 >> 1) - v13) < v34)
          {
            goto LABEL_45;
          }

          v17 = v11 + 8 * v13 + 32;
          v28 = v11;
          if (v7)
          {
            if (v15 < 1)
            {
              goto LABEL_47;
            }

            sub_252A00B04(&qword_27F541898, &qword_27F541890, &unk_252E4DC80);
            for (i = 0; i != v15; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541890, &unk_252E4DC80);
              v19 = sub_2529FBE00(v33, i, v6);
              v21 = *v20;

              (v19)(v33, 0);
              *(v17 + 8 * i) = v21;
            }
          }

          else
          {
            type metadata accessor for Scene();
            swift_arrayInitWithCopy();
          }

          v1 = v27;
          v3 = v32;
          if (v34 >= 1)
          {
            v22 = *(v28 + 16);
            v5 = __OFADD__(v22, v34);
            v23 = v22 + v34;
            if (v5)
            {
              goto LABEL_46;
            }

            *(v28 + 16) = v23;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v15 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v15)
        {
          goto LABEL_26;
        }
      }

      v3 = v32;
      if (v34 > 0)
      {
        goto LABEL_44;
      }

LABEL_5:
      if (v2 == v1)
      {
        return v3;
      }
    }

    isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
    v10 = isUniquelyReferenced_nonNull_bridgeObject + v8;
    if (!__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v8))
    {
      goto LABEL_13;
    }

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
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    v24 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_252E378C4();
    isUniquelyReferenced_nonNull_bridgeObject = v24;
  }

  return MEMORY[0x277D84F90];
}

unint64_t sub_2529EE3C8(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_48;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v31 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v3 = MEMORY[0x277D84F90];
    v26 = isUniquelyReferenced_nonNull_bridgeObject;
    v29 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v27 = v1;
    while (1)
    {
      if (v31)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x2530ADF00](v2, v26);
        v5 = __OFADD__(v2++, 1);
        if (v5)
        {
          goto LABEL_42;
        }
      }

      else
      {
        if (v2 >= *(v30 + 16))
        {
          goto LABEL_43;
        }

        v4 = *(v29 + 8 * v2);

        v5 = __OFADD__(v2++, 1);
        if (v5)
        {
          goto LABEL_42;
        }
      }

      v6 = sub_2529E7424();

      v7 = v6 >> 62;
      v8 = v6 >> 62 ? sub_252E378C4() : *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = v3 >> 62;
      if (v3 >> 62)
      {
        break;
      }

      isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v10 = isUniquelyReferenced_nonNull_bridgeObject + v8;
      if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v8))
      {
        goto LABEL_41;
      }

LABEL_13:
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v34 = v8;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v9)
        {
          goto LABEL_20;
        }

        v11 = v3 & 0xFFFFFFFFFFFFFF8;
        if (v10 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v32 = v3;
          goto LABEL_22;
        }
      }

      else
      {
        if (v9)
        {
LABEL_20:
          sub_252E378C4();
          goto LABEL_21;
        }

        v11 = v3 & 0xFFFFFFFFFFFFFF8;
      }

      v12 = *(v11 + 16);
LABEL_21:
      isUniquelyReferenced_nonNull_bridgeObject = sub_252E37A54();
      v32 = isUniquelyReferenced_nonNull_bridgeObject;
      v11 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_22:
      v13 = *(v11 + 16);
      v14 = *(v11 + 24);
      if (v7)
      {
        v16 = v11;
        isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
        v11 = v16;
        v15 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_26:
          if (((v14 >> 1) - v13) < v34)
          {
            goto LABEL_45;
          }

          v17 = v11 + 8 * v13 + 32;
          v28 = v11;
          if (v7)
          {
            if (v15 < 1)
            {
              goto LABEL_47;
            }

            sub_252A00B04(&qword_27F541868, &qword_27F541840, &qword_252E40AD8);
            for (i = 0; i != v15; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541840, &qword_252E40AD8);
              v19 = sub_2529FBE00(v33, i, v6);
              v21 = *v20;

              (v19)(v33, 0);
              *(v17 + 8 * i) = v21;
            }
          }

          else
          {
            type metadata accessor for Accessory();
            swift_arrayInitWithCopy();
          }

          v1 = v27;
          v3 = v32;
          if (v34 >= 1)
          {
            v22 = *(v28 + 16);
            v5 = __OFADD__(v22, v34);
            v23 = v22 + v34;
            if (v5)
            {
              goto LABEL_46;
            }

            *(v28 + 16) = v23;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v15 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v15)
        {
          goto LABEL_26;
        }
      }

      v3 = v32;
      if (v34 > 0)
      {
        goto LABEL_44;
      }

LABEL_5:
      if (v2 == v1)
      {
        return v3;
      }
    }

    isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
    v10 = isUniquelyReferenced_nonNull_bridgeObject + v8;
    if (!__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v8))
    {
      goto LABEL_13;
    }

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
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    v24 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_252E378C4();
    isUniquelyReferenced_nonNull_bridgeObject = v24;
  }

  return MEMORY[0x277D84F90];
}

unint64_t sub_2529EE724(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_48;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v31 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v3 = MEMORY[0x277D84F90];
    v26 = isUniquelyReferenced_nonNull_bridgeObject;
    v29 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v27 = v1;
    while (1)
    {
      if (v31)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x2530ADF00](v2, v26);
        v4 = isUniquelyReferenced_nonNull_bridgeObject;
        v5 = __OFADD__(v2++, 1);
        if (v5)
        {
          goto LABEL_42;
        }
      }

      else
      {
        if (v2 >= *(v30 + 16))
        {
          goto LABEL_43;
        }

        v4 = *(v29 + 8 * v2);

        v5 = __OFADD__(v2++, 1);
        if (v5)
        {
          goto LABEL_42;
        }
      }

      v6 = *(v4 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_services);

      v7 = v6 >> 62;
      v8 = v6 >> 62 ? sub_252E378C4() : *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = v3 >> 62;
      if (v3 >> 62)
      {
        break;
      }

      isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v10 = isUniquelyReferenced_nonNull_bridgeObject + v8;
      if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v8))
      {
        goto LABEL_41;
      }

LABEL_13:
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v33 = v8;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v9)
        {
          goto LABEL_20;
        }

        v11 = v3 & 0xFFFFFFFFFFFFFF8;
        if (v10 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_22;
        }
      }

      else
      {
        if (v9)
        {
LABEL_20:
          sub_252E378C4();
          goto LABEL_21;
        }

        v11 = v3 & 0xFFFFFFFFFFFFFF8;
      }

      v12 = *(v11 + 16);
LABEL_21:
      isUniquelyReferenced_nonNull_bridgeObject = sub_252E37A54();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v11 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_22:
      v13 = *(v11 + 16);
      v14 = *(v11 + 24);
      if (v7)
      {
        v16 = v11;
        isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
        v11 = v16;
        v15 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_26:
          if (((v14 >> 1) - v13) < v33)
          {
            goto LABEL_45;
          }

          v17 = v11 + 8 * v13 + 32;
          v28 = v11;
          if (v7)
          {
            if (v15 < 1)
            {
              goto LABEL_47;
            }

            sub_252A00B04(&qword_27F541360, &unk_27F53FBC0, &unk_252E3B240);
            for (i = 0; i != v15; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F53FBC0, &unk_252E3B240);
              v19 = sub_2529FBE00(v32, i, v6);
              v21 = *v20;

              (v19)(v32, 0);
              *(v17 + 8 * i) = v21;
            }
          }

          else
          {
            type metadata accessor for Service();
            swift_arrayInitWithCopy();
          }

          v1 = v27;
          if (v33 >= 1)
          {
            v22 = *(v28 + 16);
            v5 = __OFADD__(v22, v33);
            v23 = v22 + v33;
            if (v5)
            {
              goto LABEL_46;
            }

            *(v28 + 16) = v23;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v15 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v15)
        {
          goto LABEL_26;
        }
      }

      if (v33 > 0)
      {
        goto LABEL_44;
      }

LABEL_5:
      if (v2 == v1)
      {
        return v3;
      }
    }

    isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
    v10 = isUniquelyReferenced_nonNull_bridgeObject + v8;
    if (!__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v8))
    {
      goto LABEL_13;
    }

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
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    v24 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_252E378C4();
    isUniquelyReferenced_nonNull_bridgeObject = v24;
  }

  return MEMORY[0x277D84F90];
}

unint64_t sub_2529EEA84(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_48;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v31 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v27 = isUniquelyReferenced_nonNull_bridgeObject;
    v29 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = MEMORY[0x277D84F90];
    v28 = v1;
    while (1)
    {
      if (v31)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x2530ADF00](v2, v27);
        v4 = isUniquelyReferenced_nonNull_bridgeObject;
        v5 = __OFADD__(v2, 1);
        v6 = v2 + 1;
        if (v5)
        {
          goto LABEL_42;
        }
      }

      else
      {
        if (v2 >= *(v30 + 16))
        {
          goto LABEL_43;
        }

        v4 = *(v29 + 8 * v2);

        v5 = __OFADD__(v2, 1);
        v6 = v2 + 1;
        if (v5)
        {
          goto LABEL_42;
        }
      }

      v7 = [*(v4 + OBJC_IVAR____TtC22HomeAutomationInternal4Home_delegate) serviceGroups];
      sub_25293F638(0, &unk_2814B0248, 0x277CD1D98);
      v8 = sub_252E37264();

      v9 = v8 >> 62;
      v10 = v8 >> 62 ? sub_252E378C4() : *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v11 = v3 >> 62;
      if (v3 >> 62)
      {
        break;
      }

      isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
      if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
      {
        goto LABEL_41;
      }

LABEL_13:
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v32 = v6;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v11)
        {
          goto LABEL_20;
        }

        v13 = v3 & 0xFFFFFFFFFFFFFF8;
        if (v12 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_22;
        }
      }

      else
      {
        if (v11)
        {
LABEL_20:
          sub_252E378C4();
          goto LABEL_21;
        }

        v13 = v3 & 0xFFFFFFFFFFFFFF8;
      }

      v14 = *(v13 + 16);
LABEL_21:
      isUniquelyReferenced_nonNull_bridgeObject = sub_252E37A54();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v13 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_22:
      v34 = v3;
      v15 = *(v13 + 16);
      v16 = *(v13 + 24);
      if (v9)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
        v17 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_26:
          if (((v16 >> 1) - v15) < v10)
          {
            goto LABEL_45;
          }

          v18 = v13 + 8 * v15 + 32;
          if (v9)
          {
            if (v17 < 1)
            {
              goto LABEL_47;
            }

            sub_252A00B04(&qword_27F5413A0, &qword_27F541398, &qword_252E404B0);
            for (i = 0; i != v17; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541398, &qword_252E404B0);
              v20 = sub_2529FBD80(v33, i, v8);
              v22 = *v21;
              (v20)(v33, 0);
              *(v18 + 8 * i) = v22;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
          }

          v1 = v28;
          v3 = v34;
          if (v10 >= 1)
          {
            v23 = *(v13 + 16);
            v5 = __OFADD__(v23, v10);
            v24 = v23 + v10;
            if (v5)
            {
              goto LABEL_46;
            }

            *(v13 + 16) = v24;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v17 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v17)
        {
          goto LABEL_26;
        }
      }

      v3 = v34;
      if (v10 > 0)
      {
        goto LABEL_44;
      }

LABEL_5:
      v2 = v32;
      if (v32 == v1)
      {
        return v3;
      }
    }

    isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
    v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
    if (!__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
    {
      goto LABEL_13;
    }

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
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    v25 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_252E378C4();
    isUniquelyReferenced_nonNull_bridgeObject = v25;
  }

  return MEMORY[0x277D84F90];
}

unint64_t sub_2529EEE20(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_48;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v31 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v27 = isUniquelyReferenced_nonNull_bridgeObject;
    v29 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = MEMORY[0x277D84F90];
    v28 = v1;
    while (1)
    {
      if (v31)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x2530ADF00](v2, v27);
        v4 = isUniquelyReferenced_nonNull_bridgeObject;
        v5 = __OFADD__(v2, 1);
        v6 = v2 + 1;
        if (v5)
        {
          goto LABEL_42;
        }
      }

      else
      {
        if (v2 >= *(v30 + 16))
        {
          goto LABEL_43;
        }

        v4 = *(v29 + 8 * v2);

        v5 = __OFADD__(v2, 1);
        v6 = v2 + 1;
        if (v5)
        {
          goto LABEL_42;
        }
      }

      v7 = [*(v4 + OBJC_IVAR____TtC22HomeAutomationInternal4Home_delegate) zones];
      sub_25293F638(0, &qword_2814B01E8, 0x277CD1F50);
      v8 = sub_252E37264();

      v9 = v8 >> 62;
      v10 = v8 >> 62 ? sub_252E378C4() : *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v11 = v3 >> 62;
      if (v3 >> 62)
      {
        break;
      }

      isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
      if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
      {
        goto LABEL_41;
      }

LABEL_13:
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v32 = v6;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v11)
        {
          goto LABEL_20;
        }

        v13 = v3 & 0xFFFFFFFFFFFFFF8;
        if (v12 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_22;
        }
      }

      else
      {
        if (v11)
        {
LABEL_20:
          sub_252E378C4();
          goto LABEL_21;
        }

        v13 = v3 & 0xFFFFFFFFFFFFFF8;
      }

      v14 = *(v13 + 16);
LABEL_21:
      isUniquelyReferenced_nonNull_bridgeObject = sub_252E37A54();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v13 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_22:
      v34 = v3;
      v15 = *(v13 + 16);
      v16 = *(v13 + 24);
      if (v9)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
        v17 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_26:
          if (((v16 >> 1) - v15) < v10)
          {
            goto LABEL_45;
          }

          v18 = v13 + 8 * v15 + 32;
          if (v9)
          {
            if (v17 < 1)
            {
              goto LABEL_47;
            }

            sub_252A00B04(&unk_27F5413C0, &qword_27F5413B8, &unk_252E404C0);
            for (i = 0; i != v17; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5413B8, &unk_252E404C0);
              v20 = sub_2529FBD80(v33, i, v8);
              v22 = *v21;
              (v20)(v33, 0);
              *(v18 + 8 * i) = v22;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
          }

          v1 = v28;
          v3 = v34;
          if (v10 >= 1)
          {
            v23 = *(v13 + 16);
            v5 = __OFADD__(v23, v10);
            v24 = v23 + v10;
            if (v5)
            {
              goto LABEL_46;
            }

            *(v13 + 16) = v24;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v17 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v17)
        {
          goto LABEL_26;
        }
      }

      v3 = v34;
      if (v10 > 0)
      {
        goto LABEL_44;
      }

LABEL_5:
      v2 = v32;
      if (v32 == v1)
      {
        return v3;
      }
    }

    isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
    v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
    if (!__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
    {
      goto LABEL_13;
    }

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
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    v25 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_252E378C4();
    isUniquelyReferenced_nonNull_bridgeObject = v25;
  }

  return MEMORY[0x277D84F90];
}

unint64_t sub_2529EF1BC(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_52;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v41 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v42 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v37 = isUniquelyReferenced_nonNull_bridgeObject;
    v40 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = MEMORY[0x277D84F90];
    v4 = &qword_27F5413A8;
    v5 = &qword_252E404B8;
    v39 = v1;
    while (1)
    {
      if (v42)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x2530ADF00](v2, v37);
        v8 = isUniquelyReferenced_nonNull_bridgeObject;
        v9 = __OFADD__(v2++, 1);
        if (v9)
        {
          goto LABEL_46;
        }
      }

      else
      {
        if (v2 >= *(v41 + 16))
        {
          goto LABEL_47;
        }

        v8 = *(v40 + 8 * v2);

        v9 = __OFADD__(v2++, 1);
        if (v9)
        {
          goto LABEL_46;
        }
      }

      v10 = *(v8 + OBJC_IVAR____TtC22HomeAutomationInternal4Home_delegate);
      v11 = [v10 rooms];
      sub_25293F638(0, &qword_2814B0200, 0x277CD1D88);
      v12 = sub_252E37264();

      v13 = sub_252C75928(v12);

      v45[0] = v13;
      sub_252DA6C70(&v46, [v10 roomForEntireHome]);

      v14 = sub_2529A372C(v45[0]);

      v15 = v14 < 0 || (v14 & 0x4000000000000000) != 0;
      v16 = v15 ? sub_252E378C4() : *(v14 + 16);
      v17 = v3 >> 62;
      v44 = v16;
      if (v3 >> 62)
      {
        break;
      }

      isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v18 = isUniquelyReferenced_nonNull_bridgeObject + v16;
      if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v16))
      {
        goto LABEL_45;
      }

LABEL_16:
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v17)
        {
          goto LABEL_23;
        }

        v19 = v3 & 0xFFFFFFFFFFFFFF8;
        if (v18 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v43 = v3;
          goto LABEL_25;
        }
      }

      else
      {
        if (v17)
        {
LABEL_23:
          sub_252E378C4();
          goto LABEL_24;
        }

        v19 = v3 & 0xFFFFFFFFFFFFFF8;
      }

      v20 = *(v19 + 16);
LABEL_24:
      isUniquelyReferenced_nonNull_bridgeObject = sub_252E37A54();
      v43 = isUniquelyReferenced_nonNull_bridgeObject;
      v19 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_25:
      v21 = v4;
      v22 = *(v19 + 16);
      v23 = *(v19 + 24);
      if (v15)
      {
        v24 = v19;
        isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
        v19 = v24;
        v25 = isUniquelyReferenced_nonNull_bridgeObject;
        v26 = v44;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v25 = *(v14 + 16);
        v26 = v44;
        if (v25)
        {
LABEL_29:
          if (((v23 >> 1) - v22) < v26)
          {
            goto LABEL_49;
          }

          v27 = v19 + 8 * v22 + 32;
          v38 = v19;
          if (v15)
          {
            if (v25 < 1)
            {
              goto LABEL_51;
            }

            v28 = v5;
            sub_252A00B04(&qword_27F5413B0, v21, v5);
            for (i = 0; i != v25; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(v21, v28);
              v30 = sub_2529FBD80(v45, i, v14);
              v32 = *v31;
              (v30)(v45, 0);
              *(v27 + 8 * i) = v32;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
            v28 = v5;
          }

          v3 = v43;
          v7 = v39;
          v4 = v21;
          v5 = v28;
          if (v44 >= 1)
          {
            v33 = *(v38 + 16);
            v9 = __OFADD__(v33, v44);
            v34 = v33 + v44;
            if (v9)
            {
              goto LABEL_50;
            }

            *(v38 + 16) = v34;
          }

          goto LABEL_5;
        }
      }

      v6 = v26;

      v3 = v43;
      v4 = v21;
      v7 = v39;
      if (v6 > 0)
      {
        goto LABEL_48;
      }

LABEL_5:
      if (v2 == v7)
      {
        return v3;
      }
    }

    isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
    v18 = isUniquelyReferenced_nonNull_bridgeObject + v44;
    if (!__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v44))
    {
      goto LABEL_16;
    }

LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    v35 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_252E378C4();
    isUniquelyReferenced_nonNull_bridgeObject = v35;
  }

  return MEMORY[0x277D84F90];
}

unint64_t sub_2529EF5D8(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_48;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v31 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v27 = isUniquelyReferenced_nonNull_bridgeObject;
    v29 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = MEMORY[0x277D84F90];
    v28 = v1;
    while (1)
    {
      if (v31)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x2530ADF00](v2, v27);
        v4 = isUniquelyReferenced_nonNull_bridgeObject;
        v5 = __OFADD__(v2, 1);
        v6 = v2 + 1;
        if (v5)
        {
          goto LABEL_42;
        }
      }

      else
      {
        if (v2 >= *(v30 + 16))
        {
          goto LABEL_43;
        }

        v4 = *(v29 + 8 * v2);

        v5 = __OFADD__(v2, 1);
        v6 = v2 + 1;
        if (v5)
        {
          goto LABEL_42;
        }
      }

      v7 = [*(v4 + OBJC_IVAR____TtC22HomeAutomationInternal4Home_delegate) triggers];
      sub_25293F638(0, &qword_27F541320, 0x277CD1EC0);
      v8 = sub_252E37264();

      v9 = v8 >> 62;
      v10 = v8 >> 62 ? sub_252E378C4() : *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v11 = v3 >> 62;
      if (v3 >> 62)
      {
        break;
      }

      isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
      if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
      {
        goto LABEL_41;
      }

LABEL_13:
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v32 = v6;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v11)
        {
          goto LABEL_20;
        }

        v13 = v3 & 0xFFFFFFFFFFFFFF8;
        if (v12 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_22;
        }
      }

      else
      {
        if (v11)
        {
LABEL_20:
          sub_252E378C4();
          goto LABEL_21;
        }

        v13 = v3 & 0xFFFFFFFFFFFFFF8;
      }

      v14 = *(v13 + 16);
LABEL_21:
      isUniquelyReferenced_nonNull_bridgeObject = sub_252E37A54();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v13 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_22:
      v34 = v3;
      v15 = *(v13 + 16);
      v16 = *(v13 + 24);
      if (v9)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
        v17 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_26:
          if (((v16 >> 1) - v15) < v10)
          {
            goto LABEL_45;
          }

          v18 = v13 + 8 * v15 + 32;
          if (v9)
          {
            if (v17 < 1)
            {
              goto LABEL_47;
            }

            sub_252A00B04(&qword_27F541370, &qword_27F541368, &qword_252E40498);
            for (i = 0; i != v17; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541368, &qword_252E40498);
              v20 = sub_2529FBD80(v33, i, v8);
              v22 = *v21;
              (v20)(v33, 0);
              *(v18 + 8 * i) = v22;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
          }

          v1 = v28;
          v3 = v34;
          if (v10 >= 1)
          {
            v23 = *(v13 + 16);
            v5 = __OFADD__(v23, v10);
            v24 = v23 + v10;
            if (v5)
            {
              goto LABEL_46;
            }

            *(v13 + 16) = v24;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v17 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v17)
        {
          goto LABEL_26;
        }
      }

      v3 = v34;
      if (v10 > 0)
      {
        goto LABEL_44;
      }

LABEL_5:
      v2 = v32;
      if (v32 == v1)
      {
        return v3;
      }
    }

    isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
    v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
    if (!__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
    {
      goto LABEL_13;
    }

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
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    v25 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_252E378C4();
    isUniquelyReferenced_nonNull_bridgeObject = v25;
  }

  return MEMORY[0x277D84F90];
}

unint64_t HomeStore.accessories(matching:supporting:)(unint64_t a1, void *a2)
{
  v189 = a2;
  v192 = sub_252E36AD4();
  v190 = *(v192 - 8);
  v4 = v190[8];
  v5 = MEMORY[0x28223BE20](v192);
  v188 = &v173 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v178 = &v173 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v181 = &v173 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v182 = &v173 - v12;
  MEMORY[0x28223BE20](v11);
  v183 = &v173 - v13;
  v14 = sub_252E36AB4();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v19 = (&v173 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v191 = v2;
  v20 = *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded);
  if (v20 != 2 && (v20 & 1) == 0)
  {
    sub_2529318DC();
    v51 = swift_allocError();
    *v52 = 12;
    return v51;
  }

  v175 = v17;
  v176 = v16;
  if (qword_27F53F5B8 != -1)
  {
LABEL_43:
    swift_once();
  }

  v21 = qword_27F544F40;
  sub_252E36A94();
  sub_252E375D4();
  v177 = v21;
  v186 = v19;
  sub_252E36A84();
  v22 = sub_2529D8DC0();
  v23 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
    v53 = v22;
    v24 = sub_252E378C4();
    v22 = v53;
  }

  else
  {
    v24 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v196 = v22;
  v25 = MEMORY[0x277D84F90];
  v187 = MEMORY[0x277D84F90];
  v195 = a1;
  if (v24)
  {
    v26 = 0;
    v19 = (a1 & 0xC000000000000001);
    v194 = MEMORY[0x277D84F90];
    while (2)
    {
      v27 = v26;
      while (1)
      {
        if (v19)
        {
          v28 = MEMORY[0x2530ADF00](v27, a1);
        }

        else
        {
          if (v27 >= *(v23 + 16))
          {
            goto LABEL_41;
          }

          v28 = *(a1 + 8 * v27 + 32);
        }

        v29 = v28;
        v26 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

        v30 = [v28 homeName];
        if (v30)
        {
          break;
        }

        ++v27;
        if (v26 == v24)
        {
          goto LABEL_24;
        }
      }

      v31 = v30;
      v193 = sub_252E36F34();
      v33 = v32;

      v34 = v194;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_2529F7A80(0, *(v34 + 2) + 1, 1, v34);
      }

      v36 = *(v34 + 2);
      v35 = *(v34 + 3);
      v194 = v34;
      v25 = MEMORY[0x277D84F90];
      if (v36 >= v35 >> 1)
      {
        v194 = sub_2529F7A80((v35 > 1), v36 + 1, 1, v194);
      }

      v38 = v193;
      v37 = v194;
      *(v194 + 2) = v36 + 1;
      v39 = &v37[16 * v36];
      *(v39 + 4) = v38;
      *(v39 + 5) = v33;
      a1 = v195;
      if (v26 != v24)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v194 = MEMORY[0x277D84F90];
  }

LABEL_24:
  if (!*(v194 + 2))
  {
    goto LABEL_38;
  }

  *&v212 = v25;
  v40 = v196;
  if (!(v196 >> 62))
  {
    v41 = *((v196 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v41)
    {
      goto LABEL_27;
    }

LABEL_46:
    v42 = 0;
LABEL_47:

    v50 = v212;
    v25 = MEMORY[0x277D84F90];
    goto LABEL_48;
  }

  v41 = sub_252E378C4();
  if (!v41)
  {
    goto LABEL_46;
  }

LABEL_27:
  v25 = 0;
  v42 = 0;
  v193 = v40 & 0xC000000000000001;
  v43 = v40 & 0xFFFFFFFFFFFFFF8;
  while (v193)
  {
    v46 = MEMORY[0x2530ADF00](v25, v196);
    v45 = v46;
    a1 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      goto LABEL_37;
    }

LABEL_33:
    v19 = &v173;
    v47 = *(v45 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);
    *&v223[0] = *(v45 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
    *(&v223[0] + 1) = v47;
    MEMORY[0x28223BE20](v46);
    *(&v173 - 2) = v223;

    v48 = sub_2529ED970(sub_252A00B98, (&v173 - 4), v194);

    if (v48)
    {
      sub_252E37A94();
      v49 = *(v212 + 16);
      sub_252E37AC4();
      sub_252E37AD4();
      sub_252E37AA4();
    }

    else
    {
    }

    ++v25;
    v44 = a1 == v41;
    a1 = v195;
    if (v44)
    {
      goto LABEL_47;
    }
  }

  if (v25 >= *(v43 + 16))
  {
    goto LABEL_42;
  }

  v45 = *(v196 + 8 * v25 + 32);

  a1 = v25 + 1;
  if (!__OFADD__(v25, 1))
  {
    goto LABEL_33;
  }

LABEL_37:
  __break(1u);
LABEL_38:

  v42 = 0;
  v50 = v196;
LABEL_48:
  v54 = sub_2529F442C(v50, a1);
  if (v54)
  {
    v55 = v54;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_252E3C130;
    *(v50 + 32) = v55;
  }

  v56 = sub_2529F38E8(6513505, 0xE300000000000000, a1, v189);
  v174 = v57;
  v58 = sub_2529D8CA8(v56, v57);
  if (v58)
  {
    v59 = v58;
    v60 = v58 & 0xFFFFFFFFFFFFFF8;
    if (v58 >> 62)
    {
      goto LABEL_72;
    }

    for (i = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
    {

      v62 = v25;
      v25 = 0;
      *&v223[0] = v62;
      v50 = v59 & 0xC000000000000001;
LABEL_54:
      v63 = v25;
      while (v50)
      {
        MEMORY[0x2530ADF00](v63, v59);
        v25 = v63 + 1;
        if (__OFADD__(v63, 1))
        {
          goto LABEL_70;
        }

LABEL_58:
        type metadata accessor for Accessory();
        if (swift_dynamicCastClass())
        {
          MEMORY[0x2530AD700]();
          if (*((*&v223[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v223[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v196 = v42;
            sub_252E372A4();
            v42 = v196;
          }

          sub_252E372D4();
          v187 = *&v223[0];
          if (v25 == i)
          {
LABEL_67:

            if (qword_27F53F4C0 != -1)
            {
              swift_once();
            }

            __swift_project_value_buffer(v192, qword_27F544CE8);
            *&v223[0] = 0;
            *(&v223[0] + 1) = 0xE000000000000000;
            sub_252E379F4();
            MEMORY[0x2530AD570](0xD00000000000002ALL, 0x8000000252E71190);
            MEMORY[0x2530AD570](v56, v174);

            MEMORY[0x2530AD570](0x6163206D6F726620, 0xEB00000000656863);
            sub_252CC3D90(*&v223[0], *(&v223[0] + 1), 0xD00000000000007FLL, 0x8000000252E70FD0);
            v65 = 1;
            goto LABEL_211;
          }

          goto LABEL_54;
        }

        ++v63;
        if (v25 == i)
        {
          goto LABEL_67;
        }
      }

      if (v63 >= *(v60 + 16))
      {
        goto LABEL_71;
      }

      v64 = *(v59 + 8 * v63 + 32);

      v25 = v63 + 1;
      if (!__OFADD__(v63, 1))
      {
        goto LABEL_58;
      }

LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      ;
    }
  }

  if (qword_27F53F4C0 != -1)
  {
    goto LABEL_201;
  }

LABEL_75:
  v66 = __swift_project_value_buffer(v192, qword_27F544CE8);
  v67 = v190[2];
  v185 = v66;
  v187 = v190 + 2;
  v180 = v67;
  (v67)(v183);
  *&v223[0] = 0;
  *(&v223[0] + 1) = 0xE000000000000000;
  sub_252E379F4();

  *&v223[0] = 0xD00000000000001BLL;
  *(&v223[0] + 1) = 0x8000000252E71090;
  if (v50 >> 62)
  {
    v68 = sub_252E378C4();
  }

  else
  {
    v68 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v173 = v56;
  v196 = v50;
  v194 = v68;
  if (v68)
  {
    v69 = 0;
    v193 = v50 & 0xC000000000000001;
    v56 = v50 & 0xFFFFFFFFFFFFFF8;
    v70 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v193)
      {
        v50 = MEMORY[0x2530ADF00](v69, v50);
        v71 = (v69 + 1);
        if (__OFADD__(v69, 1))
        {
          goto LABEL_189;
        }
      }

      else
      {
        if (v69 >= *(v56 + 16))
        {
          goto LABEL_190;
        }

        v50 = *(v50 + 8 * v69 + 32);

        v71 = (v69 + 1);
        if (__OFADD__(v69, 1))
        {
LABEL_189:
          __break(1u);
LABEL_190:
          __break(1u);
LABEL_191:
          __break(1u);
LABEL_192:
          __break(1u);
LABEL_193:
          __break(1u);
LABEL_194:
          __break(1u);
LABEL_195:
          __break(1u);
LABEL_196:
          __break(1u);
LABEL_197:
          __break(1u);
LABEL_198:
          __break(1u);
LABEL_199:
          __break(1u);
LABEL_200:
          __break(1u);
LABEL_201:
          swift_once();
          goto LABEL_75;
        }
      }

      v72 = v42;
      v73 = *(v50 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      v74 = *(v50 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v70 = sub_2529F7A80(0, *(v70 + 2) + 1, 1, v70);
      }

      v76 = *(v70 + 2);
      v75 = *(v70 + 3);
      if (v76 >= v75 >> 1)
      {
        v70 = sub_2529F7A80((v75 > 1), v76 + 1, 1, v70);
      }

      *(v70 + 2) = v76 + 1;
      v77 = &v70[16 * v76];
      *(v77 + 4) = v73;
      *(v77 + 5) = v74;
      ++v69;
      v68 = v194;
      v50 = v196;
      v42 = v72;
      if (v71 == v194)
      {
        goto LABEL_92;
      }
    }
  }

  v70 = MEMORY[0x277D84F90];
LABEL_92:
  v78 = MEMORY[0x2530AD730](v70, MEMORY[0x277D837D0]);
  v80 = v79;

  MEMORY[0x2530AD570](v78, v80);

  v184 = "Looking for scenes in ";
  v81 = v183;
  sub_252CC3D90(*&v223[0], *(&v223[0] + 1), 0xD00000000000007FLL, 0x8000000252E70FD0);

  v82 = v190[1];
  v83 = v81;
  v84 = v192;
  v183 = (v190 + 1);
  v179 = v82;
  v82(v83, v192);
  v193 = sub_2529EE3C8(v50);
  v180(v182, v185, v84);
  *&v223[0] = 0;
  *(&v223[0] + 1) = 0xE000000000000000;
  sub_252E379F4();

  *&v223[0] = 0xD000000000000014;
  *(&v223[0] + 1) = 0x8000000252E710B0;
  if (v68)
  {
    v42 = 0;
    v85 = v50 & 0xC000000000000001;
    v56 = v50 & 0xFFFFFFFFFFFFFF8;
    v86 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v85)
      {
        v50 = MEMORY[0x2530ADF00](v42, v50);
        v87 = (v42 + 1);
        if (__OFADD__(v42, 1))
        {
          goto LABEL_191;
        }
      }

      else
      {
        if (v42 >= *(v56 + 16))
        {
          goto LABEL_192;
        }

        v50 = *(v50 + 8 * v42 + 32);

        v87 = (v42 + 1);
        if (__OFADD__(v42, 1))
        {
          goto LABEL_191;
        }
      }

      v89 = *(v50 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      v88 = *(v50 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v86 = sub_2529F7A80(0, *(v86 + 2) + 1, 1, v86);
      }

      v91 = *(v86 + 2);
      v90 = *(v86 + 3);
      if (v91 >= v90 >> 1)
      {
        v86 = sub_2529F7A80((v90 > 1), v91 + 1, 1, v86);
      }

      *(v86 + 2) = v91 + 1;
      v92 = &v86[16 * v91];
      *(v92 + 4) = v89;
      *(v92 + 5) = v88;
      ++v42;
      v50 = v196;
      if (v87 == v194)
      {
        goto LABEL_107;
      }
    }
  }

  v86 = MEMORY[0x277D84F90];
LABEL_107:

  v42 = MEMORY[0x2530AD730](v86, MEMORY[0x277D837D0]);
  v94 = v93;

  MEMORY[0x2530AD570](v42, v94);

  MEMORY[0x2530AD570](8250, 0xE200000000000000);
  v95 = v193;
  if (v193 >> 62)
  {
    v96 = sub_252E378C4();
  }

  else
  {
    v96 = *((v193 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v97 = MEMORY[0x277D84F90];
  v196 = v96;
  if (v96)
  {
    v98 = 0;
    v56 = v95 & 0xC000000000000001;
    v99 = v95 & 0xFFFFFFFFFFFFFF8;
    do
    {
      if (v56)
      {
        v100 = MEMORY[0x2530ADF00](v98, v95);
        v101 = v98 + 1;
        if (__OFADD__(v98, 1))
        {
          goto LABEL_193;
        }
      }

      else
      {
        if (v98 >= *(v99 + 16))
        {
          goto LABEL_194;
        }

        v100 = *(v95 + 8 * v98 + 32);

        v101 = v98 + 1;
        if (__OFADD__(v98, 1))
        {
          goto LABEL_193;
        }
      }

      v42 = *(v100 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      v50 = *(v100 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v97 = sub_2529F7A80(0, *(v97 + 2) + 1, 1, v97);
      }

      v103 = *(v97 + 2);
      v102 = *(v97 + 3);
      if (v103 >= v102 >> 1)
      {
        v97 = sub_2529F7A80((v102 > 1), v103 + 1, 1, v97);
      }

      *(v97 + 2) = v103 + 1;
      v104 = &v97[16 * v103];
      *(v104 + 4) = v42;
      *(v104 + 5) = v50;
      ++v98;
      v95 = v193;
    }

    while (v101 != v196);
  }

  v105 = MEMORY[0x2530AD730](v97, MEMORY[0x277D837D0]);
  v50 = v106;

  MEMORY[0x2530AD570](v105, v50);

  v107 = v182;
  sub_252CC3D90(*&v223[0], *(&v223[0] + 1), 0xD00000000000007FLL, v184 | 0x8000000000000000);

  v179(v107, v192);
  v56 = MEMORY[0x277D84F90];
  *&v223[0] = MEMORY[0x277D84F90];
  if (!v196)
  {
    goto LABEL_136;
  }

  v42 = 0;
  v56 = v196;
  while (2)
  {
    if ((v95 & 0xC000000000000001) != 0)
    {
      MEMORY[0x2530ADF00](v42, v95);
      v109 = (v42 + 1);
      if (__OFADD__(v42, 1))
      {
        break;
      }

      goto LABEL_130;
    }

    if (v42 >= *((v95 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_195;
    }

    v108 = *(v95 + 8 * v42 + 32);

    v109 = (v42 + 1);
    if (!__OFADD__(v42, 1))
    {
LABEL_130:
      if (sub_252967B6C(v195))
      {
        sub_252E37A94();
        v50 = *(*&v223[0] + 16);
        sub_252E37AC4();
        sub_252E37AD4();
        sub_252E37AA4();
      }

      else
      {
      }

      ++v42;
      if (v109 == v56)
      {
        goto LABEL_135;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_135:
  v56 = *&v223[0];
LABEL_136:

  v180(v181, v185, v192);
  *&v223[0] = 0;
  *(&v223[0] + 1) = 0xE000000000000000;
  sub_252E379F4();

  *&v223[0] = 0xD000000000000022;
  *(&v223[0] + 1) = 0x8000000252E710D0;
  v110 = (v56 >> 62) & 1;
  if (v56 < 0)
  {
    LODWORD(v110) = 1;
  }

  LODWORD(v195) = v110;
  if (v110 == 1)
  {
    v111 = sub_252E378C4();
  }

  else
  {
    v111 = *(v56 + 16);
  }

  v112 = MEMORY[0x277D84F90];
  if (v111)
  {
    v113 = 0;
    v196 = v56 & 0xC000000000000001;
    v114 = v56;
    do
    {
      if (v196)
      {
        v50 = MEMORY[0x2530ADF00](v113, v56);
        v115 = v113 + 1;
        if (__OFADD__(v113, 1))
        {
          goto LABEL_196;
        }
      }

      else
      {
        if (v113 >= *(v56 + 16))
        {
          goto LABEL_197;
        }

        v50 = *(v56 + 8 * v113 + 32);

        v115 = v113 + 1;
        if (__OFADD__(v113, 1))
        {
          goto LABEL_196;
        }
      }

      v42 = *(v50 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      v116 = *(v50 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v112 = sub_2529F7A80(0, *(v112 + 2) + 1, 1, v112);
      }

      v118 = *(v112 + 2);
      v117 = *(v112 + 3);
      v50 = v118 + 1;
      if (v118 >= v117 >> 1)
      {
        v112 = sub_2529F7A80((v117 > 1), v118 + 1, 1, v112);
      }

      *(v112 + 2) = v50;
      v119 = &v112[16 * v118];
      *(v119 + 4) = v42;
      *(v119 + 5) = v116;
      ++v113;
      v56 = v114;
    }

    while (v115 != v111);
  }

  v120 = MEMORY[0x2530AD730](v112, MEMORY[0x277D837D0]);
  v122 = v121;

  MEMORY[0x2530AD570](v120, v122);

  v123 = v181;
  sub_252CC3D90(*&v223[0], *(&v223[0] + 1), 0xD00000000000007FLL, v184 | 0x8000000000000000);

  v179(v123, v192);
  if (!v189)
  {
    v125 = v56;
    goto LABEL_208;
  }

  *&v223[0] = MEMORY[0x277D84F90];
  if (v195)
  {
    v124 = sub_252E378C4();
  }

  else
  {
    v124 = *(v56 + 16);
  }

  v126 = v189;
  v195 = v126;
  if (!v124)
  {
    v125 = MEMORY[0x277D84F90];
    goto LABEL_173;
  }

  v127 = v126;
  v128 = 0;
  while (2)
  {
    if ((v56 & 0xC000000000000001) != 0)
    {
      v50 = MEMORY[0x2530ADF00](v128, v56);
      v42 = v128 + 1;
      if (__OFADD__(v128, 1))
      {
        break;
      }

      goto LABEL_166;
    }

    if (v128 >= *(v56 + 16))
    {
      goto LABEL_198;
    }

    v50 = *(v56 + 8 * v128 + 32);

    v42 = v128 + 1;
    if (!__OFADD__(v128, 1))
    {
LABEL_166:
      if ((*(*v50 + 392))(v127))
      {
        sub_252E37A94();
        v129 = *(*&v223[0] + 16);
        sub_252E37AC4();
        sub_252E37AD4();
        sub_252E37AA4();
      }

      else
      {
      }

      ++v128;
      if (v42 == v124)
      {
        goto LABEL_171;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_171:
  v125 = *&v223[0];
LABEL_173:

  v180(v178, v185, v192);
  *&v223[0] = 0;
  *(&v223[0] + 1) = 0xE000000000000000;
  sub_252E379F4();

  *&v223[0] = 0xD000000000000024;
  *(&v223[0] + 1) = 0x8000000252E71160;
  v130 = [v195 description];
  v131 = sub_252E36F34();
  v133 = v132;

  MEMORY[0x2530AD570](v131, v133);

  MEMORY[0x2530AD570](8250, 0xE200000000000000);
  if ((v125 & 0x8000000000000000) != 0 || (v125 & 0x4000000000000000) != 0)
  {
    v50 = sub_252E378C4();
    if (v50)
    {
      goto LABEL_176;
    }
  }

  else
  {
    v50 = *(v125 + 16);
    if (v50)
    {
LABEL_176:
      v134 = 0;
      v196 = v125 & 0xC000000000000001;
      v42 = MEMORY[0x277D84F90];
      v135 = v125;
      while (1)
      {
        if (v196)
        {
          v136 = MEMORY[0x2530ADF00](v134, v125);
          v56 = v134 + 1;
          if (__OFADD__(v134, 1))
          {
            goto LABEL_199;
          }
        }

        else
        {
          if (v134 >= *(v125 + 16))
          {
            goto LABEL_200;
          }

          v136 = *(v125 + 8 * v134 + 32);

          v56 = v134 + 1;
          if (__OFADD__(v134, 1))
          {
            goto LABEL_199;
          }
        }

        v137 = *(v136 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
        v138 = *(v136 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v42 = sub_2529F7A80(0, *(v42 + 16) + 1, 1, v42);
        }

        v140 = *(v42 + 16);
        v139 = *(v42 + 24);
        if (v140 >= v139 >> 1)
        {
          v42 = sub_2529F7A80((v139 > 1), v140 + 1, 1, v42);
        }

        *(v42 + 16) = v140 + 1;
        v141 = (v42 + 16 * v140);
        *(v141 + 4) = v137;
        *(v141 + 5) = v138;
        ++v134;
        v125 = v135;
        if (v56 == v50)
        {
          goto LABEL_207;
        }
      }
    }
  }

  v42 = MEMORY[0x277D84F90];
LABEL_207:
  v142 = MEMORY[0x2530AD730](v42, MEMORY[0x277D837D0]);
  v144 = v143;

  MEMORY[0x2530AD570](v142, v144);

  v145 = v178;
  sub_252CC3D90(*&v223[0], *(&v223[0] + 1), 0xD00000000000007FLL, v184 | 0x8000000000000000);

  v179(v145, v192);
LABEL_208:
  v187 = v125;
  if (v125 >> 62)
  {
    type metadata accessor for Entity();

    v146 = sub_252E37B14();
  }

  else
  {

    sub_252E37DD4();
    type metadata accessor for Entity();
    v146 = v125;
  }

  v147 = v191;
  v148 = *(v191 + OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_cachedResultsLock);
  os_unfair_lock_lock(v148 + 4);
  v149 = (v147 + OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore__cachedResults);
  swift_beginAccess();
  v151 = *v149;
  v150 = v149[1];
  v152 = v174;

  [v150 lock];

  [v150 unlock];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v212 = v151;
  v154 = v173;
  sub_2529FB7E0(v146, v173, v152, isUniquelyReferenced_nonNull_native, sub_252E032C4, sub_252DFE810, sub_252E11364);

  v155 = v212;
  [v150 lock];
  *v149 = v155;

  [v150 unlock];
  swift_endAccess();
  os_unfair_lock_unlock(v148 + 4);

  *&v223[0] = 0;
  *(&v223[0] + 1) = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000039, 0x8000000252E71100);
  MEMORY[0x2530AD570](v154, v152);

  sub_252CC3D90(*&v223[0], *(&v223[0] + 1), 0xD00000000000007FLL, v184 | 0x8000000000000000);
  v65 = 0;
LABEL_211:
  v51 = v187;

  v211 = 1;
  v210 = 1;
  v209 = 1;
  v208 = 1;
  *&v212 = 0;
  BYTE8(v212) = 1;
  v213 = 0u;
  v214 = 0u;
  v215 = 0u;
  v216 = 0u;
  v217 = 0u;
  LOBYTE(v218) = 1;
  *(&v218 + 1) = 0;
  v219 = 0uLL;
  LOBYTE(v220) = 1;
  BYTE1(v220) = v65;
  v221 = 0uLL;
  *(&v220 + 1) = 0;
  v222 = 1;
  GEOLocationCoordinate2DMake(&v212);
  v205 = v220;
  v206 = v221;
  v207 = v222;
  v201 = v216;
  v202 = v217;
  v203 = v218;
  v204 = v219;
  v197 = v212;
  v198 = v213;
  v199 = v214;
  v200 = v215;
  _s22HomeAutomationInternal8SignpostO3end7logging___ySo9OS_os_logC_0H012OSSignpostIDVs12StaticStringVAC7ContextVSgtFZ_0(v177, v186, "GetEntitiesForIntent", 20, 2, &v197);
  v223[8] = v205;
  v223[9] = v206;
  v224 = v207;
  v223[4] = v201;
  v223[5] = v202;
  v223[6] = v203;
  v223[7] = v204;
  v223[0] = v197;
  v223[1] = v198;
  v223[2] = v199;
  v223[3] = v200;
  sub_25293847C(v223, &qword_27F5407B0, &unk_252E42860);
  if (qword_27F53F4C0 != -1)
  {
    goto LABEL_228;
  }

LABEL_212:
  v156 = v192;
  v157 = __swift_project_value_buffer(v192, qword_27F544CE8);
  (v190[2])(v188, v157, v156);
  *&v197 = 0;
  *(&v197 + 1) = 0xE000000000000000;
  sub_252E379F4();

  *&v197 = 0xD000000000000019;
  *(&v197 + 1) = 0x8000000252E71140;
  if (!(v51 >> 62))
  {
    v158 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v158)
    {
      goto LABEL_230;
    }

    goto LABEL_214;
  }

  v158 = sub_252E378C4();
  if (v158)
  {
LABEL_214:
    v159 = 0;
    v195 = (v51 & 0xFFFFFFFFFFFFFF8);
    v196 = v51 & 0xC000000000000001;
    v160 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v196)
      {
        v161 = MEMORY[0x2530ADF00](v159, v51);
        v162 = v159 + 1;
        if (__OFADD__(v159, 1))
        {
          goto LABEL_226;
        }
      }

      else
      {
        if (v159 >= *(v195 + 2))
        {
          goto LABEL_227;
        }

        v161 = *(v51 + 8 * v159 + 32);

        v162 = v159 + 1;
        if (__OFADD__(v159, 1))
        {
LABEL_226:
          __break(1u);
LABEL_227:
          __break(1u);
LABEL_228:
          swift_once();
          goto LABEL_212;
        }
      }

      v164 = *(v161 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      v163 = *(v161 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v160 = sub_2529F7A80(0, *(v160 + 2) + 1, 1, v160);
      }

      v166 = *(v160 + 2);
      v165 = *(v160 + 3);
      if (v166 >= v165 >> 1)
      {
        v160 = sub_2529F7A80((v165 > 1), v166 + 1, 1, v160);
      }

      *(v160 + 2) = v166 + 1;
      v167 = &v160[16 * v166];
      *(v167 + 4) = v164;
      *(v167 + 5) = v163;
      ++v159;
      if (v162 == v158)
      {
        goto LABEL_231;
      }
    }
  }

LABEL_230:
  v160 = MEMORY[0x277D84F90];
LABEL_231:
  v168 = MEMORY[0x2530AD730](v160, MEMORY[0x277D837D0]);
  v170 = v169;

  MEMORY[0x2530AD570](v168, v170);

  v171 = v188;
  sub_252CC3D90(v197, *(&v197 + 1), 0xD00000000000007FLL, 0x8000000252E70FD0);

  (v190[1])(v171, v192);
  (*(v175 + 8))(v186, v176);
  return v51;
}